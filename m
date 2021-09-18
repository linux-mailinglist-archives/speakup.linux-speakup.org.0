Return-Path: <speakup+bounces-286-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 05B1D4106A6
	for <lists+speakup@lfdr.de>; Sat, 18 Sep 2021 15:10:18 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="key not found in DNS" header.d=rednote.net header.i=@rednote.net header.a=rsa-sha256 header.s=dkim header.b=Dt9EdBlM;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 322853811B6; Sat, 18 Sep 2021 09:10:16 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 1CCA7380907
	for <lists+speakup@lfdr.de>; Sat, 18 Sep 2021 09:10:16 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 08B64380BA1; Sat, 18 Sep 2021 09:10:10 -0400 (EDT)
Received: from mail.rednote.net (opera.rednote.net [66.228.34.147])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 8B250380907
	for <speakup@linux-speakup.org>; Sat, 18 Sep 2021 09:10:09 -0400 (EDT)
Received: from opera.rednote.net (localhost [IPv6:::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.rednote.net (Postfix) with ESMTPS id C48F3FA657
	for <speakup@linux-speakup.org>; Sat, 18 Sep 2021 09:10:05 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rednote.net; s=dkim;
	t=1631970605;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=VO65i8W88p0z0Mpr0qhgo4zbAldnv7ikIhxiL5veEe4=;
	b=Dt9EdBlMPyKzUcm8y2DPTIcbXyLZKmXgHv/X7+BArJuFvSucYFN0+0jInRIkuN8rgwLoBu
	RW8NNYy+kL1HsCM2Be0Ao1/hN+kukfVrP3KH9ObVleO1FLEzeZ4BmLeEADYsKUC3cYgIl5
	CXbWUO2qz0VBH16czI5MfQJsP/j5s6E=
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.rednote.net C48F3FA657
Authentication-Results: mail.rednote.net; dmarc=pass (p=reject dis=none) header.from=rednote.net
Authentication-Results: mail.rednote.net; spf=pass smtp.mailfrom=rednote.net
Received: (from janina@localhost)
	by opera.rednote.net (8.16.1/8.16.1/Submit) id 18IDA5Zt006941
	for speakup@linux-speakup.org; Sat, 18 Sep 2021 09:10:05 -0400
Date: Sat, 18 Sep 2021 09:10:05 -0400
From: Janina Sajka <janina@rednote.net>
To: speakup@linux-speakup.org
Subject: Re: Broken espeakup on debian sid
Message-ID: <YUXlLephhiYuV4UA@rednote.net>
References: <74614290-2cb8-c5a7-91e9-e639a673464a@reisers.ca>
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
In-Reply-To: <74614290-2cb8-c5a7-91e9-e639a673464a@reisers.ca>
X-Operating-System: Linux opera.rednote.net 5.13.16-200.fc34.x86_64
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi, Kirk:

I'm on Arch, not Debian, but I've had broken Espeakup ever since
alsa-lib-1.2.5 showed up. Since then Espeakup has been upversioned to
0.90, but this has not fixed things for me, though apparently it has for
Alexander now maintaning Espeakup.

I currently have two functional Linux machines, both fully upgraded as
of just about half an hour ago except as described below.

The newer hardware will run by hand with the command: 'espeakup -d', but
it's highly brittle and prone to crash the system so that a three finger
salute is needed.

If I want console access on this 2020 era box, I have to turn to fenrir,
which I'm just not as comfortable with--but that's another story.

My older machine is prevented by my /etc/pacman.conf from updating
alsa-lib and espeakup, and it runs just fine. 

So, my suggestion is back off to the latest alsa-lib-1.2.4, and the
latest espeakup-0.8 you have, and you should be fine until someone
figures out what's really going on.

For anyone running Arch you want the following in your /etc/pacman.conf:

IgnorePkg   =espeakup
IgnorePkg   =alsa-lib

If you've already updated your Arch beyond these versions, you can
downgrade. You'll find a cache of previous versions in:

/var/cache/pacman/pkg/
Just cd on over there as root and check what you have with a command
like:

ls -1 alsa-lib* espeakup*

You can then downversion with pacman like this:

pacman -U ./[filename]

where [filename] is the full name you got from ls. I recommend using the
Speakup clipboard to get the command right.

Best,

Janina


Kirk Reiser writes:
> Hi folks: Does anyone have espeakup running on debian sid with
> libasound2 1.2.5? After I upgraded a few days ago I lost my speech
> output. I have built espeakup and espeak-ng from the current repo on
> them with no joy either.
> 
> Curious minds and all that type thing.
> 
>   Kirk
> 

-- 

Janina Sajka
https://linkedin.com/in/jsajka

Linux Foundation Fellow
Executive Chair, Accessibility Workgroup:	http://a11y.org

The World Wide Web Consortium (W3C), Web Accessibility Initiative (WAI)
Co-Chair, Accessible Platform Architectures	http://www.w3.org/wai/apa


