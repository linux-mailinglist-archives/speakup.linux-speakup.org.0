Return-Path: <speakup+bounces-657-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 3D3E95A1DB3
	for <lists+speakup@lfdr.de>; Fri, 26 Aug 2022 02:35:21 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=axIkdVsh;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id D97FB3813DE; Thu, 25 Aug 2022 20:35:19 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id C5FE7380EEB
	for <lists+speakup@lfdr.de>; Thu, 25 Aug 2022 20:35:19 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 85EDF380EE3; Thu, 25 Aug 2022 20:35:13 -0400 (EDT)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 63CFE380E98
	for <speakup@linux-speakup.org>; Thu, 25 Aug 2022 20:35:13 -0400 (EDT)
Received: from vbox.gregn.net (unknown [IPv6:2607:fb90:728b:c08b:91d7:2377:56bf:7a1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by vserver.gregn.net (Postfix) with ESMTPSA id 7B91A1A4
	for <speakup@linux-speakup.org>; Thu, 25 Aug 2022 17:35:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gregn.net; s=default;
	t=1661474112; bh=NP+4ZGrrExKhfwPkNZySk8xPpJnZcgALtOmzECB13mg=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=axIkdVshcQ+DT0Kh6TZMKoZK0k4JThoV30BuU2UhESIfaHct45fuut/4LzT8BP05Z
	 5JAfoKnjLpZqmPA/wBC6nBoUi6VHQ8Y6a0Reh/va2CVISZ5lMsIFtLz5SU1LuLnHZv
	 d2I4BmSkDMk5cpJdeelVrJ3AMpsVQKKZil8g/QqcYex2zp9xfVCQ9o0E/479w+T5z1
	 IYAbZuXNCuSAo8wOpLrC5fjBjfNRDqcock2fYdXngDa/5aWs6bBZGzGixSkxhYCP4Z
	 b2hsaZcKAJuTA7ipQMdlOIOCJmhb/UfhHgrq6gSxG+vu0Zqbt6LkAs1ZkAv2z3V/yw
	 gMv6iMlpyxF9g==
Received: by vbox.gregn.net (Postfix, from userid 1000)
	id 90E0DD3FF; Thu, 25 Aug 2022 17:35:11 -0700 (MST)
Date: Thu, 25 Aug 2022 17:35:11 -0700
From: Gregory Nowak <greg@gregn.net>
To: speakup@linux-speakup.org
Subject: Re: hopefully some help with AntiX
Message-ID: <YwgVP0Py7IKtJ0jo@gregn.net>
References: <005b01d8b764$65f690e0$80ffa8c0@Win7VM>
 <f1e0bff4-cbdc-1766-293-dc2558869c6b@panix.com>
 <007001d8b776$2a7193a0$80ffa8c0@Win7VM>
 <alpine.DEB.2.21.1.2208241123100.3538@willempc.meraka.csir.co.za>
 <011d01d8b7dc$1fbf79c0$80ffa8c0@Win7VM>
 <alpine.DEB.2.21.1.2208251022200.17853@willempc.meraka.csir.co.za>
 <YwgMl3QDVvPQ7HpZ@gregn.net>
 <028101d8b8df$22d65800$80ffa8c0@Win7VM>
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
In-Reply-To: <028101d8b8df$22d65800$80ffa8c0@Win7VM>
X-PGP-Key: http://www.gregn.net/pubkey.asc
X-Virus-Scanned: clamav-milter 0.103.6 at vserver
X-Virus-Status: Clean
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

On Thu, Aug 25, 2022 at 07:02:29PM -0500, K0LNY_Glenn wrote:
> I used 0/24 in what Willem sent out, but the IP addresses start at /1, so 
> would I want to use /0/24 or /1/24?

No, you want to use 0/24, since if the addresses start at one, zero is
the network address with a /24 subnet.

Greg


-- 
web site: http://www.gregn.net
gpg public key: http://www.gregn.net/pubkey.asc
skype: gregn1
(authorization required, add me to your contacts list first)
If we haven't been in touch before, e-mail me before adding me to your contacts.

--
Free domains: http://www.eu.org/ or mail dns-manager@EU.org

