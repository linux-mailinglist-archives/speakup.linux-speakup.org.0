Return-Path: <speakup+bounces-1021-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id DCF9B75A2D6
	for <lists+speakup@lfdr.de>; Thu, 20 Jul 2023 01:29:16 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=jookia.org header.i=@jookia.org header.a=rsa-sha256 header.s=key1 header.b=L4b68Z06;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 9E43638256B; Wed, 19 Jul 2023 19:29:15 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 7E81538243D
	for <lists+speakup@lfdr.de>; Wed, 19 Jul 2023 19:29:15 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id C536D382445; Wed, 19 Jul 2023 19:29:07 -0400 (EDT)
Received: from out-47.mta1.migadu.com (out-47.mta1.migadu.com [95.215.58.47])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 6F10F38234B
	for <speakup@linux-speakup.org>; Wed, 19 Jul 2023 19:29:06 -0400 (EDT)
Date: Thu, 20 Jul 2023 09:28:10 +1000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1689809307;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=yvWg11iA24mwlWWSk0rTug0YUjjIirSxunC+j3K6qRc=;
	b=L4b68Z06+VN8f3k5m3E1amPClxF/piboV9I1Z/vv8x+MrMs17buEqzSYsgDRFGO4s/qzJo
	qvxEKaC8ZeTA1K702bbXHl3thnCPEkO02S+E5dOpluaGfFmcH2UQG0guDNrOJf/Tl2qu8q
	mHBaV61a/VLk9e4wbl7ckrusbwSguOc/Rzw4haNtw2xPgXmIyDj4iNMx8OyTUrX3b5ecHt
	fXigEhIjHRzopOty4p11w90Dp55QGNq/AOzQAmMUjbsQTRRJR5WmiRAEVf2a/Csx4Av97g
	431TLtDFmu40BKCOxgbOzXs9hn0SVfN5TwdelEwjgwzRIXU2Trg/vyG57Dm7aQ==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Jookia <contact@jookia.org>
To: Karen Lewellen <klewellen@shellworld.net>
Cc: John Covici <covici@ccs.covici.com>,
	"Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: sort of ot: what causes this issue?
Message-ID: <ZLhxip9u1Z_8RMvx@titan>
References: <Pine.LNX.4.64.2307190655310.1206822@users.shellworld.net>
 <m3y1jcdu3l.wl-covici@ccs.covici.com>
 <Pine.LNX.4.64.2307190821260.1207890@users.shellworld.net>
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
In-Reply-To: <Pine.LNX.4.64.2307190821260.1207890@users.shellworld.net>
X-Migadu-Flow: FLOW_OUT
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Try changing the power supply of the device, maybe this new place has power
spikes that it can't handle.

On Wed, Jul 19, 2023 at 08:25:10AM -0400, Karen Lewellen wrote:
> What has been happening since I moved is that, say after a power change
> happen sup stairs, I will first get a spike in pitch,

