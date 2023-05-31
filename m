Return-Path: <speakup+bounces-953-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 09215718EFD
	for <lists+speakup@lfdr.de>; Thu,  1 Jun 2023 01:15:54 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=IbnDFaxH;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 89A603824C7; Wed, 31 May 2023 19:15:53 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 6C6E6382347
	for <lists+speakup@lfdr.de>; Wed, 31 May 2023 19:15:53 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 3F293382389; Wed, 31 May 2023 19:15:44 -0400 (EDT)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
	by befuddled.reisers.ca (Postfix) with ESMTPS id F31BC382347
	for <speakup@linux-speakup.org>; Wed, 31 May 2023 19:15:43 -0400 (EDT)
Received: from vbox.gregn.net (unknown [172.56.80.62])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by vserver.gregn.net (Postfix) with ESMTPSA id 38C0F16B3;
	Wed, 31 May 2023 16:15:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gregn.net; s=default;
	t=1685574940; bh=16q9RpuQoxmCrZii0d35xf3pvINw+84iIKSswqFCZ3g=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=IbnDFaxHZyeZ+AMlXUROys5enc75GsQHLTeJ2CsAMR+a033J4TeZQpQR/M5ubdpj9
	 r28QvuYlqGZZBRqMsh0rVgsHWdDqYWnvqVQEeVrYRXmhl5vYevPo3s/68sk7tHM4V2
	 wYbC3/RQ6mZaq7xkOqbb3GNaAwxP+Zo3GTW9vdY/HVK/1VTylqKHyHjF0SOGQc0DAB
	 amXJGJxB4o7GEGmhQTkXMzZ/YEGnaaZbvVDVv7cnLdwFE6/LRzh46SmNvWrDmoSxH3
	 KftiYYxA8kO4q2D26nZ/rRZxQJpIUvFk58VvvTimKs2Xoye97VUzmRlZTE8KI337D1
	 NOOgedwBRctLQ==
Received: by vbox.gregn.net (Postfix, from userid 1000)
	id 1D1EAC13C; Wed, 31 May 2023 16:15:39 -0700 (MST)
Date: Wed, 31 May 2023 16:15:39 -0700
From: Gregory Nowak <greg@gregn.net>
To: Didier Spaier <didier@slint.fr>
Cc: speakup@linux-speakup.org
Subject: Re: Beep on Backspace in Console Sessions
Message-ID: <ZHfVG9Z7CiU6csE6@gregn.net>
References: <ZHGmQFwqgliD6p3X@rednote.net>
 <b175e143-de30-9fb6-1ed2-d352a3af34a9@slint.fr>
 <ZHUKjA+f+SLDtpR+@gregn.net>
 <87e9db08-ba5f-1287-9409-d51fd5c3bad4@slint.fr>
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
In-Reply-To: <87e9db08-ba5f-1287-9409-d51fd5c3bad4@slint.fr>
X-PGP-Key: http://www.gregn.net/pubkey.asc
X-Virus-Scanned: clamav-milter 0.103.8 at vserver
X-Virus-Status: Clean
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

No. The pcspkr module is compiled as a module, and doesn't need to be
loaded for the speakers or headphone jack to produce the console beep.

Greg


On Thu, Jun 01, 2023 at 01:05:32AM +0200, Didier Spaier wrote:
> It is possible to compile the pcspkr driver built-in the kernel instead as a
> module, then it would not appear in the output of lsmod. Maybe that is the case
> for your ancient laptop?
> 
> Cheers,
> Didier
> 


-- 
web site: http://www.gregn.net
gpg public key: http://www.gregn.net/pubkey.asc
skype: gregn1
(authorization required, add me to your contacts list first)
If we haven't been in touch before, e-mail me before adding me to your contacts.

--
Free domains: http://www.eu.org/ or mail dns-manager@EU.org

