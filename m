Return-Path: <speakup+bounces-536-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 1346E591CAB
	for <lists+speakup@lfdr.de>; Sat, 13 Aug 2022 23:12:51 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=panix.com header.i=@panix.com header.a=rsa-sha256 header.s=panix header.b=TjjgUUAJ;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 57994384789; Sat, 13 Aug 2022 17:12:50 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 0B3F738476D
	for <lists+speakup@lfdr.de>; Sat, 13 Aug 2022 17:12:47 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id C16C3383776; Sat, 13 Aug 2022 17:12:42 -0400 (EDT)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 81811383769
	for <speakup@linux-speakup.org>; Sat, 13 Aug 2022 17:12:42 -0400 (EDT)
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4M4tY53LR6z4PBw;
	Sat, 13 Aug 2022 17:12:41 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=panix.com; s=panix;
	t=1660425161; bh=Rw3VTLP2Xr3IktRMvIOKtupO0maY7GBunRJgblIu8Y4=;
	h=Date:From:To:cc:Subject:In-Reply-To:References;
	b=TjjgUUAJYlt8Dmod/LEFF8WLlpo1BHwANzk2/m6aWlgS/UU4hyaHAPFqsgdVwnprj
	 C67Hz7J+qmg2mZDJrQ1MVnsLDuCw5wKOdaNOTsbdPlKyvNKkGq241VDfQ8ucExrWj0
	 dUN3iLK8PzmKqq2ptsXUS1CHJBXvzq9fl+I6me1A=
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4M4tY52xgfzcbc; Sat, 13 Aug 2022 17:12:41 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4M4tY52km2zcbC;
	Sat, 13 Aug 2022 17:12:41 -0400 (EDT)
Date: Sat, 13 Aug 2022 17:12:41 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: Karen Lewellen <klewellen@shellworld.net>, K0LNY_Glenn <glenn@ervin.email>
cc: speakup@linux-speakup.org, Milan Zamazal <pdm@zamazal.org>, 
    Blinux-list@redhat.com
Subject: Re: "Accessibility in Fedora Workstation" (fwd)
In-Reply-To: <Pine.LNX.4.64.2208131618030.1255408@server2.shellworld.net>
Message-ID: <139f99c7-4d2b-9751-db8c-338eeceb2d4b@panix.com>
References: <Pine.LNX.4.64.2208112229350.1215855@server2.shellworld.net><1e623296-a020-b22d-52cc-77e3a01c2f61@pobox.com><Pine.LNX.4.64.2208121226001.1229118@server2.shellworld.net> <871qtkrs03.fsf@zamazal.org> <02e001d8af3c$0d4cdfb0$80ffa8c0@Win7VM>
 <Pine.LNX.4.64.2208131437260.1254020@server2.shellworld.net> <02fe01d8af46$46cde5e0$80ffa8c0@Win7VM> <Pine.LNX.4.64.2208131554070.1255408@server2.shellworld.net> <031101d8af50$8f3d3fb0$80ffa8c0@Win7VM>
 <Pine.LNX.4.64.2208131618030.1255408@server2.shellworld.net>
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

nvda came into existence due to the nosebleed pricing of jaws.  Apparently
people who worked in an office with jaws couldn't install it on their home
computers in many cases and nvda made it possible for those home computers
to start talking better than narrator would allow in the 2000's.


On Sat, 13 Aug 2022, Karen Lewellen wrote:

