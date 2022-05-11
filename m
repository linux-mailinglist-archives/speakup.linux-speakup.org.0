Return-Path: <speakup+bounces-420-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 87584523AD1
	for <lists+speakup@lfdr.de>; Wed, 11 May 2022 18:50:34 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=canonical.com header.i=@canonical.com header.a=rsa-sha256 header.s=20210705 header.b=eM/FSNlF;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id F39C4380E12; Wed, 11 May 2022 12:50:33 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id DB513380DFD
	for <lists+speakup@lfdr.de>; Wed, 11 May 2022 12:50:33 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id A0F5E380DD4; Wed, 11 May 2022 12:50:28 -0400 (EDT)
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 3D581380B0D
	for <speakup@linux-speakup.org>; Wed, 11 May 2022 12:50:28 -0400 (EDT)
Received: from mail-lj1-f200.google.com (mail-lj1-f200.google.com [209.85.208.200])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id DAD3A3F1A1
	for <speakup@linux-speakup.org>; Wed, 11 May 2022 16:50:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1652287826;
	bh=WdBokyZsREGf6tjID3RG+hTUxFn2giiCGq4QA0BfKMM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=eM/FSNlFmiul/dY9J63rrP8zj6BZz9AN/MsEtW0YTVR+aj9ht0A3FCuLuSt/ziwzp
	 M40WC18WmdcmE/qmvRzoXzPn7sme9PpmcDTx737qo7JtSYN8chdjsg41YR324bO429
	 AAUFmD0SG+GDLlDO8MrGnobTgSf859jXf1pp8R5kapS4tQgqBlE578NsLLdgIPOjAY
	 FnZm+c/WUy+xuoLQrJ9w+pO26A/QCs9RwyyM1SjuPpnyluFjcqsOtUqRsdvTccHMOB
	 2xIUeQdjN4Enos/rzMVfC87n39HiYGjiKQchnan/MfRfRTOJ5IhT3BJ9hNizHDwywT
	 VrXj8r3B1Llpg==
Received: by mail-lj1-f200.google.com with SMTP id y7-20020a2e95c7000000b0024f29bcd594so936612ljh.9
        for <speakup@linux-speakup.org>; Wed, 11 May 2022 09:50:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=WdBokyZsREGf6tjID3RG+hTUxFn2giiCGq4QA0BfKMM=;
        b=DWjWSgdrh582tpBWtNxSqgBUQ/FR72wmurC+M8fThGRcA6NnZgsFcHCJgBu1zk4Vio
         tw1wPTQCJFSOsINWZZP9HhFnHJZGMHpG+rGkT2iYQ0ExZCxUYiwjXywZ4T1mi+Gyoe29
         R9ydmM70CMiu64YNnSQdeB9FGjW37pcmaE5VCLUZZRndfP4HVxM26IOW5RN5/FMZnj9c
         pfXFzrYs9O74JbhEwwIB45MDBJXUPXONJnniOjMQQIJyCtlUalm5FwAISnudLKhw0fdx
         KFpTWLWZITeWvlzqRcjd1XVAeWtN5GflfFtySqIgkgonNh0Q2gffQITUR8gqiZLwdxTO
         2e2g==
X-Gm-Message-State: AOAM5337z/d1orP0gq59WOMiRr8oznoeilnjSWycNh20gmGLqI6t8o+A
	s9ed+DDxNukwApIi6pX5XEdICv6uxgQ+nQj/tmQW/86w9mnox2PPeXLRCpExf+l3b9Tc2MM/FCu
	9MGPTFr/cbMnu9w3vd098GEKCg2qu88h+fPiEPkia7aM5ILhw8GmmEg==
X-Received: by 2002:a2e:9095:0:b0:250:8b2e:26d7 with SMTP id l21-20020a2e9095000000b002508b2e26d7mr17604297ljg.6.1652287825685;
        Wed, 11 May 2022 09:50:25 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxXIcAqGgIw/Q2y+73XFW+A7oGvlBX+S8l5gAXKkF9nFNv0A+5orXKK9JbsLVQPAlTZ6WLMrcwIWmVZjbVpw9I=
