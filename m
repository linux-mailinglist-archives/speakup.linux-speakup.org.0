Return-Path: <speakup+bounces-413-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id C1113520DF7
	for <lists+speakup@lfdr.de>; Tue, 10 May 2022 08:43:55 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="key not found in DNS" header.d=slint.fr header.i=@slint.fr header.a=rsa-sha256 header.s=default header.b=TJ6bRvbv;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 4208A380DF6; Tue, 10 May 2022 02:43:55 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 2D4FB380A13
	for <lists+speakup@lfdr.de>; Tue, 10 May 2022 02:43:55 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 3E74B38099B; Tue, 10 May 2022 02:43:47 -0400 (EDT)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79])
	by befuddled.reisers.ca (Postfix) with ESMTP id B4989380924
	for <speakup@linux-speakup.org>; Tue, 10 May 2022 02:43:46 -0400 (EDT)
Received: from [192.168.0.10] (sfa89-1-78-208-157-71.fbx.proxad.net [78.208.157.71])
	by darkstar.slint.fr (Postfix) with ESMTPSA id D24F920230
	for <speakup@linux-speakup.org>; Tue, 10 May 2022 07:42:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=slint.fr; s=default;
	t=1652161351; bh=F4PwZHlBFqyJ/hThdyerM2ibTY44XXeY/gt9ssvIE1Y=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=TJ6bRvbvYekcyzh/0lY3h4Z22v+hhByVnzZ9lB2UACqwCpWvGcNFFrmqWXUiYOvyw
	 wFZDm7ctAncjuML5m4ltSBtTdQScekdpX8j02sgMtnijAVPJsnPQzv5YfipzUQVKGM
	 EtaLoW+3B1LdBJM4lk9LNouNdsaKCzFUWv26B/1+92m1oPA4CEhsE2YTmEip/umMnB
	 KFtFPsGLxgjbVj2aD7ROwNantlzopULjmSAvGwGdrJyGtAbWtMTDpO4jIxRBl7kd7f
	 Dbxha7D9Sn2W2+x0b7ZHd1JjfOXMLWsSTtd4ppKxjOARC28XP8FZdMkFSvHC7W/r+d
	 X5F6WELfuT1MA==
Message-ID: <08011ab8-4189-8ac7-38ac-e97424afc729@slint.fr>
Date: Tue, 10 May 2022 08:43:13 +0200
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Subject: Re: Speakup Left Out of Ubuntu kernel (again)
Content-Language: en-US
To: speakup@linux-speakup.org
References: <81afd3ae-b377-800f-dc94-0dfe301011fe@math.wisc.edu>
From: Didier Spaier <didier@slint.fr>
In-Reply-To: <81afd3ae-b377-800f-dc94-0dfe301011fe@math.wisc.edu>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Le 10/05/2022 à 03:19, John G. Heim a écrit :
> Arrgh! Speakup seems not to have been compiled into the Ubuntu Jammy/22.04
> kernel. Same thing as in 21.04 and 21.10. Man! Well, I guess I'll have to file a
> bug report ... again.

And/or switch to a genuine Debian.

Didier

