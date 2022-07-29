Return-Path: <speakup+bounces-492-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id A9B24584911
	for <lists+speakup@lfdr.de>; Fri, 29 Jul 2022 02:29:18 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=VAkKmlOI;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id B2637380ADF; Thu, 28 Jul 2022 20:29:17 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 90E2C380AC9
	for <lists+speakup@lfdr.de>; Thu, 28 Jul 2022 20:29:17 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 2EC2F380A86; Thu, 28 Jul 2022 20:29:10 -0400 (EDT)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
	by befuddled.reisers.ca (Postfix) with ESMTPS id C140338078B
	for <speakup@linux-speakup.org>; Thu, 28 Jul 2022 20:29:09 -0400 (EDT)
Received: from vbox.gregn.net (unknown [172.58.21.8])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by vserver.gregn.net (Postfix) with ESMTPSA id 6A4D9F1
	for <speakup@linux-speakup.org>; Thu, 28 Jul 2022 17:28:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gregn.net; s=default;
	t=1659054518; bh=KKPhxzm+IgjXFiBrzSbBIT1kxbgCXZfCQaY3AdNUsto=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=VAkKmlOIu98/vfEqrFSfaLVC5skxXQIpVjAiIcpkMLQrIWm+aNGk37beyPaIlIgMw
	 INLgf24tzOKLkbpPPmLfWbpu6g72EQ0O4XI9he/0Rp7mBlMLpdxEjJd9wnrjd+hXX2
	 1Aja/XXuzSp1+fSjQauP5R15vmFiINW+wTnJKbBVEHu3XmmU2ET30WUAqxWjBOvjEa
	 lFI1xN+QbzLB9g3kuxfsM2Otxkx7IgeptaijRKwWNmKCvSZIn8IwNcILGs1OquXvHr
	 j9DPcMy4ccNlPARy+gU/M+i3VvjadId51VnUpdmvWr7Jr5oXmB1PR5l/jYmy4XLrR2
	 5Ho4hbnGYVLwQ==
Received: by vbox.gregn.net (Postfix, from userid 1000)
	id 51109C482; Thu, 28 Jul 2022 17:28:37 -0700 (MST)
Date: Thu, 28 Jul 2022 17:28:37 -0700
From: Gregory Nowak <greg@gregn.net>
To: speakup@linux-speakup.org
Subject: Re: Speakup Punctuation Settings Within An Embedded Voxin Voice?
Message-ID: <YuMpteM2zBvNc7Dn@gregn.net>
References: <669c9e7e-ab0b-dedd-cd51-a37aaa733ec8@hubert-humphrey.com>
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
In-Reply-To: <669c9e7e-ab0b-dedd-cd51-a37aaa733ec8@hubert-humphrey.com>
X-PGP-Key: http://www.gregn.net/pubkey.asc
X-Virus-Scanned: clamav-milter 0.103.6 at vserver
X-Virus-Status: Clean
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Since you're using voxin with speakup, you're almost certainly doing
so through speechd-up. Speechd-up was written as a proof of concept,
and hasn't been updated in over 10 years as far as I know. This means
that you have to put up with the extra punctuation and lack of volume,
rate, or pitch control through speakup itself if you want to use voxin.

Greg


On Thu, Jul 28, 2022 at 03:41:45PM -0700, Chime Hart wrote:
> Hi All: After `many months of struggles, I now have Allison, an embedded
> Voxin voice with Speakup. However, there are still issues? While the Speakup
> volume pannel announces changes, I can only change volume in alsa mixer.
> Sure, I can live with that, but, listening to all these dashes-and-colons,
> even with both punctuation settings on 0. Here are other strange things.
> There are no files or directories of Speakup settings, such as /etc/speakup.
> I suppose I could copy items from my desktop machine, but maybe there are
> better ways of solving this? In voxin.ini punctuation is set to "no" And I
> have traded messages with Gilles from Oralux, who says dictionaries are not
> yet available for embedded voices. I am in Debian SID. If I type sudo
> "speakupconf save/load" it says there is no directory /etc/speakup. So are
> their Debian or Speakup commands to create these files-and-would they help
> get rid of more punctuation? Thanks so much in advance.
> Chime
> 

-- 
web site: http://www.gregn.net
gpg public key: http://www.gregn.net/pubkey.asc
skype: gregn1
(authorization required, add me to your contacts list first)
If we haven't been in touch before, e-mail me before adding me to your contacts.

--
Free domains: http://www.eu.org/ or mail dns-manager@EU.org

