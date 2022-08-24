Return-Path: <speakup+bounces-615-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id CFD6159FB2D
	for <lists+speakup@lfdr.de>; Wed, 24 Aug 2022 15:20:55 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=panix.com header.i=@panix.com header.a=rsa-sha256 header.s=panix header.b=SfCIEmne;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 696473847B8; Wed, 24 Aug 2022 09:20:55 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 5B18E380986
	for <lists+speakup@lfdr.de>; Wed, 24 Aug 2022 09:20:55 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 105AC380981; Wed, 24 Aug 2022 09:20:52 -0400 (EDT)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 004C9380954
	for <speakup@linux-speakup.org>; Wed, 24 Aug 2022 09:20:52 -0400 (EDT)
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4MCRYb3tQbz3sZ8;
	Wed, 24 Aug 2022 09:20:51 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=panix.com; s=panix;
	t=1661347251; bh=Wo0DCAMOVB7B9UqOuxQDfkuvaO37tLZh4mBq/Zl6fHY=;
	h=Date:From:To:Subject:In-Reply-To:References;
	b=SfCIEmneDlj4vPK9JTeJsdxctWBBB+Laie0cxvcwz0UQgBNcrB0O7wUWdR/HtyZVF
	 ga5eeVtcSwLib1WctBlK2IWOdtdvJz1MrUdVdG2IdCriMF/bg3wvOYBYMMxhO2/yDu
	 VvSOo/TrVoxpdy9MCW9sz9lvXKX1J83PhZIdBWhU=
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4MCRYb3hvMzcbc; Wed, 24 Aug 2022 09:20:51 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4MCRYb3gtbzcbC;
	Wed, 24 Aug 2022 09:20:51 -0400 (EDT)
Date: Wed, 24 Aug 2022 09:20:51 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: K0LNY_Glenn <glenn@ervin.email>, 
    "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: hopefully some help with AntiX
In-Reply-To: <007001d8b776$2a7193a0$80ffa8c0@Win7VM>
Message-ID: <c46d641e-b54c-311f-ce9b-cf49d4c987@panix.com>
References: <005b01d8b764$65f690e0$80ffa8c0@Win7VM> <f1e0bff4-cbdc-1766-293-dc2558869c6b@panix.com> <007001d8b776$2a7193a0$80ffa8c0@Win7VM>
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

be my eyes may be available on iphone if you need to go that route.


Jude <jdashiel at panix dot com>
"There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo. Please use in that order."
-Ed Howdershelt (Author, 1940)

.

On Tue, 23 Aug 2022, K0LNY_Glenn wrote:

> Well I tried using the iPhone app, seeing AI.
> I can't read back letter by letter using short text, which is what reads
> monitors the best, so I have to rely on what I hear.
> It appears it does not know aptitude, so I tried apt, and that command
> works.
> But I tried three different package names:
> openssh-server
> openssh
> and just ssh
> In all the returns, it said it could not find the packages, and they may
> exist under a different name.
> So unless anyone has other Debian based SSH install names, I'll be doing
> more research on antiX and SSH.
>
> Glenn
> ----- Original Message -----
> From: "Jude DaShiell" <jdashiel@panix.com>
> To: "K0LNY_Glenn" <glenn@ervin.email>; "Speakup is a screen review system
> for Linux." <speakup@linux-speakup.org>
> Sent: Tuesday, August 23, 2022 10:50 PM
> Subject: Re: hopefully some help with AntiX
>
>
> You could try fenrir with git or pipi whichever is available.
>
>
> Jude <jdashiel at panix dot com> "There are four boxes to be used in
> defense of liberty:
>  soap, ballot, jury, and ammo. Please use in that order."
> -Ed Howdershelt (Author, 1940)
>
> .
>
> On Tue, 23 Aug 2022, K0LNY_Glenn wrote:
>
> > Hello,
> > So I successfully got a live version of AntiX 19.5 base 386 on my Asus701
> > I am having trouble getting in with SSH.
> > When I do speaker test on the actual netbook, it works, so I know the
> > audio
> > works.
> > Neither espeak test, or espeak-ng test, worked.
> > It is Debian based, so I did apt update and most of the following things,
> > I
> > tried both with sudo and without.
> > On the computer trying to get in, it tells me connection refused.
> > It is on the network as antix1
> > Everything I read on-line suggest it should have openssh installed, but I
> > ran the apt install for openssh-server -y just in case.
> > I tried systemctl start openssh
> > and I tried system restart openssh
> > I guess it is possible espeak-NG may not be in its repository.
> > Then espeeakup wouldn't be there either.
> > If I had speakup going on the AntiX, or an SSH connection, I could start
> > getting it going.
> >
> > Anyone have any ideas for this?
> > This would be good on the Asus 701, it's using Buster, which isn't that
> > old.Thanks for any assistance.
> >
> > Glenn
> >
> >
> >
>
>

