Return-Path: <speakup+bounces-685-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 45A5D5A3337
	for <lists+speakup@lfdr.de>; Sat, 27 Aug 2022 02:47:45 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=kVoSqmu0;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id A5464380C6F; Fri, 26 Aug 2022 20:47:43 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 876DE380C02
	for <lists+speakup@lfdr.de>; Fri, 26 Aug 2022 20:47:43 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id AFC13380C1B; Fri, 26 Aug 2022 20:47:34 -0400 (EDT)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 865DD380BDA
	for <speakup@linux-speakup.org>; Fri, 26 Aug 2022 20:47:34 -0400 (EDT)
Received: from vbox.gregn.net (unknown [172.56.81.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	by vserver.gregn.net (Postfix) with ESMTPSA id B237136B;
	Fri, 26 Aug 2022 17:47:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gregn.net; s=default;
	t=1661561253; bh=LiO+Nifxgto4oJUruvevYRJF2UcbHdr3MsooqZPsaao=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=kVoSqmu0TGavcpQ20ZSeLRmaZ/3YxUYA1vDZjHTcJwD+qpEP6l8kXczqgzanLUCn7
	 XYRv6+kooy4HdJVO0/da5Di043r2XVWd+Y7HVnu12q6NLPCO9SbN6Xg/04y89rJEJ+
	 K2ab6K6ORezi8frZtZPLnY0PEijySvWiTJKeTODcgQFesz5tvzvWp/dp8+IcfZJLtW
	 nJ/ZkBFxg3NLHfRuPhsprdP0rqfBLmAQm/dx6NuLoGfFpdn0gsJNYTkCYNvK7xB4F+
	 PIkEm7wuIRR8txsa3c5o9Coyec/fUQa5CJ6syogPE3FfI8y5GEwBM16cI9XVC3Xcrt
	 LE/uK+FohENNA==
Received: by vbox.gregn.net (Postfix, from userid 1000)
	id C46CAC1B5; Fri, 26 Aug 2022 17:47:32 -0700 (MST)
Date: Fri, 26 Aug 2022 17:47:32 -0700
From: Gregory Nowak <greg@gregn.net>
To: K0LNY_Glenn <glenn@ervin.email>
Cc: Jude DaShiell <jdashiel@panix.com>, speakup@linux-speakup.org
Subject: Re: hopefully some help with AntiX
Message-ID: <YwlppF46tleitH74@gregn.net>
References: <202208261512.27QFCDux008176@nfbcal.org>
 <02b101d8b963$7d039fc0$80ffa8c0@Win7VM>
 <alpine.DEB.2.21.1.2208262017280.8190@willempc.meraka.csir.co.za>
 <006201d8b97a$ff989cd0$80ffa8c0@Win7VM>
 <006601d8b97e$e9f9a6e0$80ffa8c0@Win7VM>
 <Ywle3kA6oGDCREfZ@gregn.net>
 <00b601d8b9a9$5c664f10$80ffa8c0@Win7VM>
 <acd2012-2ab5-5ff2-4fa6-4e518867727a@panix.com>
 <00c101d8b9ab$a53e0140$80ffa8c0@Win7VM>
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
In-Reply-To: <00c101d8b9ab$a53e0140$80ffa8c0@Win7VM>
X-PGP-Key: http://www.gregn.net/pubkey.asc
X-Virus-Scanned: clamav-milter 0.103.6 at vserver
X-Virus-Status: Clean
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

No, there is no meta package for espeakup and espeak, or
speech-dispatcher and all it requires. You would need to figure out the
dependencies yourself, and grab all the necessary packages. There may
be a way to script this, but it isn't something I've done. There used
to be a utility called apt-zip I think which would do all that, and
create a zip archive with the .deb files. However, it doesn't seem to
be available in bullseye from what I can tell, though it still may be
in buster. This assumes you have another buster machine you can use to
create the archive.

Greg


On Fri, Aug 26, 2022 at 07:26:25PM -0500, K0LNY_Glenn wrote:
> I guess I alluded to this when asking for some lines to make a script, but 
> is there a .deb package for either or speakup or fenrir that would fetch the 
> dependencies?
> Or would I need to get an espeak-ng .deb file and a speech-dispatcher.deb 
> file too?
> Thanks.


-- 
web site: http://www.gregn.net
gpg public key: http://www.gregn.net/pubkey.asc
skype: gregn1
(authorization required, add me to your contacts list first)
If we haven't been in touch before, e-mail me before adding me to your contacts.

--
Free domains: http://www.eu.org/ or mail dns-manager@EU.org

