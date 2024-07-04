Return-Path: <speakup+bounces-1149-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 18335927CF0
	for <lists+speakup@lfdr.de>; Thu,  4 Jul 2024 20:21:07 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=panix.com header.i=@panix.com header.a=rsa-sha256 header.s=panix header.b=iKoNdKU2;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 67FE6C81C81; Thu, 04 Jul 2024 14:21:06 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 49DDCC80A68
	for <lists+speakup@lfdr.de>; Thu, 04 Jul 2024 14:21:06 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 4BCBFC80A68; Thu, 04 Jul 2024 14:20:58 -0400 (EDT)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 319FFC80A5A
	for <speakup@linux-speakup.org>; Thu, 04 Jul 2024 14:20:58 -0400 (EDT)
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4WFQ200MX3z4Dt3;
	Thu,  4 Jul 2024 14:20:56 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=panix.com; s=panix;
	t=1720117256; bh=/fEXTGPi5WU153ETxk2N4tsH28az6itGAalkyHQVtVI=;
	h=Date:From:To:Subject:In-Reply-To:References;
	b=iKoNdKU2bP0vZ9MyxjLau6l/j+DAAgYv6rW1WP1ylthyqj4fcfZaN4gJMdGQwm9T5
	 qmQCRNIHWrScbiyVjT15NL1xk4CH+f1qHIoJfO+0RnO3yOpoLd4YPVcVX9zaUj3feq
	 7GXrY4smS5u3IzgqjkleAv4ep46xTvUrlRoUlNxg=
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4WFQ1z741Rzcbc; Thu,  4 Jul 2024 14:20:55 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4WFQ1z710TzcbV;
	Thu,  4 Jul 2024 14:20:55 -0400 (EDT)
Date: Thu, 4 Jul 2024 14:20:55 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: criss <crisspro@hotmail.com>, speakup@linux-speakup.org
Subject: Re: devuan daedelus and speakup
In-Reply-To:  <CH2PR12MB4133B6F8E4CC156AC9CA3F79DADE2@CH2PR12MB4133.namprd12.prod.outlook.com>
Message-ID: <47578972-c0b1-f297-ba1c-83f669353ba7@panix.com>
References: <14439926-6631-5be8-ae20-5349f21b480b@panix.com>  <CH2PR12MB4133B6F8E4CC156AC9CA3F79DADE2@CH2PR12MB4133.namprd12.prod.outlook.com>
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
> I think minimal ISO is like net install. When I used net install ISo I ha=
ve to
> dawn ap to 5=C2=B0 position and press enter, I don't know when I press s =
key, not
> working too.
>
>
> regards.
>
> El 04/07/2024 a las 9:45, Jude DaShiell escribi=C3=B3:
> > What is to be done to turn speakup on in devuan daedelus so it can be
> > installed with speakup talking?  I got the minimal iso and don't know i=
f
> > this one can install with speakup.  I used the s parameter at the grub
> > beep and that didn't get speakup talking.  If that is supposed to be ho=
w
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

