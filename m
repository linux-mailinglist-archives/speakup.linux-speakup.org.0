Return-Path: <speakup+bounces-1151-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id DDA14927D63
	for <lists+speakup@lfdr.de>; Thu,  4 Jul 2024 20:59:15 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=panix.com header.i=@panix.com header.a=rsa-sha256 header.s=panix header.b=VHyEWXc3;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 16BDEC81C60; Thu, 04 Jul 2024 14:59:15 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id EC05EC80A5A
	for <lists+speakup@lfdr.de>; Thu, 04 Jul 2024 14:59:14 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 214D2C80A68; Thu, 04 Jul 2024 14:59:07 -0400 (EDT)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by befuddled.reisers.ca (Postfix) with ESMTPS id EB36EC80A5A
	for <speakup@linux-speakup.org>; Thu, 04 Jul 2024 14:59:06 -0400 (EDT)
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4WFQt11Vl3z4GTx;
	Thu,  4 Jul 2024 14:59:05 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=panix.com; s=panix;
	t=1720119545; bh=GLGkk7Ud1P71Hyj+eyYRNhYUVsuybP+CVEPDijZT8To=;
	h=Date:From:To:Subject:In-Reply-To:References;
	b=VHyEWXc3D8tnX5YK0ELYndpNIDKGu4iPlsJ1SH9Sy7qtM2afaE52SJ3P0JvOstXHO
	 xgP+iC8eLGHfINyCshScpyV8IFrrD+EIK0ip7ucYFu62KVj1bTUjyv4R3IiIJOd5RO
	 rwXw3JIoxNBIIpNLHmO8/TuLOcCx81ddU5uAOa8Q=
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4WFQt11QqBzcbc; Thu,  4 Jul 2024 14:59:05 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4WFQt11QB9zcbC;
	Thu,  4 Jul 2024 14:59:05 -0400 (EDT)
Date: Thu, 4 Jul 2024 14:59:05 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: criss <crisspro@hotmail.com>, speakup@linux-speakup.org
Subject: Re: devuan daedelus and speakup
In-Reply-To: <47578972-c0b1-f297-ba1c-83f669353ba7@panix.com>
Message-ID: <386127a7-5b14-569b-67f5-8b7551623f02@panix.com>
References: <14439926-6631-5be8-ae20-5349f21b480b@panix.com>  <CH2PR12MB4133B6F8E4CC156AC9CA3F79DADE2@CH2PR12MB4133.namprd12.prod.outlook.com> <47578972-c0b1-f297-ba1c-83f669353ba7@panix.com>
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

If you boot devuan netinstall, after first beep down arrow four times then
hit enter then hit s then hit enter.
That's how I got devuan talking and found out debian software with or
without systemd cannot connect to this wi-fi network.  The network gets
found you key in correct password then after a while connection fails.


--
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

On Thu, 4 Jul 2024, Jude DaShiell wrote:

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
> > I think minimal ISO is like net install. When I used net install ISo I =
have to
> > dawn ap to 5=C2=B0 position and press enter, I don't know when I press =
s key, not
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

