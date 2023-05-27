Return-Path: <speakup+bounces-930-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 8EEC17132D5
	for <lists+speakup@lfdr.de>; Sat, 27 May 2023 08:42:52 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; secure) header.d=rednote.net header.i=@rednote.net header.a=rsa-sha256 header.s=dkim header.b=TbQ8opWC;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 37C4D382474; Sat, 27 May 2023 02:42:51 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 148EE38233E
	for <lists+speakup@lfdr.de>; Sat, 27 May 2023 02:42:51 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id D487E38238C; Sat, 27 May 2023 02:42:41 -0400 (EDT)
Received: from mail.rednote.net (opera.rednote.net [66.228.34.147])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 0D01A380F1C
	for <speakup@linux-speakup.org>; Sat, 27 May 2023 02:42:41 -0400 (EDT)
Received: from opera.rednote.net (localhost [IPv6:::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by mail.rednote.net (Postfix) with ESMTPS id 68E75FA191
	for <speakup@linux-speakup.org>; Sat, 27 May 2023 02:42:08 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rednote.net; s=dkim;
	t=1685169728;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=+IcI/GOSBu3DRD6J9PGtJDG6HUr1Potk0k3nzSW0GNU=;
	b=TbQ8opWChd1zInhJsN9RBHYN8OmHVDuI7jWiLsZ7mpamhStYDWLCseCa3vbyqhjg8MAm15
	jX0Ra30UctcNnEYPebp4KMHcjyoFXpZJx+9uvc5lrFee9IwFFBHRYV0lYWS0vZWEdSDx4d
	1azsVtH/8rn8/0AMKx2Gh5CeAIh7zgQ=
Received: (from janina@localhost)
	by opera.rednote.net (8.17.1/8.16.1/Submit) id 34R6g8hR307727
	for speakup@linux-speakup.org; Sat, 27 May 2023 02:42:08 -0400
Date: Sat, 27 May 2023 02:42:08 -0400
From: Janina Sajka <janina@rednote.net>
To: speakup@linux-speakup.org
Subject: Beep on Backspace in Console Sessions
Message-ID: <ZHGmQFwqgliD6p3X@rednote.net>
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
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Dear All:

I'm wondering whether it's still supported in alsa?

Yes, in ancient history, with speakers in the computer case just for a
beep on backspace, the old pcskpr module did the trick.

Then those speakers disappeared, but alsa-lib gave us an snd-beep module
(as I recall). I'm not finding that module these days, and I'm wondering
wheter it's just not getting compiled for some reason? Or has it really
been dropped.

I know most fot the sighted world hates that beep on backspace. That's
partly why it's quite hard to google for this question. I don't mind if
it's off by default, but it should be something those of us who find it
beneficial should be able to turn on, imo.

Anyone know.

Janina

-- 

Janina Sajka (she/her/hers)
Accessibility Consultant https://linkedin.com/in/jsajka

The World Wide Web Consortium (W3C), Web Accessibility Initiative (WAI)
Co-Chair, Accessible Platform Architectures	http://www.w3.org/wai/apa

Linux Foundation Fellow
https://www.linuxfoundation.org/board-of-directors-2/


