Return-Path: <speakup+bounces-271-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 5B6403F3AEF
	for <lists+speakup@lfdr.de>; Sat, 21 Aug 2021 16:19:57 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id D746C380C17; Sat, 21 Aug 2021 10:19:56 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="key not found in DNS" header.d=rednote.net header.i=@rednote.net header.a=rsa-sha256 header.s=dkim header.b=m/C2zl6v;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id BF796380B28
	for <lists+speakup@lfdr.de>; Sat, 21 Aug 2021 10:19:56 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id DC018380C18; Sat, 21 Aug 2021 10:19:50 -0400 (EDT)
Received: from mail.rednote.net (opera.rednote.net [66.228.34.147])
	by befuddled.reisers.ca (Postfix) with ESMTPS id E9D83380B28
	for <speakup@linux-speakup.org>; Sat, 21 Aug 2021 10:19:49 -0400 (EDT)
Received: from opera.rednote.net (localhost [IPv6:::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.rednote.net (Postfix) with ESMTPS id 7CB0CFA268;
	Sat, 21 Aug 2021 10:19:48 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rednote.net; s=dkim;
	t=1629555588;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=e5xPhJV4t82oH9zouf1DRUATNAzYcHY5XCNO0flyOhw=;
	b=m/C2zl6vZ3slzAdhSiBSADE1WP+wxHUx5Q//djCOT7ksgPjuyLXJFgvtESHce4x15n3lGx
	/siIBMRRxjMNJRkpGFZpkRFHczKfUBvMCic9TFWGeFwXnr4EqSi+bKkLzGs8wDPKVcGK7u
	LBVVXtR24qQCVUIyX+4ebhN7AKpjyyo=
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.rednote.net 7CB0CFA268
Authentication-Results: mail.rednote.net; dmarc=pass (p=reject dis=none) header.from=rednote.net
Authentication-Results: mail.rednote.net; spf=pass smtp.mailfrom=rednote.net
Received: (from janina@localhost)
	by opera.rednote.net (8.16.1/8.16.1/Submit) id 17LEJmwt041859;
	Sat, 21 Aug 2021 10:19:48 -0400
Date: Sat, 21 Aug 2021 10:19:48 -0400
From: Janina Sajka <janina@rednote.net>
To: Didier Spaier <didier@slint.fr>
Cc: Samuel Thibault <samuel.thibault@aquilenet.fr>,
        Alexander Epaneshnikov <aarnaarn2@gmail.com>,
        Kelly Prescott <kprescott@coolip.net>, speakup@linux-speakup.org,
        Alexander Epaneshnikov <alex19ep@archlinux.org>
Subject: Re: Archlinux Speakup problems after alsa package upgrade
Message-ID: <YSELhCxsvipjWjxD@rednote.net>
References: <YNMr0Pathc/mqx1L@rednote.net>
 <20210819205617.l76b7fxume3lrf67@begin>
 <20210820152606.r5nznst2t5532th3@alex-pc>
 <20210820155212.rlj4addvh726cgbb@begin>
 <YSDtfiv5yYy/FfQq@rednote.net>
 <20210821121814.vbyw4vxysowqf7as@begin>
 <YSD2SHLJ+hWMEj7Z@rednote.net>
 <1a2514f9-d6cc-7aa2-2e6f-890a1ef76e1b@slint.fr>
 <YSEAz0j7+gy2WNk9@rednote.net>
 <59ee45f7-ffcb-545a-e6ff-4e7c57caa155@slint.fr>
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
In-Reply-To: <59ee45f7-ffcb-545a-e6ff-4e7c57caa155@slint.fr>
X-Operating-System: Linux opera.rednote.net 5.13.12-200.fc34.x86_64
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

My bad about the time delay. I may simply have confused myself over what
machine I was talking to. I have a 4 port KVM and I'm forever giving
NVDA commands to my Mac, VoiceOver commands to my Linux, Orca commands
to my Windws, etc ... Sorry.

If the espeakup service is stopped, the by hand start via -d does start
it, and it's fine across all consoles. But, there are also no errors in
the root console.

Any other suggestions much appreciated. And, I'll promise to be extra
careful what machine I'm talking to!

Janina

Didier Spaier writes:
> I don't know. Why it work only after some amount of time is beyond me.
> 
> Didier
> 
> Le 21/08/2021 à 15:34, Janina Sajka a écrit :
> > Hmmm, now it's working. I never did reboot. I switched to the minuet
> > machine with my kvm and found espeakup working. I still see no error
> > neither on the root console, which has not returned after the by hand
> > start with -d, nor via the ssh from the concerto machine.
> > 
> > So, it seems it will work after some amount of time?
> > 
> > 
> > Didier Spaier writes:
> > > Hi Janina,
> > > 
> > > You are not running this command as regular user, are you?
> > > 
> > > Best,
> > > 
> > > Didier
> > > 
> > > [fist sent privately my mistake, sorry]
> > > 
> > > Le 21/08/2021 à 14:49, Janina Sajka a écrit :
> > > > Hi, Samuel:
> > > > 
> > > > espeakup -d gives me:
> > > > 
> > > > Unable to open the softsynth device: Permission denied
> > > > 
> > > > Best,
> > > > 
> > > > Janina
> > > > 
> > > > Samuel Thibault writes:
> > > > > Janina Sajka, le sam. 21 août 2021 08:11:42 -0400, a ecrit:
> > > > > > I have confirmed my audio devices can aplay without problems, but no joy
> > > > > > from espeakup.
> > > > > 
> > > > > Would you be able to run espeakup by hand with the -d flag? That'll dump
> > > > > the alsa errors and whatnot.
> > > > > 
> > > > > Samuel
> > > > 
> > 

-- 

Janina Sajka
https://linkedin.com/in/jsajka

Linux Foundation Fellow
Executive Chair, Accessibility Workgroup:	http://a11y.org

The World Wide Web Consortium (W3C), Web Accessibility Initiative (WAI)
Co-Chair, Accessible Platform Architectures	http://www.w3.org/wai/apa


