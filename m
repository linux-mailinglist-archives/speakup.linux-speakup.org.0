Return-Path: <speakup+bounces-897-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id AF95564387D
	for <lists+speakup@lfdr.de>; Mon,  5 Dec 2022 23:56:30 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 46966382BE1; Mon,  5 Dec 2022 17:56:30 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 321AD382AD8
	for <lists+speakup@lfdr.de>; Mon,  5 Dec 2022 17:56:30 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 3B220382ADB; Mon,  5 Dec 2022 17:56:25 -0500 (EST)
Received: from smtprelay.b.hostedemail.com (smtprelay0197.b.hostedemail.com [64.98.42.197])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 2A084382A88
	for <speakup@linux-speakup.org>; Mon,  5 Dec 2022 17:56:25 -0500 (EST)
Received: from omf10.b.hostedemail.com (10.5.19.248.rfc1918.com [10.5.19.248])
	by smtprelay03.b.hostedemail.com (Postfix) with ESMTP id 588688D62A13;
	Mon,  5 Dec 2022 22:56:24 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: glenn@ervin.email) by omf10.b.hostedemail.com (Postfix) with ESMTPA id CF7C33FF6;
	Mon,  5 Dec 2022 22:56:23 +0000 (UTC)
Message-ID: <030401d908fc$a924ead0$88ffa8c0@Win7VM>
Reply-To: "K0LNY_Glenn" <glenn@ervin.email>
From: "K0LNY_Glenn" <glenn@ervin.email>
To: "Jude DaShiell" <jdashiel@panix.com>,
	<speakup@linux-speakup.org>,
	"Didier Spaier" <didier@slint.fr>
References: <013f01d9074d$551a6650$88ffa8c0@Win7VM> <Y4wZa/0WtgPE3nyH@gregn.net> <017701d90794$4d7619c0$88ffa8c0@Win7VM> <Y4wcSYOKzFn/yIeh@gregn.net> <018001d90797$3bf04b00$88ffa8c0@Win7VM> <Y4woAGJEUf430mTc@gregn.net> <018701d9079f$53126810$88ffa8c0@Win7VM> <5ab5197f-f3c3-c7f1-b497-0e702525d2cd@slint.fr> <01a801d907fd$bb39fbc0$88ffa8c0@Win7VM> <3137b9f2-ce47-ce5-955b-36d5d06b7b71@panix.com> <024b01d90849$8e685fa0$88ffa8c0@Win7VM> <d0962b6-b940-1e30-4a76-ca5362b19a6f@panix.com> <02b201d908bc$51231db0$88ffa8c0@Win7VM> <b09186d2-5221-478-43dd-3c85b236516@panix.com> <02de01d908e9$bbaf4b90$88ffa8c0@Win7VM> <37169af6-5d45-5bcf-2770-8c23ed37f02e@panix.com> <02e301d908ea$7ef69900$88ffa8c0@Win7VM> <40789e6d-d4d-8250-2f54-ba2d63d52be@panix.com> <02f301d908f4$d6abdc50$88ffa8c0@Win7VM> <7a4ffbe-a86-80ac-c2f4-52c753e549fe@panix.com>
Subject: Re: change eSpeak Default Voice
Date: Mon, 5 Dec 2022 16:55:23 -0600
Organization: Home
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain;
	charset="iso-8859-1"
Content-Transfer-Encoding: 7bit
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2900.2180
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.2180
X-Rspamd-Server: rspamout01
X-Rspamd-Queue-Id: CF7C33FF6
X-Spam-Status: No, score=-2.60
X-Stat-Signature: b5s3hqubew4ytjb34c37m7irzzo76yws
X-Session-Marker: 676C656E6E40657276696E2E656D61696C
X-Session-ID: U2FsdGVkX19kGwLqVNtxtkXPFNj5x37vk88bK25c4ro=
X-HE-Tag: 1670280983-350752
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

