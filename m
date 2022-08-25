Return-Path: <speakup+bounces-636-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 0EB8A5A1AEF
	for <lists+speakup@lfdr.de>; Thu, 25 Aug 2022 23:19:26 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 850A4380E63; Thu, 25 Aug 2022 17:19:24 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 44AAB3810C8
	for <lists+speakup@lfdr.de>; Thu, 25 Aug 2022 17:19:23 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id EC2EA380C1D; Thu, 25 Aug 2022 17:19:21 -0400 (EDT)
Received: from smtprelay.b.hostedemail.com (smtprelay0166.b.hostedemail.com [64.98.42.166])
	by befuddled.reisers.ca (Postfix) with ESMTPS id DA9A038097C
	for <speakup@linux-speakup.org>; Thu, 25 Aug 2022 17:19:21 -0400 (EDT)
Received: from omf05.b.hostedemail.com (10.5.19.248.rfc1918.com [10.5.19.248])
	by smtprelay06.b.hostedemail.com (Postfix) with ESMTP id 2C76C1895D218;
	Thu, 25 Aug 2022 21:19:21 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: glenn@ervin.email) by omf05.b.hostedemail.com (Postfix) with ESMTPA id AA2A318021AD6;
	Thu, 25 Aug 2022 21:19:20 +0000 (UTC)
Message-ID: <022d01d8b8c8$57f2a780$80ffa8c0@Win7VM>
Reply-To: "K0LNY_Glenn" <glenn@ervin.email>
From: "K0LNY_Glenn" <glenn@ervin.email>
To: "Jude DaShiell" <jdashiel@panix.com>,
	"Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <005b01d8b764$65f690e0$80ffa8c0@Win7VM> <f1e0bff4-cbdc-1766-293-dc2558869c6b@panix.com> <022401d8b8c1$9a2c40e0$80ffa8c0@Win7VM> <022901d8b8c6$2c5c46f0$80ffa8c0@Win7VM> <363bcd12-5bd3-5749-2d6e-348ebfa9b461@panix.com>
Subject: Re: hopefully some help with AntiX
Date: Thu, 25 Aug 2022 16:19:20 -0500
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
X-Rspamd-Queue-Id: AA2A318021AD6
X-Spam-Status: No, score=-2.60
X-Stat-Signature: ypqis1rriddgwmtswkr4j5janfd4db1n
X-Rspamd-Server: rspamout03
X-Session-Marker: 676C656E6E40657276696E2E656D61696C
X-Session-ID: U2FsdGVkX19EPfMTdt18RuQyHokN48v5icJaOevpmsw=
X-HE-Tag: 1661462360-12491
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

well it could not find python-pip3 and when I did
sudo apt search finrir
it just said full text search
sorting

Then back to the prompt.

----- Original Message ----- 
From: "Jude DaShiell" <jdashiel@panix.com>
To: "K0LNY_Glenn" <glenn@ervin.email>; "Speakup is a screen review system 
for Linux." <speakup@linux-speakup.org>
Sent: Thursday, August 25, 2022 4:06 PM
Subject: Re: hopefully some help with AntiX


python-pip3 may be the name of the package by now.  In any case, try apt
search fenrir* and see what comes up then.

Jude <jdashiel at panix dot com>
"There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo. Please use in that order."
-Ed Howdershelt (Author, 1940)

.

On Thu, 25 Aug 2022, K0LNY_Glenn wrote:

> Well looking into antix repositories, it seems it uses a cli tool called
> cli-antiX
> but the trouble is, I can't tell what the choices are, for searching, and
> for installing, it reads
> enter on the highlighted choice.
> Glenn
> ----- Original Message -----
> From: "K0LNY_Glenn" <glenn@ervin.email>
> To: "Jude DaShiell" <jdashiel@panix.com>; "Speakup is a screen review 
> system
> for Linux." <speakup@linux-speakup.org>
> Sent: Thursday, August 25, 2022 3:31 PM
> Subject: Re: hopefully some help with AntiX
>
>
> So I tried
> sudo pip install fenrir-screenreader -y
> and it didn't know pip
> So I tried
> sudo apt install pip -y
> and it couldn't find it.
> And I tried the same with git and it couldn't find the package.
>
> Frustrating.
>
> ----- Original Message -----
> From: "Jude DaShiell" <jdashiel@panix.com>
> To: "K0LNY_Glenn" <glenn@ervin.email>; "Speakup is a screen review system
> for Linux." <speakup@linux-speakup.org>
> Sent: Tuesday, August 23, 2022 10:50 PM
> Subject: Re: hopefully some help with AntiX
>
>
> You could try fenrir with git or pipi whichever is available.
>
>
> Jude <jdashiel at panix dot com> "There are four boxes to be used in
> defense of liberty:
>  soap, ballot, jury, and ammo. Please use in that order."
> -Ed Howdershelt (Author, 1940)
>
> .
>
> On Tue, 23 Aug 2022, K0LNY_Glenn wrote:
>
> > Hello,
> > So I successfully got a live version of AntiX 19.5 base 386 on my 
> > Asus701
> > I am having trouble getting in with SSH.
> > When I do speaker test on the actual netbook, it works, so I know the
> > audio
> > works.
> > Neither espeak test, or espeak-ng test, worked.
> > It is Debian based, so I did apt update and most of the following 
> > things,
> > I
> > tried both with sudo and without.
> > On the computer trying to get in, it tells me connection refused.
> > It is on the network as antix1
> > Everything I read on-line suggest it should have openssh installed, but 
> > I
> > ran the apt install for openssh-server -y just in case.
> > I tried systemctl start openssh
> > and I tried system restart openssh
> > I guess it is possible espeak-NG may not be in its repository.
> > Then espeeakup wouldn't be there either.
> > If I had speakup going on the AntiX, or an SSH connection, I could start
> > getting it going.
> >
> > Anyone have any ideas for this?
> > This would be good on the Asus 701, it's using Buster, which isn't that
> > old.Thanks for any assistance.
> >
> > Glenn
> >
> >
> >
>
>
>
> 


