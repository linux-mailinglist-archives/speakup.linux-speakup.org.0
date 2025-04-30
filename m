Return-Path: <speakup+bounces-1260-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 99A1EAA4139
	for <lists+speakup@lfdr.de>; Wed, 30 Apr 2025 05:04:23 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=rustytelephone-net.20230601.gappssmtp.com header.i=@rustytelephone-net.20230601.gappssmtp.com header.a=rsa-sha256 header.s=20230601 header.b=dhleIQTg;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id DA5FF38298E; Tue, 29 Apr 2025 22:56:15 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id BBEBB38194D
	for <lists+speakup@lfdr.de>; Tue, 29 Apr 2025 22:56:15 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id B33C938195E; Tue, 29 Apr 2025 22:56:08 -0400 (EDT)
Received: from mail-pg1-f177.google.com (mail-pg1-f177.google.com [209.85.215.177])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 9FCB73807C4
	for <speakup@linux-speakup.org>; Tue, 29 Apr 2025 22:56:07 -0400 (EDT)
Received: by mail-pg1-f177.google.com with SMTP id 41be03b00d2f7-b170c99aa49so4057090a12.1
        for <speakup@linux-speakup.org>; Tue, 29 Apr 2025 19:56:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rustytelephone-net.20230601.gappssmtp.com; s=20230601; t=1745981705; x=1746586505; darn=linux-speakup.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=O74yVwOEl/aZj33Ahe1jEtUaPvDk05jbyM2r5LmwBzw=;
        b=dhleIQTgSektFN2ARdXjrzset5EfZiaKhVgqPKQBEroW9l0qr3m6SLasxsK8GgMFvX
         WKSOzsPA2MUuKyGfGjfHEzEmwQI4l+Zt4P6GedcoY9ws0aAjwQVCA5HJlvuMhr+HQDKN
         s4eBOF5wdznWdXVf0WdeyUzwoRnKkARSyU+zx698j5KPmrttfIo0FEX0CCwIkHCtW2+N
         E+ZUtQ62yLYKuMH2kKlPFzxcUqguGKPvXzmmBqFeEEmNdd1VzHyfFcsykUfhL6k0YLJk
         7gklSk3hPAj8jMnk4PU8TLK1hwyb0OIPdCYaahsygkPykNszq4jsnSBgPv4zbC+xwe5Y
         TOSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745981705; x=1746586505;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=O74yVwOEl/aZj33Ahe1jEtUaPvDk05jbyM2r5LmwBzw=;
        b=pCQr3SJAqAChTUPecIAc2pOu9Tz73pKmA6vPUFpN1CybofBQJV1F8m+GuOPedrtXgF
         T6tz/Xd6bXpOTvIQwf4sMzbEFqxFIHFW51P12TON3u2cowB9pwN/LVMWbFc7N+7Zo9+e
         jLD+38xpTcIvXw39iB9/iD41l3gRoKFkloZ/v1hkY+RwPb8tpZpsPrlWC1ioNSzRyQBD
         5qSkHLcQi64yIM0Iw/hsuHFZpTz72gfddjs6RoQsW3ITkpfvTilIq8s9QQz6C8ObeB9d
         hf1s9MgDMt6v6+ru0hLbrl4u7RUPIz4yDyncLy4YbLfAuZ/sk9/rgEb8I+T1BL1LZqL2
         kMfg==
X-Forwarded-Encrypted: i=1; AJvYcCVXylo+C3tYDcldQUmDNDdBo/0BCpUk8P8taTulQJ7le45hB3tgfA6jBjTRaiLTwjYvKx/d8IXz@linux-speakup.org
X-Gm-Message-State: AOJu0YwbPqGUOwQR7Fyenoltvf0JVktTf5xaqNb3gMDlQKgRQazoPLv6
	swm+bN4YTTKZpSg39peuw9fpLmnn3Gb8/5yax/3l5XOEq+JXV+eT31lHda7/sXCi6X3vC8ZuK/L
	jSYELPcS+WTeNB1IS2DDzuS5zdRii1020NTdMIw==
X-Gm-Gg: ASbGnctvfFAaunEYSNDEkGpi7DmjbeGPwHBE+TgXW/BrIY+qBx2zgXFO+iaJrCoLGFu
	6NrHTQ3SHv+P3StHiQCfA029HS8kf5xwzhSFyMPW8mQTevEod/6xMEwFCT8nK14n8j2FeYy88b2
	qboHzxTBl4z+DSC5glCnNX
