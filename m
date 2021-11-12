Return-Path: <speakup+bounces-329-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 3724D44EB35
	for <lists+speakup@lfdr.de>; Fri, 12 Nov 2021 17:16:32 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; secure) header.d=disr.it header.i=@disr.it header.a=rsa-sha256 header.s=mail header.b=ZHMQ7gzE;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id D9CB438114A; Fri, 12 Nov 2021 11:16:30 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id C5DAD380B2C
	for <lists+speakup@lfdr.de>; Fri, 12 Nov 2021 11:16:30 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id B2A71380BE5; Fri, 12 Nov 2021 11:16:24 -0500 (EST)
Received: from knopi.disroot.org (knopi.disroot.org [178.21.23.139])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 259BF380996
	for <speakup@linux-speakup.org>; Fri, 12 Nov 2021 11:16:23 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 8A58472A5C;
	Fri, 12 Nov 2021 17:16:19 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at disroot.org
Received: from knopi.disroot.org ([127.0.0.1])
	by localhost (disroot.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2m6TyNJGp2cg; Fri, 12 Nov 2021 17:16:18 +0100 (CET)
From: Cleverson <clul@disr.it>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disr.it; s=mail;
	t=1636733778; bh=R1mf7aDBpLoFEAiNNfimrfwg+KHgYD/e2SnpE+bmwpA=;
	h=From:Subject:To:Cc:References:Date:In-Reply-To;
	b=ZHMQ7gzEl7IEWkCblrTOz0INRnwVDde1xRRn8BAqiYbU0xIH2KAT9T4KCSQvhX1K1
	 ZHa0nl23f00Ka/UjRa6DxkBudihKLEHms3F6aC68kB6pj6M5SqTUspQsp8ECjAxDny
	 3ARzH3b7wPyxxx4DCSSo1A4soUQITgSVt84jlReUgn+DNdla9wRQzBX2zD10/eMa88
	 pqv+jLDfDzI7oR1+cRh7+/EeHE/sBB4xzQeZe/0cSeU9UleyKk0wcE1+1BTM+vOpNq
	 HSGdd+XKcLk4ZHHoEYzwDv+xKTbFtCcOxFLbCF5S52k53MIqhMSkjb9LMFQB0SLuc7
	 DmweknsZXJp2A==
Subject: Re: Console screen reader for FreeBSD/GhostBSD?
To: speakup@linux-speakup.org
Cc: Chris Brannon <chris@the-brannons.com>,
 Christian Hempfling <chrys@linux-a11y.org>,
 Storm Dragon <storm_dragon@linux-a11y.org>
References: <20211110233342.1372516-1-colin.i.king@gmail.com>
 <20211110233509.rt5ioflkym4a6tya@begin>
 <ee412f1d-acce-e5e8-675c-b0e308f69347@slint.fr>
Message-ID: <12975b97-2819-ba24-cba9-3c292108da0f@disr.it>
Date: Fri, 12 Nov 2021 13:16:13 -0300
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
Mime-Version: 1.0
In-Reply-To: <ee412f1d-acce-e5e8-675c-b0e308f69347@slint.fr>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: pt-BR
Content-Transfer-Encoding: 7bit
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi would suggest trying to port acsint, which for some reason, is never 
remembered...
https://github.com/eklhad/acsint

Cleverson

Em 10/11/2021 21:20, Didier Spaier escreveu:
> Hi,
> 
> I'd like to help make FreeBSD/GHostBSD more accessible with speech on the
> console (in graphical environments speech-dispatcher and orca are already
> available). AFAIK currently only yasr is shipped (limited and old). tdsr 
> and
> fenrir could probably be packaged. Other ideas, including how to handle 
> hard
> synthesizers?
> 
> Cheers,
> Didier
> 

