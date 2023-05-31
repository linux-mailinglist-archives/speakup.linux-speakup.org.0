Return-Path: <speakup+bounces-949-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id D267D718E29
	for <lists+speakup@lfdr.de>; Thu,  1 Jun 2023 00:11:23 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; secure) header.d=jasonjgw.net header.i=@jasonjgw.net header.a=rsa-sha256 header.s=mail header.b=WDyHmmgn;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 04A693824BC; Wed, 31 May 2023 18:02:52 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id D8D67382370
	for <lists+speakup@lfdr.de>; Wed, 31 May 2023 18:02:51 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id A9F5338241A; Wed, 31 May 2023 18:02:42 -0400 (EDT)
Received: from svr.jasonjgw.net (svr.jasonjgw.net [192.155.90.172])
	by befuddled.reisers.ca (Postfix) with ESMTPS id C4A1E382370
	for <speakup@linux-speakup.org>; Wed, 31 May 2023 18:02:41 -0400 (EDT)
Received: from [10.0.2.1] (jpw.jasonjgw.net [10.0.2.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (secp384r1) server-digest SHA384)
	(Client did not present a certificate)
	by svr.jasonjgw.net (Postfix) with ESMTPSA id 91D0D320D8
	for <speakup@linux-speakup.org>; Wed, 31 May 2023 22:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jasonjgw.net;
	s=mail; t=1685570528;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=HM8ugoBY5StQ8d2cP4AnC9wAwlJTDQpsLULb2O2S/d8=;
	b=WDyHmmgnTEeBWnjjGDDADpHAS0thDFRn4+bvtpnMqIeuvW7EExNf7Odf/BS6YL0j8JvRFC
	dnIs1WBqaYLNGqcB/cM5LYex7CsZR/6YM5md8omomuYNdnOCcIpn45FclTar/3crSRGYwy
	HCq6q4yBWSUwKxFMLuUspmNh3TE3vLfEhAIN2hwYdKbEFvYdt5z4/CU3hy4Z/6sMzv0kUy
	XwUEBcF6+ghfIz0YXMd4jT2hGYAPTyLZUSEm63BaNh+CERfrFWX92raRUTKshuD54I6Jp3
	TteHfGwFMWMmG1g/Ft4DdCC3UKaqUZO7ve8Y0p6xjRZFMWAMla1NleWp2gJtXg==
Message-ID: <aa44b9da-6597-bbda-4ace-47175460f2d1@jasonjgw.net>
Date: Wed, 31 May 2023 18:02:07 -0400
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
To: speakup@linux-speakup.org
References: <018f01d99337$13e15880$01ffa8c0@nucwin10>
 <01a201d99346$d40918a0$01ffa8c0@nucwin10> <E1q4S4G-0003O3-Hc@wb5agz.lan>
Content-Language: en-US
From: Jason White <jason@jasonjgw.net>
Subject: Re: Would the world end if Linux Sound just worked?
In-Reply-To: <E1q4S4G-0003O3-Hc@wb5agz.lan>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5


On 31/5/23 16:05, Martin McCormick wrote:
> 	In one sentence, Audio doesn't work on that system unless
> you are logged in as root.

Is this still the case with Pipewire installed?

Audio on Linux is moving to Pipewire, so that's where I would suggest 
focusing your debugging efforts.

PulseAudio is on the way out, except for the client library, which 
Pipewire supports directly.


