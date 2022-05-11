Return-Path: <speakup+bounces-416-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 88EB6523469
	for <lists+speakup@lfdr.de>; Wed, 11 May 2022 15:38:14 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=canonical.com header.i=@canonical.com header.a=rsa-sha256 header.s=20210705 header.b=lIia275R;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 0EF33380E02; Wed, 11 May 2022 09:38:14 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id E2CB53808E8
	for <lists+speakup@lfdr.de>; Wed, 11 May 2022 09:38:13 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 457A238099C; Wed, 11 May 2022 09:38:06 -0400 (EDT)
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
	by befuddled.reisers.ca (Postfix) with ESMTPS id E1E7E3808E8
	for <speakup@linux-speakup.org>; Wed, 11 May 2022 09:38:05 -0400 (EDT)
Received: from mail-lf1-f71.google.com (mail-lf1-f71.google.com [209.85.167.71])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 98BE83F1A2
	for <speakup@linux-speakup.org>; Wed, 11 May 2022 13:38:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1652276281;
	bh=xSnma9ByB2NfiZDHIaJ02VoaoKBQWGF9FfGMmVmYn4o=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=lIia275R4tsB9VDcoD54PiSrUOM1fScjMhhDLGa35tacLiohnBIzm8Y1AfJZ1KlQV
	 sSu1bjFR911cH00iXWX0KYmzMk30bzWZ0CF71jDVh0YJLG4a3kqpmvSnUlHbZIau3a
	 R5IVUtDyAAUABRT3mc6m9Bxq+N/ZeDFhv+Fn6G7r3p4ehCmYXAPhTOWLIUfS60kpTa
	 twbVPit5N+IZKN+blqZsFHRMhsyUzH8IIf5Jvfgdtx3sYmD/OzyZw5/MxFOsZsUOSC
	 OIaV2rfY3xvJJ1b1RP/fUOKSCFEh+k5cES6ToyljdT2RJ4JLNWKlr0TWZnwW3GVLpy
	 kUh2rSzLPq5ew==
Received: by mail-lf1-f71.google.com with SMTP id c15-20020a056512238f00b00473a118e7a7so812598lfv.18
        for <speakup@linux-speakup.org>; Wed, 11 May 2022 06:38:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=xSnma9ByB2NfiZDHIaJ02VoaoKBQWGF9FfGMmVmYn4o=;
        b=fCSzCfgmBa2qxWmbrAys2rv/QXECSrEuzc+MAERWDOqlUrxjVXfaCR818Sok4KLyih
         o4TkQKI/r/o42OSR5PYzVAofiGhtRklICNJJ1Vn+R2c7YKmJthVWePtz2XCQU7AHf/j9
         Wt9RHffgVEkbwbh/ZUKqpJIE7XKHpW98LEw40NEpyDvJWkeLJ7UekSi8glYTqZy1agyO
         sa4BEN/tvQ59YLZHhjOGZFxl2lBNniJm26NTVDKI7cwp8Z04Sq1H/cNnljdzf2ktZddg
         xfUdnSoegy+iAsHmRT5UqlIxoVzttrnHFHaXnyxy/E6d9UJs5cwU2b3IYZnnBbx1IrLV
         VX3w==
X-Gm-Message-State: AOAM5331OaiJO5QV3wjcBFm31Jvv59p9qeLcNiAc6guGAVTMkTFFph1M
	f3zfgNwRbciKuRAEaH29Mq5Cqb6VRNU5+ejePEAMDjH9BIIWHQJgCS4QB+XMQarNioSQ1B4/+Rn
	r16nMHHwt0KFfpoE1JiaAaPsY36/zOkrAKTLmU4uXtjEuiLLFYzOQbg==
X-Received: by 2002:a05:6512:1325:b0:474:a2a:4928 with SMTP id x37-20020a056512132500b004740a2a4928mr16448103lfu.34.1652276280878;
        Wed, 11 May 2022 06:38:00 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJy2bb18ALtAE8rDulMn+uNachOh3Tn0L2LCPmo5kuYooGnDMeBGAfL4tPf/XaD/Ew4U0tBDkFuFLf3GG49rsF8=
X-Received: by 2002:a05:6512:1325:b0:474:a2a:4928 with SMTP id
 x37-20020a056512132500b004740a2a4928mr16448082lfu.34.1652276280368; Wed, 11
 May 2022 06:38:00 -0700 (PDT)
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
In-Reply-To: <81afd3ae-b377-800f-dc94-0dfe301011fe@math.wisc.edu>
From: Monica Ayhens-Madon <monica.ayhens.madon@canonical.com>
Date: Wed, 11 May 2022 15:37:49 +0200
Message-ID: <CA+8tiZWEfEd_mFh_Eaj0v52m=VxdE2esLwC9zDzD3aE=DJ-z9Q@mail.gmail.com>
Subject: Re: Speakup Left Out of Ubuntu kernel (again)
To: "John G. Heim" <jheim@math.wisc.edu>
Cc: speakup@linux-speakup.org
Content-Type: multipart/alternative; boundary="000000000000c3361805debc8c2d"
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

--000000000000c3361805debc8c2d
Content-Type: text/plain; charset="UTF-8"

Hello!

I'm Monica Ayhens-Madon from the Community Team at Canonical, and I'm part
of our Accessibility Guild. I've had a chat with people on our kernel team
and there is an existing bug being fixed, and Speakup should be available
in updates soon. Please feel free to reach out to me with any questions or
any other accessibility issues I can raise internally.

Cheers,

Monica

On Tue, May 10, 2022 at 3:19 AM John G. Heim <jheim@math.wisc.edu> wrote:

> Arrgh! Speakup seems not to have been compiled into the Ubuntu
> Jammy/22.04 kernel. Same thing as in 21.04 and 21.10. Man! Well, I guess
> I'll have to file a bug report ... again.
>
> --
> ###
> John G. Heim, 608-263-4189, jheim@math.wisc.edu
>
>

--000000000000c3361805debc8c2d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello!<div><br></div><div>I&#39;m Monica Ayhens-Madon from=
 the Community Team at Canonical, and I&#39;m part of our Accessibility Gui=
ld. I&#39;ve had a chat with people on our kernel team and there is an exis=
ting bug being fixed, and Speakup should be available in updates soon. Plea=
se feel free to reach out to me with any questions or any other accessibili=
ty issues I can raise internally.</div><div><br></div><div>Cheers,</div><di=
v><br></div><div>Monica</div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Tue, May 10, 2022 at 3:19 AM John G. Heim =
&lt;<a href=3D"mailto:jheim@math.wisc.edu">jheim@math.wisc.edu</a>&gt; wrot=
e:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Arrgh! Speaku=
p seems not to have been compiled into the Ubuntu <br>
Jammy/22.04 kernel. Same thing as in 21.04 and 21.10. Man! Well, I guess <b=
r>
I&#39;ll have to file a bug report ... again.<br>
<br>
-- <br>
###<br>
John G. Heim, 608-263-4189, <a href=3D"mailto:jheim@math.wisc.edu" target=
=3D"_blank">jheim@math.wisc.edu</a><br>
<br>
</blockquote></div>

--000000000000c3361805debc8c2d--

