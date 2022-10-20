Return-Path: <speakup+bounces-763-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 9B1736068E3
	for <lists+speakup@lfdr.de>; Thu, 20 Oct 2022 21:31:56 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="key not found in DNS" header.d=slint.fr header.i=@slint.fr header.a=rsa-sha256 header.s=default header.b=jn+cNQXO;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 15BFA384020; Thu, 20 Oct 2022 15:31:55 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id EAE36383FE7
	for <lists+speakup@lfdr.de>; Thu, 20 Oct 2022 15:31:54 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id A686D383FE6; Thu, 20 Oct 2022 15:31:45 -0400 (EDT)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79])
	by befuddled.reisers.ca (Postfix) with ESMTP id 76D17383FA3
	for <speakup@linux-speakup.org>; Thu, 20 Oct 2022 15:31:45 -0400 (EDT)
Received: from [192.168.0.11] (sfa89-1-78-208-157-71.fbx.proxad.net [78.208.157.71])
	by darkstar.slint.fr (Postfix) with ESMTPSA id ED58E2433D
	for <speakup@linux-speakup.org>; Thu, 20 Oct 2022 20:28:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=slint.fr; s=default;
	t=1666290509; bh=BWE6YZMhaOu6vO1BZdv2H4sQuBtNqwCmGzR7neJUgpc=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=jn+cNQXOWEtBi5YHWsvK5/T3TffoG1SMcY5/3mHc0ft2p5arjuB7cjLcomGKqP+u+
	 VWNqlpNoyecFEaCQdbBRfE9YxlLkuwjzvpk9zyFElZ8H18BP+3VK2C/0SoJAav8SDW
	 E1sGdTnB29JN5m98xx0ZjqQG0bXK9/JFYvvrkwgAatJb/NJp595Ds3mqE2WfW4jvtJ
	 2IByt2oyBtGvgo6SyqEIreFLhyHU5HOtFaIqsjyl/Loqz4fwn99CObc5EA7AkXSpkx
	 +NZgH+W1cxTNKpWT09XRTyqaWD1CFNPDWxZqnVemnIRy3qCkHS5XUnDhdo6sHMx26c
	 ZmFT2iyu9gF6Q==
Message-ID: <39b26891-6ebb-7fdd-f102-a3f62a909161@slint.fr>
Date: Thu, 20 Oct 2022 21:31:44 +0000
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
 Thunderbird/102.3.3
Subject: Re: spelling words with military letter pronunciation
Content-Language: en-US
To: speakup@linux-speakup.org
References: <20210105173502.GA17449@panix.com>
 <20221020181216.o5rpkuy5tgdcmgyo@begin>
 <2a1d5948-d1b1-f210-42e8-e0919f21394c@hubert-humphrey.com>
 <20221020182405.v4w6ixi4fk435zdk@begin>
 <dfbb70b0-6c62-c0ae-4aa1-3fe9c279355b@hubert-humphrey.com>
From: Didier Spaier <didier@slint.fr>
In-Reply-To: <dfbb70b0-6c62-c0ae-4aa1-3fe9c279355b@hubert-humphrey.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Le 20/10/2022 à 18:44, Chime Hart a écrit :
> Honestly Samuel, I've never understood when folks refer to a name of a
> screen-reader as a keystroke. Sure NVDA-and-even Chromevox also do this, but it
> seemed less confusing when I was in windows-and-the name was more universal,
> such as a "windows kee" which is to the right of an alt. Once I completely
> understand which key to press, I will certainly try it. Numpad2 pronounces a
> current letter phoneticly. Thanks so much in advance
> Chime

As a reminder the speakup key is CapLock, or Ins/0 on a numeric keypad.

Cheers,
Didier

