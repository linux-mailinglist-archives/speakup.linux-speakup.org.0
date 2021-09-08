Return-Path: <speakup+bounces-275-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 3A5B340326F
	for <lists+speakup@lfdr.de>; Wed,  8 Sep 2021 04:00:43 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 9CB61380F56; Tue,  7 Sep 2021 22:00:42 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=blinksoft-com.20150623.gappssmtp.com header.i=@blinksoft-com.20150623.gappssmtp.com header.a=rsa-sha256 header.s=20150623 header.b=sKXTT+fS;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 7C8AF380A8E
	for <lists+speakup@lfdr.de>; Tue,  7 Sep 2021 22:00:42 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 7C867380E9F; Tue,  7 Sep 2021 22:00:36 -0400 (EDT)
Received: from mail-qv1-f54.google.com (mail-qv1-f54.google.com [209.85.219.54])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 26E2A380A8E
	for <speakup@linux-speakup.org>; Tue,  7 Sep 2021 22:00:36 -0400 (EDT)
Received: by mail-qv1-f54.google.com with SMTP id 62so376079qvb.11
        for <speakup@linux-speakup.org>; Tue, 07 Sep 2021 19:00:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=blinksoft-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:references:in-reply-to:subject:date:message-id:mime-version
         :content-transfer-encoding:thread-index:content-language;
        bh=u8cLSs0qJvfLyYcXAFUqa5V8iSTiQOpBNfKO64kf31A=;
        b=sKXTT+fSGgVygbW/RSKOhEz20uHDZX1p10t0AZHbyGkQddznSwXXwF1tlGpnd0zIDI
         qwNLa0VxQBgOn8CV/TUaWsRii/p/qCnsOVEfdw3sAd22BRaeRx8inm6S/VsYLfVhxNqL
         uJerLNX4Iosfj8pb1tbchhAnUX2VnyTDpnbA35a69fUlC5wpZWaDGCJU22chJvE87vVY
         5ka2xRBqubP0rZ210S8dkBSBpyrT9T8J4nCDNmHW0DDr/WzY86at8HH1eN43sQ4ZDmzY
         lx3+hm716qGK1cn7hV4oShMBzxpYrCrFoILpyTgyvGNcRGdabeFwMRjvBcKZvH20D4HT
         iN8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:references:in-reply-to:subject:date
         :message-id:mime-version:content-transfer-encoding:thread-index
         :content-language;
        bh=u8cLSs0qJvfLyYcXAFUqa5V8iSTiQOpBNfKO64kf31A=;
        b=WxquakmxERXW23VytX0QLPOCD1X5iHeXNCHLkKZ63plV950h+4s7bbhBu/+gN53ryP
         IhHmI9Bk255xCikUUu3CxNly9s95HAeoK9jcfQPFtAjtC4aLy1IkbY24ct9sSjJqYCxM
         7hwWrDrNcyFvxYvMy5k1qpcky4z4mbCTjQeNCQ+AGNll5TmrhMbtjHGjkvTWdWOwGGRS
         vPbOhXEc50PXNZeYHmPqEUPZiT6/mZIqWNabB9eUYCNi1jLRo4opS4yiUJPWxSifspj9
         FxqXTH8kRzXDhCn9tZre3ycxsnLTnNloPTGs0NLw4v8I55wJ1CU387zZ2DWMnt14qa00
         Dqlg==
X-Gm-Message-State: AOAM533B4K0hUalPLxzPeRRcQoX981pYMsItPqdGHDcCU8HWlRC2+DlS
	JTOa5/KgotbkPJ8lrBlhBfu1Gw==
X-Google-Smtp-Source: ABdhPJyFIHEPHBBAq7xKdc8ci5RtEFqQGtUNoVo4L9M6rYtHww+EFYdf2MC77ZufDBtmSDndQw434w==
X-Received: by 2002:a05:6214:1587:: with SMTP id m7mr1464136qvw.38.1631066372963;
        Tue, 07 Sep 2021 18:59:32 -0700 (PDT)
Received: from DESKTOPAF0G2PK (cpe-96-29-128-102.kya.res.rr.com. [96.29.128.102])
        by smtp.gmail.com with ESMTPSA id t64sm721401qkd.71.2021.09.07.18.59.32
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Sep 2021 18:59:32 -0700 (PDT)
From: "Ken Perry" <kperry@blinksoft.com>
To: <mike@raspberryvi.org>,
	<speakup@linux-speakup.org>
References: <038801d7a424$ef8e3050$ceaa90f0$@wessel.com> <0fd74a30-ef75-a8b4-2245-45bbbfd8827c@raspberryvi.org>
In-Reply-To: <0fd74a30-ef75-a8b4-2245-45bbbfd8827c@raspberryvi.org>
Subject: RE: Looking for a home for a couple of serial synths
Date: Tue, 7 Sep 2021 21:59:31 -0400
Message-ID: <001301d7a455$2a956c10$7fc04430$@blinksoft.com>
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
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQEzVGoANlLYQ+UrG1dTpcO8PwfmJAIeebqjrNENbHA=
Content-Language: en-us
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5


Sorry I sent this just to Mike a few minutes ago.  I mint to send it to =
the list.  It is important to point out you can still use these serial =
synths if you have a USB to serial adapter.  I used my LT till I blew =
out the chip on it.   I still use my express though.

Ken

-----Original Message-----
From: Mike Ray <mike@raspberryvi.org>=20
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
> power up presumably because the internal battery needs to be replaced. =

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



