Return-Path: <speakup+bounces-345-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 9D24C480B56
	for <lists+speakup@lfdr.de>; Tue, 28 Dec 2021 17:34:26 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=rednote.net header.i=@rednote.net header.a=rsa-sha256 header.s=dkim header.b=nnVS1gBN;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 84F89381162; Tue, 28 Dec 2021 11:34:25 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 70BD5380EBA
	for <lists+speakup@lfdr.de>; Tue, 28 Dec 2021 11:34:25 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id AF34138114A; Tue, 28 Dec 2021 11:34:19 -0500 (EST)
Received: from mail.rednote.net (opera.rednote.net [66.228.34.147])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 9EC53380EA8
	for <speakup@linux-speakup.org>; Tue, 28 Dec 2021 11:34:19 -0500 (EST)
Received: from opera.rednote.net (localhost [IPv6:::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.rednote.net (Postfix) with ESMTPS id 017ADFA278;
	Tue, 28 Dec 2021 11:34:18 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rednote.net; s=dkim;
	t=1640709259;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=GNexuwml3m8qC+9Whx/XhvX9gcbYVqeReQHt/Bz5LtQ=;
	b=nnVS1gBN9t/GpZ+VXZ7VgMA4uM3OX/6N0kljTO2TpkaSRF6p61oJgb/Ms54Y1hNbTBgsNV
	ePjS1DFZx7Fc9ip7nB3ldZJNCnAJkM9lqgbH8X3l50r9rz3Xzyb2AGZsgo52TrOQK0OsIF
	n0yonkUEQXz9qWZue4hMlpQLIjM2+RI=
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.rednote.net 017ADFA278
Authentication-Results: mail.rednote.net; dmarc=pass (p=reject dis=none) header.from=rednote.net
Authentication-Results: mail.rednote.net; spf=pass smtp.mailfrom=rednote.net
Received: (from janina@localhost)
	by opera.rednote.net (8.17.1/8.16.1/Submit) id 1BSGYI5V936378;
	Tue, 28 Dec 2021 11:34:18 -0500
Date: Tue, 28 Dec 2021 11:34:18 -0500
From: Janina Sajka <janina@rednote.net>
To: Jason White <jason@jasonjgw.net>
Cc: speakup@linux-speakup.org
Subject: Re: Now Fixed: Archlinux Speakup problems after alsa package upgrade
Message-ID: <Ycs8ilzTvzKbdo9o@rednote.net>
References: <20210609072927.3igbp7jvopq3c6f7@begin>
 <alpine.LNX.2.22.411.2106090608590.13304@io.coolip.net>
 <20210609110828.kpo76f2zmbixjran@begin>
 <alpine.LNX.2.22.411.2106091332550.28397@whatsup.nkparts.com>
 <YMdZA0DL4BgCAShe@rednote.net>
 <6b4b229d-5e00-22e4-8cf2-33ed7bbd6b93@gmail.com>
 <YNMr0Pathc/mqx1L@rednote.net>
 <YcNUgwlCFtiAmY3Q@rednote.net>
 <3cefe3e6-f95a-ffe9-5995-543d6e4357db@jasonjgw.net>
 <Ycs60ClBq1jcVDuF@rednote.net>
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
In-Reply-To: <Ycs60ClBq1jcVDuF@rednote.net>
X-Operating-System: Linux opera.rednote.net 5.15.8-200.fc35.x86_64
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Oops, one important correction to my last post ...

I just ran another Syu upgrade on said machine, which gave me a new
kernel and, therefore, a reboot.

Espeakup was silent on reboot, so I again created the /etc/asound.conf
file and rebooted again. Bingo. Speech.

Best,

Janina

Janina Sajka writes:
> Very relevant observation, Jason.
> Indeed, that file I refer to seems to have been deleted by one upgrade
> or another over the past week--I've run several.
> 
> So, not sure what's going on under the hood. All I can say is that
> creating that file, for whatever reason, caused Espeakup to work on the
> System76 Meerkat system.
> 
> On my older, 2012 era custom built Linux board, Espeakup-0.80 is still
> required, but it now works with the latest alsa. No matter what I try,
> Espeakup-0.90 won't work, even though the espeak command speaks using
> espeak-ng. So, I downgraded to the latest Espeak, dated on Arch from mid
> December, and downgraded Espeakup accordingly.
> 
> Apparently there must be some kind of reason why Espeakup can't be
> agnostic between espeak and espeak-ng?
> 
> Best,
> 
> Janina
> 
> Jason White writes:
> > 
> > On 22/12/21 11:38, Janina Sajka wrote:
> > > What was the fix?
> > > 
> > > I introduced a file:
> > > 
> > > /etc/asound.conf
> > 
> > Interestingly, I don't have that file on my Arch Linux system, but there are
> > various configuration files under /etc/alsa/conf.d, apparently placed there
> > by Pipewire packages.
> > 
> > 
> 
> -- 
> 
> Janina Sajka
> (she/her/hers)
> https://linkedin.com/in/jsajka
> 
> Linux Foundation Fellow
> Executive Chair, Accessibility Workgroup:	http://a11y.org
> 
> The World Wide Web Consortium (W3C), Web Accessibility Initiative (WAI)
> Co-Chair, Accessible Platform Architectures	http://www.w3.org/wai/apa
> 

-- 

Janina Sajka
(she/her/hers)
https://linkedin.com/in/jsajka

Linux Foundation Fellow
Executive Chair, Accessibility Workgroup:	http://a11y.org

The World Wide Web Consortium (W3C), Web Accessibility Initiative (WAI)
Co-Chair, Accessible Platform Architectures	http://www.w3.org/wai/apa


