Return-Path: <speakup+bounces-862-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 805D1634347
	for <lists+speakup@lfdr.de>; Tue, 22 Nov 2022 19:08:09 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 7919D3829FC; Tue, 22 Nov 2022 13:08:06 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 64C053829E5
	for <lists+speakup@lfdr.de>; Tue, 22 Nov 2022 13:08:06 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 534DA3829C9; Tue, 22 Nov 2022 13:08:01 -0500 (EST)
Received: from smtp.ukservers.net (smtp.ukservers.net [85.233.160.48])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 47C45382926
	for <speakup@linux-speakup.org>; Tue, 22 Nov 2022 13:08:01 -0500 (EST)
Received: from [176.251.71.35] (helo=[192.168.1.12])
	by smtp.ukservers.net with esmtpa (Exim)
	(envelope-from <gena@gena-j.me.uk>)
	id 1oxXga-00050w-AX
	for speakup@linux-speakup.org;
	Tue, 22 Nov 2022 18:07:56 +0000
From: Georgina Joyce <gena@gena-j.me.uk>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.7\))
Subject: Could someone help with bash scripting?
Message-Id: <D9069478-2D9A-4DC3-97D7-BB365C7A4222@gena-j.me.uk>
Date: Tue, 22 Nov 2022 18:07:55 +0000
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
X-Mailer: Apple Mail (2.3608.120.23.2.7)
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hello All,

I would like to write a bash script to control a Yaesu FT-991A =
transceiver. I have been using rigctl a part of the hamlib libraries. =
However, I find the command structure difficult and doesn't contain some =
of the daily commands like nudging the frequency up in Kilohertz etc.=20

I have looked and researched  that I can change the tty device baud rate =
by using stty with the -speed switch but can't really get my head around =
the stty syntax.

I see from a unix stack exchange listing that I can crudely use echo and =
cat to the device using 2 console windows. The answer on Stack Exchange =
suggests using screen. I recall some members here were a fan of screen =
but I have never used it myself.

According to the CAT reference manual. If I send "FA145500000;" as a set =
command The transceiver will respond with the same as a read command. So =
I want to clean up the responses and put them in human form. You might =
note that the radio deals with integers in this case. But us humans like =
decimals, so there is some cleaning up the output. I think I might be =
able to do that. But it is this issue of sending commands to the tty =
device and reading the responses that I haven't a clue.

Anyone can offer suggestions?

Thanks,

Georgina


Call: M0EBP
DMR ID: 2346259
Allstar: 52178
Locater: IO83PS



