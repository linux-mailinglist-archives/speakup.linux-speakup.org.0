Return-Path: <speakup+bounces-841-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 3D7C161E797
	for <lists+speakup@lfdr.de>; Mon,  7 Nov 2022 00:29:27 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="key not found in DNS" header.d=slint.fr header.i=@slint.fr header.a=rsa-sha256 header.s=default header.b=linP9X1H;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id B012938363D; Sun,  6 Nov 2022 18:29:26 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 92EFD383616
	for <lists+speakup@lfdr.de>; Sun,  6 Nov 2022 18:29:26 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id D4ADA383617; Sun,  6 Nov 2022 18:29:17 -0500 (EST)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79])
	by befuddled.reisers.ca (Postfix) with ESMTP id A3F95383613
	for <speakup@linux-speakup.org>; Sun,  6 Nov 2022 18:29:17 -0500 (EST)
Received: from [192.168.0.11] (sfa89-1-78-208-157-71.fbx.proxad.net [78.208.157.71])
	by darkstar.slint.fr (Postfix) with ESMTPSA id BEFCE218BE;
	Sun,  6 Nov 2022 23:25:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=slint.fr; s=default;
	t=1667773542; bh=C0k2YhiFHzSbTQ62u3OvJW/FQgBpdp89wjvOCYBCQCs=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=linP9X1HmirT4wBPddp+U+UqUZ3fzQwlUArcvhBahGuVd0L3iTYEK0so1QXpjwNmq
	 eFwP8a5oXJpr1addZ5l7sQ4gKfDINOld8XKcL9MTskdpJAckSzVB99b3QYaNxyMOmE
	 yOmz2Y6ys/Z5YFkvcEADZKiMof0WaVhbMAl2n3ILirx0NHvCK0xgGbOdWor+Tnj+rV
	 gatIAvJu76I8hvjsNJ9K2eAuAJU7A9RdQzyOOiXsPzt2WWxBLC1sP2ZNigbahaVjHs
	 ReGXgux47Llc71ghODal7XrYdQHiuu7Ls4z+Pt6L7MBj1Cdi/xdAcydsDZKs7zqzWe
	 7CbNfGO8B1R3A==
Message-ID: <6513278a-ab58-95b4-2c01-15d6b80430cc@slint.fr>
Date: Mon, 7 Nov 2022 00:28:17 +0000
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
 Thunderbird/102.4.2
Subject: Re: How to ship the speakup drivers
Content-Language: en-US
To: Samuel Thibault <samuel.thibault@aquilenet.fr>
Cc: "Speakup is a screen review system for Linux."
 <speakup@linux-speakup.org>, Tony Seth <lp800@samobile.net>
References: <770d29f0-0ccd-0618-4434-7a54c201846a@slint.fr>
 <20221106231707.4skf7jymaezo42yz@begin>
From: Didier Spaier <didier@slint.fr>
In-Reply-To: <20221106231707.4skf7jymaezo42yz@begin>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Le 06/11/2022 à 23:17, Samuel Thibault a écrit :
> Didier Spaier, le dim. 06 nov. 2022 23:48:58 +0000, a ecrit:
>> He could append speakup.synth=ltlk to the kernel command line if speakup was
>> built-in (as indicated in Documentation/adminguide/spkguide.txt) but this is not
>> the case currently here (Linux 6.0.5 at time of writing if that matters).
> 
> In the debian installer, we run these lines very early, to auto-load the
> requested modules:
> 
> SYNTH=$(sed < /proc/cmdline -n -e 's/.*speakup\.synth=\([^ ]*\).*/\1/p')
> if [ -n "$SYNTH" ]; then
> 	modprobe speakup_$SYNTH
> fi
> 
>> 2. Are there inconveniences to have the main speakup driver built-in the kernel?
> 
> There is no inconvenience for somebody who uses speakup. For other
> people, that's some extra memory that is taken up.
> 
>> And in this case should the other drivers also built-in?
> 
> For speakup.synth=ltlk to work without any userland scripting, yes.

Thanks Samuel!
Didier

