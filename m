Return-Path: <speakup+bounces-633-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 8FD845A1A5A
	for <lists+speakup@lfdr.de>; Thu, 25 Aug 2022 22:31:15 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 6F7DA380E2F; Thu, 25 Aug 2022 16:31:11 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 50744380C5F
	for <lists+speakup@lfdr.de>; Thu, 25 Aug 2022 16:31:11 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 68DB2380C60; Thu, 25 Aug 2022 16:31:06 -0400 (EDT)
Received: from smtprelay.b.hostedemail.com (smtprelay0120.b.hostedemail.com [64.98.42.120])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 548D33809AC
	for <speakup@linux-speakup.org>; Thu, 25 Aug 2022 16:31:06 -0400 (EDT)
Received: from omf10.b.hostedemail.com (10.5.19.248.rfc1918.com [10.5.19.248])
	by smtprelay02.b.hostedemail.com (Postfix) with ESMTP id BF0FD8000048;
	Thu, 25 Aug 2022 20:31:05 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: glenn@ervin.email) by omf10.b.hostedemail.com (Postfix) with ESMTPA id 521384C93;
	Thu, 25 Aug 2022 20:31:05 +0000 (UTC)
Message-ID: <022401d8b8c1$9a2c40e0$80ffa8c0@Win7VM>
Reply-To: "K0LNY_Glenn" <glenn@ervin.email>
From: "K0LNY_Glenn" <glenn@ervin.email>
To: "Jude DaShiell" <jdashiel@panix.com>,
	"Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <005b01d8b764$65f690e0$80ffa8c0@Win7VM> <f1e0bff4-cbdc-1766-293-dc2558869c6b@panix.com>
Subject: Re: hopefully some help with AntiX
Date: Thu, 25 Aug 2022 15:31:05 -0500
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
X-Rspamd-Queue-Id: 521384C93
X-Spam-Status: No, score=-2.60
X-Stat-Signature: knrh1xhsuytudbwmwgkr83p68tpqa9oc
X-Rspamd-Server: rspamout03
X-Session-Marker: 676C656E6E40657276696E2E656D61696C
X-Session-ID: U2FsdGVkX18DEJjE5Kuor2rVpLO36JskLC8p2q8VteU=
X-HE-Tag: 1661459465-633661
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

So I tried
sudo pip install fenrir-screenreader -y
and it didn't know pip
So I tried
sudo apt install pip -y
and it couldn't find it.
And I tried the same with git and it couldn't find the package.

Frustrating.

----- Original Message ----- 
From: "Jude DaShiell" <jdashiel@panix.com>
To: "K0LNY_Glenn" <glenn@ervin.email>; "Speakup is a screen review system 
for Linux." <speakup@linux-speakup.org>
Sent: Tuesday, August 23, 2022 10:50 PM
Subject: Re: hopefully some help with AntiX


You could try fenrir with git or pipi whichever is available.


Jude <jdashiel at panix dot com> "There are four boxes to be used in
defense of liberty:
 soap, ballot, jury, and ammo. Please use in that order."
-Ed Howdershelt (Author, 1940)

.

On Tue, 23 Aug 2022, K0LNY_Glenn wrote:

> Hello,
> So I successfully got a live version of AntiX 19.5 base 386 on my Asus701
> I am having trouble getting in with SSH.
> When I do speaker test on the actual netbook, it works, so I know the 
> audio
> works.
> Neither espeak test, or espeak-ng test, worked.
> It is Debian based, so I did apt update and most of the following things, 
> I
> tried both with sudo and without.
> On the computer trying to get in, it tells me connection refused.
> It is on the network as antix1
> Everything I read on-line suggest it should have openssh installed, but I
> ran the apt install for openssh-server -y just in case.
> I tried systemctl start openssh
> and I tried system restart openssh
> I guess it is possible espeak-NG may not be in its repository.
> Then espeeakup wouldn't be there either.
> If I had speakup going on the AntiX, or an SSH connection, I could start
> getting it going.
>
> Anyone have any ideas for this?
> This would be good on the Asus 701, it's using Buster, which isn't that
> old.Thanks for any assistance.
>
> Glenn
>
>
> 


