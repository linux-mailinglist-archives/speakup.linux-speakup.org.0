Return-Path: <speakup+bounces-1091-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 0884987B544
	for <lists+speakup@lfdr.de>; Thu, 14 Mar 2024 00:37:07 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; secure) header.d=jasonjgw.net header.i=@jasonjgw.net header.a=rsa-sha256 header.s=mail header.b=YMFuae5w;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 2E3EC3825C1; Wed, 13 Mar 2024 19:37:05 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 0C16D3820C4
	for <lists+speakup@lfdr.de>; Wed, 13 Mar 2024 19:37:05 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 7118838251A; Wed, 13 Mar 2024 19:36:57 -0400 (EDT)
Received: from svr.jasonjgw.net (svr.jasonjgw.net [192.155.90.172])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 3295E3820C4
	for <speakup@linux-speakup.org>; Wed, 13 Mar 2024 19:36:57 -0400 (EDT)
Received: from jpw.jasonjgw.net (jpw.jasonjgw.net [10.0.2.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (secp384r1) server-digest SHA384)
	(Client did not present a certificate)
	by svr.jasonjgw.net (Postfix) with ESMTPSA id 450BE3204B
	for <speakup@linux-speakup.org>; Wed, 13 Mar 2024 23:36:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jasonjgw.net;
	s=mail; t=1710372984;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=kbrmPrBWoNI5CF4eEA8WZ5rPX6Imn3nC+g/lOzKo1BI=;
	b=YMFuae5wSpCOr235V1ruYgt9AgmlaRTOp3EFyRkk9EtFUobQv7KIoE3++JyH/pJU8BhSIC
	SaEnKDSJc/1/KMf34FG2LAwV60IOn/PocFgyxoGZbwMIwtsRnVtoe6PGT5LS413ApBZ4ee
	ho18qGty7AykKimV5TwwtOxbA+6tNM5sQD9zg+itQsni6PCYr1kIETuNgNQ/y8EzGBxdrQ
	B66PUS9dVzHfaTNTIPs4GdT8ysbcCk9Tu/3Wcb4HiCx9pfg45nAVhzsFMgqVks6+g4cpmo
	0HZWMCf77feaZe86w8wx9OoM0sEkEaEYdGaCUPnd+/mdYBYbIUrRW+/hm3E80A==
Date: Wed, 13 Mar 2024 19:36:23 -0400
From: "Jason J.G. White" <jason@jasonjgw.net>
To: speakup@linux-speakup.org
Subject: Re: UTF-8 encoding of i18n files?
Message-ID: <ZfI4d-NIzgmlGucZ@jpw.jasonjgw.net>
References: <20240312224254.umw3ezrolerdu4yf@begin>
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
In-Reply-To: <20240312224254.umw3ezrolerdu4yf@begin>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Samuel Thibault <samuel.thibault@ens-lyon.org> wrote:
 
> i18n files are currently encoded in latin1 (aka iso-8859-1), which poses
> problem for various languages whose characters cannot be encoded that
> way.  We could duplicate the i18n entries, one in latin1 and one in
> utf-8, but it will probably be much simpler to just switch the i18n
> files to utf-8 and be done? Would anybody be against this?

I'm in support, especially if you can run iconv or a similar tool to
convert the existing translations without loss.

