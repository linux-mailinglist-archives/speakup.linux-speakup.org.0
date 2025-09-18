Return-Path: <speakup+bounces-1375-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id A8139B82BE8
	for <lists+speakup@lfdr.de>; Thu, 18 Sep 2025 05:21:20 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=xN/idjEr;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 39F53382BC4; Wed, 17 Sep 2025 23:21:20 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 18E90382B21
	for <lists+speakup@lfdr.de>; Wed, 17 Sep 2025 23:21:20 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id CA150382AE9; Wed, 17 Sep 2025 23:21:12 -0400 (EDT)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
	by befuddled.reisers.ca (Postfix) with ESMTPS id A6AF2382AE5
	for <speakup@linux-speakup.org>; Wed, 17 Sep 2025 23:21:11 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gregn.net; s=default;
	t=1758165667; bh=qSG5Kex+/xIsiR+GQ2is5wz1fGFtD2UWcF7AGH/PhXM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=xN/idjErUeeFWzUsIi78AFEzftlkJeotpkYtBmeaqT/+rzF4JuDnQWF229b3cHBDn
	 J745UzbYm06igupAOeKgLU7MYfdNr8LthfsVkhmt5nnXe/zGVXYCmx4jmR9bRQaxsv
	 f/f1po1jH4aB88rBYKKAEw+9RYMMN+Yymk7nCdOQNPpD5WRhtJxvOVwZErgR4fp3SW
	 BEB2i34LNeBE/QvDhMr177JK4nO/x1T65s/Ea6DjNqnPRDNcbjB8AbVugxt/sPcZ9m
	 UYgDm8bncpPfQp9e+iLQtd3qK1pjJ1GV0L1li1i5SD0veCw0ZIdU3wkYY4w5QGiv2i
	 JVSZHnBo8j+iA==
Received: from vbox.gregn.net (unknown [IPv6:2607:fb90:2d83:ca53:627d:f4a3:95ee:6c6f])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (secp384r1) server-digest SHA384)
	(No client certificate requested)
	by vserver.gregn.net (Postfix) with ESMTPSA id DF7334E5;
	Wed, 17 Sep 2025 20:21:06 -0700 (PDT)
Received: by vbox.gregn.net (Postfix, from userid 1000)
	id 357BDD01D; Wed, 17 Sep 2025 20:21:06 -0700 (MST)
Date: Wed, 17 Sep 2025 20:21:06 -0700
From: Gregory Nowak <greg@gregn.net>
To: Rudy Vener <salt@panix.com>
Cc: speakup@linux-speakup.org
Subject: Re: Question about blind CLI use (was Re: "your browser is not
 supported anymore" ...)
Message-ID: <aMt6onf9OaSbJBeP@gregn.net>
References: <Pine.LNX.4.64.2509120106350.3832376@users.shellworld.net>
 <aMOwSwrEWTBtFn60@titan>
 <45100fe1-7400-688a-c7fc-7eae1f81ef2b@hubert-humphrey.com>
 <aMsF4T_1FAbaFEHz@titan>
 <aMsboMhBL4klsYZD@panix.com>
 <Pine.LNX.4.64.2509171823280.3962820@users.shellworld.net>
 <aMs6TdEMXhkXkkJP@titan>
 <Pine.LNX.4.64.2509171937230.3963832@users.shellworld.net>
 <17e1af06-81a0-40c3-a0df-19bab0242cfe@crosslink.net>
 <aMt2KmWOCT_waaDM@panix.com>
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
In-Reply-To: <aMt2KmWOCT_waaDM@panix.com>
X-PGP-Key: http://www.gregn.net/pubkey.asc
X-Virus-Scanned: clamav-milter 1.0.9 at vserver
X-Virus-Status: Clean
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

As far as I recall, vocal-eyes was a two floppy install that did not
require a license key. I started with vocal-eyes I believe 3.0, so
it's possible that versions before that required a license key. Also,
while window-eyes sold in the U.S. didn't require a license key, I
seem to recall that versions of window-eyes sold outside the U.S. came with
a dongle that would activate the license. So, it's possible the same
was true for vocal-eyes. I also don't remember vocal-eyes splashing
name and license status across the screen when it started up, unless
that happened before the synthesizer driver was loaded, and the screen
was cleared once the synthesizer driver loaded, or happened before
version 3.0.

Greg


On Wed, Sep 17, 2025 at 11:02:02PM -0400, Rudy Vener wrote:
> Yes, The Dectalk Express is a standalone speech synth with an Rs-232 serial port.
> It worked beautifully with Vocal Eyes.
> Sorry, Karen, I'm not familiar with Business Voice. I do remember
> that Vocal Eyes required a software license key which the user activated on first use and the software would
> splash your name and license status across the screen every time you activated it.
> 
> Rudy


-- 
web site: http://www.gregn.net
gpg public key: http://www.gregn.net/pubkey.asc

--
Free domains: http://www.eu.org/ or mail dns-manager@EU.org

