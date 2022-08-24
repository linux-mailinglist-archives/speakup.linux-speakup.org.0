Return-Path: <speakup+bounces-620-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id DFC5E59FFCC
	for <lists+speakup@lfdr.de>; Wed, 24 Aug 2022 18:49:53 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 76E693819B5; Wed, 24 Aug 2022 12:49:53 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 61178380985
	for <lists+speakup@lfdr.de>; Wed, 24 Aug 2022 12:49:53 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 6E1F6380985; Wed, 24 Aug 2022 12:49:48 -0400 (EDT)
Received: from nfbcal.org (ns.NFBCAL.ORG [157.22.230.125])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 14747380951
	for <speakup@linux-speakup.org>; Wed, 24 Aug 2022 12:49:47 -0400 (EDT)
Received: from nfbcal.org (localhost [127.0.0.1])
	by nfbcal.org (8.15.2/8.14.1-NFBNETBSD) with ESMTPS id 27OGnL1N002644
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
	Wed, 24 Aug 2022 09:49:22 -0700 (PDT)
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.102.2 at lothlorien.nfbcal.org
Received: (from buhrow@localhost)
	by nfbcal.org (8.15.2/8.12.11) id 27OGnL8e007327;
	Wed, 24 Aug 2022 09:49:21 -0700 (PDT)
Message-Id: <202208241649.27OGnL8e007327@nfbcal.org>
From: Brian Buhrow <buhrow@nfbcal.org>
Date: Wed, 24 Aug 2022 09:49:21 -0700
In-Reply-To: <011001d8b7d7$802c53f0$80ffa8c0@Win7VM>
X-Mailer: Mail User's Shell (7.2.6 beta(4.pl1)+dynamic 20000103)
To: "K0LNY_Glenn" <glenn@ervin.email>,
        "Willem van der Walt" <wvdwalt@csir.co.za>
Subject: Re: hopefully some help with AntiX
Cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>,
        buhrow@nfbcal.org
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.4.3 (nfbcal.org [127.0.0.1]); Wed, 24 Aug 2022 09:49:22 -0700 (PDT)
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

	Hello Glen.  There is a faster way to determine if the machine you're trying to reach is
listening on the network on the appropriate ports.  Nmap is good for finding which ports a
machine is paying attention to, but if you know the port numbers, use telnet instead.  If
you don't have telnet installed on your working machine, I highly recommend installing it.
Then, do something like:
telnet <ipaddress of target machine> <port number>
You should see something like:
trying <ipaddress> ...
Then, you'll either get one of three things:

1.  A long delay followed by: connectioned timed out trying to reach <ip address>

2.  Connect: connection refused.

3.  Connected, escape is control-], followed by any banners the far end might produce, or none
if it waits for you to send the first message.

If you get option 2 and the machine you're connecting to is on the same network as the one
you're connecting from, then you know the machine is on the network, but not listening on the
port you tried.  

If you get option 1, then it's highly likely the target machine is not connected to the
network.

I use this for testing connections to a huge variety of ports as it allows me to determine at
which layer a problem is occurring.

-thanks
-Brian


