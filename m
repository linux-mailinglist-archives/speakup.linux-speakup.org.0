Return-Path: <speakup+bounces-1161-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id F0C68929A9A
	for <lists+speakup@lfdr.de>; Mon,  8 Jul 2024 03:50:10 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=lzblJ1aG;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 2E32FC81CAA; Sun, 07 Jul 2024 21:50:09 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 0D4A4C80FFA
	for <lists+speakup@lfdr.de>; Sun, 07 Jul 2024 21:50:09 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id ECF12C80FF9; Sun, 07 Jul 2024 21:50:00 -0400 (EDT)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 417E1C80AFA
	for <speakup@linux-speakup.org>; Sun, 07 Jul 2024 21:50:00 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gregn.net; s=default;
	t=1720403396; bh=LGu4sKbYMw+kQEX1pO1RtAs7DF7SKCPo+YYT+WPpgv4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lzblJ1aGra9nnvjEDLSdqIdCGdtlo1b9WzCQw6hooSKw8aTxvOcQFN29JSYoTB3nS
	 BgiIA57xAuSFJwYC7CbXgfgf4/NO5qdNPlO1lc7za80SPHR3l27nmDXC0aFJM5EFLX
	 gGL9OY6U+++wKf3pk71e/W7KA+U/ANf+cJifTTx++jqcfEii2yhMyH4I3RRjP2cVIh
	 lRfptqCFgh7U/aGg0I8N8ifjaVl1BJhrpfCxtqxrDMmsjW54wsR6uMAdZfZnveScBc
	 rxqFVvcnxmkFvIe+Y+KPWv7xx0egZitSCEIAX05HCYlXFFk8fLafVEil3v3RTG2BbH
	 nVhHB/N0cJkoA==
Received: from vbox.gregn.net (unknown [172.58.208.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (secp384r1) server-digest SHA384)
	(No client certificate requested)
	by vserver.gregn.net (Postfix) with ESMTPSA id C903246C;
	Sun,  7 Jul 2024 18:49:56 -0700 (PDT)
Received: by vbox.gregn.net (Postfix, from userid 1000)
	id 9C94CC178; Sun,  7 Jul 2024 18:49:55 -0700 (MST)
Date: Sun, 7 Jul 2024 18:49:55 -0700
From: Gregory Nowak <greg@gregn.net>
To: Samuel Thibault <samuel.thibault@aquilenet.fr>
Cc: Jude DaShiell <jdashiel@panix.com>, speakup@linux-speakup.org
Subject: Re: devuan daedelus and speakup
Message-ID: <ZotFw1UFZFuWCOOh@gregn.net>
References: <14439926-6631-5be8-ae20-5349f21b480b@panix.com>
 <Zoc405+OrKfT1Qkk@gregn.net>
 <20240707172043.sx6ahp5brdqv5rvp@begin>
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
In-Reply-To: <20240707172043.sx6ahp5brdqv5rvp@begin>
X-PGP-Key: http://www.gregn.net/pubkey.asc
X-Virus-Scanned: clamav-milter 1.0.5 at vserver
X-Virus-Status: Clean
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

This was suggested by myself and a couple of other folks:

<https://lists.dyne.org/lurker/message/20230710.215627.4cc9d05e.en.html>

<https://lists.dyne.org/lurker/message/20230710.221222.556dffc2.en.html>


For context, the full thread is at:

<https://lists.dyne.org/lurker/thread/20230710.211656.46c6a550.en.html>

I can open a bug report on devuan's BTS to bring s <enter> back, but
it will take more voices than just mine to make that happen since it
didn't happen when suggested in the thread I referenced.

If others would be willing to comment, I can post the URL to the bug
report once I open it. If someone else wants to open it, feel free:
<https://bugs.devuan.org>
Since the speakup list is no longer publicly archived as far as I
know, I'm not able to simply provide a URL to this thread in the bug
report. If a public archive exists, I'd love to know where. Is a
severity of grave justified for such a bug report?

Greg


On Sun, Jul 07, 2024 at 07:20:43PM +0200, Samuel Thibault wrote:
> Gregory Nowak, le jeu. 04 juil. 2024 17:05:39 -0700, a ecrit:
> > The boot menu for Daedalus was modified. The options in the boot menu
> > are as follows:
> > 
> > To get the equivalent of s enter in debian, type 5 enter.
> 
> It would be useful to report to Daedalus that they should add the 's'
> shortcut, it'll be way more long-term-safe than a number that could very
> well change over time.
> 
> Samuel
> 

-- 
web site: http://www.gregn.net
gpg public key: http://www.gregn.net/pubkey.asc

--
Free domains: http://www.eu.org/ or mail dns-manager@EU.org

