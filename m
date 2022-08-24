Return-Path: <speakup+bounces-613-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id F1AC559F62D
	for <lists+speakup@lfdr.de>; Wed, 24 Aug 2022 11:28:21 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 0F69E38477B; Wed, 24 Aug 2022 05:28:21 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id EC110380954
	for <lists+speakup@lfdr.de>; Wed, 24 Aug 2022 05:28:20 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id EF113380954; Wed, 24 Aug 2022 05:28:15 -0400 (EDT)
Received: from pta-smg1.csir.co.za (pta-smg1.csir.co.za [146.64.81.180])
	by befuddled.reisers.ca (Postfix) with ESMTPS id EC5CF3807F7
	for <speakup@linux-speakup.org>; Wed, 24 Aug 2022 05:28:14 -0400 (EDT)
Received: from pta-smg1.csir.co.za (localhost.localdomain [127.0.0.1])
	by localhost (Email Security Appliance) with SMTP id 67C8F2978CE5_305EF23B
	for <speakup@linux-speakup.org>; Wed, 24 Aug 2022 09:28:03 +0000 (GMT)
Received: from marge.meraka.csir.co.za (marge.meraka.csir.co.za [146.64.28.1])
	by pta-smg1.csir.co.za (Sophos Email Appliance) with ESMTP id F16132975FEA_305EF22F
	for <speakup@linux-speakup.org>; Wed, 24 Aug 2022 09:28:02 +0000 (GMT)
Received: from marge.meraka.csir.co.za (localhost [127.0.0.1])
	by marge.meraka.csir.co.za (Postfix) with ESMTP id E3B3C51749
	for <speakup@linux-speakup.org>; Wed, 24 Aug 2022 11:28:02 +0200 (SAST)
X-Virus-Scanned: amavisd-new at meraka.org.za
Received: from marge.meraka.csir.co.za ([127.0.0.1])
	by marge.meraka.csir.co.za (marge.meraka.csir.co.za [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iPYwT1CVjLns for <speakup@linux-speakup.org>;
	Wed, 24 Aug 2022 11:28:02 +0200 (SAST)
Received: from willempc.meraka.csir.co.za (unknown [IPv6:2001:4200:7000:3:7a2b:cbff:fe9d:7520])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by marge.meraka.csir.co.za (Postfix) with ESMTPS
	for <speakup@linux-speakup.org>; Wed, 24 Aug 2022 11:28:02 +0200 (SAST)
Received: from [127.0.0.1] (helo=localhost)
	by willempc.meraka.csir.co.za with esmtp (Exim 4.90_1)
	(envelope-from <wvdwalt@csir.co.za>)
	id 1oQmg6-0000wP-5K
	for speakup@linux-speakup.org; Wed, 24 Aug 2022 11:28:02 +0200
Date: Wed, 24 Aug 2022 11:28:02 +0200 (SAST)
From: Willem van der Walt <wvdwalt@csir.co.za>
X-X-Sender: wvdwalt@willempc.meraka.csir.co.za
cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: hopefully some help with AntiX
In-Reply-To: <007001d8b776$2a7193a0$80ffa8c0@Win7VM>
Message-ID: <alpine.DEB.2.21.1.2208241123100.3538@willempc.meraka.csir.co.za>
References: <005b01d8b764$65f690e0$80ffa8c0@Win7VM> <f1e0bff4-cbdc-1766-293-dc2558869c6b@panix.com> <007001d8b776$2a7193a0$80ffa8c0@Win7VM>
User-Agent: Alpine 2.21.1 (DEB 211 2017-05-04)
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII; format=flowed
X-SASI-RCODE: 200
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi,
The Ubuntu and I think, Debian ssh server package is called ssh-server.
I suggest you do a portscan with nmap f
om another machine to see if ssh server is running.
It should show an open port 22 if it is.
Note, you must ssh into the machine as a non-root user.
HTH, Willem

On Tue, 23 Aug 2022, K0LNY_Glenn wrote:

> [The e-mail server of the sender could not be verified (SPF Record)]
>
> Well I tried using the iPhone app, seeing AI.
> I can't read back letter by letter using short text, which is what reads
> monitors the best, so I have to rely on what I hear.
> It appears it does not know aptitude, so I tried apt, and that command
> works.
> But I tried three different package names:
> openssh-server
> openssh
> and just ssh
> In all the returns, it said it could not find the packages, and they may
> exist under a different name.
> So unless anyone has other Debian based SSH install names, I'll be doing
> more research on antiX and SSH.
>
> Glenn
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
> soap, ballot, jury, and ammo. Please use in that order."
> -Ed Howdershelt (Author, 1940)
>
> .
>
> On Tue, 23 Aug 2022, K0LNY_Glenn wrote:
>
>> Hello,
>> So I successfully got a live version of AntiX 19.5 base 386 on my Asus701
>> I am having trouble getting in with SSH.
>> When I do speaker test on the actual netbook, it works, so I know the
>> audio
>> works.
>> Neither espeak test, or espeak-ng test, worked.
>> It is Debian based, so I did apt update and most of the following things,
>> I
>> tried both with sudo and without.
>> On the computer trying to get in, it tells me connection refused.
>> It is on the network as antix1
>> Everything I read on-line suggest it should have openssh installed, but I
>> ran the apt install for openssh-server -y just in case.
>> I tried systemctl start openssh
>> and I tried system restart openssh
>> I guess it is possible espeak-NG may not be in its repository.
>> Then espeeakup wouldn't be there either.
>> If I had speakup going on the AntiX, or an SSH connection, I could start
>> getting it going.
>>
>> Anyone have any ideas for this?
>> This would be good on the Asus 701, it's using Buster, which isn't that
>> old.Thanks for any assistance.
>>
>> Glenn
>>
>>
>>
>
>
>

