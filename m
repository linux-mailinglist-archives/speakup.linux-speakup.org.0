Return-Path: <speakup+bounces-417-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id E02D45234E6
	for <lists+speakup@lfdr.de>; Wed, 11 May 2022 16:01:03 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=qNE9Ii6G;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 7D09B38099C; Wed, 11 May 2022 10:01:03 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 4BC0D380E0E
	for <lists+speakup@lfdr.de>; Wed, 11 May 2022 10:01:03 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 3981E380AE3; Wed, 11 May 2022 10:00:58 -0400 (EDT)
Received: from mail-il1-f175.google.com (mail-il1-f175.google.com [209.85.166.175])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 1DF4B38082A
	for <speakup@linux-speakup.org>; Wed, 11 May 2022 10:00:58 -0400 (EDT)
Received: by mail-il1-f175.google.com with SMTP id l15so1491923ilh.3
        for <speakup@linux-speakup.org>; Wed, 11 May 2022 07:00:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=lhVKe2G8ykgA0Z1XCAqHnP2ymaUEjoK9I7jmRL9huhs=;
        b=qNE9Ii6GD71dHr4skneepvm/onaQC41i6ZXFrjAZv2BywVV+PTTzlln1zlV2ws1ikq
         sau4Xk33ebtfe9ng8mSIjaCvsUaReoARA5+7o5Mn0rG9VF23EGcZGbhY1GJtWORqp3QQ
         +6sp5j6gvwfyB/DyWLY3Ry62aGt6UYRRbmlTPIZm9ezFNdx+gZl8ZcCRZM7lPfjJi5+N
         Xfc9u5p4moifmZTIC4cdPRkPY40j9V+YtxtnlM5M6qwuXz03n8EpJN/S2ZmbzBOlT1Dt
         stU6vioz6IEqyoG3WRJIi+1u9zLWTuGKTcpLvbOux9wkerij2VvJCFTVYUnO88e5ZSqe
         n50A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=lhVKe2G8ykgA0Z1XCAqHnP2ymaUEjoK9I7jmRL9huhs=;
        b=UbNWjoPeT6c+VLuFlF5qbMS0x3gXBfqYfKumzA1SxIFoB1O/Lt971MfV8RbOveaf6W
         TuzPbjBt49JegkK4+lOUm8VDwNtXcD32N+IPjtvEEH0/A6y4fotZpxk73CwF6VyPi8+Y
         Kdo6qiwpQCqsLP2o7EfKuIfd4daZ55j9LLc4uMJp90D74mz+9BnElpt/TqY34D0v12nW
         /FmPh8qr86hvY9bsUkQ9Ie+7AktJcZhYbbAn+TUB6qnFk8yH/85mgr1wbwVkqdgun/yU
         8ml3v/xJt9awuYzeZOf9fqAYrs84guk5bcILV1m3+G9aYhktJsJbXIukAZ0uOYh2aMsQ
         OtsQ==
X-Gm-Message-State: AOAM532VScYvE+VtCYH9voePOrUfmQbAWrgJhl8LtnPnq8BOefF9z+XK
	hLgrFnwvB1FGLhoicVBgmnXxKQ0h2ZFIfXQhvZ8=
X-Google-Smtp-Source: ABdhPJzjyK5haSFvokz7Aye7muOtvt653v/amCp0nCMz2GCA52yDsj0J4/Q+cINpbkdsQyenayCJj3EXyamspryFVcY=
X-Received: by 2002:a05:6e02:ca4:b0:2cd:d46a:6928 with SMTP id
 4-20020a056e020ca400b002cdd46a6928mr11930788ilg.287.1652277596455; Wed, 11
 May 2022 06:59:56 -0700 (PDT)
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
References: <81afd3ae-b377-800f-dc94-0dfe301011fe@math.wisc.edu> <CA+8tiZWEfEd_mFh_Eaj0v52m=VxdE2esLwC9zDzD3aE=DJ-z9Q@mail.gmail.com>
In-Reply-To: <CA+8tiZWEfEd_mFh_Eaj0v52m=VxdE2esLwC9zDzD3aE=DJ-z9Q@mail.gmail.com>
From: Adrian Orjales <adriorjalesvidal31@gmail.com>
Date: Wed, 11 May 2022 15:59:45 +0200
Message-ID: <CAE600uaFd06wnf8EGwBbhBg+y_-dEtKV9SqyvOx1GzRq0T97xw@mail.gmail.com>
Subject: Re: Speakup Left Out of Ubuntu kernel (again)
To: Monica Ayhens-Madon <monica.ayhens.madon@canonical.com>
Cc: "John G. Heim" <jheim@math.wisc.edu>, speakup@linux-speakup.org
Content-Type: multipart/alternative; boundary="0000000000003506ea05debcdbe4"
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

