Return-Path: <speakup+bounces-220-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 023F53AD8B4
	for <lists+speakup@lfdr.de>; Sat, 19 Jun 2021 10:53:01 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id B5280380BF6; Sat, 19 Jun 2021 04:53:00 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20161025 header.b=l3hZDvoA;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id F236A380BF2
	for <lists+speakup@lfdr.de>; Sat, 19 Jun 2021 04:52:58 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 88CA9380C88; Sat, 19 Jun 2021 04:52:53 -0400 (EDT)
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 6315C380AF9
	for <speakup@linux-speakup.org>; Sat, 19 Jun 2021 04:52:53 -0400 (EDT)
Received: by mail-lf1-f42.google.com with SMTP id f30so20904328lfj.1
        for <speakup@linux-speakup.org>; Sat, 19 Jun 2021 01:52:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=to:from:subject:message-id:date:user-agent:mime-version
         :content-transfer-encoding:content-language;
        bh=Zg3Ku8dpzK6ERfKY0U2VCfYMu4aWvNfswsyi00QcgGE=;
        b=l3hZDvoAGs522YdkBcnvDdxlN1YLYk+zZg8Z0mVr/s5gDhHP17V2Smd8E96RRuOwLV
         1mXSmSMXSC9/4IATHa+thI7nBPzAsu7Wg2hf+8rqpbzDVDSV+5XAyNzI/+2oBZGi5sPD
         2KSErX7MmXQ9FNWBdi/zADIA0NK0gvfmwwMyVZCICIN3vP8K16oYY5Gaaog5KYfa0VwO
         LQOMdZ4K4/ldpnccGHthnjUY4A5E+lTzz0Hnd8tmySBTG3I+1cKeBnWFjWbkvMZ/ra+l
         b76ZJjE6jQnra3j4BzOQ0q7/iyKbCjW3cpILDiouAXuNY69jYwGFDtg/R2MN68sIEgOg
         xrkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:from:subject:message-id:date:user-agent
         :mime-version:content-transfer-encoding:content-language;
        bh=Zg3Ku8dpzK6ERfKY0U2VCfYMu4aWvNfswsyi00QcgGE=;
        b=a6Sy5D9Oq2hhX9VU7TiKQ4XpwFT8SMs6zyxl+XWI4p2zl8qqRJMENB7dAwazoBOuHR
         8WiaiBXDQLl9lTsfQkCISyZkt3GMdeR221M1IYQe6LxQXY2xDYn/h1d1KfB4D9CwcnND
         q2HqhiHXmtuvu3k5+nusQ/EKADck8B1dOok+kNJB133d2Je3w5rfjn42M5QIFPd2PadW
         bSeqmgTaWZLO8wj1EvsOzolYoD+lNs+wUCWhaFeUsyR5due3Wxg65RkshlO0vUG4WssB
         bTq6PF3yXo30teGg3bXOhoL7rWkDgzHOSqwK697pwydiugUmVhw+gaTgFSbHel14AF28
         S0EQ==
X-Gm-Message-State: AOAM533p3D+H5ACqd8HTJbwV92cR7sjebduf6gtmNihZ58ORt1cZPQ7C
	+IO4hywLsStpRSBY63s2zzc=
X-Google-Smtp-Source: ABdhPJwMds8DmgkRM+W31aLivqzi1UBqBzGHZxRJoko1hlEPrv0yy+Vnka6yE0WF+KDmvzNSuMgTJQ==
X-Received: by 2002:a05:6512:398f:: with SMTP id j15mr6336096lfu.7.1624092706206;
        Sat, 19 Jun 2021 01:51:46 -0700 (PDT)
Received: from [192.168.1.73] ([91.77.167.245])
        by smtp.gmail.com with ESMTPSA id u13sm1163301lfq.201.2021.06.19.01.51.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 19 Jun 2021 01:51:45 -0700 (PDT)
To: speakup@linux-speakup.org, blinux-list@redhat.com
From: Alexander Epaneshnikov <aarnaarn2@gmail.com>
Subject: espeakup 0.90 is released
Message-ID: <cd3947be-63cb-f8df-d22a-714dcee24c33@gmail.com>
Date: Sat, 19 Jun 2021 11:51:44 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

hello everyone.
I am pleased to inform you that espeakup [1] has been updated
to version 0.90. [2] a tag is signed with my pgp key. [3]

[1]: https://github.com/linux-speakup/espeakup
[2]: https://github.com/linux-speakup/espeakup/releases/tag/v0.90
[3]: 
https://keys.openpgp.org/pks/lookup?op=get&search=0x6C7F7F22E0152A6FD5728592DAD6F3056C897266

-- 
Sincerely, Alexander.


