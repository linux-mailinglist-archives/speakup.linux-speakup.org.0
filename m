Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 3311BECDE6
	for <lists+speakup@lfdr.de>; Sat,  2 Nov 2019 10:55:31 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id B18D71C46D1; Sat,  2 Nov 2019 05:55:30 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="B+w3+xmj";
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 9BBDE1C46F0;
	Sat,  2 Nov 2019 05:54:18 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 3B0F41C46CB; Sat,  2 Nov 2019 05:54:16 -0400 (EDT)
Received: from mail-oi1-x236.google.com (mail-oi1-x236.google.com
 [IPv6:2607:f8b0:4864:20::236])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 432031C46C7
 for <speakup@linux-speakup.org>; Sat,  2 Nov 2019 05:54:14 -0400 (EDT)
Received: by mail-oi1-x236.google.com with SMTP id s71so10193106oih.11
 for <speakup@linux-speakup.org>; Sat, 02 Nov 2019 02:54:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=Nm3ZUjLwtcf6LpCUwVVpZwg/zvSMAT5s3bcDxE9z+vU=;
 b=B+w3+xmj4JYxjaAaPRCk7HNOZp537oGC3Pj5fD4xb3IIcsUL3Tfw0FFFqyXRbGZToA
 IJnSBtABIJOz6n7P9TFezbHKKXeLONtdLFDqSmFJa8BSifMxmevlwwyt8eXSdcVRdU7A
 qyOpTs/rhIvm5EdkQC74IqBGZWuj+3iQEAj4MxOpmxtM87aYvYaTJ5RwMRzaR74G+/B4
 IdfNFb1NSr+rA59J0yXPPuqPfYIP+dRgNTDXMkCodiffyy13w8FIpDUkKPOk6R0nqMbG
 TxhzFxEZ1nBjYR3mOg7EJOBONLA85NF3fVl/Zn7uB55KBqCxdWKxq1sc831glLrH9v61
 FB7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=Nm3ZUjLwtcf6LpCUwVVpZwg/zvSMAT5s3bcDxE9z+vU=;
 b=eZVyGqNeK0JFJj7XQbJzcyMJa+IrG+9polaFraekVSOuJQmvnkYEHB6onLuUJZ7IPF
 ZUxWH2QsN19Qq1UP6mfr4rytee2b8MB1CjwrMGIhsVeFz2DSY6gS9Kll0ID41xS5qCYY
 CaTKzpH0rIMX4+WzpQsR2wEdXYRA7YbHvnm2xyNC4B59He+r5+SJd8a6J6MLvMeeEAu1
 TxAgtnOxc1cX0pSZVa1FyZ24vTEnbUUmfNsJoaK0wnNvtle63hk+3hgDLwL6wCg+ngSN
 h/KGWCy7jI6hZso6YrLS7puk/VTIaG65gqWudJ24JHutChThWvG4O0W2rBd+Fu9RKGFh
 bk9g==
X-Gm-Message-State: APjAAAVZiC6DVdiGIB29u7qdMGAH8MlXBhgogQ50Q5iLVXtCkPEanv7V
 j+Bj9famI21Clbi/QKhgcexdC13VVMRn/gmDyo+PtA8w
X-Google-Smtp-Source: APXvYqw+a2s+ijjV7T7hiUu3Au+ksvGVUehgzdZgeBwbyqSqpibvLstpsJT4W4quFZJ0rnAaFktnHcQ1zUnwxPO1Vpo=
X-Received: by 2002:aca:5b02:: with SMTP id p2mr116241oib.94.1572688452962;
 Sat, 02 Nov 2019 02:54:12 -0700 (PDT)
MIME-Version: 1.0
References: <alpine.DEB.2.21.1910061248420.25696@befuddled.reisers.ca>
In-Reply-To: <alpine.DEB.2.21.1910061248420.25696@befuddled.reisers.ca>
From: Okash Khawaja <okash.khawaja@gmail.com>
Date: Sat, 2 Nov 2019 09:54:01 +0000
Message-ID: <CAOtcWM0FFP3z4jUBxmVKJFyvbXTmimWKjh7=H9yx89U=OpzaPw@mail.gmail.com>
Subject: Re: Okash's talk
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

On Wed, Oct 9, 2019 at 9:41 PM Kirk Reiser <kirk@reisers.ca> wrote:
>
> Hi Okash er al: I want to thank you for that very interesting talk. I
> stupidly deleted your original message and link before listening to
> the talk so I couldn't reply to that message because it hasn't shown
> up in the archives yet.
>
> Could you please give us some info on how the talk was received? How
> many folks attended? Were there any blinks/users in attendence?
>
> I believe you gave a very good overview of speakup. I certainly enjoyed
> the talk and am glad to have heard your voice. That's one of those
> blink things you know! 'grin'
>
> Once again thank you very much.
>    Kirk

Thanks Kirk. Means a lot. I believe the talk was received well. People
seemed to be listening rather than typing on their laptops or playing
with their mobiles.

I didn't ask how many speakup users were in the audience. In general I
should have made it more interactive. I think that was a mistake. This
talk was late on Friday afternoon - the last day of summit. Attendance
in all talks at that time was relatively low because people preferred
to take a look around the town before their journeys back later in the
evening.

In general I hope we can share this talk with anyone interested in
contributing to speakup. It can help them in ramp up.

Greg N, as Samuel said, time had run out so there wasn't much time for
more questions. There was a technical glitch with presentation
equipment which took a few minutes. Also, I could have managed time
better :)
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
