Return-Path: <speakup+bounces-805-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 0D220611EA5
	for <lists+speakup@lfdr.de>; Sat, 29 Oct 2022 02:16:10 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=qI0JRbOb;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 9FA13384093; Fri, 28 Oct 2022 20:16:09 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 8080A384064
	for <lists+speakup@lfdr.de>; Fri, 28 Oct 2022 20:16:09 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 3B02A384064; Fri, 28 Oct 2022 20:16:00 -0400 (EDT)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 10561384017
	for <speakup@linux-speakup.org>; Fri, 28 Oct 2022 20:16:00 -0400 (EDT)
Received: from vbox.gregn.net (unknown [172.56.81.118])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by vserver.gregn.net (Postfix) with ESMTPSA id E70234B1;
	Fri, 28 Oct 2022 17:15:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gregn.net; s=default;
	t=1667002529; bh=ete9fxegh8okkjtjfuKMe4O/lbEquP6IuZkqhsoOxTk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qI0JRbObeLVnJjedU3XXs0ITAWt+AyMXrffB+s0r8OUHBjpfWESk72JAbWwzPEBjX
	 mnhWj0de2GVrCVhk1VqHtJ67Z8o3aoq26coKGC+M1iW/InINRjlbLWzjxoQfs713uW
	 u6YP7Z+7LpdAHhSyZLI7hQ0ZBWQKrh407qH1NPlAYAx/twzfcOoAW0t6XGS6oc9t46
	 1qJ8rvjgoIBB6e/IVWrBkz7geusmBoGDX8VpvhksBwbRd0j2i71GQfEYdTM+eBlHSu
	 0x4IcjTXciBiyTQyYITYKNuAz6yz2v5ut627rqQ67VC0k+h0grmn062LtBqt5gB88P
	 4UYCL21Zc1PGw==
Received: by vbox.gregn.net (Postfix, from userid 1000)
	id 91FA3C170; Fri, 28 Oct 2022 17:15:27 -0700 (MST)
Date: Fri, 28 Oct 2022 17:15:27 -0700
From: Gregory Nowak <greg@gregn.net>
To: K0LNY_Glenn <glenn@ervin.email>
Cc: speakup@linux-speakup.org, Didier Spaier <didier@slint.fr>
Subject: Re: Installing Voxin
Message-ID: <Y1xwn2kFZR5uVuI/@gregn.net>
References: <089c01d8ea67$be809ae0$87ffa8c0@Win7VM>
 <Y1tQ09YHFIMW5W2P@gregn.net>
 <08ed01d8eae8$e7bbdab0$87ffa8c0@Win7VM>
 <153ebfb0-180b-a4b8-0027-857f22df878e@hubert-humphrey.com>
 <090701d8eaef$9a45f930$87ffa8c0@Win7VM>
 <082beb13-bca6-f001-6b28-8a2e14ad7b25@slint.fr>
 <096901d8eb12$060be090$87ffa8c0@Win7VM>
 <098901d8eb16$fcddc5b0$87ffa8c0@Win7VM>
 <Y1xm3HAleBaLGGnk@gregn.net>
 <002b01d8eb29$c48a8af0$84ffa8c0@Win7VM>
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
In-Reply-To: <002b01d8eb29$c48a8af0$84ffa8c0@Win7VM>
X-PGP-Key: http://www.gregn.net/pubkey.asc
X-Virus-Scanned: clamav-milter 0.103.6 at vserver
X-Virus-Status: Clean
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

On Fri, Oct 28, 2022 at 07:02:41PM -0500, K0LNY_Glenn wrote:
> I hate to join another list, in the event that I go back to speakup.
> But I've gone through the whole speechd.conf, and I thought everything 
> important pointed to voxin.
> But when I do
> spd-say -O
> it still says only espeak.

You said you purged speech-dispatcher, and installed it again
earlier. Since speech-dispatcher-voxin depends on speech-dispatcher,
that probably got purged too. So:

apt install speech-dispatcher-voxin

and make sure that in /etc/speech-dispatcher/speechd.conf you change

DefaultModule espeak-ng

to

DefaultModule voxin

> I did make backups of speechd.conf, so I wonder if spd-conf will mess it up 
> again, or not.

The spd-conf utility changes speechd.conf, so yes, it could mess it up.

Greg


-- 
web site: http://www.gregn.net
gpg public key: http://www.gregn.net/pubkey.asc
skype: gregn1
(authorization required, add me to your contacts list first)
If we haven't been in touch before, e-mail me before adding me to your contacts.

--
Free domains: http://www.eu.org/ or mail dns-manager@EU.org

