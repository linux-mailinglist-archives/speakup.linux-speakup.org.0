Return-Path: <speakup+bounces-1437-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 06A37BEEDF2
	for <lists+speakup@lfdr.de>; Mon, 20 Oct 2025 00:06:14 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=t39smtp-sign001.email header.i=@t39smtp-sign001.email header.a=rsa-sha256 header.s=titan1 header.b=eQgcWVja;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 7561738299C; Sun, 19 Oct 2025 18:06:13 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 5457F38263C
	for <lists+speakup@lfdr.de>; Sun, 19 Oct 2025 18:06:13 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id E912138224D; Sun, 19 Oct 2025 18:06:05 -0400 (EDT)
Received: from mail121.out.titan.email (mail121.out.titan.email [54.208.145.58])
	by befuddled.reisers.ca (Postfix) with ESMTPS id B5659382226
	for <speakup@linux-speakup.org>; Sun, 19 Oct 2025 18:06:05 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by smtp-out.flockmail.com (Postfix) with ESMTP id 4cqXgw5M2xz9rwJ;
	Sun, 19 Oct 2025 22:06:04 +0000 (UTC)
DKIM-Signature: a=rsa-sha256; bh=7GCyRtuaVCMsanG9OG5q4I/zv04lCN8Hf7P3kg1oO9Y=;
	c=relaxed/relaxed; d=t39smtp-sign001.email;
	h=message-id:from:references:date:mime-version:reply-to:to:subject:from:to:subject:date:message-id:reply-to:references:cc:in-reply-to;
	q=dns/txt; s=titan1; t=1760911564; v=1;
	b=eQgcWVja1NAAnWlGgSexmMV7Obk7QrSp2pnL1bUS3O+KQiwraAcVQWh7iEXNBjDidF6Jp8X0
	VLWrwOB4lTsm8nqV0HJiM5NkWb6eEflxTzeIMR6FYQCqPfiKnE9PzjYg+ZpvgAjecWDwjVTAJrq
	F+pegwf3tjFuLKivwXG4oKb8=
Received: from nucwin10 (unknown [140.228.165.201])
	by smtp-out.flockmail.com (Postfix) with ESMTPA id 4cqXgw0xZZz9rwB;
	Sun, 19 Oct 2025 22:06:04 +0000 (UTC)
Message-ID: <021e01dc4144$9007e3d0$01ffa8c0@nucwin10>
Reply-To: "K0LNY ??" <glenn@ervin.email>
Feedback-ID: :glenn@ervin.email:ervin.email:flockmailId
From: "K0LNY ??" <glenn@ervin.email>
To: <speakup@linux-speakup.org>,
	"Cleverson Casarin Uliana" <clul+speakup@posteo.com.br>
References: <021401dc413d$e3e246a0$01ffa8c0@nucwin10> <36b36e62-fecb-4bc9-8302-15dbe4f3b0fc@slint.fr> <bf1f95b5-63d5-4474-8f8e-888df7884bfb@posteo.com.br>
Subject: Re: Switching To Voxin
Date: Sun, 19 Oct 2025 17:06:03 -0500
Organization: Home
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain;
	charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2900.2180
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.2180
X-F-Verdict: SPFVALID
X-Titan-Src-Out: 1760911564569260955.2350.6057754465878436648@prod-use1-smtp-out1003.
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.4 cv=aN4Kqa9m c=1 sm=1 tr=0 ts=68f560cc
	a=sfY17wZm961WJQkZ7MXrtw==:117 a=sfY17wZm961WJQkZ7MXrtw==:17
	a=IkcTkHD0fZMA:10 a=MKtGQD3n3ToA:10 a=CEWIc4RMnpUA:10 a=NEAV23lmAAAA:8
	a=G1MHl-R2AAAA:8 a=qPKtzgQbAAAA:8 a=lPOMcNn-Gnmsf6nzbe0A:9
	a=QEXdDO2ut3YA:10 a=0_cEEhCvB34XW5aA8UtH:22 a=OTAqJWGB1laLS8RTg9aS:22
	a=P3K-DvM3-jjlTNsN-mCd:22 a=NWVoK91CQySWRX1oVYDe:22
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi Cleverson,
I installed git and did the git clone and it made a voxinup folder.
I ran ./install.sh and it did some stuff, but it didn't seem to install 
voxinup.
I tried make install inside the voxinup folder, and it didn't do anything 
either.
I'm not good at understanding some of the things I can git clone from 
github.
Thanks for any assistance.

Glenn
----- Original Message ----- 
From: "Cleverson Casarin Uliana" <clul+speakup@posteo.com.br>
To: <speakup@linux-speakup.org>
Sent: Sunday, October 19, 2025 4:39 PM
Subject: Re: Switching To Voxin


Hi, besides speechd-up and Fenrir, I believe Voxinup, developed by
Oralux, still works.
https://github.com/Oralux/voxinup_install

Cheers,
Cleverson



