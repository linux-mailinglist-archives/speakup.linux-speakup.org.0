Return-Path: <speakup+bounces-422-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id DF61F5254FB
	for <lists+speakup@lfdr.de>; Thu, 12 May 2022 20:37:40 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=canonical.com header.i=@canonical.com header.a=rsa-sha256 header.s=20210705 header.b=tk/aEu/G;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id BDFF0380DEB; Thu, 12 May 2022 14:37:39 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 33F55380E2D
	for <lists+speakup@lfdr.de>; Thu, 12 May 2022 14:37:39 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 070DE380DDA; Thu, 12 May 2022 14:37:34 -0400 (EDT)
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 74F423809CD
	for <speakup@linux-speakup.org>; Thu, 12 May 2022 14:37:33 -0400 (EDT)
Received: from mail-lj1-f200.google.com (mail-lj1-f200.google.com [209.85.208.200])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id ACD183F948
	for <speakup@linux-speakup.org>; Thu, 12 May 2022 18:37:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1652380648;
	bh=YXNBRxEKbDmnwxCH2UCxnI8Rg240im+U0Drb5x+p4iY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=tk/aEu/GrJipa3ocrcp5Ty6iSUOmokjN/JK8fImjCJdK9yM1YLVeMNeTGHbVN+e80
	 sGrtzeEcBYRkU4wzfZaMnZPRsa5LGxoxspcwhNEPAihb7kGyLgwcqyfMACxVZcsL2o
	 wPA15yQIP2c0CG5e6dsoOCdydkXbPk53enHsJ7Di75GIxDPEZU5BVL6yzGVOe5Jrnx
	 eU2LVle4RlSkJVgVBjhKTqdvxfrB1mWYlBdy65U2hnE78iZ9cdvyzKrecoC4dAdDap
	 hGyrkzOPIXmVE5rLyTlzMUd0nPXQIyLBl40eV/t1GNFt094cFxGuXO4CnOuU8wQQ78
	 lzgm1T95HuQ8w==
Received: by mail-lj1-f200.google.com with SMTP id m5-20020a2e8705000000b0024f0fca4516so1861355lji.3
        for <speakup@linux-speakup.org>; Thu, 12 May 2022 11:37:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=YXNBRxEKbDmnwxCH2UCxnI8Rg240im+U0Drb5x+p4iY=;
        b=hFyK/aQouz8WIzJfr1udAUi7oc9CIiAwN+xZ50uTrfxhX6BLS0FoZplJLZ8kHCXy8L
         5brv6sPZgc2Oqcsx0Kdcn+UNAxl5qGOADT+fkinI1cZbDqUXpp45SueCvu9dRl8GlQlc
         ZJ3Hri17w3vKgKWO2Gz6fAyAf8wEWBKw0djSIMaOnInvirXkXRqBF8drEmCGenYTsJaN
         q0Y54vbMxzMHgUZTmZjPTKnfWF4TUrXgskLnNmYNeO6tACV9Cf6nh2Jk3i/D4DVeatiZ
         r9rjlbl+Kcp6qkLpOA3GCbiORSCx9LSfkK3jK1EHxjhhcj2uT44skOIShWVCcGgTlYJH
         jxLA==
X-Gm-Message-State: AOAM530QpShG3apsSp5gNx0cJu+f9CsHooZiyrL1WPUY7zkEUhZDPNn5
	3aVcBP6MQ+LpbFg2BRLGf5RwM/vLcoT7PhFLz0MG1KrhOjU9e/vIDnlxcFi5NFgwwXuEm/VdRKV
	yW0A89Y/DXPWptct3diFw2ZiY58/ilefVwLD8uzZ/15tjhyTuwtX/OQ==
X-Received: by 2002:a05:6512:1398:b0:448:bda0:99f2 with SMTP id p24-20020a056512139800b00448bda099f2mr730702lfa.681.1652380647772;
        Thu, 12 May 2022 11:37:27 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwSRVERcrVotVhQptEcV5iJZdiywELKW1Qi0x0gG+GGkbbAvJOxlIMZAcqB8eJlf9xFLrtQmBHm4KjhKf31NZw=
