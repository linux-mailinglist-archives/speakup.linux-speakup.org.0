Return-Path: <speakup+bounces-717-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 4F4DF5A3A2C
	for <lists+speakup@lfdr.de>; Sun, 28 Aug 2022 00:08:09 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="key not found in DNS" header.d=slint.fr header.i=@slint.fr header.a=rsa-sha256 header.s=default header.b=bp9+HF8v;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id C641238160E; Sat, 27 Aug 2022 18:08:08 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id A6FE23815F8
	for <lists+speakup@lfdr.de>; Sat, 27 Aug 2022 18:08:08 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id D6A183815F5; Sat, 27 Aug 2022 18:07:59 -0400 (EDT)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79])
	by befuddled.reisers.ca (Postfix) with ESMTP id 623DF3813D9
	for <speakup@linux-speakup.org>; Sat, 27 Aug 2022 18:07:59 -0400 (EDT)
Received: from [192.168.0.10] (sfa89-1-78-208-157-71.fbx.proxad.net [78.208.157.71])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 8116E24A7B
	for <speakup@linux-speakup.org>; Sat, 27 Aug 2022 23:05:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=slint.fr; s=default;
	t=1661634311; bh=vdGkAchQyPi1b7eXZr+Hef/dtm6VI9ULgnbKoiT1uCo=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=bp9+HF8vC6XSiGCL2RkOsq8221K8lLbuPtKDFp7XG6EnHHh7/ueEOeA2kkTwoDCnG
	 NxXejcAQywWaNXFnwDxdqyM7kaAsKYT7Xn9cWpCERY8Slv6pLiSSBfPWpTjlvtT9vT
	 ndd+0Tm1e7kQsT4pT77bsdMJUVQ7ExVGusaYpEW8jleUqfHDc7qXWTYSh+5p/2D/ra
	 SoJmUcGyLawSySSOeMotpAYNd0VOe4dT1gvrrbB1aLYFiZ3U54pHmWo94zqQ6y2Pvp
	 dwbk/J9Z5FhLDd/sTUrtD+QDRtNzPRzDOXO9JCUOK7cEWSZL5tX8BsN+Ut1de6UVeT
	 9xJsMjCeB1SbA==
Message-ID: <63e32391-63e4-53b2-42b1-3aa59261008c@slint.fr>
Date: Sun, 28 Aug 2022 00:07:18 +0000
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
 Thunderbird/91.13.0
Subject: Re: hopefully some help with AntiX
Content-Language: en-US
To: speakup@linux-speakup.org
References: <015b01d8ba38$fd13ae50$80ffa8c0@Win7VM>
 <3EB4BBCC-95D6-4112-87DC-DB41C8C6BC7F@linux-a11y.org>
 <016e01d8ba3c$5394bb90$80ffa8c0@Win7VM>
From: Didier Spaier <didier@slint.fr>
In-Reply-To: <016e01d8ba3c$5394bb90$80ffa8c0@Win7VM>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Well, you could try Debian or maybe Lubuntu instead.

Cheers,
Didier

Le 27/08/2022 à 17:42, K0LNY_Glenn a écrit :
> I want to get my old Asus Epc 701 with 2 GB of RAM going, hopefully to put 
> some Ham software on it.
> It used to use XP.
> I wanted to try the talking Arch I downloaded, but it cannot boot that 
> kernel, and I didn't know where an older one is.
> I tried Puppy Linux, but that had problems too, so I found AntiX.
> It seems to work well, and if it were talking, I could see how I like it.
> I don't know if the limited repository would eventually be a turn off.
> Glenn

