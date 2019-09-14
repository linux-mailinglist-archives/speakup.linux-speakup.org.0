Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 3F3F0B2D1E
	for <lists+speakup@lfdr.de>; Sat, 14 Sep 2019 23:13:43 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 83A8E1C4415; Sat, 14 Sep 2019 17:13:42 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="CFSWnCIV";
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 753721C446E;
	Sat, 14 Sep 2019 17:13:12 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 5848B1C42B8; Sat, 14 Sep 2019 17:13:09 -0400 (EDT)
Received: from mail-oi1-f193.google.com (mail-oi1-f193.google.com
 [209.85.167.193])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 4A6941C42EF
 for <speakup@linux-speakup.org>; Sat, 14 Sep 2019 17:13:07 -0400 (EDT)
Received: by mail-oi1-f193.google.com with SMTP id k20so5439440oih.3
 for <speakup@linux-speakup.org>; Sat, 14 Sep 2019 14:13:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=DDcfkjWAlJDlYlDmtLpplyY3vfzjVOYI/sTUQlbUnqo=;
 b=CFSWnCIVglRGS0DdIPgS31hkR+YEFjJV7zBEeNuXHHOl+MeteQkjccD/ZKTRrggTHV
 ZQlwIKrznslejAetiI5p/XwbHSBg7mx1t9b3GjrR21bIp3is2mCjewRPud4SRZQJ6T/6
 HcLj8u1jpVuPouk7fePd+pPkfIUsxhYNg2w9FhB+2/zGMEVMUY2RQm5FMRojWvDk5V9R
 t4syXF7Xapcb5o/LG8gMgqmgvy8+5bF2A25lwf5ro+ZOqoMwJnBK9l468rAti66D62RD
 HoZMJ86i4OSa2WnMloKnEUtBZEHSaz8JFKl/N8C2hEUtwBT3pIKeHnAPj/jFsuaTamdo
 3kFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=DDcfkjWAlJDlYlDmtLpplyY3vfzjVOYI/sTUQlbUnqo=;
 b=aHnjvHHZByznwvt9/YYxsWXcrBddVmzv0uddycBpoOPm6Zw4jtRIa3bu8Plr4g0wph
 ARre3ZeWrBxogA5JSh8gA+0BS6lLJ5P08UPDUKKikwv8ZoBhgL81hYB8FA1qpLxGTTQX
 q5gZ1yzkBuN3mvUF5dNs0HwiErHmX9zFWQLvYhDYW1v2zhx+5y407BbzDpr4LQkxpiAp
 RnicOdojiwihrofqv6ewohqFYSZiLrl8IMtjkKt8+iHp6vJkwTlBOXzD+KZIF8dQ17Hd
 ukgmyvgLr39hzEGPw+tYO0MFts9XMNxTvO5dTi8fNUPdnjnsR3RznyCuQ7xFBKBxQyki
 Gj1g==
X-Gm-Message-State: APjAAAWPRpmKNudUBoVEVXQj4emHp7VwL7bpZ3XBmEYprQksi8kwf2HJ
 iJu7hZ04fV1rDNGCcEaxxmc/kPq4vxr4DcsdV7Sjpw==
X-Google-Smtp-Source: APXvYqy8YBuvMK9LNyHsY0EpTB/Z2wDU9NyP28VdwQ02e6kOW8ifB3QVt6VHe65Ist6/B0qU5aKUwhHyrZ9gSwCW038=
X-Received: by 2002:aca:fd58:: with SMTP id b85mr6661100oii.94.1568495525578; 
 Sat, 14 Sep 2019 14:12:05 -0700 (PDT)
MIME-Version: 1.0
References: <20190721180431.7ce1f716@narunkot>
 <20190724070600.6gbugq7y6xztosd2@function>
 <CAOtcWM2K-ch9yJaL5C+-ZGPn4hu=ntGDT926_pPsr9Hz74zijA@mail.gmail.com>
 <20190813080826.5gemx4vok2e6zcg3@function>
 <CAOtcWM0OPjtcY=rnSSn2us7kWPG7MDe=Jfh+WAVSGLjibQGUxw@mail.gmail.com>
 <20190814083104.fh7a6t4kosxpzoe3@function>
 <CAOtcWM2n8kMxROwuXrf0YzCf8zsnDSy9VbWRBQJsg3kvyqO4vQ@mail.gmail.com>
 <20190814215134.dl5pywebjghezslx@function>
 <Pine.LNX.4.64.1908141832440.26398@server2.shellworld.net>
 <20190814231603.GA5329@gregn.net>
 <CAOtcWM2K4NFHg0enkzy+EJmzouQXdwPsOZ=38ByJY+8=iRgqmg@mail.gmail.com>
 <CAOtcWM0Vt7-K_a2TF14UzExebgejek-6KY2Tz0jTDrMaugOiKg@mail.gmail.com>
In-Reply-To: <CAOtcWM0Vt7-K_a2TF14UzExebgejek-6KY2Tz0jTDrMaugOiKg@mail.gmail.com>
From: Okash Khawaja <okash.khawaja@gmail.com>
Date: Sat, 14 Sep 2019 22:11:54 +0100
Message-ID: <CAOtcWM1XzfSTzz0xGrqQ21homRFiBQNfDhrqST6h1=xW3dT9Og@mail.gmail.com>
Subject: Re: Linux Open Source Presentation
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>,
 Gregory Nowak <greg@gregn.net>, 
 Samuel Thibault <samuel.thibault@ens-lyon.org>, Kirk Reiser <kirk@reisers.ca>,
 klewellen@shellworld.net
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

Hi,

I haven't yet received a link to the talk's recording. As soon as I
get it, I'll share it here.

Thanks,
Okash

On Thu, Aug 15, 2019 at 3:54 PM Okash Khawaja <okash.khawaja@gmail.com> wrote:
>
> Got the reply. They are recording a subset of talks and our talk is one of those being recorded. This link shows which talks will be recorded: https://ossna19.sched.com/audience/Yes
>
> On Thu, 15 Aug 2019, 09:36 Okash Khawaja, <okash.khawaja@gmail.com> wrote:
>>
>> Yes, I think so too that it will be recorded. I have asked them for confirming.
>>
>> thanks,
>> Okash
>>
>>
>> On Thu, 15 Aug 2019, 00:16 Gregory Nowak, <greg@gregn.net> wrote:
>>>
>>> The web site for the conference seems to state the presentation will
>>> be recorded.
>>>
>>> Greg
>>>
>>>
>>> On Wed, Aug 14, 2019 at 06:33:58PM -0400, Karen Lewellen wrote:
>>> > Will this presentation be recorded or preserved in some way?  Would like to
>>> > share   it with some general Linux users groups.
>>> > Karen
>>>
>>>
>>> --
>>> web site: http://www.gregn.net
>>> gpg public key: http://www.gregn.net/pubkey.asc
>>> skype: gregn1
>>> (authorization required, add me to your contacts list first)
>>> If we haven't been in touch before, e-mail me before adding me to your contacts.
>>>
>>> --
>>> Free domains: http://www.eu.org/ or mail dns-manager@EU.org
>>> _______________________________________________
>>> Speakup mailing list
>>> Speakup@linux-speakup.org
>>> http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
