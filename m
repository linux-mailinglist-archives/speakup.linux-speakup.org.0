Return-Path: <speakup+bounces-276-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id E48104032A9
	for <lists+speakup@lfdr.de>; Wed,  8 Sep 2021 04:30:21 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 88441380F64; Tue,  7 Sep 2021 22:30:21 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=ExIxCwpW;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 5D6C9380B5D
	for <lists+speakup@lfdr.de>; Tue,  7 Sep 2021 22:30:21 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 71336380F4B; Tue,  7 Sep 2021 22:30:15 -0400 (EDT)
Received: from mail-oi1-f179.google.com (mail-oi1-f179.google.com [209.85.167.179])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 44FDE380B5D
	for <speakup@linux-speakup.org>; Tue,  7 Sep 2021 22:30:15 -0400 (EDT)
Received: by mail-oi1-f179.google.com with SMTP id q39so1130931oiw.12
        for <speakup@linux-speakup.org>; Tue, 07 Sep 2021 19:30:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=sender:from:to:references:in-reply-to:subject:date:message-id
         :mime-version:content-transfer-encoding:thread-index
         :content-language;
        bh=MpdEMcskgGq/TSP/htH4wPpcfe7JMGtWl2jyDl8lQO8=;
        b=ExIxCwpWwIGVd5dNu8DDRjkziK9bxu+fZsOlRYwu0fMHVRzyomHpFwgW2HOK9+IO1+
         vh77cYcGiuIlprCq6WCb7alT+jNb+Cn3JTucjhG4qsoI93BhKv0uW7Q3powFSTeT4h4T
         ea7Kb2DnjvoeUCJRenp899J5eKsItA28joAiI7dHP4vTtxRJMN8hkP6XAFFsu0ND73qj
         KvEaVjKsgTd/Untv5pA3xwhAFwDdFXxqLBIDBw/eEGleQb4VhjIgumzW6NZQZIoeFabC
         MzpJacUYfFA6cXkY9rReMuyw5gbKuScbo3qSbj1Sx3t0eDjtSJbMvXefOFhAkkuWLQVN
         Szug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:references:in-reply-to:subject
         :date:message-id:mime-version:content-transfer-encoding:thread-index
         :content-language;
        bh=MpdEMcskgGq/TSP/htH4wPpcfe7JMGtWl2jyDl8lQO8=;
        b=KJlshkBM45CGWkEaldr12wI/Z7UMINVQ/8A1wjgsLC7lW+xLc7ON/pnGslmdmNStIA
         dH4Yel68E5W38Me1CClRvh3YM1X1C9OaoQV6AhuaHMpKBQhFbAwC6KNtdr89Wuw5fcdM
         sg5ajhWbmcr4YvXymj5Xg1fVPTpcEyU7pM2pFaWhyClSg5+kb9QM3t4pgcL4p0yX5TVP
         cQB/6j/ZY2uaBvru4E5H4Fx03KKmvafuau5LR0fCxoN8DzRSs/3jYfpSpEDzzTlme2NJ
         flcvM4rlElhZh3LVveEmuTV9rWTWl35ldD0KBMsFlLKmJ1DqkvWzQverbNx4lPriHkH/
         AEZw==
X-Gm-Message-State: AOAM532plyoUsmSid2X8m4Sljmf2yx1ZSqU82D8ab8/c6KdlJI0NtwuS
	1ceDIn7B7IdP1+dhG1RIaYhdS6XpYN8Paw==
X-Google-Smtp-Source: ABdhPJx732mIB9/C+M2oljooXvEnb80OMd5b3hZGmpk0VC2QdLEgpD84qnJs8RWYcl274TqgsOixyw==
X-Received: by 2002:aca:4b85:: with SMTP id y127mr854006oia.169.1631068150383;
        Tue, 07 Sep 2021 19:29:10 -0700 (PDT)
Received: from TECHP10R95915 (99-74-22-187.lightspeed.brhmal.sbcglobal.net. [99.74.22.187])
        by smtp.gmail.com with ESMTPSA id q10sm182979otn.47.2021.09.07.19.29.09
        for <speakup@linux-speakup.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Sep 2021 19:29:09 -0700 (PDT)
