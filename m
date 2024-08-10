Return-Path: <speakup+bounces-1173-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 32A2E94DD80
	for <lists+speakup@lfdr.de>; Sat, 10 Aug 2024 17:37:19 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; secure) header.d=rednote.net header.i=@rednote.net header.a=rsa-sha256 header.s=dkim header.b=Dr/S0SqK;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 540A3382670; Sat, 10 Aug 2024 11:37:18 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 367823820E2
	for <lists+speakup@lfdr.de>; Sat, 10 Aug 2024 11:37:18 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 611623820E2; Sat, 10 Aug 2024 11:37:11 -0400 (EDT)
Received: from mail.rednote.net (opera.rednote.net [66.228.34.147])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 4155738040B
	for <speakup@linux-speakup.org>; Sat, 10 Aug 2024 11:37:11 -0400 (EDT)
Received: from rednote.net (localhost [IPv6:::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by mail.rednote.net (Postfix) with ESMTPS id 241ABFA054;
	Sat, 10 Aug 2024 11:36:39 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rednote.net; s=dkim;
	t=1723304199;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=G3BEY+Sw3SKtHYluS7EcFovB2PMnUR49tGA/hF7ixrk=;
	b=Dr/S0SqKDuRP9Flhc9SR2z7qU6yXHsCV3SU0/E0xw4XuFb0sZaroTjIwTjPE35jeuqOsC2
	t7+02FlgYT6oBrqdokVHNmf2ZzcRmWrr0mzxI+lJz50rvxQDHQMbfovQ9m8+uSO/McMOMq
	gRTckKOsLB8dpcqZhAYGUyMI9bXscec=
DMARC-Filter: OpenDMARC Filter v1.4.2 mail.rednote.net 241ABFA054
Authentication-Results: mail.rednote.net; dmarc=pass (p=reject dis=none) header.from=rednote.net
Authentication-Results: mail.rednote.net; spf=pass smtp.mailfrom=rednote.net
Received: (from janina@localhost)
	by rednote.net (8.18.1/8.16.1/Submit) id 47AFadAl019128;
	Sat, 10 Aug 2024 11:36:39 -0400
Date: Sat, 10 Aug 2024 11:36:39 -0400
From: Janina Sajka <janina@rednote.net>
To: "Jason J.G. White" <jason@jasonjgw.net>
Cc: speakup@linux-speakup.org
Subject: Re: Asahi Linux
Message-ID: <ZreJB_8Qo9ZHyCr8@rednote.net>
References: <ZrdO6W1DFBfuuzuS@rednote.net>
 <eb627eee-1990-4015-b172-6bf4d0043f7c@jasonjgw.net>
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
In-Reply-To: <eb627eee-1990-4015-b172-6bf4d0043f7c@jasonjgw.net>
X-Operating-System: Linux opera.rednote.net 6.10.3-200.fc40.x86_64
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

No audio support would indeed constitute a deal breaker! There does seem
to be audio on Asahi, though. I found this:

https://github.com/AsahiLinux/asahi-audio

Jason White writes:
> 
> On 10/8/24 07:28, Janina Sajka wrote:
> > Anyone know whether any flavor of Asahi Linux includes Speakup support?
> 
> According to what I heard (perhaps earlier this year), one feature known not
> to be working in Asahi Linux was the Mac audio device. You may need to use a
> USB audio device instead, unless this limitation has been overcome.
> 

-- 

Janina Sajka (she/her/hers)
Accessibility Consultant https://linkedin.com/in/jsajka

The World Wide Web Consortium (W3C), Web Accessibility Initiative (WAI)
Co-Chair, Accessible Platform Architectures	http://www.w3.org/wai/apa

Linux Foundation Fellow
https://www.linuxfoundation.org/board-of-directors-2/


