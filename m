Return-Path: <speakup+bounces-1159-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 31144929165
	for <lists+speakup@lfdr.de>; Sat,  6 Jul 2024 09:08:37 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=w5AK37fz;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 3F460C81C6B; Sat, 06 Jul 2024 03:08:35 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 1F490C80B05
	for <lists+speakup@lfdr.de>; Sat, 06 Jul 2024 03:08:35 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 0D2A3C80B0A; Sat, 06 Jul 2024 03:08:27 -0400 (EDT)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 5A767C80888
	for <speakup@linux-speakup.org>; Sat, 06 Jul 2024 03:08:26 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gregn.net; s=default;
	t=1720249704; bh=J0KM9ldg2rI8o896hJuB99x/raXO/Oihr81c7z6bwXI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=w5AK37fzufwmOYyOeKLBSVhLNpPnK+fTkeyOdQC8bsfaPQIokHrlYm8dZ0VJtk3rF
	 NtsmJfDFMY+L0MFsrK4u+OscXHruPzROxBykCbEnKrMaJ+i8YCdyaukkMh+9mLBzsh
	 39+rws20x1dYCcUKlCqRAM6kGFGMH3CWXBj1H7ytzkdG/xVnqPz4CtsWk5HNg8cpcI
	 fFYBOPsvUkPRMc4qdCLafywo47Q55wVJyBQB2aql9DY04nOLRZDloAmeY7MD0aR2vq
	 TKULes7CLCZyMhs/9BuK/1BXpOnGD1v8ECCsbO7rOl8+DEGa3VzbWy2sqe6HmyfNf/
	 jkFXTIU7aQvUg==
Received: from vbox.gregn.net (unknown [172.58.208.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (secp384r1))
	(No client certificate requested)
	by vserver.gregn.net (Postfix) with ESMTPSA id A07AE6D5;
	Sat,  6 Jul 2024 00:08:24 -0700 (PDT)
Received: by vbox.gregn.net (Postfix, from userid 1000)
	id 9103BC295; Sat,  6 Jul 2024 00:08:23 -0700 (MST)
Date: Sat, 6 Jul 2024 00:08:23 -0700
From: Gregory Nowak <greg@gregn.net>
To: "Terry D. Cudney" <terry@cudneys.ca>
Cc: speakup@linux-speakup.org
Subject: Re: howto run speakup/orca concurrently in ubuntu 22.04 or 24.04
Message-ID: <ZojtZ3RQxdiZaMN1@gregn.net>
References: <ZoieyBFD0TXlL_bd@cudneys.ca>
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
In-Reply-To: <ZoieyBFD0TXlL_bd@cudneys.ca>
X-PGP-Key: http://www.gregn.net/pubkey.asc
X-Virus-Scanned: clamav-milter 1.0.5 at vserver
X-Virus-Status: Clean
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Jookia's page lists one solution to the problem. The other solution
which I personally use is to get rid of pulseaudio since I don't need
it. If you do that, you will want to change the output from pulseaudio
to libao in /etc/speech-dispatcher/speechd.conf if you still want to
use orca.

Greg


On Fri, Jul 05, 2024 at 09:32:56PM -0400, Terry D. Cudney wrote:
> Hi,
> 
> 	I'm new to this list. So, please bear with me...
> 
> 	I have run Debian cli-only with speakup for years... no problem
> 
> 	I recently acquired a Thinkpad laptop with Windows 11 installed. I shrunk the Windows partition and installed Ubuntu 22.04 (why ubuntu? because Lenovo claimed that Ubuntu 22.04 is "Certified" on this device). After initial setup, I installed espeakup, expecting that speakup would come up talking on the next reboot... Not so!
> 
> 	So, my question:
> 
> 	Has anyone had success in installing/running espeakup/speakup onUbuntu 22.04?
> 
> 	I have tried with the gui/orca running and notrunning... same result: speakup does not talk.
> 
> 	I'd be happy to run cli-only if speakup would run fromboot time.
> 
> 	Ideally though, if it is possible to run cli/speakup and gui/orca concurrently, that would be great!
> 
> 	All suggestions are welcome.
> 
> 	TIA,
> 
> 	--terry
> 	
> -- 
> Name: Terry D. Cudney
> Telephone: 289-488-4882 ext 1
> E-mail: terry@cudneys.ca
>  
> 

-- 
web site: http://www.gregn.net
gpg public key: http://www.gregn.net/pubkey.asc

--
Free domains: http://www.eu.org/ or mail dns-manager@EU.org

