Return-Path: <speakup+bounces-241-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id BF2A53C412E
	for <lists+speakup@lfdr.de>; Mon, 12 Jul 2021 04:10:51 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 4F86F380F82; Sun, 11 Jul 2021 22:10:51 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 3DE76380F64
	for <lists+speakup@lfdr.de>; Sun, 11 Jul 2021 22:10:51 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id B24AB380F68; Sun, 11 Jul 2021 22:10:46 -0400 (EDT)
Received: from nfbcal.org (ns.NFBCAL.ORG [157.22.230.125])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 64D99380F61
	for <speakup@linux-speakup.org>; Sun, 11 Jul 2021 22:10:46 -0400 (EDT)
Received: from nfbcal.org (localhost [127.0.0.1])
	by nfbcal.org (8.15.2/8.14.1-NFBNETBSD) with ESMTPS id 16C2Ahqx004144
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
	Sun, 11 Jul 2021 19:10:44 -0700 (PDT)
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.102.2 at lothlorien.nfbcal.org
Received: (from buhrow@localhost)
	by nfbcal.org (8.15.2/8.12.11) id 16C2Ahr2026335;
	Sun, 11 Jul 2021 19:10:43 -0700 (PDT)
Message-Id: <202107120210.16C2Ahr2026335@nfbcal.org>
From: Brian Buhrow <buhrow@nfbcal.org>
Date: Sun, 11 Jul 2021 19:10:43 -0700
In-Reply-To: <4fa59ebe-afda-64e0-0bfd-6a61a944698c@raspberryvi.org>
X-Mailer: Mail User's Shell (7.2.6 beta(4.pl1)+dynamic 20000103)
To: mike@raspberryvi.org, speakup@linux-speakup.org
Subject: Re: Installing OS on rackmount server
Cc: buhrow@nfbcal.org
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.4.3 (nfbcal.org [127.0.0.1]); Sun, 11 Jul 2021 19:10:44 -0700 (PDT)
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

	Hello.  IPMI equipped servers are the cat's meow of servers and I love them!  I can, with
the ipmitool, configure the BIOS, boot them via PXE, install the operating system and get them
into full service, all with speech.  then, after it's running, you can use the ipmitool to
monitor the health of the machine and recover if it crashes.
-Brian

