Return-Path: <speakup+bounces-262-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 21C423EBEDD
	for <lists+speakup@lfdr.de>; Sat, 14 Aug 2021 01:48:56 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id EEF6B380F9C; Fri, 13 Aug 2021 19:48:54 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="key not found in DNS" header.d=slint.fr header.i=@slint.fr header.a=rsa-sha256 header.s=default header.b=F6JlB1rD;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id DBC933809C6
	for <lists+speakup@lfdr.de>; Fri, 13 Aug 2021 19:48:54 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id A9646380E09; Fri, 13 Aug 2021 19:48:49 -0400 (EDT)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79])
	by befuddled.reisers.ca (Postfix) with ESMTP id 604963809C6
	for <speakup@linux-speakup.org>; Fri, 13 Aug 2021 19:48:49 -0400 (EDT)
Received: from ici.slint.fr (sfa89-1-78-208-157-71.fbx.proxad.net [78.208.157.71])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 74901A38C6;
	Fri, 13 Aug 2021 23:48:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=slint.fr; s=default;
	t=1628891313; bh=70o1X43IGQ51rRsN3hbYq2liIcSZhviMC4ZbLrdGM9w=;
	h=Subject:To:References:Cc:From:Date:In-Reply-To:From;
	b=F6JlB1rDrYeZBJkERg2EMEtK5F3yTmskVLlo0Mg8+UIbNnQynhMF9ugI1TohbhVRT
	 ktlu7PCMdF9s6oBPMugwXFSdlkWi1olruu/TuBZagqcrTfHjjnv0fPANx0Az2Hqvk7
	 Alh56rnbUB2bm7dJY8JmIo5gyXV4Ear0PLY8VWjm0GQI9nyqW1G1PqQj07FI9u49Kq
	 9+RtAl5tBYsHsIN5VS6/EIe4UdDvjRRuDJquVNOuN4JBJgq4RiSfH6kftH79d9tlIj
	 ah3da5R7Cdevb6PE52CmHnb0AIUqMWiwe5w7KXnrsT4zodjgU2AQvpXGIRAggEUhiP
	 P9gXIpTs7VS9w==
Subject: Re: Word Echo in Espeakup
To: blinux-list@redhat.com
References: <YRYY9ME5KKnm2Iz+.ref@brainpower.wer>
 <YRYY9ME5KKnm2Iz+@brainpower.wer>
Cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
From: Didier Spaier <didier@slint.fr>
Message-ID: <ec9849eb-5797-fa44-d57c-5e0d5537f8c8@slint.fr>
Date: Sat, 14 Aug 2021 01:48:33 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
In-Reply-To: <YRYY9ME5KKnm2Iz+@brainpower.wer>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi Ishe,

If a feature of speakup allows to echo a word when the space bar is pressed
after having typed it, I don't know it.

I CC the speakup mailing list as someone with a better answer probably 
reads it.

I am curious though: I know hat Orca provides this feature, but do you 
know a
console screen reader providing it, then which one is it?

Cheers,
Didier


Le 13/08/2021 à 09:02, Linux for blind general discussion a écrit :
> Hi,
> 
> I am scratching my head over this seemingly simple task, but is there a 
> setting for word echo in Speakup/Espeakup? I want to turn off key_echo 
> so that I do not hear characters as I type them, but I am at my wits' 
> end on how I can turn on word echo so that when I press the Spacebar as 
> I type I hear the typed word instead of space.
> 
> TIA,