> And how often do clients get a choice about their tools?
> Support this with objective documentation, as this is your professional
> industry, if memory serves.
> I recall on more than one occasion being provided with documentation where
> jaws was the only screen reader choice a client was given.
> Know of at least one professional who turned to Linux because they never
> wanted to use Jaws or windows again.
> since rehab holds the money strings for fs, it is up to the counselors to
> prove, with numbers, that it is worth  the financial investment  for freedom
> scientific.
> My understanding is that nvda came into being because clients wanted more
> choices  than Jaws, and counselors were resistant.
>
>
>
> On Sat, 13 Aug 2022, K0LNY_Glenn wrote:
>
> > True enough, but largely, rehab people typically use Windows at work, and
> > probably at home, but they need to cater to the needs of the client.
> > If a client used Linux, I doubt that any rehab counselor would advocate that
> > the client switch to Windows, unless that was needed for a specific job.
> > In Nebraska, we purchased Jaws much more for personal use than we did for
> > work related situations.
> > So if FS made a JFL, and people were using Linux, rehab would indeed
> > purchase a JFL product.
> > Glenn
> > ----- Original Message -----
> > From: "Karen Lewellen" <klewellen@shellworld.net>
> > To: "K0LNY_Glenn" <glenn@ervin.email>
> > Cc: <speakup@linux-speakup.org>; "Milan Zamazal" <pdm@zamazal.org>;
> > <Blinux-list@redhat.com>
> > Sent: Saturday, August 13, 2022 3:01 PM
> > Subject: Re: "Accessibility in Fedora Workstation" (fwd)
> >
> >
> > there was an interesting discussion a month or so back on the blinux list
> > about how long it took completing tasks in the gui as apposed to say
> > command line,  the comments were quite informative.
> > Still, fs has never marketed largely to the end user. Instead they market
> > to the American rehab community.
> > how much market research has  the rehab community done to support the need
> > for choices?
> > How many rehab counselors support  training in Linux?
> > one comment made by the subject of this thread about poor quality speech
> > is a fine one...out of the box Linux has few speech choices.  everyone
> > brings their needs to the table there.
> >
> > if you want to get fs to care about Linux, you  need to prove there is
> > money for  them there, from their main source of income.
> >
> >
> >
> > On Sat, 13 Aug 2022, K0LNY_Glenn wrote:
> >
> >> Well since Orca seems to work on so many distros, I don't know why FS
> >> would
> >> not be able to do the same.
> >> If Jaws users could switch into Linux, it would be a real game changer,
> >> and
> >> I think with lots more Blind Linux users, we would start seeing
> >> accessibility in Linux not being a second thought.
> >> Glenn
> >> ----- Original Message -----
> >> From: "Karen Lewellen" <klewellen@shellworld.net>
> >> To: "K0LNY_Glenn" <glenn@ervin.email>
> >> Cc: <speakup@linux-speakup.org>; "Milan Zamazal" <pdm@zamazal.org>;
> >> <Blinux-list@redhat.com>
> >> Sent: Saturday, August 13, 2022 1:47 PM
> >> Subject: Re: "Accessibility in Fedora Workstation" (fwd)
> >>
> >>
> >> Well technically freedom scientific does not exist any longer, being
> >> bought
> >> by another company.
> >> Still, I can respect why they, or nvda have not created their tools for
> >> Linux.
> >> That is because as I understand it, Linux is  quite like clay. You can
> >> mold a distribution into almost anything. there are various
> >> personifications of the system, all sorts of ways and changes and options
> >> for creativity.
> >> however adaptive tools are often extensions of physical characteristics,
> >> hands, eyes, ears, brains, combinations of these.
> >> To build solid assistive tools one must have a solid  foundation as it
> >> were.  that is part of why there have needed to be so few Apple  efforts
> >> at
> >> inclusion, they  created  with, and then created in-house adaptive tools
> >> for various  populations that were built into the system.
> >> Although Microsoft did not bother until much later, in theory at least,
> >> the
> >> consistency of windows is what makes it possible for freedom or the former
> >> gw  micro or nvda to create something that can in theory  work.
> >> Floor for the furniture is somewhat solid.
> >> Just my thoughts,
> >>
> >>
> >>
> >> On Sat, 13 Aug 2022, K0LNY_Glenn wrote:
> >>
> >>> I would like to see Freedom Scientific make a Jaws For Linux.
> >>> JFL
> >>> I'd certainly pay the yearly rental fee for it, and it would bring many
> >>> more
> >>> users into Linux.
> >>> FS could, with its resources, possibly make it more robust than Orca.
> >>>
> >>> Glenn
> >>> ----- Original Message -----
> >>> From: "Milan Zamazal" <pdm@zamazal.org>
> >>> To: <speakup@linux-speakup.org>
> >>> Cc: <Blinux-list@redhat.com>
> >>> Sent: Saturday, August 13, 2022 12:08 PM
> >>> Subject: Re: "Accessibility in Fedora Workstation" (fwd)
> >>>
> >>>
> >>>>>>>> "KL" == Karen Lewellen <klewellen@shellworld.net> writes:
> >>>
> >>>    KL> What bothers me most are his lack of actual qualifications, and
> >>>    KL> absolute dismissal of what he has not experienced..as if he
> >>>    KL> defines Linux usage for everyone.  That attitude is dangerous,
> >>>    KL> because he is educating those outside of the accessibility
> >>>    KL> experiences, who will believe his ignorance is factual.  he has
> >>>    KL> to be expert, it is his job.
> >>>
> >>> Hi Karen,
> >>>
> >>> I know Lukas personally and I admire his skills and qualifications.  I
> >>> also know first hand that he is open to constructive feedback and I
> >>> believe he?d be happy to be corrected about possible technical
> >>> inaccuracies in the interview.  It may be also a good opportunity to
> >>> find out what?s possibly missing in making anybody better informed.
> >>>
> >>> As for ?absolute dismissal of what he has not experienced?, what
> >>> reasonable free software alternatives to a less or more standard desktop
> >>> with Orca and a software synthesizer can you see for a common blind user
> >>> who needs to use a fully working web browser, to read and process text
> >>> documents, to be compatible with other computer users, etc.?
> >>>
> >>> And let?s be realistic.  We celebrate every single developer hired to
> >>> improve accessibility.  This tells something about the state of the
> >>> matters.  We cannot expect that a single person will fix all the kinds
> >>> of accessibility problems in all the environments.  Lukas works at his
> >>> job focusing on certain areas currently seen there as urgent ones and I
> >>> appreciate this opportunity.  Anybody else seeing a need to work on
> >>> other areas is welcome to contribute to whatever sees fit, as I do.
> >>>
> >>> Regards,
> >>> Milan
> >>>
> >>>
> >>>
> >>>
> >>
> >>
> >
> >
> >
>

