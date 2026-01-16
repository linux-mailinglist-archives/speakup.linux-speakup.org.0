Return-Path: <speakup+bounces-1504-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id AD593D389CB
	for <lists+speakup@lfdr.de>; Sat, 17 Jan 2026 00:23:20 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; secure) header.d=posteo.com.br header.i=@posteo.com.br header.a=rsa-sha256 header.s=2017 header.b=NMLO3zGJ;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 0B98F381901; Fri, 16 Jan 2026 18:23:20 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id E2D8A38099D
	for <lists+speakup@lfdr.de>; Fri, 16 Jan 2026 18:23:19 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 0C01F3817F9; Fri, 16 Jan 2026 18:23:14 -0500 (EST)
Received: from mout01.posteo.de (mout01.posteo.de [185.67.36.65])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 2A7E238099D
	for <speakup@linux-speakup.org>; Fri, 16 Jan 2026 18:23:12 -0500 (EST)
Received: from submission (posteo.de [185.67.36.169]) 
	by mout01.posteo.de (Postfix) with ESMTPS id 928E7240027
	for <speakup@linux-speakup.org>; Sat, 17 Jan 2026 00:23:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=posteo.com.br;
	s=2017; t=1768605789;
	bh=OKj6wzvSw/J0xTnTnz4kNQ/mGY9ghulL/CBvGnoY8G0=;
	h=Message-ID:Date:MIME-Version:Subject:To:From:Content-Type:
	 Content-Transfer-Encoding:From;
	b=NMLO3zGJBJdRXN2rgZdUkl8f6RfaRxsuKYSEhq4JcBYemSFlZqsc0P3GIpxMR2wSa
	 yq2dAh9T+5Xq4yWKTwZ1LXkvA17NxO7rjJqV/5HEu9D26pyYuf5mpyNuOsjVUl3Uz/
	 7hZjA0hyVHX1QeOWE8otw3KEI2a6umO0yF93FEfhm2OCdfPXGq5+kjciRBBysDKNbv
	 6k6d07cB2KE5Uxl6dHtKloGsTPgW5D4D9vEwDxidZrsXuzaU8Ca0+ICqQSH6m+C1Sd
	 mcgOMhG33ULvLwkf1ZDx09UMQ8Sswgnsry9Q3HWquO6h++GxXqOduabVWc1i+xMfU7
	 stiXShktPl8tg==
Received: from customer (localhost [127.0.0.1])
	by submission (posteo.de) with ESMTPSA id 4dtG9m4pw1z9rxG
	for <speakup@linux-speakup.org>; Sat, 17 Jan 2026 00:23:08 +0100 (CET)
Message-ID: <0b0da1f0-bedb-440d-aeae-5b0d1c93f751@posteo.com.br>
Date: Fri, 16 Jan 2026 23:23:09 +0000
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux." <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Subject: Re: Espeakup & Espeak Upgrades Broke Latency
Content-Language: pt-BR
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <aWpRKvcLNxlSLfbU@A11y.NYC>
 <a004a67b-aa1b-4390-ad97-928e0dc680e2@reisers.ca>
From: Cleverson Casarin Uliana <clul+speakup@posteo.com.br>
In-Reply-To: <a004a67b-aa1b-4390-ad97-928e0dc680e2@reisers.ca>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi, just to confirm that I use to experience latency on my machines too. 
It's just tents of a second, but enough to cause two speeches speaking 
together each time I press a num pad key. I have only one machine for 
personal use which I bought last year, but that latency already happened 
on previous laptops. the distribution is ArchLinux, but I'm nearly sure 
it happened on Debian as well when I tried it last year.

Regards,
Cleverson


