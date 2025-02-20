Return-Path: <speakup+bounces-1244-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 62DFEA3D094
	for <lists+speakup@lfdr.de>; Thu, 20 Feb 2025 05:55:00 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=ZrnMn5eu;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 811C3382165; Wed, 19 Feb 2025 23:54:59 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 60F16381909
	for <lists+speakup@lfdr.de>; Wed, 19 Feb 2025 23:54:59 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 7D2D038190A; Wed, 19 Feb 2025 23:54:52 -0500 (EST)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
	by befuddled.reisers.ca (Postfix) with ESMTPS id EDE0F380909
	for <speakup@linux-speakup.org>; Wed, 19 Feb 2025 23:54:51 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gregn.net; s=default;
	t=1740027251; bh=wL8FQQvqymN7ZWZL8DzQmfjKNFg7HwBrM1OKP2S6jhs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ZrnMn5eu58izOdfLU6ykT59p/8fkJprRkcZJbnx1ViXK0oJ5/Cvu+q2Il1rgbiKFE
	 jfc59ruC1iq13WuQAXmqGchM0P2ljR1rSSRO2RyB8zyD4TPyukmVi3+X7N00m8jbro
	 0BwVB3RVRxC3PN7DZoigcBAkl1iX/BisefnHsvflASI3nlwZ/efYnq+cPTs+Yn9a4/
	 bHqKhuLttxczkYFJm+3ibubRoM4r/+JdoSW/YR/SXt/cHT4+7FDlpZhHz4dzS3Wx1n
	 KuUkWo3Mo0QKkXohVnM6m8ffC/N+2gTFgW8brrzI8+hNw2y5a+cqLrRv8IakYL5F6+
	 SCm7OvtfwzGPQ==
Received: from vbox.gregn.net (unknown [IPv6:2607:fb90:2d1c:5a01:22fc:e142:e88f:1307])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (secp384r1) server-digest SHA384)
	(No client certificate requested)
	by vserver.gregn.net (Postfix) with ESMTPSA id C038F4D38;
	Wed, 19 Feb 2025 20:54:11 -0800 (PST)
Received: by vbox.gregn.net (Postfix, from userid 1000)
	id 132D1D350; Wed, 19 Feb 2025 21:54:11 -0700 (MST)
Date: Wed, 19 Feb 2025 21:54:11 -0700
From: Gregory Nowak <greg@gregn.net>
To: Georgina Joyce <gena@m0ebp.uk>
Cc: speakup@linux-speakup.org
Subject: Re: speakup andorca  playing nice on debian
Message-ID: <Z7a1c2fYn_y0ChDe@gregn.net>
References: <99CEE4DB-225D-4B3C-A017-7BAC1B5F31B0@m0ebp.uk>
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
In-Reply-To: <99CEE4DB-225D-4B3C-A017-7BAC1B5F31B0@m0ebp.uk>
X-PGP-Key: http://www.gregn.net/pubkey.asc
X-Virus-Scanned: clamav-milter 1.0.7 at vserver
X-Virus-Status: Clean
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

If you don't need pulseaudio, then

apt purge pulseaudio

In /etc/speech-dispatcher/speed.conf change

AudioOutputMethod "pulse"

to

AudioOutputMethod "libao"

I would then recommend a reboot to get everything settled, and both
screen readers should play nice. This is the method that works for me,
but there are other methods which work for others.

Greg


On Wed, Feb 19, 2025 at 06:47:13PM +0000, Georgina Joyce wrote:
> Hello All,
> 
> I thought I squirrelled away a message that someone had posted quite recently of how to get a system where both screen readers were working together. However, I can't find it. Could that person repost or PM me?
> 
> The debian install went well using speakup but it boots into Mate and orca handles the graphical login. Then I loose all speech. I do have very little installed on the system and don't know orca very well. I'd rather use the console but need to use the graphical interface occasionally. I'm sure the post I dreamt of or it was posted here would help very much. 
> 
> I don't mind reinstalling and just get speakup well established. Then install the GUI. But I'd like to get both working.
> 
> Thanks,
> 
> Gena M0EBP

-- 
web site: http://www.gregn.net
gpg public key: http://www.gregn.net/pubkey.asc

--
Free domains: http://www.eu.org/ or mail dns-manager@EU.org

