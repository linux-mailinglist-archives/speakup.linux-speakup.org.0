Return-Path: <speakup+bounces-258-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 8F3383D57A2
	for <lists+speakup@lfdr.de>; Mon, 26 Jul 2021 12:37:20 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 0710E380F51; Mon, 26 Jul 2021 06:37:19 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20161025 header.b=Bq14UMPw;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id DB9B2380B92
	for <lists+speakup@lfdr.de>; Mon, 26 Jul 2021 06:37:18 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 4A1E7380BF2; Mon, 26 Jul 2021 06:37:13 -0400 (EDT)
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 16A8E3805F1
	for <speakup@linux-speakup.org>; Mon, 26 Jul 2021 06:37:13 -0400 (EDT)
Received: by mail-lf1-f47.google.com with SMTP id f18so14549937lfu.10
        for <speakup@linux-speakup.org>; Mon, 26 Jul 2021 03:37:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=OtURz3CBWh9F/arUa3F00aC487zYBVFoMyRNCva1b74=;
        b=Bq14UMPwASQFSmZjYO9Lcl+fivqxd4j3GOZ656zzCGuVs140Qrk7ca9nsiqhUMHr3X
         5j42BupxUSYeuYfCLi1CeSCayUWSHg029LJXAF6GyM7DNhN1CqRACfiqxznL1FKu/Ou1
         B5aJ5eoin3UPc3qoIVZQdFWHjQ8S7yJTasB4hJDHk9bPzGLDhNtZ0TpLdbi0qLtQ+IQu
         LaZyKND1GNcgiE8v05fBm7XbB43CfOkS4+FEeSQFduiQQDmf+rodFmaA0JFaJhrPnyad
         V2uth6xKdZzsvlUUVvxLH+i8oEb6p1j6kxCVyj9vbqsIuAMVTUEn/KswW03I20HvZQns
         AJAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=OtURz3CBWh9F/arUa3F00aC487zYBVFoMyRNCva1b74=;
        b=oB7V7yEITwmO167AKfytiGHbb/6uVeSLPppf8IcwdysKYLq0vCMnHD9vjuoWDXkDLl
         u2uBxhfziojedWLrFiBytJlFUacQ0JwH+ToHMf0m4UAx95Pu/W9vaRgNBj1HiPLMr6lT
         DBJjF5KyqAGnpMLjJFTV9Vru/6DIJCejz9fbfvIzyP70hgD1/F6rnP2fW0yXdHsUfr2L
         MCS8UmoQf+/Bvh0o90PvH6h1JbDd10AqCB+X6SezX/qt74I0kCOfpNhCv5MhPb07EWjQ
         XUSOyM5h2RrkhIsgpuAbolM4xatkP8BcRI4Otlhdl8IFymlnmdxcLOcmTvIRTMcmurQW
         iyoQ==
X-Gm-Message-State: AOAM533jJK9AVUhzqVU5VQH/C2xo0vvERYMNK56FP/zt9civ0tpmK2Xq
	T7Jz5//ENQoDveo3x3NUidNlh/wi8XN2nw==
X-Google-Smtp-Source: ABdhPJx+hI8h0Zezj/v00+itHzh1uFkhEi1Afj2rvkTagdm7PdVpCIjfTn2Encf/EYUVIJmwGTUdtg==
X-Received: by 2002:a05:6512:3ca6:: with SMTP id h38mr12620445lfv.94.1627295770476;
        Mon, 26 Jul 2021 03:36:10 -0700 (PDT)
Received: from [192.168.1.73] ([91.77.167.245])
        by smtp.gmail.com with ESMTPSA id k11sm2996087lfu.27.2021.07.26.03.36.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Jul 2021 03:36:10 -0700 (PDT)
Subject: Re: Speakup on Arch Linux
To: "Joseph C. Lininger" <joe@pcdesk.net>
Cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <c5c14706-16d7-c9bf-9b1e-b72e52b37889@pcdesk.net>
 <YPwaIT2oJm+7+Hpl@rednote.net>
 <a98d3dd2-75d4-0542-54fb-7eb7e2f2f245@pcdesk.net>
From: Alexander Epaneshnikov <aarnaarn2@gmail.com>
Message-ID: <fe3be461-d437-f7ba-d255-0253f3349d14@gmail.com>
Date: Mon, 26 Jul 2021 13:36:08 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
In-Reply-To: <a98d3dd2-75d4-0542-54fb-7eb7e2f2f245@pcdesk.net>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

25.07.2021 22:59, Joseph C. Lininger пишет:
> Thanks Janina. My experience has been similar to yours. The difference 
> is that I can get speech with later versions, it's just that it drags 
> a bit when echoing keys and it hiccups sometimes at the when it 
> finishes talking. I had to restore my system from a BTRFS snapshot 
> after upgrading (the pacman solution didn't work because I didn't have 
> old enough versions) , but I've done similar to you for the moment and 
> excluded alsa-lib, alsa-utils, alsa-tools, espeak, and espeakup. 
> Hopefully they fix this so that we don't eventually have a situation 
> where we can't, for example, upgrade the kernel because of an 
> incompatible change to alsa.

hello Joseph. I think your problem would be fixed by new pcaudiolib 
release[1]
you can unignore all packages except espeakup.
I will try to prepare a new version of pcaudiolib as soon as possible,
would you agree to test it?

> Joe

[1]: https://github.com/espeak-ng/pcaudiolib/issues/7

-- 
Sincerely, Alexander.