X-Google-Smtp-Source: AGHT+IEfGQQzJ4Y4GFrYvRMBzFx7NBIGryHq5M3kAV97Qu/WuBI3sXw4Tuh7WA26R860yDpr0bpW19P8i0O4Msj+wuQ=
X-Received: by 2002:a17:90b:5487:b0:2f9:bcd8:da33 with SMTP id
 98e67ed59e1d1-30a33320545mr1995531a91.21.1745981702914; Tue, 29 Apr 2025
 19:55:02 -0700 (PDT)
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
References: <aA1-fneTSXgUZa5y@gregn.net> <af828d8a-1e48-40ca-bb3c-94417281967d@gmail.com>
 <aBAx86aYIEKxCw5F@gregn.net> <e76a9638-ea16-4491-932b-fff148f8ec0d@gmail.com> <aBFx0HYXoycQmM-9@gregn.net>
In-Reply-To: <aBFx0HYXoycQmM-9@gregn.net>
From: David Sexton <david@rustytelephone.net>
Date: Tue, 29 Apr 2025 19:54:51 -0700
X-Gm-Features: ATxdqUEIeAytU3e9uhFqrlkbSfz8lm5J_2J6WjTWEFVC9Y8z8JVP5udMVyzneNE
Message-ID: <CALsOB_CYcjQ4Bjy655CPy9GnLDDNvWqTtgtVZW2s2f5F6n5r3w@mail.gmail.com>
Subject: Re: announcing experimental Devuan Daedalus mate desktop iso
To: Gregory Nowak <greg@gregn.net>
Cc: fsmithred <fsmithred@gmail.com>, speakup@linux-speakup.org
Content-Type: multipart/alternative; boundary="0000000000002fd7d30633f60b8c"
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

--0000000000002fd7d30633f60b8c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Also brltty comes up a lot when people talk about trying to connect Arduino
to Linux: https://github.com/arduino/help-center-content/issues/155

On Tue, Apr 29, 2025 at 5:42=E2=80=AFPM Gregory Nowak <greg@gregn.net> wrot=
e:

> On Tue, Apr 29, 2025 at 08:31:17AM -0400, fsmithred wrote:
> > On 4/28/25 21:57, Gregory Nowak wrote:
> > > Some sighted users seem to report that brltty hangs the x server. We
> > > had someone claiming that last week on the dng list. There were way
> > > more complaints about it when console-productivity was installed by
> > > default with I think Ascii.
> > >
> >
> > What about installing brltty but turning it off? Then you won't need to
> > install it if you want it; you would just need to start the service.
>
> I think that would be a good solution.
>
> Greg
>
>
> >
> > fsmithred
> >
>
> --
> web site: http://www.gregn.net
> gpg public key: http://www.gregn.net/pubkey.asc
>
> --
> Free domains: http://www.eu.org/ or mail dns-manager@EU.org
>
>

--0000000000002fd7d30633f60b8c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Also brltty comes up a lot when people talk about trying t=
o connect Arduino to Linux:=C2=A0<a href=3D"https://github.com/arduino/help=
-center-content/issues/155">https://github.com/arduino/help-center-content/=
issues/155</a></div><br><div class=3D"gmail_quote gmail_quote_container"><d=
iv dir=3D"ltr" class=3D"gmail_attr">On Tue, Apr 29, 2025 at 5:42=E2=80=AFPM=
 Gregory Nowak &lt;<a href=3D"mailto:greg@gregn.net">greg@gregn.net</a>&gt;=
 wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On Tue, =
Apr 29, 2025 at 08:31:17AM -0400, fsmithred wrote:<br>
&gt; On 4/28/25 21:57, Gregory Nowak wrote:<br>
&gt; &gt; Some sighted users seem to report that brltty hangs the x server.=
 We<br>
&gt; &gt; had someone claiming that last week on the dng list. There were w=
ay<br>
&gt; &gt; more complaints about it when console-productivity was installed =
by<br>
&gt; &gt; default with I think Ascii.<br>
&gt; &gt; <br>
&gt; <br>
&gt; What about installing brltty but turning it off? Then you won&#39;t ne=
ed to<br>
&gt; install it if you want it; you would just need to start the service.<b=
r>
<br>
I think that would be a good solution.<br>
<br>
Greg<br>
<br>
<br>
&gt; <br>
&gt; fsmithred<br>
&gt; <br>
<br>
-- <br>
web site: <a href=3D"http://www.gregn.net" rel=3D"noreferrer" target=3D"_bl=
ank">http://www.gregn.net</a><br>
gpg public key: <a href=3D"http://www.gregn.net/pubkey.asc" rel=3D"noreferr=
er" target=3D"_blank">http://www.gregn.net/pubkey.asc</a><br>
<br>
--<br>
Free domains: <a href=3D"http://www.eu.org/" rel=3D"noreferrer" target=3D"_=
blank">http://www.eu.org/</a> or mail dns-manager@EU.org<br>
<br>
</blockquote></div>

--0000000000002fd7d30633f60b8c--

