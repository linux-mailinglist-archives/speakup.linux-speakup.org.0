Return-Path: <speakup+bounces-518-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id C27635916A8
	for <lists+speakup@lfdr.de>; Fri, 12 Aug 2022 23:13:27 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=pobox.com header.i=@pobox.com header.a=rsa-sha256 header.s=sasl header.b=qEu+w3c3;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 6F848384793; Fri, 12 Aug 2022 17:13:27 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 4EB8F38376C
	for <lists+speakup@lfdr.de>; Fri, 12 Aug 2022 17:13:27 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id C75AD38376A; Fri, 12 Aug 2022 17:13:19 -0400 (EDT)
Received: from pb-smtp2.pobox.com (pb-smtp2.pobox.com [64.147.108.71])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 9A2293819AD
	for <speakup@linux-speakup.org>; Fri, 12 Aug 2022 17:13:19 -0400 (EDT)
Received: from pb-smtp2.pobox.com (unknown [127.0.0.1])
	by pb-smtp2.pobox.com (Postfix) with ESMTP id 4D51713DCCD;
	Fri, 12 Aug 2022 17:13:19 -0400 (EDT)
	(envelope-from mattcampbell@pobox.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=pobox.com; h=message-id
	:date:mime-version:subject:to:cc:references:from:in-reply-to
	:content-type:content-transfer-encoding; s=sasl; bh=u+ptlhAaCFAX
	dJkARED473QPRZoUPi8iSE6rAiDLomA=; b=qEu+w3c3aj0sI/lwvFVxASHa18kE
	b3rRDcvYMTYMsTtrPt+2PxKKaaB2As6IGrRC6WQoU0F2ogI4q8AOr/t7s9lSa5fZ
	Q0pG1ZvbCCzCNPihtfaAeWmrjAn0E3gNQl012fPMkWd/mdV3jI4nBwIHwciDWzOq
	p7o33+ZfGMkSd+Q=
Received: from pb-smtp2.nyi.icgroup.com (unknown [127.0.0.1])
	by pb-smtp2.pobox.com (Postfix) with ESMTP id 4399213DCCC;
	Fri, 12 Aug 2022 17:13:19 -0400 (EDT)
	(envelope-from mattcampbell@pobox.com)
Received: from [192.168.0.161] (unknown [68.102.201.97])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by pb-smtp2.pobox.com (Postfix) with ESMTPSA id 85A7B13DCCB;
	Fri, 12 Aug 2022 17:13:18 -0400 (EDT)
	(envelope-from mattcampbell@pobox.com)
Message-ID: <22b5d081-9667-95cf-6510-daf2a0eec4d1@pobox.com>
Date: Fri, 12 Aug 2022 16:13:17 -0500
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: getting audio for Orca and Speakup or Fenrir
Content-Language: en-US
To: K0LNY_Glenn <glenn@ervin.email>, Chime Hart <chime@hubert-humphrey.com>
Cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <021801d8ae89$220560c0$80ffa8c0@Win7VM>
 <eb84963a-90e0-c24c-4215-4d0dde3390d0@hubert-humphrey.com>
 <021d01d8ae8c$39e82800$80ffa8c0@Win7VM>
 <8295e54b-fd16-c53f-f3f7-e9a09c7a62c6@pobox.com>
 <022101d8ae8d$31446fa0$80ffa8c0@Win7VM>
 <3b34c003-8772-fa96-0679-fa1d180a38d1@pobox.com>
 <023201d8ae8f$279f0940$80ffa8c0@Win7VM>
From: Matt Campbell <mattcampbell@pobox.com>
In-Reply-To: <023201d8ae8f$279f0940$80ffa8c0@Win7VM>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Pobox-Relay-ID:
 968BDCEC-1A83-11ED-9A17-CB998F0A682E-07281746!pb-smtp2.pobox.com
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

amixer is not a screen-oriented program, the kind that you navigate with 
the arrow keys. It's a pure command-line program, which is better for 
screen reader users. [1] You just have to parse the output, then 
formulate the appropriate next command. That can be tedious, but at 
least amixer doesn't rely on anything purely visual in its output. I 
suggest you read the man page to learn about the syntax of both the 
command line and the output.

[1]: I actually think that a proper GUI is often better than a 
screen-oriented terminal program. But I know you don't have access to 
the GUI yet.

Matt