After the 1.5, it also listed the word data, but not a path.
Glenn
----- Original Message ----- 
From: "Jude DaShiell" <jdashiel@panix.com>
To: "K0LNY_Glenn" <glenn@ervin.email>; <speakup@linux-speakup.org>; "Didier 
Spaier" <didier@slint.fr>
Sent: Monday, December 05, 2022 4:53 PM
Subject: Re: change eSpeak Default Voice


On slint, I got espeak-ng version 1.51 and a pointer to
/usr/share/espeak-ng-data/ which has all of the voice stuff in it in
subdirectories.  The next directory below that is mb and below mb are
other directories.  Voices may have to be compiled in order to use them
that is one of the options on espeak-ng.  I do not know how to compile a
voice and set it as default though.  The United states has mb-us1 mb-us2
and mb-us3 in that mb directory.



Jude <jdashiel at panix dot com> "There are four boxes to be used in
defense of liberty:
 soap, ballot, jury, and ammo. Please use in that order."
-Ed Howdershelt (Author, 1940)

.

On Mon, 5 Dec 2022, K0LNY_Glenn wrote:

> Jude,
> I just installed espeak-ng and the version is 1.50.
> Debian 11.5
>
> Glenn
> ----- Original Message -----
> From: "Jude DaShiell" <jdashiel@panix.com>
> To: "K0LNY_Glenn" <glenn@ervin.email>; <speakup@linux-speakup.org>; 
> "Didier
> Spaier" <didier@slint.fr>
> Sent: Monday, December 05, 2022 3:07 PM
> Subject: Re: change eSpeak Default Voice
>
>
> No, not really.  It's all dependent on what packages the distribution
> builders decide to put in their distributions.  Even today not all linux
> distributions use systemd that's a distribution builder choice.
> Preferable system for gentoo is openrc which I've never used.
>
>
> Jude <jdashiel at panix dot com>
> "There are four boxes to be used in defense of liberty:
>  soap, ballot, jury, and ammo. Please use in that order."
> -Ed Howdershelt (Author, 1940)
>
> .
>
> On Mon, 5 Dec 2022, K0LNY_Glenn wrote:
>
> > Odd that it came with 11.5 Bullseye.
> > Glenn
> >
> > ----- Original Message -----
> > From: "Jude DaShiell" <jdashiel@panix.com>
> > To: "K0LNY_Glenn" <glenn@ervin.email>; <speakup@linux-speakup.org>;
> > "Didier
> > Spaier" <didier@slint.fr>
> > Sent: Monday, December 05, 2022 2:44 PM
> > Subject: Re: change eSpeak Default Voice
> >
> >
> > Hi Glen,
> >
> > I'm not sure that version of espeak can change voices.  That's an old
> > version of espeak.
> >
> >
> >
> > Jude <jdashiel at panix dot com> "There are four boxes to be used in
> > defense of liberty:
> >  soap, ballot, jury, and ammo. Please use in that order."
> > -Ed Howdershelt (Author, 1940)
> >
> > .
> >
> > On Mon, 5 Dec 2022, K0LNY_Glenn wrote:
> >
> > > Hi Jude,
> > > espeak-ng --version says something like bad command or filename
> > > and just espeak says:
> > > 1.48.15
> > > Glenn
> > > ----- Original Message -----
> > > From: "Jude DaShiell" <jdashiel@panix.com>
> > > To: "K0LNY_Glenn" <glenn@ervin.email>; <speakup@linux-speakup.org>;
> > > "Didier
> > > Spaier" <didier@slint.fr>
> > > Sent: Monday, December 05, 2022 1:58 PM
> > > Subject: Re: change eSpeak Default Voice
> > >
> > >
> > > Try espeak --version and also try espeak-ng --version.  On slint, when
> > > you
> > > do that espeak-ng comes up both times as the actual software in use.
> > >
> > >
> > >
> > > Jude <jdashiel at panix dot com> "There are four boxes to be used in
> > > defense of liberty:
> > >  soap, ballot, jury, and ammo. Please use in that order."
> > > -Ed Howdershelt (Author, 1940)
> > >
> > > .
> > >
> > >
> > >
> >
> >
> >
>
>
> 


