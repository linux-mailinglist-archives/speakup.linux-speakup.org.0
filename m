Return-Path: <speakup+bounces-729-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (unknown [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 4FCD85A585F
	for <lists+speakup@lfdr.de>; Tue, 30 Aug 2022 02:19:31 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=0KeWPFFQ;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id DAFAC380E21; Mon, 29 Aug 2022 20:19:10 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id BB7B638097C
	for <lists+speakup@lfdr.de>; Mon, 29 Aug 2022 20:19:10 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id EBA5438097C; Mon, 29 Aug 2022 20:19:01 -0400 (EDT)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 916B73807BC
	for <speakup@linux-speakup.org>; Mon, 29 Aug 2022 20:19:01 -0400 (EDT)
Received: from vbox.gregn.net (unknown [172.56.80.48])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by vserver.gregn.net (Postfix) with ESMTPSA id C00AC879;
	Mon, 29 Aug 2022 17:18:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gregn.net; s=default;
	t=1661818709; bh=mRoWOtTtdZkwKFXoSiM1X0co/4hUSmCcaCq0ZEdBG6A=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=0KeWPFFQXCx6yYOZjrBWGp0kOVQkqatFbZLUqfbgMwYgz6GaLd+LrLbVOqAvd/7+x
	 aXAP22ScArzB0nFMs3ZW5MblN1bVWEmr+Uau+BSXeuRc2PiQoD2nClzGZDFTvFBwDA
	 rI9shY0LYcaDw/MxAhTiPo54me8/RzUncZQ3vtD1XHVuaQrd/y/lbosclAiRkDSJrr
	 mURUeoo/0+MaGakE5BdGDPcwaeLYcmx6jaDV0xD4WntmsRsFNjHVD1mjYSGonq7pRu
	 AXhxmFIGj0mG4ZVOUsbArsEhvdw0fIAOOi1ZH4EcL36veq5y57C1RCv/1Se8uH2ADN
	 Miqk3T65v6roA==
Received: by vbox.gregn.net (Postfix, from userid 1000)
	id 24B65D3FE; Mon, 29 Aug 2022 17:18:28 -0700 (MST)
Date: Mon, 29 Aug 2022 17:18:28 -0700
From: Gregory Nowak <greg@gregn.net>
To: K0LNY_Glenn <glenn@ervin.email>
Cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Debian Packages
Message-ID: <Yw1XVM+FOPVLj+Zn@gregn.net>
References: <014f01d8bbcb$b33a5790$80ffa8c0@Win7VM>
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
In-Reply-To: <014f01d8bbcb$b33a5790$80ffa8c0@Win7VM>
X-PGP-Key: http://www.gregn.net/pubkey.asc
X-Virus-Scanned: clamav-milter 0.103.6 at vserver
X-Virus-Status: Clean
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

On Mon, Aug 29, 2022 at 12:20:55PM -0500, K0LNY_Glenn wrote:
> I wanted to see if I can get Voxin installed, so I put the .deb file on a 
> USB drive, and I thought it would show up in /media, but the only thing 
> there is cdrom, and nothing is in there.
> During the install, I did the base install, because I wasn't sure if the 4GB 
> internal storage would hold the Mate desktop, so I'm working in the CLI.
> I didn't find anything in /mnt either.

You need to mount it by hand.

> So I did fdisk -l and it did not recognize the command.

apt install fdisk

> So I tried sudo fdisk -l and it did not know the command sudo.

apt install sudo

> So I tried just su and it wanted root's password, and I was root.
> But it still did not recognize fdisk.

Doing just su will not put /sbin in your path, which is where fdisk
would be if it is installed. You need to do

su -

note the dash.

> Now, during the install, one option was install ssh-server, that was #11, 
> and #12 was common system tools, and I thought I would get those choices 
> again after installing ssh-server, but they were never presented again.
> Question, without reinstalling again, is there a way to get the common 
> system tools installed?

tasksel --list-tasks

tasksel install <task>

where <task> is the task you want. I don't have a debian system here,
so can't give you the exact task name.

Greg


-- 
web site: http://www.gregn.net
gpg public key: http://www.gregn.net/pubkey.asc
skype: gregn1
(authorization required, add me to your contacts list first)
If we haven't been in touch before, e-mail me before adding me to your contacts.

--
Free domains: http://www.eu.org/ or mail dns-manager@EU.org

