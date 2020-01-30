Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (tunnel25281-pt.tunnel.tserv21.tor1.ipv6.he.net [IPv6:2001:470:1c:288::2])
	by mail.lfdr.de (Postfix) with ESMTP id 6289414E3E5
	for <lists+speakup@lfdr.de>; Thu, 30 Jan 2020 21:23:18 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id E02981C2B62; Thu, 30 Jan 2020 15:23:17 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 8C82B1C2C6D;
	Thu, 30 Jan 2020 15:22:41 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 3C0851C2393; Thu, 30 Jan 2020 15:22:38 -0500 (EST)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by befuddled.reisers.ca (Postfix) with ESMTPS id C9B931C0D77
 for <speakup@linux-speakup.org>; Thu, 30 Jan 2020 15:22:34 -0500 (EST)
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
 by mailbackend.panix.com (Postfix) with ESMTP id 487sGd3qTczwVL
 for <speakup@linux-speakup.org>; Thu, 30 Jan 2020 15:22:33 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
 id 487sGd2B29zcbc; Thu, 30 Jan 2020 15:22:33 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
 by panix1.panix.com (Postfix) with ESMTP id 487sGd1cyqzcbV
 for <speakup@linux-speakup.org>; Thu, 30 Jan 2020 15:22:33 -0500 (EST)
Date: Thu, 30 Jan 2020 15:22:33 -0500
From: Jude DaShiell <jdashiel@panix.com>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: speakup on latest kernels
In-Reply-To: <9ca2e37d-f293-9b7b-80a2-177cbccfb08e@gmail.com>
Message-ID: <alpine.NEB.2.21.2001301518500.16863@panix1.panix.com>
References: <77f47396-554f-3d0a-fd9d-fc760ecb2dfe@the-brannons.com>
 <20200130053303.GA4319@gregn.net>
 <9ca2e37d-f293-9b7b-80a2-177cbccfb08e@gmail.com>
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

On slint, I used espeak with speech-dispatcher on line out with no
problem.  However when I switched to a usb port for screen reading
espeak would run for a while and randomly crash.  I could run
speaker-test after that but couldn't start espeak again.  The reason for
switching to usb is according to a good friend output is more stable in
most cases than it is with line out.

On Thu, 30 Jan 2020, ????????? ??????????? wrote:

> Date: Thu, 30 Jan 2020 15:08:58
> From: ????????? ??????????? <aarnaarn2@gmail.com>
> Reply-To: Speakup is a screen review system for Linux.
>     <speakup@linux-speakup.org>
> To: speakup@linux-speakup.org
> Subject: Re: speakup on latest kernels
>
> hello Greg. i think that crash isn't related to xorg. for me speakup hanks
> system even when x-server isn't installed or started.
>
> kernel 5.4.14 simce to rather mitigated it. now it lockups not every system
> start. but sometimes it happens.
>
> i am using intel core i7 7700k cpu. which implies that it isn't amd bug.
>
> i think that problem should be reported.
>
> if someone knows how to debug it or provide necessary logs, i am willing to do
> it.
>
>
> sincerely, Alexander.
>
> 30.01.2020 8:33, Gregory Nowak ?????:
> > I've seen it crashing when jumping from x-window to console
> > for a while now. It only happens if I attempt to use speakup review
> > commands right after the jump before any other key strokes. I first
> > noticed it in late June when I built my new ryzen 1800x system
> > running devuan Beowulf with
> > I believe a 5.2.x kernel compiled by me. I tested at that time with a
> > 5.2.x kernel on my older early core i5 laptop running devuan Ascii, but
> > couldn't reproduce it. I thought it may be another ryzen on linux
> > quirk, so didn't report it.
> >
> > I tested repeatedly hitting numpad 4 and 6 keys on devuan Beowulf with
> > a 5.4.14 kernel compiled by me, and couldn't get it to crash. So, it
> > looks like that particular crash is fixed. What processor is your
> > friend running on?
> >
> > Greg
> >
> >
> > On Wed, Jan 29, 2020 at 08:46:46AM -0800, deedra waters wrote:
> >> it still looks to be broken my roommate tested it with latest kernels and
> >> it
> >> crashed last night when he jumped from x to console.
> >> _______________________________________________
> >> Speakup mailing list
> >> Speakup@linux-speakup.org
> >> http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
> >>
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
