Return-Path: <speakup+bounces-366-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 7DA2D4B3945
	for <lists+speakup@lfdr.de>; Sun, 13 Feb 2022 04:52:24 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=xg+RKgIk;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id DE35F381133; Sat, 12 Feb 2022 22:52:23 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id CA129380BEB
	for <lists+speakup@lfdr.de>; Sat, 12 Feb 2022 22:52:23 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id C4BFC380C70; Sat, 12 Feb 2022 22:52:17 -0500 (EST)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 79CDD3805F3
	for <speakup@linux-speakup.org>; Sat, 12 Feb 2022 22:52:17 -0500 (EST)
Received: from vbox.gregn.net (unknown [172.58.17.242])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by vserver.gregn.net (Postfix) with ESMTPSA id 594087CA
	for <speakup@linux-speakup.org>; Sat, 12 Feb 2022 19:52:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gregn.net; s=default;
	t=1644724337; bh=HwQiEmbRgH4VcSJX2zGGj8b40QAIgcS5r5yZqkW49wQ=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=xg+RKgIkXNWv51NOpX08FRrDo0ZfJ7paxoxQhLgt4sBsncQmoz1kqZ1EU5V1JO6SR
	 IKWAHqR6Z1fFRSlwigYzT6DGKeaiM5lRQ9N2fulRRbOmzZYJnQU2wyhvC3MQqf8lKz
	 q18XPfE1oM89r5SRB5NlgSET3k7O+UZEWjY9b5so/9tsiM4IQL4GenbjQDfeqYdGzp
	 GGxXcCOjn7LInbvVQ2ji4oYAv5tZEls/6LhBADQ5anhKj6KZFkFhd24PNiC4oDIC6R
	 MpLvH1Vq4HCYER0cVNv96FMp3bHpVPOXgFjtMFrwUm/q9U6ojJBptWXJmHH7d0lAnD
	 5X+cLd9DUnwLQ==
Received: by vbox.gregn.net (Postfix, from userid 1000)
	id 437D9C247; Sat, 12 Feb 2022 20:52:14 -0700 (MST)
Date: Sat, 12 Feb 2022 20:52:14 -0700
From: Gregory Nowak <greg@gregn.net>
To: speakup@linux-speakup.org
Subject: Re: how to use ltlk with usb to serial converter
Message-ID: <YgiAbvvPEkj9cKEN@gregn.net>
References: <3c4a04f0.6f54.4391.8aca.3cbe239fbabf@samobile.net>
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
In-Reply-To: <3c4a04f0.6f54.4391.8aca.3cbe239fbabf@samobile.net>
X-PGP-Key: http://www.gregn.net/pubkey.asc
X-Virus-Scanned: clamav-milter 0.103.4 at vserver
X-Virus-Status: Clean
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

I assume you mean ttyUSB0. So, what you want is:

modprobe speakup_ltlk dev=ttyUSB0

You want to either do that as root, or prefix it with sudo.

Greg


On Sat, Feb 12, 2022 at 09:42:35PM -0500, tony seth wrote:
> Well hello there all:
> The subject says it all. I seem to remember a way to start Speakup with a
> usb to serial converter but can't remember the syntax.
> I know it may work because I can get the doubletalk to speak when I pipe
> text to ttyUBS0.
> Thanks much for any help.
> I'm using Speakup 3.16 with Kernel 5.14.14.
> Thanks much...
> Cheereo!
> 

-- 
web site: http://www.gregn.net
gpg public key: http://www.gregn.net/pubkey.asc
skype: gregn1
(authorization required, add me to your contacts list first)
If we haven't been in touch before, e-mail me before adding me to your contacts.

--
Free domains: http://www.eu.org/ or mail dns-manager@EU.org

