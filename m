Return-Path: <speakup+bounces-395-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id E1711502BEB
	for <lists+speakup@lfdr.de>; Fri, 15 Apr 2022 16:32:14 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="key not found in DNS" header.d=slint.fr header.i=@slint.fr header.a=rsa-sha256 header.s=default header.b=eSrXXnj3;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id F2EB4380D3C; Fri, 15 Apr 2022 10:32:09 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id E027C380AE8
	for <lists+speakup@lfdr.de>; Fri, 15 Apr 2022 10:32:09 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 65451380B2A; Fri, 15 Apr 2022 10:32:05 -0400 (EDT)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79])
	by befuddled.reisers.ca (Postfix) with ESMTP id 07DA93808D6
	for <speakup@linux-speakup.org>; Fri, 15 Apr 2022 10:32:05 -0400 (EDT)
Received: from [192.168.1.37] (men75-h08-176-172-247-100.dsl.sta.abo.bbox.fr [176.172.247.100])
	by darkstar.slint.fr (Postfix) with ESMTPSA id E05A520471
	for <speakup@linux-speakup.org>; Fri, 15 Apr 2022 15:31:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=slint.fr; s=default;
	t=1650029470; bh=AoLNt17qncp+5vou2ok/VFw43vyFmeUWilDiM2PFudM=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=eSrXXnj3jJIexyMArD5VzX3WINIMOWEDIHHKupMmI0GxIG2eq1oTA3kjsiVa7EYtl
	 B1jZpP/UptYmNm8dKcgHMDwB64R6geT5cvzxwJqoBsIqXr0Az7WVQ8YHsc5BLDO0O2
	 G94YwHhGvbjxdgnjULOWMPtB83Dpz8fGQrMhTwQ/uZCDaCY0KjSEIgk0Nzi2HuBA0b
	 WsT2IgyCRX/hzBQ3AUHW1JMdiwtOhNB+C1zqbwHueRLdQc4LLpMLIgaF3LcbhLxSG3
	 7IuoFFZMYnW9+9uNC7bC5Adz8dhHWAUli27wShrXiTw+f1ndlfKD91Tk8cF0sw+Fyg
	 F4jvsg5o+w2ww==
Message-ID: <c1e9cedf-a51f-9d51-a1e3-5fee32891ed8@slint.fr>
Date: Fri, 15 Apr 2022 16:32:00 +0200
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
 Thunderbird/91.6.1
Subject: Re: multiple gentoo speakup install failures
Content-Language: en-US
To: speakup@linux-speakup.org
References: <c9b13650-c9da-cf15-68f7-9338fe6831@panix.com>
From: Didier Spaier <didier@slint.fr>
In-Reply-To: <c9b13650-c9da-cf15-68f7-9338fe6831@panix.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

I was about to suggest that you post on the gentoo-accessibility mailing list
but there is not much traffic there: the last post in the archives is the one
you posted on Mon, 02 Nov 2020...

Maybe try instead the irc channel: server irc.libera.chat; channel
#gentoo-accessibility. At time of writing several developers are in this room.

Cheers,
Didier

Le 15/04/2022 à 16:02, Jude DaShiell a écrit :
> 
> Things run until they don't any longer.
> When they don't run any longer speakup dies.  The speakup cannot be
> revived when this happens.
> Also the system likely crashes since a poweroff command as root fails to
> turn the system off.
> Many times in order to start the computer I have to use the reset button
> in addition to the power button on an 8 core 14gb ram amd system.
> I tried restricting gentoo to one core with nosmp but that didn't help at
> all either.
> I tried with latest stage3 systemd file and latest gentoo-minimal disk.
> So far as I'm concerned, gentoo at this time is uninstallable on this
> system.
> When speakup dies happens at random points during system installation too.
> I got no idea what's going on and would like to know if I'm unique and
> need a new computer or if this happens to others installing gentoo with
> speakup.  I've tried gentoo and gentoo-nofb kernels too.
> The farthest I got in recent install attempts was the emerge-webrsync step
> which failed because of a bad /etc/portage/make.conf file.
> 
> 

