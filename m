Return-Path: <speakup+bounces-405-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 38B8C50CCE2
	for <lists+speakup@lfdr.de>; Sat, 23 Apr 2022 20:31:14 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=mhuvJyuC;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id AE85D380D0A; Sat, 23 Apr 2022 14:31:13 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 3ADF13810D5
	for <lists+speakup@lfdr.de>; Sat, 23 Apr 2022 14:31:10 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id CDA67380D06; Sat, 23 Apr 2022 14:31:08 -0400 (EDT)
Received: from mail-io1-f52.google.com (mail-io1-f52.google.com [209.85.166.52])
	by befuddled.reisers.ca (Postfix) with ESMTPS id ADFA53808D3
	for <speakup@linux-speakup.org>; Sat, 23 Apr 2022 14:31:08 -0400 (EDT)
Received: by mail-io1-f52.google.com with SMTP id q22so11825779iod.2
        for <speakup@linux-speakup.org>; Sat, 23 Apr 2022 11:31:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=hZZymt+aM5CEbSxQ2VlvSADydkiUAjXbo6PW3f5wXtY=;
        b=mhuvJyuCXrwDO4sScRIczGumI4EdRhOS+zPRYSunJzCQMLI+h3oSmhtZN5WNhRA/p1
         pgRKN8kf5Lp7jBrCqj3xANvXtnATKggn98fE5WFP5vP2yYnmgfKTiXqRYThd6OFWIFjo
         GzqgbM4I0uRnl7AraNSrAhvleoT44KFw5Wg/wyUfUuddzBNch2vrrQRK+14EfL50OptB
         dP6NMNFO9u6RMJ6lOdbmTNBOgregGgZjYYZEfNK/Yh0YDYQyJbET2V/TRU+c/kXJRwtp
         88ao2mgIOQpiq5zl4Pvv5+ODi2A161oBKAsYABXqf8kjiv6kPGWzgTMQ6CwvwnOydlpH
         7CBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=hZZymt+aM5CEbSxQ2VlvSADydkiUAjXbo6PW3f5wXtY=;
        b=kIyhRJKeFKOtqa/YwPksai54YenusEe5RozR2yHj6h7RW5bty/J2JlIvpdgOm3XPEZ
         jx96aRBtBOiWTlsRtPf8TtbWPXnSXPtIFZk824MawNuyNuPtqBmm3GXRKwfmWPv7cG3o
         sm/sFPuOTM531BQ9sDi7KvCql/hAaV6eE0P4f2g4bYKZRQXApjWVKg+x6vWEMRdMLc94
         bzW9+CRR3us10I+bdEfM2EYQ73U3inhs3o2AgR5H9sLV7FGcX5uITCs3m0eoHeqgx2SE
         Mag67vHJP8OgmQ0i4CNptcyYSu/4nbqQZIvuiMtERpCXPQNhQvoOs9HYqy+DhZCFJpB+
         80RA==
X-Gm-Message-State: AOAM533n3Rbr40eLQtot+M2YCiVjtDkL/c+kKvUkBfZiT7TiEuFw69d4
	Tx0JFI6Qe/625t2+1n2ym6yhsqKC1HPAGYvRkh9CHhNmmrLfEg==
X-Google-Smtp-Source: ABdhPJwbdTVvDGXMcPBJYbCBkTNYIBCkY0mDu7CrCp8LNwh71ejk6q6CNUrBqvh4YxJJH7fP1Zhi+7LGE/Eoo0XU6YE=
X-Received: by 2002:a05:6638:4815:b0:328:85fc:1915 with SMTP id
 cp21-20020a056638481500b0032885fc1915mr4369488jab.82.1650738608089; Sat, 23
 Apr 2022 11:30:08 -0700 (PDT)
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
References: <CAE600ubaA7q99ajYsZO+1JR9TMERSo+kmtp8U6Eg=g_at-Th4g@mail.gmail.com>
 <839C2FB5-281D-452E-98FC-54FD6EED5FEA@gmail.com> <20220423152557.uvabzwrw32ks7jun@alex-pc>
In-Reply-To: <20220423152557.uvabzwrw32ks7jun@alex-pc>
From: Adrian Orjales <adriorjalesvidal31@gmail.com>
Date: Sat, 23 Apr 2022 20:29:56 +0200
Message-ID: <CAE600ub9NLto9nMo-ddBGrES2jEpPkRtMh6AxPL++gksM6fGdQ@mail.gmail.com>
Subject: Re: Espeakup, arch and systemd
To: Alexander Epaneshnikov <aarnaarn2@gmail.com>
Cc: speakup@linux-speakup.org
Content-Type: multipart/alternative; boundary="0000000000005a2dc105dd568861"
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