Sender: Keith Wessel <kwessel76@gmail.com>
From: "Keith Wessel" <keith@wessel.com>
To: <speakup@linux-speakup.org>
References: <038801d7a424$ef8e3050$ceaa90f0$@wessel.com> <0fd74a30-ef75-a8b4-2245-45bbbfd8827c@raspberryvi.org> <001301d7a455$2a956c10$7fc04430$@blinksoft.com>
In-Reply-To: <001301d7a455$2a956c10$7fc04430$@blinksoft.com>
Subject: RE: Looking for a home for a couple of serial synths
Date: Tue, 7 Sep 2021 21:29:08 -0500
Message-ID: <007601d7a459$4e259750$ea70c5f0$@wessel.com>
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
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQEzVGoANlLYQ+UrG1dTpcO8PwfmJAIeebqjAJqngu2szD1bcA==
Content-Language: en-us
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Yes, that's true. Any Linux box with built-in serial ports, a serial =
add-on PCI card, or USB serial ports will work. Didn't use to, but =
awesome that it does now.

My only Linux system left is my Raspberry Pi which is in my networking =
closet acting as a server. So, I have no need to connect a synth to it. =
My desktop these days runs Windows, and I prefer just using a software =
synth there. But these synths can be used with a USB to serial adapter, =
at least to some extent, with Jaws or NVDA.

I've heard back from several of you with interest about these synths. I =
never expected this much interest. I'll respond in order until I find a =
taker for each of these two.

Thanks,
Keith


-----Original Message-----
From: Ken Perry <kperry@blinksoft.com>=20
Sent: Tuesday, September 7, 2021 9:00 PM
To: mike@raspberryvi.org; speakup@linux-speakup.org
Subject: RE: Looking for a home for a couple of serial synths


Sorry I sent this just to Mike a few minutes ago.  I mint to send it to =
the list.  It is important to point out you can still use these serial =
synths if you have a USB to serial adapter.  I used my LT till I blew =
out the chip on it.   I still use my express though.

Ken

-----Original Message-----
From: Mike Ray <mike@raspberryvi.org>
Sent: Tuesday, September 7, 2021 5:08 PM
To: speakup@linux-speakup.org
Subject: Re: Looking for a home for a couple of serial synths

Keith,

I have a collection of hardware synths. I have a Dolphin Apollo, a =
Dolphin Juno, and a couple of DECTalks.

I would happily take the DoubleTalk off you hands.

I am in the UK. So if you're on the other side of the water, it may be =
outrageously expensive to ship it.

Mike


On 07/09/2021 21:14, Keith Wessel wrote:
> Hi, all,
>=20
> I hope this isn't off-topic, but I know there are a lot of hardware=20
> synth enthusiasts on this list, and I've got two that I'd rather find=20
> homes for than send to electronics recycling.
>=20
> Those of you on the brltty list saw my post a couple weeks ago about=20
> looking for a new home for a serial braille display. My cleaning has=20
> now lead me to two serial synths, both of which I'd be happy to let=20
> anyone have for the cost of shipping.
>=20
> One is a Doubletalk LT (speakup_synth=3Dltlk). This was the Doubletalk =

> that could either be run off of a 9-volt battery or an AC adapter. It=20
> has a hard-wired cable that goes to a DB9 serial plug. It's in perfect =

> working condition, and I have the AC adapter that I'll include.
>=20
> The other needs a little work. It's a DECTalk express, complete with=20
> case, AC adapter, serial cable, and headphones. However, it won't=20
> power up presumably because the internal battery needs to be replaced.
> Anyone handy with a soldering iron should be able to tackle this, and=20
> last I checked the battery was a type that's available from Batteries=20
> Plus and various on-line sources.
>=20
> I have no need for either of these any more since I no longer have a=20
> desktop with a serial port. If you're interested in either of these,=20
> email me off-list at keith@wessel.com.
>=20
> Thanks,
> Keith
>=20
>=20
>=20


--
Michael A. Ray
Analyst/Programmer
Witley, Surrey, South-east UK

He/him

"Perfection is achieved, not when there is nothing more to add, but when =
there is nothing left to take away." -- A. de Saint-Exupery





