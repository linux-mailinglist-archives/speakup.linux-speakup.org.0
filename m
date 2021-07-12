Return-Path: <speakup+bounces-243-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 34D933C4658
	for <lists+speakup@lfdr.de>; Mon, 12 Jul 2021 11:50:13 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id BFDAE380F68; Mon, 12 Jul 2021 05:50:12 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id AE238380F5A
	for <lists+speakup@lfdr.de>; Mon, 12 Jul 2021 05:50:12 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 33BDC380F64; Mon, 12 Jul 2021 05:50:08 -0400 (EDT)
Received: from hurricane.the-brannons.com (hurricane.the-brannons.com [216.252.162.32])
	by befuddled.reisers.ca (Postfix) with ESMTPS id DD14F380F5A
	for <speakup@linux-speakup.org>; Mon, 12 Jul 2021 05:50:07 -0400 (EDT)
Received: from localhost (<unknown> [2602:3f:e0f9:dc00::2])
	by hurricane.the-brannons.com (OpenSMTPD) with ESMTPSA id 9d58815d (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO)
	for <speakup@linux-speakup.org>;
	Mon, 12 Jul 2021 02:49:59 -0700 (PDT)
From: Chris Brannon <chris@the-brannons.com>
To:  speakup@linux-speakup.org
Subject: Re: Installing OS on rackmount server
References: <202107120210.16C2Ahr2026335@nfbcal.org>
Date: Mon, 12 Jul 2021 02:49:58 -0700
In-Reply-To: <202107120210.16C2Ahr2026335@nfbcal.org> (Brian Buhrow's message
	of "Sun, 11 Jul 2021 19:10:43 -0700")
Message-ID: <87h7gz275l.fsf@the-brannons.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.2 (gnu/linux)
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Brian Buhrow <buhrow@nfbcal.org> writes:

> 	Hello.  IPMI equipped servers are the cat's meow of servers
> and I love them!  I can, with
> the ipmitool, configure the BIOS, boot them via PXE, install the
> operating system and get them
> into full service, all with speech.  then, after it's running, you can
> use the ipmitool to
> monitor the health of the machine and recover if it crashes.
> -Brian

Yes.  So much so that I think if I buy another x86 system, I'm going to
insist on IPMI.  E.G., I have my eye on a mini-ITX board from Supermicro
that has IPMI support.

-- Chris

