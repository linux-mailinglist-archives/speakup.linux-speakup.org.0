Return-Path: <speakup+bounces-675-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id A06485A3106
	for <lists+speakup@lfdr.de>; Fri, 26 Aug 2022 23:34:46 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=panix.com header.i=@panix.com header.a=rsa-sha256 header.s=panix header.b=qDr/y5G6;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 3149A380E63; Fri, 26 Aug 2022 17:34:41 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 12316380A86
	for <lists+speakup@lfdr.de>; Fri, 26 Aug 2022 17:34:41 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 07316380C5C; Fri, 26 Aug 2022 17:34:32 -0400 (EDT)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 57CDB380A86
	for <speakup@linux-speakup.org>; Fri, 26 Aug 2022 17:34:31 -0400 (EDT)
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4MDtQG2SZWzKgt;
	Fri, 26 Aug 2022 17:34:30 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=panix.com; s=panix;
	t=1661549670; bh=w6hKvZogaLf7SzfNL0E6yQ65x72uWQySldOsH4NOyqo=;
	h=Date:From:To:cc:Subject:In-Reply-To:References;
	b=qDr/y5G6vGqaR749Yu9ZtA+lcb5/bfQRu2RT/hOn0LJETRJhe2awtORsIswlZtiaP
	 07pSHjRD8Bp5iLSnym5EDVKREw27zyKCpGdXWQKzXzQgx7dO5UWbAJiESweZqUKBbV
	 QfP50wrhbBRqxG5cx2DLlqjH3D0hUxvFQ18s6EIo=
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4MDtQG1knMzcbc; Fri, 26 Aug 2022 17:34:30 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4MDtQG19JlzcbC;
	Fri, 26 Aug 2022 17:34:30 -0400 (EDT)
Date: Fri, 26 Aug 2022 17:34:30 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: K0LNY_Glenn <glenn@ervin.email>, Chime Hart <chime@hubert-humphrey.com>
cc: Willem van der Walt <wvdwalt@csir.co.za>, 
    "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: hopefully some help with AntiX
In-Reply-To: <008301d8b990$8d114ca0$80ffa8c0@Win7VM>
Message-ID: <6340fde9-e6b6-80d8-f4cf-fccebbacabc2@panix.com>
References: <005b01d8b764$65f690e0$80ffa8c0@Win7VM> <f1e0bff4-cbdc-1766-293-dc2558869c6b@panix.com> <007001d8b776$2a7193a0$80ffa8c0@Win7VM> <alpine.DEB.2.21.1.2208241123100.3538@willempc.meraka.csir.co.za> <011d01d8b7dc$1fbf79c0$80ffa8c0@Win7VM>
 <alpine.DEB.2.21.1.2208251022200.17853@willempc.meraka.csir.co.za> <020a01d8b8b9$97365310$80ffa8c0@Win7VM> <alpine.DEB.2.21.1.2208261051420.318@willempc.meraka.csir.co.za> <029801d8b94e$09c913b0$80ffa8c0@Win7VM> <afe9ca5e-fcb2-8764-d9e2-0d5123c4adec@hubert-humphrey.com>
 <003c01d8b971$2e85bff0$80ffa8c0@Win7VM> <e347b9d8-cc54-3cd6-aff1-856332377fbe@panix.com> <008301d8b990$8d114ca0$80ffa8c0@Win7VM>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

My guess is you have a firewall utility running on that system.  That
firewall started on boot.  Maybe man -k firewall on that system would tell
you which firewall is running.


Jude <jdashiel at panix dot com> "There are four boxes to be used in
defense of liberty:
 soap, ballot, jury, and ammo. Please use in that order."
-Ed Howdershelt (Author, 1940)

.

On Fri, 26 Aug 2022, K0LNY_Glenn wrote:

> Well I thought I'd try iptables again.
> I finally got it to run without any errors, that long iptables command I got
> earlier.
> But nmap still sees no ports open on that host.
> Prior to running iptables, I tried to apt install it, and the message was
> that I'm already running the latest.
> So I needed to restart iptables with
> sudo service iptables restart
> and it can find no service iptables.
> I retyped it several times to be sure there was no typos.
> So I tried
> sudo systemctl restart iptables
> and the system cannot find systemctl
> question:
> If I reboot, if the long iptables command worked, will it stick if I reboot?
>
> Thanks
>
> Glenn
> ----- Original Message -----
> From: "Jude DaShiell" <jdashiel@panix.com>
> To: "K0LNY_Glenn" <glenn@ervin.email>; "Chime Hart"
> <chime@hubert-humphrey.com>
> Cc: "Willem van der Walt" <wvdwalt@csir.co.za>; "Speakup is a screen review
> system for Linux." <speakup@linux-speakup.org>
> Sent: Friday, August 26, 2022 1:35 PM
> Subject: Re: hopefully some help with AntiX
>
>
> sudo ps -Ach|less
> may work better.
>
>
> Jude <jdashiel at panix dot com>
> "There are four boxes to be used in defense of liberty:
>  soap, ballot, jury, and ammo. Please use in that order."
> -Ed Howdershelt (Author, 1940)
>
> .
>
> On Fri, 26 Aug 2022, K0LNY_Glenn wrote:
>
> > Hi,
> > Well the command:
> > sudo ps -A
> > just listed a bunch of numbers, no running apps.
> > Glenn
> > ----- Original Message -----
> > From: "Chime Hart" <chime@hubert-humphrey.com>
> > To: "K0LNY_Glenn" <glenn@ervin.email>
> > Cc: "Willem van der Walt" <wvdwalt@csir.co.za>; "Speakup is a screen
> > review
> > system for Linux." <speakup@linux-speakup.org>
> > Sent: Friday, August 26, 2022 8:19 AM
> > Subject: Re: hopefully some help with AntiX
> >
> >
> > Well Glen, why not run
> > ps -A
> > to see what's actually running.
> > Chime
> >
> >
> >
>
>
>

