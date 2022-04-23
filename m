Return-Path: <speakup+bounces-402-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 7B27D50CB78
	for <lists+speakup@lfdr.de>; Sat, 23 Apr 2022 16:56:20 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=cQK6V1z/;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 1729E380D2E; Sat, 23 Apr 2022 10:56:20 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 04711380957
	for <lists+speakup@lfdr.de>; Sat, 23 Apr 2022 10:56:20 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 8E13B380B0C; Sat, 23 Apr 2022 10:56:15 -0400 (EDT)
Received: from mail-io1-f48.google.com (mail-io1-f48.google.com [209.85.166.48])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 810873808D3
	for <speakup@linux-speakup.org>; Sat, 23 Apr 2022 10:56:15 -0400 (EDT)
Received: by mail-io1-f48.google.com with SMTP id h83so11423000iof.8
        for <speakup@linux-speakup.org>; Sat, 23 Apr 2022 07:56:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=6Zo71CVtBhyKy/qeez928O4Zj57kOqhKRagsNIKBDGs=;
        b=cQK6V1z/gk9s1+MSZ7NcEEu2A7KgOuw4oHVJ5GTCPwwDNY6n6+v6Uv7QfkraBJhwq5
         KYSOOawy8i785qGgPBnKpikV61+PxW5THSeU26W+lxPTBqU4rO7690cyyY8O4vN/h0sj
         IMYQ3ZEuqkKzBEVevMZ5NI8LagFX5GHwwUGgcB4fOFSRV5F8ZuwZBm+BTnypPxXluRwa
         VNlFfCLkE2LrmZV72n/oWRsNxmzOOLIDGVTwUhn5CeBeAVs88DRKZw8CptIK6bnE0Xt/
         Bx4qSAC1++H8+v75ekNwWRntDZ4ZthvpJ364QA5ngp5LwAXoC/QtmX7Mbitf3//CyQcA
         gmPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=6Zo71CVtBhyKy/qeez928O4Zj57kOqhKRagsNIKBDGs=;
        b=Vf61pVQmTxavWuxlWPq5UGqKlXBBPRo1Tk/XtiFvIS47NV5koxojTG458kUVt6rFfh
         sAANLN/t3Va7cmfOUBYRmDvuNOHqb/aQ8+szfsVyB10pVup1knXJ7RZYmlR6sdwfPfF8
         +GfSWXXXJueiFpCabMVWOSitaogAo/IvMLLHHNE5t33z5+1+MG06DIaP/Y1ELrZXAKy0
         bocwetm0PC6BoU5EwkzwdfOmkFzHc6IL0hSCIgY+Ys10XvAAuyW1vjHz9VYC8d0rR12d
         3lxM+u642R8R0BIfL5eHLo2SUUk3cgW55x9R3kJ032DPybX8ESXtCZESi0lDpZVszFP3
         5wlg==
X-Gm-Message-State: AOAM530VaUbNu0AYPKNhRUURz+BJrINSRUJTdRzNQG4DqCEqI/+d2M95
	x7UCvm3MT6Rbf5UKQdMecIz56YNpawAjWJRUdd45weFmdWg=
X-Google-Smtp-Source: ABdhPJybXaGa8ouykMhMqb2lCbOWchJicL2zi+ZKg/Mn0ZujbNrOc4URa5/z/gP6y565qCIhpPW7bUEXV5CzWHNu9NY=
X-Received: by 2002:a02:cf15:0:b0:328:615c:303d with SMTP id
 q21-20020a02cf15000000b00328615c303dmr4291924jar.313.1650725715044; Sat, 23
 Apr 2022 07:55:15 -0700 (PDT)
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
References: <CAE600ubv2JZJM477hCMutMX=J4tGUzJfFg5Ata2ymQQiqN=ueQ@mail.gmail.com>
 <20220423143610.qusgycnzz6kmwkg3@alex-pc>
In-Reply-To: <20220423143610.qusgycnzz6kmwkg3@alex-pc>
From: Adrian Orjales <adriorjalesvidal31@gmail.com>
Date: Sat, 23 Apr 2022 16:55:03 +0200
Message-ID: <CAE600ubaA7q99ajYsZO+1JR9TMERSo+kmtp8U6Eg=g_at-Th4g@mail.gmail.com>
Subject: Re: Espeakup, arch and systemd
To: Alexander Epaneshnikov <aarnaarn2@gmail.com>
Cc: speakup@linux-speakup.org
Content-Type: multipart/alternative; boundary="000000000000ddee5105dd538788"
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

--000000000000ddee5105dd538788
Content-Type: text/plain; charset="UTF-8"

Thanks for your reply, Alexander



> >to be honest, I'm not sure that the slowdown in booting is due to this.
>
After I've removed the systemd-udev-settle.service mentions on the
espeakup.service file, the slowdown was removed, I don't know why.


> > did you set the default sound card?
>
I have no idea about alsa settings, but if I run aplay -L, it shows that
the intel card is set as default. If it was not running with this card,
when I run systemctl reloadand start, espeakup must not talk, but it does.

Thanks again.
>

--000000000000ddee5105dd538788
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Thanks for your reply, Alexander<br></div><br><div cl=
ass=3D"gmail_quote"><br><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
<br>&gt;to be honest, I&#39;m not sure that the slowdown in booting is due =
to this.<br></blockquote><div>After I&#39;ve removed the systemd-udev-settl=
e.service mentions on the espeakup.service file, the slowdown was removed, =
I don&#39;t know why.<br></div><div><br></div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,20=
4);padding-left:1ex">
<br>&gt; did you set the default sound card?<br></blockquote><div>I have no=
 idea about alsa settings, but if I run aplay -L, it shows that the intel c=
ard is set as default. If it was not running with this card, when I run sys=
temctl reloadand start, espeakup must not talk, but it does.<br></div><br><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex">
Thanks again. <br>
</blockquote></div></div>

--000000000000ddee5105dd538788--

