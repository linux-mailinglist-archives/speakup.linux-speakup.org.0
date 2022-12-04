Return-Path: <speakup+bounces-876-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 73E7C641AA5
	for <lists+speakup@lfdr.de>; Sun,  4 Dec 2022 05:05:07 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=yuz7GflX;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id EBBBD382A5F; Sat,  3 Dec 2022 23:05:06 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id CD234382A41
	for <lists+speakup@lfdr.de>; Sat,  3 Dec 2022 23:05:06 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id C1DE3382A41; Sat,  3 Dec 2022 23:04:57 -0500 (EST)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 97F7C382A26
	for <speakup@linux-speakup.org>; Sat,  3 Dec 2022 23:04:57 -0500 (EST)
Received: from vbox.gregn.net (unknown [IPv6:2607:fb90:2d17:4764:3bd2:518a:8c7:ddaa])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	by vserver.gregn.net (Postfix) with ESMTPSA id 9B29F2B0;
	Sat,  3 Dec 2022 20:04:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gregn.net; s=default;
	t=1670126666; bh=l5s5IWThF2S2zspKdPiHLB8/ku/O0JeHPF9msGh9854=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=yuz7GflXKqtloj+VLAqIcJUzGizuYFGckQczheBYnZV+iIiw1wMjG4nvdNsrTKayT
	 RBdw6A7TvmozFRmOai2etLVLTXQ20mtJPnLE1puWCe+860Ox14LkH+wEXhdp8JxBhC
	 thzGQYnZrcADOgCbTcMFVDstRoJbH3fNej05tWxPKMzZ6UrbP3hyBJ7aLJRny1YG6j
	 xmC56HVBqhiJn7TbtoxdhjMwhv2kVQIW6AgNW2KN9w0ZDibjyYa7OvVXeMqXgz5Eg9
	 5B0ObxEr4aKgKjinSJc+/gPf7LzBmHZmjVvhwIssgtog8he9IZm3g5LIL1VqX9jjow
	 HbALvdpbLDMUw==
Received: by vbox.gregn.net (Postfix, from userid 1000)
	id AF34CC4B7; Sat,  3 Dec 2022 21:04:25 -0700 (MST)
Date: Sat, 3 Dec 2022 21:04:25 -0700
From: Gregory Nowak <greg@gregn.net>
To: K0LNY_Glenn <glenn@ervin.email>
Cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: change eSpeak Default Voice
Message-ID: <Y4wcSYOKzFn/yIeh@gregn.net>
References: <013f01d9074d$551a6650$88ffa8c0@Win7VM>
 <Y4wZa/0WtgPE3nyH@gregn.net>
 <017701d90794$4d7619c0$88ffa8c0@Win7VM>
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
In-Reply-To: <017701d90794$4d7619c0$88ffa8c0@Win7VM>
X-PGP-Key: http://www.gregn.net/pubkey.asc
X-Virus-Scanned: clamav-milter 0.103.6 at vserver
X-Virus-Status: Clean
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

A .conf file for what?

Greg


On Sat, Dec 03, 2022 at 09:55:50PM -0600, K0LNY_Glenn wrote:
> Thanks Gregory,
> Is there a .conf file, and do you have any idea if there are voices in there 
> to uncomment, or if it is done another way?
> Glenn


-- 
web site: http://www.gregn.net
gpg public key: http://www.gregn.net/pubkey.asc
skype: gregn1
(authorization required, add me to your contacts list first)
If we haven't been in touch before, e-mail me before adding me to your contacts.

--
Free domains: http://www.eu.org/ or mail dns-manager@EU.org

