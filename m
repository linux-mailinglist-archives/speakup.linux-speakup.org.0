Return-Path: <speakup+bounces-837-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id D1E5461A791
	for <lists+speakup@lfdr.de>; Sat,  5 Nov 2022 05:49:47 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=iTX1jEZM;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 95A5A383618; Sat,  5 Nov 2022 00:49:46 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 722CA3835B9
	for <lists+speakup@lfdr.de>; Sat,  5 Nov 2022 00:49:46 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 5DCEB3835BF; Sat,  5 Nov 2022 00:49:37 -0400 (EDT)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 296963831E2
	for <speakup@linux-speakup.org>; Sat,  5 Nov 2022 00:49:37 -0400 (EDT)
Received: from vbox.gregn.net (unknown [172.56.80.132])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by vserver.gregn.net (Postfix) with ESMTPSA id F1C2F3D8
	for <speakup@linux-speakup.org>; Fri,  4 Nov 2022 21:49:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gregn.net; s=default;
	t=1667623776; bh=JlVy62MpWqjT+PbyiMENd3g3CaXKzXkB42LpcFdeh3Q=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=iTX1jEZMCtrpye9fJmUxkWpVR5Acb7fXt6abgSKhfihD+wMouHsUQMge3xNgwNq2W
	 aikm1EdHmf+J9LnPbFwYpm+o7AmkUxG7h1E1eFn+xeD9U5VIjkLmhhzcXDty/fV/WC
	 Z5WBT0CZpQrIKA3PI0Z/zz5A32dZPHmDOcLLwIZcwYHG/BXXBEUbpnycW5nKdGuMSc
	 waWPCdkQKt/d8n134XxhtfvZc7rNM7wjOiB0lsFAWLd2HCNXky4nPRDnUuz0awcs9H
	 zilqpi3KKrRxlO9YRS0iFqToYCg3jLkRPOe4ETNYmqE0kT+Xo0QWURebF26uiq+R/8
	 saaW2AL04vllQ==
Received: by vbox.gregn.net (Postfix, from userid 1000)
	id E947EC8DB; Fri,  4 Nov 2022 21:49:34 -0700 (MST)
Date: Fri, 4 Nov 2022 21:49:34 -0700
From: Gregory Nowak <greg@gregn.net>
To: speakup@linux-speakup.org
Subject: Re: Voxin/ibmtts with eSpeakup
Message-ID: <Y2XrXmvGN6UoVuXi@gregn.net>
References: <Y2LqK66AdnnW9DOg@gregn.net>
 <20221102233629.ayyi63uakfhkw3dc@begin>
 <072a01d8ef2a$7e7bd820$80ffa8c0@Win7VM>
 <08a901d8efbc$33020490$80ffa8c0@Win7VM>
 <Y2RSm7hG8WHdiygs@gregn.net>
 <0b4101d8f063$69069fe0$80ffa8c0@Win7VM>
 <Y2XF6wmcbFCsq5l/@gregn.net>
 <0bc501d8f0bd$c222dee0$80ffa8c0@Win7VM>
 <Y2XV2QOPjryMKRJv@gregn.net>
 <0bce01d8f0cd$b84b8ab0$80ffa8c0@Win7VM>
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
In-Reply-To: <0bce01d8f0cd$b84b8ab0$80ffa8c0@Win7VM>
X-PGP-Key: http://www.gregn.net/pubkey.asc
X-Virus-Scanned: clamav-milter 0.103.6 at vserver
X-Virus-Status: Clean
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Right ... and?

Greg


On Fri, Nov 04, 2022 at 11:18:51PM -0500, K0LNY_Glenn wrote:
> There  is:
> bus
> debus-1
> speech-dispatcher
> puls
> and systemd
> 
> Glenn
> 
> ----- Original Message ----- 
> From: "Gregory Nowak" <greg@gregn.net>
> To: "K0LNY_Glenn" <glenn@ervin.email>
> Cc: "Samuel Thibault" <samuel.thibault@aquilenet.fr>; "Speakup is a screen 
> review system for Linux." <speakup@linux-speakup.org>
> Sent: Friday, November 04, 2022 10:17 PM
> Subject: Re: Voxin/ibmtts with eSpeakup
> 
> 
> What's under 1000?
> 
> Greg
> 
> 
> On Fri, Nov 04, 2022 at 09:24:38PM -0500, K0LNY_Glenn wrote:
> > Correct, I never understood why in the user folder is only 1000.
> > That is all there is in /user.
> > Glenn
> > ----- Original Message ----- 
> > From: "Gregory Nowak" <greg@gregn.net>
> > To: "K0LNY_Glenn" <glenn@ervin.email>
> > Cc: "Samuel Thibault" <samuel.thibault@aquilenet.fr>; "Speakup is a screen
> > review system for Linux." <speakup@linux-speakup.org>
> > Sent: Friday, November 04, 2022 9:09 PM
> > Subject: Re: Voxin/ibmtts with eSpeakup
> >
> >
> > I assume that lenny is the only  login user on the system. So,
> > anything interesting in /var/run/user/1000/speech-dispatcher/log/*
> > after you run spd-say as lenny?
> >
> > Greg
> >
> >
> > On Fri, Nov 04, 2022 at 10:37:54AM -0500, K0LNY_Glenn wrote:
> > > I ran  the following:
> > > sudo adduser audio lenny
> > > and I got the message that lenny was already a member of audio.
> > > speaker-test works  as sudo, but no sound without sudo.
> > > Just like spd-say, no errors, just no audio.
> > > Any ideas?
> > > Thanks.
> > > Glenn
> >
> >
> > -- 
> > web site: http://www.gregn.net
> > gpg public key: http://www.gregn.net/pubkey.asc
> > skype: gregn1
> > (authorization required, add me to your contacts list first)
> > If we haven't been in touch before, e-mail me before adding me to your
> > contacts.
> >
> > --
> > Free domains: http://www.eu.org/ or mail dns-manager@EU.org
> >
> >
> 
> -- 
> web site: http://www.gregn.net
> gpg public key: http://www.gregn.net/pubkey.asc
> skype: gregn1
> (authorization required, add me to your contacts list first)
> If we haven't been in touch before, e-mail me before adding me to your 
> contacts.
> 
> --
> Free domains: http://www.eu.org/ or mail dns-manager@EU.org 
> 

-- 
web site: http://www.gregn.net
gpg public key: http://www.gregn.net/pubkey.asc
skype: gregn1
(authorization required, add me to your contacts list first)
If we haven't been in touch before, e-mail me before adding me to your contacts.

--
Free domains: http://www.eu.org/ or mail dns-manager@EU.org

