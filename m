Return-Path: <speakup+bounces-1435-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 02A7BBEEDA9
	for <lists+speakup@lfdr.de>; Sun, 19 Oct 2025 23:40:17 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; secure) header.d=posteo.com.br header.i=@posteo.com.br header.a=rsa-sha256 header.s=2017 header.b=TewYu0fK;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 6049E382961; Sun, 19 Oct 2025 17:40:17 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 40EC238203A
	for <lists+speakup@lfdr.de>; Sun, 19 Oct 2025 17:40:17 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id E65313820D2; Sun, 19 Oct 2025 17:40:09 -0400 (EDT)
Received: from mout01.posteo.de (mout01.posteo.de [185.67.36.65])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 3880338203A
	for <speakup@linux-speakup.org>; Sun, 19 Oct 2025 17:40:06 -0400 (EDT)
Received: from submission (posteo.de [185.67.36.169]) 
	by mout01.posteo.de (Postfix) with ESMTPS id 926D3240027
	for <speakup@linux-speakup.org>; Sun, 19 Oct 2025 23:40:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=posteo.com.br;
	s=2017; t=1760910000;
	bh=+YRP4gt6dubuAD5RAHbwDAQJ8aEXItXVufMxqNcShHQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:From:Content-Type:
	 Content-Transfer-Encoding:From;
	b=TewYu0fK0ieAicTaM6MFUCXzZWuLys80ilPzRMhaIEo8nxaqCVOeoTStSNHZJU9fO
	 8T6DDR4x7A/oxz/PAjW0gJsfISzQFDRpvv+MQDteN6J+Zgmp22INjFphVLtGzVCBJe
	 ghjoTw+XFd6aGDNsc8s0Xd1yobIb5tLo18mkyAYE9yBAf8N7xm60Vh6+XwHvUSJAS1
	 +xsKcKwpf8q1EFRF82Qmcp+I4+btwaiEOK6RfgzNg6K673uGjIt3IrS96j1yGgeVLl
	 tSbz+w0ReBh4NYJGlNWR4o6cCvA02RHJcCMAW79WGHQW+FxbA2XP9A6vKaRFd5B4IA
	 lOnIPPc0rQJYA==
Received: from customer (localhost [127.0.0.1])
	by submission (posteo.de) with ESMTPSA id 4cqX5q1y2tz9rxQ
	for <speakup@linux-speakup.org>; Sun, 19 Oct 2025 23:39:58 +0200 (CEST)
Message-ID: <bf1f95b5-63d5-4474-8f8e-888df7884bfb@posteo.com.br>
Date: Sun, 19 Oct 2025 21:39:59 +0000
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Subject: Re: Switching To Voxin
To: speakup@linux-speakup.org
References: <021401dc413d$e3e246a0$01ffa8c0@nucwin10>
 <36b36e62-fecb-4bc9-8302-15dbe4f3b0fc@slint.fr>
Content-Language: pt-BR
From: Cleverson Casarin Uliana <clul+speakup@posteo.com.br>
In-Reply-To: <36b36e62-fecb-4bc9-8302-15dbe4f3b0fc@slint.fr>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi, besides speechd-up and Fenrir, I believe Voxinup, developed by 
Oralux, still works.
https://github.com/Oralux/voxinup_install

Cheers,
Cleverson


