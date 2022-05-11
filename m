Return-Path: <speakup+bounces-419-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 43472523818
	for <lists+speakup@lfdr.de>; Wed, 11 May 2022 18:06:11 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=YfQY+SGS;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 3CAE2380DED; Wed, 11 May 2022 12:06:10 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id DD1FA380E00
	for <lists+speakup@lfdr.de>; Wed, 11 May 2022 12:06:08 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id E4B07380CF0; Wed, 11 May 2022 12:06:03 -0400 (EDT)
Received: from mail-il1-f172.google.com (mail-il1-f172.google.com [209.85.166.172])
	by befuddled.reisers.ca (Postfix) with ESMTPS id B6828380937
	for <speakup@linux-speakup.org>; Wed, 11 May 2022 12:06:03 -0400 (EDT)
Received: by mail-il1-f172.google.com with SMTP id l15so1743229ilh.3
        for <speakup@linux-speakup.org>; Wed, 11 May 2022 09:06:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=WwbcjfdKHW/hVaanKXpdtuz+dZGNQNAwseyaQe7r+M0=;
        b=YfQY+SGSVnr6z66ibn96zqEWia/evvlnzN5KRUhyey4q5/NU5SCOzZukJBVcCbMnAT
         rAlosvgTAh2Q1RaiXGfkuKbwFQj2TJoJb0Iyu+TUlbgesn3dKS7F1FoU1myggYDqM3tK
         sYOk4bz0sQN9v78VFKTc6B8cSIYf5FYDKJLYNoifjIZndg4SPNYLMl5hJO1DV2gN3U+M
         UBfcvxcuZehxg1AFmtmn1TAh8v+O91J98GK6UMAPJUeWs0BgYwgLH5LY7HKVESdvGBGd
         7HrjnKIQjKUDfzdkc+dbntrw3D96cODAzdn/FX/Flbrwepg6MXtZVIzjOnOrLfVjc7bN
         hMYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=WwbcjfdKHW/hVaanKXpdtuz+dZGNQNAwseyaQe7r+M0=;
        b=va4owf6IBIwGICZWfnCJPdI7bf1y0LvCGKmBOUn5mqsFhZJY7XpufnO3A1IOxTQOkQ
         cBqrqFknWmFJTpO3lY4cC5E74XY1NWi1r09PZ9al2PlB3AjEDMeZbiiTgVCH0QLVrqI+
         8s/Jw2VFKSyIQzpAhff5hYGgTtwDVF8rmGIEJnOD9PLLJKS3V0cpXaCnxN3i2xJdPEUw
         +Ba4dT5AIydMj163nL4yoTmE0B6eI6EOoH+N9YIeOz0UBSEinqf9mHDG9yyXlD9U9pKO
         E8k80djt7KHatLSXCfbyPM08uz0nC+exOlZV8IKffRc9zwT2SmMKJ32Qjl74Xsf+mjO8
         302w==
X-Gm-Message-State: AOAM531n1pbzVC2PQmVVHoLtU6VFl4zZLj0E5U5JZJWaDMSkExkzHm4X
	hYd9zFENYYBbTc+A2S7X7z+75xI0uu+vrok6Clw=
X-Google-Smtp-Source: ABdhPJxdDY7aOlMjBNJPruHJido18AKOfmamJvcc0sVX3mfPyxMDhfA3el9h0JKjnCtOiofUaN6J5KlDKRrgKlZX/+4=
X-Received: by 2002:a05:6e02:1a85:b0:2cf:3322:b65b with SMTP id
 k5-20020a056e021a8500b002cf3322b65bmr12289219ilv.20.1652285102805; Wed, 11
 May 2022 09:05:02 -0700 (PDT)
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
 <CAE600uaFd06wnf8EGwBbhBg+y_-dEtKV9SqyvOx1GzRq0T97xw@mail.gmail.com> <CA+8tiZWWScjAXUZSdYRzTO5bRoxrZNXHAvZ5ovE1nW5EkqKTnA@mail.gmail.com>
In-Reply-To: <CA+8tiZWWScjAXUZSdYRzTO5bRoxrZNXHAvZ5ovE1nW5EkqKTnA@mail.gmail.com>
From: Adrian Orjales <adriorjalesvidal31@gmail.com>
Date: Wed, 11 May 2022 18:04:52 +0200
Message-ID: <CAE600uYKa+PaK5gch5BxobWXyy4gkLz6GufzHQ+NvyDZ4yFTUQ@mail.gmail.com>
Subject: Re: Speakup Left Out of Ubuntu kernel (again)
To: Monica Ayhens-Madon <monica.ayhens.madon@canonical.com>
Cc: "John G. Heim" <jheim@math.wisc.edu>, speakup@linux-speakup.org
Content-Type: multipart/alternative; boundary="0000000000009ed77705debe9a4e"
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

--0000000000009ed77705debe9a4e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Sure, I'd be happy to help. Feel free to share my email address with your
colleagues.
The version was ubuntu server 22.04 lts. I will install it again and test
it more, and also the desktop version to try to give my best feedback
possible.
Thanks

El El mi=C3=A9, 11 may 2022 a las 17:15, Monica Ayhens-Madon <
monica.ayhens.madon@canonical.com> escribi=C3=B3:

