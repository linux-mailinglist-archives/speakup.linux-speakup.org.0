Return-Path: <speakup+bounces-1153-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 28EAB927F3D
	for <lists+speakup@lfdr.de>; Fri,  5 Jul 2024 02:06:25 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=SuxVNs/l;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 3C731C81C74; Thu, 04 Jul 2024 20:06:21 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 1EDF1C80A5A
	for <lists+speakup@lfdr.de>; Thu, 04 Jul 2024 20:06:21 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 1376AC80A68; Thu, 04 Jul 2024 20:06:13 -0400 (EDT)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
	by befuddled.reisers.ca (Postfix) with ESMTPS id B75EFC80A5A
	for <speakup@linux-speakup.org>; Thu, 04 Jul 2024 20:06:12 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gregn.net; s=default;
	t=1720137940; bh=5SWnMaWMuZqiGEp29mm5rrLsnaJOiM+N9ySWAMzYUWo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SuxVNs/l4kH5YQ1NloncVaWeU/n3Jbm3Gonxj+hPmKb6w+o6eloRPOzgci4mao/Ju
	 9mnWCJA/MTgxNBf+e82ChuI5C6FzOdFOqf3aXRT2VQFp2pxoTJXOHBfaIgw+BTWtTX
	 t5d+UDweXomgZK+4H00J3rY9FHUYbmIvZQecgX7DYhsasMwvqiNatDR8GC4l+xY4H6
	 dZ5sZMBjnasc7taMYJtAk92A4v8fJgUSUft/WTkYnH/KtP6yhFTQ6f252jbxt7sgfN
	 IX/Iz4bR8Rkodg3yRb/zO6TeVRrAMR73aj168+jWgMTi/gqpgI3HV/pe9suZdcOfIg
	 Jsbqm2oqYasRg==
Received: from vbox.gregn.net (unknown [IPv6:2607:fb91:8880:1563:b59:8b28:5c50:e964])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (secp384r1) server-digest SHA384)
	(No client certificate requested)
	by vserver.gregn.net (Postfix) with ESMTPSA id 799914D6;
	Thu,  4 Jul 2024 17:05:40 -0700 (PDT)
Received: by vbox.gregn.net (Postfix, from userid 1000)
	id 205DBC1ED; Thu,  4 Jul 2024 17:05:39 -0700 (MST)
Date: Thu, 4 Jul 2024 17:05:39 -0700
From: Gregory Nowak <greg@gregn.net>
To: Jude DaShiell <jdashiel@panix.com>
Cc: speakup@linux-speakup.org
Subject: Re: devuan daedelus and speakup
Message-ID: <Zoc405+OrKfT1Qkk@gregn.net>
References: <14439926-6631-5be8-ae20-5349f21b480b@panix.com>
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
In-Reply-To: <14439926-6631-5be8-ae20-5349f21b480b@panix.com>
X-PGP-Key: http://www.gregn.net/pubkey.asc
X-Virus-Scanned: clamav-milter 1.0.5 at vserver
X-Virus-Status: Clean
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

The boot menu for Daedalus was modified. The options in the boot menu
are as follows:

    1 Install - the default and easy installation mode.
        2   Expert install - tediously considering all choices.
	    3   Rescue mode - run rescue shell with the installer
        kernel.
	    4   Automated install - hands-off mode installation.

    5 Install with speech synthesis - easy install with screen
    reading.
        6   Expert speech install - tediously considering all choices.
	    7   Rescue speech mode - run rescue shell with the
    installer kernel.
        8   Automated speech install - hands-off mode installation.

To get the equivalent of s enter in debian, type 5 enter. You can also
arrow down four times and press enter. I wrote up documentation on
this which should have been included in the Daedalus release notes,
but Ralph decided that including a BOOTHELP.txt file inside the iso
images would be enough.

Greg


On Thu, Jul 04, 2024 at 09:45:03AM -0400, Jude DaShiell wrote:
> What is to be done to turn speakup on in devuan daedelus so it can be
> installed with speakup talking?  I got the minimal iso and don't know if
> this one can install with speakup.  I used the s parameter at the grub
> beep and that didn't get speakup talking.  If that is supposed to be how
> it works I downloaded a corrupt iso.
> 
> 
> --
>  Jude <jdashiel at panix dot com>
>  "There are four boxes to be used in defense of liberty:
>  soap, ballot, jury, and ammo.
>  Please use in that order."
>  Ed Howdershelt 1940.
> 

-- 
web site: http://www.gregn.net
gpg public key: http://www.gregn.net/pubkey.asc

--
Free domains: http://www.eu.org/ or mail dns-manager@EU.org

