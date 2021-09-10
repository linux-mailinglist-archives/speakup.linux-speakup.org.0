Return-Path: <speakup+bounces-281-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 94963406381
	for <lists+speakup@lfdr.de>; Fri, 10 Sep 2021 02:46:55 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 105F4381011; Thu,  9 Sep 2021 20:46:55 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=ViFgSi68;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id EE54838100D
	for <lists+speakup@lfdr.de>; Thu,  9 Sep 2021 20:46:54 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 1D426380B21; Thu,  9 Sep 2021 20:46:52 -0400 (EDT)
Received: from mail-io1-f52.google.com (mail-io1-f52.google.com [209.85.166.52])
	by befuddled.reisers.ca (Postfix) with ESMTPS id EB17B3809F8
	for <speakup@linux-speakup.org>; Thu,  9 Sep 2021 20:46:51 -0400 (EDT)
Received: by mail-io1-f52.google.com with SMTP id a22so207518iok.12
        for <speakup@linux-speakup.org>; Thu, 09 Sep 2021 17:46:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=sender:from:to:references:in-reply-to:subject:date:message-id
         :mime-version:content-transfer-encoding:thread-index
         :content-language;
        bh=leIdgFeKLzZATluhUI7k1bxqYIi70vHoaYh67XRVrp0=;
        b=ViFgSi68FCbYI6URdaG5CAitAbOoVgOgHb57nvndZS3Rd1K4sftiD4PbEG9d0p50C/
         MeHNCPSxQnzNeM/yxheu1eewH8fWwM2mBr2E4ZrSHZXM7+c5Vmj2YZceS/4jEy2wJ72s
         mfShYPpJiPQEN17dhqtbbCMnD6FHwf967v2+Zs6ZJRkFM+4PwW8z1tn/RBxURv7KFp64
         6P3VNBhNVM+vhoUp4/dDcflhM+gVoRsUchkV7CKjIEOwuUfW+pmN58cGYZpfCM0tY2Wh
         HpSpNbtZ+maRBuy8NwFbyhLYn9Yg7nBBJS9mHUHlLDpjfg5VxrtK0w7i9BmFGJy5Dg1A
         wMKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:sender:from:to:references:in-reply-to:subject
         :date:message-id:mime-version:content-transfer-encoding:thread-index
         :content-language;
        bh=leIdgFeKLzZATluhUI7k1bxqYIi70vHoaYh67XRVrp0=;
        b=3Hj1cY/2qDZ5zE0HO+CO3Vu95Y9GEuMsjCES+UXRHNkFCuHin9Pr3th4vfVVn3XPfr
         LUufmwywByRDe5bXL98g7k3mWOuDS80R/uEGu/2fwbetD1eKsqqLVJFMwghq8dvrN9co
         JRmn47r/9UHQPjssERagHUM2o3EyzUzBwg3HAHnucrxzTvOe26cII5aSNKpFFnKn/8N3
         SKrlnQ3dLOZK6WJvv/90JBJ5Cu/OJr/wyZ62FhD5RrOJqduFTb8znp2oiln23A3PYPZl
         1PZfBI2/4OWL9TObEPF5cU3sltuEsJsabQMfj+MtN8vAaLwaMvzQWaiHcuYb/qwgZo7x
         UpJQ==
X-Gm-Message-State: AOAM530SFmIi0pScbbsJEAiIwvdZYCvujMVpwYo9qyFxq0OrH7RZUMWw
	+xLyw0CV6f+2Eskd8hRc9uQTH1aAIgGzhQ==
X-Google-Smtp-Source: ABdhPJwwTyMA/kzxNBv8l6bjmHL1guRsYWUqx2WutN8g1V7VImVcbqNDbDs5pWhrNRvWf97TmKZkbg==
X-Received: by 2002:a02:ab98:: with SMTP id t24mr2157036jan.115.1631234750177;
        Thu, 09 Sep 2021 17:45:50 -0700 (PDT)
Received: from TECHP10R95915 (99-74-22-187.lightspeed.brhmal.sbcglobal.net. [99.74.22.187])
        by smtp.gmail.com with ESMTPSA id y26sm1755158iob.37.2021.09.09.17.45.48
        for <speakup@linux-speakup.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Sep 2021 17:45:49 -0700 (PDT)
Sender: Keith Wessel <kwessel76@gmail.com>
From: "Keith Wessel" <keith@wessel.com>
To: "'Speakup is a screen review system for Linux.'" <speakup@linux-speakup.org>
References: <d32931d2-c683-fdcc-b38b-75a7139eb0fc@comcast.net> <a877f914-9885-48e9-0b2c-ce71303d18f9@bluegrasspals.com> <00c801d7a586$5f61e1d0$1e25a570$@wessel.com> <Pine.LNX.4.64.2109091359120.1024227@server2.shellworld.net>
In-Reply-To: <Pine.LNX.4.64.2109091359120.1024227@server2.shellworld.net>
Subject: RE: [DECtalk] Fw: Looking for a home for a couple of serial synths
Date: Thu, 9 Sep 2021 19:45:48 -0500
Message-ID: <005f01d7a5dd$33204fb0$9960ef10$@wessel.com>
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
	charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQFjgZzoRmnxccQkEVmX+8OWvOv5dAIeo1WnAWg/nV4CO7EkLqxWn3+w
Content-Language: en-us
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

