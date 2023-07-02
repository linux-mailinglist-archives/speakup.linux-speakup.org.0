Return-Path: <speakup+bounces-976-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id A69D8745317
	for <lists+speakup@lfdr.de>; Mon,  3 Jul 2023 01:56:31 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=GldK5Nxa;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 2F753382571; Sun,  2 Jul 2023 19:56:31 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 107FF382459
	for <lists+speakup@lfdr.de>; Sun,  2 Jul 2023 19:56:31 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 8220B382461; Sun,  2 Jul 2023 19:56:23 -0400 (EDT)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 007F6382459
	for <speakup@linux-speakup.org>; Sun,  2 Jul 2023 19:56:22 -0400 (EDT)
Received: from vbox.gregn.net (unknown [172.56.81.38])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by vserver.gregn.net (Postfix) with ESMTPSA id 6BDDF3F3F;
	Sun,  2 Jul 2023 16:56:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gregn.net; s=default;
	t=1688342180; bh=indPN4YHBlXDNqJDgk3PWWDL/BWkrsdnn1CzrWyrBhs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GldK5NxaAaRGGXVpdUZp4/wzZqDek8VGl/Bm6CFvFrPsm2n37W6wbOOFf8tW5QVfY
	 u3p0EN3IaJyFxvfae1koJJNxRFW6wwIS3xRG3QMv1VjFGA+xAYMVdDno0AZ6W4Vgq6
	 LCaWdKXwikATCz8PObm6UDJeJ15JtBm3014WRBhOvuvcGMzcnZscPZB/4krYgWnO1M
	 PEewxXN6NLh7bdvceTWfqQ5b4omA/wsxfCm3G8UmUZ2EX4Ss71Y19wfmSkUR2b1dXN
	 YT/bCtaifvGzkU9ild3f5PSo9Jm32YBH+DtVq77tc0JkHMMzVrm9tv3x0Sa91vF1HG
	 TEyv4JKCtiSXQ==
Received: by vbox.gregn.net (Postfix, from userid 1000)
	id A3F88C20F; Sun,  2 Jul 2023 16:56:18 -0700 (MST)
Date: Sun, 2 Jul 2023 16:56:18 -0700
From: Gregory Nowak <greg@gregn.net>
To: Karen Lewellen <klewellen@shellworld.net>
Cc: Jason White <jason@jasonjgw.net>, speakup@linux-speakup.org
Subject: Re: ot: dectalk internal drivers?
Message-ID: <ZKIOor3MvPuudkXB@gregn.net>
References: <Pine.LNX.4.64.2306241500460.774016@users.shellworld.net>
 <1486e800-a981-31bd-05da-86699f680285@pcdesk.net>
 <Pine.LNX.4.64.2306242309530.778686@users.shellworld.net>
 <ZJextwg4IF88wZpM@titan>
 <Pine.LNX.4.64.2306242321590.778686@users.shellworld.net>
 <ZJezr66-vWtVj5zE@titan>
 <Pine.LNX.4.64.2306242359540.779316@users.shellworld.net>
 <208a3964-66c6-35ed-028c-1126bd0da3bf@jasonjgw.net>
 <ZJjkrZTOTRNk8NUE@gregn.net>
 <Pine.LNX.4.64.2307021917510.917640@users.shellworld.net>
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
In-Reply-To: <Pine.LNX.4.64.2307021917510.917640@users.shellworld.net>
X-PGP-Key: http://www.gregn.net/pubkey.asc
X-Virus-Scanned: clamav-milter 0.103.8 at vserver
X-Virus-Status: Clean
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

You're welcome. I also have a doubletalk LT / litetalk, which works
beautifully on a standard serial port, and well enough over a USB to
serial converter. I checked a couple of weeks ago out of interest, and
the RC systems page for the lt says they don't have any in stock, and
that it's retired. I seem to recall hearing the trippletalk is not
being sold anymore either. Hardware synthesizers seem to have become a
chapter in speech synthesis history. Let's keep the ones still working
we own running for as long as we can. It seems that once they break
down, they likely can't be fixed and certainly not replaced.

Greg


On Sun, Jul 02, 2023 at 07:19:27PM -0400, Karen Lewellen wrote:
> Greg,
> This gave me a deeply appreciated reason to smile.
> After all, for many the major major major drawback for Linux is the lack of
> clear quality speech resources.
> Kare



-- 
web site: http://www.gregn.net
gpg public key: http://www.gregn.net/pubkey.asc
skype: gregn1
(authorization required, add me to your contacts list first)
If we haven't been in touch before, e-mail me before adding me to your contacts.

--
Free domains: http://www.eu.org/ or mail dns-manager@EU.org

