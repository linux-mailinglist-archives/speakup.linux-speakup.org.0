Return-Path: <speakup+bounces-916-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 26565661A18
	for <lists+speakup@lfdr.de>; Sun,  8 Jan 2023 22:40:39 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="key not found in DNS" header.d=slint.fr header.i=@slint.fr header.a=rsa-sha256 header.s=default header.b=H9bVniVG;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id A5507382957; Sun,  8 Jan 2023 16:40:38 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 86B9E382824
	for <lists+speakup@lfdr.de>; Sun,  8 Jan 2023 16:40:38 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id C533F382867; Sun,  8 Jan 2023 16:40:29 -0500 (EST)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79])
	by befuddled.reisers.ca (Postfix) with ESMTP id 5CCEC38281F
	for <speakup@linux-speakup.org>; Sun,  8 Jan 2023 16:40:29 -0500 (EST)
Received: from [192.168.1.86] (men75-h08-176-172-247-100.dsl.sta.abo.bbox.fr [176.172.247.100])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 4FB71E69D5
	for <speakup@linux-speakup.org>; Sun,  8 Jan 2023 21:39:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=slint.fr; s=default;
	t=1673210375; bh=s67Scshvud7jm4TZ/uhfPwIvzR7hoX6TuRkKcYx4f3g=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=H9bVniVGwQk+nryJHovt3+XmA2PDEsdbhXtYeLYq2+Kj7phAVlyq3bzVvq6fQkfWa
	 z5K4EnU6IBHlltZJA50b0ir2Zjjked/kpzN8IqjNQqAKifjba9eItBsFi6XSXASu3j
	 GbhhdL37B3HenajeyQXCAJLQ460A0Ym3yFI7cbJ9FmSR26zV+m0xzLsPvQ/8dos8oc
	 xQKT0PG/c89Kb1iQ72xrNP/uD4jcBuiEq2zLJlfagLbXHbalhHK/zwBAZjiuIFk0ID
	 Eixd6e8IIYlfBB/ixNfWtUaDMi85OQbJd17KZjEnuRnmRbXVBn1TMjIm+mO6n+sTDu
	 mqstyN5pHJR3g==
Message-ID: <4d769e9d-0044-1a0b-1642-49843c9573fe@slint.fr>
Date: Sun, 8 Jan 2023 22:40:20 +0100
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
 Thunderbird/102.6.1
Subject: Re: using espeak to echo the amount of RAM
To: speakup@linux-speakup.org
References: <004401d923a5$e3e9b2e0$93ffa8c0@Win7VM>
Content-Language: en-US
From: Didier Spaier <didier@slint.fr>
In-Reply-To: <004401d923a5$e3e9b2e0$93ffa8c0@Win7VM>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hello Glenn,

grep -i MemTotal /proc/meminfo |espeak
will give you the size in kilobytes.
To hear only the number of kilobytes:
grep -i MemTotal /proc/meminfo|sed "s/[^[:digit:]]//g"|espeak

Cheers,
Didier
-- 

Le 08/01/2023 à 22:12, K0LNY_Glenn a écrit :
> Hi All,
> I'm trying to set up a system on an old computer.
> I have an Intel NUC and I put a stick of RAM into it and a new HD, and I 
> booted to Ubuntu 18.04 that has Chirp software on it.
> My plan is to install that old Ubuntu with Chirp, because the new Chirp is 
> no longer accessible, I think because of it using flatpak, so if I want to 
> use Chirp, it's likely on an old Linux that isn't using Python 3.
> 
> I put in the memory and drive, but I don't know how much RAM that particular 
> stick is, it could be 1, 2, or 8 GB.
> When I start Orca, it starts and then closes out.
> I can open the terminal and do espeak, such as echoing its IP address with
> hostname -I | espeak
> I was hoping to SSH into it, but SSH may not be installed, but this version 
> of Ubuntu is too old to get anything from a repository.
> But if I can find out the amount of RAM I installed, I might be able to 
> determine if I need to try another stick of RAM, because I'm guessing that 
> if it is just a 1 GB RAM, maybe that is why Orca is starting and stopping.
> So, my question is,
> Is there a command that I can pipe the output to eSpeak to hear the 
> information on how much RAM there is?
> Like I did with the hostname -I command.
> Thanks in advance.
> 
> Glenn 
> 
> 

