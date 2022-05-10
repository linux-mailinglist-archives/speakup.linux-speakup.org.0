Return-Path: <speakup+bounces-415-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 63E655222D3
	for <lists+speakup@lfdr.de>; Tue, 10 May 2022 19:32:47 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="key not found in DNS" header.d=slint.fr header.i=@slint.fr header.a=rsa-sha256 header.s=default header.b=OgRQuhEL;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id D3BAB380DD8; Tue, 10 May 2022 13:32:46 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id BD3B2380935
	for <lists+speakup@lfdr.de>; Tue, 10 May 2022 13:32:46 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 1B140380AE8; Tue, 10 May 2022 13:32:39 -0400 (EDT)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79])
	by befuddled.reisers.ca (Postfix) with ESMTP id BC801380935
	for <speakup@linux-speakup.org>; Tue, 10 May 2022 13:32:38 -0400 (EDT)
Received: from [192.168.0.10] (sfa89-1-78-208-157-71.fbx.proxad.net [78.208.157.71])
	by darkstar.slint.fr (Postfix) with ESMTPSA id C336C20CD7;
	Tue, 10 May 2022 18:31:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=slint.fr; s=default;
	t=1652200285; bh=mnhMxqeSBQDy8Z1mWoPVz7jutFpIhvY0X4t3dIw38ow=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=OgRQuhEL0Bc4ss7bjsfdlFT0Lj8zKxNLkK9KQRZp15voiLZJF1TVr/CDChczXfYAE
	 d+RtWEsS9pIVFSHEwekhS83eGKWkAiE+9oNRM6ijbPju82q6X1y8D+VugAPYsdLr9D
	 f5rJbPXEt71iwYnr6TeX4AWWOee+AH/KnVbe/UpK6uW4Wuc75tHXzjLcbjwbT28V/U
	 xHzDvGd2t0xm+tf+lhdTQQCPtVLs0RpnKB9sodgy/SzMutNoD4om2YlKX/dXPs08jK
	 Wt+b7GgUJ70RArMXqbwsoFqyfNDHf8kCiYn3JA558UCQUxw75ZNPz1t4rRgolA3b3k
	 bVRAxh6C/oTBw==
Message-ID: <8e3a1630-e1ff-4078-8ed2-8210c984138c@slint.fr>
Date: Tue, 10 May 2022 19:32:08 +0200
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
To: "John G. Heim" <jheim@math.wisc.edu>, speakup@linux-speakup.org
References: <81afd3ae-b377-800f-dc94-0dfe301011fe@math.wisc.edu>
 <08011ab8-4189-8ac7-38ac-e97424afc729@slint.fr>
 <58ffce59-cc8f-a61c-a382-275bde9a1b1d@math.wisc.edu>
From: Didier Spaier <didier@slint.fr>
In-Reply-To: <58ffce59-cc8f-a61c-a382-275bde9a1b1d@math.wisc.edu>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Le 10/05/2022 à 17:31, John G. Heim a écrit :
> Come on, Didier, you know better than this. It's rude to give someone
> unsolicited technical advice. I'm no idiot. I don't need to be told I wouldn't
> have this problem if I was running Debian.

Rude? if that you feel it was, maybe. Anyway I didn't write, not even imply that
you were an idiot.

> First of all, I need to run Ubuntu for my job.

theb indeed switching is not an option.

> Secondly, I literally cannot get Debian to work on the machine for
> which I filed the bug report. After installing Debian, the kernel won't load. I
> think it has something to do with weird EUFI settings, maybe something to do
> with kernel signing. I don't know. All I know is that after I install Debian,
> grub seems to work but the kernel simply will not load. I get a blank screen
> with some cryptic error message that doesn't mean anything to anybody I can find
> to ask about it.

Maybe this machine's firmware has Secure Boot on? Not sure, maybe additional
steps pre installation are needed in Debian case but not in case of Ubutu? Just
a uninformed guess.

Cheers,
Didier

