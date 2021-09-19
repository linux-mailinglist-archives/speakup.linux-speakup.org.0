Return-Path: <speakup+bounces-298-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id D3CCB410999
	for <lists+speakup@lfdr.de>; Sun, 19 Sep 2021 05:58:17 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=RoIRzBta;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 5E0E73811EE; Sat, 18 Sep 2021 23:58:16 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 49B4C380B11
	for <lists+speakup@lfdr.de>; Sat, 18 Sep 2021 23:58:16 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 78D02380145; Sat, 18 Sep 2021 23:58:10 -0400 (EDT)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 6EBA8380145
	for <speakup@linux-speakup.org>; Sat, 18 Sep 2021 23:58:09 -0400 (EDT)
Received: from vbox.gregn.net (unknown [IPv6:2607:fb90:e545:3e1:117e:c01a:1505:f1f3])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by vserver.gregn.net (Postfix) with ESMTPSA id A00432545
	for <speakup@linux-speakup.org>; Sat, 18 Sep 2021 20:58:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gregn.net; s=default;
	t=1632023897; bh=3laVp+BZTmKYIFU9lRHoGKZW5PrI6sKm16BzeCshan8=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=RoIRzBtasdZrRKpsVkGurSh6FirusSsXBURBCgtIpg2HCBol4YCOoZzDMTLCNvue+
	 STEjpatgl5DfJZwDbY8EWgKp0gdqDnX/yVFGtOqQRUHn4PBZfL4sqkAQNOkdusa9fk
	 Q8QlM/NE2NkGUqsNeOXH05EJuKk7TCLazV6Loq3rXhcVE9VOjdZ9krLz8FJHkdwy7V
	 pBTOHIw6VZYe+vxkdnA1nYD0KUceKkKaVHFozO2ot/JYdvcha0ANqQg2YDhkxfVSFD
	 umq3BS4VMYg5xWiFj8Tmn53xNFNBSB+nZT187Ae+fCAAiUY4HqtZaGjbeFXE13kDh8
	 L9FJlyQ0lH7zQ==
Received: from greg by vbox.gregn.net with local (Exim 4.84_2)
	(envelope-from <greg@gregn.net>)
	id 1mRnxk-0003JT-5x
	for speakup@linux-speakup.org; Sat, 18 Sep 2021 20:57:56 -0700
Date: Sat, 18 Sep 2021 20:57:56 -0700
From: Gregory Nowak <greg@gregn.net>
To: speakup@linux-speakup.org
Subject: loading speakup_soft, was: Re: Broken espeakup on debian sid
Message-ID: <20210919035755.GA11947@gregn.net>
References: <dd651c4c-1178-8d83-125d-23ad3d2cef88@reisers.ca>
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
In-Reply-To: <dd651c4c-1178-8d83-125d-23ad3d2cef88@reisers.ca>
X-PGP-Key: http://www.gregn.net/pubkey.asc
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Virus-Scanned: clamav-milter 0.102.4 at vserver
X-Virus-Status: Clean
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

On Sat, Sep 18, 2021 at 03:26:02PM -0400, Kirk Reiser wrote:
> I noticed in the espeakup build systemd
> services that it loads speakup_soft when the systemd service is
> started.
> 
> I'm not crazy about that being the way to load speakup particularly
> but I'm not that familiar with various distros way of doing things but
> it appears the espeakup maintainers figure everyone is running
> systemd.

No, not everyone is running systemd. I wonder where the espeakup
maintainers got such a notion from?

> 
> That's one of the reasons I mentioned getting folks opinions in my
> last message to you. For people that don't run systemd it will
> certainly break things.

Great. Something else to look forward to fixing when devuan 5 is
coming out, sigh. Fortunately, that's a couple of years from now.

Greg


-- 
web site: http://www.gregn.net
gpg public key: http://www.gregn.net/pubkey.asc
skype: gregn1
(authorization required, add me to your contacts list first)
If we haven't been in touch before, e-mail me before adding me to your contacts.

--
Free domains: http://www.eu.org/ or mail dns-manager@EU.org

