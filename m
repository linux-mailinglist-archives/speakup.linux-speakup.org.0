Return-Path: <speakup+bounces-1438-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 4F2CABEF2E1
	for <lists+speakup@lfdr.de>; Mon, 20 Oct 2025 05:21:25 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=jookia.org header.i=@jookia.org header.a=rsa-sha256 header.s=key1 header.b=XnVlqfgR;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 5BEAE3829BA; Sun, 19 Oct 2025 23:21:24 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 3A917382651
	for <lists+speakup@lfdr.de>; Sun, 19 Oct 2025 23:21:24 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id E578E382255; Sun, 19 Oct 2025 23:21:16 -0400 (EDT)
Received: from out-172.mta1.migadu.com (out-172.mta1.migadu.com [95.215.58.172])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 08B3C3821D4
	for <speakup@linux-speakup.org>; Sun, 19 Oct 2025 23:21:15 -0400 (EDT)
Date: Mon, 20 Oct 2025 14:16:24 +1100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1760930458;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=ftVJ5E/QnWoHS2aSrciZkKU9RalrZTQsW9GffdyhFc0=;
	b=XnVlqfgRrjsiwAD2gMQArkCQEfPs7eC5/TaJHbmy1gnTdgMShiuiJSSsnvbpd2ET6ckE5F
	WvSzice+tZnUWfHjIOQw+SoggXMhMuq0Tw7FnbgfaOPxkrp/2gCw39EIRyLGbtskZ4PGNB
	GHJ0wO+v7R/3uCn8hWzAr1dhKT7x/r2M+B1g5n+Xo/4r9FioYMSAGCOQZ2CeiWBGyqfGFJ
	ckckYHay/w2nelPiAqNt+HVpqsqQZU/dUrDbqmDFchGTY0LBKG7JrVLAD3XnU5qgOxSM9M
	uZ/ByzxBWrkiJprymWQBtShx9snTgWWvKn90XNBp76AK2eS8jofVlBhLedI5hQ==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Jookia <contact@jookia.org>
To: K0LNY ?? <glenn@ervin.email>
Cc: speakup@linux-speakup.org,
	Cleverson Casarin Uliana <clul+speakup@posteo.com.br>
Subject: Re: Switching To Voxin
Message-ID: <aPWpiC6GfLTU664Q@titan>
References: <021401dc413d$e3e246a0$01ffa8c0@nucwin10>
 <36b36e62-fecb-4bc9-8302-15dbe4f3b0fc@slint.fr>
 <bf1f95b5-63d5-4474-8f8e-888df7884bfb@posteo.com.br>
 <021e01dc4144$9007e3d0$01ffa8c0@nucwin10>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <021e01dc4144$9007e3d0$01ffa8c0@nucwin10>
X-Migadu-Flow: FLOW_OUT
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Try https://github.com/Oralux/voxinup

You will need to provide your own systemd units or grab them from the install repo.

On Sun, Oct 19, 2025 at 05:06:03PM -0500, K0LNY ?? wrote:
> Hi Cleverson,
> I installed git and did the git clone and it made a voxinup folder.
> I ran ./install.sh and it did some stuff, but it didn't seem to install 
> voxinup.
> I tried make install inside the voxinup folder, and it didn't do anything 
> either.
> I'm not good at understanding some of the things I can git clone from 
> github.
> Thanks for any assistance.
> 
> Glenn
> ----- Original Message ----- 
> From: "Cleverson Casarin Uliana" <clul+speakup@posteo.com.br>
> To: <speakup@linux-speakup.org>
> Sent: Sunday, October 19, 2025 4:39 PM
> Subject: Re: Switching To Voxin
> 
> 
> Hi, besides speechd-up and Fenrir, I believe Voxinup, developed by
> Oralux, still works.
> https://github.com/Oralux/voxinup_install
> 
> Cheers,
> Cleverson
> 
> 
> 

