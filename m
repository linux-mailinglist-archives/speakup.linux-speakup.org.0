Return-Path: <speakup+bounces-1259-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 887D9AA3F98
	for <lists+speakup@lfdr.de>; Wed, 30 Apr 2025 02:42:34 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=xnoGSGa4;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 897C8381952; Tue, 29 Apr 2025 20:42:33 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 69E70381952
	for <lists+speakup@lfdr.de>; Tue, 29 Apr 2025 20:42:33 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 8BAF738195E; Tue, 29 Apr 2025 20:42:26 -0400 (EDT)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 655BD381910
	for <speakup@linux-speakup.org>; Tue, 29 Apr 2025 20:42:26 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gregn.net; s=default;
	t=1745973713; bh=XlKmbe5zQpo4dLEmkJe/SZ4zulVJIvBw4rIgeg1w3ag=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=xnoGSGa4HLRfEiwuwEvOj+8DQ0VA64J30NNa1GtPbf00ethbOS5PVQ/xWP34UB0L0
	 kHzgNi00tzCpDH88dnIBkPvHwqC9+QtsDfGuiOn3klM43yz0hpBotwz/PeB7M8Da5Z
	 d7+/3YNcKakwCPlMZtpsPD8RXza5iNjKq1DSmoiixqme/N4PYViLOT4KAnkAj7aLvK
	 LZzivWLQWbR/ACsX6BY/iY07ZzLos2xqipfsIwGpWJMmu1Wgm3lWW9TfX7zmNdGkGV
	 oBblRiiIv34FEjhV27ZeL4SbAegpvNrveRo3p+eSczF16F1qCkvq7fj35AgBK2g4DC
	 94jNH7+NNCjHg==
Received: from vbox.gregn.net (unknown [IPv6:2607:fb91:8ea2:51b0:cc38:22c0:412b:5470])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (secp384r1) server-digest SHA384)
	(No client certificate requested)
	by vserver.gregn.net (Postfix) with ESMTPSA id C9FD01114;
	Tue, 29 Apr 2025 17:41:53 -0700 (PDT)
Received: by vbox.gregn.net (Postfix, from userid 1000)
	id 05D02C14F; Tue, 29 Apr 2025 17:41:53 -0700 (MST)
Date: Tue, 29 Apr 2025 17:41:52 -0700
From: Gregory Nowak <greg@gregn.net>
To: fsmithred <fsmithred@gmail.com>
Cc: speakup@linux-speakup.org
Subject: Re: announcing experimental Devuan Daedalus mate desktop iso
Message-ID: <aBFx0HYXoycQmM-9@gregn.net>
References: <aA1-fneTSXgUZa5y@gregn.net>
 <af828d8a-1e48-40ca-bb3c-94417281967d@gmail.com>
 <aBAx86aYIEKxCw5F@gregn.net>
 <e76a9638-ea16-4491-932b-fff148f8ec0d@gmail.com>
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
In-Reply-To: <e76a9638-ea16-4491-932b-fff148f8ec0d@gmail.com>
X-PGP-Key: http://www.gregn.net/pubkey.asc
X-Virus-Scanned: clamav-milter 1.0.7 at vserver
X-Virus-Status: Clean
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

On Tue, Apr 29, 2025 at 08:31:17AM -0400, fsmithred wrote:
> On 4/28/25 21:57, Gregory Nowak wrote:
> > Some sighted users seem to report that brltty hangs the x server. We
> > had someone claiming that last week on the dng list. There were way
> > more complaints about it when console-productivity was installed by
> > default with I think Ascii.
> > 
> 
> What about installing brltty but turning it off? Then you won't need to
> install it if you want it; you would just need to start the service.

I think that would be a good solution.

Greg


> 
> fsmithred
> 

-- 
web site: http://www.gregn.net
gpg public key: http://www.gregn.net/pubkey.asc

--
Free domains: http://www.eu.org/ or mail dns-manager@EU.org

