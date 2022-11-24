Return-Path: <speakup+bounces-867-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 3834E63731A
	for <lists+speakup@lfdr.de>; Thu, 24 Nov 2022 08:50:05 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; secure) header.d=jasonjgw.net header.i=@jasonjgw.net header.a=rsa-sha256 header.s=mail header.b=EjsaURK8;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 36E3D382A34; Thu, 24 Nov 2022 02:42:34 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 18857380A3A
	for <lists+speakup@lfdr.de>; Thu, 24 Nov 2022 02:42:34 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id A3D6C382947; Thu, 24 Nov 2022 02:42:24 -0500 (EST)
Received: from svr.jasonjgw.net (svr.jasonjgw.net [192.155.90.172])
	by befuddled.reisers.ca (Postfix) with ESMTPS id C184C380A3A
	for <speakup@linux-speakup.org>; Thu, 24 Nov 2022 02:42:23 -0500 (EST)
Received: from [IPV6:fd6e:ebcf:467e:3::1] (jdc.jasonjgw.net [IPv6:fd6e:ebcf:467e:3::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (secp384r1) server-digest SHA384)
	(Client did not present a certificate)
	by svr.jasonjgw.net (Postfix) with ESMTPSA id 6EB1C320BF
	for <speakup@linux-speakup.org>; Thu, 24 Nov 2022 07:41:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jasonjgw.net;
	s=mail; t=1669275705;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=WO/WHxMlf7Gm4L9Lx+cIZYQL3XCeh9QWPMf46feKR94=;
	b=EjsaURK8JVf6s25eGoqAyNZUW1V9L1OyqHY9NJAlLqfCyjnC+TCuRHKafSjWPpoBjl9D/a
	1kRr9B426mK+CJm4pMmBuNNiESmAoEv5LDxh13u3uLYN6WaR2TCI9czraYtGjVRYkd9zI0
	N4CkbpX2+90vC+EpQYuHJ8WpN5Q3TyoFOv+hKXsnCQu1BlosHkV33zqCIxiVmV7EUcnwvS
	dXopkosBugrXwtb96HG/7FIigItyGXQ+DawjtA4miMjsxdDdZPEOOqv1OqwMUfZfr7ex0j
	R0Wh3I5OZTMv+bRH8Cebce8+APZ30PBdEcAcNdg7RETsPlf9xmn8f+AxOYOgog==
Message-ID: <c4feda3a-57b6-4a41-5a45-5fbba56d02ea@jasonjgw.net>
Date: Thu, 24 Nov 2022 18:41:41 +1100
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
 Thunderbird/102.5.0
Subject: Re: Could someone help with bash scripting?
Content-Language: en-US
To: speakup@linux-speakup.org
References: <D9069478-2D9A-4DC3-97D7-BB365C7A4222@gena-j.me.uk>
 <97c24e8f-836c-0464-6aa6-09a0a100b06a@csir.co.za>
From: Jason White <jason@jasonjgw.net>
In-Reply-To: <97c24e8f-836c-0464-6aa6-09a0a100b06a@csir.co.za>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5


On 23/11/22 20:25, Willem van der Walt wrote:
> kermit I think is the easiest.
There's documentation available at https://kermitproject.org/
> You might also look at using expect.
>
I haven't used it, but I've read positive statements about it.

