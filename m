Return-Path: <speakup+bounces-428-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id E1A695264F8
	for <lists+speakup@lfdr.de>; Fri, 13 May 2022 16:43:54 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=canonical.com header.i=@canonical.com header.a=rsa-sha256 header.s=20210705 header.b=qLOcIG5y;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 7FB1F380DFE; Fri, 13 May 2022 10:43:54 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 6003E380ACB
	for <lists+speakup@lfdr.de>; Fri, 13 May 2022 10:43:54 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 7F1B33809C3; Fri, 13 May 2022 10:43:46 -0400 (EDT)
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 2A33C38094D
	for <speakup@linux-speakup.org>; Fri, 13 May 2022 10:43:46 -0400 (EDT)
Received: from mail-lf1-f72.google.com (mail-lf1-f72.google.com [209.85.167.72])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id B6A2A3F336
	for <speakup@linux-speakup.org>; Fri, 13 May 2022 14:43:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1652453024;
	bh=DjSRLqQptmBSo8iExLZVeUc8tvQ0H3igBBRHBDjdIco=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=qLOcIG5y92oX3fBbS3ra3/StQULlG6GWoQDBWJsM6KcScyVPdZ4ponTJ44aZCj06u
	 AlzxB/zHC6t+oFxqAoOHQ+8hvYoc78DoVWQapduPVgBaMN3cD0lrHMjK9997M+HoEt
	 xBwx1kPDc8LBWxOSwAsPtbfUsnxVVZWYKcN8RCxOeo8DXFHozGBmkqhZE+2xlKsJ7X
	 WrHWit2xJWZK4lQSu2fFNI8h7AzbrvFMpZkBcvaU+vHL5trS1V8AKDZ5d1t2if2/AX
	 C8FgHQ5fjSVzWn03NJJaGP3KTn/57Il7oF6rH8uio7UBHpNU0ffwl4X9PPLC24S7SA
	 SIR5Q6rrtz2WA==
Received: by mail-lf1-f72.google.com with SMTP id w34-20020a0565120b2200b0044adfdd1570so3634659lfu.23
        for <speakup@linux-speakup.org>; Fri, 13 May 2022 07:43:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=DjSRLqQptmBSo8iExLZVeUc8tvQ0H3igBBRHBDjdIco=;
        b=1GjOwq6KYUb9zFenEAPs05813bjiR6CfykcLaYYM6cnM1nE3t6lwzKiHKMQy6nPfLP
         X+GCVgvNLadKPB/ttJ6/l05st8+Aren5WH1Mcpy6pIjyS+I7ORc5uz892HoN07E2q5i9
         GGPw/Zf5poXeU+7y73vztEit8VqQIF69wg7Ud35gjlu7iUAQ6ueoQobcs6Ymek5QUoeo
         dfYwN5lIDjkMKtN4/ttSs4tmCl4yMldPU2N5Kgt4JkKygIY7Bv+4Fk4GoJbaeV5znqDM
         SowwLt8rZXFZ7/1zcKEMtrHGRhDMi966IydzJ0CYlEhc+L9RwN93gxLjLwFrhUt+nZT+
         yO1g==
X-Gm-Message-State: AOAM532afiHqJBcnoTyILX/8/dn6QRIoWXq/M4PVFkOWGuoAa9TV3GfX
	AL9SZoDsItW3eBsxGcOEwC2U9UpSPE7NiHKInhpCSpyLJzhfQyc5QWWixxGVCdIruFgmOW4lhFk
	90LD/YMMzuYiKH0WZLOEKDjX5GxtP1YMuBUpIZX+EgJadGEVWww8nbw==
X-Received: by 2002:a05:6512:12cc:b0:473:b2a7:661d with SMTP id p12-20020a05651212cc00b00473b2a7661dmr3661726lfg.407.1652453020623;
        Fri, 13 May 2022 07:43:40 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwitlgV8V0+j+AkOgJj85l7twUDXbeOOEnRszaOqBtI3QNaW3fg8HhGgM7M3aLGUIHGC37e7PI9avJc9iXZBDU=
X-Received: by 2002:a05:6512:12cc:b0:473:b2a7:661d with SMTP id
 p12-20020a05651212cc00b00473b2a7661dmr3661663lfg.407.1652453019195; Fri, 13
 May 2022 07:43:39 -0700 (PDT)
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
 <CA+8tiZWWScjAXUZSdYRzTO5bRoxrZNXHAvZ5ovE1nW5EkqKTnA@mail.gmail.com> <20220511165940.wnuzgcsvjcksdpl2@begin>
