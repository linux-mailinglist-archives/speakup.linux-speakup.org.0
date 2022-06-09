Return-Path: <speakup+bounces-456-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 1BBC854501B
	for <lists+speakup@lfdr.de>; Thu,  9 Jun 2022 17:05:28 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=iba28vhU;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id A75843807F2; Thu,  9 Jun 2022 11:05:27 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 921D73807B3
	for <lists+speakup@lfdr.de>; Thu,  9 Jun 2022 11:05:27 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 66FAC3807B8; Thu,  9 Jun 2022 11:05:21 -0400 (EDT)
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com [209.85.160.182])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 45D3C3807B3
	for <speakup@linux-speakup.org>; Thu,  9 Jun 2022 11:05:21 -0400 (EDT)
Received: by mail-qt1-f182.google.com with SMTP id y15so17338214qtx.4
        for <speakup@linux-speakup.org>; Thu, 09 Jun 2022 08:05:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:mime-version;
        bh=EdZaRnlrAyrws0Tcer87cvEyFDibYetRj5RGYyVqgeo=;
        b=iba28vhUYFYp4P2FC0/KTTsEa8QHJSB98vxL93IxbKgeGuqwgDpJ/eywCAh3uXnVtX
         eRDo5o7KfWcgbf0UEzY/KdmJGEtd/+C2B8CzNss770BmBe7/kThFu7VaIObpWeqn6P/R
         j3JXweGgN3kDhqzoyRCYud5BwS4V5dQ6w3QGbMuosGziQcqToWuwTo/7bNfypMgaqriC
         LEay01Z4ha7EFWB8Jiverh6wsnImRpuseYxTefFlBeDFBEC4tQPeVm00y2+W3//x2KU+
         TRRaJN6WW3fHnxQXFItLmKajNvUBWFMWv7wDwKpIHH8E+0+TzNZHpFuJeUenelHYHA85
         atHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version;
        bh=EdZaRnlrAyrws0Tcer87cvEyFDibYetRj5RGYyVqgeo=;
        b=vYbknqv6N2qK6S4Pf8kHpb5jdkWCxJa6FyGtQ1vQUmxmIwYgE/oACXgbi8jgThYT0y
         +SUbPGAk8mkRuH9kfNFY1uEfSwFlMjCIO/Lvt4kUVbuY7IR5yWMbwhDvbZDhq5n6jSv+
         lbzAyTU5ggLqki+890vyf9lgvHcDeOgTblaX/h4kSPAz1FM7d+t9ej23ZR6cI5IOMrSL
         GVGVqlCZ6X3W0ZJUfqH0EB/Km9b78TjaG2OwnpkUJQW3Ucq+d5ZzW5/Jo932kT4OCZDH
         bW6ZodZ3BM/K696Byo+1eV+pGorU9tqhtNTp/4Kc/4a3OrYty4m1PYGbUsp3o/0ej/i6
         bs1g==
X-Gm-Message-State: AOAM531UYbON9/d+3tmi4hjRyZJ871YsKn7Zu8TVAu2YrioC9jJ7f1cO
	Kn3jN2SiWFOYzq/CZ/SDZkQ=
X-Google-Smtp-Source: ABdhPJy5bWs1KQEKTFALWAlEzbpKoTPwkGDsGb2zUfpJpQaZ5+uJP35QUQjoREKv9vWWMuQMshScGQ==
X-Received: by 2002:ac8:5c96:0:b0:2f9:3077:5cda with SMTP id r22-20020ac85c96000000b002f930775cdamr32892379qta.625.1654787059918;
        Thu, 09 Jun 2022 08:04:19 -0700 (PDT)
Received: from dans-mac-mini-2.home (pool-74-98-213-46.pitbpa.fios.verizon.net. [74.98.213.46])
        by smtp.gmail.com with ESMTPSA id q19-20020a05620a0d9300b006a68fdc2d18sm16636478qkl.130.2022.06.09.08.04.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jun 2022 08:04:19 -0700 (PDT)
Date: Thu, 9 Jun 2022 11:04:18 -0400 (EDT)
From: "dan d." <dandunfee@gmail.com>
To: K0LNY_Glenn <glenn@ervin.email>
cc: Chime Hart <chime@hubert-humphrey.com>, 
    Karen Lewellen <klewellen@shellworld.net>, 
    Brian Buhrow <buhrow@nfbcal.org>, 
    "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Gmail with alpine - was eMail Links
Message-ID: <d3184f19-3aee-e168-fd57-789779a8427@gmail.com>
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



Alpine can continue to use gmail and other email sourceswith the stepss given here:

https://alpine.x10host.com/alpine/alpine-info/misc/xoauth2.html#SettingUpGmail
On Wed, 8 Jun 2022, K0LNY_Glenn wrote:



> Anyone here use gMail with Alpine and experience any issues with the new
> gMail two step verification and gMail blocking apps they consider unsecure?
> Google just started blocking some clients, and it isn't fixable through
> gMail settings any more.
>
> Glenn
> ----- Original Message -----
> From: "Chime Hart" <chime@hubert-humphrey.com>
> To: "Karen Lewellen" <klewellen@shellworld.net>
> Cc: "K0LNY_Glenn" <glenn@ervin.email>; "Brian Buhrow" <buhrow@nfbcal.org>;
> "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
> Sent: Wednesday, June 08, 2022 6:27 PM
> Subject: Re: eMail Links
>
>
> Hi All: The nice thing in Alpine, you can configure it to click on urls in
> an
> e-mail. As far as any atatchments which you would receive, you would hit a v
> and look over any which you can save.
> Chime
>
>
>
>

-- 
ent-
XR