X-Received: by 2002:a05:6512:1398:b0:448:bda0:99f2 with SMTP id
 p24-20020a056512139800b00448bda099f2mr730684lfa.681.1652380647498; Thu, 12
 May 2022 11:37:27 -0700 (PDT)
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
 <CA+8tiZWWScjAXUZSdYRzTO5bRoxrZNXHAvZ5ovE1nW5EkqKTnA@mail.gmail.com>
 <CAE600uYKa+PaK5gch5BxobWXyy4gkLz6GufzHQ+NvyDZ4yFTUQ@mail.gmail.com>
 <CA+8tiZX5FNCPzRY6rE=otHjvv3ufX-3ybW87_TOJpG0Eui3-mQ@mail.gmail.com> <300f04b5-4b35-7d53-e39d-7ecda7f856fb@wisc.edu>
In-Reply-To: <300f04b5-4b35-7d53-e39d-7ecda7f856fb@wisc.edu>
From: Monica Ayhens-Madon <monica.ayhens.madon@canonical.com>
Date: Thu, 12 May 2022 20:37:15 +0200
Message-ID: <CA+8tiZX35GEt9vQvjDx3fCWxtim58StyHSBax-SXu-4Bqv9uFw@mail.gmail.com>
Subject: Re: Speakup Left Out of Ubuntu kernel (again)
To: "John G. Heim" <jheim@wisc.edu>
Cc: Adrian Orjales <adriorjalesvidal31@gmail.com>, "John G. Heim" <jheim@math.wisc.edu>, 
	speakup@linux-speakup.org
Content-Type: multipart/alternative; boundary="000000000000873bba05ded4d98c"
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

--000000000000873bba05ded4d98c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

One of the things the Accessibility Guild is working on is to make our
processes around accessibility stronger. When we had a devoted person for
this, we just took the process for granted, and when they left, the process
did too. And obviously, this has to be frustrating and disheartening for
Speakup users. So, long answer short - I hope this is the last time we have
to go through this, and I'll do what I can to help make that happen.

On Thu, May 12, 2022 at 5:18 PM John G. Heim <jheim@wisc.edu> wrote:

