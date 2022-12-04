Return-Path: <speakup+bounces-874-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 03DF2641AA3
	for <lists+speakup@lfdr.de>; Sun,  4 Dec 2022 04:52:58 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=WvtGbdXG;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id D89BA382A5D; Sat,  3 Dec 2022 22:52:54 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id B892C382A27
	for <lists+speakup@lfdr.de>; Sat,  3 Dec 2022 22:52:54 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id A11D5382A28; Sat,  3 Dec 2022 22:52:45 -0500 (EST)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 573B5382A25
	for <speakup@linux-speakup.org>; Sat,  3 Dec 2022 22:52:45 -0500 (EST)
Received: from vbox.gregn.net (unknown [IPv6:2607:fb90:2d17:4764:3bd2:518a:8c7:ddaa])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by vserver.gregn.net (Postfix) with ESMTPSA id 8B5882B0;
	Sat,  3 Dec 2022 19:52:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gregn.net; s=default;
	t=1670125932; bh=gKFQMt7wju/BIQd4QSJR/Fm9quaxafGdD/ZEzLTQw70=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=WvtGbdXGzfDL1600AcYyaQcmasX4DQ/pOq8qVTfN8/zcMIbSQwn8N9VMA+gLY5ALW
	 7IcLqEHKnPrPDPdyVB01e0OoP/wzE2C3H6fI3CvyEOelDX0EmUMeaWivB0qhDOUyYn
	 YMLLz40DGt3+dhhW8dlVeq0MGAoEaFJ57C7SoNL33c3ystwnTcHzx8zj6+1ChFhaTZ
	 mKVdGAuJe2Km5fzUlEaUXIkgJw76bK+zCxdlNTwe7vNHH0NHe8g1+v1PnWMwp6eEtq
	 O3Wd5c0Bx5U3roOymjZXMRQZA2Nl6L/rpIaWwlEFQiHMD0kycFB55Gdi5F/IlatzQB
	 dWaPFuLibDZNQ==
Received: by vbox.gregn.net (Postfix, from userid 1000)
	id 1FD87C4B7; Sat,  3 Dec 2022 20:52:11 -0700 (MST)
Date: Sat, 3 Dec 2022 20:52:11 -0700
From: Gregory Nowak <greg@gregn.net>
To: K0LNY_Glenn <glenn@ervin.email>
Cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: change eSpeak Default Voice
Message-ID: <Y4wZa/0WtgPE3nyH@gregn.net>
References: <013f01d9074d$551a6650$88ffa8c0@Win7VM>
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
In-Reply-To: <013f01d9074d$551a6650$88ffa8c0@Win7VM>
X-PGP-Key: http://www.gregn.net/pubkey.asc
X-Virus-Scanned: clamav-milter 0.103.6 at vserver
X-Virus-Status: Clean
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Depends on the front-end being used to drive espeak. If using espeakup,
the change would be in /etc/default/espeakup on debian and
derivatives. I don't know about other distributions like arch and
fedora.

If using speech-dispatcher, you would change the DefaultVoiceType
parameter in /etc/speech-dispatcher/speechd.conf.

Greg


On Sat, Dec 03, 2022 at 01:27:49PM -0600, K0LNY_Glenn wrote:
> Hi,
> Is there a conf file or something where I can change the default voice of 
> eSpeak?
> So if I did something like:
> espeak "this is a test"
> it would use the default voice of another eSpeak voice?
> I changed it in Orca, so I'm wondering if it can be changed at this level.
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

