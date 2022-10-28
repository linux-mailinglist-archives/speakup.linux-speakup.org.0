Return-Path: <speakup+bounces-776-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id F3CBB6105C9
	for <lists+speakup@lfdr.de>; Fri, 28 Oct 2022 00:34:12 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="key not found in DNS" header.d=slint.fr header.i=@slint.fr header.a=rsa-sha256 header.s=default header.b=jEAXZqmR;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 845E338402B; Thu, 27 Oct 2022 18:34:12 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 6629B383FEE
	for <lists+speakup@lfdr.de>; Thu, 27 Oct 2022 18:34:12 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 020FB383FE4; Thu, 27 Oct 2022 18:34:03 -0400 (EDT)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79])
	by befuddled.reisers.ca (Postfix) with ESMTP id C60F6383FDC
	for <speakup@linux-speakup.org>; Thu, 27 Oct 2022 18:34:02 -0400 (EDT)
Received: from [192.168.0.11] (sfa89-1-78-208-157-71.fbx.proxad.net [78.208.157.71])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 7FF16215CC;
	Thu, 27 Oct 2022 23:30:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=slint.fr; s=default;
	t=1666906240; bh=0rqLlkmSWIlU8vnRynkhj5A4V/GnWlKwcjrpAHHDHZI=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=jEAXZqmRyhFyPauXqMky03iI51cTsDjl46DhD4KXCBFjrSndBM7Dl1jtrh1sU25dD
	 bbXufD7ZWgmfoEB1ZiSk2s/rhUCKqHqa/nZVaFX9S64hoV2weDAfRqZe/fjW9eEWqt
	 tPkZWYdAxEidyxiCfdxrQM7yv+8MDtkL1BR0sseDh/1e11ryYX+kK/T6JgzQalr7XJ
	 Nlm9X4lYN1QGLNDjNPETnRRkqyAjK4rE9vw54t62Ck2MZoNuFAgQyrLs7bdMkBpCLh
	 T/QwOWqYGIaIdmIKbY+ShRCEVOTNG4f2MqWNuzhuKDuCsRuXJLkoA24DshZjzfc/Wk
	 9h7ijzW/6SeCQ==
Message-ID: <72505ec2-f710-55c6-e1a4-b0230a89b5b7@slint.fr>
Date: Fri, 28 Oct 2022 00:33:58 +0000
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
 Thunderbird/102.4.0
Subject: Re: Installing Voxin
Content-Language: en-US
To: Chime Hart <chime@hubert-humphrey.com>
Cc: speakup@linux-speakup.org
References: <082101d8ea38$0d104d70$87ffa8c0@Win7VM>
 <083301d8ea4e$aa578240$87ffa8c0@Win7VM>
 <b7dc2bd6-13e7-3b7a-5651-a1a7e7cc3f11@slint.fr>
 <8e0c5fe0-48cf-c28b-40bf-a0846c59cdee@hubert-humphrey.com>
From: Didier Spaier <didier@slint.fr>
In-Reply-To: <8e0c5fe0-48cf-c28b-40bf-a0846c59cdee@hubert-humphrey.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

I stand corrected: I completely forgot about voxinup that I have never used.

Cheers,
Didier

Le 27/10/2022 à 22:22, Chime Hart a écrit :
> Well, Didier, sure Voxin works in ORCA, but eventually you can get it working
> with Speakup, as I've been for many years. Right now on my laptop, I have
> Allison 1 of the newer embedded voices.
> Chime
> 