X-Received: by 2002:a2e:9095:0:b0:250:8b2e:26d7 with SMTP id
 l21-20020a2e9095000000b002508b2e26d7mr17604282ljg.6.1652287825437; Wed, 11
 May 2022 09:50:25 -0700 (PDT)
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
 <CA+8tiZWWScjAXUZSdYRzTO5bRoxrZNXHAvZ5ovE1nW5EkqKTnA@mail.gmail.com> <CAE600uYKa+PaK5gch5BxobWXyy4gkLz6GufzHQ+NvyDZ4yFTUQ@mail.gmail.com>
In-Reply-To: <CAE600uYKa+PaK5gch5BxobWXyy4gkLz6GufzHQ+NvyDZ4yFTUQ@mail.gmail.com>
From: Monica Ayhens-Madon <monica.ayhens.madon@canonical.com>
Date: Wed, 11 May 2022 18:50:14 +0200
Message-ID: <CA+8tiZX5FNCPzRY6rE=otHjvv3ufX-3ybW87_TOJpG0Eui3-mQ@mail.gmail.com>
Subject: Re: Speakup Left Out of Ubuntu kernel (again)
To: Adrian Orjales <adriorjalesvidal31@gmail.com>
Cc: "John G. Heim" <jheim@math.wisc.edu>, speakup@linux-speakup.org
Content-Type: multipart/alternative; boundary="000000000000e6fe3d05debf3c91"
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

--000000000000e6fe3d05debf3c91
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Adrian,

According to my colleague, if the output of uname -r ends with 'generic' on
the ubuntu server 22.04 LTS you're running, it will be fixed soon.

