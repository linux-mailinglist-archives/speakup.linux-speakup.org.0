Return-Path: <speakup+bounces-842-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id DC21761E988
	for <lists+speakup@lfdr.de>; Mon,  7 Nov 2022 04:22:52 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=S4qItnLk;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 26D51383640; Sun,  6 Nov 2022 22:22:49 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 092EC383615
	for <lists+speakup@lfdr.de>; Sun,  6 Nov 2022 22:22:49 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 5AC39383619; Sun,  6 Nov 2022 22:22:40 -0500 (EST)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
	by befuddled.reisers.ca (Postfix) with ESMTPS id D54EE383615
	for <speakup@linux-speakup.org>; Sun,  6 Nov 2022 22:22:39 -0500 (EST)
Received: from vbox.gregn.net (unknown [172.56.81.116])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by vserver.gregn.net (Postfix) with ESMTPSA id E720E3D8;
	Sun,  6 Nov 2022 19:22:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gregn.net; s=default;
	t=1667791328; bh=ncAHYkSG2nR5aL+j0OM6ZSkRCcKKPq5MLygUShu7Zic=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=S4qItnLkyPD9uKiZz/W0tmKtZnhjfjZI/1NvJuTRnM8raldTIZ5eAa+PyFvdfpUzH
	 8MYJt1IhCsDT6yi+OYyptRDAYZeAJOXw5lDYA5V9+8WRJNkoTS/v1xaBSr3vZQKgl4
	 RJ618/W09k3SB3qHxoBLlXMn2Ustpw93HA0EwSjHPbmyp8ub2e2CjEzsUq0euDnOVG
	 5Oc1j9ar0WkuG04FONTnQp9zm55ZNqIoxe6H/f0a/8bfaaJbOM+Wx4na6hw3jjp4z3
	 zc96fNY6EZV63LdnmGfAHpHTmIjAmiaL3QM+G7XXYYeHjbIvTQX9n5amM39Q8xsULb
	 sI7Nqq59otj5A==
Received: by vbox.gregn.net (Postfix, from userid 1000)
	id 677ADC1F4; Sun,  6 Nov 2022 20:22:05 -0700 (MST)
Date: Sun, 6 Nov 2022 20:22:05 -0700
From: Gregory Nowak <greg@gregn.net>
To: K0LNY_Glenn <glenn@ervin.email>
Cc: Samuel Thibault <samuel.thibault@aquilenet.fr>,
	"Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Voxin/ibmtts with eSpeakup
Message-ID: <Y2h53YPr311PDObk@gregn.net>
References: <Y2LqK66AdnnW9DOg@gregn.net>
 <20221102233629.ayyi63uakfhkw3dc@begin>
 <072a01d8ef2a$7e7bd820$80ffa8c0@Win7VM>
 <08a901d8efbc$33020490$80ffa8c0@Win7VM>
 <Y2RSm7hG8WHdiygs@gregn.net>
 <0b4101d8f063$69069fe0$80ffa8c0@Win7VM>
 <Y2XF6wmcbFCsq5l/@gregn.net>
 <0bc501d8f0bd$c222dee0$80ffa8c0@Win7VM>
 <Y2XV2QOPjryMKRJv@gregn.net>
 <0c3801d8f145$e2eb2b90$80ffa8c0@Win7VM>
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
In-Reply-To: <0c3801d8f145$e2eb2b90$80ffa8c0@Win7VM>
X-PGP-Key: http://www.gregn.net/pubkey.asc
X-Virus-Scanned: clamav-milter 0.103.6 at vserver
X-Virus-Status: Clean
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

First, you haven't sent me any logs from speech-dispatcher. If you
had, I would have a better guess at what the problem is.

Second, the 1000 directory should already be owned by the correct
user. If you really want to make sure it is, then:

sudo chown lenny.lenny /var/run/user/1000

should do it.

Greg


On Sat, Nov 05, 2022 at 01:39:05PM -0500, K0LNY_Glenn wrote:
> In doing some research, I'm wondering if the only user, "lenny" can't get 
> audio, but root can, is that I need to give ownership to "lenny" for the 
> 1000 folder.
> In similar problems I found on-line, the suggested command was as follows, 
> but in the command, it can't find lenny or ./lenny.
> sudo chown 1000 ./lenny
> or
> sudo chown 1000 lenny
> So I don't know how to make this work.
> Glenn


-- 
web site: http://www.gregn.net
gpg public key: http://www.gregn.net/pubkey.asc
skype: gregn1
(authorization required, add me to your contacts list first)
If we haven't been in touch before, e-mail me before adding me to your contacts.

--
Free domains: http://www.eu.org/ or mail dns-manager@EU.org

