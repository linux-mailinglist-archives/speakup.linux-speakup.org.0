Return-Path: <speakup+bounces-421-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 0A0CE523BEB
	for <lists+speakup@lfdr.de>; Wed, 11 May 2022 19:53:06 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=canonical.com header.i=@canonical.com header.a=rsa-sha256 header.s=20210705 header.b=T3yzXtWx;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 86281380DF7; Wed, 11 May 2022 13:53:05 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 6643C380DD8
	for <lists+speakup@lfdr.de>; Wed, 11 May 2022 13:53:05 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id C2A45380DD8; Wed, 11 May 2022 13:52:57 -0400 (EDT)
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 60C79380B68
	for <speakup@linux-speakup.org>; Wed, 11 May 2022 13:52:57 -0400 (EDT)
Received: from mail-lf1-f71.google.com (mail-lf1-f71.google.com [209.85.167.71])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id C01EC3F1A2
	for <speakup@linux-speakup.org>; Wed, 11 May 2022 17:52:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1652291575;
	bh=4qxLxwK1JQyJc+05N4GfNywWdB8U3j6XvFHvLEh4/dc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=T3yzXtWxwD0/X5Nnzm5jV/yGfp9hybmndXX632J63t9fyJhIFUl2HkMitVzUE/Sde
	 Y93ZqQ0S3Jv37bqgpGzbzubSrkvIv1JTn1io5DkxL/cPFAHSNq5YS2fEXCtBm1kLZA
	 cH8+7D/5QH749jiLZuSLFApMNWEiOw1TsRTT8ZctiO1LXmmS0G/dQuuAnWOJ2YoJB1
	 DMIiEWnfGycrjAogwiphtP9PM2VBb8oYaIxlhWSCkDLwXs3akXg9DgfQNMKbq5KfKF
	 aS894QA+Jm/VhnquvjZe2gTDspS2N0fxajHGI106mMF64bhARbsoyXcw49wpOlM5qx
	 3Au3Kjb0H5QPQ==
Received: by mail-lf1-f71.google.com with SMTP id w34-20020a0565120b2200b0044adfdd1570so1056345lfu.23
        for <speakup@linux-speakup.org>; Wed, 11 May 2022 10:52:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=4qxLxwK1JQyJc+05N4GfNywWdB8U3j6XvFHvLEh4/dc=;
        b=1HUxQslah/pl19HfShPdQjGyEH7LNT96V99eeDY74QL6opKa769FKsSV2ikXdGJ4Mb
         7LGSAS2o+2+FQQHJ+UXNodAX/q1VSElM0h3SCC5kMNhLouP+Eb3YoLtA5qv2oPIglgnO
         K/wkNDFuh72VSflWCkwdc6xPWBRj7FghCANvBxEtRt77SD+WkFx6F4Uhujju7+T8V1Nr
         M47553TdkfhMh8kn44Yrykv1hX+WAdkTMw/ewqs+N0H/oGn38AtZTWz+5WBe4h8pz3fc
         kadm+6N/a0oGjZiM+cpaE61XegYZkOA+MVRqHb/YMpPW8b6j5/ck8sxnSP0gEsUhPkSE
         y1aQ==
X-Gm-Message-State: AOAM530PZtvwT/Vd3n8bHkAtiWULBjdCtJ6pJvq7hr8owHJZWhemo9Pa
	834f3W1QULJxPfHIrjMM/lDTgF6q8FK4QXYa6PCRbfEaGC8JF7VIoqpY6aovGkjb4bWBZthlr9V
	3Aizf8TQb4T+XSvieOBV25p9pVPTCcp6gSpfZ5U/Z8afFuGGpebChRg==
X-Received: by 2002:a05:651c:1506:b0:250:6459:d6d4 with SMTP id e6-20020a05651c150600b002506459d6d4mr18398663ljf.271.1652291574693;
        Wed, 11 May 2022 10:52:54 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxR2zcxg45fRI3XFRytcgQZ4kCiJwuxH69wFsslR9VbMzzQ4+2ScfEmdr19AUEAC/ZLW1bUOt1AGc+jqtsSdTM=
X-Received: by 2002:a05:651c:1506:b0:250:6459:d6d4 with SMTP id
 e6-20020a05651c150600b002506459d6d4mr18398647ljf.271.1652291574433; Wed, 11
 May 2022 10:52:54 -0700 (PDT)
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
References: <81afd3ae-b377-800f-dc94-0dfe301011fe@math.wisc.edu>
 <CA+8tiZWEfEd_mFh_Eaj0v52m=VxdE2esLwC9zDzD3aE=DJ-z9Q@mail.gmail.com>
 <CAE600uaFd06wnf8EGwBbhBg+y_-dEtKV9SqyvOx1GzRq0T97xw@mail.gmail.com>
 <CA+8tiZWWScjAXUZSdYRzTO5bRoxrZNXHAvZ5ovE1nW5EkqKTnA@mail.gmail.com> <20220511165940.wnuzgcsvjcksdpl2@begin>
