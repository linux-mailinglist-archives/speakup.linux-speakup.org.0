Return-Path: <speakup+bounces-260-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 8D43B3E34BF
	for <lists+speakup@lfdr.de>; Sat,  7 Aug 2021 12:26:46 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 52701380ED9; Sat,  7 Aug 2021 06:26:45 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20161025 header.b=SLaULruf;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 3F839380AC4
	for <lists+speakup@lfdr.de>; Sat,  7 Aug 2021 06:26:45 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id BB361380B11; Sat,  7 Aug 2021 06:26:39 -0400 (EDT)
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 8B855380196
	for <speakup@linux-speakup.org>; Sat,  7 Aug 2021 06:26:39 -0400 (EDT)
Received: by mail-lj1-f182.google.com with SMTP id x7so4218380ljn.10
        for <speakup@linux-speakup.org>; Sat, 07 Aug 2021 03:26:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=DvJd0OtQlNktQjNZPsm62D00QuObyBisL6+o4aXIRYg=;
        b=SLaULrufXiZK02eFW5+DIA75ocz7dNLVSfZfLsdiXDR4eLdRJpBf6g8wg6w81y7Q8c
         VPx+Sj4i9+J/2hgtyKHBslSUr0DOT5lV9f2qmOMCG1OUbl5T0YhNcIyT6W8y/oMQUeoO
         LPKGZafNHyQkkkUnjVuHrfYvOnbEUFxyypozXfQrutwmfczg8HszdDQ9czBWG7FTEdag
         wirpt5G5hnExtv8lVpMysW+fK4WuZJMAVQYODp/htkb4ZodTOYavO2vneHoofwnuJ4fm
         8fSwmCd371lJ0uAXNwa7+lLDRQo/tWkc3h/b2OZQN0XBQ6KHnUrUFW80UlWDsHOKSex+
         xGyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:from:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=DvJd0OtQlNktQjNZPsm62D00QuObyBisL6+o4aXIRYg=;
        b=HSgrEF/O1M6jxuR9CdYK776kEzO9za7AEKZcWutNrV/c/7XmUw+2+Zn3PiVB9X5eNV
         NFuNf7qFA3MQ+m4UQdj+jol1n48nyAgRZBhH3775Giihw8j4ScPJyJZU4imRqmYDbCeu
         yA3JTvqH8DTaoxOemgwaTyrJGh/K70WoLi9ULV22aED/uLlIXcJBolJl7ziaG6yePhSD
         2Yq9GzCpfUzyKjnlulv84e9GXf+D+MWGulCCsf+OCUmduPLpP9Kc4FOPaBBeEks7BMnH
         5j6tQchK9Cqdjo8Y6xH7RD970UtcgsRGQYEW7Kpes3/1kL4y4tfIre4J81omka8ozQXG
         unyA==
X-Gm-Message-State: AOAM532jLmlRTXslgXw2/jbrNWxYSfEBYHow1aZgLn+G6hCj0nWoFtmD
	bWdzUd2ebvdpMqzZ/txHwB7WZqdZbXlfYShb
X-Google-Smtp-Source: ABdhPJxw33ntoaIyi7NPG1wdP8crMm511yPtN9Wo3OY2F2R64W5Bhu/COWDI1WA15FMyrhQF66MgrQ==
X-Received: by 2002:a2e:2281:: with SMTP id i123mr6124129lji.111.1628331934307;
        Sat, 07 Aug 2021 03:25:34 -0700 (PDT)
Received: from [192.168.1.73] ([91.77.167.245])
        by smtp.gmail.com with ESMTPSA id y17sm1002643lfe.215.2021.08.07.03.25.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Aug 2021 03:25:33 -0700 (PDT)
Subject: Re: Speakup on Arch Linux
From: Alexander Epaneshnikov <aarnaarn2@gmail.com>
To: "Joseph C. Lininger" <joe@pcdesk.net>
Cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <c5c14706-16d7-c9bf-9b1e-b72e52b37889@pcdesk.net>
 <YPwaIT2oJm+7+Hpl@rednote.net>
 <a98d3dd2-75d4-0542-54fb-7eb7e2f2f245@pcdesk.net>
 <fe3be461-d437-f7ba-d255-0253f3349d14@gmail.com>
Message-ID: <1c4bcdaf-4526-a82c-eab0-ae9a7743f008@gmail.com>
Date: Sat, 7 Aug 2021 13:25:32 +0300
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
In-Reply-To: <fe3be461-d437-f7ba-d255-0253f3349d14@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

26.07.2021 13:36, Alexander Epaneshnikov пишет:
> 25.07.2021 22:59, Joseph C. Lininger пишет:
>> Thanks Janina. My experience has been similar to yours. The 
>> difference is that I can get speech with later versions, it's just 
>> that it drags a bit when echoing keys and it hiccups sometimes at the 
>> when it finishes talking. I had to restore my system from a BTRFS 
>> snapshot after upgrading (the pacman solution didn't work because I 
>> didn't have old enough versions) , but I've done similar to you for 
>> the moment and excluded alsa-lib, alsa-utils, alsa-tools, espeak, and 
>> espeakup. Hopefully they fix this so that we don't eventually have a 
>> situation where we can't, for example, upgrade the kernel because of 
>> an incompatible change to alsa.
>
> hello Joseph. I think your problem would be fixed by new pcaudiolib 
> release[1]
> you can unignore all packages except espeakup.
> I will try to prepare a new version of pcaudiolib as soon as possible,
> would you agree to test it?
>
>> Joe
>
> [1]: https://github.com/espeak-ng/pcaudiolib/issues/7
>

hello Joseph. pcaudiolib has been updated in arch repository.
can you retest all latest updates?

-- 
Sincerely, Alexander.


