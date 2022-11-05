Return-Path: <speakup+bounces-834-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 3852161A6E1
	for <lists+speakup@lfdr.de>; Sat,  5 Nov 2022 03:22:25 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=a8BARZ3y;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 57CB13835F2; Fri,  4 Nov 2022 22:10:04 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 3A0C63831DD
	for <lists+speakup@lfdr.de>; Fri,  4 Nov 2022 22:10:04 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 4BFA13835B9; Fri,  4 Nov 2022 22:09:55 -0400 (EDT)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
	by befuddled.reisers.ca (Postfix) with ESMTPS id C7F783831DD
	for <speakup@linux-speakup.org>; Fri,  4 Nov 2022 22:09:54 -0400 (EDT)
Received: from vbox.gregn.net (unknown [172.56.80.128])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by vserver.gregn.net (Postfix) with ESMTPSA id 06ADD663;
	Fri,  4 Nov 2022 19:09:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gregn.net; s=default;
	t=1667614191; bh=h4M4mDPbe4yJLAbbBuzCnI7ocLqmtqt3tg5p+RcTIhY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=a8BARZ3yNfNKKhYNTC6dzvUgm1J6h3+hGDJAhW9jeN4S5AjzkFHr+efrTo9T73fv+
	 IJBHjiFwEwd1FMRY0ZuGspVzhpCir5QvjOqIGF8tff0pduRrVOU1tU0EjX5RuWZiDP
	 R5Nbra/o0chhPw6ZN4a+p6BMpYMnSXscohO7nGzBj32vAYPHRJKv+cEkQJbwDno5kM
	 svd8jOVX35xnFPujzNui5LYeLLqKWFBzycIOyVSqrTnp23qiEdwEjn80ulEcv1RjbV
	 PtR+K5cKT5TJNhXD1oyhugkIWi1Lnu6uEd/13nzhhFQy/zQwWXsQdmrEU1dyRDmKQg
	 +q9LlL0g4mOpg==
Received: by vbox.gregn.net (Postfix, from userid 1000)
	id B34E2C305; Fri,  4 Nov 2022 19:09:47 -0700 (MST)
Date: Fri, 4 Nov 2022 19:09:47 -0700
From: Gregory Nowak <greg@gregn.net>
To: K0LNY_Glenn <glenn@ervin.email>
Cc: Samuel Thibault <samuel.thibault@aquilenet.fr>,
	"Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Voxin/ibmtts with eSpeakup
Message-ID: <Y2XF6wmcbFCsq5l/@gregn.net>
References: <05de01d8eefb$e44f16a0$80ffa8c0@Win7VM>
 <Y2LqK66AdnnW9DOg@gregn.net>
 <20221102233629.ayyi63uakfhkw3dc@begin>
 <072a01d8ef2a$7e7bd820$80ffa8c0@Win7VM>
 <08a901d8efbc$33020490$80ffa8c0@Win7VM>
 <Y2RSm7hG8WHdiygs@gregn.net>
 <0b4101d8f063$69069fe0$80ffa8c0@Win7VM>
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
In-Reply-To: <0b4101d8f063$69069fe0$80ffa8c0@Win7VM>
X-PGP-Key: http://www.gregn.net/pubkey.asc
X-Virus-Scanned: clamav-milter 0.103.6 at vserver
X-Virus-Status: Clean
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

I assume that lenny is the only  login user on the system. So,
anything interesting in /var/run/user/1000/speech-dispatcher/log/*
after you run spd-say as lenny?

Greg


On Fri, Nov 04, 2022 at 10:37:54AM -0500, K0LNY_Glenn wrote:
> I ran  the following:
> sudo adduser audio lenny
> and I got the message that lenny was already a member of audio.
> speaker-test works  as sudo, but no sound without sudo.
> Just like spd-say, no errors, just no audio.
> Any ideas?
> Thanks.
> Glenn


-- 
web site: http://www.gregn.net
gpg public key: http://www.gregn.net/pubkey.asc
skype: gregn1
(authorization required, add me to your contacts list first)
If we haven't been in touch before, e-mail me before adding me to your contacts.

--
Free domains: http://www.eu.org/ or mail dns-manager@EU.org

