Return-Path: <speakup+bounces-733-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 353E15AA3D9
	for <lists+speakup@lfdr.de>; Fri,  2 Sep 2022 01:42:38 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=j/51RFXr;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 41DC63805F9; Thu,  1 Sep 2022 19:42:37 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 23170380335
	for <lists+speakup@lfdr.de>; Thu,  1 Sep 2022 19:42:37 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 635D1380337; Thu,  1 Sep 2022 19:42:28 -0400 (EDT)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 3A288380334
	for <speakup@linux-speakup.org>; Thu,  1 Sep 2022 19:42:28 -0400 (EDT)
Received: from vbox.gregn.net (unknown [172.56.80.28])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by vserver.gregn.net (Postfix) with ESMTPSA id 0FD611325;
	Thu,  1 Sep 2022 16:42:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gregn.net; s=default;
	t=1662075747; bh=jY7efs1vrXtI2DRHdyKJqyT570mdHZkY7Fc9T/tTu/Q=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=j/51RFXrtfG86VOGtlMHRMA6p3sGIdGBgOczC1HgsJZr6lhw2xFrmc/dPVIfpjHLK
	 vXbMA9E/GPXL7UOM9rhTHriyZjO+0xkPd4IHYn1KwnBY2OQc++zXcDJ10gicckBFRm
	 QRDd88n3avUOVy5FEerIWA3JPPx6104KwkHhGVL8vETgiKazDf1YRa8gQ7bsbuQy9L
	 OQilr1l5Iy90bcowxinr8O7K81TmWBwRYByNpha4RKV1e8rExkmrLMNqG6ld/+Kul9
	 WnlXtnK+MF+Lnr9CLabuL3WDBQ4PD+PndWD4xriNrTjFqMLCk8Rji8kn6gejJazyMn
	 kxA7C3YMw5MaA==
Received: by vbox.gregn.net (Postfix, from userid 1000)
	id 34BEFC22D; Thu,  1 Sep 2022 16:42:53 -0700 (MST)
Date: Thu, 1 Sep 2022 16:42:53 -0700
From: Gregory Nowak <greg@gregn.net>
To: Chime Hart <chime@hubert-humphrey.com>
Cc: speakup@linux-speakup.org
Subject: Re: Can I Have A Speakup Kee Map with Voice-Over on a Mac?
Message-ID: <YxFDfYuG2MxGc2H0@gregn.net>
References: <181f82aa-a2fe-8f0e-07c0-6daf95300a51@hubert-humphrey.com>
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
In-Reply-To: <181f82aa-a2fe-8f0e-07c0-6daf95300a51@hubert-humphrey.com>
X-PGP-Key: http://www.gregn.net/pubkey.asc
X-Virus-Scanned: clamav-milter 0.103.6 at vserver
X-Virus-Status: Clean
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Sorry to disappoint you chie, but the mac isn't running the linux
kernel:

<https://www.howtogeek.com/441599/is-macos-unix-and-what-does-that-mean/>

As for if you could make voice-over have a speakup keymap, that's
something a voice-over user will have to answer.

Greg


On Thu, Sep 01, 2022 at 10:20:48AM -0700, Chime Hart wrote:
> Hi All: I will eventually try-and-signup for classes at an Apple
> store-and-see if I can learn a Mac? Thing is, probably my favorite Speakup
> function is flat-review, which NVDA also has, but if the Mac has it, it may
> be complicated, as many items require 3 keystrokes to accomplish, although I
> understand there are ways of reducing those to 2. Since Voice-Over has many
> options of voices-and-in its graphical site it might be more friendly than
> ORCA. Sure many times I would want to use its Linux prompt. With a fact of
> Speakup in the kernel, I just wonder how much lee way I have in integrating
> the best of both worlds? Thanks so much in advance
> Chime
> 

-- 
web site: http://www.gregn.net
gpg public key: http://www.gregn.net/pubkey.asc
skype: gregn1
(authorization required, add me to your contacts list first)
If we haven't been in touch before, e-mail me before adding me to your contacts.

--
Free domains: http://www.eu.org/ or mail dns-manager@EU.org

