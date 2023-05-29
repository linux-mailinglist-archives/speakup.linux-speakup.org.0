Return-Path: <speakup+bounces-944-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id A635A715092
	for <lists+speakup@lfdr.de>; Mon, 29 May 2023 22:27:40 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=ArqrSi17;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 242243824AE; Mon, 29 May 2023 16:27:38 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 03F0A3823C7
	for <lists+speakup@lfdr.de>; Mon, 29 May 2023 16:27:38 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id C7B693823C5; Mon, 29 May 2023 16:27:28 -0400 (EDT)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
	by befuddled.reisers.ca (Postfix) with ESMTPS id DBBF5382355
	for <speakup@linux-speakup.org>; Mon, 29 May 2023 16:27:27 -0400 (EDT)
Received: from vbox.gregn.net (unknown [IPv6:2607:fb90:2dcd:2:90b3:774e:e1d:287d])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by vserver.gregn.net (Postfix) with ESMTPSA id 9DB569F07;
	Mon, 29 May 2023 13:26:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gregn.net; s=default;
	t=1685392014; bh=hvq2pOaNUzxSmYO6BHwKZpKt5Uj1GfXJAthZqQ5adt0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ArqrSi17fsqID9Z2qdcoPu3Sc5GxBMNArunXdhqAQP7hIt6CUU89ZaVxMvMxXmmzW
	 BuliKavJPFgxLz4RjM00JwL63YIPPQOPyJhckkMw1I5S6pyHA0JR58cNrrMrqH6Jv8
	 pv2+gUAtKzbsmXwe6sdiPheTVIGRrjhsX4+fVJsdS1P88cOahDttpgt8kh7S8KlUc5
	 8rM8CgovXm8xy0l02pJ+twa+AaC6huAM+F6wnFWW5DdNb1/+gabi+ly40pzUJn+Mx1
	 ++1+rWDoc5DeQN7E9gLkOLG6k4LBjaq+MJ049FjvJh4UNVOfm6yVE38bHw4BFm51lz
	 JxORSSLoJo7uw==
Received: by vbox.gregn.net (Postfix, from userid 1000)
	id AEF29C177; Mon, 29 May 2023 13:26:52 -0700 (MST)
Date: Mon, 29 May 2023 13:26:52 -0700
From: Gregory Nowak <greg@gregn.net>
To: Didier Spaier <didier@slint.fr>
Cc: speakup@linux-speakup.org
Subject: Re: Beep on Backspace in Console Sessions
Message-ID: <ZHUKjA+f+SLDtpR+@gregn.net>
References: <ZHGmQFwqgliD6p3X@rednote.net>
 <b175e143-de30-9fb6-1ed2-d352a3af34a9@slint.fr>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <b175e143-de30-9fb6-1ed2-d352a3af34a9@slint.fr>
X-PGP-Key: http://www.gregn.net/pubkey.asc
X-Virus-Scanned: clamav-milter 0.103.8 at vserver
X-Virus-Status: Clean
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

On my ancient laptop bought in early 2013, I still get a beep from the
speakers and headphone jack when pressing backspace at the
console. Looking at the list of loaded sound modules, it isn't
immediately obvious which one of them is responsible for that. No,
there is no snd-beep module, and the pcspkr module isn't loaded. I can
post a list of the loaded sound modules if that would help.
There is a Beep sound control, which needs to be unmuted, and have its
sound level adjusted for the beep to be heard.

For reference, my desktop built in June 2019 has a PC speaker attached
to the motherboard header, and I do get a beep out of that speaker
for which the pcspkr module is responsible.

It may also be worth pointing out that one will not always get a beep
when pressing backspace on an empty line in the console, if in a
screen(1) session for example. Good luck with your move Janina.

Greg


On Sat, May 27, 2023 at 02:07:07PM +0200, Didier Spaier wrote:
> Hey Janina,
> 
> as Joseph suggested I would first check that the kernel driver pcspkr is
> compiled as a module.
> 
> The answer is yes if this command gives an output:
> lsmod|grep pcspkr
> 
> You coule also check the output of:
> zgrep INPUT_PCSPKR /proc/config.gz
> Here it gives:
> CONFIG_INPUT_PCSPKR=m
> 
> If this module is provided, check that you have in /etc/inputrc:
> 
> set bell-style audible (the argument should not be "visible" or "none")
> 
> If this module is not provided you need to rebuild your kernel or use one that
> provides it.
> 
> If you have this module but not the needed hardware you could use this software:
> https://github.com/Hawk777/abeep
> 
> It is available for Arch in the AUR:
> https://aur.archlinux.org/packages/abeep-git
> 
> I built it in Slint, it works and relies on the libasound.so shared library from
> alsa
> 
> But what I don't know is how to tell bash to replace the call to pcspkr by
> /usr/bin/bell and "man readline" did not give me a clue :(
> 
> there is also a beep software:
> https://github.com/spkr-beep/beep also available on Arch:
> https://archlinux.org/packages/extra/x86_64/beep/
> 
> It works here (TM) but also needs a the pcspkr module and the hardware.
> 
> Cheers
> 
> 


-- 
web site: http://www.gregn.net
gpg public key: http://www.gregn.net/pubkey.asc
skype: gregn1
(authorization required, add me to your contacts list first)
If we haven't been in touch before, e-mail me before adding me to your contacts.

--
Free domains: http://www.eu.org/ or mail dns-manager@EU.org

