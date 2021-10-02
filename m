Return-Path: <speakup+bounces-317-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 6061B41FDFD
	for <lists+speakup@lfdr.de>; Sat,  2 Oct 2021 22:05:29 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; secure) header.d=jasonjgw.net header.i=@jasonjgw.net header.a=rsa-sha256 header.s=mail header.b=rORceWjI;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id E81303811A3; Sat,  2 Oct 2021 16:05:28 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id D3983380A7B
	for <lists+speakup@lfdr.de>; Sat,  2 Oct 2021 16:05:28 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 2F3D9380BA2; Sat,  2 Oct 2021 16:05:23 -0400 (EDT)
Received: from svr.jasonjgw.net (svr.jasonjgw.net [192.155.90.172])
	by befuddled.reisers.ca (Postfix) with ESMTPS id DA9F8380A7B
	for <speakup@linux-speakup.org>; Sat,  2 Oct 2021 16:05:22 -0400 (EDT)
Received: from jpw.jasonjgw.net (unknown [10.0.2.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(Client did not present a certificate)
	by svr.jasonjgw.net (Postfix) with ESMTPSA id DCC7232299
	for <speakup@linux-speakup.org>; Sat,  2 Oct 2021 20:05:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jasonjgw.net;
	s=mail; t=1633205121;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=Lo+OXc0uS5uJwxwFlUow1p0zHOpfNAyJoblvDsKM5fQ=;
	b=rORceWjIExBVi2EFPDfT/eTIwV3V5hpLd3zlgDDmjNIP5ckxos8iAGty09GntajYbvz1Kt
	ThvgS29gLGokjHJ/BqUoxYG1f4Ld3U8+AI0PXqSjTlSuuEkyvWgYucmnPsxtWE/UQD/TDr
	6BwySGrq3G0TipCmNJ30Fn2Lyx2IZh1xVUk2CxzdgH/kj2NnsnhWRSklwySwU3qPPi5+NZ
	9ugNOg7nyzgsrF6DiRRNwTqKYdToTSRyrE51J9BThIGGGMsezSIHmJQMnGql81qsglXybd
	0lDOt5qfpC5C4X/k9ng0es/QTuf78ApfGxqLbt94cPg8xyKnBhbGgqs+lNDfBw==
Date: Sat, 2 Oct 2021 16:05:20 -0400
From: Jason White <jason@jasonjgw.net>
To: speakup@linux-speakup.org
Subject: Re: Beware: Latest alsa-utils breaks audio
Message-ID: <YVi7gFGb7XpoSpma@jpw.jasonjgw.net>
References: <YVijxYMqVwRfh9Kv@rednote.net>
 <m3k0ivxmb9.wl-covici@ccs.covici.com>
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
In-Reply-To: <m3k0ivxmb9.wl-covici@ccs.covici.com>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

John Covici <covici@ccs.covici.com> wrote:
> Yep, happened to me in gentoo, downgraded, I hope  they fix soon.


Interestingly, I'm running Arch and I haven't encountered this issue at
all.

I don't know whether it's related to the audio devices I'm using or to
the fact that I have PulseAudio running.

I'm interested in upgrading to Pipewire, but unfortunately I'll need
some configuration or debugging assistance. When I last tried it, Orca
worked as expected, but running espeak-ng from the shell or using
Emacspeak (which does essentially the same library calls, I think) would
speak the first utterance and then remain silent.


