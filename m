Return-Path: <speakup+bounces-612-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id DBC0E59F2DA
	for <lists+speakup@lfdr.de>; Wed, 24 Aug 2022 06:59:42 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id C205D3809AC; Wed, 24 Aug 2022 00:59:41 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id ABC1238097C
	for <lists+speakup@lfdr.de>; Wed, 24 Aug 2022 00:59:41 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id AD7BE380852; Wed, 24 Aug 2022 00:59:36 -0400 (EDT)
Received: from smtprelay.b.hostedemail.com (smtprelay0251.b.hostedemail.com [64.98.42.251])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 9B3C53807BC
	for <speakup@linux-speakup.org>; Wed, 24 Aug 2022 00:59:36 -0400 (EDT)
Received: from omf13.b.hostedemail.com (10.5.19.248.rfc1918.com [10.5.19.248])
	by smtprelay03.b.hostedemail.com (Postfix) with ESMTP id EAA368A84876;
	Wed, 24 Aug 2022 04:59:35 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: glenn@ervin.email) by omf13.b.hostedemail.com (Postfix) with ESMTPA id 7BE6281D53D6;
	Wed, 24 Aug 2022 04:59:35 +0000 (UTC)
Message-ID: <007001d8b776$2a7193a0$80ffa8c0@Win7VM>
Reply-To: "K0LNY_Glenn" <glenn@ervin.email>
From: "K0LNY_Glenn" <glenn@ervin.email>
To: "Jude DaShiell" <jdashiel@panix.com>,
	"Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <005b01d8b764$65f690e0$80ffa8c0@Win7VM> <f1e0bff4-cbdc-1766-293-dc2558869c6b@panix.com>
Subject: Re: hopefully some help with AntiX
Date: Tue, 23 Aug 2022 23:58:34 -0500
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
X-Rspamd-Server: rspamout02
X-Rspamd-Queue-Id: 7BE6281D53D6
X-Spam-Status: No, score=-2.60
X-Stat-Signature: u384papwyr98re19nefaig9pfme6afef
X-Session-Marker: 676C656E6E40657276696E2E656D61696C
X-Session-ID: U2FsdGVkX1/2/usHrSykbpNVHE3KpT1/iwmkr1I5Zdc=
X-HE-Tag: 1661317175-852577
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Well I tried using the iPhone app, seeing AI.
I can't read back letter by letter using short text, which is what reads 
monitors the best, so I have to rely on what I hear.
It appears it does not know aptitude, so I tried apt, and that command 
works.
But I tried three different package names:
openssh-server
openssh
and just ssh
In all the returns, it said it could not find the packages, and they may 
exist under a different name.
So unless anyone has other Debian based SSH install names, I'll be doing 
more research on antiX and SSH.

Glenn
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


