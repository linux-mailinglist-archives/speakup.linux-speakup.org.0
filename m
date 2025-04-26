Return-Path: <speakup+bounces-1252-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 95EB0A9DA77
	for <lists+speakup@lfdr.de>; Sat, 26 Apr 2025 13:58:11 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; secure) header.d=posteo.com.br header.i=@posteo.com.br header.a=rsa-sha256 header.s=2017 header.b=PsKcwm7P;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 047163825CA; Sat, 26 Apr 2025 07:58:09 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id D84B138252B
	for <lists+speakup@lfdr.de>; Sat, 26 Apr 2025 07:58:08 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 027B438252E; Sat, 26 Apr 2025 07:58:02 -0400 (EDT)
Received: from mout02.posteo.de (mout02.posteo.de [185.67.36.66])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 87938382529
	for <speakup@linux-speakup.org>; Sat, 26 Apr 2025 07:57:59 -0400 (EDT)
Received: from submission (posteo.de [185.67.36.169]) 
	by mout02.posteo.de (Postfix) with ESMTPS id 5F0FD240103
	for <speakup@linux-speakup.org>; Sat, 26 Apr 2025 13:57:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=posteo.com.br;
	s=2017; t=1745668676;
	bh=ZCrW3QeEK6wdeHQqygV9fhxb3vOy0tp80G0yVMXnhHg=;
	h=Message-ID:Date:MIME-Version:Subject:To:From:Content-Type:
	 Content-Transfer-Encoding:From;
	b=PsKcwm7PclbDJlaVRAQXM9VfTML+gyoe8NVq+rHEgGO26OHWowgxLyl98KS4atIPS
	 PtTpPUCKYlvXlK947uUPMp/C39LEibP31aNGreZX7JTz8vcHQQoqFnXpiwR8xCLhlX
	 OmGxVqQQR/j2DL6PXtnUjfeydIMBQ9v3pKV4VCwmiKgF6c45H+7wCnTkHZIDoZse7D
	 aj/PQKAmt6kSwRWRJof3F3BGcJJ3UMQvYXJDfGYFDTtWaeZpp8Qd2X4vHl12ILKI4Q
	 ncMPk366sXPMN/w/VIHvAa51TORXr+ZfX6JRqv0JqTHvUKnyg34To4k++pGFGQ5e2X
	 TBK9Z46vNQeag==
Received: from customer (localhost [127.0.0.1])
	by submission (posteo.de) with ESMTPSA id 4Zl7WQ1cdSz9rxD
	for <speakup@linux-speakup.org>; Sat, 26 Apr 2025 13:57:53 +0200 (CEST)
Message-ID: <71c3ea1a-ca7a-44e3-be1d-240dde57a981@posteo.com.br>
Date: Sat, 26 Apr 2025 11:57:50 +0000
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Subject: Re: I break everything!
Content-Language: pt-BR
To: speakup@linux-speakup.org
References: <3b7d9a99-8314-77f0-62ce-e6ca3e6ee1e4@reisers.ca>
 <9677270c-1283-4624-8246-804e41ff3287@math.wisc.edu>
 <ca8ce1b0-dbd1-5fa7-8887-53522e29e8d4@reisers.ca>
 <8f3f523a-8621-4a55-bdcd-5072e5cb024c@posteo.com.br>
 <ac1beeb6-7d05-47cd-8f4e-a10d8f627093@math.wisc.edu>
 <21a643e6-4407-c9c4-876d-6acc87f71804@reisers.ca>
From: Cleverson Casarin Uliana <clul+speakup@posteo.com.br>
In-Reply-To: <21a643e6-4407-c9c4-876d-6acc87f71804@reisers.ca>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi, thank you both John and Kirk. I'll go for Debian Testing, to try it 
at least.

Perhaps going a bit off topic, the current Debian Stable installer CD 
image has a problem where speech, that uses speakup plus espeakup plus 
espeak, simply stops at any moment in the middle of installation, and 
there seems not to be a command which bring it back. I tried several 
amixer and espeakup commands. Even espeak-ng "testing" doesn't talk. 
Have anyone ever experienced this?

Cheers,
Cleverson