> Adrian, could you let me know more about which specific version of server=
?
> I'm talking to one of my colleagues on the kernel team and he needs more
> information.
>
> And I'm only one of a group of people at Canonical working on
> accessibility. My main job is to be a bridge between them and the
> community. Can I give the Accessibility Guild your address (and anyone
> else's e-mail address, if you'd like to talk to us about how we can impro=
ve
> accessibility), we would like to know your feedback and suggestions!
>
> On Wed, May 11, 2022 at 3:59 PM Adrian Orjales <
> adriorjalesvidal31@gmail.com> wrote:
>
>> Hello  Monica
>> Does this affect also ubuntu server? I've installed Ubuntu server  and n=
o
>> speakup module was found when i tried to load it.
>>
>> I'm very happy to know about you, because i think there are a lot of
>> things in ubuntu to talk about accessibility. If you are open to listen,=
 i
>> will be happy to help with feedback.
>> Thanks
>>
>> El El mi=C3=A9, 11 may 2022 a las 15:38, Monica Ayhens-Madon <
>> monica.ayhens.madon@canonical.com> escribi=C3=B3:
>>
>>> Hello!
>>>
>>> I'm Monica Ayhens-Madon from the Community Team at Canonical, and I'm
>>> part of our Accessibility Guild. I've had a chat with people on our ker=
nel
>>> team and there is an existing bug being fixed, and Speakup should be
>>> available in updates soon. Please feel free to reach out to me with any
>>> questions or any other accessibility issues I can raise internally.
>>>
>>> Cheers,
>>>
>>> Monica
>>>
>>> On Tue, May 10, 2022 at 3:19 AM John G. Heim <jheim@math.wisc.edu>
>>> wrote:
>>>
>>>> Arrgh! Speakup seems not to have been compiled into the Ubuntu
>>>> Jammy/22.04 kernel. Same thing as in 21.04 and 21.10. Man! Well, I
>>>> guess
>>>> I'll have to file a bug report ... again.
>>>>
>>>> --
>>>> ###
>>>> John G. Heim, 608-263-4189, jheim@math.wisc.edu
>>>>
>>>>
>>

--0000000000009ed77705debe9a4e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Sure, I&#39;d be happy to help. Feel free to share my ema=
il address with your colleagues.</div><div dir=3D"auto">The version was ubu=
ntu server 22.04 lts. I will install it again and test it more, and also th=
e desktop version to try to give my best feedback possible.</div><div dir=
=3D"auto">Thanks=C2=A0</div><div><br><div class=3D"gmail_quote"><div dir=3D=
"ltr" class=3D"gmail_attr">El El mi=C3=A9, 11 may 2022 a las 17:15, Monica =
Ayhens-Madon &lt;<a href=3D"mailto:monica.ayhens.madon@canonical.com">monic=
a.ayhens.madon@canonical.com</a>&gt; escribi=C3=B3:<br></div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;p=
adding-left:1ex"><div dir=3D"ltr">Adrian, could you let me know more about =
which specific version of server? I&#39;m talking to one of my colleagues o=
n the kernel team and he needs more information.=C2=A0<div><br></div><div>A=
nd I&#39;m only one of a group of people at Canonical working on accessibil=
ity. My main job is to be a bridge between them and the community. Can I gi=
ve the Accessibility Guild your address (and anyone else&#39;s e-mail addre=
ss, if you&#39;d like to talk to us about how we can improve accessibility)=
, we would like to know your feedback and suggestions!</div></div><br><div =
class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, May 11,=
 2022 at 3:59 PM Adrian Orjales &lt;<a href=3D"mailto:adriorjalesvidal31@gm=
ail.com" target=3D"_blank">adriorjalesvidal31@gmail.com</a>&gt; wrote:<br><=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"auto">He=
llo =C2=A0Monica</div><div dir=3D"auto">Does this affect also ubuntu server=
? I&#39;ve installed Ubuntu server =C2=A0and no speakup module was found wh=
en i tried to load it.=C2=A0</div><div dir=3D"auto"><br></div><div dir=3D"a=
uto">I&#39;m very happy to know about you, because i think there are a lot =
of things in ubuntu to talk about accessibility. If you are open to listen,=
 i will be happy to help with feedback.</div><div dir=3D"auto">Thanks</div>=
<div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">E=
l El mi=C3=A9, 11 may 2022 a las 15:38, Monica Ayhens-Madon &lt;<a href=3D"=
mailto:monica.ayhens.madon@canonical.com" target=3D"_blank">monica.ayhens.m=
adon@canonical.com</a>&gt; escribi=C3=B3:<br></div><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex"><div dir=3D"ltr">Hello!<div><br></div><div>I&#39;=
m Monica Ayhens-Madon from the Community Team at Canonical, and I&#39;m par=
t of our Accessibility Guild. I&#39;ve had a chat with people on our kernel=
 team and there is an existing bug being fixed, and Speakup should be avail=
able in updates soon. Please feel free to reach out to me with any question=
s or any other accessibility issues I can raise internally.</div><div><br><=
/div><div>Cheers,</div><div><br></div><div>Monica</div></div><br><div class=
=3D"gmail_quote"></div><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D=
"gmail_attr">On Tue, May 10, 2022 at 3:19 AM John G. Heim &lt;<a href=3D"ma=
ilto:jheim@math.wisc.edu" target=3D"_blank">jheim@math.wisc.edu</a>&gt; wro=
te:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Arrgh! Speak=
up seems not to have been compiled into the Ubuntu <br>
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
</blockquote></div></div><br>
</blockquote></div>
</blockquote></div></div>

--0000000000009ed77705debe9a4e--

