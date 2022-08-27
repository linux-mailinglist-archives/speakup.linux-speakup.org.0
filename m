Return-Path: <speakup+bounces-689-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 37A3B5A3350
	for <lists+speakup@lfdr.de>; Sat, 27 Aug 2022 03:07:24 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=panix.com header.i=@panix.com header.a=rsa-sha256 header.s=panix header.b=MtmXp1Pd;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 1A71E380C8D; Fri, 26 Aug 2022 21:07:23 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id ECF2B380C8D
	for <lists+speakup@lfdr.de>; Fri, 26 Aug 2022 21:07:22 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 2FFA2380C8D; Fri, 26 Aug 2022 21:07:14 -0400 (EDT)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 15B38380C6F
	for <speakup@linux-speakup.org>; Fri, 26 Aug 2022 21:07:14 -0400 (EDT)
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4MDz7j2DG5z2jNb;
	Fri, 26 Aug 2022 21:07:13 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=panix.com; s=panix;
	t=1661562433; bh=Rc0Z/xvmlNz9QUeBqKpqDjp5fZFb2qzXpjwZtZK1D5E=;
	h=Date:From:To:cc:Subject:In-Reply-To:References;
	b=MtmXp1PdaVFPj3Qbtl3u7J8KzZ2DnmvG7o9ZOA0iowMCgxyAbcSphBDwJZ3aAeLLh
	 7KoOWhJ5cWaetF/ww0IXV3JMaiq90ibcIWYsZWY6u48VTZqjJxVUX5nBem//j5e8fV
	 cUVTIpIR27msH2fiNcbkcUyXRhlH7A3IevXZ3msY=
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4MDz7j1glmzcbc; Fri, 26 Aug 2022 21:07:13 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4MDz7j1LG7zcbC;
	Fri, 26 Aug 2022 21:07:13 -0400 (EDT)
Date: Fri, 26 Aug 2022 21:07:13 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: K0LNY_Glenn <glenn@ervin.email>, Gregory Nowak <greg@gregn.net>
cc: speakup@linux-speakup.org
Subject: Re: hopefully some help with AntiX
In-Reply-To: <00ca01d8b9ad$a9f42460$80ffa8c0@Win7VM>
Message-ID: <9e311f1c-989e-2ebb-8b3b-17306e64b42e@panix.com>
References: <202208261512.27QFCDux008176@nfbcal.org> <02b101d8b963$7d039fc0$80ffa8c0@Win7VM> <alpine.DEB.2.21.1.2208262017280.8190@willempc.meraka.csir.co.za> <006201d8b97a$ff989cd0$80ffa8c0@Win7VM> <006601d8b97e$e9f9a6e0$80ffa8c0@Win7VM> <Ywle3kA6oGDCREfZ@gregn.net>
 <00b601d8b9a9$5c664f10$80ffa8c0@Win7VM> <acd2012-2ab5-5ff2-4fa6-4e518867727a@panix.com> <00bc01d8b9aa$824f8ce0$80ffa8c0@Win7VM> <YwlmdgNYEEgvwGSZ@gregn.net> <00ca01d8b9ad$a9f42460$80ffa8c0@Win7VM>
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

See if rlogin is on that system, it's supposed to be a more secure flavor
of telnet without using ssh.


Jude <jdashiel at panix dot com>
"There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo. Please use in that order."
-Ed Howdershelt (Author, 1940)

.

On Fri, 26 Aug 2022, K0LNY_Glenn wrote:

> Man, I thought that would work, but it said it cannot locate a package named
> telnetd
> Glenn
> ----- Original Message -----
> From: "Gregory Nowak" <greg@gregn.net>
> To: "K0LNY_Glenn" <glenn@ervin.email>
> Cc: "Jude DaShiell" <jdashiel@panix.com>; <speakup@linux-speakup.org>
> Sent: Friday, August 26, 2022 7:33 PM
> Subject: Re: hopefully some help with AntiX
>
>
> On Fri, Aug 26, 2022 at 07:18:17PM -0500, K0LNY_Glenn wrote:
> > Then all 1000 ports show up in nmap as closed.
> > So it seems if I allow a port in ufw, it shows up as closed, but not
> > filtered.
> > So filtered means ufw is running, and if 22 gets allowed, it is not
> > filtered, but still closed.
>
> If a port is filtered, ufw is running. If a port is closed, ufw isn't
> running, or is allowing that port through, but there is no service
> listening on that port.
>
> It seems you have figured out how to disable ufw, and how to get it to
> open ports. If
>
> apt install openssh-server
>
> doesn't work, see if
>
> apt install telnetd
>
> does.
>
> Greg
>
>
>

