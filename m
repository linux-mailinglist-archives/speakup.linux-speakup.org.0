Return-Path: <speakup+bounces-1170-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 5D37A94DC7B
	for <lists+speakup@lfdr.de>; Sat, 10 Aug 2024 13:29:21 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; secure) header.d=rednote.net header.i=@rednote.net header.a=rsa-sha256 header.s=dkim header.b=XJsgCAmt;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id DEEE13825C6; Sat, 10 Aug 2024 07:29:19 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id C015D3820D1
	for <lists+speakup@lfdr.de>; Sat, 10 Aug 2024 07:29:19 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id D8B173820E2; Sat, 10 Aug 2024 07:29:12 -0400 (EDT)
Received: from mail.rednote.net (opera.rednote.net [66.228.34.147])
	by befuddled.reisers.ca (Postfix) with ESMTPS id AC5EF3820B5
	for <speakup@linux-speakup.org>; Sat, 10 Aug 2024 07:29:12 -0400 (EDT)
Received: from rednote.net (localhost [IPv6:::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by mail.rednote.net (Postfix) with ESMTPS id 74785FA054
	for <speakup@linux-speakup.org>; Sat, 10 Aug 2024 07:28:41 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rednote.net; s=dkim;
	t=1723289321;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=ny/zEIHakRuPg9VuL/96O2gcC7RJXu30xgIRJlG/MA0=;
	b=XJsgCAmtpKxAcgurIrqSXX8O+LD0GjMyPMQsKPxiTOyta3ho7RjXwYsYNf5clhXIge6WLc
	uyxAJ8GI3sPaD4rlFWOQzoN1zaPB9KkcpDQsP1KeZ1FYBYnAv0W+IlnSNwIOC7JhVQufB8
	ljUc/bzMXS02kjQD4Q9XaaUf/EYFjEc=
DMARC-Filter: OpenDMARC Filter v1.4.2 mail.rednote.net 74785FA054
Authentication-Results: mail.rednote.net; dmarc=pass (p=reject dis=none) header.from=rednote.net
Authentication-Results: mail.rednote.net; spf=pass smtp.mailfrom=rednote.net
Received: (from janina@localhost)
	by rednote.net (8.18.1/8.16.1/Submit) id 47ABSfte009992
	for speakup@linux-speakup.org; Sat, 10 Aug 2024 07:28:41 -0400
Date: Sat, 10 Aug 2024 07:28:41 -0400
From: Janina Sajka <janina@rednote.net>
To: speakup@linux-speakup.org
Subject: Asahi Linux
Message-ID: <ZrdO6W1DFBfuuzuS@rednote.net>
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
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Anyone know whether any flavor of Asahi Linux includes Speakup support?
I thought I'd ask before digging into their github!

I'm wanting to get some flavor of Linux CLI working in VMware on my M2
Macbook.

All suggestions welcome, and my apologies if I've spammed you with this
question on the several lists we're both subscribed to! :)

Janina

PS & FYI: Asahi Linux is reverse engineered to run on Apple silicon:

https://asahilinux.org


-- 

Janina Sajka (she/her/hers)
Accessibility Consultant https://linkedin.com/in/jsajka

The World Wide Web Consortium (W3C), Web Accessibility Initiative (WAI)
Co-Chair, Accessible Platform Architectures	http://www.w3.org/wai/apa

Linux Foundation Fellow
https://www.linuxfoundation.org/board-of-directors-2/


