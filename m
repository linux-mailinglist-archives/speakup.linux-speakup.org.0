Return-Path: <speakup+bounces-515-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id E1E1A591684
	for <lists+speakup@lfdr.de>; Fri, 12 Aug 2022 22:59:36 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=panix.com header.i=@panix.com header.a=rsa-sha256 header.s=panix header.b=SOlpcs32;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 85F5038476D; Fri, 12 Aug 2022 16:59:36 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 612A53847B8
	for <lists+speakup@lfdr.de>; Fri, 12 Aug 2022 16:59:36 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id E5CD5383770; Fri, 12 Aug 2022 16:59:31 -0400 (EDT)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by befuddled.reisers.ca (Postfix) with ESMTPS id D4B65383766
	for <speakup@linux-speakup.org>; Fri, 12 Aug 2022 16:59:31 -0400 (EDT)
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4M4GJL6B1Pz2lbV;
	Fri, 12 Aug 2022 16:59:30 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=panix.com; s=panix;
	t=1660337971; bh=u0IHie/+OPcHPOIal7JbwK9k4cbcaBcUSabzgpagCCg=;
	h=Date:From:To:cc:Subject:In-Reply-To:References;
	b=SOlpcs32O2uHUIfCkjuuFcAcRAkPuz3s21XxuP0B1qSB203jwwImR7DcvToUyWlP8
	 ntIFxvsXO06poF49e0Qo/5eiOniEIDlDdXl8mK4Hq1WppAzlWObzu4g8iOvGJOIkpH
	 ykpkVMR61MsXoT/vsbOP3fOSDjfzAm121LVogsZo=
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4M4GJL5rbhzcbc; Fri, 12 Aug 2022 16:59:30 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4M4GJL5ftdzcbC;
	Fri, 12 Aug 2022 16:59:30 -0400 (EDT)
Date: Fri, 12 Aug 2022 16:59:30 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: Linux for blind general discussion <blinux-list@redhat.com>, 
    Matt Campbell <mattcampbell@pobox.com>
cc: blind_linux_users <discuss@blvuug.org>, 
    "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: "Accessibility in Fedora Workstation" (fwd)
In-Reply-To: <mailman.285.1660322331.10507.blinux-list@redhat.com>
Message-ID: <17eb453f-1fce-d612-782c-c29b91d67e8@panix.com>
References: <Pine.LNX.4.64.2208112229350.1215855@server2.shellworld.net> <1e623296-a020-b22d-52cc-77e3a01c2f61@pobox.com> <mailman.285.1660322331.10507.blinux-list@redhat.com>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

speakup by default installs to a software synthesizer if one is present
like speechdispatcher.


On Fri, 12 Aug 2022, Linux for blind general discussion wrote:

> there are people using Linux in the console daily who deserve equal access.
> Second, this individual's job is to make this platform accessible...which has
> never meant blindness exclusively.
> Further this individual is no volunteer, he is being paid to have up to date
> information, not just about fedora, but for screen readers he did not even
> reference like Fenial <spelling>
> He is a single individual, That he has not seen a hardware synthesizer,  due
> to age does not mean they do not exist.
>  Is he correct that speakup default installs to a hardware synthesizer?
> I cannot imagine that being true given the work on the program.
> What bothers me most are his lack of actual qualifications, and absolute
> dismissal of what he has not experienced..as if he defines Linux usage for
> everyone.
> That attitude is dangerous, because he is educating those outside of the
> accessibility experiences, who will believe his ignorance is factual.
> he has to be expert, it is his job.
>
>
>
> On Fri, 12 Aug 2022, Matt Campbell wrote:
>
> > Hi Karen,
> >
> > I carefully read and fact-checked what Lukas wrote about Speakup. He was
> > incorrect to say that Fedora doesn't include the Speakup kernel module; the
> > stock Fedora kernel has included it for a couple of years now. However,
> > Fedora doesn't include espeakup, speechd-up, or the Speakup user-space tools
> > (e.g. speakupconf and talkwith). I also couldn't find up-to-date
> > documentation on how to use Speakup with Fedora, whether during installation
> > or afterward. Such documentation is readily available for Arch Linux, on the
> > Arch wiki. So practically speaking, his contrast between Speakup support in
> > Fedora and Arch is valid. It also doesn't surprise me that a blind person
> > who started using computers as a teenager in 2009 has never used a hardware
> > speech synthesizer, and it's undeniable that these devices are now rarely
> > used. So I don't believe he said anything that could be considered slander.
> > At worst, his knowledge about the status of Speakup in the Fedora kernel
> > configuration was out-of-date, and I'm inclined to let that go, because we
> > can't all be up-to-date about everything, especially when giving
> > off-the-cuff answers during an interview.
> >
> > More importantly, I see no reason to doubt Lukas's qualifications for the
> > job he was hired for, much less to conclude that he's merely a token blind
> > person. His personal open-source projects are available on his GitHub
> > profile <https://github.com/tyrylu?tab=repositories>. Most notably, his
> > feel-the-streets <https://github.com/tyrylu/feel-the-streets> project is an
> > accessible interface to OpenStreetMap. That project's combination of Python
> > and Rust, and its ability to run on both Windows and Linux, demonstrate the
> > tolerance for complexity that programmers have to have to make progress on
> > non-trivial real-world projects. I would want to hire him if I could. His
> > atspi2_utils <https://github.com/tyrylu/atspi2_utils> repository also
> > demonstrates familiarity with AT-SPI, the protocol that enables GUI
> > accessibility on Linux. So he seems well qualified for this job, and
> > obviously he took the initiative to get the job. I'm excited to see a young
> > blind programmer working full-time on Linux accessibility. He could bring
> > some fresh energy to this space that seemingly hasn't been there for a
> > while. I look forward to finding out what he achieves.
> >
> > Matt
> >
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>
>

