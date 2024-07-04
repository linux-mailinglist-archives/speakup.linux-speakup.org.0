Return-Path: <speakup+bounces-1150-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id AAD78927CF9
	for <lists+speakup@lfdr.de>; Thu,  4 Jul 2024 20:27:41 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=t39smtp-sign001.email header.i=@t39smtp-sign001.email header.a=rsa-sha256 header.s=titan1 header.b=QMHJ9+PT;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 2FCACC81C81; Thu, 04 Jul 2024 14:27:41 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 0E700C80A5E
	for <lists+speakup@lfdr.de>; Thu, 04 Jul 2024 14:27:41 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 04FB0C8104E; Thu, 04 Jul 2024 14:27:33 -0400 (EDT)
Received: from mail73.out.titan.email (mail73.out.titan.email [3.216.99.53])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 36BE4C80A5E
	for <speakup@linux-speakup.org>; Thu, 04 Jul 2024 14:27:32 -0400 (EDT)
Received: from smtp-out.flockmail.com (localhost [127.0.0.1])
	by smtp-out.flockmail.com (Postfix) with ESMTP id 48A846007F;
	Thu,  4 Jul 2024 18:27:31 +0000 (UTC)
DKIM-Signature: a=rsa-sha256; bh=1t8h5EmnM/G7ELoLeaMSqDG6L+x8vHXW3jtw4mbJ0Z8=;
	c=relaxed/relaxed; d=t39smtp-sign001.email;
	h=subject:date:to:references:reply-to:from:mime-version:message-id:from:to:subject:date:message-id:reply-to:references:cc:in-reply-to;
	q=dns/txt; s=titan1; t=1720117651; v=1;
	b=QMHJ9+PTbUnx6SemRg2owwTiXrz2BBI61ZYei9gJzuQdtsTTl/9WfWZKaTugZX7vJ0B7Qltk
	b5fbpkYoLzw8rjmBTqSheU2IOHRK7tQF6bjrGfyOSeq0v9MWjbbaWFofcSR3lsmsxktL9lKMpU8
	3boCBIbl3GP8zMz9q3yq0mac=
Received: from nucwin10 (unknown [140.228.165.201])
	by smtp-out.flockmail.com (Postfix) with ESMTPA id CF9FB60231;
	Thu,  4 Jul 2024 18:27:30 +0000 (UTC)
Message-ID: <07f501dace3f$d5641b20$01ffa8c0@nucwin10>
Reply-To: "K0LNY ??" <glenn@ervin.email>
Feedback-ID: :glenn@ervin.email:ervin.email:flockmailId
From: "K0LNY ??" <glenn@ervin.email>
To: "Jude DaShiell" <jdashiel@panix.com>,
	"criss" <crisspro@hotmail.com>,
	<speakup@linux-speakup.org>
References: <14439926-6631-5be8-ae20-5349f21b480b@panix.com>  <CH2PR12MB4133B6F8E4CC156AC9CA3F79DADE2@CH2PR12MB4133.namprd12.prod.outlook.com> <47578972-c0b1-f297-ba1c-83f669353ba7@panix.com>
Subject: Re: devuan daedelus and speakup
Date: Thu, 4 Jul 2024 13:27:30 -0500
Organization: Home
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain;
	charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2900.2180
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.2180
X-F-Verdict: SPFVALID
X-Titan-Src-Out: 1720117651206586647.20665.1487155494043566185@prod-use1-smtp-out1001.
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.4 cv=IroYcq/g c=1 sm=1 tr=0 ts=6686e993
	a=sfY17wZm961WJQkZ7MXrtw==:117 a=sfY17wZm961WJQkZ7MXrtw==:17
	a=IkcTkHD0fZMA:10 a=MKtGQD3n3ToA:10 a=CEWIc4RMnpUA:10 a=VUfPOBp7AAAA:8
	a=69EAbJreAAAA:8 a=qPKtzgQbAAAA:8 a=BvL0RYwgjRQk-UNgPEsA:9
	a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=h9p_k6br8ecoN9AbG9pA:22
	a=OTAqJWGB1laLS8RTg9aS:22 a=P3K-DvM3-jjlTNsN-mCd:22
X-Virus-Scanned: ClamAV using ClamSMTP
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5


That is interesting.
I wonder if it is related to the problem some of the ID Mates have, in that, 
when there is a SSID in the vicinity with an odd character, it would cause 
the ID Mate to not connect to any hotspot at all.
So as a result, Envision America started supplying wireless Ethernet bridges 
that you would plug into your router, and then the ID Mate would be able to 
connect to that.
So I wonder if some versions of Linux carry the same wireless problem.
Glenn
----- Original Message ----- 
From: "Jude DaShiell" <jdashiel@panix.com>
To: "criss" <crisspro@hotmail.com>; <speakup@linux-speakup.org>
Sent: Thursday, July 4, 2024 1:20 PM
Subject: Re: devuan daedelus and speakup


No solution here yet, my reason for trying devuan is that I've moved into
a new wi-fi network which though debian found debian could not connect
with the correct pass phrase entered.
So far, Jenux and Fedora 41 workstation are the only two distributions
that can connect to this wi-fi network.  The archlinux distro which jenux
is based on cannot connect to this wi-fi network.


--
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

On Thu, 4 Jul 2024, criss wrote:

> Hello.
>
>
> I think minimal ISO is like net install. When I used net install ISo I 
> have to
> dawn ap to 5° position and press enter, I don't know when I press s key, 
> not
> working too.
>
>
> regards.
>
> El 04/07/2024 a las 9:45, Jude DaShiell escribió:
> > What is to be done to turn speakup on in devuan daedelus so it can be
> > installed with speakup talking?  I got the minimal iso and don't know if
> > this one can install with speakup.  I used the s parameter at the grub
> > beep and that didn't get speakup talking.  If that is supposed to be how
> > it works I downloaded a corrupt iso.
> >
> >
> > --
> >   Jude <jdashiel at panix dot com>
> >   "There are four boxes to be used in defense of liberty:
> >   soap, ballot, jury, and ammo.
> >   Please use in that order."
> >   Ed Howdershelt 1940.
> >
>
>
>


