Return-Path: <speakup+bounces-313-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 7CBF041FDB0
	for <lists+speakup@lfdr.de>; Sat,  2 Oct 2021 20:24:15 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="key not found in DNS" header.d=rednote.net header.i=@rednote.net header.a=rsa-sha256 header.s=dkim header.b=oXSEFVPv;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 3EE7238119C; Sat,  2 Oct 2021 14:24:14 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 1FE95380A88
	for <lists+speakup@lfdr.de>; Sat,  2 Oct 2021 14:24:14 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 95416380BA2; Sat,  2 Oct 2021 14:24:08 -0400 (EDT)
Received: from mail.rednote.net (opera.rednote.net [66.228.34.147])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 6FF7A3805F1
	for <speakup@linux-speakup.org>; Sat,  2 Oct 2021 14:24:07 -0400 (EDT)
Received: from opera.rednote.net (localhost [IPv6:::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.rednote.net (Postfix) with ESMTPS id 56CE8FA268
	for <speakup@linux-speakup.org>; Sat,  2 Oct 2021 14:24:05 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rednote.net; s=dkim;
	t=1633199045;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=fDegoERA0MygwXGIwhSyeAEYXL3QsaKRWRETCHZtQds=;
	b=oXSEFVPvpLQqi/nSdKoU9QdB7ZDKFy41zZY2Dg7BlQGT0bOyDll7knpewcmC+X0GSVfYyb
	6GaKU1mNZbsPVEJ54Oz2jUtW5QwLixbvkGI/xAJMqYkKjLHn1l8q1VLM17TVOU4d61PgbD
	xjLv2a+eEIKWfUcJ45eZBn8ATfpnD54=
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.rednote.net 56CE8FA268
Authentication-Results: mail.rednote.net; dmarc=pass (p=reject dis=none) header.from=rednote.net
Authentication-Results: mail.rednote.net; spf=pass smtp.mailfrom=rednote.net
Received: (from janina@localhost)
	by opera.rednote.net (8.16.1/8.16.1/Submit) id 192IO5V3016421
	for speakup@linux-speakup.org; Sat, 2 Oct 2021 14:24:05 -0400
Date: Sat, 2 Oct 2021 14:24:05 -0400
From: Janina Sajka <janina@rednote.net>
To: speakup@linux-speakup.org
Subject: Beware: Latest alsa-utils breaks audio
Message-ID: <YVijxYMqVwRfh9Kv@rednote.net>
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
X-Operating-System: Linux opera.rednote.net 5.14.9-200.fc34.x86_64
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi, All:

Maybe this won't apply on your Linux distro, but on Arch, where I ran my
customary Saturday upgrades, I find the latest alsa-utils package breaks
audio. It doesn't just break it once. It breaks it every time you
reboot. So, a word to the wise, and all that ...

Here the details ...

alsa-utils 1.2.5.1-1

is setting Master Volume to 0 and Master Volume Switch to off on all devices,.


No real problem you think? Just run:

amixer -c3 controls |grep -i master

to find the numid and fix the issue? Nah, won't work!

mixer -c3 controls
ALSA lib conf.c:5200:(snd_config_expand) Unknown parameters 3
ALSA lib control.c:1471:(snd_ctl_open_noupdate) Invalid CTL sysdefault:3
amixer: Control sysdefault:3 open error: Invalid argument

Fortunately, if you happen to remember the relevant numid for your
default card, you can actually reset your volume. On my default sound
device, the relevant values are 33 for the switch, and 32 for the volume
slider, so I was at least able to get one device working.

Sheesh, what a nuisance. This happens every few weeks/months, whether we
need it or not.

I mean, how radical do we expect the world to be? Allow sound to play?
That's preposterous! Why, that would be like displaying boot messages
and a login prompt on any screen connected during the boot process!
Nobody does that, right? How friggen insecure!

Janina


-- 

Janina Sajka
https://linkedin.com/in/jsajka

Linux Foundation Fellow
Executive Chair, Accessibility Workgroup:	http://a11y.org

The World Wide Web Consortium (W3C), Web Accessibility Initiative (WAI)
Co-Chair, Accessible Platform Architectures	http://www.w3.org/wai/apa


