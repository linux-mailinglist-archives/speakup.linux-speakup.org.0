Return-Path: <speakup+bounces-353-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 33AFD480DD6
	for <lists+speakup@lfdr.de>; Tue, 28 Dec 2021 23:55:06 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=rednote.net header.i=@rednote.net header.a=rsa-sha256 header.s=dkim header.b=uKYVhrBy;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id A6A4438117C; Tue, 28 Dec 2021 17:55:05 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 9155138116B
	for <lists+speakup@lfdr.de>; Tue, 28 Dec 2021 17:55:05 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 7E71B381172; Tue, 28 Dec 2021 17:54:59 -0500 (EST)
Received: from mail.rednote.net (opera.rednote.net [66.228.34.147])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 6CA0338116B
	for <speakup@linux-speakup.org>; Tue, 28 Dec 2021 17:54:59 -0500 (EST)
Received: from opera.rednote.net (localhost [IPv6:::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.rednote.net (Postfix) with ESMTPS id D83CEFA278;
	Tue, 28 Dec 2021 17:54:58 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rednote.net; s=dkim;
	t=1640732098;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=b67U+zIzj9BxxI36Iy4t4xCm+D3Pbfd/2a5JOtXiVSE=;
	b=uKYVhrBy8gwd3xeX06dRi8ZC+12c7rFCR87Z3nMualuqwoRIhKZ2d3k0zRiqgNy3sLb5JD
	AxAAuDLyAGnnGuPPdzbhVA9aASHvHLNXFAyFIDdRV2V5liuW0v54+msxX4cEKTXus2JeAI
	LYnlJKFUjzuZiTLNjDT8Y1BybKM7hD0=
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.rednote.net D83CEFA278
Authentication-Results: mail.rednote.net; dmarc=pass (p=reject dis=none) header.from=rednote.net
Authentication-Results: mail.rednote.net; spf=pass smtp.mailfrom=rednote.net
Received: (from janina@localhost)
	by opera.rednote.net (8.17.1/8.16.1/Submit) id 1BSMswlZ960059;
	Tue, 28 Dec 2021 17:54:58 -0500
Date: Tue, 28 Dec 2021 17:54:58 -0500
From: Janina Sajka <janina@rednote.net>
To: Alexander Epaneshnikov <aarnaarn2@gmail.com>
Cc: Didier Spaier <didier@slint.fr>, speakup@linux-speakup.org
Subject: Re: Now Fixed: Archlinux Speakup problems after alsa package upgrade
Message-ID: <YcuVws8INmB89RpN@rednote.net>
References: <YNMr0Pathc/mqx1L@rednote.net>
 <YcNUgwlCFtiAmY3Q@rednote.net>
 <3cefe3e6-f95a-ffe9-5995-543d6e4357db@jasonjgw.net>
 <Ycs60ClBq1jcVDuF@rednote.net>
 <055e3d2d-0653-3edc-4879-484816734d00@slint.fr>
 <YctqoKAZIKdSZH9f@rednote.net>
 <86d02e30-71fc-50bd-2408-6c658ec2da29@slint.fr>
 <20211228211323.3f2uhc6hblud4h3a@alex-pc>
 <YcuSVelJCeOX5Vg0@rednote.net>
 <20211228225025.xdkkmkow6io4kcml@alex-pc>
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
In-Reply-To: <20211228225025.xdkkmkow6io4kcml@alex-pc>
X-Operating-System: Linux opera.rednote.net 5.15.8-200.fc35.x86_64
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Alexander Epaneshnikov writes:
> On Tue, Dec 28, 2021 at 05:40:21PM -0500, Janina Sajka wrote:
> > Yes, I seem to have a full compliment of pw on the older machine, and
> > the same set of pw on the newer machine.
> 
> strange. I think espeakup will not work if pw is inuse.
> 

I have 0.90 on the newer machine and 0.80 on the older machine, both
working perfectly well. Perhaps pipewire is just piping alsa calls?

> > Interestingly, the files in /etc/alsa/conf.d/ are different. The new
> > machine shows only two files there:
> >
> > 50-pipewire.conf
> > 99-pipewire-default.conf
> >
> > On the older machine, earlier today, I tried renumber my alsa devices
> > via /etc/modprobe.d/alsa.conf. I ended up putting things back the way
> > they were, because the builtin Intel HDA device doesn't work as card 0
> > for some reason--very strange, but I adjusted some time ago to start
> > numbering my three devices as 1, 2 and 3.  So, after I put things back,
> > a see much more pw in that directory:
> >
> > 10-samplerate.conf
> > 10-speexrate.conf
> > 50-arcam-av-ctl.conf
> > 50-jack.conf
> > 50-oss.conf
> > 50-pipewire.conf
> > 50-pulseaudio.conf
> > 60-speex.conf
> > 60-upmix.conf
> > 60-vdownmix.conf
> > 98-usb-stream.conf
> > 99-pipewire-default.conf
> >
> >
> > This suggests to me that the conversion to pw is still a work in
> > progress!
> >
> > I've no idea why the above is the situation, though, or what packages
> > handle what aspect.
> 
> you can use pacman -Qo /path/to/file to check which package owns this file.
oThanks! Just did that and reinstalled alsa-plugins as well as pipewire.
I now have the full compliment of scripts in that directory.

Janina

> 
> > Best,
> >
> > Janina
> 
> --
> Sincerely, Alexander

-- 

Janina Sajka
(she/her/hers)
https://linkedin.com/in/jsajka

Linux Foundation Fellow
Executive Chair, Accessibility Workgroup:	http://a11y.org

The World Wide Web Consortium (W3C), Web Accessibility Initiative (WAI)
Co-Chair, Accessible Platform Architectures	http://www.w3.org/wai/apa


