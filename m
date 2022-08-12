Return-Path: <speakup+bounces-509-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id AD63D59166B
	for <lists+speakup@lfdr.de>; Fri, 12 Aug 2022 22:46:17 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=pobox.com header.i=@pobox.com header.a=rsa-sha256 header.s=sasl header.b=tp9aL94A;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 51BF838376A; Fri, 12 Aug 2022 16:46:17 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 316513819B4
	for <lists+speakup@lfdr.de>; Fri, 12 Aug 2022 16:46:17 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 29EAF38190A; Fri, 12 Aug 2022 16:46:09 -0400 (EDT)
Received: from pb-smtp2.pobox.com (pb-smtp2.pobox.com [64.147.108.71])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 06C44381906
	for <speakup@linux-speakup.org>; Fri, 12 Aug 2022 16:46:09 -0400 (EDT)
Received: from pb-smtp2.pobox.com (unknown [127.0.0.1])
	by pb-smtp2.pobox.com (Postfix) with ESMTP id 5C67813DA02;
	Fri, 12 Aug 2022 16:46:08 -0400 (EDT)
	(envelope-from mattcampbell@pobox.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=pobox.com; h=message-id
	:date:mime-version:subject:to:cc:references:from:in-reply-to
	:content-type:content-transfer-encoding; s=sasl; bh=wFCcwIkO28a1
	Me60XwVnyx5bupVr7URM9yZR1zNHPNo=; b=tp9aL94ArqxQ3GdNf1gkw+xKxLYs
	5mpvUaS8cuycvQprDSRPLZHuvPqpFxo4chpef8w3/6Yi3oJYRUsFDf25kkgeKlt7
	nMKmMqVri6/QXg8Cw37BJr17y1UWNRn+71SDHA3ov8/C7H1rdjgXw0n3WUpeYOG8
	fTHzEKBleM9h788=
Received: from pb-smtp2.nyi.icgroup.com (unknown [127.0.0.1])
	by pb-smtp2.pobox.com (Postfix) with ESMTP id 39FAB13DA01;
	Fri, 12 Aug 2022 16:46:08 -0400 (EDT)
	(envelope-from mattcampbell@pobox.com)
Received: from [192.168.0.161] (unknown [68.102.201.97])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by pb-smtp2.pobox.com (Postfix) with ESMTPSA id 0689A13D9FF;
	Fri, 12 Aug 2022 16:46:05 -0400 (EDT)
	(envelope-from mattcampbell@pobox.com)
Message-ID: <8295e54b-fd16-c53f-f3f7-e9a09c7a62c6@pobox.com>
Date: Fri, 12 Aug 2022 15:46:04 -0500
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
From: Matt Campbell <mattcampbell@pobox.com>
In-Reply-To: <021d01d8ae8c$39e82800$80ffa8c0@Win7VM>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Pobox-Relay-ID:
 C9A473FE-1A7F-11ED-A90B-CB998F0A682E-07281746!pb-smtp2.pobox.com
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi Glenn,

Sounds to me like the audio output on that board is muted. The amixer 
command should let you fix that easily. Then you might need to run 
"alsactl save" to make the new settings permanent.

Matt