--0000000000003506ea05debcdbe4
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello  Monica
Does this affect also ubuntu server? I've installed Ubuntu server  and no
speakup module was found when i tried to load it.

I'm very happy to know about you, because i think there are a lot of things
in ubuntu to talk about accessibility. If you are open to listen, i will be
happy to help with feedback.
Thanks

El El mi=C3=A9, 11 may 2022 a las 15:38, Monica Ayhens-Madon <
monica.ayhens.madon@canonical.com> escribi=C3=B3:

> Hello!
>
> I'm Monica Ayhens-Madon from the Community Team at Canonical, and I'm par=
t
> of our Accessibility Guild. I've had a chat with people on our kernel tea=
m
> and there is an existing bug being fixed, and Speakup should be available
> in updates soon. Please feel free to reach out to me with any questions o=
r
> any other accessibility issues I can raise internally.
>
> Cheers,
>
> Monica
>
> On Tue, May 10, 2022 at 3:19 AM John G. Heim <jheim@math.wisc.edu> wrote:
>
>> Arrgh! Speakup seems not to have been compiled into the Ubuntu
>> Jammy/22.04 kernel. Same thing as in 21.04 and 21.10. Man! Well, I guess
>> I'll have to file a bug report ... again.
>>
>> --
>> ###
>> John G. Heim, 608-263-4189, jheim@math.wisc.edu
>>
>>

--0000000000003506ea05debcdbe4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hello =C2=A0Monica</div><div dir=3D"auto">Does this affec=
t also ubuntu server? I&#39;ve installed Ubuntu server =C2=A0and no speakup=
 module was found when i tried to load it.=C2=A0</div><div dir=3D"auto"><br=
></div><div dir=3D"auto">I&#39;m very happy to know about you, because i th=
ink there are a lot of things in ubuntu to talk about accessibility. If you=
 are open to listen, i will be happy to help with feedback.</div><div dir=
=3D"auto">Thanks</div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">El El mi=C3=A9, 11 may 2022 a las 15:38, Monica Ayhens=
-Madon &lt;<a href=3D"mailto:monica.ayhens.madon@canonical.com">monica.ayhe=
ns.madon@canonical.com</a>&gt; escribi=C3=B3:<br></div><blockquote class=3D=
"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding=
-left:1ex"><div dir=3D"ltr">Hello!<div><br></div><div>I&#39;m Monica Ayhens=
-Madon from the Community Team at Canonical, and I&#39;m part of our Access=
ibility Guild. I&#39;ve had a chat with people on our kernel team and there=
 is an existing bug being fixed, and Speakup should be available in updates=
 soon. Please feel free to reach out to me with any questions or any other =
accessibility issues I can raise internally.</div><div><br></div><div>Cheer=
s,</div><div><br></div><div>Monica</div></div><br><div class=3D"gmail_quote=
"></div><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On=
 Tue, May 10, 2022 at 3:19 AM John G. Heim &lt;<a href=3D"mailto:jheim@math=
.wisc.edu" target=3D"_blank">jheim@math.wisc.edu</a>&gt; wrote:<br></div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex">Arrgh! Speakup seems not to=
 have been compiled into the Ubuntu <br>
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

--0000000000003506ea05debcdbe4--

