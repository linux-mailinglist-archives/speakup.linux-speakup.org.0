Return-Path: <speakup+bounces-1051-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id A73A77DE4F9
	for <lists+speakup@lfdr.de>; Wed,  1 Nov 2023 18:05:22 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 3C800382738; Wed,  1 Nov 2023 13:05:22 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 2560438220F
	for <lists+speakup@lfdr.de>; Wed,  1 Nov 2023 13:05:22 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 06C7738220F; Wed,  1 Nov 2023 13:05:18 -0400 (EDT)
Received: from nfbcal.org (ns3.NFBCAL.ORG [157.22.230.125])
	by befuddled.reisers.ca (Postfix) with ESMTPS id A51A4382129
	for <speakup@linux-speakup.org>; Wed,  1 Nov 2023 13:05:17 -0400 (EDT)
Received: from nfbcal.org (localhost [127.0.0.1])
	by nfbcal.org (8.15.2/8.14.1-NFBNETBSD) with ESMTPS id 3A1H5056000194
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
	Wed, 1 Nov 2023 10:05:01 -0700 (PDT)
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.102.2 at lothlorien.nfbcal.org
Received: (from buhrow@localhost)
	by nfbcal.org (8.15.2/8.12.11) id 3A1H5095003406;
	Wed, 1 Nov 2023 10:05:00 -0700 (PDT)
Message-Id: <202311011705.3A1H5095003406@nfbcal.org>
From: Brian Buhrow <buhrow@nfbcal.org>
Date: Wed, 1 Nov 2023 10:05:00 -0700
In-Reply-To: <Pine.LNX.4.64.2311010955300.3172797@users.shellworld.net>
X-Mailer: Mail User's Shell (7.2.6 beta(4.pl1)+dynamic 20000103)
To: Karen Lewellen <klewellen@shellworld.net>, K0LNY ?? <glenn@ervin.email>
Subject: Re: slightly different dectalk question.
Cc: Butch Bussen <butchb@shellworld.net>,
        "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>,
        buhrow@nfbcal.org
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.4.3 (nfbcal.org [127.0.0.1]); Wed, 01 Nov 2023 10:05:01 -0700 (PDT)
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

	hello.  Here are some notes on how to configure the Dectalk PC, taken from work I did on
this product many years ago.

1.  The I/O base addresses choices for the Dectalk are:
0x240, 0x250, 0x340 or 0x350

2.  the BIOS base choices are:
0xc000, 0xc800, 0xd000 or 0xd800

3.  Although the Dectalk is capable of running with interrupts enabled, my notes indicate the
Dectalk software runs the synthesizer in polling mode, so a discussion of which interrupt to
use is mostly academic.

4.  It appears the default i/o address setting for the Dectalk PC is 0x240.  My suggestion is
to edit your config.bat file with each of the choices listed above, in the order listed, and
try and start up the Dectalk software.  You won't hurt anything with this technique, though
you may need to reboot several times as my notes say that you can hang the machine by trying to
get the software to talk to the hardware at the wrong address.  To prevent yourself from
getting locked out of the system, don't set the dectalk to come up talking automatically on
boot until you've confirmed that you have the right settings and that it works when started
manually.  By doing things this way, you shouldn't have to adjust the jumpers on the card at
all.

	I hope these notes are helpful.  It has been a long time since I touched this card, 25
years if the dates on my notes are to be believed, so I may be leaving some details out.

-Brian


