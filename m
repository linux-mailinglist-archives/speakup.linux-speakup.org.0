Return-Path: <speakup+bounces-1152-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 21557927DC0
	for <lists+speakup@lfdr.de>; Thu,  4 Jul 2024 21:23:26 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=panix.com header.i=@panix.com header.a=rsa-sha256 header.s=panix header.b=P8yS/3mX;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 4A88FC81C59; Thu, 04 Jul 2024 15:23:25 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 289CBC80A5A
	for <lists+speakup@lfdr.de>; Thu, 04 Jul 2024 15:23:25 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 31EA8C80A68; Thu, 04 Jul 2024 15:23:17 -0400 (EDT)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 159DAC80A5A
	for <speakup@linux-speakup.org>; Thu, 04 Jul 2024 15:23:17 -0400 (EDT)
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4WFRPv50gxz4Gjv;
	Thu,  4 Jul 2024 15:23:15 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=panix.com; s=panix;
	t=1720120995; bh=IoywzvwI7ai4ypsBlkSljiIeNnxyuPymmi8gOeGBkEs=;
	h=Date:From:To:Subject:In-Reply-To:References;
	b=P8yS/3mXWyJ+EEtcs8/EqS9MBRDp0xlv8h+GCcG5LTaTqrYdxj9WDIz5KY6d3b2A+
	 1gnHa3A0lB25ULcOGMJjDqCTza7ktLj9mi7oNfWjzshdKortwogLlNgDVqC/cSPptq
	 jDDD7DwMgH/MmJRRoSI6/odKRGKekMe0uCTD/iwc=
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4WFRPv4h1Qzcbc; Thu,  4 Jul 2024 15:23:15 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4WFRPv4d2zzcbC;
	Thu,  4 Jul 2024 15:23:15 -0400 (EDT)
Date: Thu, 4 Jul 2024 15:23:15 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: K0LNY ?? <glenn@ervin.email>, criss <crisspro@hotmail.com>, 
    speakup@linux-speakup.org
Subject: Re: devuan daedelus and speakup
In-Reply-To: <07f501dace3f$d5641b20$01ffa8c0@nucwin10>
Message-ID: <8e1a13db-e40e-1b80-d91d-e0b7abd0bae8@panix.com>
References: <14439926-6631-5be8-ae20-5349f21b480b@panix.com>  <CH2PR12MB4133B6F8E4CC156AC9CA3F79DADE2@CH2PR12MB4133.namprd12.prod.outlook.com> <47578972-c0b1-f297-ba1c-83f669353ba7@panix.com> <07f501dace3f$d5641b20$01ffa8c0@nucwin10>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: QUOTED-PRINTABLE
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

You well may be correct.  The network shows up in two different forms,
"family and friends" then "family&friends".  There's a couple extension
items written in hex offered as ssid's and the iPhone fire tablet and
android tablet connect with no trouble.  I need to try with my chromebook.
The raspberry pi hasn't been able to connect yet.


--
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

On Thu, 4 Jul 2024, K0LNY ?? wrote:

>
> That is interesting.
> I wonder if it is related to the problem some of the ID Mates have, in th=
at,
> when there is a SSID in the vicinity with an odd character, it would caus=
e
> the ID Mate to not connect to any hotspot at all.
> So as a result, Envision America started supplying wireless Ethernet brid=
ges
> that you would plug into your router, and then the ID Mate would be able =
to
> connect to that.
> So I wonder if some versions of Linux carry the same wireless problem.
> Glenn
> ----- Original Message -----
> From: "Jude DaShiell" <jdashiel@panix.com>
> To: "criss" <crisspro@hotmail.com>; <speakup@linux-speakup.org>
> Sent: Thursday, July 4, 2024 1:20 PM
> Subject: Re: devuan daedelus and speakup
>
>
> No solution here yet, my reason for trying devuan is that I've moved into
> a new wi-fi network which though debian found debian could not connect
> with the correct pass phrase entered.
> So far, Jenux and Fedora 41 workstation are the only two distributions
> that can connect to this wi-fi network.  The archlinux distro which jenux
> is based on cannot connect to this wi-fi network.
>
>
> --
>  Jude <jdashiel at panix dot com>
>  "There are four boxes to be used in defense of liberty:
>  soap, ballot, jury, and ammo.
>  Please use in that order."
>  Ed Howdershelt 1940.
>
> On Thu, 4 Jul 2024, criss wrote:
>
> > Hello.
> >
> >
> > I think minimal ISO is like net install. When I used net install ISo I
> > have to
> > dawn ap to 5=C2=B0 position and press enter, I don't know when I press =
s key,
> > not
> > working too.
> >
> >
> > regards.
> >
> > El 04/07/2024 a las 9:45, Jude DaShiell escribi=C3=B3:
> > > What is to be done to turn speakup on in devuan daedelus so it can be
> > > installed with speakup talking?  I got the minimal iso and don't know=
 if
> > > this one can install with speakup.  I used the s parameter at the gru=
b
> > > beep and that didn't get speakup talking.  If that is supposed to be =
how
> > > it works I downloaded a corrupt iso.
> > >
> > >
> > > --
> > >   Jude <jdashiel at panix dot com>
> > >   "There are four boxes to be used in defense of liberty:
> > >   soap, ballot, jury, and ammo.
> > >   Please use in that order."
> > >   Ed Howdershelt 1940.
> > >
> >
> >
> >
>
>
>

