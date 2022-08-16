Return-Path: <speakup+bounces-571-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id F130E59634B
	for <lists+speakup@lfdr.de>; Tue, 16 Aug 2022 21:41:22 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 32290384813; Tue, 16 Aug 2022 15:41:22 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 1E0BA38486F
	for <lists+speakup@lfdr.de>; Tue, 16 Aug 2022 15:41:20 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 9A4F33847F1; Tue, 16 Aug 2022 15:41:18 -0400 (EDT)
Received: from nfbcal.org (ns.NFBCAL.ORG [157.22.230.125])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 30F943847E9
	for <speakup@linux-speakup.org>; Tue, 16 Aug 2022 15:41:18 -0400 (EDT)
Received: from nfbcal.org (localhost [127.0.0.1])
	by nfbcal.org (8.15.2/8.14.1-NFBNETBSD) with ESMTPS id 27GJf3f6000864
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
	Tue, 16 Aug 2022 12:41:04 -0700 (PDT)
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.102.2 at lothlorien.nfbcal.org
Received: (from buhrow@localhost)
	by nfbcal.org (8.15.2/8.12.11) id 27GJf2ce015606;
	Tue, 16 Aug 2022 12:41:02 -0700 (PDT)
Message-Id: <202208161941.27GJf2ce015606@nfbcal.org>
From: Brian Buhrow <buhrow@nfbcal.org>
Date: Tue, 16 Aug 2022 12:41:02 -0700
In-Reply-To: <947d670d-b6e5-960b-5a5e-90af25a6ec4c@math.wisc.edu>
X-Mailer: Mail User's Shell (7.2.6 beta(4.pl1)+dynamic 20000103)
To: "John G. Heim" <jheim@math.wisc.edu>, K0LNY_Glenn <glenn@ervin.email>,
        Karen Lewellen <klewellen@shellworld.net>
Subject: Re: "Accessibility in Fedora Workstation" (fwd)
Cc: Butch Bussen <butchb@shellworld.net>, "John G. Heim" <jheim@wisc.edu>,
        speakup@linux-speakup.org, Milan Zamazal <pdm@zamazal.org>,
        Blinux-list@redhat.com, buhrow@nfbcal.org
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.4.3 (nfbcal.org [127.0.0.1]); Tue, 16 Aug 2022 12:41:04 -0700 (PDT)
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

	hello.  I get that this is a list for an open source project and I am a strong advocate
for open source software -- I too make my living using and working on it every day. In fact,
I'm writing this using an open source screen reader, yasr.

	Yes, we got many of the details wrong in terms of how things have played out over time,
but I think the over all concept was more or less correct and I think the jury is still out as
to whether we were completely wrong.  With the exception of Linux and the BSD's which are
completely open source, the screen readers available today for commercial operating systems,
i.e. Windows, iOS, Mac OSX and Android, are totally dependent on the accessibility APIs the
vendors of those operating systems provide.  If the data coming out of those APIs isn't good or
if the APIs aren't performant, then the screen reader experience wil be terrible regardless of
which one is in use.  As I wrote earlier, Apple has already shut the door on third party screen
reader  development -- it's VoiceOver or the highway.

	Microsoft has made the argument that by building Narrator, they can learn how bad their
APIs are and improve them for their own use, as well as the use of the third party screen
readers.  This is a reasonable argument, as long as they're willing to continue sharing those
APIs with third party screen reader developers.  But, if they decide they want to go down the
road of Apple at some point, third party screen reader developers, and their users, are out in
the cold.  That is more true today than it was, say, 10 or 15 years ago.  

	The irony is, and I'm sure many of the folks on this list wil disagree with this
statement, that in some way, the argument we made about these concerns to Microsoft helped spur
the development of NVDA, a project I thoroughly endorse.  Microsoft has been a very large
contributor to the NVDA effort, something they did, in part, to allay our concerns, and to show
they support open source software.

	As to my comment about the jury still being out on the issue, Microsoft continues to push
Narrator forward.  And, based on discussions we've had with them recently, they are discovering
just how challenging it can be to make a screen reader work well.  It is my perception that
they are still toying with the idea of going down the Apple road in some of their internal
discussions, but that they are coming to the realization about how bad of an idea this really
is.  It is that realization that gives me hope that we will continue to have choices when it
comes to access software on Windows going forward and that the Linux companies, i.e.
Cannonical, Red Hat and the others, will decide the best way to leverage accessibility is to
continue to improve the access software  that's already out there.  

-Brian

