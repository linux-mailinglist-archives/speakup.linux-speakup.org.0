Return-Path: <speakup+bounces-793-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 99A4C610905
	for <lists+speakup@lfdr.de>; Fri, 28 Oct 2022 05:48:18 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=fp8+AtUa;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 7D33F384068; Thu, 27 Oct 2022 23:48:17 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 59750384012
	for <lists+speakup@lfdr.de>; Thu, 27 Oct 2022 23:48:17 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id DFDCF38401C; Thu, 27 Oct 2022 23:48:07 -0400 (EDT)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 26FA038400E
	for <speakup@linux-speakup.org>; Thu, 27 Oct 2022 23:48:07 -0400 (EDT)
Received: from vbox.gregn.net (unknown [172.56.81.186])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by vserver.gregn.net (Postfix) with ESMTPSA id B07114A2;
	Thu, 27 Oct 2022 20:47:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gregn.net; s=default;
	t=1666928853; bh=iHFmfQ7vjBFEkMUXeh7HZFLfQM9B8aAEQDaVw/1OxOg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fp8+AtUaSjgz79pZsAzYj4m+UjgjHhEoYyt+hztQuTEKa+twgi2Vkcu4AML19hUHV
	 D2YcASwUSThfIxvhUl1yz1NCUaPDyYolIlWjWC8eemUQCNSLIS3gLnz1PM5AVBY3EE
	 uoylJnV15wkslTpYkfSIqcC5TAlrJUDELL3k/aZfhjeVzPxt0AYgjSKpts5Ur5fjuq
	 WOT/J7wOpSf5C46RINUjC2KDwlcvWvEr4EkPkL5onU3rYYJZM55vA7CjeneVNCtkJQ
	 JfQ9G7Dr5NUO28+H636sbCO0VZQvHJu7n6pKfl0NHM1nUswWM+MTJeymDvhqjKfzAY
	 QVS5Lvj7BXXKg==
Received: by vbox.gregn.net (Postfix, from userid 1000)
	id B3B80C522; Thu, 27 Oct 2022 20:47:31 -0700 (MST)
Date: Thu, 27 Oct 2022 20:47:31 -0700
From: Gregory Nowak <greg@gregn.net>
To: K0LNY_Glenn <glenn@ervin.email>
Cc: Chime Hart <chime@hubert-humphrey.com>,
	"Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Installing Voxin
Message-ID: <Y1tQ09YHFIMW5W2P@gregn.net>
References: <d06e087d-7752-f42e-25ff-d2e736b5ed3b@hubert-humphrey.com>
 <086601d8ea59$9bd758c0$87ffa8c0@Win7VM>
 <ebac52ac-209b-686e-ad06-d743658cc6cb@hubert-humphrey.com>
 <087e01d8ea5c$c01349d0$87ffa8c0@Win7VM>
 <5a70be54-54a6-fd05-d02f-7fdc5a24d691@hubert-humphrey.com>
 <088501d8ea5e$9033f820$87ffa8c0@Win7VM>
 <ce900000-695c-23de-19f0-6bb50e7fcd25@hubert-humphrey.com>
 <089101d8ea60$a48a59c0$87ffa8c0@Win7VM>
 <53a80b58-5be4-63ee-ab32-9b7bd469f522@hubert-humphrey.com>
 <089c01d8ea67$be809ae0$87ffa8c0@Win7VM>
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
In-Reply-To: <089c01d8ea67$be809ae0$87ffa8c0@Win7VM>
X-PGP-Key: http://www.gregn.net/pubkey.asc
X-Virus-Scanned: clamav-milter 0.103.6 at vserver
X-Virus-Status: Clean
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

I don't use voxin, but:

1. If you can do this over an ssh connection, I think that would be
better. You need to:

a. apt purge espeakup

b. apt install speechd-up speech-dispatcher-voxin

2. Instead of messing with spd-conf, I just edit
/etc/speech-dispatcher/speechd.conf by hand to make changes. That way,
I know exactly what is being configured. So:

Find the line that says:

DefaultModule espeak-ng

and change it to say:

DefaultModule voxin

Save that file, and:

killall speech-dispatcher

To make sure speech-dispatcher actually restarts, I just reboot
instead of killall.

Greg


On Thu, Oct 27, 2022 at 07:53:49PM -0500, K0LNY_Glenn wrote:
> Hi Chime and All,
> Let's see,
> spd-say -O
> came back with
> output module is espeak-ng
> and spd-say -L
> failed to get voice list
> 
> Thanks.
> 


-- 
web site: http://www.gregn.net
gpg public key: http://www.gregn.net/pubkey.asc
skype: gregn1
(authorization required, add me to your contacts list first)
If we haven't been in touch before, e-mail me before adding me to your contacts.

--
Free domains: http://www.eu.org/ or mail dns-manager@EU.org