> Well, that's great but are we going to have to go through this again for
> Kinetic Kudu, 22.10? The same thing happened now for Hirsute, Impish, and
> Jammy.
>
>
> On 5/11/22 11:50, Monica Ayhens-Madon wrote:
>
> Adrian,
>
> According to my colleague, if the output of uname -r ends with 'generic'
> on the ubuntu server 22.04 LTS you're running, it will be fixed soon.
>
> (Sorry I can't test it myself - I am stuck abroad with a really minimal
> setup and this is my first day back at work after being ill. It's almost =
7
> PM here so I'll be winding down soon.)
>
> Thank you for offering to share your insight and feedback - it's very
> appreciated!
>
> Monica
>
> On Wed, May 11, 2022 at 6:05 PM Adrian Orjales <
> adriorjalesvidal31@gmail.com> wrote:
>
>> Sure, I'd be happy to help. Feel free to share my email address with you=
r
>> colleagues.
>> The version was ubuntu server 22.04 lts. I will install it again and tes=
t
>> it more, and also the desktop version to try to give my best feedback
>> possible.
>> Thanks
>>
>> El El mi=C3=A9, 11 may 2022 a las 17:15, Monica Ayhens-Madon <
>> monica.ayhens.madon@canonical.com> escribi=C3=B3:
>>
>>> Adrian, could you let me know more about which specific version of
>>> server? I'm talking to one of my colleagues on the kernel team and he n=
eeds
>>> more information.
>>>
>>> And I'm only one of a group of people at Canonical working on
>>> accessibility. My main job is to be a bridge between them and the
>>> community. Can I give the Accessibility Guild your address (and anyone
>>> else's e-mail address, if you'd like to talk to us about how we can imp=
rove
>>> accessibility), we would like to know your feedback and suggestions!
>>>
>>> On Wed, May 11, 2022 at 3:59 PM Adrian Orjales <
>>> adriorjalesvidal31@gmail.com> wrote:
>>>
>>>> Hello  Monica
>>>> Does this affect also ubuntu server? I've installed Ubuntu server  and
>>>> no speakup module was found when i tried to load it.
>>>>
>>>> I'm very happy to know about you, because i think there are a lot of
>>>> things in ubuntu to talk about accessibility. If you are open to liste=
n, i
>>>> will be happy to help with feedback.
>>>> Thanks
>>>>
>>>> El El mi=C3=A9, 11 may 2022 a las 15:38, Monica Ayhens-Madon <
>>>> monica.ayhens.madon@canonical.com> escribi=C3=B3:
>>>>
>>>>> Hello!
>>>>>
>>>>> I'm Monica Ayhens-Madon from the Community Team at Canonical, and I'm
>>>>> part of our Accessibility Guild. I've had a chat with people on our k=
ernel
>>>>> team and there is an existing bug being fixed, and Speakup should be
>>>>> available in updates soon. Please feel free to reach out to me with a=
ny
>>>>> questions or any other accessibility issues I can raise internally.
>>>>>
>>>>> Cheers,
>>>>>
>>>>> Monica
>>>>>
>>>>> On Tue, May 10, 2022 at 3:19 AM John G. Heim <jheim@math.wisc.edu>
>>>>> wrote:
>>>>>
>>>>>> Arrgh! Speakup seems not to have been compiled into the Ubuntu
>>>>>> Jammy/22.04 kernel. Same thing as in 21.04 and 21.10. Man! Well, I
>>>>>> guess
>>>>>> I'll have to file a bug report ... again.
>>>>>>
>>>>>> --
>>>>>> ###
>>>>>> John G. Heim, 608-263-4189, jheim@math.wisc.edu
>>>>>>
>>>>>>
>>>>

--000000000000873bba05ded4d98c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">One of the things the Accessibility Guild is working on is=
 to make our processes around accessibility stronger. When we had a devoted=
 person for this, we just took the process for granted, and when they left,=
 the process did too. And obviously, this has to be frustrating and dishear=
tening for Speakup users. So, long answer short - I hope this is the last t=
ime we have to go through this, and I&#39;ll do what I can to help make tha=
t happen.</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gma=
il_attr">On Thu, May 12, 2022 at 5:18 PM John G. Heim &lt;<a href=3D"mailto=
:jheim@wisc.edu">jheim@wisc.edu</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">

 =20
  <div>
    <p>Well, that&#39;s great but are we going to have to go through this
      again for Kinetic Kudu, 22.10? The same thing happened now for
      Hirsute, Impish, and Jammy.<br>
    </p>
    <p><br>
    </p>
    <div>On 5/11/22 11:50, Monica Ayhens-Madon
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">
        <div>Adrian,</div>
        <div><br>
        </div>
        According to my colleague, if the output of uname -r ends with
        &#39;generic&#39; on the ubuntu server 22.04 LTS you&#39;re running=
, it will
        be fixed soon.=C2=A0
        <div><br>
        </div>
        <div>(Sorry I can&#39;t test it myself - I am stuck abroad with a
          really minimal setup and this is my first day back at work
          after being ill. It&#39;s almost 7 PM here so I&#39;ll be winding=
 down
          soon.)</div>
        <div><br>
        </div>
        <div>Thank you for offering to share your insight and feedback -
          it&#39;s very appreciated!</div>
        <div><br>
        </div>
        <div>Monica</div>
      </div>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Wed, May 11, 2022 at 6:05
          PM Adrian Orjales &lt;<a href=3D"mailto:adriorjalesvidal31@gmail.=
com" target=3D"_blank">adriorjalesvidal31@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div dir=3D"auto">Sure, I&#39;d be happy to help. Feel free to sh=
are
            my email address with your colleagues.</div>
          <div dir=3D"auto">The version was ubuntu server 22.04 lts. I
            will install it again and test it more, and also the desktop
            version to try to give my best feedback possible.</div>
          <div dir=3D"auto">Thanks=C2=A0</div>
          <div><br>
            <div class=3D"gmail_quote">
              <div dir=3D"ltr" class=3D"gmail_attr">El El mi=C3=A9, 11 may =
2022 a
                las 17:15, Monica Ayhens-Madon &lt;<a href=3D"mailto:monica=
.ayhens.madon@canonical.com" target=3D"_blank">monica.ayhens.madon@canonica=
l.com</a>&gt;
                escribi=C3=B3:<br>
              </div>
              <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
                <div dir=3D"ltr">Adrian, could you let me know more about
                  which specific version of server? I&#39;m talking to one
                  of my colleagues on the kernel team and he needs more
                  information.=C2=A0
                  <div><br>
                  </div>
                  <div>And I&#39;m only one of a group of people at
                    Canonical working on accessibility. My main job is
                    to be a bridge between them and the community. Can I
                    give the Accessibility Guild your address (and
                    anyone else&#39;s e-mail address, if you&#39;d like to =
talk
                    to us about how we can improve accessibility), we
                    would like to know your feedback and suggestions!</div>
                </div>
                <br>
                <div class=3D"gmail_quote">
                  <div dir=3D"ltr" class=3D"gmail_attr">On Wed, May 11, 202=
2
                    at 3:59 PM Adrian Orjales &lt;<a href=3D"mailto:adriorj=
alesvidal31@gmail.com" target=3D"_blank">adriorjalesvidal31@gmail.com</a>&g=
t;
                    wrote:<br>
                  </div>
                  <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
                    <div dir=3D"auto">Hello =C2=A0Monica</div>
                    <div dir=3D"auto">Does this affect also ubuntu server?
                      I&#39;ve installed Ubuntu server =C2=A0and no speakup
                      module was found when i tried to load it.=C2=A0</div>
                    <div dir=3D"auto"><br>
                    </div>
                    <div dir=3D"auto">I&#39;m very happy to know about you,
                      because i think there are a lot of things in
                      ubuntu to talk about accessibility. If you are
                      open to listen, i will be happy to help with
                      feedback.</div>
                    <div dir=3D"auto">Thanks</div>
                    <div><br>
                      <div class=3D"gmail_quote">
                        <div dir=3D"ltr" class=3D"gmail_attr">El El mi=C3=
=A9, 11
                          may 2022 a las 15:38, Monica Ayhens-Madon &lt;<a =
href=3D"mailto:monica.ayhens.madon@canonical.com" target=3D"_blank">monica.=
ayhens.madon@canonical.com</a>&gt;
                          escribi=C3=B3:<br>
                        </div>
                        <blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
                          <div dir=3D"ltr">Hello!
                            <div><br>
                            </div>
                            <div>I&#39;m Monica Ayhens-Madon from the
                              Community Team at Canonical, and I&#39;m part
                              of our Accessibility Guild. I&#39;ve had a
                              chat with people on our kernel team and
                              there is an existing bug being fixed, and
                              Speakup should be available in updates
                              soon. Please feel free to reach out to me
                              with any questions or any other
                              accessibility issues I can raise
                              internally.</div>
                            <div><br>
                            </div>
                            <div>Cheers,</div>
                            <div><br>
                            </div>
                            <div>Monica</div>
                          </div>
                          <br>
                          <div class=3D"gmail_quote">
                            <div dir=3D"ltr" class=3D"gmail_attr">On Tue,
                              May 10, 2022 at 3:19 AM John G. Heim &lt;<a h=
ref=3D"mailto:jheim@math.wisc.edu" target=3D"_blank">jheim@math.wisc.edu</a=
>&gt;
                              wrote:<br>
                            </div>
                            <blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x">Arrgh!
                              Speakup seems not to have been compiled
                              into the Ubuntu <br>
                              Jammy/22.04 kernel. Same thing as in 21.04
                              and 21.10. Man! Well, I guess <br>
                              I&#39;ll have to file a bug report ... again.=
<br>
                              <br>
                              -- <br>
                              ###<br>
                              John G. Heim, 608-263-4189, <a href=3D"mailto=
:jheim@math.wisc.edu" target=3D"_blank">jheim@math.wisc.edu</a><br>
                              <br>
                            </blockquote>
                          </div>
                        </blockquote>
                      </div>
                    </div>
                    <br>
                  </blockquote>
                </div>
              </blockquote>
            </div>
          </div>
        </blockquote>
      </div>
    </blockquote>
  </div>

</blockquote></div>

--000000000000873bba05ded4d98c--

