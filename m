Return-Path: <speakup+bounces-614-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id B418C59FB1F
	for <lists+speakup@lfdr.de>; Wed, 24 Aug 2022 15:19:43 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=panix.com header.i=@panix.com header.a=rsa-sha256 header.s=panix header.b=TZymN8qb;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 6CD883809BB; Wed, 24 Aug 2022 09:19:42 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 03A113847C8
	for <lists+speakup@lfdr.de>; Wed, 24 Aug 2022 09:19:41 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id CA879380978; Wed, 24 Aug 2022 09:19:37 -0400 (EDT)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by befuddled.reisers.ca (Postfix) with ESMTPS id B7B0A3807C5
	for <speakup@linux-speakup.org>; Wed, 24 Aug 2022 09:19:37 -0400 (EDT)
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4MCRX55Zncz3sTY;
	Wed, 24 Aug 2022 09:19:33 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=panix.com; s=panix;
	t=1661347173; bh=jgqRoXIZro2RQotjXfrTCmlIYuvKae/wwGrWvQdfR+o=;
	h=Date:From:To:cc:Subject:In-Reply-To:References;
	b=TZymN8qbgLxdEMHAteg5m4VmMjcqzuAUUKFWzpQAEsPKJs3Tw88NfmyaNXHIl9GJv
	 NV85nBVkU1LmeqVwsCjkxhLINVK7uxj5F5cMGmr7Uv4WgK/fp3CDIOkGQC2wVBG5hG
	 20c0aLuGFEMKdJcjlGcj6LaAiC3Rb0KGQjQxPvpw=
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4MCRX54thrzcbc; Wed, 24 Aug 2022 09:19:33 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4MCRX54Jn3zcbP;
	Wed, 24 Aug 2022 09:19:33 -0400 (EDT)
Date: Wed, 24 Aug 2022 09:19:33 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: Willem van der Walt <wvdwalt@csir.co.za>
cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: hopefully some help with AntiX
In-Reply-To: <alpine.DEB.2.21.1.2208241123100.3538@willempc.meraka.csir.co.za>
Message-ID: <136a826a-b07a-717c-4ffa-6e84254a61c2@panix.com>
References: <005b01d8b764$65f690e0$80ffa8c0@Win7VM> <f1e0bff4-cbdc-1766-293-dc2558869c6b@panix.com> <007001d8b776$2a7193a0$80ffa8c0@Win7VM> <alpine.DEB.2.21.1.2208241123100.3538@willempc.meraka.csir.co.za>
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

Debian has a fenrir package available which may be called
fenrirscreenreader so use of pip or git may not be necessary.


Jude <jdashiel at panix dot com> "There are four boxes to be used in
defense of liberty:
 soap, ballot, jury, and ammo. Please use in that order."
-Ed Howdershelt (Author, 1940)

.

On Wed, 24 Aug 2022, Willem van der Walt wrote:

> Hi,
> The Ubuntu and I think, Debian ssh server package is called ssh-server.
> I suggest you do a portscan with nmap f
> om another machine to see if ssh server is running.
> It should show an open port 22 if it is.
> Note, you must ssh into the machine as a non-root user.
> HTH, Willem
>
> On Tue, 23 Aug 2022, K0LNY_Glenn wrote:
>
> > [The e-mail server of the sender could not be verified (SPF Record)]
> >
> > Well I tried using the iPhone app, seeing AI.
> > I can't read back letter by letter using short text, which is what reads
> > monitors the best, so I have to rely on what I hear.
> > It appears it does not know aptitude, so I tried apt, and that command
> > works.
> > But I tried three different package names:
> > openssh-server
> > openssh
> > and just ssh
> > In all the returns, it said it could not find the packages, and they may
> > exist under a different name.
> > So unless anyone has other Debian based SSH install names, I'll be doing
> > more research on antiX and SSH.
> >
> > Glenn
> > ----- Original Message -----
> > From: "Jude DaShiell" <jdashiel@panix.com>
> > To: "K0LNY_Glenn" <glenn@ervin.email>; "Speakup is a screen review system
> > for Linux." <speakup@linux-speakup.org>
> > Sent: Tuesday, August 23, 2022 10:50 PM
> > Subject: Re: hopefully some help with AntiX
> >
> >
> > You could try fenrir with git or pipi whichever is available.
> >
> >
> > Jude <jdashiel at panix dot com> "There are four boxes to be used in
> > defense of liberty:
> > soap, ballot, jury, and ammo. Please use in that order."
> > -Ed Howdershelt (Author, 1940)
> >
> > .
> >
> > On Tue, 23 Aug 2022, K0LNY_Glenn wrote:
> >
> >> Hello,
> >> So I successfully got a live version of AntiX 19.5 base 386 on my Asus701
> >> I am having trouble getting in with SSH.
> >> When I do speaker test on the actual netbook, it works, so I know the
> >> audio
> >> works.
> >> Neither espeak test, or espeak-ng test, worked.
> >> It is Debian based, so I did apt update and most of the following things,
> >> I
> >> tried both with sudo and without.
> >> On the computer trying to get in, it tells me connection refused.
> >> It is on the network as antix1
> >> Everything I read on-line suggest it should have openssh installed, but I
> >> ran the apt install for openssh-server -y just in case.
> >> I tried systemctl start openssh
> >> and I tried system restart openssh
> >> I guess it is possible espeak-NG may not be in its repository.
> >> Then espeeakup wouldn't be there either.
> >> If I had speakup going on the AntiX, or an SSH connection, I could start
> >> getting it going.
> >>
> >> Anyone have any ideas for this?
> >> This would be good on the Asus 701, it's using Buster, which isn't that
> >> old.Thanks for any assistance.
> >>
> >> Glenn
> >>
> >>
> >>
> >
> >
> >
>
>
>

