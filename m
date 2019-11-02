Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id A916AECDDF
	for <lists+speakup@lfdr.de>; Sat,  2 Nov 2019 10:42:17 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id B7AAA1C46CB; Sat,  2 Nov 2019 05:42:16 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="RK6H+2vQ";
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 803F01C46DE;
	Sat,  2 Nov 2019 05:41:42 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id DC1661C46DA; Sat,  2 Nov 2019 05:41:39 -0400 (EDT)
Received: from mail-ot1-x32d.google.com (mail-ot1-x32d.google.com
 [IPv6:2607:f8b0:4864:20::32d])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 6E4321C46C7
 for <speakup@linux-speakup.org>; Sat,  2 Nov 2019 05:41:33 -0400 (EDT)
Received: by mail-ot1-x32d.google.com with SMTP id b16so10435834otk.9
 for <speakup@linux-speakup.org>; Sat, 02 Nov 2019 02:41:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=O3H0hf4mz/VB2Zm6P/4xIjGx4z9PJf72oIC4+zgvBQw=;
 b=RK6H+2vQld4jdrbE9A9aIfy5CEm46hMHJ0v/YpeiGXzTYfOrQfalOqTeDQxEbhynAw
 0hUXJuC8MFbyd5Owm62/Dc89fzgP47UCj9Qo+GkMquFYcUdSZiIrwJTp2DTHmhvSK8eP
 E/TrAZO9a18TrstbNCUytQiYUSoMenM05kyc6FxQJhql4omS9ynxzVRCCXMEF7O8is+i
 l3bUrm5/UqgEpwqvefmpAV4OxBZ81YO6/FEGfXOPBAzVJS8M8x3RFsuFUtPOlX4ZRsuz
 LTZYV1PjDeBE02KISc+MhtVjdwj031uR33BBrYL8HMbSuc6YaywXDVJ+oZzN7NsD1qgd
 LXuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=O3H0hf4mz/VB2Zm6P/4xIjGx4z9PJf72oIC4+zgvBQw=;
 b=mX7Iyo2sVtC14+1MKMGS0oA06hZ6KR058uciTVzT/86XJA+WacPFGwuePpYDWVdiNQ
 ucOTmDFkQfszFjXSv4KCC/4a6Kwb5gbOFkJJiltZOPz78yXim7726XwNGVRcQO6dpim3
 mTQyi7xMjfEwDalj7+UkA/ad/4eRTTT95QyQIJSOW4KLm7UqWos6cB4MvDYUXxJy904Q
 pqYyvBEJzeEYh/XPmi2+F1QE7bAOUxGSNsVmEBnNwu5mJ6bpm2wJZ0AI0Q1FGzqfScHU
 07p0ra+AwXaIPCuIOItbJ+jD2tH2KvaEHPZFe18eHgJyPeclM+3u5OgrwuORv1TnZZce
 PeEQ==
X-Gm-Message-State: APjAAAU+1js6ujIa9VYv+EZ8vqESnVoH9ARp51ZTWy6loAl+UrgFuC/W
 7+A/qKVoxTsrqjlfviZiJk6ftAdzAnT4ybZcVzg=
X-Google-Smtp-Source: APXvYqzn5BpZsi/am4fkk65fLtwHslWAo6Mrj3k9KYOwcSO0SGuacs15OtVkefrudvS6Slmxh7F0FRJFLIiX7oPC6BE=
X-Received: by 2002:a9d:7413:: with SMTP id n19mr11632093otk.236.1572687692733; 
 Sat, 02 Nov 2019 02:41:32 -0700 (PDT)
MIME-Version: 1.0
References: <CAOtcWM0OPjtcY=rnSSn2us7kWPG7MDe=Jfh+WAVSGLjibQGUxw@mail.gmail.com>
 <20190814083104.fh7a6t4kosxpzoe3@function>
 <CAOtcWM2n8kMxROwuXrf0YzCf8zsnDSy9VbWRBQJsg3kvyqO4vQ@mail.gmail.com>
 <20190814215134.dl5pywebjghezslx@function>
 <Pine.LNX.4.64.1908141832440.26398@server2.shellworld.net>
 <20190814231603.GA5329@gregn.net>
 <CAOtcWM2K4NFHg0enkzy+EJmzouQXdwPsOZ=38ByJY+8=iRgqmg@mail.gmail.com>
 <CAOtcWM0Vt7-K_a2TF14UzExebgejek-6KY2Tz0jTDrMaugOiKg@mail.gmail.com>
 <CAOtcWM1XzfSTzz0xGrqQ21homRFiBQNfDhrqST6h1=xW3dT9Og@mail.gmail.com>
 <CAOtcWM0Tu2CL-7stgKNowaWa1nBs_bn_XwhahJxtoLuUOAeUEw@mail.gmail.com>
 <20191009222929.nudvcpvp2mnejxhx@function>
In-Reply-To: <20191009222929.nudvcpvp2mnejxhx@function>
From: Okash Khawaja <okash.khawaja@gmail.com>
Date: Sat, 2 Nov 2019 09:41:21 +0000
Message-ID: <CAOtcWM3d-3Srx1icbo+AhqC5D75PeO+gru=ONeexe1TeFiNGTA@mail.gmail.com>
Subject: Re: Linux Open Source Presentation
To: Samuel Thibault <samuel.thibault@ens-lyon.org>
X-BeenThere: speakup@linux-speakup.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <http://linux-speakup.org/cgi-bin/mailman/options/speakup>, 
 <mailto:speakup-request@linux-speakup.org?subject=unsubscribe>
List-Archive: <http://linux-speakup.org/pipermail/speakup/>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup-request@linux-speakup.org?subject=help>
List-Subscribe: <http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup>,
 <mailto:speakup-request@linux-speakup.org?subject=subscribe>
Reply-To: "Speakup is a screen review system for Linux."
 <speakup@linux-speakup.org>
Cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>,
 Gregory Nowak <greg@gregn.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

On Wed, Oct 9, 2019 at 11:29 PM Samuel Thibault
<samuel.thibault@ens-lyon.org> wrote:
>
> Hello,
>
> Okash Khawaja, le dim. 06 oct. 2019 14:47:14 +0100, a ecrit:
> > Here's link to the talk: [1]https://youtu.be/FrM-JEI8OIs
>
> Nice talk :)
>
> You did well in presenting in a better order than the slides they had
> asked so much in advance.
>
> Samuel

Thanks! Yes slides were asked too much in advance. But I learned
afterwards that people could change slides even till the last day. It
was a bit late for me to re-order them.
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
