Return-Path: <speakup+bounces-1502-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 1F9EED33048
	for <lists+speakup@lfdr.de>; Fri, 16 Jan 2026 16:03:45 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=a11y.nyc header.i=@a11y.nyc header.a=rsa-sha256 header.s=dkim header.b=qvpnGaU3;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 8E09A381951; Fri, 16 Jan 2026 09:54:44 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 6F9DC3817DC
	for <lists+speakup@lfdr.de>; Fri, 16 Jan 2026 09:54:44 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 7F26E3817F9; Fri, 16 Jan 2026 09:54:38 -0500 (EST)
Received: from a11y.nyc (opera.a11y.nyc [66.228.34.147])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 0FFBE3817D8
	for <speakup@linux-speakup.org>; Fri, 16 Jan 2026 09:54:38 -0500 (EST)
Received: from opera.a11y.nyc (localhost [IPv6:::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by a11y.nyc (Postfix) with ESMTPS id 9C8C2FA0D2
	for <speakup@linux-speakup.org>; Fri, 16 Jan 2026 09:54:35 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=a11y.nyc; s=dkim;
	t=1768575275;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=xMQDR+il+55vPJHfE2t8KqFz/IElaxwhOkr/pqN8sJU=;
	b=qvpnGaU3APsNKpZf0rbYuE33SkUNomu+EbihRx7b9q8ayMD8pWv5K4FYKmRh+GhxFKHe6M
	3jKxyIBG09SYGH1rrN3sXGoofiAryFTGWzLyHZnJbRL3RCAvkoL6/S39BTjWnLkPxAdnU9
	6zRxRnRwCfS3hKJHA9U8BdSaCI1O+KI=
DMARC-Filter: OpenDMARC Filter v1.4.2 a11y.nyc 9C8C2FA0D2
Authentication-Results: a11y.nyc; dmarc=pass (p=reject dis=none) header.from=a11y.nyc
Authentication-Results: a11y.nyc; spf=pass smtp.mailfrom=a11y.nyc
Received: (from janina@localhost)
	by opera.a11y.nyc (8.18.1/8.16.1/Submit) id 60GEsYD8408199
	for speakup@linux-speakup.org; Fri, 16 Jan 2026 09:54:34 -0500
Date: Fri, 16 Jan 2026 09:54:34 -0500
From: Janina Sajka <janina@a11y.nyc>
To: speakup@linux-speakup.org
Subject: Espeakup & Espeak Upgrades Broke Latency
Message-ID: <aWpRKvcLNxlSLfbU@A11y.NYC>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux." <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Operating-System: Linux opera.a11y.nyc 6.18.3-100.fc42.x86_64
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi All:

For some years I've been on Espeakup 0.8, avoiding upgrades because
upgrades failed to get speech working
properly, either with Espeak or Espeak-ng. Meanwhile, Speakup was
working brilliantly with the older Espeakup/Espeak version, so I had
left welll enough alone.

Until this last week. I decided to try again. To my surprise and delight
I now have Espeak-NG and Espeakup fully updated. Almost everything is
fine--except for Speakup's shut up commands! Not stopping speech
sufficiently quickly is a very big deal, as we all know.

I'm using a wired USB keyboard. Ctrl might shut speech up immediately,
or it might take a second or so. Numpad enter is the same. Maybe it
works as it should, but maybe it's very laggy. Likewise the various
numpad screen review keys. Same story all around.

My first instinct was to return everything to previous versions, because
laser quick shutup is that important. Unfortunately, restoring the old
didn't fix things. I have the same behavior, regardless whether I'm on
Espeak or Espeak-NG, and regardless the version of Espeakup.

So, what might possibly be the story here? Needless to say I want
Speakup's brilliant responsiveness back. But what's broken? And how to
fix?

All suggestions most welcome and greatly appreciated!

Best,
Janina

-- 

Janina Sajka (she/her/hers)
Accessibility Consultant https://linkedin.com/in/jsajka

The World Wide Web Consortium (W3C), Web Accessibility Initiative (WAI)
Co-Chair, Accessible Platform Architectures	http://www.w3.org/wai/apa

Linux Foundation Fellow
https://www.linuxfoundation.org/board-of-directors-2/