In-Reply-To: <20220511165940.wnuzgcsvjcksdpl2@begin>
From: Monica Ayhens-Madon <monica.ayhens.madon@canonical.com>
Date: Fri, 13 May 2022 16:43:28 +0200
Message-ID: <CA+8tiZVwdQeTVyp3Rbpbkf_02_-nO+Gr=ktmKb-KYuR6ZXCOHQ@mail.gmail.com>
Subject: Re: Speakup Left Out of Ubuntu kernel (again)
To: Samuel Thibault <samuel.thibault@aquilenet.fr>
Cc: Adrian Orjales <adriorjalesvidal31@gmail.com>, "John G. Heim" <jheim@math.wisc.edu>, 
	speakup@linux-speakup.org
Content-Type: multipart/alternative; boundary="00000000000037b46c05dee5b378"
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

--00000000000037b46c05dee5b378
Content-Type: text/plain; charset="UTF-8"

Samuel,

I'm having our support department research who is the owner of the list,
because I have a feeling it may be someone who is either no longer with the
company or active on the project. I did reach out to Milton about the issue
regarding opening files with the super key in Libre Office. By next week, I
hope we have ownership of the list fix so more of the guild members can
join and make the list more responsive and more of a central hub for
organizing.

Cheers,

Monica

On Wed, May 11, 2022 at 6:59 PM Samuel Thibault <
samuel.thibault@aquilenet.fr> wrote:

> Hello,
>
> Monica Ayhens-Madon, le mer. 11 mai 2022 17:14:33 +0200, a ecrit:
> > And I'm only one of a group of people at Canonical working on
> accessibility. My
> > main job is to be a bridge between them and the community. Can I give the
> > Accessibility Guild your address (and anyone else's e-mail address, if
> you'd
> > like to talk to us about how we can improve accessibility), we would
> like to
> > know your feedback and suggestions!
>
> Are they subscribed to the
> ubuntu-accessibility@lists.ubuntu.com
> mailing list? Now and then there are requests there which don't seem to
> be getting answered. For instance
>
> https://lists.ubuntu.com/archives/ubuntu-accessibility/2022-May/007752.html
>
> https://lists.ubuntu.com/archives/ubuntu-accessibility/2021-October/007738.html
>
> Samuel
>

--00000000000037b46c05dee5b378
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Samuel,<div><br></div><div>I&#39;m having our support depa=
rtment research who is the owner of the list, because I have a feeling it m=
ay be someone who is either no longer with the company or active on the pro=
ject. I did reach out to Milton about the issue regarding opening files wit=
h the super key in Libre Office. By next week, I hope we have ownership of =
the list fix so more of the guild members can join and make the list more r=
esponsive and more of a central hub for organizing.</div><div><br></div><di=
v>Cheers,</div><div><br></div><div>Monica</div></div><br><div class=3D"gmai=
l_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, May 11, 2022 at 6:59=
 PM Samuel Thibault &lt;<a href=3D"mailto:samuel.thibault@aquilenet.fr">sam=
uel.thibault@aquilenet.fr</a>&gt; wrote:<br></div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex">Hello,<br>
<br>
Monica Ayhens-Madon, le mer. 11 mai 2022 17:14:33 +0200, a ecrit:<br>
&gt; And I&#39;m only one of a group of people at Canonical working on acce=
ssibility. My<br>
&gt; main job is to be a bridge between them and the community. Can I give =
the<br>
&gt; Accessibility Guild your address (and anyone else&#39;s e-mail address=
, if you&#39;d<br>
&gt; like to talk to us about how we can improve accessibility), we would l=
ike to<br>
&gt; know your feedback and suggestions!<br>
<br>
Are they subscribed to the<br>
<a href=3D"mailto:ubuntu-accessibility@lists.ubuntu.com" target=3D"_blank">=
ubuntu-accessibility@lists.ubuntu.com</a><br>
mailing list? Now and then there are requests there which don&#39;t seem to=
<br>
be getting answered. For instance<br>
<br>
<a href=3D"https://lists.ubuntu.com/archives/ubuntu-accessibility/2022-May/=
007752.html" rel=3D"noreferrer" target=3D"_blank">https://lists.ubuntu.com/=
archives/ubuntu-accessibility/2022-May/007752.html</a><br>
<a href=3D"https://lists.ubuntu.com/archives/ubuntu-accessibility/2021-Octo=
ber/007738.html" rel=3D"noreferrer" target=3D"_blank">https://lists.ubuntu.=
com/archives/ubuntu-accessibility/2021-October/007738.html</a><br>
<br>
Samuel<br>
</blockquote></div>

--00000000000037b46c05dee5b378--

