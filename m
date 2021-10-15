Return-Path: <speakup+bounces-320-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 04DD742FC7A
	for <lists+speakup@lfdr.de>; Fri, 15 Oct 2021 21:49:06 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=S8wE4MaI;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 81C61380F1C; Fri, 15 Oct 2021 15:49:05 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 63F42380F05
	for <lists+speakup@lfdr.de>; Fri, 15 Oct 2021 15:49:05 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 605AF380F18; Fri, 15 Oct 2021 15:48:59 -0400 (EDT)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 036C7380943
	for <speakup@linux-speakup.org>; Fri, 15 Oct 2021 15:48:59 -0400 (EDT)
Received: from vbox.gregn.net (unknown [IPv6:2607:fb90:729a:b15e:f4e8:1dae:a5c5:1bf])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by vserver.gregn.net (Postfix) with ESMTPSA id 2CC142555;
	Fri, 15 Oct 2021 12:48:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gregn.net; s=default;
	t=1634327338; bh=D+e7rAPxqvPDK/dALeRZQwCKNXkg5VDJOsNZO8QFOuU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=S8wE4MaIg3I8n+eVwNXGTKhFGBlEYC9PPjr2lnbdroOhmv+U1FNrA8XQUHLZnszEi
	 okyjolIn66nVFIvSmGg7QiLLLgq6gWfrpjgSqQVtNiV+mFvnbSr/h9SN3TWkkHlTM1
	 uJJXO/pvGEx9bah+HyjB/00NmUNtBWlLvFBeo2b5tVRe0glONKHZd10T1mkqwm/sgf
	 4Z5gNMpfpsTiJHo+VvRK7pKqncuQ6azrQEIASkS7Fd7qsVZfJTKZjqbi52ftH+ht+K
	 ZDc+UVH4JM+hXAOYvzXnYVE6mw/4ZNNYdXDUZ2oZ63PRUXRAvaOwC4NZnOQSwtpxqr
	 K9cXQyQGi4ivQ==
Received: from greg by vbox.gregn.net with local (Exim 4.84_2)
	(envelope-from <greg@gregn.net>)
	id 1mbTCI-0001CK-Qr; Fri, 15 Oct 2021 12:48:54 -0700
Date: Fri, 15 Oct 2021 12:48:54 -0700
From: Gregory Nowak <greg@gregn.net>
To: Didier Spaier <didier@slint.fr>
Cc: speakup@linux-speakup.org
Subject: Re: fwd: [DNG] Announcing Devuan 4.0: Chimaera!
Message-ID: <20211015194854.GA4367@gregn.net>
References: <20211015192340.GA3715@gregn.net>
 <26bab3e2-04ce-26ee-efc1-c3a4a8d1a661@slint.fr>
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
In-Reply-To: <26bab3e2-04ce-26ee-efc1-c3a4a8d1a661@slint.fr>
X-PGP-Key: http://www.gregn.net/pubkey.asc
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Virus-Scanned: clamav-milter 0.102.4 at vserver
X-Virus-Status: Clean
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

On Fri, Oct 15, 2021 at 09:32:37PM +0200, Didier Spaier wrote:
> I thing puzzles me though. I read:
> 
> > Devuan Chimaera has the ability to
> > install desktop environments without PulseAudio, allowing speech
> > synthesis in both console and GUI sessions at the same time.
> 
> I Slint speech synthesis is available in both console and GUI sessions at
> the
> same time with PulseAudio installed. Is that not possible in Devuan?

My understanding is that having pulseaudio installed and using dmix
causes sound output to crash, and requires a system reboot. Purging
pulseaudio rather than working around it was easier to do. I've
also corresponded with a few people from this list who indicated
the first thing they do after installing debian/devuan is to purge
pulseaudio, and if someone wants pulseaudio back in devuan along with
a graphical desktop, this is easily done during and after system
install.

Greg


-- 
web site: http://www.gregn.net
gpg public key: http://www.gregn.net/pubkey.asc
skype: gregn1
(authorization required, add me to your contacts list first)
If we haven't been in touch before, e-mail me before adding me to your contacts.

--
Free domains: http://www.eu.org/ or mail dns-manager@EU.org

