Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id ADD058EEBE
	for <lists+speakup@lfdr.de>; Thu, 15 Aug 2019 16:56:42 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 978DE1C43D4; Thu, 15 Aug 2019 10:56:41 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="gWba9doy";
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 72E2F1C4425;
	Thu, 15 Aug 2019 10:55:51 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 0E3B51C43D4; Thu, 15 Aug 2019 10:55:49 -0400 (EDT)
Received: from mail-oi1-f176.google.com (mail-oi1-f176.google.com
 [209.85.167.176])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 14A031C363C
 for <speakup@linux-speakup.org>; Thu, 15 Aug 2019 10:55:48 -0400 (EDT)
Received: by mail-oi1-f176.google.com with SMTP id y8so2295766oih.10
 for <speakup@linux-speakup.org>; Thu, 15 Aug 2019 07:55:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=NhWPcks9WMxkWGxMKaMmuyYVPTgCg2cSEkbpJ9dWSXA=;
 b=gWba9doycJ56mtmoI/PODb/wzmU2A3HtPHdpIm+9Hk4i9soCTRbzxpPJwAtKRR5KbH
 1SY6AmcPshEof8NcXEg51a71S948tUeel9D539DMCo3aQpEoYQCM+RbRka/Y3tscIL6k
 5j5o8xp5B/bCWLb/j9XExfTN3FPkn1lcnCwcwFChWLXS5Tqn39YIMVlOyqXme0hESaVH
 P0eSBU7ZdLAlDj3LcfFrM1HvcHapVKWe7ih/9N86mUXjaiUMPxL+LHbHnpLN5KRljiRw
 8OiN7ZqwqIQMlHlyPyJUelFHF0G5XD6OQYYQo1VFcM3Ct/3ZeYLuQjRmKApjVjDPUEuj
 8xSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=NhWPcks9WMxkWGxMKaMmuyYVPTgCg2cSEkbpJ9dWSXA=;
 b=P9jJ2lDWL0DKhdNxWY01YofAOmLuAXwHZawmp83JYdM0NSq4lEcTVelf5MylNHzKEZ
 0g/SgNKQ6ZIjC8RjH8dpxjbT27ZhT2HjHfduowpFhuaj30iuJf8orwiA6MFs8Q0CMXxV
 hA1s3e7Pz/TPReSUeBD09+Zc8+6LvJ8jj6+DxFmfVjiXMnKmHBfrcIGJFpFZ1a7HXBwW
 b6FsCHc6hEl/XtOnm5t2GiJNLQktmgpRaebl63fWwnCAy180YtkGY7y6eskOPRsLlGS5
 05ZfxSA2utdp4aix1ZcBCV50U2VJtX7Qp5P3bxR8JpolREp0DtoillAiefxy54Hx3X5n
 H8sw==
X-Gm-Message-State: APjAAAXMMeT5+ILFTVHawGH6SLm7KV5Wpz932EairpnNQSl9/H73+2w0
 VTVinU+GSkVmsmU1H7Qhp2bkjakcCGzRuCVEOM0wimcG
X-Google-Smtp-Source: APXvYqwRVMSPDxn8FVatx1dQtO4m7UFc9SrGP4P/9m1Io50pDZ+YI3hK9HlGdXwcwdNvTGGeepQGK/AyXpyJoJY9GUU=
X-Received: by 2002:aca:e10a:: with SMTP id y10mr1627873oig.111.1565880885738; 
 Thu, 15 Aug 2019 07:54:45 -0700 (PDT)
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
In-Reply-To: <CAOtcWM2K4NFHg0enkzy+EJmzouQXdwPsOZ=38ByJY+8=iRgqmg@mail.gmail.com>
From: Okash Khawaja <okash.khawaja@gmail.com>
Date: Thu, 15 Aug 2019 15:54:33 +0100
Message-ID: <CAOtcWM0Vt7-K_a2TF14UzExebgejek-6KY2Tz0jTDrMaugOiKg@mail.gmail.com>
Subject: Re: Linux Open Source Presentation
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>,
 Gregory Nowak <greg@gregn.net>, 
 Samuel Thibault <samuel.thibault@ens-lyon.org>, Kirk Reiser <kirk@reisers.ca>,
 klewellen@shellworld.net
X-Content-Filtered-By: Mailman/MimeDel 2.1.29
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

Got the reply. They are recording a subset of talks and our talk is one of
those being recorded. This link shows which talks will be recorded:
https://ossna19.sched.com/audience/Yes

On Thu, 15 Aug 2019, 09:36 Okash Khawaja, <okash.khawaja@gmail.com> wrote:

> Yes, I think so too that it will be recorded. I have asked them for
> confirming.
>
> thanks,
> Okash
>
>
> On Thu, 15 Aug 2019, 00:16 Gregory Nowak, <greg@gregn.net> wrote:
>
>> The web site for the conference seems to state the presentation will
>> be recorded.
>>
>> Greg
>>
>>
>> On Wed, Aug 14, 2019 at 06:33:58PM -0400, Karen Lewellen wrote:
>> > Will this presentation be recorded or preserved in some way?  Would
>> like to
>> > share   it with some general Linux users groups.
>> > Karen
>>
>>
>> --
>> web site: http://www.gregn.net
>> gpg public key: http://www.gregn.net/pubkey.asc
>> skype: gregn1
>> (authorization required, add me to your contacts list first)
>> If we haven't been in touch before, e-mail me before adding me to your
>> contacts.
>>
>> --
>> Free domains: http://www.eu.org/ or mail dns-manager@EU.org
>> _______________________________________________
>> Speakup mailing list
>> Speakup@linux-speakup.org
>> http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
>>
>
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
