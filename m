Return-Path: <speakup+bounces-265-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 2CD9A3F3A87
	for <lists+speakup@lfdr.de>; Sat, 21 Aug 2021 14:11:53 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 83253380EC5; Sat, 21 Aug 2021 08:11:52 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="key not found in DNS" header.d=rednote.net header.i=@rednote.net header.a=rsa-sha256 header.s=dkim header.b=iQhnZjWh;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 6D757380994
	for <lists+speakup@lfdr.de>; Sat, 21 Aug 2021 08:11:52 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 65CEC380A13; Sat, 21 Aug 2021 08:11:46 -0400 (EDT)
Received: from mail.rednote.net (opera.rednote.net [66.228.34.147])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 6EF6E380994
	for <speakup@linux-speakup.org>; Sat, 21 Aug 2021 08:11:45 -0400 (EDT)
Received: from opera.rednote.net (localhost [IPv6:::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.rednote.net (Postfix) with ESMTPS id 2D41FFA268;
	Sat, 21 Aug 2021 08:11:43 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rednote.net; s=dkim;
	t=1629547903;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=eEpH6tB7B4pL9y0Y782ME6PnAszCEwb7bBTIOpixqTI=;
	b=iQhnZjWhqjXEM+5gGHREqTMOmzKiVWg+EVzJXFGc/+5eLcoOHzjaR5P28PeRS44PzLLbcN
	iGw1UeO0RcHidfTiuT9wT1GNgU+eykgliVLN2FVHDVD4+Ba8Rm6niFWYrBUHW1oOk+K8vJ
	l80Me3uihPRibiiUsWf1fJape8L2a1A=
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.rednote.net 2D41FFA268
Authentication-Results: mail.rednote.net; dmarc=pass (p=reject dis=none) header.from=rednote.net
Authentication-Results: mail.rednote.net; spf=pass smtp.mailfrom=rednote.net
Received: (from janina@localhost)
	by opera.rednote.net (8.16.1/8.16.1/Submit) id 17LCBg5Q530438;
	Sat, 21 Aug 2021 08:11:42 -0400
Date: Sat, 21 Aug 2021 08:11:42 -0400
From: Janina Sajka <janina@rednote.net>
To: Samuel Thibault <samuel.thibault@aquilenet.fr>
Cc: Alexander Epaneshnikov <aarnaarn2@gmail.com>,
        Kelly Prescott <kprescott@coolip.net>, speakup@linux-speakup.org,
        Alexander Epaneshnikov <alex19ep@archlinux.org>
Subject: Re: Archlinux Speakup problems after alsa package upgrade
Message-ID: <YSDtfiv5yYy/FfQq@rednote.net>
References: <20210609072927.3igbp7jvopq3c6f7@begin>
 <alpine.LNX.2.22.411.2106090608590.13304@io.coolip.net>
 <20210609110828.kpo76f2zmbixjran@begin>
 <alpine.LNX.2.22.411.2106091332550.28397@whatsup.nkparts.com>
 <YMdZA0DL4BgCAShe@rednote.net>
 <6b4b229d-5e00-22e4-8cf2-33ed7bbd6b93@gmail.com>
 <YNMr0Pathc/mqx1L@rednote.net>
 <20210819205617.l76b7fxume3lrf67@begin>
 <20210820152606.r5nznst2t5532th3@alex-pc>
 <20210820155212.rlj4addvh726cgbb@begin>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210820155212.rlj4addvh726cgbb@begin>
X-Operating-System: Linux opera.rednote.net 5.13.9-200.fc34.x86_64
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Alex:

I regret to advise it's NOT working on my newest hardware running Arch
fully updated via Syu today, 21 August.

janina@minuet 07:58:59 ~$yay -Q alsa-lib pcaudiolib espeak-ng
espeak-ng-espeak espeakup
alsa-lib 1.2.5.1-3
pcaudiolib 1.2-2
espeak-ng 1.50-4
espeak-ng-espeak 1.50-4
espeakup 0.90-1

I have confirmed my audio devices can aplay without problems, but no joy
from espeakup.

I will leave the above as reported just in case you'd like more info or in
case you'd like me to try something specific. However, I will need to
return this system to a working state by Sunday evening.

Best,

Janina

Samuel Thibault writes:
> Alexander Epaneshnikov, le ven. 20 août 2021 18:26:06 +0300, a ecrit:
> > On Thu, Aug 19, 2021 at 10:56:17PM +0200, Samuel Thibault wrote:
> > > As an additional datapoint: in Debian the upgrade of alsa-lib to 1.2.5.1
> > > disturbs the espeakup output. Not completely broken, but distorted
> > > enough that you'll rather reboot to get back normal speech. I could
> > > capture some warnings, reported on
> > > https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=992537
> > > Hopefully they will have ideas.
> > 
> > don't know if it's helpful info. but on arch linux espeakup 0.90 works fine
> > with: alsa-lib 1.2.5.1-3, pcaudiolib 1.2-2  and espeak-ng 1.50-4
> 
> On Debian it works fine, yes, but only after restarting espeakup.
> 
> Samuel

-- 

Janina Sajka
https://linkedin.com/in/jsajka

Linux Foundation Fellow
Executive Chair, Accessibility Workgroup:	http://a11y.org

The World Wide Web Consortium (W3C), Web Accessibility Initiative (WAI)
Co-Chair, Accessible Platform Architectures	http://www.w3.org/wai/apa