--0000000000005a2dc105dd568861
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I have set the default sound card, and still facing same issue.
At boot, espeakup is not able to speak. Only when I stop it's service and
start again it works.
Here is my espeakup.service file

[Unit]
Description=3DSoftware speech output for Speakup
Documentation=3Dman:espeakup(8)
Wants=3Dsystemd-udev-settle.service
After=3Dsystemd-udev-settle.service sound.target

[Service]
Type=3Dforking
PIDFile=3D/run/espeakup.pid
Environment=3D"default_voice=3D"
ExecStartPre=3D+modprobe speakup_soft
ExecStart=3D/usr/bin/espeakup --default-voice=3D${default_voice}
ExecReload=3Dkill -HUP $MAINPID
Restart=3Dalways

[Install]
WantedBy=3Dsound.target

I noticed that when I boot the machine and login into a shell, there is no
sound. If I run a speaker-test it doesn't work, because of espeakup. When I
kill espeakup service, it works again, and if I run a speaker-test, it
works perfectly fine.


El s=C3=A1b, 23 abr 2022 a las 17:26, Alexander Epaneshnikov (<
aarnaarn2@gmail.com>) escribi=C3=B3:

> On Sat, Apr 23, 2022 at 05:18:56PM +0200, Adri Orjales wrote:
> > Hello again
> > I reset the udev-settle service, i've found the problem with the
> slowdown on boot, was caused by a wireless mouse receiber
>
> nice.
>
> > Now the espeakup problem persists
> > Only talks if i stop it and start it again
>
> ok. let's tri to set default sound card with arch wiki's instructions [1]
>
> [1]
> https://wiki.archlinux.org/title/Advanced_Linux_Sound_Architecture#Set_th=
e_default_sound_card
>
> --
> Sincerely, Alexander
>

--0000000000005a2dc105dd568861
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I have set the default sound card, and still facing s=
ame issue.</div><div>At boot, espeakup is not able to speak. Only when I st=
op it&#39;s service and start again it works.</div><div>Here is my espeakup=
.service file</div><div><br></div><div>[Unit]<br>Description=3DSoftware spe=
ech output for Speakup<br>Documentation=3Dman:espeakup(8)<br>Wants=3Dsystem=
d-udev-settle.service<br>After=3Dsystemd-udev-settle.service sound.target<b=
r><br>[Service]<br>Type=3Dforking<br>PIDFile=3D/run/espeakup.pid<br>Environ=
ment=3D&quot;default_voice=3D&quot;<br>ExecStartPre=3D+modprobe speakup_sof=
t<br>ExecStart=3D/usr/bin/espeakup --default-voice=3D${default_voice}<br>Ex=
ecReload=3Dkill -HUP $MAINPID<br>Restart=3Dalways<br><br>[Install]<br>Wante=
dBy=3Dsound.target</div><div><br></div><div>I noticed that when I boot the =
machine and login into a shell, there is no sound. If I run a speaker-test =
it doesn&#39;t work, because of espeakup. When I kill espeakup service, it =
works again, and if I run a speaker-test, it works perfectly fine.<br></div=
><div><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">El s=C3=A1b, 23 abr 2022 a las 17:26, Alexander Epaneshniko=
v (&lt;<a href=3D"mailto:aarnaarn2@gmail.com">aarnaarn2@gmail.com</a>&gt;) =
escribi=C3=B3:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">O=
n Sat, Apr 23, 2022 at 05:18:56PM +0200, Adri Orjales wrote:<br>
&gt; Hello again<br>
&gt; I reset the udev-settle service, i&#39;ve found the problem with the s=
lowdown on boot, was caused by a wireless mouse receiber<br>
<br>
nice.<br>
<br>
&gt; Now the espeakup problem persists<br>
&gt; Only talks if i stop it and start it again<br>
<br>
ok. let&#39;s tri to set default sound card with arch wiki&#39;s instructio=
ns [1]<br>
<br>
[1] <a href=3D"https://wiki.archlinux.org/title/Advanced_Linux_Sound_Archit=
ecture#Set_the_default_sound_card" rel=3D"noreferrer" target=3D"_blank">htt=
ps://wiki.archlinux.org/title/Advanced_Linux_Sound_Architecture#Set_the_def=
ault_sound_card</a><br>
<br>
-- <br>
Sincerely, Alexander<br>
</blockquote></div>

--0000000000005a2dc105dd568861--

