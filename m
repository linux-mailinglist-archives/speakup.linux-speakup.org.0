Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (tunnel25281-pt.tunnel.tserv21.tor1.ipv6.he.net [IPv6:2001:470:1c:288::2])
	by mail.lfdr.de (Postfix) with ESMTP id 92D9BDBBD
	for <lists+speakup@lfdr.de>; Mon, 29 Apr 2019 08:04:14 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id D794A1C43DC; Mon, 29 Apr 2019 02:04:13 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="A4Gvw26m";
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id CE9541C441B;
	Mon, 29 Apr 2019 02:03:33 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 915FE1C43D4; Mon, 29 Apr 2019 02:03:31 -0400 (EDT)
Received: from mail-ot1-x335.google.com (mail-ot1-x335.google.com
 [IPv6:2607:f8b0:4864:20::335])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 3E8681C4343
 for <speakup@linux-speakup.org>; Mon, 29 Apr 2019 02:03:30 -0400 (EDT)
Received: by mail-ot1-x335.google.com with SMTP id e5so7571835otk.12
 for <speakup@linux-speakup.org>; Sun, 28 Apr 2019 23:03:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=mXQx0DrbKsZmDsv66jkM44MOy/vvbMTVtGTUIlvXlpY=;
 b=A4Gvw26mVux6U+unnhlUimSS116kx7HsD3Thy0jk6D7onpxGW3kUm4tsP/R379CoVA
 UIQwia1bFyLmQ+bgwRN2pd8tVClsR3CTnjPJovyEoqvmIHLNLl27lu8EhR9ggobMAGRf
 FsswpSZpnSnmD2UAQxn7H1NopNhOTowI7r01WRM1jKTQw7zAjI5S5/Mu9a0Adal3YF9/
 TAj6sOzBjsMsomTQz+hab8W3+G6pTncnEFREyCleg7fQ69yWg/Df7+Nh18sk1QB5lIYe
 snsIV9bbvAcbmJO5pdO7fbCea3cJS1Wln9gJC7GTj3SnT0wZkdNtWHf7FsryRDVHl/RB
 zsWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=mXQx0DrbKsZmDsv66jkM44MOy/vvbMTVtGTUIlvXlpY=;
 b=O7bC0ejtlb+RAxB7no5ibdYvkOS7s/KlDvHuaUAGAjG2ay4ZCnkCXVHhIbRBBbaw7p
 riLC5kf/nbbOi64IoBMueK68uGFa6VbQY59Dwh+eeMyMIZH20YwAqgP6fi2tCuj7VlRS
 XhNJLvvoAIVl5HEpjNTkFReTRaxZqY5QrEEiHUKZI4HWyNemtAiyFptJr9YO435cylKM
 ObWjA9moacQP0jkb2Yj7NUy6UrGi0PfRNEecg7LYLH7zf69+N76v3EC8AZGzyqb898zB
 eXkmPiV3QO0yj39vPv24k7/CKajbKnksEotxLd4/FJfubZNk3CaEMZ45v+KbPGnKSoaj
 xfwQ==
X-Gm-Message-State: APjAAAU6O8Bq0S0qBLNX3P1KgEwl59mfIftVC50dU370DJq6LtilcPdJ
 s6A9id7qUq7/6lhouixr40/ojHDax93kCNzzVXKo9g==
X-Google-Smtp-Source: APXvYqw/aAXEIw3OY6AlbO/WeBhmBvNCIn7HDFVBmT5w+p1s1u0xtNl7EYEC+LqtgvesdI3wU3OiNOjIsNuTDWgyqO8=
X-Received: by 2002:a9d:459e:: with SMTP id x30mr8387203ote.233.1556517808792; 
 Sun, 28 Apr 2019 23:03:28 -0700 (PDT)
MIME-Version: 1.0
References: <7b432bc0-4164-714e-f3bd-69ec44a7116b@the-brannons.com>
 <alpine.NEB.2.21.1903160625050.548@panix1.panix.com>
 <20190428171803.7684984b@narunkot>
 <874l6iufud.fsf@cmbmachine.messageid.invalid>
 <20190428195259.6a206481@narunkot>
 <alpine.DEB.2.21.1.1904290717180.10383@willempc.meraka.csir.co.za>
In-Reply-To: <alpine.DEB.2.21.1.1904290717180.10383@willempc.meraka.csir.co.za>
From: Okash Khawaja <okash.khawaja@gmail.com>
Date: Mon, 29 Apr 2019 07:03:17 +0100
Message-ID: <CAOtcWM30j-cowyEkFryMYH3s66104F=3VY9Jmj5Xdy2=GOiPaw@mail.gmail.com>
Subject: Re: speakup and garbled text
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
X-Content-Filtered-By: Mailman/MimeDel 2.1.29
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

Thank you, will try it.

On Mon, 29 Apr 2019, 06:19 Willem van der Walt, <wvdwalt@csir.co.za> wrote:

> Try using cat on a fairly large text file.
> Regards, Willem
>
>
> On Sun, 28 Apr 2019, Okash Khawaja wrote:
>
> > [The e-mail server of the sender could not be verified (SPF Record)]
> >
> > On Sun, 28 Apr 2019 11:47:38 -0700
> > Chris Brannon <chris@the-brannons.com> wrote:
> >
> >> Okash Khawaja <okash.khawaja@gmail.com> writes:
> >>
> >>> Hi,
> >>>
> >>> Apologies for a late follow-up. I am struggling to reproduce
> >>> this. Could you explain what you mean by reading large chunk of
> >>> text?
> >>>
> >>> Here is what I did. Set up speakup with espeak. Then in
> >>> console, opened spkguide.txt with less. I allowed it to read a full
> >>> screen but couldn't find garbled text. Shall I do it with more
> >>> screenfuls?
> >>
> >> Hi,
> >> One screenful might be enough or it might not.  This particular bug
> >> seems to be really environment-dependent.  I've only seen it on
> >> multi-processor systems, or systems using hyperthreading.
> >> Just now, I tried reproducing with less, and it didn't show up until
> >> the second screen.
> > I see. I have tried it on Core i5 with 4 cores. I can try more
> > screenfuls and also test on a bigger system.
> >
> > Thank you
> > _______________________________________________
> > Speakup mailing list
> > Speakup@linux-speakup.org
> > http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
> >
> _______________________________________________
> Speakup mailing list
> Speakup@linux-speakup.org
> http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
>
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
