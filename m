Return-Path: <speakup+bounces-1305-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 7D2E9AD96A7
	for <lists+speakup@lfdr.de>; Fri, 13 Jun 2025 22:50:27 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=hbgKXND2;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 4BA813824A3; Fri, 13 Jun 2025 16:50:14 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 2C0393822A1
	for <lists+speakup@lfdr.de>; Fri, 13 Jun 2025 16:50:14 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 49DBB3820E4; Fri, 13 Jun 2025 16:50:07 -0400 (EDT)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 71F2938199F
	for <speakup@linux-speakup.org>; Fri, 13 Jun 2025 16:50:06 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gregn.net; s=default;
	t=1749847771; bh=/RCQjZZ/YeMxuWNSV+7Jzypj4p0LfGIRQ1Dq3JeseM0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hbgKXND2QQtcGFN9sRpTsIte3MoPhPDUAPjHdtJ9EoT5+tR71Uau/ThraY6J/cGef
	 h6rl0kM0WkBnfk1o+bwK7nVKLhyb80FDJ9bf1xOkcIXz+aqVPGav9U65A+MY1NGbh6
	 I5mWWifjqGtd+zqNkLT4DMx9zstArke5QREqYCFtrdj/Mpx0qdgc+8PPvR7PxXK58S
	 MuOn9tHnruWKjVKGDZxnyXRWIpbAhJjyMh1/W4AXC98wWSVGnmvf8anLxl1RvO0ErV
	 AV5SbjswGkQM7Tg1Fy68VJ3Z+iGqZ3FkwiMyIoKuXvgw90ahzmsWLg29DYXzHn0fWb
	 JyEWsCKPyv0RA==
Received: from vbox.gregn.net (unknown [IPv6:2607:fb90:2d83:ca53:2467:f987:30fe:26af])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (secp384r1) server-digest SHA384)
	(No client certificate requested)
	by vserver.gregn.net (Postfix) with ESMTPSA id 9415E139D;
	Fri, 13 Jun 2025 13:49:31 -0700 (PDT)
Received: by vbox.gregn.net (Postfix, from userid 1000)
	id DD5ECC8B4; Fri, 13 Jun 2025 13:49:30 -0700 (MST)
Date: Fri, 13 Jun 2025 13:49:30 -0700
From: Gregory Nowak <greg@gregn.net>
To: Jookia <contact@jookia.org>
Cc: "John G. Heim" <jheim@math.wisc.edu>,
	"Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Tripletalk mini
Message-ID: <aEyO2ruBZGZWp_uE@gregn.net>
References: <73297c7e-9945-483b-a9d3-e347ab217d59@math.wisc.edu>
 <aEwFDuQX7iT3xmzY@titan>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <aEwFDuQX7iT3xmzY@titan>
X-PGP-Key: http://www.gregn.net/pubkey.asc
X-Virus-Scanned: clamav-milter 1.0.7 at vserver
X-Virus-Status: Clean
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Unless the USB interface emulates a serial port, it likely isn't
supported, but I do stand to be corrected. The layer to support USB
synths is in speakup, but actual device support isn't there as far as
I know. I believe the mini is a USB only device, but I could be wrong
there too.

Greg


On Fri, Jun 13, 2025 at 09:01:34PM +1000, Jookia wrote:
> I belive speakup does support USB serial devices nowadays.
> I don't know which Speakup driver you'd use for this.
> 
> On Thu, Jun 12, 2025 at 11:06:42AM -0500, John G. Heim wrote:
> > I've been poking around to see if there are still any hardware synths
> > available. There is something called a Tripletalk Mini on the Blind  Mice
> > mega Mall.
> > 
> > https://www.blindmicemegamall.com/bmm/shop/Item_Detail?itemid=5323293
> > 
> > It does not seem to have a serial cable connector though. Correct me if I'm
> > wrong but that means it would not work with speakup, right?
> > 
> > 
> 

-- 
web site: http://www.gregn.net
gpg public key: http://www.gregn.net/pubkey.asc

--
Free domains: http://www.eu.org/ or mail dns-manager@EU.org

