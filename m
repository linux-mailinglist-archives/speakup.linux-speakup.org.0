Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 79CFDC2F02
	for <lists+speakup@lfdr.de>; Tue,  1 Oct 2019 10:41:01 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 5982E1C4672; Tue,  1 Oct 2019 04:40:58 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="eNIOU7W/";
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 2116C1C448C;
	Tue,  1 Oct 2019 04:40:31 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 388D01C435C; Tue,  1 Oct 2019 04:40:22 -0400 (EDT)
Received: from mail-ot1-f67.google.com (mail-ot1-f67.google.com
 [209.85.210.67])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 345921C3215
 for <speakup@linux-speakup.org>; Tue,  1 Oct 2019 04:40:21 -0400 (EDT)
Received: by mail-ot1-f67.google.com with SMTP id 60so892565otu.0
 for <speakup@linux-speakup.org>; Tue, 01 Oct 2019 01:40:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Vzh04qtn9aB7Oog2dgsQClMqgjrsIRZLGHini7oURxA=;
 b=eNIOU7W/Iz2cEmm6LOU/UshBi5rviMwpUE5WS+UkFKYXCPnTSdRdjcCgxwyiwgZsBq
 AnsIFnJkcNh43Rm6iaxY1v9b/HfRijlNfmNi9/1Gm5ytcTaoQ/IIisV0HRazK/Qs/Cbp
 Qt/Cvg/IwqM17lsOnZgU/519qvv+KoE0ZRwtiF1n1Jdnz+tkXZ6eJV4oHGt1ihPcFz6X
 NKsohdJ18myU+zUsNtkuBJrIZxSrmQgFm0U5rOfPCcJtilNu8oBoT1beqeaWy4UlgPg5
 UeNP464x5mqvzNhW5/aSoCxkgwr71/ElmKjXm3E4WPOdrNj8R4hEB6jes7Tja7HlkJ3g
 jTTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Vzh04qtn9aB7Oog2dgsQClMqgjrsIRZLGHini7oURxA=;
 b=XmMo7efbBLO+3HLTi+qa8gvT54wIinClh/CcbiriSkCBHstI4VHBUjQCUgHDtHmEws
 Rg410fpo8lMogFwNo6Gmdq8OhnYdKapSTDTINCSzDZ9CjaLsUL09n1uUWr73yUgQW/F0
 eA0+QdlhjLTrnfZ/+q8VoDf3CM5lIiCalrxTNgtfSOItV/BYFp41xbWG4hA0uUbyxbeh
 hlJ8HkjMucvnVekRaVZ3QFEAJVkKm6ZJs89GKxs1crbJLAvxs2lk75qxOxcimWrhnnZH
 e8TRKQ2IW01KjxNfMbDFZ/q9ZzWwjgnYP/ip81kQDxSmd22oBk9XWLecsP+cCatP8R/S
 2AAA==
X-Gm-Message-State: APjAAAX8wpwXLch/efdOWi7f1qS9s+mnCBKjxRyYmdVQ9QaNZUd4HrsW
 4d7YMNreee3mw54X0WX63AkFiPpnxK0yKSUcjV0=
X-Google-Smtp-Source: APXvYqzFCb0Ys/CYrJ+LtkuGBMBJW9cc0BsNWk5BZtWkXiLHomiK+yI+BlxgcQm8aCcPsYmuyUG2KGGEsqJmmVvrd3o=
X-Received: by 2002:a9d:7450:: with SMTP id p16mr16312629otk.141.1569919157508; 
 Tue, 01 Oct 2019 01:39:17 -0700 (PDT)
MIME-Version: 1.0
References: <20190921102214.2983-1-okash.khawaja@gmail.com>
 <20191001062012.GA2836150@kroah.com>
In-Reply-To: <20191001062012.GA2836150@kroah.com>
From: Okash Khawaja <okash.khawaja@gmail.com>
Date: Tue, 1 Oct 2019 09:39:05 +0100
Message-ID: <CAOtcWM0aG3E0csC3NDmWR0Rqmms2zq5iG+DQ9dqT-AW4Aau=eg@mail.gmail.com>
Subject: Re: [PATCH] staging: speakup: document sysfs attributes
To: Greg KH <gregkh@linuxfoundation.org>
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
Cc: devel@driverdev.osuosl.org, Gregory Nowak <greg@gregn.net>,
 John Covici <covici@ccs.covici.com>, speakup@linux-speakup.org,
 linux-kernel@vger.kernel.org, Jiri Slaby <jslaby@suse.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

On Tue, 1 Oct 2019, 07:20 Greg Kroah-Hartman, <gregkh@linuxfoundation.org>
wrote:

> On Sat, Sep 21, 2019 at 11:22:14AM +0100, Okash Khawaja wrote:
> > Speakup exposes a set of sysfs attributes under
> > /sys/accessibility/speakup/ for user-space to interact with and
> > configure speakup's kernel modules. This patch describes those
> > attributes. Some attributes either lack a description or contain
> > incomplete description. They are marked wit TODO.
> >
> > Authored-by: Gregory Nowak <greg@gregn.net>
> > Submitted-by: Okash Khawaja <okash.khawaja@gmail.com>
>
> I just realized by neither of these are valid signed-off-by lines, so I
> can't take it :(
>
> Please resend this and sign-off on it properly, as documented in the
> kernel documentation files.
>
Apologies, I should have checked. Will send v2 today.

Thanks,
Okash
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
