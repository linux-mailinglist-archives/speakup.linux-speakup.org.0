Return-Path: <speakup+bounces-341-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id E02E147D52B
	for <lists+speakup@lfdr.de>; Wed, 22 Dec 2021 17:38:37 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=rednote.net header.i=@rednote.net header.a=rsa-sha256 header.s=dkim header.b=rZBOKiKY;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id AEACB38116D; Wed, 22 Dec 2021 11:38:36 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 99546380A96
	for <lists+speakup@lfdr.de>; Wed, 22 Dec 2021 11:38:36 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id D78F4380C0B; Wed, 22 Dec 2021 11:38:30 -0500 (EST)
Received: from mail.rednote.net (opera.rednote.net [66.228.34.147])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 8D977380A67
	for <speakup@linux-speakup.org>; Wed, 22 Dec 2021 11:38:30 -0500 (EST)
Received: from opera.rednote.net (localhost [IPv6:::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.rednote.net (Postfix) with ESMTPS id 8ADC4FA269;
	Wed, 22 Dec 2021 11:38:28 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rednote.net; s=dkim;
	t=1640191108;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=RF8WivQjIQZsci0YrKrww/VpwwQaat8k3SqnCGGMGLA=;
	b=rZBOKiKYWoUzBXhvqx3pgJpDI1k4NDbxkqy6f4Dhb4yH0LeOmiU5bUjlqT9j/6UEJUtdAq
	8Ot/lMKyU8v47MW0SabuZhwW+2QXcrgy7jKM9eTplRiOnt0dL9iDQTRrazxmFfOCB22IOc
	oRbavW2aKlaWlKp++Wr56YI4gESzB1k=
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.rednote.net 8ADC4FA269
Authentication-Results: mail.rednote.net; dmarc=pass (p=reject dis=none) header.from=rednote.net
Authentication-Results: mail.rednote.net; spf=pass smtp.mailfrom=rednote.net
Received: (from janina@localhost)
	by opera.rednote.net (8.17.1/8.16.1/Submit) id 1BMGcRYm383196;
	Wed, 22 Dec 2021 11:38:27 -0500
Date: Wed, 22 Dec 2021 11:38:27 -0500
From: Janina Sajka <janina@rednote.net>
To: Alexander Epaneshnikov <aarnaarn2@gmail.com>
Cc: Kelly Prescott <kprescott@coolip.net>,
        Samuel Thibault <samuel.thibault@aquilenet.fr>,
        speakup@linux-speakup.org, blinux-list@redhat.com
Subject: Now Fixed: Archlinux Speakup problems after alsa package upgrade
Message-ID: <YcNUgwlCFtiAmY3Q@rednote.net>
References: <alpine.LNX.2.22.411.2106082204570.1927@io.coolip.net>
 <20210609072927.3igbp7jvopq3c6f7@begin>
 <alpine.LNX.2.22.411.2106090608590.13304@io.coolip.net>
 <20210609110828.kpo76f2zmbixjran@begin>
 <alpine.LNX.2.22.411.2106091332550.28397@whatsup.nkparts.com>
 <YMdZA0DL4BgCAShe@rednote.net>
 <6b4b229d-5e00-22e4-8cf2-33ed7bbd6b93@gmail.com>
 <YNMr0Pathc/mqx1L@rednote.net>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <YNMr0Pathc/mqx1L@rednote.net>
X-Operating-System: Linux opera.rednote.net 5.15.8-200.fc35.x86_64
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi,

I have spent sometime today trying to get espeakup working on one of my
two Linux systems. I now have it working with alsa-lib-1.2.6.1-1 and
Espeakup-0.90 on Arch, using standard Arch packaging.

What was the fix?

I introduced a file:

/etc/asound.conf

<begin file contents>
ctl.!default {
        type hw
	        card 0
		}

		<end file contents>

		Why that should matter is beyond me. Seems like this
		should be the default behavior, no?

		Best,

		Janina

Janina Sajka writes:
> Hi, Alexander:
> 
> I ram an -Syu upgrade on one of my two machines and rebooted. I can
> confirm espeakup 0.9.0 and also:
> 
> alsa-lib 1.2.5.1-3
> alsa-utils 1.2.5.1-1
> 
> Unfortunately, I do not get Speakup speech. Doing "espeak hello" works,
> as do aplay commands.
> 
> I would also note the amixer command environment seems OK now, but
> that's a separate issue.
> 
> I will leave things as they are for now, rather than downversioning
> alsa-lib, in case I can give you some other
> debugging output. Let me know, and thanks for your efforts.
> 
> Janina
> 
> 
> Alexander Epaneshnikov writes:
> > 14.06.2021 16:26, Janina Sajka пишет:
> > > Hi, All:
> > > 
> > > Just returning to this topic to add my own experience on updating my
> > > Arch Linux installation on two machines over the weekend.
> > > 
> > > I also ran into problems that rendered Speakup unusable with espeakup.
> > > Reverting alsa-lib fixed the Speakup issue. As we don't know how long
> > > the problem may persist, I've added the following to my
> > > /etc/pacman.conf:
> > > 
> > > IgnorePkg   =alsa-lib
> > > 
> > > 
> > > I also discovered problems with alsa-util packages. A command as
> > > straight forward as:
> > > 
> > > amixer controls
> > > 
> > > returned meaningless results. Further, several of my audio devices were
> > > silent with volumes set to 0, and the switch set to "false." So, I also
> > > added a line like the above for alsa-utils.
> > > 
> > > Not sure how to be helpful to anyone interested in debugging, but I do
> > > have two machines and am willing to try. Please advise.
> > > 
> > > Best,
> > > 
> > > Janina
> > > 
> > Hello everyone. please test espeakup 0.90 with laytest alsa-lib on Arch Linux.
> > I will be happy to hear the results.
> > 
> > -- 
> > Sincerely, Alexander.
> 
> -- 
> 
> Janina Sajka
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


