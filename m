Return-Path: <speakup+bounces-974-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id B651374015A
	for <lists+speakup@lfdr.de>; Tue, 27 Jun 2023 18:35:22 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; secure) header.d=jasonjgw.net header.i=@jasonjgw.net header.a=rsa-sha256 header.s=mail header.b=p3OmN3By;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id AA84F38257F; Tue, 27 Jun 2023 12:35:21 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 8BACB382348
	for <lists+speakup@lfdr.de>; Tue, 27 Jun 2023 12:35:21 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id BB0A538238E; Tue, 27 Jun 2023 12:35:13 -0400 (EDT)
Received: from svr.jasonjgw.net (svr.jasonjgw.net [192.155.90.172])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 9FA8C382348
	for <speakup@linux-speakup.org>; Tue, 27 Jun 2023 12:35:13 -0400 (EDT)
Received: from [10.0.2.1] (jpw.jasonjgw.net [10.0.2.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (secp384r1) server-digest SHA384)
	(Client did not present a certificate)
	by svr.jasonjgw.net (Postfix) with ESMTPSA id 134B9321C9
	for <speakup@linux-speakup.org>; Tue, 27 Jun 2023 16:34:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jasonjgw.net;
	s=mail; t=1687883679;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=WE+YYLJYf0rxi6yvEQ9e2WRJFTfID1mqbDi5vscEmxA=;
	b=p3OmN3By+Uk8RTnYCZKmAbLqQKDrzd3OZ/KrwQzElhWozWjkPRThyQaaJlRR2JM5MQu0zh
	1vZnumrxd5AAM4dEM/ial3vUeN8Xf7jNDe8Aa7Qiis3zoMB5NlzPRQ7e59q95bp3L4Nj6/
	zJuNdGOH+1awWFP9XISkpPZB5EOQLOZPnculeFK2QCJlnvypnT9FJSKhXxwyY8aLGFttkV
	yqMV0XA0IcwpOB+jmWJcVv55xprwuf1GWxKsirqYa4iqTCKFgSc4+hUf40eW+5J33D1Y9G
	rt4AIPPm6Ru7KQnVC5kn85WLIo/t1xOaIyO0tXgoMVk2+ZbV3+R6iLCtQXpbKQ==
Message-ID: <9eaaf00c-26b2-42f8-1ba8-ea02e9b3be89@jasonjgw.net>
Date: Tue, 27 Jun 2023 12:34:39 -0400
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
Subject: Re: ot: dectalk internal drivers?
Content-Language: en-US
To: speakup@linux-speakup.org
References: <Pine.LNX.4.64.2306241500460.774016@users.shellworld.net>
 <1486e800-a981-31bd-05da-86699f680285@pcdesk.net>
 <Pine.LNX.4.64.2306242309530.778686@users.shellworld.net>
 <ZJextwg4IF88wZpM@titan>
 <Pine.LNX.4.64.2306242321590.778686@users.shellworld.net>
 <ZJezr66-vWtVj5zE@titan>
 <Pine.LNX.4.64.2306242359540.779316@users.shellworld.net>
 <208a3964-66c6-35ed-028c-1126bd0da3bf@jasonjgw.net>
 <ZJjkrZTOTRNk8NUE@gregn.net>
From: Jason White <jason@jasonjgw.net>
In-Reply-To: <ZJjkrZTOTRNk8NUE@gregn.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5


On 25/6/23 21:06, Gregory Nowak wrote:
> [ 67.301489] Probing for DoubleTalk.
> [   67.305490] DoubleTalk PC: 29e-29f, ROM ver 5.74, s/n xxxxx,
> driver: 2.10
That's very impressive.

