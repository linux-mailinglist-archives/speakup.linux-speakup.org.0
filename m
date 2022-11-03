Return-Path: <speakup+bounces-829-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id A5689618CED
	for <lists+speakup@lfdr.de>; Fri,  4 Nov 2022 00:45:48 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=TCkJRQxE;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 3FAFE383BBC; Thu,  3 Nov 2022 19:45:45 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 1DDB1383B58
	for <lists+speakup@lfdr.de>; Thu,  3 Nov 2022 19:45:45 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id EEED3383BAC; Thu,  3 Nov 2022 19:45:35 -0400 (EDT)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 922E9383B58
	for <speakup@linux-speakup.org>; Thu,  3 Nov 2022 19:45:35 -0400 (EDT)
Received: from vbox.gregn.net (unknown [IPv6:2607:fb90:2d06:e42e:71b0:7e55:a597:c60b])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	by vserver.gregn.net (Postfix) with ESMTPSA id D1A614DF;
	Thu,  3 Nov 2022 16:45:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gregn.net; s=default;
	t=1667519132; bh=CbBQW7dSE8nLCyXAEvP0pQXRpCBOZ+lqsOTub2GCO7o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=TCkJRQxEJmpwTu6NcCytNLCMTZS4Na6R5Os+RxAExj5XNHjz2wvvNo2QHJ0Hiwbal
	 CwKknf1WnD400fABCubC8dQGODMZncjUWIv3V2zNtfddc5f5Wn0KGKsh27m2j/j2WW
	 jk5l5wnGdSWnYUAGPbSSF64ohjUkpxGIUBZn/VTAFyKK4TM1dqUD85cZ6JWNnJWGqQ
	 zNEK2tb19ZpBHbXPc1yIEBA6Lz4Mt/2oHnHPqhrUZHeDXYrhfOalw3uKzW5/J215Dl
	 dv3iKKb6ysyccyRdej6lsNCVDWNIocKC4f5nmnOSNThsmRPmfajwEByVUCIa/yt1aO
	 g7G2qdkC9DnnA==
Received: by vbox.gregn.net (Postfix, from userid 1000)
	id 010FAC1D6; Thu,  3 Nov 2022 16:45:31 -0700 (MST)
Date: Thu, 3 Nov 2022 16:45:31 -0700
From: Gregory Nowak <greg@gregn.net>
To: K0LNY_Glenn <glenn@ervin.email>
Cc: Samuel Thibault <samuel.thibault@aquilenet.fr>,
	"Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Voxin/ibmtts with eSpeakup
Message-ID: <Y2RSm7hG8WHdiygs@gregn.net>
References: <05de01d8eefb$e44f16a0$80ffa8c0@Win7VM>
 <Y2LqK66AdnnW9DOg@gregn.net>
 <20221102233629.ayyi63uakfhkw3dc@begin>
 <072a01d8ef2a$7e7bd820$80ffa8c0@Win7VM>
 <08a901d8efbc$33020490$80ffa8c0@Win7VM>
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
In-Reply-To: <08a901d8efbc$33020490$80ffa8c0@Win7VM>
X-PGP-Key: http://www.gregn.net/pubkey.asc
X-Virus-Scanned: clamav-milter 0.103.6 at vserver
X-Virus-Status: Clean
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

On Thu, Nov 03, 2022 at 02:40:57PM -0500, K0LNY_Glenn wrote:
> Well here's an update.
> It seems that Bullseye no longer uses /etc/rc.local, I created the file, but 
> my command:
> sudo /usr/bin/speakupconf load
> didn't work.

Apologies. The rc.local file is still present in devuan, so I assumed
it still exists and is executed at boot in debian.

> spd-say test, without sudo is still silent
> but with sudo, I get Voxin.

Is the user you're running spd-say as in the audio group?

> So, espeakup, or just speakup, whichever I'm using, is not runing as sudo, 

As far as I know, espeakup runs as root, unless you have a user named
sudo on your system, and have made necessary changes to run espeakup
as that user. Also, you need to decide what you want speakup to
use. More likely espeakup and speech-dispatcher will just get in each
other's way. If you're going to stick with voxin, you want to use
speechd-up. If you're going to stick with espeak, you want to use espeakup.

Greg


-- 
web site: http://www.gregn.net
gpg public key: http://www.gregn.net/pubkey.asc
skype: gregn1
(authorization required, add me to your contacts list first)
If we haven't been in touch before, e-mail me before adding me to your contacts.

--
Free domains: http://www.eu.org/ or mail dns-manager@EU.org

