Return-Path: <speakup+bounces-403-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id B1DF750CBAA
	for <lists+speakup@lfdr.de>; Sat, 23 Apr 2022 17:20:04 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=FU65QHoO;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 3BA00380D2A; Sat, 23 Apr 2022 11:20:04 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 277AB380B0C
	for <lists+speakup@lfdr.de>; Sat, 23 Apr 2022 11:20:04 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 7CD1C380BC2; Sat, 23 Apr 2022 11:19:59 -0400 (EDT)
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 44D0A380949
	for <speakup@linux-speakup.org>; Sat, 23 Apr 2022 11:19:59 -0400 (EDT)
Received: by mail-wr1-f51.google.com with SMTP id w4so14886476wrg.12
        for <speakup@linux-speakup.org>; Sat, 23 Apr 2022 08:19:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=MRr2r+pRiUBmI4VAivu5HoBC+/wG7TWms9CmfI0akkE=;
        b=FU65QHoOevYdpB0wglR1hYf0u/e8okk2+SysPmx/KE/O/5ZUnKR6nAEOOBe+mM5tmz
         8Tets9nPkbVSWXHr5MOTJjMsIVzwwy/0l84HggtnV8zuQmvz9HIEGlNt4NtpLDlQ7KPH
         RU7ANJYm5F7h2/UjOoWReooUkegLGcs60MT7NiX/Zkl9sM9xjrJze4KWOhm9J1RrI4OR
         m3TUutq57NoxC4IVzIiyGPBbdutjGFImrEbSnXDxJR20BhsFJuXBeogzVawz9k3LGPP2
         AJ0z159lWab+Tvo9nSZybMyVMGnrbBCALGdUhGWqrjHw7QQbIeKXsqsqxiB8PBneWHXC
         e3tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=MRr2r+pRiUBmI4VAivu5HoBC+/wG7TWms9CmfI0akkE=;
        b=GuEnYOdmG/iBKXq9OFXx8ZSw65jntmdhg3wKl1Jw5vAbMCGftg3kLUMypNYLWDBkDZ
         ebuGEKTDjfoJmPJvidt91PwNzJZscv2uDVOssDqsq/1KTRANq1GYBux2KrgeV6/0QyE/
         pcPIu+Hi9io6POAe/PRV3+I0NgPPredl/Osz8lsedZ2jUaT8gW+W+ZoPWO3Vm8wvR1XC
         jOoYZCB+cToyemV1l0e39LMpQzJ34bVKaXv/lxAeYng0P0F6EiPNn6b6PbTVfJXpw/Ev
         dWk3xuBNk/VR7tmLHoOMix2FdBXjCU5X480iKogFJYVStjaddaJ0xZmWcX7Hgl5B08Ql
         6+nw==
X-Gm-Message-State: AOAM532DtwtJ2+kTNl9kKN79c6s9Y2LecXp1XbQMhDHgjls2Thk3I1Y2
	RcLEZh2jbNdmT5cO3kMoHRc3ldWpTwPDew==
X-Google-Smtp-Source: ABdhPJwzYQR/iZVAdpDuIC3zJ8heSCelJlxlk6OU1w4lW+zjXEOpN35f+ZHvCWYUDonV3PwVRuFqbA==
X-Received: by 2002:adf:e189:0:b0:207:a0e8:be49 with SMTP id az9-20020adfe189000000b00207a0e8be49mr7855703wrb.130.1650727138152;
        Sat, 23 Apr 2022 08:18:58 -0700 (PDT)
Received: from smtpclient.apple (165.97.16.95.dynamic.jazztel.es. [95.16.97.165])
        by smtp.gmail.com with ESMTPSA id b13-20020a05600018ad00b0020a87feadfcsm5119518wri.84.2022.04.23.08.18.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 23 Apr 2022 08:18:57 -0700 (PDT)
Content-Type: multipart/alternative; boundary=Apple-Mail-B617C2FA-5AB9-41A1-BFF3-D0B59CBF05E5
Content-Transfer-Encoding: 7bit
From: Adri Orjales <adriorjalesvidal31@gmail.com>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
Mime-Version: 1.0 (1.0)
Subject: Re: Espeakup, arch and systemd
Date: Sat, 23 Apr 2022 17:18:56 +0200
Message-Id: <839C2FB5-281D-452E-98FC-54FD6EED5FEA@gmail.com>
References: <CAE600ubaA7q99ajYsZO+1JR9TMERSo+kmtp8U6Eg=g_at-Th4g@mail.gmail.com>
Cc: speakup@linux-speakup.org
In-Reply-To: <CAE600ubaA7q99ajYsZO+1JR9TMERSo+kmtp8U6Eg=g_at-Th4g@mail.gmail.com>
To: Alexander Epaneshnikov <aarnaarn2@gmail.com>
X-Mailer: iPhone Mail (19E258)
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5


--Apple-Mail-B617C2FA-5AB9-41A1-BFF3-D0B59CBF05E5
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hello again
I reset the udev-settle service, i've found the problem with the slowdown on=
 boot, was caused by a wireless mouse receiber
Now the espeakup problem persists
Only talks if i stop it and start it again




> El 23 abr 2022, a las 16:55, Adrian Orjales <adriorjalesvidal31@gmail.com>=
 escribi=C3=B3:
>=20
> =EF=BB=BF
> Thanks for your reply, Alexander
>=20
>=20
>>=20
>> >to be honest, I'm not sure that the slowdown in booting is due to this.
> After I've removed the systemd-udev-settle.service mentions on the espeaku=
p.service file, the slowdown was removed, I don't know why.
>=20
>>=20
>> > did you set the default sound card?
> I have no idea about alsa settings, but if I run aplay -L, it shows that t=
he intel card is set as default. If it was not running with this card, when I=
 run systemctl reloadand start, espeakup must not talk, but it does.
>=20
>> Thanks again.=20

--Apple-Mail-B617C2FA-5AB9-41A1-BFF3-D0B59CBF05E5
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Hello again<div>I reset the udev-settle ser=
vice, i've found the problem with the slowdown on boot, was caused by a wire=
less mouse receiber</div><div>Now the espeakup problem persists</div><div>On=
ly talks if i stop it and start it again</div><div><br><br><div dir=3D"ltr">=
<br></div><div dir=3D"ltr"><br><blockquote type=3D"cite">El 23 abr 2022, a l=
as 16:55, Adrian Orjales &lt;adriorjalesvidal31@gmail.com&gt; escribi=C3=B3:=
<br><br></blockquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=
=BF<div dir=3D"ltr"><div>Thanks for your reply, Alexander<br></div><br><div c=
lass=3D"gmail_quote"><br><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
<br>&gt;to be honest, I'm not sure that the slowdown in booting is due to th=
is.<br></blockquote><div>After I've removed the systemd-udev-settle.service m=
entions on the espeakup.service file, the slowdown was removed, I don't know=
 why.<br></div><div><br></div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x">
<br>&gt; did you set the default sound card?<br></blockquote><div>I have no i=
dea about alsa settings, but if I run aplay -L, it shows that the intel card=
 is set as default. If it was not running with this card, when I run systemc=
tl reloadand start, espeakup must not talk, but it does.<br></div><br><block=
quote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1p=
x solid rgb(204,204,204);padding-left:1ex">
Thanks again. <br>
</blockquote></div></div>
</div></blockquote></div></body></html>=

--Apple-Mail-B617C2FA-5AB9-41A1-BFF3-D0B59CBF05E5--

