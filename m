Return-Path: <speakup+bounces-1441-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id E7CD2BEF5C9
	for <lists+speakup@lfdr.de>; Mon, 20 Oct 2025 07:36:19 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=jookia.org header.i=@jookia.org header.a=rsa-sha256 header.s=key1 header.b=tplIS7OE;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 7DFC7382A1C; Mon, 20 Oct 2025 01:36:19 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 5D0E6382953
	for <lists+speakup@lfdr.de>; Mon, 20 Oct 2025 01:36:19 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 196DF38294E; Mon, 20 Oct 2025 01:36:12 -0400 (EDT)
Received: from out-188.mta0.migadu.com (out-188.mta0.migadu.com [91.218.175.188])
	by befuddled.reisers.ca (Postfix) with ESMTPS id F00A738263C
	for <speakup@linux-speakup.org>; Mon, 20 Oct 2025 01:36:08 -0400 (EDT)
Date: Mon, 20 Oct 2025 16:35:23 +1100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1760938548;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=uDeLChrH+PZdYg1GHYHyCVmbwYFc87wDic0GUQfwEqE=;
	b=tplIS7OEiYHeSrQiZRSob/vd+J/USJXln+EpFHQW4ypazv9LC8bkSdoDzHKA0yIIEkMVMC
	QcuiXyaGeCjYQ005J/3X/CmQ4sujnArjVpSsZgnjVbi9jLcMbqwoIr773T3xymXORtV1kW
	rvVGb6JbAiUX0Nn1m+4HBA6kZKAimUyH53c3VB2u0zY9l9QsSJxTAxutEg1kD/Jq7Wg7xz
	ov9EtgkEoS7TrYfzKJfblHGa+zKgCb+RT6Y92JRqcdOEBLmc9qgzEWSEX1JN25IDpSYdNN
	MEd7lpm6Nrwl/r1D0ZzFAJT/zaDzfxxtOI7rEp/6+j5W0i0ikJTskBQvZ2ySOw==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Jookia <contact@jookia.org>
To: K0LNY ?? <glenn@ervin.email>
Cc: speakup@linux-speakup.org,
	Cleverson Casarin Uliana <clul+speakup@posteo.com.br>
Subject: Re: Switching To Voxin
Message-ID: <aPXKG2Rjkt8s1UNV@titan>
References: <021401dc413d$e3e246a0$01ffa8c0@nucwin10>
 <36b36e62-fecb-4bc9-8302-15dbe4f3b0fc@slint.fr>
 <bf1f95b5-63d5-4474-8f8e-888df7884bfb@posteo.com.br>
 <0b3101dc4183$1346cac0$01ffa8c0@nucwin10>
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
In-Reply-To: <0b3101dc4183$1346cac0$01ffa8c0@nucwin10>
X-Migadu-Flow: FLOW_OUT
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

You can't use espeakup with voxin, you have to use the programs provided by the
voxin developers. In this case voxinup.

On Mon, Oct 20, 2025 at 12:33:27AM -0500, K0LNY ?? wrote:
> I've been looking on-line, and still can't get espeakup to use Voxin.
> Voxin works with spd-say, and with voxin-say.
> But espeakup is silent.
> I tried:
> espeakup --default-voice=voxin
> and it did not like that until I used sudo with it.
> But that didn't fix the silence.
> Does anyone know where I can edit a conf file?
> I've edited /etc/default/espeakup to read default synth=voxin
> I don't know where else to look.
> Thanks.
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

