Return-Path: <speakup+bounces-228-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id C9FD93C39F7
	for <lists+speakup@lfdr.de>; Sun, 11 Jul 2021 05:23:19 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 44867380E19; Sat, 10 Jul 2021 23:23:19 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=blinksoft-com.20150623.gappssmtp.com header.i=@blinksoft-com.20150623.gappssmtp.com header.a=rsa-sha256 header.s=20150623 header.b=2Qo2WshI;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 22723380BA0
	for <lists+speakup@lfdr.de>; Sat, 10 Jul 2021 23:23:19 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 12FB0380BB2; Sat, 10 Jul 2021 23:23:13 -0400 (EDT)
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com [209.85.222.174])
	by befuddled.reisers.ca (Postfix) with ESMTPS id AE1A7380B0F
	for <speakup@linux-speakup.org>; Sat, 10 Jul 2021 23:23:12 -0400 (EDT)
Received: by mail-qk1-f174.google.com with SMTP id r125so6614669qkf.1
        for <speakup@linux-speakup.org>; Sat, 10 Jul 2021 20:23:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=blinksoft-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:references:in-reply-to:subject:date:message-id
         :mime-version:content-transfer-encoding:thread-index
         :content-language;
        bh=OgZ5gg6qk1AoI0WLx9+AAsU5tDENqVfO0lVtaJktZFM=;
        b=2Qo2WshIOk1A6afkNEnnw2OOXCheeRBSyp5AFrXKYKT5/xgWfbCwmdHCMMYGhxmRVn
         lHFr0+0xUuqvrY1iYICsdOCZuPkqzhC2GoXYexKTqqYaMqNw9gz43g6hzvdT32CoXowp
         eyWQ1WNgqoi1j/e+o9PMH9Yups+OHkOduNHAwGrYJzouojojS9xgPeRQ6Cv3S12wErzL
         Ft880RWjosg+c5h+rFfjrmQCj/Pjlab5ZypD34kZSbMC757WaUJBt2SCLlmYFAC8jZIU
         r5gPxLwdyTHEgQDK6H+QHTxc9aDV0vdOuH7ZxHUzuA8XoaCMaF5gcP3Bjke0cwn9euAn
         H6hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:references:in-reply-to:subject:date
         :message-id:mime-version:content-transfer-encoding:thread-index
         :content-language;
        bh=OgZ5gg6qk1AoI0WLx9+AAsU5tDENqVfO0lVtaJktZFM=;
        b=TUGHdhv8+fcD36Bu2L+hfSWjrxsisBuDTeQi0AiQBa7HbZXakQn1lVNFZmeB/SFQAH
         XVhRfqYB/Rt7vgllR6D+A/Jd3a8N7aom8EqAnVS3O0b5h9GfOwguNlTULeMmm3DcQ3WN
         OUnO3ldGOmGO/2Vp4c4peX0wFgl9Y93lFVwP9qHRr08iRZHvo1P4H0RmjnMzbpUfMc+c
         VgZGeFYZt548Ewf2bgkPaXrZCeOVeJRntdAEbUqnFDrklIKa1AANa24GIi03s6e7Hodz
         63Mt9/ZHRxeQqLCHDBG/QnkgT2ymjoIqNSca/o115zYUp+wNo/V7A4s/blgyhaYwIr0w
         B7pQ==
X-Gm-Message-State: AOAM530JqGn5Xs/45f4rCYRe+nmiS3pUy1mF9fXCnZ2TnzoTSFGGxrUu
	ayo9zucFZPChoWOUxMwToUMn8A==
X-Google-Smtp-Source: ABdhPJxoMEw6WxtMnYCVk2nYtRVvMz8jcIR8foRpwEHd8h71TQ2FoeMHZKYcFcf1nMc527W7S4h97w==
X-Received: by 2002:a05:620a:16cd:: with SMTP id a13mr16174176qkn.118.1625973729571;
        Sat, 10 Jul 2021 20:22:09 -0700 (PDT)
Received: from DESKTOPAF0G2PK (cpe-96-29-128-102.kya.res.rr.com. [96.29.128.102])
        by smtp.gmail.com with ESMTPSA id a17sm4513342qkk.121.2021.07.10.20.22.08
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 10 Jul 2021 20:22:09 -0700 (PDT)
From: "Ken Perry" <kperry@blinksoft.com>
To: "'Karen Lewellen'" <klewellen@shellworld.net>,
	"'Chime Hart'" <chime@hubert-humphrey.com>
Cc: <speakup@linux-speakup.org>
References: <a983ac4d-a9aa-a592-8612-275a1d729bfe@hubert-humphrey.com> <Pine.LNX.4.64.2107102255340.3430053@server2.shellworld.net>
In-Reply-To: <Pine.LNX.4.64.2107102255340.3430053@server2.shellworld.net>
Subject: RE: No Interrupt in Voxin Embedded Voices?
Date: Sat, 10 Jul 2021 23:22:07 -0400
Message-ID: <000c01d77603$ee6513a0$cb2f3ae0$@blinksoft.com>
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
	charset="US-ASCII"
Content-Transfer-Encoding: 7bit
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQEvLNh1Qz4ZOI8GAM7d+BTnWjcLBAEo5vP8rIRmf0A=
Content-Language: en-us
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

For almost all tts even tts that is burnt on chips like the Emic2 module
there are commands you send to the synth that Controls speech attributes.
Like punctuation and pitch etc.   The speech-dispatcher should be talking to
the a Capela synths if this is the alice speech from a Capela.  If a tts
does not have special commands then the screen reader has to do the parsing
but the these voices do have commands speakup and the speech dispatcher
should be able to control if everything is working right. 


-----Original Message-----
From: Karen Lewellen <klewellen@shellworld.net> 
Sent: Saturday, July 10, 2021 11:03 PM
To: Chime Hart <chime@hubert-humphrey.com>
Cc: speakup@linux-speakup.org
Subject: Re: No Interrupt in Voxin Embedded Voices?

Chime,
simply asking a question to hopefully lead to a solution.
If these voices are embedded, what is supposed to  control them at all?
How would you tell the voice, for example, that only certain  types of
punctuation should be spoken? or how to manage upper case letters, or
extended characters?
If the voice is intended to just be a tts, i. e. read, instead of work in
conjunction with a program, i. e. an actual screen reader,  you may not have
an easy solution.
Many times I must inform others that tts, is not a screen reader.  it is
more often than not an engine.  Some can work with actual screen reader
software, programs that include keystrokes for those kings of controls, but
many just read text, and little else.
Just my stance,
Karen



On Sat, 10 Jul 2021, Chime Hart wrote:

> Wow, after practicly an entire afternoon, we got Alicin-and-Samantha 
> installed in Debian on my laptop. We needed to run "voxinup" instead 
> of speechd-up. Voice sounds quite good, was about to explore 
> dictionary settings, when I realized no keys, controll or anything 
> else will interrupt speech. I must wait til it stops reading or 
> catches up if you type while its reading. I have no idea if there are 
> any places in Speakup where I can fix this, or would I report this 
> through Oralux? Thanks so much in advance Chime
>
>