A very excellent question. I checked with my friend who told me that he was
able to replace them, and he couldn't remember specifics, but he said he got
them from Batteries Plus. He suggested I open it up and get the model info.
So, I did. If anyone's interested, the battery in the DECtalk is a nickel
cadmium. Haven't seen one of those in a while. It's 7.2V 650mah. The battery
in mine was manufactured by EAC who boasts a no longer existent website that
used to be at eacnet.com. There are two numbers on the battery, neither of
which netted much from Google. One is 240002-195, the other is 4600. Since I
plan to ship this one, I didn't go as far as calling Batteries Plus myself
to see what they could find. But I'm skeptical, even though my friend has
successfully done this replacement. Mind you, it's been a few years since he
did.

I have two more DECtalk Express synths sitting on my desk at work which is
600 miles away; I generally work from home and won't be getting back into
the office for a visit until after COVID. But once I do and get them, he
said he'd try replacing them. That won't be for a few months, but if
anyone's interested, I'm happy to report back on how that goes. Sadly, those
are government property, and I won't be offering those to ship to an
interested party.

Keith

-----Original Message-----
From: Karen Lewellen <klewellen@shellworld.net> 
Sent: Thursday, September 9, 2021 1:00 PM
To: Keith Wessel <keith@wessel.com>
Cc: 'Jayson Smith' <jaybird@bluegrasspals.com>; 'Speakup is a screen review
system for Linux.' <speakup@linux-speakup.org>
Subject: RE: [DECtalk] Fw: Looking for a home for a couple of serial synths

Keith,
Can you ask your associates sharing specifically just where they found 
those replacements?
Kare



On Thu, 9 Sep 2021, Keith Wessel wrote:

> Interesting. My mileage differs on both of these points.
>
>
>
> 1.	The older DECTalks won't power up when the battery is totally dead.
> They aren't wired to take AC power first.
> 2.	I know at least two individuals who have replaced DECtalk dead
> batteries and gotten them working again.
>
> But perhaps Tom's experience was with a different model?
>
>
>
> Thanks for sharing,
>
> Keith
>
>
>
>
>
> From: Jayson Smith <jaybird@bluegrasspals.com>
> Sent: Thursday, September 9, 2021 8:18 AM
> To: Speakup is a screen review system for Linux.
<speakup@linux-speakup.org>
> Subject: Fwd: [DECtalk] Fw: Looking for a home for a couple of serial
synths
>
>
>
> Forwarding this response from the DECtalk list.
>
>
>
>
>
> -------- Forwarded Message --------
>
>
> Subject:
>
> Re: [DECtalk] Fw: Looking for a home for a couple of serial synths
>
>
> Date:
>
> Thu, 9 Sep 2021 06:08:26 -0400
>
>
> From:
>
> Tom Kopec  <mailto:w1pf@comcast.net> <w1pf@comcast.net>
>
>
> Reply-To:
>
> DECtalk  <mailto:dectalk@bluegrasspals.com> <dectalk@bluegrasspals.com>
>
>
> To:
>
> dectalk@bluegrasspals.com <mailto:dectalk@bluegrasspals.com>
>
>
>
> A DECTalk Express should power-up OK on external power with a dead/missing
> battery.
>
> The battery uses 600mAh prismatic ni-cad cells, which are very difficult
to
> find.. I don't think they are in current production.
> I have seen some Chinese NiMH cells that might sort-of work, but the
charger
> circuitry is not compatible with NiMH cells.
>
> There isn't a lot of room in there to hack in another solution. With
> significant hacking it is might be possible to convert to a lithium
battery,
> but that's not plug-and-play.
>
>
>
>
> ----------------------------------------------------------------------
>
> Message: 1
> Date: Tue, 07 Sep 2021 16:18:07 -0400
> From: "Jayson Smith"  <mailto:jaybird@bluegrasspals.com>
> <jaybird@bluegrasspals.com>
> To: dectalk@bluegrasspals.com <mailto:dectalk@bluegrasspals.com>
> Subject: [DECtalk] Fw: Looking for a home for a couple of serial
> synths
> Message-ID: <20210907.201807.235.1@TRENT
> <mailto:20210907.201807.235.1@TRENT> >
>
>
>
> ----- Original Message -----
> From: "Keith Wessel"  <mailto:keith@wessel.com> <keith@wessel.com>
> To:  <mailto:speakup@linux-speakup.org> <speakup@linux-speakup.org>
> Date: Tue, 7 Sep 2021 15:14:16 -0500
> Subject: Looking for a home for a couple of serial synths
>
> Hi, all,
>
> I hope this isn't off-topic, but I know there are a lot of hardware synth
> enthusiasts on this list, and I've got two that I'd rather find homes for
> than send to electronics recycling.
>
> Those of you on the brltty list saw my post a couple weeks ago about
looking
> for a new home for a serial braille display. My cleaning has now lead me
to
> two serial synths, both of which I'd be happy to let anyone have for the
> cost of shipping.
>
> One is a Doubletalk LT (speakup_synth=ltlk). This was the Doubletalk that
> could either be run off of a 9-volt battery or an AC adapter. It has a
> hard-wired cable that goes to a DB9 serial plug. It's in perfect working
> condition, and I have the AC adapter that I'll include.
>
> The other needs a little work. It's a DECTalk express, complete with case,
> AC adapter, serial cable, and headphones. However, it won't power up
> presumably because the internal battery needs to be replaced. Anyone handy
> with a soldering iron should be able to tackle this, and last I checked
the
> battery was a type that's available from Batteries Plus and various
on-line
> sources.
>
> I have no need for either of these any more since I no longer have a
desktop
> with a serial port. If you're interested in either of these, email me
> off-list at keith@wessel.com <mailto:keith@wessel.com> .
>
> Thanks,
> Keith
>
>
> _______________________________________________
> Dectalk mailing list
> Dectalk@bluegrasspals.com <mailto:Dectalk@bluegrasspals.com>
> https://bluegrasspals.com/mailman/listinfo/dectalk
>
>