In-Reply-To: <20220511165940.wnuzgcsvjcksdpl2@begin>
From: Monica Ayhens-Madon <monica.ayhens.madon@canonical.com>
Date: Wed, 11 May 2022 19:52:43 +0200
Message-ID: <CA+8tiZUH5x4QbYmPSTE7ys3Wmx-25WTsEVO=428=Yo+=XPs5Dw@mail.gmail.com>
Subject: Re: Speakup Left Out of Ubuntu kernel (again)
To: Samuel Thibault <samuel.thibault@aquilenet.fr>
Cc: Adrian Orjales <adriorjalesvidal31@gmail.com>, "John G. Heim" <jheim@math.wisc.edu>, 
	speakup@linux-speakup.org
Content-Type: multipart/alternative; boundary="0000000000005c22f105dec01c14"
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

--0000000000005c22f105dec01c14
Content-Type: text/plain; charset="UTF-8"

Let me find out about that tomorrow morning! I know one person had
subscribed, or at least checked in on the archives, but it may have been
during a lull. I know our engagement on the list has been missing, so I can
bring re-engaging with it (especially on these two issues) up to the Guild.

On Wed, May 11, 2022 at 6:59 PM Samuel Thibault <
samuel.thibault@aquilenet.fr> wrote:

> Hello,
>
> Monica Ayhens-Madon, le mer. 11 mai 2022 17:14:33 +0200, a ecrit:
> > And I'm only one of a group of people at Canonical working on
> accessibility. My
> > main job is to be a bridge between them and the community. Can I give the
> > Accessibility Guild your address (and anyone else's e-mail address, if
> you'd
> > like to talk to us about how we can improve accessibility), we would
> like to
> > know your feedback and suggestions!
>
> Are they subscribed to the
> ubuntu-accessibility@lists.ubuntu.com
> mailing list? Now and then there are requests there which don't seem to
> be getting answered. For instance
>
> https://lists.ubuntu.com/archives/ubuntu-accessibility/2022-May/007752.html
>
> https://lists.ubuntu.com/archives/ubuntu-accessibility/2021-October/007738.html
>
> Samuel
>

--0000000000005c22f105dec01c14
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Let me find out about that tomorrow morning! I know one pe=
rson had subscribed, or at least checked in on the archives, but it may hav=
e been during a lull. I know our engagement on the list has been missing, s=
o I can bring re-engaging with it (especially on these two issues) up to th=
e Guild.</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmai=
l_attr">On Wed, May 11, 2022 at 6:59 PM Samuel Thibault &lt;<a href=3D"mail=
to:samuel.thibault@aquilenet.fr">samuel.thibault@aquilenet.fr</a>&gt; wrote=
:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.=
8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hello,<br>
<br>
Monica Ayhens-Madon, le mer. 11 mai 2022 17:14:33 +0200, a ecrit:<br>
&gt; And I&#39;m only one of a group of people at Canonical working on acce=
ssibility. My<br>
&gt; main job is to be a bridge between them and the community. Can I give =
the<br>
&gt; Accessibility Guild your address (and anyone else&#39;s e-mail address=
, if you&#39;d<br>
&gt; like to talk to us about how we can improve accessibility), we would l=
ike to<br>
&gt; know your feedback and suggestions!<br>
<br>
Are they subscribed to the<br>
<a href=3D"mailto:ubuntu-accessibility@lists.ubuntu.com" target=3D"_blank">=
ubuntu-accessibility@lists.ubuntu.com</a><br>
mailing list? Now and then there are requests there which don&#39;t seem to=
<br>
be getting answered. For instance<br>
<br>
<a href=3D"https://lists.ubuntu.com/archives/ubuntu-accessibility/2022-May/=
007752.html" rel=3D"noreferrer" target=3D"_blank">https://lists.ubuntu.com/=
archives/ubuntu-accessibility/2022-May/007752.html</a><br>
<a href=3D"https://lists.ubuntu.com/archives/ubuntu-accessibility/2021-Octo=
ber/007738.html" rel=3D"noreferrer" target=3D"_blank">https://lists.ubuntu.=
com/archives/ubuntu-accessibility/2021-October/007738.html</a><br>
<br>
Samuel<br>
</blockquote></div>

--0000000000005c22f105dec01c14--

