Return-Path: <speakup+bounces-1241-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id CE2DEA2E129
	for <lists+speakup@lfdr.de>; Sun,  9 Feb 2025 23:27:10 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=XMGuXLyV;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 27C513821A5; Sun, 09 Feb 2025 17:27:08 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 0A4A93818E1
	for <lists+speakup@lfdr.de>; Sun, 09 Feb 2025 17:27:08 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 4048B381976; Sun, 09 Feb 2025 17:27:01 -0500 (EST)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 3F18D380C76
	for <speakup@linux-speakup.org>; Sun, 09 Feb 2025 17:27:00 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gregn.net; s=default;
	t=1739139984; bh=paHJ6EBlNqr8zgRS4n3FpMucjKi5NAMerOzakXH2pno=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XMGuXLyVgop03wok6LCiQ/BEMfge9hFVS2QXLGKeFxKLBCV+QGIdVfCZjFlaqD7Yn
	 nFmEGxn2njBCox/2WW9jvdKL240qVSVgXqkKrDN4wWUC+80feYaMZPY/psCMjmwE+Z
	 JD/79SHQ0jG4tnqo0HANwNn2gIo+6baAO+01OTdIljVrt/N+1zKON3GwStWhpFN5Mx
	 WCX9sf52fnbAGtA48kbpYWSNfhwXvBMLRP44KY3oKXEuurN5G4vNEFJk+6dwSIKBre
	 trWxpv5V0Et03UiFpiKUubUe2kRj7+nSexFNbkXLthaaGZmQzLlCb7kICnH795JYYN
	 LfQmHbw9Drb/Q==
Received: from vbox.gregn.net (unknown [172.56.83.90])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (secp384r1))
	(No client certificate requested)
	by vserver.gregn.net (Postfix) with ESMTPSA id A72E45519;
	Sun,  9 Feb 2025 14:26:24 -0800 (PST)
Received: by vbox.gregn.net (Postfix, from userid 1000)
	id 4D882C14F; Sun,  9 Feb 2025 15:26:23 -0700 (MST)
Date: Sun, 9 Feb 2025 15:26:23 -0700
From: Gregory Nowak <greg@gregn.net>
To: Didier Spaier <didier@slint.fr>
Cc: speakup@linux-speakup.org
Subject: Re: speakup laptop keyboard question
Message-ID: <Z6krj5S0iGNT3lqz@gregn.net>
References: <Z6h5Qc3VPrCe6-_W@panix.com>
 <503f8cdc-b15c-48ae-8ee9-64c56d8d2ebe@slint.fr>
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
In-Reply-To: <503f8cdc-b15c-48ae-8ee9-64c56d8d2ebe@slint.fr>
X-PGP-Key: http://www.gregn.net/pubkey.asc
X-Virus-Scanned: clamav-milter 1.0.7 at vserver
X-Virus-Status: Clean
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

The speakup key is numpad insert or capslock. There is no
highlight/cursor tracking defined for machines without a dedicated
numpad in the speakup keymap currently. If your contact's machine can
emulate the numpad asterisk through the fn key, then use that, or
attach a keyboard with a numpad, or just a numpad if your contact can
get hold of one or has one.

Greg


On Sun, Feb 09, 2025 at 12:06:28PM +0000, Didier Spaier wrote:
> Hi Jude,
> 
> To use the "toggle cursoring" function, if your contact has (or can attach to
> the computer) a keyboard with a numeric keypad, this is asterisk or '*' on the
> keypad. Else (laptop without a numeric keypad) that would be press and hold the
> "speakup key" usually Ctrl and press 8.
> 
> At least that's what I read in the file speakupmap.map here in
> /usr/src/linux-6.12.8/drivers/accessibility/speakup/speakupmap.map
> 
> Cheers,
> Didier
> 
> PS quote from spkguide.txt below
> 
> You may select among the various forms of cursor tracking using the keypad
> asterisk key.
> Each time you press this key, a new mode is selected, and Speakup speaks
> the name of the new mode.  The names for the four possible states of cursor
> tracking are: "cursoring on", "highlight tracking", "read window",
> and "cursoring off."  The keypad asterisk key moves through the list of
> modes in a circular fashion.uide.txt:
> 
> On 09/02/2025 09:45, Jude DaShiell wrote:
> > On a Toshiba satellite laptop what key or keys get used to enable highlight 
> > tracking?  A contact is trying to install a linux on one of these and I never 
> > had one of these computers so don't know what to tell him.
> 
> 
> 

-- 
web site: http://www.gregn.net
gpg public key: http://www.gregn.net/pubkey.asc

--
Free domains: http://www.eu.org/ or mail dns-manager@EU.org

