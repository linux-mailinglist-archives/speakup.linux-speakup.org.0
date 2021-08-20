Return-Path: <speakup+bounces-264-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 108143F3077
	for <lists+speakup@lfdr.de>; Fri, 20 Aug 2021 18:00:15 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 19F06380F71; Fri, 20 Aug 2021 12:00:14 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="key not found in DNS" header.d=rednote.net header.i=@rednote.net header.a=rsa-sha256 header.s=dkim header.b=XwgBMCEA;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 05F8D3809C6
	for <lists+speakup@lfdr.de>; Fri, 20 Aug 2021 12:00:14 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 45B83380B43; Fri, 20 Aug 2021 12:00:08 -0400 (EDT)
Received: from mail.rednote.net (opera.rednote.net [66.228.34.147])
	by befuddled.reisers.ca (Postfix) with ESMTPS id F2DF63809C6
	for <speakup@linux-speakup.org>; Fri, 20 Aug 2021 12:00:07 -0400 (EDT)
Received: from opera.rednote.net (localhost [IPv6:::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.rednote.net (Postfix) with ESMTPS id 382C3FA268;
	Fri, 20 Aug 2021 12:00:02 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rednote.net; s=dkim;
	t=1629475202;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=xkUQnmt+Y2B2rSBwJNFJD3Wld37mHWWpGT2HfT409Zw=;
	b=XwgBMCEAp+CJS1clBbXhcA2XbROMhlLNwZ6/TvPDnfiIzClWRNLlj17bkYKwZObyRXU2rO
	uNClRe7zoXXfEkPKp+mlgLaCvqASapken4QXjapJRM7v+xzssOKN/AC1JaKDq1lehcvu/M
	Yna8X/BhfxSm3REKCSDpFC1zXmjjOOg=
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.rednote.net 382C3FA268
Authentication-Results: mail.rednote.net; dmarc=pass (p=reject dis=none) header.from=rednote.net
Authentication-Results: mail.rednote.net; spf=pass smtp.mailfrom=rednote.net
Received: (from janina@localhost)
	by opera.rednote.net (8.16.1/8.16.1/Submit) id 17KG01aX468705;
	Fri, 20 Aug 2021 12:00:01 -0400
Date: Fri, 20 Aug 2021 12:00:01 -0400
From: Janina Sajka <janina@rednote.net>
To: Alexander Epaneshnikov <aarnaarn2@gmail.com>
Cc: Samuel Thibault <samuel.thibault@aquilenet.fr>,
        Kelly Prescott <kprescott@coolip.net>, speakup@linux-speakup.org,
        Alexander Epaneshnikov <alex19ep@archlinux.org>
Subject: Re: Archlinux Speakup problems after alsa package upgrade
Message-ID: <YR/RgRGcCW5cyAK7@rednote.net>
References: <alpine.LNX.2.22.411.2106082204570.1927@io.coolip.net>
 <20210609072927.3igbp7jvopq3c6f7@begin>
 <alpine.LNX.2.22.411.2106090608590.13304@io.coolip.net>
 <20210609110828.kpo76f2zmbixjran@begin>
 <alpine.LNX.2.22.411.2106091332550.28397@whatsup.nkparts.com>
 <YMdZA0DL4BgCAShe@rednote.net>
 <6b4b229d-5e00-22e4-8cf2-33ed7bbd6b93@gmail.com>
 <YNMr0Pathc/mqx1L@rednote.net>
 <20210819205617.l76b7fxume3lrf67@begin>
 <20210820152606.r5nznst2t5532th3@alex-pc>
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
In-Reply-To: <20210820152606.r5nznst2t5532th3@alex-pc>
X-Operating-System: Linux opera.rednote.net 5.13.9-200.fc34.x86_64
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

I'll give it another try over the weekend and report.

I do see I'm missing espeak-ng-espeak, so maybe I'm missing a symlink or
two. Didn't see that one before.

Janina

Alexander Epaneshnikov writes:
> On Thu, Aug 19, 2021 at 10:56:17PM +0200, Samuel Thibault wrote:
> > Hello,
> >
> > As an additional datapoint: in Debian the upgrade of alsa-lib to 1.2.5.1
> > disturbs the espeakup output. Not completely broken, but distorted
> > enough that you'll rather reboot to get back normal speech. I could
> > capture some warnings, reported on
> > https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=992537
> > Hopefully they will have ideas.
> 
> don't know if it's helpful info. but on arch linux espeakup 0.90 works fine
> with: alsa-lib 1.2.5.1-3, pcaudiolib 1.2-2  and espeak-ng 1.50-4
> 
> maybe espeakup or espeak-ng should be rebuilt?
> 
> > Samuel
> 
> --
> Sincerely, Alexander

-- 

Janina Sajka
https://linkedin.com/in/jsajka

Linux Foundation Fellow
Executive Chair, Accessibility Workgroup:	http://a11y.org

The World Wide Web Consortium (W3C), Web Accessibility Initiative (WAI)
Co-Chair, Accessible Platform Architectures	http://www.w3.org/wai/apa


