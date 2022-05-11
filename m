Return-Path: <speakup+bounces-418-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 4B77D5236DB
	for <lists+speakup@lfdr.de>; Wed, 11 May 2022 17:14:55 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=canonical.com header.i=@canonical.com header.a=rsa-sha256 header.s=20210705 header.b=WNNLQZMs;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id BBCF0380E14; Wed, 11 May 2022 11:14:54 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 92E02380DFE
	for <lists+speakup@lfdr.de>; Wed, 11 May 2022 11:14:54 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 18FC8380B68; Wed, 11 May 2022 11:14:49 -0400 (EDT)
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 9CFC838099C
	for <speakup@linux-speakup.org>; Wed, 11 May 2022 11:14:48 -0400 (EDT)
Received: from mail-lj1-f200.google.com (mail-lj1-f200.google.com [209.85.208.200])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id DD3023F1A1
	for <speakup@linux-speakup.org>; Wed, 11 May 2022 15:14:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1652282085;
	bh=fNhOGQZ3d/du9ykZ+A+nxe6uDNbM2GMQe9cTRpp4kbk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=WNNLQZMs3Lcoo+XtVhfsJLfhSm5/9GAfWBEwPUv2iF+G/Gn8LFUu1mP3KDsUlrmfb
	 n9OPnceofKIsx60hb0I4r5IB6laN0MxPCtCvOSqFygMUHPXJZldQC21w2UI1GW1jcG
	 Fk2C9HHz7UGFNaIe/H4qx5/89sR3SZ7FHaVhg59yvpbZq1dTO3mpvYedct+nx/3+F9
	 QcKVIl51iMTHnI2S3G3/ruZdZZ3hbdVMvK6qB5QWhtCXjKVlqzj4UIZBgg4KgXFpd4
	 f5LopwaQYGoPuR+63TvaVom2lgWIV8pXaxGkapz4aWRYNadd8sHYDxvFNAHIsBkyoI
	 34Gft2I3FpNzw==
Received: by mail-lj1-f200.google.com with SMTP id 23-20020a05651c00d700b0024f12064717so841322ljr.15
        for <speakup@linux-speakup.org>; Wed, 11 May 2022 08:14:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=fNhOGQZ3d/du9ykZ+A+nxe6uDNbM2GMQe9cTRpp4kbk=;
        b=QGSTUGAoIKQQox13omErhNZgju2Rf/Oucl35IK+rwFH5hRE431luNGNvbn/ybfE8wa
         llFhVPdiGeFMymTiMQNUq1HnMREHvOs/0KBisw5IMYEyWU2LCsALxKVew852HNINovm/
         ItwOur4NQwplgUGhF3WBUDSsTK/u0aWAgaTdqRDztmZ2Kl9F5zjwJVABKxhJEVxNcBi+
         OIs29cLAPH20YD/OMj+q8Jw/t6xpc/BguI5Sa+4YlrK+tBOphWkduYy3oCjw5B4oSs5l
         oeC3LU875zrzCTgkXwsfBxH6SAkpIus21UGa7v/aPt1h9A7uMAqumon6kDlUP75vt3CR
         FRSg==
X-Gm-Message-State: AOAM533Il7NxZs27EdGf+4jGA3NeIcPAbK1O44iut1pCU44JHoal+ypP
	huX/asHHaV4qWxwHjmhvZRtND+pW4oSvoR8Ssb5OegRXEp5WV4bvzU+Za004Zj/Hv06pl9ShPNG
	5h8BgT0xM3mP6DFgP8r2d1Wyh7AYrwfeeIHZiqLMLJmFjBoPjfFS5sQ==
X-Received: by 2002:a05:6512:b83:b0:44a:9fb7:784b with SMTP id b3-20020a0565120b8300b0044a9fb7784bmr19985000lfv.547.1652282084357;
        Wed, 11 May 2022 08:14:44 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzvGJnJpwqtrLkWL5LkJZaQkPsl4a06iuxC1VO1CFV0uxK2Fx/1Yl/J1SNC6DtS4RDb6oqcZDgeuSUOtD41m2k=
X-Received: by 2002:a05:6512:b83:b0:44a:9fb7:784b with SMTP id
 b3-20020a0565120b8300b0044a9fb7784bmr19984990lfv.547.1652282084125; Wed, 11
 May 2022 08:14:44 -0700 (PDT)
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
 <CA+8tiZWEfEd_mFh_Eaj0v52m=VxdE2esLwC9zDzD3aE=DJ-z9Q@mail.gmail.com> <CAE600uaFd06wnf8EGwBbhBg+y_-dEtKV9SqyvOx1GzRq0T97xw@mail.gmail.com>
