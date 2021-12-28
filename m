Return-Path: <speakup+bounces-347-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id DB01B480CDB
	for <lists+speakup@lfdr.de>; Tue, 28 Dec 2021 20:51:03 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=rednote.net header.i=@rednote.net header.a=rsa-sha256 header.s=dkim header.b=fKFHpq7K;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 1F999381183; Tue, 28 Dec 2021 14:51:03 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 0A90438114A
	for <lists+speakup@lfdr.de>; Tue, 28 Dec 2021 14:51:03 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 0751D381155; Tue, 28 Dec 2021 14:50:57 -0500 (EST)
Received: from mail.rednote.net (opera.rednote.net [66.228.34.147])
	by befuddled.reisers.ca (Postfix) with ESMTPS id EB0E438114A
	for <speakup@linux-speakup.org>; Tue, 28 Dec 2021 14:50:56 -0500 (EST)
Received: from opera.rednote.net (localhost [IPv6:::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.rednote.net (Postfix) with ESMTPS id 7037BFA278;
	Tue, 28 Dec 2021 14:50:56 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rednote.net; s=dkim;
	t=1640721056;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=PwrNicTBx0ddZe2SGEsMuePWMxlzFhdOL3AMqi6zuPc=;
	b=fKFHpq7KkRQSoo7wiNhCdSNwkh+vwldcg1sqtSX1wg+9HD6w7a9uYG0mZg+sNBeryhB1zt
	EzO4CnqOMRg3vUuhxNeNedtEdeeRaffrR8PaV5WvxmK0e0jV7kpluc/OgQLuvuq2qRiYPm
	CywxZeJ2t5NE+kLVyYg11qhrbJCSr8c=
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.rednote.net 7037BFA278
Authentication-Results: mail.rednote.net; dmarc=pass (p=reject dis=none) header.from=rednote.net
Authentication-Results: mail.rednote.net; spf=pass smtp.mailfrom=rednote.net
Received: (from janina@localhost)
	by opera.rednote.net (8.17.1/8.16.1/Submit) id 1BSJoupp948831;
	Tue, 28 Dec 2021 14:50:56 -0500
Date: Tue, 28 Dec 2021 14:50:56 -0500
From: Janina Sajka <janina@rednote.net>
To: Didier Spaier <didier@slint.fr>
Cc: speakup@linux-speakup.org
Subject: Re: Now Fixed: Archlinux Speakup problems after alsa package upgrade
Message-ID: <YctqoKAZIKdSZH9f@rednote.net>
References: <alpine.LNX.2.22.411.2106090608590.13304@io.coolip.net>
 <20210609110828.kpo76f2zmbixjran@begin>
 <alpine.LNX.2.22.411.2106091332550.28397@whatsup.nkparts.com>
 <YMdZA0DL4BgCAShe@rednote.net>
 <6b4b229d-5e00-22e4-8cf2-33ed7bbd6b93@gmail.com>
 <YNMr0Pathc/mqx1L@rednote.net>
 <YcNUgwlCFtiAmY3Q@rednote.net>
 <3cefe3e6-f95a-ffe9-5995-543d6e4357db@jasonjgw.net>
 <Ycs60ClBq1jcVDuF@rednote.net>
 <055e3d2d-0653-3edc-4879-484816734d00@slint.fr>
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
In-Reply-To: <055e3d2d-0653-3edc-4879-484816734d00@slint.fr>
X-Operating-System: Linux opera.rednote.net 5.15.8-200.fc35.x86_64
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Didier Spaier writes:
> Hi Janina and all,
> 
> On 28/12/2021 17:26, Janina Sajka wrote:
> > ...
> > 
> > Apparently there must be some kind of reason why Espeakup can't be
> > agnostic between espeak and espeak-ng?
> 
> espeakup is linked against the shared library installed at time of building it.
> 
> Here:
> dance[~]$ ldd /usr/bin/espeakup | grep libespeak
> 	libespeak-ng.so.1 => /usr/lib64/libespeak-ng.so.1 (0x00007f290df83000)
> 
Thanks, Didier. This does make sense.

> My guess is you will find libespeak.so.1 instead running the same command.
> 
> So you need to rebuild espeakup-0.90 after having removed espeak and installed
> espeak-ng only.
> 
Are you saying I need to run ldd by hand? I thought the installation
process upgrading from 80 to 90 would take care of the ldd?

It's true I did not run an ldd when I tried to upgrade my older machine
to espeak-ng and espeakup-0.90.


Best,

Janina

> It could be possible to just make a symlink instead, but that would ugly. Better
> just get read of espeak.
> 
> Cheers,
> Didier
> 
> 

-- 

Janina Sajka
(she/her/hers)
https://linkedin.com/in/jsajka

Linux Foundation Fellow
Executive Chair, Accessibility Workgroup:	http://a11y.org

The World Wide Web Consortium (W3C), Web Accessibility Initiative (WAI)
Co-Chair, Accessible Platform Architectures	http://www.w3.org/wai/apa


