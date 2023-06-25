Return-Path: <speakup+bounces-969-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 3856173D142
	for <lists+speakup@lfdr.de>; Sun, 25 Jun 2023 16:03:10 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; secure) header.d=jasonjgw.net header.i=@jasonjgw.net header.a=rsa-sha256 header.s=mail header.b=suXZL1yJ;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 0258438256F; Sun, 25 Jun 2023 10:03:02 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id D5E2E38252F
	for <lists+speakup@lfdr.de>; Sun, 25 Jun 2023 10:03:01 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 1248638252F; Sun, 25 Jun 2023 10:02:54 -0400 (EDT)
Received: from svr.jasonjgw.net (svr.jasonjgw.net [192.155.90.172])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 9F8A6382453
	for <speakup@linux-speakup.org>; Sun, 25 Jun 2023 10:02:53 -0400 (EDT)
Received: from [10.0.2.1] (jpw.jasonjgw.net [10.0.2.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (secp384r1) server-digest SHA384)
	(Client did not present a certificate)
	by svr.jasonjgw.net (Postfix) with ESMTPSA id 07839321C9
	for <speakup@linux-speakup.org>; Sun, 25 Jun 2023 14:02:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jasonjgw.net;
	s=mail; t=1687701740;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=CR8yyy2iIfJxGBfclzEHDSjIMRHht+CRcogYgs9wnb8=;
	b=suXZL1yJ2bxMGB9MwNbviA3RAOnJi5MqwLH4TJZ3Zuo9cpjBM1iBHcXaA+wYjih/GR/V/y
	VQFCor76wu60kX8KtkAlRNZgNxXgPzybNZSx8e9mvoYO2yNr4lUJ5BVRaPb9Dy2l5W/wri
	L3YRuYKVDb7o1LDvxhDKbX76AvwuwY+rWGne8RzHlfE9HqbsGTBrJ8qCOeDBxKs2g18rde
	Y3s7JKUPXJrBgZAURIr/QWXzT2vKJjvO5Ur7tWInvrqgzKEgSrItpSg2A20CM9dirMy2SX
	pP2ekbEkWFnShnAVd5rSDgH5vH9rPQAnLHXm3/KiT7n+XR+LiqjG4QFXszT4Sg==
Message-ID: <208a3964-66c6-35ed-028c-1126bd0da3bf@jasonjgw.net>
Date: Sun, 25 Jun 2023 10:02:19 -0400
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
 Thunderbird/102.12.0
Content-Language: en-US
To: speakup@linux-speakup.org
References: <Pine.LNX.4.64.2306241500460.774016@users.shellworld.net>
 <1486e800-a981-31bd-05da-86699f680285@pcdesk.net>
 <Pine.LNX.4.64.2306242309530.778686@users.shellworld.net>
 <ZJextwg4IF88wZpM@titan>
 <Pine.LNX.4.64.2306242321590.778686@users.shellworld.net>
 <ZJezr66-vWtVj5zE@titan>
 <Pine.LNX.4.64.2306242359540.779316@users.shellworld.net>
From: Jason White <jason@jasonjgw.net>
Subject: Re: ot: dectalk internal drivers?
In-Reply-To: <Pine.LNX.4.64.2306242359540.779316@users.shellworld.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5


On 25/6/23 00:02, Karen Lewellen wrote:
> I note no install, does that mean I need only say  run dt.bat for the 
> drivers to run?
> i. e. place that in my autoexec.bat?
>
If I remember correctly, and this was a long time ago, you simply have 
to run the batch file, then whatever screen reader you plan to use. The 
batch file loads a large amount of software onto the card, and runs it.

If you're planning to use this under Linux as well, I would be 
astonished if it were supported by modern kernels. In fact, I don't know 
whether Linux still runs on x86 machines with ISA slots.


