Return-Path: <speakup+bounces-447-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 6BCAA543E7E
	for <lists+speakup@lfdr.de>; Wed,  8 Jun 2022 23:22:58 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="key not found in DNS" header.d=slint.fr header.i=@slint.fr header.a=rsa-sha256 header.s=default header.b=nsKp2e+p;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 06CC2380E0C; Wed,  8 Jun 2022 17:22:58 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id E6118380CF0
	for <lists+speakup@lfdr.de>; Wed,  8 Jun 2022 17:22:57 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id A835A380D12; Wed,  8 Jun 2022 17:22:51 -0400 (EDT)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79])
	by befuddled.reisers.ca (Postfix) with ESMTP id 3B2C3380AE3
	for <speakup@linux-speakup.org>; Wed,  8 Jun 2022 17:22:51 -0400 (EDT)
Received: from [192.168.0.10] (sfa89-1-78-208-157-71.fbx.proxad.net [78.208.157.71])
	by darkstar.slint.fr (Postfix) with ESMTPSA id B812121D25
	for <speakup@linux-speakup.org>; Wed,  8 Jun 2022 22:21:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=slint.fr; s=default;
	t=1654719675; bh=zUWrQAYq32KtojqA8hOO2Q/h/XzNMIKAd3/h2SzX7AY=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=nsKp2e+pYYKEKfwzVkc1Mh1VB1a9VIW1hOLv/O+UXNFwj0LLMr88yI5nN6ygoJ5oE
	 ODu4dK/XTu/7EF2fxH9wcBvcAm/i8OixGmCOPNe9CVQyoLz+fed5RfgL98gx+X1Ov0
	 6f707wV2LoJwMqGwVw9M+uy76PsS8Lri2PM1g30ax30YxEYi/RPly0qVxTa2+Q2iJF
	 mKZvo3TAJ9FweHrDlybLGWil4loUASXiY8rGNJxwjZVMhGyewmqaMxLowM9gd5amEy
	 KffQK2f2JO7oKo9Gy04bHmN4ntb6IVk2JIx1DaWDdU0t9OO9Ksqi+UHOvsgqIJZ+f1
	 mJIBqeemv47Xw==
Message-ID: <4c654321-7926-586a-5d8a-2c16f5b66236@slint.fr>
Date: Wed, 8 Jun 2022 23:22:33 +0200
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
 Thunderbird/91.9.1
Subject: Re: eMail Links
Content-Language: en-US
To: speakup@linux-speakup.org
References: <010701d87b7b$9b5cbe50$81ffa8c0@WIN40RPKAT965G>
From: Didier Spaier <didier@slint.fr>
In-Reply-To: <010701d87b7b$9b5cbe50$81ffa8c0@WIN40RPKAT965G>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi,

links and lynx are web browsers, not email clients.

As CLI email client you can use mutt (more features) alpine (easier to
configure)  or aerc (new, maybe not fully accessible), at least.

Cheers,

Didier

Le 08/06/2022 à 23:06, K0LNY_Glenn a écrit :
> Hi,
> I can't remember if the CLI eMail is called Links or Lynx or whatever, but 
> does anyone still use that client?
> I used it once before, and I don't recall how well it works, like for 
> attachments, and following links and such.
> Can anyone comment?
> Thanks.
> 
> Glenn 

