Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (tunnel25281-pt.tunnel.tserv21.tor1.ipv6.he.net [IPv6:2001:470:1c:288::2])
	by mail.lfdr.de (Postfix) with ESMTP id 0B444D19CE
	for <lists+speakup@lfdr.de>; Wed,  9 Oct 2019 22:42:23 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 9CEC71C4491; Wed,  9 Oct 2019 16:42:21 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="jvvRBbRc";
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 03D301C466D;
	Wed,  9 Oct 2019 16:40:54 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 3C7561C32FA; Sun,  6 Oct 2019 09:48:31 -0400 (EDT)
Received: from mail-oi1-f175.google.com (mail-oi1-f175.google.com
 [209.85.167.175])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 4869A1C3292
 for <speakup@linux-speakup.org>; Sun,  6 Oct 2019 09:48:30 -0400 (EDT)
Received: by mail-oi1-f175.google.com with SMTP id w6so9481259oie.11
 for <speakup@linux-speakup.org>; Sun, 06 Oct 2019 06:48:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=/E23cEELqIbUcdA0G8jZSodITSqwBlE1sr1xNOyUTbM=;
 b=jvvRBbRcBCSLeSMrJddFXEA1Zqt++2BAe7pxXVyLi0DnYGV87Od42AGYTFbDStXpYF
 MjexsNXeUD48JJHVwy2qXsSHSNz/DikZnGp2yYyPk4nyW4c2hCakbJifVyRjbPBZOMsI
 Q9nvT8KgbFYQYS/dTdKsCINPhJFRF/yVqpkpOjA0vadFZGsxqpnwm4Y6GISP6YR6w5Hj
 4OiqGacbJp6nvKMrt48ylT6wMa4nfglplSnU4Q1BjJ80xkamueDxnUwvzNHgb00nU1K3
 P78tKI3f/F9moTtGTgcKBWJiqoLAX3t2j4BLbHPJuXooGYMm8LdMclX/dJG0igpOKyRL
 tXdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=/E23cEELqIbUcdA0G8jZSodITSqwBlE1sr1xNOyUTbM=;
 b=ReeMsgqBNkLTaD0s73gxdKjgWBWNbRTP9skhUOWr2+9cSiT3OykAFSROcMK1vJ7Hc2
 weZxBnBnG6XRwXgKn0guVwUfa63V+u6z3Zr8FiiIxzMmntbH/OZBtiWC9MG2cs0REcLa
 DoTCfU2IzHFJ0sdvtug+bliGjYQUka/c6tT7PHzxW3qeGUuGYj1ijxHg0YsozkkSMRc4
 rL0Ln14M+WrKjOoafhHnqWINWMKC12TDFYhP6zpwB2nli+AF3JjBz9hBChePy7IYIiCK
 lEoEvTbKisNuJmq7oE8IVb66OR8t9rulAaA9c0ncZ3fKz/8vp3Q67d+YIEnw/I8d4ITC
 +7BQ==
X-Gm-Message-State: APjAAAWhQNN7h/Esb9lPyZc5TK51WUwnNuR9deIGsOcVtdIxzfIaadGO
 RpPb3S08wuPt/hzugqhBlMJHeam0Wia30/9BajpwoA==
X-Google-Smtp-Source: APXvYqwssELHsrIi/aqYr/MxsBN2V3/T3UgiU++auEo/xFlz15deUVPsZhWIDNlTlU/JcCvYFAqT5DPN+Y7zUM5q26k=
X-Received: by 2002:aca:7509:: with SMTP id q9mr13646874oic.111.1570369646218; 
 Sun, 06 Oct 2019 06:47:26 -0700 (PDT)
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
 <CAOtcWM1XzfSTzz0xGrqQ21homRFiBQNfDhrqST6h1=xW3dT9Og@mail.gmail.com>
In-Reply-To: <CAOtcWM1XzfSTzz0xGrqQ21homRFiBQNfDhrqST6h1=xW3dT9Og@mail.gmail.com>
From: Okash Khawaja <okash.khawaja@gmail.com>
Date: Sun, 6 Oct 2019 14:47:14 +0100
Message-ID: <CAOtcWM0Tu2CL-7stgKNowaWa1nBs_bn_XwhahJxtoLuUOAeUEw@mail.gmail.com>
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

Here's link to the talk: https://youtu.be/FrM-JEI8OIs

Once again, thanks everyone for the help and guidance.

On Sat, 14 Sep 2019, 22:11 Okash Khawaja, <okash.khawaja@gmail.com> wrote:

> Hi,
>
> I haven't yet received a link to the talk's recording. As soon as I
> get it, I'll share it here.
>
> Thanks,
> Okash
>
> On Thu, Aug 15, 2019 at 3:54 PM Okash Khawaja <okash.khawaja@gmail.com>
> wrote:
> >
> > Got the reply. They are recording a subset of talks and our talk is one
> of those being recorded. This link shows which talks will be recorded:
> https://ossna19.sched.com/audience/Yes
> >
> > On Thu, 15 Aug 2019, 09:36 Okash Khawaja, <okash.khawaja@gmail.com>
> wrote:
> >>
> >> Yes, I think so too that it will be recorded. I have asked them for
> confirming.
> >>
> >> thanks,
> >> Okash
> >>
> >>
> >> On Thu, 15 Aug 2019, 00:16 Gregory Nowak, <greg@gregn.net> wrote:
> >>>
> >>> The web site for the conference seems to state the presentation will
> >>> be recorded.
> >>>
> >>> Greg
> >>>
> >>>
> >>> On Wed, Aug 14, 2019 at 06:33:58PM -0400, Karen Lewellen wrote:
> >>> > Will this presentation be recorded or preserved in some way?  Would
> like to
> >>> > share   it with some general Linux users groups.
> >>> > Karen
> >>>
> >>>
> >>> --
> >>> web site: http://www.gregn.net
> >>> gpg public key: http://www.gregn.net/pubkey.asc
> >>> skype: gregn1
> >>> (authorization required, add me to your contacts list first)
> >>> If we haven't been in touch before, e-mail me before adding me to your
> contacts.
> >>>
> >>> --
> >>> Free domains: http://www.eu.org/ or mail dns-manager@EU.org
> >>> _______________________________________________
> >>> Speakup mailing list
> >>> Speakup@linux-speakup.org
> >>> http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
>
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
