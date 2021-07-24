Return-Path: <speakup+bounces-254-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 9B0743D47F5
	for <lists+speakup@lfdr.de>; Sat, 24 Jul 2021 15:48:28 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 178E3380F3A; Sat, 24 Jul 2021 09:48:28 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="key not found in DNS" header.d=rednote.net header.i=@rednote.net header.a=rsa-sha256 header.s=dkim header.b=KnWke/NI;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 0302C380AF9
	for <lists+speakup@lfdr.de>; Sat, 24 Jul 2021 09:48:28 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 4CC25380B33; Sat, 24 Jul 2021 09:48:22 -0400 (EDT)
Received: from mail.rednote.net (opera.rednote.net [66.228.34.147])
	by befuddled.reisers.ca (Postfix) with ESMTPS id E4DC1380AF9
	for <speakup@linux-speakup.org>; Sat, 24 Jul 2021 09:48:21 -0400 (EDT)
Received: from rednote.net (localhost [IPv6:::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.rednote.net (Postfix) with ESMTPS id 446D0FA2D0;
	Sat, 24 Jul 2021 09:48:18 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rednote.net; s=dkim;
	t=1627134498;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=Xj/xcRTkP+lf2hrX1xB1aZob6IvkYXo0TI8G34XTAxI=;
	b=KnWke/NIi0J0+OUkyjJjb6bPCVtiYqAKlaOkTh1K4ePdh9JV7iZ3OzPOhu1HurN5ZPuZ3C
	BKnyPy2W1oM7gYWcygLTkJ4Z6mvAGfYe5XjvDC4GlPd9SiBcpXw3QA7U4nvYU0V98YuCR4
	yQhTjfLnPUpGuGBwt7lHaAKWxV7AIFQ=
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.rednote.net 446D0FA2D0
Authentication-Results: mail.rednote.net; dmarc=pass (p=reject dis=none) header.from=rednote.net
Authentication-Results: mail.rednote.net; spf=pass smtp.mailfrom=rednote.net
Received: (from janina@localhost)
	by rednote.net (8.16.1/8.16.1/Submit) id 16ODmHcS006851;
	Sat, 24 Jul 2021 09:48:17 -0400
Date: Sat, 24 Jul 2021 09:48:17 -0400
From: Janina Sajka <janina@rednote.net>
To: "Joseph C. Lininger" <joe@pcdesk.net>
Cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Speakup on Arch Linux
Message-ID: <YPwaIT2oJm+7+Hpl@rednote.net>
References: <c5c14706-16d7-c9bf-9b1e-b72e52b37889@pcdesk.net>
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
In-Reply-To: <c5c14706-16d7-c9bf-9b1e-b72e52b37889@pcdesk.net>
X-Operating-System: Linux opera.rednote.net 5.13.4-100.fc33.x86_64
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

I have two machines running Arch that will not talk with the latest espeakup 
using the latest alsa. I don't know for a fact, but presume there's some
discrepency with pipewire.

Solution/workaround of the moment is to keep alsa-lib, alsa-utils, and
espeakup out of any system updates. I do this in my /etc/pacman.conf
with lines like the following:

IgnorePkg   =espeakup
IgnorePkg   =alsa-lib
IgnorePkg   =alsa-utils

If I slip up and somehow get one of these upgraded, I can downversion by
going to my machine via ssh, becoming root, followed by:

cd /var/cache/pacman/pkg

This cache directory holds previous versions of installed packages, and
you can downversion with a command like:

pacman -U ./alsa-lib-1.2.4-3-x86_64.pkg

The 1.2.4 alsa versions work for me, where the 1.2.5 versions do not.
The 0.9.0 espeakup also doesn't help on either of my machines.

Best,

Janina

Joseph C. Lininger writes:
> Good day all,
> I saw a couple of messages earlier about ALSA issues on Arch Linux with
> espeakup. I can't find them now though. The latest versions of alsa,
> speakup, linux kernel, etc. cause the speach to lag while typing. Is there a
> workaround to this, packages I should not upgrade right now, etc? I can
> revert my system to a previous state, but I need to know how to avoid this
> problem when I go to update packages going forward. Also, anyone know if a
> fix is in the works? Obviously just permanently using older package versions
> isn't a good solution.
> 
> Thanks in advance.
> Joe

-- 

Janina Sajka
https://linkedin.com/in/jsajka

Linux Foundation Fellow
Executive Chair, Accessibility Workgroup:	http://a11y.org

The World Wide Web Consortium (W3C), Web Accessibility Initiative (WAI)
Co-Chair, Accessible Platform Architectures	http://www.w3.org/wai/apa


