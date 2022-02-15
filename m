Return-Path: <speakup+bounces-369-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id C231D4B60D8
	for <lists+speakup@lfdr.de>; Tue, 15 Feb 2022 03:15:17 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=EFVraEZ0;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id A0D19381403; Mon, 14 Feb 2022 21:15:16 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 8E139380961
	for <lists+speakup@lfdr.de>; Mon, 14 Feb 2022 21:15:16 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id AB280380BAD; Mon, 14 Feb 2022 21:15:10 -0500 (EST)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 588E4380961
	for <speakup@linux-speakup.org>; Mon, 14 Feb 2022 21:15:10 -0500 (EST)
Received: from vbox.gregn.net (unknown [IPv6:2607:fb90:e57a:3311:e3ca:ba91:1b60:dfa2])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by vserver.gregn.net (Postfix) with ESMTPSA id A27401552
	for <speakup@linux-speakup.org>; Mon, 14 Feb 2022 18:15:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gregn.net; s=default;
	t=1644891313; bh=V2qwIK8Ly5geGjf5TrlCvKbEoMiJAGNeh1GUDiCMLYE=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=EFVraEZ0uGhj5wudnS9UO4ZTjt56RjbawrnSyFHWlMZK1Jgp7PJbnZKE8VrukMOiv
	 HWzseET4qTCSaXpSspKrtQlm1Ll/5mQ7iz0Uw4X5j2Q+eLjwNX8XoVA/IKbl+dd2W7
	 0+li7YnjOFL5R9zxKDaGpudZtl7McmDo5CWhmHOO5/wkr5kcFIzU1mCZYK8qyUIrt1
	 2cINiKv2bbrro2uJhFvtkOhuQcFZglbBUCgqK4hdlORRf1ROWZCTSkdl8NE1QzokZ+
	 sdZOxW6gBvQhcFUqRAHH38McVRPDfCYElJz46rJX4cSZpl3+KSs0GxcdEGFvnfoN04
	 FDKJTcqbBJvGw==
Received: by vbox.gregn.net (Postfix, from userid 1000)
	id 24F7DC220; Mon, 14 Feb 2022 19:15:08 -0700 (MST)
Date: Mon, 14 Feb 2022 19:15:08 -0700
From: Gregory Nowak <greg@gregn.net>
To: speakup@linux-speakup.org
Subject: Re: how to use ltlk with usb to serial converter
Message-ID: <YgsMrCXohKq+hret@gregn.net>
References: <YgiAbvvPEkj9cKEN@gregn.net>
 <84357c01.d926.4073.bb4d.b7d31e959648@samobile.net>
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
In-Reply-To: <84357c01.d926.4073.bb4d.b7d31e959648@samobile.net>
X-PGP-Key: http://www.gregn.net/pubkey.asc
X-Virus-Scanned: clamav-milter 0.103.4 at vserver
X-Virus-Status: Clean
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

On Sun, Feb 13, 2022 at 07:10:20PM -0500, tony seth wrote:
> I looked all over for that, where did you find it please? In case I ever
> forget.

modinfo -p speakup_ltlk

Greg


-- 
web site: http://www.gregn.net
gpg public key: http://www.gregn.net/pubkey.asc
skype: gregn1
(authorization required, add me to your contacts list first)
If we haven't been in touch before, e-mail me before adding me to your contacts.

--
Free domains: http://www.eu.org/ or mail dns-manager@EU.org

