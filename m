Return-Path: <speakup+bounces-863-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 75589634419
	for <lists+speakup@lfdr.de>; Tue, 22 Nov 2022 19:56:33 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id B00543829EA; Tue, 22 Nov 2022 13:56:28 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 9B75438002A
	for <lists+speakup@lfdr.de>; Tue, 22 Nov 2022 13:56:28 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 7C1F53829DA; Tue, 22 Nov 2022 13:56:23 -0500 (EST)
Received: from nfbcal.org (ns.NFBCAL.ORG [157.22.230.125])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 0611D38002A
	for <speakup@linux-speakup.org>; Tue, 22 Nov 2022 13:56:22 -0500 (EST)
Received: from nfbcal.org (localhost [127.0.0.1])
	by nfbcal.org (8.15.2/8.14.1-NFBNETBSD) with ESMTPS id 2AMIt5h4022376
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
	Tue, 22 Nov 2022 10:55:06 -0800 (PST)
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.102.2 at lothlorien.nfbcal.org
Received: (from buhrow@localhost)
	by nfbcal.org (8.15.2/8.12.11) id 2AMIt5fI014845;
	Tue, 22 Nov 2022 10:55:05 -0800 (PST)
Message-Id: <202211221855.2AMIt5fI014845@nfbcal.org>
From: Brian Buhrow <buhrow@nfbcal.org>
Date: Tue, 22 Nov 2022 10:55:05 -0800
In-Reply-To: <D9069478-2D9A-4DC3-97D7-BB365C7A4222@gena-j.me.uk>
X-Mailer: Mail User's Shell (7.2.6 beta(4.pl1)+dynamic 20000103)
To: Georgina Joyce <gena@gena-j.me.uk>,
        "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Could someone help with bash scripting?
Cc: buhrow@nfbcal.org
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.4.3 (nfbcal.org [127.0.0.1]); Tue, 22 Nov 2022 10:55:06 -0800 (PST)
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

	hello.  Is the chat(1) program available  on your system?  It's designed to allow you to
do just what you're talking about from a shell script.  
	In general, the steps for talking to a device via a tty (serial port) are as follows:

1.  Set the parameters of the serial port (tty) by using the stty command.  The stty command
operates on the terminal associated with standard input on the process running stty.  For
example, if the serial port you want to set is: /dev/ttyu0, then to set the baud rate to
115200, you would do something like:
stty speed 115200 < /dev/ttyu0
The redirection at the end of the command tells stty to set the parameters on /dev/ttyu0.
To check the settings on /dev/ttyu0, do something like:
stty < /dev/ttyu0

2.  Once you get the speed, bits, stop bits and parity set the way you want, as well as the
flow control, use the chat command to send data down the serial port and to receive responses
from the device at the other end.  A snippet of shell script that does this might look like:

$SERDEV is the name of the /dev/tty device we're talking to.
$TMPFIL is just the name of a temporary file we're using for capturing the responses from the
modem on the end of $SERDEV  so we can figure out what it's doing.
The -v flag to chat makes it write a transcript of its conversation with the device it's
talking to.
The -s flag forces that transcript to come out on standard error, which is what we write to 
$TMPFIL

#First, see if we have a modem and can see signal.
/bin/rm -f $TMPFIL
sleep $RESETTIME
chat -V -s "" '\r\n\r\nATZ' 'OK' "$SIGNALSTR" 'OK' < $SERDEV > $SERDEV 2>$TMPFIL
grep -i 'LTE' $TMPFIL > /dev/null 2>&1
if [ $? -eq 0 ]; then
	signal="Using LTE (G4) services"
	hasmodem="true"
fi
grep -i '1X' $TMPFIL > /dev/null 2>&1
if [ $? -eq 0 ]; then
	signal="Using WCDMA (G3) services"
	hasmodem="true"
fi
/bin/rm -f $TMPFIL

3.  If you want to interact with the device using a live terminal session, as opposed to a
shell script, I suggest using the Kermit package from the University of Columbia.  There are
other programs like cu(1) and tip(1) that can do this, but I have found that kermit has the
best user interface and that it can be used interactively to both set the serial port up the
way you want as well as open a live session to talk with the device attached to it.

If the chat and kermit programs are not available on your native installation, do a google
search for examples of using those programs with your Linux distribution and that should reveal
the name of the precise packages you need to install to get them.

The kermit package may be called c-kermit or kermit.

Hope that helps.
-Brian


