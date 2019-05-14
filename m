Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 457A71C36A
	for <lists+speakup@lfdr.de>; Tue, 14 May 2019 08:50:56 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 10F841C438E; Tue, 14 May 2019 02:50:55 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="cqt0aCq6";
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id C0A961C6B3D;
	Tue, 14 May 2019 02:49:35 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 411F81C438E; Tue, 14 May 2019 02:49:32 -0400 (EDT)
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com
 [IPv6:2a00:1450:4864:20::434])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 9141A1C4312
 for <speakup@linux-speakup.org>; Tue, 14 May 2019 02:49:30 -0400 (EDT)
Received: by mail-wr1-x434.google.com with SMTP id l2so17776684wrb.9
 for <speakup@linux-speakup.org>; Mon, 13 May 2019 23:49:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=KoOuw+NUQTzz2HeUW8FriS2oqyp/nYvbWxj7Kvpj2yM=;
 b=cqt0aCq6qz2GFwFYvzkS6uH9WA5u0LndwguEJ/vpeXARjaBNb4E51LjKclrJdX9Z+7
 UFn+gB/pQARET3ILGEvz1j1mVxltysJ0h+qz2543BlbV76U+kbewFFL71TrC/n2RzSO3
 fvlyidee4o7C38OBWx8nj+eK/8Yv1vBqLiB57USBfcEST4OGyYGJqmYDLIas06Z7TSic
 yjc/MTSjFNqSbW1Mu/h9zlttj42CjKdLdUtOOziApqSsdpXi6uLkj0/5OSXBrN3F9fab
 E50b8qPiuxpCs+mhgY7bqEIrKkgD/xjO8DUORHMDdGnwPe1NSPOovG8Dc0U5CcsgZaX0
 /B+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=KoOuw+NUQTzz2HeUW8FriS2oqyp/nYvbWxj7Kvpj2yM=;
 b=su2Hf5xSnKFzneByfalxwFXVyvFzWPmHqPhDnOT7lZLW2zySHM6ZMNLhtZRJr3vHQx
 5jufO835OrJR1gQ1y3Heeh/8H4SlFp6NR3rc+VW7Zo5j7QNMqkAZddADlj8GvAza4vfu
 Dv/P3i4lGrnqNd3z1skCIkGA3pBIdvLsp7Z+1RK6gtSOgZcGizrCwd+JWGaH2IH7pA7R
 sHrY5Wp7NgbOTh/9cS0DHWwoR5mui5LYEULQ1zrrHcP1hrRq3ZjClDNpINlWwDHcpTSE
 +Db5Jpwp7X+zPFTVQIBsqNMVNgEZd9BPhbYdbrWA8BXtVGtXvjcqOb5KOyEOM5XzmjGz
 nFaQ==
X-Gm-Message-State: APjAAAUykp+bAyFDaYej78e8ltgiSnWaFOQXFHGRdmq5cXGgSZGxTm3t
 eX4l9vr+HE6S07VdIQFUAy77RWTK
X-Google-Smtp-Source: APXvYqyEXjTwkNvZMixk0OCJxxVL+8eEWH/a9/4s0G3sbxn2QBF9rWcF/j/tH4lawZo2VQmtpL2InQ==
X-Received: by 2002:adf:b611:: with SMTP id f17mr21046335wre.162.1557816567902; 
 Mon, 13 May 2019 23:49:27 -0700 (PDT)
Received: from narunkot ([94.10.144.249])
 by smtp.gmail.com with ESMTPSA id o130sm1377031wmo.43.2019.05.13.23.49.26
 for <speakup@linux-speakup.org>
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 13 May 2019 23:49:27 -0700 (PDT)
Date: Tue, 14 May 2019 07:49:12 +0100
From: Okash Khawaja <okash.khawaja@gmail.com>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Speakup in Linux Open Source Summit
Message-ID: <20190514074912.597ad058@narunkot>
In-Reply-To: <CAOtcWM1xNZ+g8fcLiwdaUEi_p=MBTzGRkd6oj6o1z3SH8=exbA@mail.gmail.com>
References: <20190328065758.0e9e22e8@narunkot>
 <20190328072849.kzskubg7odjviggh@function>
 <20190329110435.73055c5b@narunkot>
 <20190329150458.tw3anliht2ygum53@function>
 <20190330000206.GA4764@gregn.net>
 <20190330070217.5ndkklpfvjkt5gse@function>
 <20190401092906.GB14459@rednote.net>
 <20190401122626.2qfq5x36u4rqqpua@function>
 <CAOtcWM1xNZ+g8fcLiwdaUEi_p=MBTzGRkd6oj6o1z3SH8=exbA@mail.gmail.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

On Tue, 2 Apr 2019 00:44:26 +0100
Okash Khawaja <okash.khawaja@gmail.com> wrote:

> On Mon, 1 Apr 2019, 13:26 Samuel Thibault,
> <samuel.thibault@ens-lyon.org> wrote:
> 
> > Janina Sajka, le lun. 01 avril 2019 05:29:06 -0400, a ecrit:  
> > > Samuel Thibault writes:  
> > > > Gregory Nowak, le ven. 29 mars 2019 17:02:07 -0700, a ecrit:  
> > > > > > people would either plug an
> > > > > > external device or even put an ISA card in their computer,
> > > > > > which  
> > gives  
> > > > > > them an additional serial port.  
> > > > >
> > > > > The ISA cards also provided an internal speech synthesizer.  
> > > >
> > > > Right, that's what I meant :)
> > > > The "additional serial port" was meant from a programming point
> > > > of  
> > view.  
> > >
> > > Is the soft synth device similarly a serial device even today?  
> >
> > No, it never has. The data is directly fed to userland.
> >  
> > > I ask because I don't know, but also because the abstract should
> > > probably note that most users today use software speech.  
> >
> > Indeed.  
> 
> 
> Thanks everyone for your input! I have submitted the proposal.
> Response will come on 13 May.
> 
> Best regards,
> Okash

Hi,

Today I received confirmation that our proposal for speakup
presentation at Linux Open Source Summit has been accepted :) Thanks
everyone for the suggestions and comments.

It's also worth pointing out that we don't seem to be far from
completing requirements for inclusion in main kernel. So overall the
picture isn't too bad :)

Cheers!
Okash
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
