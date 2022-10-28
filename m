Return-Path: <speakup+bounces-781-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 14B56610647
	for <lists+speakup@lfdr.de>; Fri, 28 Oct 2022 01:16:43 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="key not found in DNS" header.d=slint.fr header.i=@slint.fr header.a=rsa-sha256 header.s=default header.b=k6PQgUPC;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id A4AEF384033; Thu, 27 Oct 2022 19:16:42 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 856D2383FF7
	for <lists+speakup@lfdr.de>; Thu, 27 Oct 2022 19:16:42 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 1A40D383FFA; Thu, 27 Oct 2022 19:16:33 -0400 (EDT)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79])
	by befuddled.reisers.ca (Postfix) with ESMTP id B0E81383FEF
	for <speakup@linux-speakup.org>; Thu, 27 Oct 2022 19:16:32 -0400 (EDT)
Received: from [192.168.0.11] (sfa89-1-78-208-157-71.fbx.proxad.net [78.208.157.71])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 086DA215CC
	for <speakup@linux-speakup.org>; Fri, 28 Oct 2022 00:13:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=slint.fr; s=default;
	t=1666908788; bh=iMky5YH1TexjTQfvqvSPvtiZiLwtnQlji19n0ZUYUEE=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=k6PQgUPCniQkJiPDBvIhOb7kzRL+JKzMs41vSDBii4lgkuvmPr2NY0UwTEN5IsTRn
	 vdNZ9t8+2qtOwBW8Sj1DLNRalfd+sVi41cOHGxEIh5dV1pEEVS/p865qXNbzPm/kmw
	 TtI4WFlOgiiFu6NSslq5DPirm+2HqK1YiMw/u6tbwNzJBsPs/CbsA4eGmq80uh5ZOO
	 +zx8c/ea9uu0c1YZ0UVDRRowz7rOYBZ7xvW2hdq4WOAeAhiXUcWwhQ2SiIO+yO4++V
	 Npr8byTtt4aaqQ9Cdyl3jSg8egl6bm4Y7Aqj3LihtamcAwCXfVCVZkN/yLt4sGylxg
	 8fLKDdZaHeKZg==
Message-ID: <f50c3495-a3f2-2128-a6d3-50e285d95aa5@slint.fr>
Date: Fri, 28 Oct 2022 01:16:25 +0000
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
To: speakup@linux-speakup.org
References: <082101d8ea38$0d104d70$87ffa8c0@Win7VM>
 <083301d8ea4e$aa578240$87ffa8c0@Win7VM>
 <32971cb4-513b-70e2-4371-fd1544adb848@hubert-humphrey.com>
 <085b01d8ea55$190b4b80$87ffa8c0@Win7VM>
From: Didier Spaier <didier@slint.fr>
In-Reply-To: <085b01d8ea55$190b4b80$87ffa8c0@Win7VM>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

I am not a Debian user, but...
According to https://packages.debian.org/bullseye/python3-speechd
spd-conf is provided in the package python3-speechd.

Did you install it?

Cheers,
Didier

Le 27/10/2022 à 22:40, K0LNY_Glenn a écrit :
> That is weird, I get the error
> spd-conf
> command not found
> I installed speech-dispatcher, and the voxin-installer for 2.2 doesn't 
> report it not being there.
> Are there some speech-dispatcher utilities that need to be installed?
> Thanks.
> 
> ----- Original Message ----- 
> From: "Chime Hart" <chime@hubert-humphrey.com>
> To: "K0LNY_Glenn" <glenn@ervin.email>
> Cc: "Speakup is a screen review system for Linux." 
> <speakup@linux-speakup.org>
> Sent: Thursday, October 27, 2022 5:16 PM
> Subject: Re: Installing Voxin
> 
> 
> Hi Glen-and-All: I have sure had alot of challenges getting Voxin working,
> however, try-and-type
> spd-conf
> When you answer its questions, backspace over espeak and type voxin. It will
> say you need to correct your answer. Say "no" Many of those values you can 
> just
> accept the defaults. My version of spd-conf is 0.11.3  but I am in Debian 
> SID.
> Also, you know, after running an installer for voxin, it will usually take
> affect after a reboot. Hope all of that helps alot.
> Chime
> 
> 
> 

