Return-Path: <speakup+bounces-1163-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 78D5992E190
	for <lists+speakup@lfdr.de>; Thu, 11 Jul 2024 10:08:35 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=jookia.org header.i=@jookia.org header.a=rsa-sha256 header.s=key1 header.b=HR4gSDs2;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id AB5AC3820E1; Thu, 11 Jul 2024 04:08:34 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 8B533382079
	for <lists+speakup@lfdr.de>; Thu, 11 Jul 2024 04:08:34 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 8AB27382079; Thu, 11 Jul 2024 04:08:27 -0400 (EDT)
Received: from out-183.mta1.migadu.com (out-183.mta1.migadu.com [95.215.58.183])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 83757382068
	for <speakup@linux-speakup.org>; Thu, 11 Jul 2024 04:08:26 -0400 (EDT)
X-Envelope-To: terry@cudneys.ca
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1720685271;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=mHWqIWhnDi6+gcm0V16tCvpAm5QKKy1sPgKamXyZHH4=;
	b=HR4gSDs2lkwyLMrdjwPkESojO2vTqI+St6su5+ux2+SCGvKn2Oo4bIVf4+sqQFOqCh0PK7
	Q8J8t/pVFzICeMzoqgxm20xFTBOVvyRfHuOxU1RGM7zGDZYjG9JYqpRp2U4Ha6aVlJixFT
	jHyMYYv+PFMaaZuYufJux0HHTr6eWtvFcenkWF9leOxTn2jZ8F6TM/d+tYB02ur40mhjKv
	Ygqdp4EBZEdEUPK9+vLBM3/SZHZPQCdjZwqMlfK/W0s3IyLi57uxJx5+MO9BX5ASVEQgRP
	J7I38diH3I8q/jvkg8nfOdEWqYloZe6piE5CGy6xR2QJ86s4RKXNvBRbCMjFzg==
X-Envelope-To: sthibault@debian.org
X-Envelope-To: speakup@linux-speakup.org
Date: Thu, 11 Jul 2024 18:07:31 +1000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Jookia <contact@jookia.org>
To: "Terry D. Cudney" <terry@cudneys.ca>
Cc: Samuel Thibault <sthibault@debian.org>, speakup@linux-speakup.org
Subject: Re: How to enable speech during boot up?
Message-ID: <Zo-Sw4nNqYcOp8c2@titan>
References: <ZoP_ogmiMrg_BtDu@cudneys.ca>
 <20240710232918.hpfxyppxphbgufoy@begin>
 <Zo9Y3m_Yu61vGlHK@cudneys.ca>
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
In-Reply-To: <Zo9Y3m_Yu61vGlHK@cudneys.ca>
X-Migadu-Flow: FLOW_OUT
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hey Terry,

ALSA is the way userspace talks to sound cards: You can open a device,
send some PCM data, and it comes out a physical sound card. You can
change the card's volume, etc.

What it doesn't handle is per-application settings, mixing, loopbacks or
Bluetooth. Tools like PulseAudio and PipeWire solve this problem.

That said, Linux distros (currently?) don't deal well with mixing
applications from different users. There's no easy way to have the
system say something and have a user playing music at the same time. If
anything there's the opposite assumption: A single user gets full access
to the hardware at a given time.

Using ALSA manually with its fairly simple mixer will allow multiple
applications to talk to your sound card, but might break GUI
applications.

Jookia.

On Thu, Jul 11, 2024 at 12:00:30AM -0400, Terry D. Cudney wrote:
>     I'm happy to lose pulseaudio/pipewire et al and use alsa/dmix.
>     
>     Question out of curiosity: What does pulseaudio add; why are  distributions seeming to abandon alsa in favour of pulseaudio?
> 
>     My naive observation is that pulseaudio just adds a lot of complexity...
> 
> 
>     --terry
> 
> -- 
> Name: Terry D. Cudney
> Telephone: 289-488-4882 ext 1
> E-mail: terry@cudneys.ca

