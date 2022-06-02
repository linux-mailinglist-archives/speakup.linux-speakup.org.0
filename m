Return-Path: <speakup+bounces-442-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 6B45253B218
	for <lists+speakup@lfdr.de>; Thu,  2 Jun 2022 05:34:10 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=VHN2/V17;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 69A3A380E06; Wed,  1 Jun 2022 23:34:09 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 53AA6380B4E
	for <lists+speakup@lfdr.de>; Wed,  1 Jun 2022 23:34:09 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 8BE8B380C6B; Wed,  1 Jun 2022 23:34:02 -0400 (EDT)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 6D639380B4E
	for <speakup@linux-speakup.org>; Wed,  1 Jun 2022 23:34:02 -0400 (EDT)
Received: from vbox.gregn.net (unknown [IPv6:2607:fb90:2d9f:c030:9c3d:3aa2:392a:3209])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by vserver.gregn.net (Postfix) with ESMTPSA id 66875652;
	Wed,  1 Jun 2022 20:33:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gregn.net; s=default;
	t=1654140811; bh=13Yf0qmW3t4h2pLeE9qknPh2rP4NcLTtPfHGFEqR/1g=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=VHN2/V17RxKFhTvDRgbG9NA1/w4EZwRMNOo/p7sjANQZHHneCCYfEF8fUad+n/Gto
	 IfHEdg8cHeSyldz0QKoad+nEGyIJS2UyXmqYBPI6WcMLp1usfsPSFX/UvowHOqKEXf
	 fQtIlwbTh4m3xvqj3cOe5nQEMISheiaGu/T/s55NRe6ghiO6eCdB2K8nX7RmvoEyf2
	 fM2h9biSI1mRYuHcd5DgHU6/0jNIU6b26LKsqfvLOLR+duhnfhwCgwgsse4w9JZuvi
	 fQ5+xnkOU6ThWRRZ8TneO3penOQDCRnxBy+q4dPTlfLQwmRSvO+Vz5ZkP/yuNY2l8t
	 1P8/7rY4HYGgA==
Received: by vbox.gregn.net (Postfix, from userid 1000)
	id 8AAE7C1D6; Wed,  1 Jun 2022 20:33:30 -0700 (MST)
Date: Wed, 1 Jun 2022 20:33:30 -0700
From: Gregory Nowak <greg@gregn.net>
To: K0LNY_Glenn <glenn@ervin.email>
Cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: copying a message in a terminal
Message-ID: <YpgviocSSUg49iUb@gregn.net>
References: <003401d87620$354b0690$84ffa8c0@WIN40RPKAT965G>
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
In-Reply-To: <003401d87620$354b0690$84ffa8c0@WIN40RPKAT965G>
X-PGP-Key: http://www.gregn.net/pubkey.asc
X-Virus-Scanned: clamav-milter 0.103.6 at vserver
X-Virus-Status: Clean
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

In terminal I assume means in the GUI. Orca has key strokes for copy
and append contents under flat review to clipboard, but they're not
assigned by default. Since there's no way to select a block of text in
flat review as far as I know, you would have to issue copy the first
time, and then issue append every time you move the flat review
cursor. You can then paste the whole thing into a text editor. If
there's a better way to do this, I'm sure someone will jump in.

The problem with using script is that also captures whatever
characters are sent to draw the screen, so doesn't always provide
something that can be easily copied and pasted.

Greg


On Wed, Jun 01, 2022 at 08:29:29PM -0500, K0LNY_Glenn wrote:
> Hi,
> Someone is trying to figure out what is wrong with my Chirp program, and he 
> wrote asking to issue a command and and an error message should show up in 
> the terminal.
> Using Ubuntu.
> I know how to put  a greater and a file.txt after some commands, and it 
> prints to that file, but in this case, he is assuming I know how to copy 
> text above the cursor in a terminal, and I  have never done that, I didn't 
> think that was possible.
> Thanks for any instructions for doing this.
> 
> Glenn 
> 
> 

-- 
web site: http://www.gregn.net
gpg public key: http://www.gregn.net/pubkey.asc
skype: gregn1
(authorization required, add me to your contacts list first)
If we haven't been in touch before, e-mail me before adding me to your contacts.

--
Free domains: http://www.eu.org/ or mail dns-manager@EU.org

