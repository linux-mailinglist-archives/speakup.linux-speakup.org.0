Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (tunnel25281-pt.tunnel.tserv21.tor1.ipv6.he.net [IPv6:2001:470:1c:288::2])
	by mail.lfdr.de (Postfix) with ESMTP id EEC0028A534
	for <lists+speakup@lfdr.de>; Sun, 11 Oct 2020 06:09:57 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 896C1380BB6; Sun, 11 Oct 2020 00:09:57 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm2 header.b=JQUnui32;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm1 header.b=RSA7w9Vv;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 0810F380BB3;
	Sun, 11 Oct 2020 00:09:56 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 7CD5F380B26; Sun, 11 Oct 2020 00:09:54 -0400 (EDT)
Received: from wout2-smtp.messagingengine.com (wout2-smtp.messagingengine.com
 [64.147.123.25])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 0538738096B
 for <speakup@linux-speakup.org>; Sun, 11 Oct 2020 00:09:54 -0400 (EDT)
Received: from compute2.internal (compute2.nyi.internal [10.202.2.42])
 by mailout.west.internal (Postfix) with ESMTP id 4D0BC614
 for <speakup@linux-speakup.org>; Sun, 11 Oct 2020 00:09:51 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute2.internal (MEProxy); Sun, 11 Oct 2020 00:09:51 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 hubert-humphrey.com; h=date:from:to:subject:in-reply-to
 :message-id:references:mime-version:content-type; s=fm2; bh=SEfx
 0Qj8fRV0DgmcIwyLuXHCF8YVq9el8VNSUMgZ+D0=; b=JQUnui32O014ChTULBp2
 E3QohNCaNVxlvsMUdUlzJiT57ylwMrxzCqL0xO0ifq5sV6rMi0B0+CTCNeGX5sp5
 LQfdj4k5u4dCYcF4n7hCYFOtNgk8aRd+EZWlWMdDp5ewi6x7TFSzicQYVQAvpKm8
 ASSrm2FUWBTJrM44nurnP4twD3JA8lRcwnh2E70B9qClyKt3AtiCvVcKZdCbBr6V
 DN46hA66h943h/Ejhrz2g8PX19EnmS8vjhjHuKm7Ros0riutNjuETxLpYXjNGSn/
 OeSG8RNomxpOsxhby2PWyT3OyJbIkQt3jYHzuUXUQsgi4d6RVkI91231gUMof6v/
 rQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=SEfx0Q
 j8fRV0DgmcIwyLuXHCF8YVq9el8VNSUMgZ+D0=; b=RSA7w9Vvvsey8qTuHn6CCR
 vs8ryx4FMsrLQJ2iRgNU+pHvJtI0OXLzJCa7TqbgHFpoEzM2/Uu3v0YBtXqbUo5D
 wgGJJhv6fqq9HfO51jb74Qxp6qf5dELmqb93PBTDQYfE+0LgAf9uWEQoeKT238gO
 GFXiOLVb34Zb+T/uiVoH16sI3GekJGM3iCuXrZ44Fv5Ide3+/SjGv38uOhVmnzZw
 sfCy3Dtg8tzt624IEpMC44EaxxfWTAARNJ4gWCTSHcc53t6B+2cxVqSh5cecERx2
 OS4eaCRiDHmV4XSZGl40qDSOvBiFbLvhM0so7O4whHss0EbXMXzTTl0W9bG7Tryg
 ==
X-ME-Sender: <xms:joWCX03J8_xSKLvhZEIECNKMKqtSCK9DjksXRgh0X5XadeKOgzzeYQ>
 <xme:joWCX_H_mVsYzZaAWOJPqkoRF8ZOOkRDWE1hrEL-_V1zvhwba4Y3-Cf_LX-40QvKZ
 QShcqRikebESf--vLY>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedrheeggdejtdcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvufgjkfhffgggtgesthdtredttdervdenucfhrhhomhepvehhihhmvgcu
 jfgrrhhtuceotghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomheqnecugg
 ftrfgrthhtvghrnhepfeduvdduvdevffefveegjeffgffgieeigfdtuefghefgjeehtdei
 lefhueelleffnecukfhppedutdegrddujedvrdefrdeifeenucevlhhushhtvghrufhiii
 gvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegthhhimhgvsehhuhgsvghrthdqhhhu
 mhhphhhrvgihrdgtohhm
X-ME-Proxy: <xmx:joWCX87XEERN0DB0ZxfIUd0DbFw0-IvnIW6H5k81u1LtzOyHWlbkvg>
 <xmx:joWCX91i2vchimYNiCgjkEgf3PHACbRcLL-E8mvI9J_Fvyv8x8kgyg>
 <xmx:joWCX3FqzsIxXuzZevCgM6sbulmr1TV9vUOH3CUogGuOsyJ0SuDkQQ>
 <xmx:joWCX7Qw5XxncOJvcG4d8scSNZBhOu1zKIhF1jAoTPGdaFev0zG_jg>
Received: from chime.lan (cpe-104-172-3-63.socal.res.rr.com [104.172.3.63])
 by mail.messagingengine.com (Postfix) with ESMTPA id 552CA3280067
 for <speakup@linux-speakup.org>; Sun, 11 Oct 2020 00:09:50 -0400 (EDT)
Date: Sat, 10 Oct 2020 21:09:49 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Flushing issue (was: So, where'd the volume controls get to?)
In-Reply-To: <20201011035532.GC4584@gregn.net>
Message-ID: <alpine.DEB.2.23.453.2010102104450.4138594@chime>
References: <alpine.DEB.2.23.453.2010091111480.51713@befuddled.reisers.ca>
 <20201010151312.fbz27eyoua2574tw@function>
 <alpine.DEB.2.23.453.2010101446340.31356@befuddled.reisers.ca>
 <20201010194612.ut6md7liw4e47ky7@function>
 <alpine.DEB.2.23.453.2010101905240.36490@befuddled.reisers.ca>
 <20201010235355.uqqvyyjqxupfw5qw@function> <20201011035532.GC4584@gregn.net>
User-Agent: Alpine 2.23 (DEB 453 2020-06-18)
MIME-Version: 1.0
X-BeenThere: speakup@linux-speakup.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <http://linux-speakup.org/cgi-bin/mailman/options/speakup>, 
 <mailto:speakup-request@linux-speakup.org?subject=unsubscribe>
List-Archive: <http://linux-speakup.org/pipermail/speakup/>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup-request@linux-speakup.org?subject=help>
List-Subscribe: <http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup>,
 <mailto:speakup-request@linux-speakup.org?subject=subscribe>
Reply-To: "Speakup is a screen review system for Linux."
 <speakup@linux-speakup.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

You know, Greg, running Voxin with Speakup on a laptop, I've noticed 
something similar, which I mentioned to Oralux. Voxin wasn't always like 
that, but yes, there was s smijin of a sound from a line above playing 
along with the current line. Voxin is essentially IBM TTS.

Chime
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
