Return-Path: <speakup+bounces-519-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 1797A5917AB
	for <lists+speakup@lfdr.de>; Sat, 13 Aug 2022 01:54:10 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=panix.com header.i=@panix.com header.a=rsa-sha256 header.s=panix header.b=q6aPcEey;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 13C8D38376A; Fri, 12 Aug 2022 19:54:08 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id F2D393819B4
	for <lists+speakup@lfdr.de>; Fri, 12 Aug 2022 19:54:07 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id DBD7B3819AB; Fri, 12 Aug 2022 19:54:00 -0400 (EDT)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by befuddled.reisers.ca (Postfix) with ESMTPS id B888C3809FF
	for <speakup@linux-speakup.org>; Fri, 12 Aug 2022 19:54:00 -0400 (EDT)
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4M4L9f5F2pz2vWr;
	Fri, 12 Aug 2022 19:53:58 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=panix.com; s=panix;
	t=1660348438; bh=x3k+8uEy+5CLbxFL2TxidGcA2f/lg1jFyWJ3LswQTfI=;
	h=Date:From:To:cc:Subject:In-Reply-To:References;
	b=q6aPcEeyuFiPx0xXTMiHQGdsyPMWqGgeZtEU0gGesWELBK0m8YdHWIscXCGbt3X7j
	 DlXZWJC4V2zPoKTOPgDmZpo2CmT2Pwzw0MSXmxCzFUtNqWmY9dExqYLd+xax5L7VIs
	 XsKKd/5QV9INmvmxDAzkbvw4Bc/6MrOIYbcqZyTg=
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4M4L9f4ndCzcbc; Fri, 12 Aug 2022 19:53:58 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4M4L9f4VH1zcbP;
	Fri, 12 Aug 2022 19:53:58 -0400 (EDT)
Date: Fri, 12 Aug 2022 19:53:58 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: K0LNY_Glenn <glenn@ervin.email>, Chime Hart <chime@hubert-humphrey.com>, 
    Matt Campbell <mattcampbell@pobox.com>
cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: getting audio for Orca and Speakup or Fenrir
In-Reply-To: <022801d8ae8e$34e65910$80ffa8c0@Win7VM>
Message-ID: <7fdaf18d-8345-8dab-79fc-a045d2cf8d7@panix.com>
References: <021801d8ae89$220560c0$80ffa8c0@Win7VM> <eb84963a-90e0-c24c-4215-4d0dde3390d0@hubert-humphrey.com> <021d01d8ae8c$39e82800$80ffa8c0@Win7VM> <8295e54b-fd16-c53f-f3f7-e9a09c7a62c6@pobox.com> <022101d8ae8d$31446fa0$80ffa8c0@Win7VM>
 <a5912728-3489-97f3-a956-af918d5b5e2f@panix.com> <022801d8ae8e$34e65910$80ffa8c0@Win7VM>
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

What does aplay -l return?
You might try alsamixer then hit f6 and use up and down arrow keys to find
devices.  If you find one you think will work, hit enter and use
right-arrow to move through controls and unmute appropriate controls with
the up arrow and get them up to respectable percentages.  When finished
hit escape to get out of there then run alsactl store then reboot to test
your work.
I don't like alsamixer interface but sometimes you got to take one for the
team.


On Fri, 12 Aug 2022, K0LNY_Glenn wrote:

> Hi Jude,
> Without the -c 0 it tells me:
> amixer unable to locate simple Master 0
>
> Glenn
> ----- Original Message -----
> From: "Jude DaShiell" <jdashiel@panix.com>
> To: "K0LNY_Glenn" <glenn@ervin.email>; "Chime Hart"
> <chime@hubert-humphrey.com>; "Matt Campbell" <mattcampbell@pobox.com>
> Cc: "Speakup is a screen review system for Linux."
> <speakup@linux-speakup.org>
> Sent: Friday, August 12, 2022 3:54 PM
> Subject: Re: getting audio for Orca and Speakup or Fenrir
>
>
> Loose the -c0 and you're golden.
>
>
> On Fri, 12 Aug 2022, K0LNY_Glenn wrote:
>
> > Hi Matt,
> > I have learned that the alsamixer doesn't feedback well over SSH, can you
> > give me the proper command for alsa to unmute and adjust the volume?
> > I always get that wrong, I try stuff like:
> > amixer -c 0 set Master 100% unmute
> > and those never work for me, I somehow get it wrong.
> > There needs to be a fail safe script made for this.
> > Thanks.
> >
> > ----- Original Message -----
> > From: "Matt Campbell" <mattcampbell@pobox.com>
> > To: "K0LNY_Glenn" <glenn@ervin.email>; "Chime Hart"
> > <chime@hubert-humphrey.com>
> > Cc: "Speakup is a screen review system for Linux."
> > <speakup@linux-speakup.org>
> > Sent: Friday, August 12, 2022 3:46 PM
> > Subject: Re: getting audio for Orca and Speakup or Fenrir
> >
> >
> > Hi Glenn,
> >
> > Sounds to me like the audio output on that board is muted. The amixer
> > command should let you fix that easily. Then you might need to run
> > "alsactl save" to make the new settings permanent.
> >
> > Matt
> >
> >
> >
>
>
>