In-Reply-To: <CAE600uaFd06wnf8EGwBbhBg+y_-dEtKV9SqyvOx1GzRq0T97xw@mail.gmail.com>
From: Monica Ayhens-Madon <monica.ayhens.madon@canonical.com>
Date: Wed, 11 May 2022 17:14:33 +0200
Message-ID: <CA+8tiZWWScjAXUZSdYRzTO5bRoxrZNXHAvZ5ovE1nW5EkqKTnA@mail.gmail.com>
Subject: Re: Speakup Left Out of Ubuntu kernel (again)
To: Adrian Orjales <adriorjalesvidal31@gmail.com>
Cc: "John G. Heim" <jheim@math.wisc.edu>, speakup@linux-speakup.org
Content-Type: multipart/alternative; boundary="000000000000b182b805debde6f5"
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

--000000000000b182b805debde6f5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Adrian, could you let me know more about which specific version of server?
I'm talking to one of my colleagues on the kernel team and he needs more
information.

And I'm only one of a group of people at Canonical working on
accessibility. My main job is to be a bridge between them and the
community. Can I give the Accessibility Guild your address (and anyone
else's e-mail address, if you'd like to talk to us about how we can improve
accessibility), we would like to know your feedback and suggestions!

On Wed, May 11, 2022 at 3:59 PM Adrian Orjales <adriorjalesvidal31@gmail.co=
m>
wrote:

> Hello  Monica
> Does this affect also ubuntu server? I've installed Ubuntu server  and no
> speakup module was found when i tried to load it.
>
> I'm very happy to know about you, because i think there are a lot of
> things in ubuntu to talk about accessibility. If you are open to listen, =
i
> will be happy to help with feedback.
> Thanks
>
> El El mi=C3=A9, 11 may 2022 a las 15:38, Monica Ayhens-Madon <
> monica.ayhens.madon@canonical.com> escribi=C3=B3:
>
>> Hello!
>>
>> I'm Monica Ayhens-Madon from the Community Team at Canonical, and I'm
>> part of our Accessibility Guild. I've had a chat with people on our kern=
el
>> team and there is an existing bug being fixed, and Speakup should be
>> available in updates soon. Please feel free to reach out to me with any
>> questions or any other accessibility issues I can raise internally.
>>
>> Cheers,
>>
>> Monica
>>
>> On Tue, May 10, 2022 at 3:19 AM John G. Heim <jheim@math.wisc.edu> wrote=
:
>>
>>> Arrgh! Speakup seems not to have been compiled into the Ubuntu
>>> Jammy/22.04 kernel. Same thing as in 21.04 and 21.10. Man! Well, I gues=
s
>>> I'll have to file a bug report ... again.
>>>
>>> --
>>> ###
>>> John G. Heim, 608-263-4189, jheim@math.wisc.edu
>>>
>>>
>

--000000000000b182b805debde6f5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Adrian, could you let me know more about which specific ve=
rsion of server? I&#39;m talking to one of my colleagues on the kernel team=
 and he needs more information.=C2=A0<div><br></div><div>And I&#39;m only o=
ne of a group of people at Canonical working on accessibility. My main job =
is to be a bridge between them and the community. Can I give the Accessibil=
ity Guild your address (and anyone else&#39;s e-mail address, if you&#39;d =
like to talk to us about how we can improve accessibility), we would like t=
o know your feedback and suggestions!</div></div><br><div class=3D"gmail_qu=
ote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, May 11, 2022 at 3:59 PM =
Adrian Orjales &lt;<a href=3D"mailto:adriorjalesvidal31@gmail.com">adriorja=
lesvidal31@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex"><div dir=3D"auto">Hello =C2=A0Monica</div><div dir=3D"a=
uto">Does this affect also ubuntu server? I&#39;ve installed Ubuntu server =
=C2=A0and no speakup module was found when i tried to load it.=C2=A0</div><=
div dir=3D"auto"><br></div><div dir=3D"auto">I&#39;m very happy to know abo=
ut you, because i think there are a lot of things in ubuntu to talk about a=
ccessibility. If you are open to listen, i will be happy to help with feedb=
ack.</div><div dir=3D"auto">Thanks</div><div><br><div class=3D"gmail_quote"=
><div dir=3D"ltr" class=3D"gmail_attr">El El mi=C3=A9, 11 may 2022 a las 15=
:38, Monica Ayhens-Madon &lt;<a href=3D"mailto:monica.ayhens.madon@canonica=
l.com" target=3D"_blank">monica.ayhens.madon@canonical.com</a>&gt; escribi=
=C3=B3:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr">Hello!<div><br></div><div>I&#39;m Monica Ayhens-Madon from the Com=
munity Team at Canonical, and I&#39;m part of our Accessibility Guild. I&#3=
9;ve had a chat with people on our kernel team and there is an existing bug=
 being fixed, and Speakup should be available in updates soon. Please feel =
free to reach out to me with any questions or any other accessibility issue=
s I can raise internally.</div><div><br></div><div>Cheers,</div><div><br></=
div><div>Monica</div></div><br><div class=3D"gmail_quote"></div><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, May 10, 2022=
 at 3:19 AM John G. Heim &lt;<a href=3D"mailto:jheim@math.wisc.edu" target=
=3D"_blank">jheim@math.wisc.edu</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">Arrgh! Speakup seems not to have been comp=
iled into the Ubuntu <br>
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

--000000000000b182b805debde6f5--

