Return-Path: <speakup+bounces-910-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 69059649903
	for <lists+speakup@lfdr.de>; Mon, 12 Dec 2022 07:34:59 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; secure) header.d=jasonjgw.net header.i=@jasonjgw.net header.a=rsa-sha256 header.s=mail header.b=haS0aFge;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 539C8382867; Mon, 12 Dec 2022 01:34:57 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 34E66382823
	for <lists+speakup@lfdr.de>; Mon, 12 Dec 2022 01:34:57 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id D31D138283B; Mon, 12 Dec 2022 01:34:47 -0500 (EST)
Received: from svr.jasonjgw.net (svr.jasonjgw.net [192.155.90.172])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 3D071382823
	for <speakup@linux-speakup.org>; Mon, 12 Dec 2022 01:34:47 -0500 (EST)
Received: from [IPV6:fd6e:ebcf:467e:3::1] (jdc.jasonjgw.net [IPv6:fd6e:ebcf:467e:3::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (secp384r1))
	(Client did not present a certificate)
	by svr.jasonjgw.net (Postfix) with ESMTPSA id 4B2D33208F
	for <speakup@linux-speakup.org>; Mon, 12 Dec 2022 06:34:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jasonjgw.net;
	s=mail; t=1670826850;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=cs9mtdFhPN2vSHa7IwcqST8QSW4Y89ZRisS7zYdU4Fo=;
	b=haS0aFgeiDU0aNTusRS9YNxsm9XNE0f6P/9Z0dYnwj9r6I4PSN047QZ86Xp32jUIuHZOGO
	gzFghY7utZCPYsGuBFzLih6ZaDKXnAzMSttMGbKT34TL3eZ3JcF/p53akAN9qZPeSXFNuY
	R8QXts06mhlALHLi9yXJW/35b7eshjJKDL3RMJ3ii70uwVXXmtH9Bg9R70lAhFnWd7+H7o
	ALk5K93DztWKCBmSKlNVfA/4fO9UH6nESepnyV9/JfOp6WcUnMEkhpFt9Uv/sl3GWf9eQt
	ks42FXAVeWzH0DDr+OcZUQP80VKo+ZSRdmdCJB+xcAXHibNU6OJS6/EJ/Gsmhw==
Message-ID: <46911939-7d7b-ad31-4cd4-d5cba4ea7715@jasonjgw.net>
Date: Mon, 12 Dec 2022 17:34:07 +1100
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
 Thunderbird/102.5.1
Subject: Re: Installing Ubuntu Server
Content-Language: en-US
To: speakup@linux-speakup.org
References: <000701d90dba$a449abf0$8bffa8c0@Win7VM>
 <Y5Z7cfzORuPgHUeo@novena-choice-citizen>
From: Jason White <jason@jasonjgw.net>
In-Reply-To: <Y5Z7cfzORuPgHUeo@novena-choice-citizen>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5


On 12/12/22 11:53, Jookia wrote:
> Is there an install via SSH option?

For Debian, you should be able to install via ssh using Debootstrap or, 
as recently recommended by an experienced system administrator in 
mailing list discussion, Mmdebstrap.

I don't know whether Ubuntu can do the same.

However, there should be prepared images available for virtual machines 
that don't require you to "install" anything.



