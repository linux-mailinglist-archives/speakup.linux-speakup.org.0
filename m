Return-Path: <speakup+bounces-372-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 721BC4CB067
	for <lists+speakup@lfdr.de>; Wed,  2 Mar 2022 21:59:17 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 125EF380D41; Wed,  2 Mar 2022 15:59:17 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id F190E380C76
	for <lists+speakup@lfdr.de>; Wed,  2 Mar 2022 15:59:16 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 14B68380C76; Wed,  2 Mar 2022 15:59:12 -0500 (EST)
Received: from nfbcal.org (ns.NFBCAL.ORG [157.22.230.125])
	by befuddled.reisers.ca (Postfix) with ESMTPS id C321E380A77
	for <speakup@linux-speakup.org>; Wed,  2 Mar 2022 15:59:11 -0500 (EST)
Received: from nfbcal.org (localhost [127.0.0.1])
	by nfbcal.org (8.15.2/8.14.1-NFBNETBSD) with ESMTPS id 222Kx88P026062
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
	Wed, 2 Mar 2022 12:59:09 -0800 (PST)
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.102.2 at lothlorien.nfbcal.org
Received: (from buhrow@localhost)
	by nfbcal.org (8.15.2/8.12.11) id 222Kx8ce000006;
	Wed, 2 Mar 2022 12:59:08 -0800 (PST)
Message-Id: <202203022059.222Kx8ce000006@nfbcal.org>
From: Brian Buhrow <buhrow@nfbcal.org>
Date: Wed, 2 Mar 2022 12:59:08 -0800
In-Reply-To: <6b67ff97-4b70-8813-c99-c482194b7cf2@reisers.ca>
X-Mailer: Mail User's Shell (7.2.6 beta(4.pl1)+dynamic 20000103)
To: Kirk Reiser <kirk@reisers.ca>, speakup@linux-speakup.org
Subject: Re: RPI gravelly speech and pcaudiolib results
Cc: buhrow@nfbcal.org
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.4.3 (nfbcal.org [127.0.0.1]); Wed, 02 Mar 2022 12:59:09 -0800 (PST)
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

	hello.  Just out of curiosity, is there a way to get the audio system to flush its buffer
before it finishes speaking the current buffer?  I know when I worked on getting eflite working
on my systems many years ago, the speech engine was calling the drain ioctl rather than the
flush ioctl when the stop speech command was issued to it.   Changing the flite engine so it
could distinguish between  drain and flush fixed the problem and made things very responsive
without having to tweak buffer sizes.

-Brian