(Sorry I can't test it myself - I am stuck abroad with a really minimal
setup and this is my first day back at work after being ill. It's almost 7
PM here so I'll be winding down soon.)

Thank you for offering to share your insight and feedback - it's very
appreciated!

Monica

On Wed, May 11, 2022 at 6:05 PM Adrian Orjales <adriorjalesvidal31@gmail.co=
m>
wrote:

> Sure, I'd be happy to help. Feel free to share my email address with your
> colleagues.
> The version was ubuntu server 22.04 lts. I will install it again and test
> it more, and also the desktop version to try to give my best feedback
> possible.
> Thanks
>
> El El mi=C3=A9, 11 may 2022 a las 17:15, Monica Ayhens-Madon <
> monica.ayhens.madon@canonical.com> escribi=C3=B3:
>
>> Adrian, could you let me know more about which specific version of
>> server? I'm talking to one of my colleagues on the kernel team and he ne=
eds
>> more information.
>>
>> And I'm only one of a group of people at Canonical working on
>> accessibility. My main job is to be a bridge between them and the
>> community. Can I give the Accessibility Guild your address (and anyone
>> else's e-mail address, if you'd like to talk to us about how we can impr=
ove
>> accessibility), we would like to know your feedback and suggestions!
>>
>> On Wed, May 11, 2022 at 3:59 PM Adrian Orjales <
>> adriorjalesvidal31@gmail.com> wrote:
>>
>>> Hello  Monica
>>> Does this affect also ubuntu server? I've installed Ubuntu server  and
>>> no speakup module was found when i tried to load it.
>>>
>>> I'm very happy to know about you, because i think there are a lot of
>>> things in ubuntu to talk about accessibility. If you are open to listen=
, i
>>> will be happy to help with feedback.
>>> Thanks
>>>
>>> El El mi=C3=A9, 11 may 2022 a las 15:38, Monica Ayhens-Madon <
>>> monica.ayhens.madon@canonical.com> escribi=C3=B3:
>>>
>>>> Hello!
>>>>
>>>> I'm Monica Ayhens-Madon from the Community Team at Canonical, and I'm
>>>> part of our Accessibility Guild. I've had a chat with people on our ke=
rnel
>>>> team and there is an existing bug being fixed, and Speakup should be
>>>> available in updates soon. Please feel free to reach out to me with an=
y
>>>> questions or any other accessibility issues I can raise internally.
>>>>
>>>> Cheers,
>>>>
>>>> Monica
>>>>
>>>> On Tue, May 10, 2022 at 3:19 AM John G. Heim <jheim@math.wisc.edu>
>>>> wrote:
>>>>
>>>>> Arrgh! Speakup seems not to have been compiled into the Ubuntu
>>>>> Jammy/22.04 kernel. Same thing as in 21.04 and 21.10. Man! Well, I
>>>>> guess
>>>>> I'll have to file a bug report ... again.
>>>>>
>>>>> --
>>>>> ###
>>>>> John G. Heim, 608-263-4189, jheim@math.wisc.edu
>>>>>
>>>>>
>>>

--000000000000e6fe3d05debf3c91
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Adrian,</div><div><br></div>According to my colleague=
, if the output of uname -r ends with &#39;generic&#39; on the ubuntu serve=
r 22.04 LTS you&#39;re running, it will be fixed soon.=C2=A0<div><br></div>=
<div>(Sorry I can&#39;t test it myself - I am stuck abroad with a really mi=
nimal setup and this is my first day back at work after being ill. It&#39;s=
 almost 7 PM here so I&#39;ll be winding down soon.)</div><div><br></div><d=
iv>Thank you for offering to share your insight and feedback - it&#39;s ver=
y appreciated!</div><div><br></div><div>Monica</div></div><br><div class=3D=
"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, May 11, 2022 at=
 6:05 PM Adrian Orjales &lt;<a href=3D"mailto:adriorjalesvidal31@gmail.com"=
>adriorjalesvidal31@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex"><div dir=3D"auto">Sure, I&#39;d be happy to he=
lp. Feel free to share my email address with your colleagues.</div><div dir=
=3D"auto">The version was ubuntu server 22.04 lts. I will install it again =
and test it more, and also the desktop version to try to give my best feedb=
ack possible.</div><div dir=3D"auto">Thanks=C2=A0</div><div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">El El mi=C3=A9, 11 m=
ay 2022 a las 17:15, Monica Ayhens-Madon &lt;<a href=3D"mailto:monica.ayhen=
s.madon@canonical.com" target=3D"_blank">monica.ayhens.madon@canonical.com<=
/a>&gt; escribi=C3=B3:<br></div><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex"><div dir=3D"ltr">Adrian, could you let me know more about which spec=
ific version of server? I&#39;m talking to one of my colleagues on the kern=
el team and he needs more information.=C2=A0<div><br></div><div>And I&#39;m=
 only one of a group of people at Canonical working on accessibility. My ma=
in job is to be a bridge between them and the community. Can I give the Acc=
essibility Guild your address (and anyone else&#39;s e-mail address, if you=
&#39;d like to talk to us about how we can improve accessibility), we would=
 like to know your feedback and suggestions!</div></div><br><div class=3D"g=
mail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, May 11, 2022 at 3=
:59 PM Adrian Orjales &lt;<a href=3D"mailto:adriorjalesvidal31@gmail.com" t=
arget=3D"_blank">adriorjalesvidal31@gmail.com</a>&gt; wrote:<br></div><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:=
1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"auto">Hello =C2=A0=
Monica</div><div dir=3D"auto">Does this affect also ubuntu server? I&#39;ve=
 installed Ubuntu server =C2=A0and no speakup module was found when i tried=
 to load it.=C2=A0</div><div dir=3D"auto"><br></div><div dir=3D"auto">I&#39=
;m very happy to know about you, because i think there are a lot of things =
in ubuntu to talk about accessibility. If you are open to listen, i will be=
 happy to help with feedback.</div><div dir=3D"auto">Thanks</div><div><br><=
div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">El El mi=C3=
=A9, 11 may 2022 a las 15:38, Monica Ayhens-Madon &lt;<a href=3D"mailto:mon=
ica.ayhens.madon@canonical.com" target=3D"_blank">monica.ayhens.madon@canon=
ical.com</a>&gt; escribi=C3=B3:<br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex"><div dir=3D"ltr">Hello!<div><br></div><div>I&#39;m Monica A=
yhens-Madon from the Community Team at Canonical, and I&#39;m part of our A=
ccessibility Guild. I&#39;ve had a chat with people on our kernel team and =
there is an existing bug being fixed, and Speakup should be available in up=
dates soon. Please feel free to reach out to me with any questions or any o=
ther accessibility issues I can raise internally.</div><div><br></div><div>=
Cheers,</div><div><br></div><div>Monica</div></div><br><div class=3D"gmail_=
quote"></div><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_att=
r">On Tue, May 10, 2022 at 3:19 AM John G. Heim &lt;<a href=3D"mailto:jheim=
@math.wisc.edu" target=3D"_blank">jheim@math.wisc.edu</a>&gt; wrote:<br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left:1px solid rgb(204,204,204);padding-left:1ex">Arrgh! Speakup seems n=
ot to have been compiled into the Ubuntu <br>
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
</blockquote></div>

--000000000000e6fe3d05debf3c91--

