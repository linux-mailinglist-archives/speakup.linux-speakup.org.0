Return-Path: <speakup+bounces-970-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id D02B773D576
	for <lists+speakup@lfdr.de>; Mon, 26 Jun 2023 03:07:36 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=VpD6b2bx;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 32B06382584; Sun, 25 Jun 2023 21:07:35 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 1296138237A
	for <lists+speakup@lfdr.de>; Sun, 25 Jun 2023 21:07:35 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 300AC3823C3; Sun, 25 Jun 2023 21:07:27 -0400 (EDT)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
	by befuddled.reisers.ca (Postfix) with ESMTPS id D7E55382375
	for <speakup@linux-speakup.org>; Sun, 25 Jun 2023 21:07:26 -0400 (EDT)
Received: from vbox.gregn.net (unknown [172.56.81.38])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by vserver.gregn.net (Postfix) with ESMTPSA id 88B505B0A;
	Sun, 25 Jun 2023 18:06:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gregn.net; s=default;
	t=1687741614; bh=j5x1MYjfD++UsbfcMK9LheraS+el+LYoldvV5EJrPJg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=VpD6b2bxSrOTT1glnZjDDKdUCyHUDucZA8birHDqKwuGKvvaM0mYthssnplgLbEYy
	 tML/86QbdhuAG7IxM68kE9HASZxRajSPxkC7QG8EdDFAEZN2cusOyUTmcHPcAvlXWp
	 XqMWhswiW+UYsDW7MUfiPtuLHLt3pYxhvaTNjLC1rTW5QHNhotbTG9Nj4VcTJbT5qA
	 QrS9p1Ge4bOuQMQR6w1cu5YLri+0dclIBoe3LJ8t4kyxcOIJDuBYZyQSxeV1Iu4IIY
	 rbWWbmtPddnVSbU2YF48L8PkD7hdbXvLDl1xULQ0wMHGvTMUPuhcjefw+OGeZuIkDy
	 HT3VTr6gOuUWA==
Received: by vbox.gregn.net (Postfix, from userid 1000)
	id 31F03C075; Sun, 25 Jun 2023 18:06:53 -0700 (MST)
Date: Sun, 25 Jun 2023 18:06:53 -0700
From: Gregory Nowak <greg@gregn.net>
To: Jason White <jason@jasonjgw.net>
Cc: speakup@linux-speakup.org
Subject: Re: ot: dectalk internal drivers?
Message-ID: <ZJjkrZTOTRNk8NUE@gregn.net>
References: <Pine.LNX.4.64.2306241500460.774016@users.shellworld.net>
 <1486e800-a981-31bd-05da-86699f680285@pcdesk.net>
 <Pine.LNX.4.64.2306242309530.778686@users.shellworld.net>
 <ZJextwg4IF88wZpM@titan>
 <Pine.LNX.4.64.2306242321590.778686@users.shellworld.net>
 <ZJezr66-vWtVj5zE@titan>
 <Pine.LNX.4.64.2306242359540.779316@users.shellworld.net>
 <208a3964-66c6-35ed-028c-1126bd0da3bf@jasonjgw.net>
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
In-Reply-To: <208a3964-66c6-35ed-028c-1126bd0da3bf@jasonjgw.net>
X-PGP-Key: http://www.gregn.net/pubkey.asc
X-Virus-Scanned: clamav-milter 0.103.8 at vserver
X-Virus-Status: Clean
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

On Sun, Jun 25, 2023 at 10:02:19AM -0400, Jason White wrote:
> In fact, I don't know whether Linux
> still runs on x86 machines with ISA slots.

# uname -r; dmesg |grep -i "doubletalk"
5.10.0-23-686-pae
[   67.301489] Probing for DoubleTalk.
[   67.305490] DoubleTalk PC: 29e-29f, ROM ver 5.74, s/n xxxxx,
driver: 2.10

Greg


-- 
web site: http://www.gregn.net
gpg public key: http://www.gregn.net/pubkey.asc
skype: gregn1
(authorization required, add me to your contacts list first)
If we haven't been in touch before, e-mail me before adding me to your contacts.

--
Free domains: http://www.eu.org/ or mail dns-manager@EU.org

