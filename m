Return-Path: <speakup+bounces-917-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id B86D2661A9C
	for <lists+speakup@lfdr.de>; Sun,  8 Jan 2023 23:58:22 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; secure) header.d=jasonjgw.net header.i=@jasonjgw.net header.a=rsa-sha256 header.s=mail header.b=I7CZ+HxX;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id DD37A382959; Sun,  8 Jan 2023 17:58:21 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id C060438291A
	for <lists+speakup@lfdr.de>; Sun,  8 Jan 2023 17:58:21 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id CE11F38291A; Sun,  8 Jan 2023 17:58:12 -0500 (EST)
Received: from svr.jasonjgw.net (svr.jasonjgw.net [192.155.90.172])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 9BD4E382823
	for <speakup@linux-speakup.org>; Sun,  8 Jan 2023 17:58:12 -0500 (EST)
Received: from [IPV6:fd6e:ebcf:467e:3::1] (jdc.jasonjgw.net [IPv6:fd6e:ebcf:467e:3::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (secp384r1) server-digest SHA384)
	(Client did not present a certificate)
	by svr.jasonjgw.net (Postfix) with ESMTPSA id 7534232084
	for <speakup@linux-speakup.org>; Sun,  8 Jan 2023 22:57:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jasonjgw.net;
	s=mail; t=1673218656;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Ibq1hKg93Z8DGT0EeE5SQ9cnSvERWakZTBnpDVRilxM=;
	b=I7CZ+HxXRb4v6fW3PGWY76+frswHnbO9m9vN6JC48zDsnOzzvkaf7pqc09UvGmx5VtLpfo
	EvoTeBcpqTCCRrGLdAcygLCUzggazWGzAAHFxppzxCaLEfnLsJuUHCKzw+PYoHqAkUuK+T
	ihTkoH7YGXOGyntlohcULTPZHwR+X2Ekq4DsmPDqBvWhe5UQpR5JPYhFDkwIOPdGFpIsBa
	0vP3pzPNOkIUECdcDz9JNUPwlD7XJs+5wtmLbqLILjPol1vzi1vMt0vYN9zjCnNpg0KnSQ
	rGFFfhuvXFe1bc7hC0X8WYqHsQfPSKzmWKvM1+IAJi1i3MfyuwmjYS7zn7oepQ==
Message-ID: <10310bf1-0679-528b-d62b-ad7c4fb8902b@jasonjgw.net>
Date: Mon, 9 Jan 2023 09:57:32 +1100
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
 Thunderbird/102.6.0
Subject: Re: using espeak to echo the amount of RAM
Content-Language: en-US
To: speakup@linux-speakup.org
References: <004401d923a5$e3e9b2e0$93ffa8c0@Win7VM>
From: Jason White <jason@jasonjgw.net>
In-Reply-To: <004401d923a5$e3e9b2e0$93ffa8c0@Win7VM>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5


On 9/1/23 08:12, K0LNY_Glenn wrote:
> My plan is to install that old Ubuntu with Chirp, because the new Chirp is
> no longer accessible, I think because of it using flatpak, so if I want to
> use Chirp, it's likely on an old Linux that isn't using Python 3.

Debian Testing has Chirp 1:20221106+py3-1 as a package (i.e., no flatpak).

I don't know how accessible it is though.



