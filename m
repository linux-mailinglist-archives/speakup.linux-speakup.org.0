Return-Path: <speakup+bounces-240-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 77C853C4127
	for <lists+speakup@lfdr.de>; Mon, 12 Jul 2021 04:07:09 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id EBB8A38100D; Sun, 11 Jul 2021 21:57:14 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id D7CF4380F61
	for <lists+speakup@lfdr.de>; Sun, 11 Jul 2021 21:57:14 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 4C002380F61; Sun, 11 Jul 2021 21:57:10 -0400 (EDT)
Received: from nfbcal.org (ns.NFBCAL.ORG [157.22.230.125])
	by befuddled.reisers.ca (Postfix) with ESMTPS id EDBD9380F2F
	for <speakup@linux-speakup.org>; Sun, 11 Jul 2021 21:57:09 -0400 (EDT)
Received: from nfbcal.org (localhost [127.0.0.1])
	by nfbcal.org (8.15.2/8.14.1-NFBNETBSD) with ESMTPS id 16C1v1LU000840
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
	Sun, 11 Jul 2021 18:57:01 -0700 (PDT)
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.102.2 at lothlorien.nfbcal.org
Received: (from buhrow@localhost)
	by nfbcal.org (8.15.2/8.12.11) id 16C1v0xd029712;
	Sun, 11 Jul 2021 18:57:00 -0700 (PDT)
Message-Id: <202107120157.16C1v0xd029712@nfbcal.org>
From: Brian Buhrow <buhrow@nfbcal.org>
Date: Sun, 11 Jul 2021 18:57:00 -0700
In-Reply-To: <20210711.104927.121.1@[192.168.1.100]>
X-Mailer: Mail User's Shell (7.2.6 beta(4.pl1)+dynamic 20000103)
To: "Rob Hudson" <rob_hudson3182@opopanax.net>,
        "speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Installing OS on rackmount server
Cc: buhrow@nfbcal.org
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.4.3 (nfbcal.org [127.0.0.1]); Sun, 11 Jul 2021 18:57:01 -0700 (PDT)
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

	hello Rob.  It seems to me you have several options for getting this machine installed.  While
I can't give details for all of them, I'll try to give you enough so you can  pursue them on
your own.

1.  If you know how to set up a tftp server and configure a dhcp server, then you have all you
need to set up a PXE server to boot an image from that server.  If you learn this technique for
bootstrapping a new server, I think you'll find this gives you the most flexibility for
switching images in the future, as well as bringing up new machines down the road.

2.  Install a USB hub, allowing you to  attach an external drive, braille display and a
keyboard at the same time.  Attach the braille display and the keyboard to the hub, plug it
into one of the USB ports on the machine you're installing to, then plug the external hard
drive, the one you're imaging from, into the remaining port.

3.  If you have a second machine with a serial port, and if the first machine has a serial
port, perform a serial port based installation.  That is, use the serial port as your console,
and run your braille display and keyboard from the second machine.

Hope these ideas help.

-Brian


