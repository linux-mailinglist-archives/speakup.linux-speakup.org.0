Return-Path: <speakup+bounces-272-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 8F9F7402F7D
	for <lists+speakup@lfdr.de>; Tue,  7 Sep 2021 22:15:26 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 811E7380F71; Tue,  7 Sep 2021 16:15:25 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=oW+JpJgE;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 60208380196
	for <lists+speakup@lfdr.de>; Tue,  7 Sep 2021 16:15:25 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 6120F380B0C; Tue,  7 Sep 2021 16:15:19 -0400 (EDT)
Received: from mail-io1-f41.google.com (mail-io1-f41.google.com [209.85.166.41])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 313EB380196
	for <speakup@linux-speakup.org>; Tue,  7 Sep 2021 16:15:19 -0400 (EDT)
Received: by mail-io1-f41.google.com with SMTP id g9so108103ioq.11
        for <speakup@linux-speakup.org>; Tue, 07 Sep 2021 13:15:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=sender:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding:thread-index:content-language;
        bh=jJ4YZCkA79pBYKnl+jlhws0antQkiBH21eJzgklt0dg=;
        b=oW+JpJgEwiqsZhHa/keEf+CjWdfzMhoIrE+pyBeNwgc1hekzbIIL4JYZJI8KuqYgM7
         AXiz2F0fescA5d/I46fyFK/LH95zhISxnOlSLgcfdN0wxo25fqs1zLxaKqVQdEXxBTLh
         VCjj4PqUhu/Qn6El8Cjr0N0lCebEVo1u6lmHo+/D2tsUxDAx2m0qyJiC9vl69CwlLwFy
         HWbaEZQzr+ItKopCe5+AZu0lSFuzhK61ETrSHQyJadRMaVhJ8Cn91TxXh3IQ+93maX53
         8ckEw7uAC9TkWRqE0ctWe5kyRAjuWg+j9QzixQnNCkRlGl2tlm6anm1Z7VjndLyOpPWc
         /dhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:subject:date:message-id
         :mime-version:content-transfer-encoding:thread-index
         :content-language;
        bh=jJ4YZCkA79pBYKnl+jlhws0antQkiBH21eJzgklt0dg=;
        b=X+lA2O63HuXRF7625otuZdvz7GpuZAuaMapMzP20tvxFjHuvhO7DGhieBTWWm69JrH
         My8Tr3Zv7zV1227NuyX0V/KUexL9ZwAGkMsfk9h+JTQxXhdcPpp67aSSXsnqV6Ldx6oJ
         szK1FR+eYH1MJZXa0tqQcRbn4woINldQnV6iehpqCdkPGEafPowGjbRv50Xhrd4SkKLc
         9gEiqc71mQLofh+jXsuIfP6t2aL71vlMM6dBbrr/gDjV8Yz5DuyQcHDRWt8dEfaBLFBi
         G3jPwUUDUduYVNaLMHFLDhPPTcqQu4g/fRUv9kl6Tu0Rqdaxys6Jx1ouB6vAmX4n1VYo
         /bug==
X-Gm-Message-State: AOAM532UzaKqBYpL1JBhJLF4oxBsQhA3+NSobft2SqbsLyp7puXdOxLm
	iPWdcjCnc0rkaDUxnfPr37JWg/lnFYBX/A==
X-Google-Smtp-Source: ABdhPJzlTanI+jcjqSfgg2cUCipnVz3HsrxPiJ7a+378zg2PvvEG65MOBy21xV5MX10Ru/sI3DE/Ug==
X-Received: by 2002:a5e:a813:: with SMTP id c19mr15737315ioa.199.1631045656436;
        Tue, 07 Sep 2021 13:14:16 -0700 (PDT)
Received: from TECHP10R95915 (99-74-22-187.lightspeed.brhmal.sbcglobal.net. [99.74.22.187])
        by smtp.gmail.com with ESMTPSA id o5sm6805362iow.48.2021.09.07.13.14.15
        for <speakup@linux-speakup.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Sep 2021 13:14:15 -0700 (PDT)
Sender: Keith Wessel <kwessel76@gmail.com>
From: "Keith Wessel" <keith@wessel.com>
To: <speakup@linux-speakup.org>
Subject: Looking for a home for a couple of serial synths
Date: Tue, 7 Sep 2021 15:14:16 -0500
Message-ID: <038801d7a424$ef8e3050$ceaa90f0$@wessel.com>
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
Thread-Index: AdekI53PpPkyF7N5Ty+0o/bI+B6y6w==
Content-Language: en-us
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi, all,

I hope this isn't off-topic, but I know there are a lot of hardware synth
enthusiasts on this list, and I've got two that I'd rather find homes for
than send to electronics recycling.

Those of you on the brltty list saw my post a couple weeks ago about looking
for a new home for a serial braille display. My cleaning has now lead me to
two serial synths, both of which I'd be happy to let anyone have for the
cost of shipping.

One is a Doubletalk LT (speakup_synth=ltlk). This was the Doubletalk that
could either be run off of a 9-volt battery or an AC adapter. It has a
hard-wired cable that goes to a DB9 serial plug. It's in perfect working
condition, and I have the AC adapter that I'll include.

The other needs a little work. It's a DECTalk express, complete with case,
AC adapter, serial cable, and headphones. However, it won't power up
presumably because the internal battery needs to be replaced. Anyone handy
with a soldering iron should be able to tackle this, and last I checked the
battery was a type that's available from Batteries Plus and various on-line
sources.

I have no need for either of these any more since I no longer have a desktop
with a serial port. If you're interested in either of these, email me
off-list at keith@wessel.com.

Thanks,
Keith



