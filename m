Return-Path: <speakup+bounces-355-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 354BB4A8C89
	for <lists+speakup@lfdr.de>; Thu,  3 Feb 2022 20:37:29 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 0B97C381402; Thu,  3 Feb 2022 14:37:28 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id ECC7F380BD9
	for <lists+speakup@lfdr.de>; Thu,  3 Feb 2022 14:37:27 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 2C2F8380BD9; Thu,  3 Feb 2022 14:37:23 -0500 (EST)
Received: from omta01.suddenlink.net (omta01.suddenlink.net [208.180.40.71])
	by befuddled.reisers.ca (Postfix) with ESMTP id F09E63805F1
	for <speakup@linux-speakup.org>; Thu,  3 Feb 2022 14:37:22 -0500 (EST)
Received: from wb5agz.lan ([47.217.109.16]) by dalofep01.suddenlink.net
          (InterMail vM.8.04.03.22.02 201-2389-100-169-20190213) with ESMTP
          id <20220203193721.LAHT14835.dalofep01.suddenlink.net@wb5agz.lan>
          for <speakup@linux-speakup.org>; Thu, 3 Feb 2022 13:37:21 -0600
Received: from martin by wb5agz.lan with local (Exim 4.92)
	(envelope-from <martin.m@suddenlink.net>)
	id 1nFhuz-0001NG-AS
	for speakup@linux-speakup.org; Thu, 03 Feb 2022 13:37:21 -0600
From: "Martin McCormick" <martin.m@suddenlink.net>
To: speakup@linux-speakup.org
Subject: Raspberry Pi Upgrade from Stretch to Buster killed speakup.
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-ID: <5284.1643917041.1@localhost>
Date: Thu, 03 Feb 2022 13:37:21 -0600
Message-Id: <E1nFhuz-0001NG-AS@wb5agz.lan>
X-Authentication-Info: Submitted using SMTP AUTH PLAIN at dalofep01.suddenlink.net from [47.217.109.16] using ID martin.m@suddenlink.net at Thu, 3 Feb 2022 13:37:21 -0600
X-CM-Analysis: v=2.4 cv=GcB0ISbL c=1 sm=1 tr=0 ts=61fc2ef1 cx=a_idp_d a=vgFQBM89cIsqvvZDmBSopQ==:117 a=vgFQBM89cIsqvvZDmBSopQ==:17 a=kj9zAlcOel0A:10 a=oGFeUVbbRNcA:10 a=wC5lZz0xddkA:10 a=Bazy5YPgFvgs7e5dEnEA:9 a=CjuIK1q_8ugA:10 a=Z5ABNNGmrOfJ6cZ5bIyy:22 a=QOGEsqRv6VhmHaoFNykA:22
X-CM-Envelope: MS4xfMEwIBkl/oVC3/pyXTWBk+5TplGSa3yOd1HPcz2qDCDPIpo8AVBBUGTIwUs6LoF7eshjaRYw1twFrvSsWovNHbSndN97XouQV2dUGsFu/R2go+eDczPJ A7XhywjBmuTjBB047P6s0+68u5Ux7aQrXaRKkDyEcC0f01XSpQP3Vqwo18nRQFarfau+rCfWsADdVzYPxKVxAbE3Iz+MVNhVrko=
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

I have two Raspberry Pi's that I upgraded from Debian 9 (stretch)
to 10 which is Buster.  Both seem to have survived the upgrade
except for speakup which is now mute.
	I can get in to them via ssh but sometimes need to plug
headphones in to one or the other if I want to use it locally on
some project such as looking at our WiFi network with tshark or
anything else in which one needs a local console.

	When I was running stretch on these systems, speakup
worked pretty well except for a few idiosyncrasies but now there
is no speech at all on the one I am testing and I can assume that
the other Pi is probably having the same issue so whatever I do
to one will also need to be done to the other.

	It's been 2 or 3 years since I installed speakup on a
Raspberry Pi and I seem to remember a certain download of speakup
that works especially well but I don't remember exactly how I got
it which is why I am asking the list.

	Thanks for all constructive ideas.

	It's hard to believe that the whole Raspberry Pi computer
cost less than the Echo GP synthesizer which is the last hardware
speech box I used until about 2009 or so.

	When I was running stretch on these Pi's, I got pretty
much the same performance one gets from a full-sized desktop
system so I want to not lose that capability now.  Thanks.

Martin

