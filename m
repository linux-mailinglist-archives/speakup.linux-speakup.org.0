Return-Path: <speakup+bounces-1378-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 91C15B87513
	for <lists+speakup@lfdr.de>; Fri, 19 Sep 2025 01:02:40 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=Jck81oPG;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id BBB9C382A72; Thu, 18 Sep 2025 19:02:28 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 9CC80382740
	for <lists+speakup@lfdr.de>; Thu, 18 Sep 2025 19:02:28 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 66502382727; Thu, 18 Sep 2025 19:02:21 -0400 (EDT)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 3DAC03820AF
	for <speakup@linux-speakup.org>; Thu, 18 Sep 2025 19:02:21 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gregn.net; s=default;
	t=1758236537; bh=xVIKrG/KFDpLBCw7wX97OTdV2dfbiZ9iBBxcmo8RXks=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Jck81oPGnSm9D1MIyk+qvSgZi921ezbckug+Rjsxip1do83g+AH68wGPKWcQTxs90
	 jnUwo7PtiIqZ5MkXgs+hJKLlH09xtZ3ZaMzekgkn6iio5lPY9TO6zJBZgpsh/k62rD
	 TyagX2TeFbRL7xpLgjc57EAwGHCMci8c1z/8CVqfwjf0QGkAg55FE7qFUYUFwMrt57
	 LBO8w4TyRuGHJ0JYM/bkPXQXXu0Qbev80V/tQTzsgJuGuzhnkGJ//ejCwZwUSflif1
	 HfWlBIzEk/cbpVEU7gaz36N8YaQJ/rso7Ho9u4KoFpavE00FLIqXAehP6CrtOBoWCF
	 ca39sMplXCHWQ==
Received: from vbox.gregn.net (unknown [IPv6:2607:fb90:2d83:ca53:2fe7:96fe:781c:59ef])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (secp384r1) server-digest SHA384)
	(No client certificate requested)
	by vserver.gregn.net (Postfix) with ESMTPSA id 3341A15C5;
	Thu, 18 Sep 2025 16:02:17 -0700 (PDT)
Received: by vbox.gregn.net (Postfix, from userid 1000)
	id 8AC7CC1A1; Thu, 18 Sep 2025 16:02:16 -0700 (MST)
Date: Thu, 18 Sep 2025 16:02:16 -0700
From: Gregory Nowak <greg@gregn.net>
To: Butch Bussen <butchb@shellworld.net>
Cc: Rudy Vener <salt@panix.com>, speakup@linux-speakup.org
Subject: Re: Question about blind CLI use (was Re: "your browser is not
 supported anymore" ...)
Message-ID: <aMyPeEnybDhoh9rD@gregn.net>
References: <aMOwSwrEWTBtFn60@titan>
 <45100fe1-7400-688a-c7fc-7eae1f81ef2b@hubert-humphrey.com>
 <aMsF4T_1FAbaFEHz@titan>
 <aMsboMhBL4klsYZD@panix.com>
 <Pine.LNX.4.64.2509171823280.3962820@users.shellworld.net>
 <aMs6TdEMXhkXkkJP@titan>
 <Pine.LNX.4.64.2509171937230.3963832@users.shellworld.net>
 <17e1af06-81a0-40c3-a0df-19bab0242cfe@crosslink.net>
 <aMt2KmWOCT_waaDM@panix.com>
 <Pine.LNX.4.64.2509180709190.3974788@users.shellworld.net>
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
In-Reply-To: <Pine.LNX.4.64.2509180709190.3974788@users.shellworld.net>
X-PGP-Key: http://www.gregn.net/pubkey.asc
X-Virus-Scanned: clamav-milter 1.0.9 at vserver
X-Virus-Status: Clean
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

I got curious enough to dig into this, and what I found should settle
the question. The way back machine is awesome!

<http://web.archive.org/web/19970709101821/http://www.gwmicro.com/vocaleye.htm>

From the System Requirements section:

"- Vocal-Eyes is not copy protected."

There are other captures of the vocal-eyes page until 2001 (when it
was last updated) and beyond,
which state the same thing. 

Greg


On Thu, Sep 18, 2025 at 07:09:54AM -0700, Butch Bussen wrote:
> I've used vocal eyes for years and still do.  I don't recall it putting name
> ad serial number on the screen.  It just runs.


-- 
web site: http://www.gregn.net
gpg public key: http://www.gregn.net/pubkey.asc

--
Free domains: http://www.eu.org/ or mail dns-manager@EU.org

