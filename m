Return-Path: <speakup+bounces-477-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id A63AA5728E6
	for <lists+speakup@lfdr.de>; Tue, 12 Jul 2022 23:59:08 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=canonical.com header.i=@canonical.com header.a=rsa-sha256 header.s=20210705 header.b=O5RhYO71;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 4E004380BB5; Tue, 12 Jul 2022 17:59:07 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 2C91E380A9E
	for <lists+speakup@lfdr.de>; Tue, 12 Jul 2022 17:59:07 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id A195D380B4A; Tue, 12 Jul 2022 17:58:59 -0400 (EDT)
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 3503E380967
	for <speakup@linux-speakup.org>; Tue, 12 Jul 2022 17:58:59 -0400 (EDT)
Received: from mail-lj1-f198.google.com (mail-lj1-f198.google.com [209.85.208.198])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 3B2C93F4D1
	for <speakup@linux-speakup.org>; Tue, 12 Jul 2022 21:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1657663133;
	bh=zgu8lbO5KnoOxx0m/Bun45YoKGU2tZ43ZnNlKHFM1wA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=O5RhYO71v/ENvYTYOu8R52NawKfD4XA+R+xRh4lC1fVmJqiQPEJXXhs2dw/L4lm/n
	 LLd6cW1BNnvdGGpwkl+ugOx/vIjX0bfs6ekBgKYKQ9UIw8G0hyB1Ib1o6adYvIvPpY
	 yPy2/vQM7qoXPlzM3ihrF7U4ojGoZCfScHgmV84BMaQ6jCboirZDU8FMAoyo0mUvGV
	 5eizsG9fD7tT/jeajG5iljci1JTC1e7+RH/WzppSidvCGXBGNjdhz0xCf6HEUckwhH
	 Lac97lFnYOcjkYmqtXzjsxAztSi7jerHwPb+NBatDANbkyZnQtFuDuN8QHBAv77udl
	 Nwh8H0Ubvww7Q==
Received: by mail-lj1-f198.google.com with SMTP id k3-20020a2ea283000000b0025bcd580d43so1719447lja.2
        for <speakup@linux-speakup.org>; Tue, 12 Jul 2022 14:58:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=zgu8lbO5KnoOxx0m/Bun45YoKGU2tZ43ZnNlKHFM1wA=;
        b=uVBuHwnnU4UnCegJRgtQyRYP+2IkUpJYrGrCNe6OHdwjIy4hPmHdrcj2Kmn7feZHTC
         BPSui6Q2OubigSd/gDCBeZ6whaK6p/BnZ7h8KQ+0+oFbYefVLj6JWfRX1KaUPBRjSycl
         jnCJRby8i3CDEkMSU5mRzvXN18b6iEhcmQs9VPkdGUalKp0qVOv92TZ44uyX5hT1FPKh
         uRSke76/9xX8WEO/SApy8bd1nSr62W1i+SqY5L7OCWCVBQA51uDGbPZdwSMR5mXsC6Tr
         HeSiSyb8LSvuoP2lVW0yCSBa1v2WUSNK0DaTbGvWRFOzft+iXIRGaHs8QkS+xDINHKv0
         qcwQ==
X-Gm-Message-State: AJIora/zxOCIjBrVDtyS0hNC4eEBKar+jphBxO7Q/fE/todbxSjdILrB
	ineHS04R+rJchJu+4mAW+X1Awxtp7hJkCC1nfckQO7/lYlwagc8+W1nggk8GF29nC/THWwoDr/K
	zfnqEF58l1jD1Sjm4SifhFmpr28APg1vwBp63J3ZDELn2DOYx4haKLQ==
X-Received: by 2002:a05:6512:3993:b0:489:dc87:134c with SMTP id j19-20020a056512399300b00489dc87134cmr94272lfu.88.1657663132696;
        Tue, 12 Jul 2022 14:58:52 -0700 (PDT)
