Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id EA4C11CC43D
	for <lists+speakup@lfdr.de>; Sat,  9 May 2020 21:48:51 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 6E27C1C57CB; Sat,  9 May 2020 15:48:50 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20161025 header.b=ZjBj/fg5;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 43AAD1C73C3;
	Sat,  9 May 2020 15:47:01 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id B7ECD1C57B4; Sat,  9 May 2020 15:46:49 -0400 (EDT)
Received: from mail-lj1-f196.google.com (mail-lj1-f196.google.com
 [209.85.208.196])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 453321C0129
 for <speakup@linux-speakup.org>; Sat,  9 May 2020 15:46:19 -0400 (EDT)
Received: by mail-lj1-f196.google.com with SMTP id j3so5229141ljg.8
 for <speakup@linux-speakup.org>; Sat, 09 May 2020 12:46:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:references:cc:from:autocrypt:subject:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=QkpZ6sIZGHbkv83qhKH6AM3ptrdRGPnth9zNGT21bjo=;
 b=ZjBj/fg5vmMEKC/7DmyRerB09CARxVsKQ5k+/ScZOMbQ9JGt6o/3L7g8F5bqcP0seD
 hlDyElClgPzTwaquWCX8v9F/rGePd4HmVtJaDQrgT+ddr5u17Ia75uYG4jzVo4geWBs+
 +njDH/QT3qD7N7L5SCL3xlDV/2WcUKOEp5rTpnLQTTzc/D8wvsqtT+vcz2rUlyyikS7y
 rVBjJHnksy0ouJv7kQNpt6QhWa9Jnj+FS8Q6dlMbbncZ/t9UJ40WNtBxo/99PtRceA5a
 XVAOeiUb60Ihq5eakPDwewJgt9ECK2OVqRLuRMsw6CB2TjXgJywpgdV/loUkVBCj4uxJ
 0wIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:references:cc:from:autocrypt:subject
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-transfer-encoding:content-language;
 bh=QkpZ6sIZGHbkv83qhKH6AM3ptrdRGPnth9zNGT21bjo=;
 b=tuJ64ojmJChL7y/TCvfS4kBYgy2kzHHzehkEJpJy/xK0RTbh3siKC+nC+NsTeUiHE/
 ontEAFSU0LUbClBNHcW0mpKZ5Iu0v+7ydA/NGIq98k5vXim6bY7o4lmB7VORdxGwoVw5
 y5wAlrlyf6WTbYeOnXXU57ulS+XnW1aknTiAdX9dSTSPm3UYYS+hvQyrnmje0qOhta82
 dVZZWNIYGTukgNt6wGm+isHcMRlHqIkjZnkXfC07cApHKU45/YQIhwi+CX6BdByvEr+n
 ya/LHdJdhWFKbC4C84xqFMH9zCAHFH6vAXHMaopv7q14vKVuKZ4OOt29cSRM06CRPtlw
 u++Q==
X-Gm-Message-State: AOAM531eNjw1mpxuQmv9hnsANzcJUa0978oRTe1rOW3Of33BOUMfV/Kv
 3OltIrva4ZjgZaRS8AvW1KnSblAQq3b02Q==
X-Google-Smtp-Source: ABdhPJyP8Xk7ouqVKX3c0G+9inOcZYYGgJbihDgo6uFluC97lzSwoRqf2cCL9OACgfpDdmSaqrspvw==
X-Received: by 2002:a2e:b248:: with SMTP id n8mr5393018ljm.207.1589053516146; 
 Sat, 09 May 2020 12:45:16 -0700 (PDT)
Received: from [192.168.1.73] ([91.77.167.245])
 by smtp.gmail.com with ESMTPSA id s11sm4969791lfo.86.2020.05.09.12.45.15
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 09 May 2020 12:45:15 -0700 (PDT)
To: Samuel Thibault <samuel.thibault@ens-lyon.org>
References: <de1e60e2-1ebc-77c2-3e90-0d0adfa6b532@gmail.com>
 <20200509193238.fpzna4j2k2rwwi4b@function>
From: Alexander Epaneshnikov <aarnaarn2@gmail.com>
Autocrypt: addr=aarnaarn2@gmail.com; keydata=
 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
 444rpcPy
Subject: Re: acsint support in espeakup
Message-ID: <ae1d34b1-1a98-3f6e-bad0-a4e2a439e12a@gmail.com>
Date: Sat, 9 May 2020 22:45:14 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200509193238.fpzna4j2k2rwwi4b@function>
Content-Language: en-US
X-BeenThere: speakup@linux-speakup.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <http://linux-speakup.org/cgi-bin/mailman/options/speakup>, 
 <mailto:speakup-request@linux-speakup.org?subject=unsubscribe>
List-Archive: <http://linux-speakup.org/pipermail/speakup/>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup-request@linux-speakup.org?subject=help>
List-Subscribe: <http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup>,
 <mailto:speakup-request@linux-speakup.org?subject=subscribe>
Reply-To: "Speakup is a screen review system for Linux."
 <speakup@linux-speakup.org>
Cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

hello Samuel. is it in kernel tree or used by any linux distro?

i understand that it's completely independent from speakup. i am talking
about espeakup support. in source code we have functions related to acsint.

09.05.2020 22:32, Samuel Thibault
> Hello,
>
> Alexander Epaneshnikov, le sam. 09 mai 2020 21:28:30 +0300, a ecrit:
>> hello everyone. i started working on espeakup source code and found
>> support for something called acsint <https://github.com/eklhad/acsint>
>> As I understand, this is another kernel space screen reader.
> More precisely, it exposes some kernel support to userland, to intercept
> the keyboard presses, the printed text, etc.
>
>> it's support in espeakup looks strange and unfinished to me.
> IIRC it's completely independent from speakup, although it uses the same
> kind of interception tools in the kernel.
>
> Samuel
> _______________________________________________
> Speakup mailing list
> Speakup@linux-speakup.org
> http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup

-- 
Sincerely, Alexander.


_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
