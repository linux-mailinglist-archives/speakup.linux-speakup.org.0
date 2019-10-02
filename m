Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id F07EDC498B
	for <lists+speakup@lfdr.de>; Wed,  2 Oct 2019 10:33:40 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 1DD7C1C46A6; Wed,  2 Oct 2019 04:33:39 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="S4ThSjS/";
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id D3FEB1C46B7;
	Wed,  2 Oct 2019 04:32:53 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 95D251C4692; Wed,  2 Oct 2019 04:32:47 -0400 (EDT)
Received: from mail-ot1-f41.google.com (mail-ot1-f41.google.com
 [209.85.210.41])
 by befuddled.reisers.ca (Postfix) with ESMTPS id B96FC1C4684
 for <speakup@linux-speakup.org>; Wed,  2 Oct 2019 04:32:45 -0400 (EDT)
Received: by mail-ot1-f41.google.com with SMTP id z6so14016757otb.2
 for <speakup@linux-speakup.org>; Wed, 02 Oct 2019 01:32:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=MSqIprpYZ3n8mkimPJZxUom7bgwAnOR5Grn50jhQqlY=;
 b=S4ThSjS/iZbs939e/aZwGY/75N8LVhqpFGDRwyENxI2SZCfXN7I4ZejG+fy1v9a+IZ
 d3hFY7LsigkEUCsgmTkRKLuP6Q5Jevt4I79CiJ4r3wGZYHasCxN590i2mmg+wrh5LOqW
 57qnfRPOUqNCfZdUo/5R7AZa25c/w5dWwRCqVTBxJck9odYn+VjeUCavRyF38g/eAm+F
 KWYPvSKnEzi6CDPpM0HDrpGC5PYmwcr13L1RhDjdOPsWyA0j7j7pQWSJnhECo8Wf8UtO
 VuQ2p3u1CNbYJaVThCwfPgdcxP9oU2f+TaM46qQYjMqhMVsRGPEqEdLpvePC7xm8M2Yf
 rnng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=MSqIprpYZ3n8mkimPJZxUom7bgwAnOR5Grn50jhQqlY=;
 b=WM49zMJK6BG1+8Zv738p838y4zoYdm8jnXBstIYGoqTAXf0j7ACgN7xTJ6Ub+BOrRU
 hAqi5SMMIfUdzLd5G/WnJ/RyWT+AZbO6iaZjuAqc4CJY48TLNd3N9N9LwhCkgEsDREtl
 6Qzrd7ROGcDelWiuFY/+TL6T9z7M/xeSfznhKtfxkjlP/crx19dXRN6JB0MZO8uYBTZV
 jndCttymxHHtSQHUFNh+OzSkWUvcztGoUNxE8nnArYYAwJBChzWnMA/jv0BeUo7FPGEm
 Dgar5wULR/F1/S1DM11UNsAs0uBP37wAm4UvnayIWCqtOIG8az3V0QrtYqASCSwY4PdL
 7nxw==
X-Gm-Message-State: APjAAAXYXgJ+gYzh9KU9MV4PkJWsDNttES8aOKtjyafhAXLgaZ3WciPo
 9uV3G+pTcqHintdy6Q/yh+UzCaG/aIYMJZ6LxjY3gg==
X-Google-Smtp-Source: APXvYqwqF9bsoouce4KTqFte6iBa6gi6XQJh78+atpWJQnS+IYHhDub5PxBrF7RAHMy+375rwzb+TwNoNLlo2eWq0VY=
X-Received: by 2002:a9d:7a98:: with SMTP id l24mr1769732otn.311.1570005102414; 
 Wed, 02 Oct 2019 01:31:42 -0700 (PDT)
MIME-Version: 1.0
References: <alpine.LNX.2.21.9999.1909081006120.8372@io.coolip.net>
 <CAOtcWM23S7PhQzyQ+Cdpbd8gTAiKCuc6DdSrrMZx+0=WASBUXQ@mail.gmail.com>
 <87impqh7tt.fsf@cmbmachine.messageid.invalid>
In-Reply-To: <87impqh7tt.fsf@cmbmachine.messageid.invalid>
From: Okash Khawaja <okash.khawaja@gmail.com>
Date: Wed, 2 Oct 2019 09:31:29 +0100
Message-ID: <CAOtcWM1_234zvRCwFeG3p6=t751y-sBa3whiz4P-i-oADXneOw@mail.gmail.com>
Subject: Re: help fixing speakup hang problem w smp kernels
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
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

On Tue, 17 Sep 2019, 23:33 Chris Brannon, <chris@the-brannons.com> wrote:

> Okash Khawaja <okash.khawaja@gmail.com> writes:
>
> > Hi Kelly,
> >
> > Thanks very much for pointing this out :) If you could capture kernel
> > dump of this hang that will be a great starting point of the
> > investigation.
>
> Quite plausibly the hangs reported by Kelly are the same as those
> experienced by the person who reported in on IRC.  Deedra posted a link
> to the dump from one of those yesterday.  Others in the Arch community
> are noticing the same issue.  As far as I know, everyone who has
> reported about recent hangs is using a 5.2 kernel.
>
> For those on Arch, switching to the linux-lts package (4.19 kernel) will
> fix it for now.
>

Hi,

I haven't yet got round to looking at it. But I've created this bug which
collects relevant info in one place:
https://github.com/bytefire/speakup/issues/10

Thanks,
Okash

>
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