X-Google-Smtp-Source: AGRyM1u5IYVmg71p0Iwf/Kq3nVdfOfnDwYB9zhFGCuxDSBnbqUTi97Vt5MjMQpK3vsz7tZVayLmP4z5lPJ3R3LBxkKE=
X-Received: by 2002:a05:6512:3993:b0:489:dc87:134c with SMTP id
 j19-20020a056512399300b00489dc87134cmr94250lfu.88.1657663132253; Tue, 12 Jul
 2022 14:58:52 -0700 (PDT)
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
References: <008101d89471$0ea72540$2bf56fc0$.ref@yahoo.com>
 <008101d89471$0ea72540$2bf56fc0$@yahoo.com> <e662a51d-bb27-ea1d-1b58-3446a13d652f@panix.com>
In-Reply-To: <e662a51d-bb27-ea1d-1b58-3446a13d652f@panix.com>
From: Monica Ayhens-Madon <monica.ayhens.madon@canonical.com>
Date: Tue, 12 Jul 2022 17:58:41 -0400
Message-ID: <CA+8tiZW-S68Q3htK9YwfHm2f5042Nt723rK_zLB2g-TNSxx_1Q@mail.gmail.com>
Subject: Re: getting speakup to work in ubuntu
To: Jude DaShiell <jdashiel@panix.com>
Cc: David <bearsfo@yahoo.com>, ubuntu-accessibility@lists.ubuntu.com, 
	speakup@linux-speakup.org
Content-Type: multipart/alternative; boundary="00000000000027d60505e3a2c68e"
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

--00000000000027d60505e3a2c68e
Content-Type: text/plain; charset="UTF-8"

Thank you for the advice, Jude!

David, were you able to get this working using Jude's tips?

Monica Ayhens-Madon
Ubuntu Community Representative, Canonical

On Sun, Jul 10, 2022 at 1:31 PM Jude DaShiell <jdashiel@panix.com> wrote:

> sysctl enable espeakup && sysctl start espeakup
> may help.
>
>
> On Sun, 10 Jul 2022, David wrote:
>
> >
> >
> > Hi there - new to ubuntu, but not with linux or speakup
> >
> >
> >
> > With sighted help, I was able to install ubuntu server 22.04 LTS
> >
> >
> >
> > Question 1: is it possible to install with speech, without sighted help?
> >
> >
> >
> > After the machine booted up, I ran this and got no message [no news is
> good
> > news?]
> >
> >
> >
> > # modprobe speakup_soft
> >
> >
> >
> > So I installed 'espeakup' which brought in a bunch of other packages:
> >
> >
> >
> > # apt-get install espeakup
> >
> >
> >
> > And I get no speech,rebooted and that did not change anything
> >
> >
> >
> > Question 2: did I missed something?
> >
> >
> >
> > Any comments/help/direction/instruction appreciated, thank you very much
> in
> > advance
> >
> >
> >
> > --David
> >
> >
> >
> >
>
>

--00000000000027d60505e3a2c68e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thank you for the advice, Jude!<div><br></div><div>David, =
were you able to get this working using Jude&#39;s tips?</div><div><br></di=
v><div>Monica Ayhens-Madon</div><div>Ubuntu Community Representative, Canon=
ical</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gm=
ail_attr">On Sun, Jul 10, 2022 at 1:31 PM Jude DaShiell &lt;<a href=3D"mail=
to:jdashiel@panix.com">jdashiel@panix.com</a>&gt; wrote:<br></div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px =
solid rgb(204,204,204);padding-left:1ex">sysctl enable espeakup &amp;&amp; =
sysctl start espeakup<br>
may help.<br>
<br>
<br>
On Sun, 10 Jul 2022, David wrote:<br>
<br>
&gt;<br>
&gt;<br>
&gt; Hi there - new to ubuntu, but not with linux or speakup<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; With sighted help, I was able to install ubuntu server 22.04 LTS<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; Question 1: is it possible to install with speech, without sighted hel=
p?<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; After the machine booted up, I ran this and got no message [no news is=
 good<br>
&gt; news?]<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; # modprobe speakup_soft<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; So I installed &#39;espeakup&#39; which brought in a bunch of other pa=
ckages:<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; # apt-get install espeakup<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; And I get no speech,rebooted and that did not change anything<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; Question 2: did I missed something?<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; Any comments/help/direction/instruction appreciated, thank you very mu=
ch in<br>
&gt; advance<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; --David<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
<br>
</blockquote></div>

--00000000000027d60505e3a2c68e--

