Return-Path: <speakup+bounces-824-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 9A2D0617053
	for <lists+speakup@lfdr.de>; Wed,  2 Nov 2022 23:07:54 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=kWzDzCZA;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id DFAFE383BA1; Wed,  2 Nov 2022 18:07:53 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id BFF3B380608
	for <lists+speakup@lfdr.de>; Wed,  2 Nov 2022 18:07:53 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id B8108380715; Wed,  2 Nov 2022 18:07:44 -0400 (EDT)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 02952380608
	for <speakup@linux-speakup.org>; Wed,  2 Nov 2022 18:07:44 -0400 (EDT)
Received: from vbox.gregn.net (unknown [IPv6:2607:fb90:2d06:e42e:3586:cb5c:f66e:e153])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by vserver.gregn.net (Postfix) with ESMTPSA id AD979659;
	Wed,  2 Nov 2022 15:07:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gregn.net; s=default;
	t=1667426860; bh=kg+CPuIvWmTKVoy2k6KhiUZOKRQHcDMVh0YHhzHBcPA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=kWzDzCZAz1LN4ixSBMGHGW4ecrNuIreHR5oHWjzC5sXOreZLAc7WvWP8T79Re/Ygl
	 POX26nOe0uU6llNt4MD/ErGy1dr0hsvB8Ab53k7kA5wMs0EWlkIvN16HFMYBfVt4Rk
	 1UOrx1Y1iVaSynw5YQLuVBxjNQcESLUQNxSWwsCkt3bpsrFp9bTOr0RWymKwYSiWSP
	 Gdhc5o6liUu/wvt1CHrYVaOysIw1wGZd0ntbfoXbOdcFJTNWQDmLO5KGvqRNsGgiXg
	 TT7gaJrfnkta7iPJKoE6UzrKEIJ6frvFDgXUegWsGvzHsoFSopYzrgicusuvEVR5sg
	 MuxDWJbdABEsQ==
Received: by vbox.gregn.net (Postfix, from userid 1000)
	id 9BF50C15C; Wed,  2 Nov 2022 15:07:39 -0700 (MST)
Date: Wed, 2 Nov 2022 15:07:39 -0700
From: Gregory Nowak <greg@gregn.net>
To: K0LNY_Glenn <glenn@ervin.email>
Cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Voxin/ibmtts with eSpeakup
Message-ID: <Y2LqK66AdnnW9DOg@gregn.net>
References: <05de01d8eefb$e44f16a0$80ffa8c0@Win7VM>
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
In-Reply-To: <05de01d8eefb$e44f16a0$80ffa8c0@Win7VM>
X-PGP-Key: http://www.gregn.net/pubkey.asc
X-Virus-Scanned: clamav-milter 0.103.6 at vserver
X-Virus-Status: Clean
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

No, espeakup works only with espeak.

Greg


On Wed, Nov 02, 2022 at 03:44:22PM -0500, K0LNY_Glenn wrote:
> Hi,
> I have installed a voxin 2.2.1 update from Oralux to try and get Voxin 
> working with speakup.
> More accurately, with espeakup.
> I can get the spd-say to play with ibmtts, using the alsa selection.
> This is on Debian Bullseye 32 bit, which cannot use Voxin 3X.
> Are there any espeakup parameters that will make it use what is in 
> speechd.conf?
> Thanks.
> 
> Glenn 
> 
> 

-- 
web site: http://www.gregn.net
gpg public key: http://www.gregn.net/pubkey.asc
skype: gregn1
(authorization required, add me to your contacts list first)
If we haven't been in touch before, e-mail me before adding me to your contacts.

--
Free domains: http://www.eu.org/ or mail dns-manager@EU.org

