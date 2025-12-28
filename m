Return-Path: <speakup+bounces-1484-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 1EB60CE4AF5
	for <lists+speakup@lfdr.de>; Sun, 28 Dec 2025 11:57:20 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; secure) header.d=posteo.com.br header.i=@posteo.com.br header.a=rsa-sha256 header.s=2017 header.b=JYon4lsv;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id AE3C83818D9; Sun, 28 Dec 2025 05:51:56 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 8FEA43817D7
	for <lists+speakup@lfdr.de>; Sun, 28 Dec 2025 05:51:56 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id BD0E33817D7; Sun, 28 Dec 2025 05:51:50 -0500 (EST)
Received: from mout01.posteo.de (mout01.posteo.de [185.67.36.65])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 88217380858
	for <speakup@linux-speakup.org>; Sun, 28 Dec 2025 05:51:48 -0500 (EST)
Received: from submission (posteo.de [185.67.36.169]) 
	by mout01.posteo.de (Postfix) with ESMTPS id D2E01240027
	for <speakup@linux-speakup.org>; Sun, 28 Dec 2025 11:51:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=posteo.com.br;
	s=2017; t=1766919102;
	bh=qIS06tTmp+FbeJ6rCcju0tBtpoeqW8d/44CX/wP5APU=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Content-Type:
	 Content-Transfer-Encoding:From;
	b=JYon4lsvhWHpVA2ICg661G8k429xKjBX9fufewy72Lo8Hh9KCTYRejxrI/c3PtPE5
	 /0w8T+p3b0GJAJeuDM1Z6phLEwLKmky4MMsw0bkxjER+w69oSF3ZMIzYB7bJuao7pV
	 5Oye5ozWkjcbc7qUyuvc7wYQ2UFNRf+7vDWiK8CPM82dIzIXrH4s+GGmkHxvkIZnqy
	 QZhucqpIG2sgoN2oIkBFvUChsmTKPyYAYY/ES6YaWDsaHNR4Wvyy+TNJrCmQPNn7me
	 rDjy1m1jAjRqEfhJd84Cn94pNyLGFqGdFJ7HYVyDwJQkeYCtTVM49k3KeB45zWIWvp
	 mOb+f03edNj/A==
Received: from customer (localhost [127.0.0.1])
	by submission (posteo.de) with ESMTPSA id 4dfGPT2l7mz9rxK
	for <speakup@linux-speakup.org>; Sun, 28 Dec 2025 11:51:40 +0100 (CET)
Message-ID: <eb7fcb31-4b34-4e31-a2db-67e41cc8a79c@posteo.com.br>
Date: Sun, 28 Dec 2025 10:51:41 +0000
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux." <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
From: Cleverson Casarin Uliana <clul+speakup@posteo.com.br>
Subject: Re: Building a hardware speech synth with a Raspberry Pi
To: speakup@linux-speakup.org
References: <4f9075a8-0252-46f9-8594-1dab9286474f@math.wisc.edu>
 <01FF57A0-2383-4625-975C-944AE93F762D@speedpost.net>
Content-Language: pt-BR
In-Reply-To: <01FF57A0-2383-4625-975C-944AE93F762D@speedpost.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

I think that ESpeak-ng is more than enough as a synth, because it 
supports tents of languages, and also because probably most users of 
this project won't use it as a permanente synthesiser, but mostly as a 
temporary solution for experimenting and installing new systems,
  among other sysadmin tasks. AFAIC, Dektalk for example supports a 
lesser number of languages than ESpeak.

Regards,
Cleverson

