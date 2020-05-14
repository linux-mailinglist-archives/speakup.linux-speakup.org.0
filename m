Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id D61011D30C2
	for <lists+speakup@lfdr.de>; Thu, 14 May 2020 15:12:48 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 4CBB91C0B45; Thu, 14 May 2020 09:12:48 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id D16031C0B3B;
	Thu, 14 May 2020 09:12:11 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 39F821C083C; Thu, 14 May 2020 09:12:10 -0400 (EDT)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 92E2E1C0832
 for <speakup@linux-speakup.org>; Thu, 14 May 2020 09:12:08 -0400 (EDT)
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
 by mailbackend.panix.com (Postfix) with ESMTP id 49NBlW2RwzzyZx
 for <speakup@linux-speakup.org>; Thu, 14 May 2020 09:12:07 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
 id 49NBlW285Xzcbc; Thu, 14 May 2020 09:12:07 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
 by panix1.panix.com (Postfix) with ESMTP id 49NBlW23nhzcbW
 for <speakup@linux-speakup.org>; Thu, 14 May 2020 09:12:07 -0400 (EDT)
Date: Thu, 14 May 2020 09:12:07 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Any laptop with a pc speaker?
In-Reply-To: <7a609ac5-9b6e-5bd6-9b60-421324cc0577@gmail.com>
Message-ID: <alpine.NEB.2.21.2005140909330.6123@panix1.panix.com>
References: <c33d254a-cc1d-ed09-b0ae-d759dae80dcb@mm.st>
 <7a609ac5-9b6e-5bd6-9b60-421324cc0577@gmail.com>
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

When those don't beep, a work-around if the /usr/share/sounds directory
tree is installed would be to pick a sound file to play and put the
command into /etc/rc.d/rc.local.d subdirectory if an rc.local package is
installed or available for the system.  That way even if grub won't beep
you can still know when it's time to login.

On Thu, 14 May 2020, Alexander Epaneshnikov wrote:

> Date: Thu, 14 May 2020 08:24:10
> From: Alexander Epaneshnikov <aarnaarn2@gmail.com>
> Reply-To: Speakup is a screen review system for Linux.
>     <speakup@linux-speakup.org>
> To: speakup@linux-speakup.org
> Subject: Re: Any laptop with a pc speaker?
>
> hello. some laptops will beep with integrated sound card. my lenovo g580
> definitely does it.
>
> I don?t know how to check this at the time of purchase or find out about
> it in advance.
>
> 14.05.2020 15:17, Cleverson Casarin Uliana ?????:
> > Hello all, I'd like to know if there is any laptop, or perhaps another
> > kind of mobile computer, that comes with a built-in pc speaker, and is
> > still supported by the manufacturer and resellers. I'm talking about
> > that speaker which is still available on most desktop computers, which
> > allows us to configure boot managers like grub to issue a beep when it
> > displays a menu containing more than one entry for the OSes installed
> > on the machine.
> >
> > Many thanks,
> > Cleverson
> > _______________________________________________
> > Speakup mailing list
> > Speakup@linux-speakup.org
> > http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
>
> --
> Sincerely, Alexander.
>
> _______________________________________________
> Speakup mailing list
> Speakup@linux-speakup.org
> http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
>

-- 

_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
