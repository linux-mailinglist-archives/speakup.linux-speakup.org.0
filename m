Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 623B41C82B
	for <lists+speakup@lfdr.de>; Tue, 14 May 2019 14:05:35 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id A2A691C5A76; Tue, 14 May 2019 08:05:34 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="o7NMzleL";
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id B0BDF1C6B50;
	Tue, 14 May 2019 08:05:02 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id D307A1C438E; Tue, 14 May 2019 08:04:59 -0400 (EDT)
Received: from mail-ot1-x329.google.com (mail-ot1-x329.google.com
 [IPv6:2607:f8b0:4864:20::329])
 by befuddled.reisers.ca (Postfix) with ESMTPS id DCAF71C42E9
 for <speakup@linux-speakup.org>; Tue, 14 May 2019 08:04:58 -0400 (EDT)
Received: by mail-ot1-x329.google.com with SMTP id s19so14947898otq.5
 for <speakup@linux-speakup.org>; Tue, 14 May 2019 05:04:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=6Ae23Tgk6+XZpGinpFFFviAYHmbMbRJJjOIjeIJdTKU=;
 b=o7NMzleLa26n7b+EATIi6i1BOzwNJuhm1sis5RwB0pfR2K35xk1I7X1qyq2xY0sgee
 kYPGMOiDA/+BGVz2DZcC9RJYmKc0JxiCQdAnmPZvuMJIyWYrs9bTyj6Icmv2M9mb/8JD
 OaCtKFAH9G6a34WcicuGobizV6gi/UYfqF1iPNyPHKoxrpCz7To45++nzFCsucvY2sSL
 PTz0smkyVF2ljBXvbA4DI52oRPr82JDw2wiBLmO2RexaBI4lP7ToU/qXGbvwDmu5MIih
 Ix0lldveB/AqxDTLU8rbe0xtG6AQ8OwEiTYDuz5FO2zP085ENmH08650JF1gykcJ3U6T
 3UIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=6Ae23Tgk6+XZpGinpFFFviAYHmbMbRJJjOIjeIJdTKU=;
 b=jkB40uQo39ie56ZaqMsFtVnpKy8WpPjVH01/Y+dbKhFFzpLLRwaLAjpw4txh7IaIDa
 jV8PbYHFV223FGNxLu5S5h/n4KFKiXxKzyKa8PM20ktiiAkysuJ/7+9VVpTLelIiMxnP
 nuH0RDjnwZTIj0944XiwYwrD9LEyIB9JhYPpEONjJvNQLjYy5JgCRttz3M+XYMkiHb/E
 HYM3DIGZMg4Dr0LqdJUns2dx8VZYWTg2g6j22mhPDvhjNT55UKb0+gn8+w/xUzrLESVD
 NIeSEMzfRjEdoDKzP6/ZFNkzsTkgp8I/H1HjkDEJY3pTFjHDnuOWPX9WH+ealWmJgtjg
 /c9w==
X-Gm-Message-State: APjAAAW3bdLYZfdDKY6UPKZdUe0BOons31VmsKT2Ez9i4lIm3Whf/SFN
 q/gEcd1BUlUR3EdK2hEYM8W7dgGiSqIVbZtJKUOY4A==
X-Google-Smtp-Source: APXvYqxoUUzjfLHpjtxWrdTgKSpG8tMbaaM/N1EHfLp1VrnwGo8913AC5u+xF91ZulqqDkGBIL5HcPngAv0sgjX+/iM=
X-Received: by 2002:a9d:650e:: with SMTP id i14mr1818406otl.128.1557835497476; 
 Tue, 14 May 2019 05:04:57 -0700 (PDT)
MIME-Version: 1.0
References: <20190328065758.0e9e22e8@narunkot>
 <20190328072849.kzskubg7odjviggh@function>
 <20190329110435.73055c5b@narunkot> <20190329150458.tw3anliht2ygum53@function>
 <20190330000206.GA4764@gregn.net> <20190330070217.5ndkklpfvjkt5gse@function>
 <20190401092906.GB14459@rednote.net>
 <20190401122626.2qfq5x36u4rqqpua@function>
 <CAOtcWM1xNZ+g8fcLiwdaUEi_p=MBTzGRkd6oj6o1z3SH8=exbA@mail.gmail.com>
 <20190514074912.597ad058@narunkot> <20190514070431.uzd6ob2bz3re22m3@function>
 <a8d5c701-5b8f-e493-ae45-9c6d54de0561@slint.fr>
In-Reply-To: <a8d5c701-5b8f-e493-ae45-9c6d54de0561@slint.fr>
From: Okash Khawaja <okash.khawaja@gmail.com>
Date: Tue, 14 May 2019 13:04:46 +0100
Message-ID: <CAOtcWM04h8e7FJ06xQixXuL5=FT+LkmFBnpN9ze796h2F7D_tg@mail.gmail.com>
Subject: Re: Speakup in Linux Open Source Summit
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
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

On Tue, May 14, 2019 at 12:58 PM Didier Spaier <didier@slint.fr> wrote:
>
> On 14/05/2019 09:04, Samuel Thibault wrote:
> > Okash Khawaja, le mar. 14 mai 2019 07:49:12 +0100, a ecrit:
> >> Today I received confirmation that our proposal for speakup
> >> presentation at Linux Open Source Summit has been accepted :) Thanks
> >> everyone for the suggestions and comments.
>
> Good, keep up the hard work!
>
> And the next step will be to make speakup able to recognize
> characters in a framebuffer :D

Indeed :D I've been trying to replicate the issue but got distracted
by my day job.
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
