Return-Path: <speakup+bounces-626-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id C8A345A0B7D
	for <lists+speakup@lfdr.de>; Thu, 25 Aug 2022 10:30:36 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 886AA384799; Thu, 25 Aug 2022 04:30:31 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 59FB838480D
	for <lists+speakup@lfdr.de>; Thu, 25 Aug 2022 04:30:30 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 0FB2E3809CB; Thu, 25 Aug 2022 04:30:29 -0400 (EDT)
Received: from pta-smg1.csir.co.za (pta-smg1.csir.co.za [146.64.81.180])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 77C463805D8
	for <speakup@linux-speakup.org>; Thu, 25 Aug 2022 04:30:28 -0400 (EDT)
Received: from pta-smg1.csir.co.za (localhost.localdomain [127.0.0.1])
	by localhost (Email Security Appliance) with SMTP id B265D2978F81_3073318B;
	Thu, 25 Aug 2022 08:30:16 +0000 (GMT)
Received: from marge.meraka.csir.co.za (marge.meraka.csir.co.za [146.64.28.1])
	by pta-smg1.csir.co.za (Sophos Email Appliance) with ESMTP id 598AD29760CF_3073317F;
	Thu, 25 Aug 2022 08:30:14 +0000 (GMT)
Received: from marge.meraka.csir.co.za (localhost [127.0.0.1])
	by marge.meraka.csir.co.za (Postfix) with ESMTP id 944CB522A0;
	Thu, 25 Aug 2022 10:30:14 +0200 (SAST)
X-Virus-Scanned: amavisd-new at meraka.org.za
Received: from marge.meraka.csir.co.za ([127.0.0.1])
	by marge.meraka.csir.co.za (marge.meraka.csir.co.za [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ki2FtfF3cZ9R; Thu, 25 Aug 2022 10:30:14 +0200 (SAST)
Received: from willempc.meraka.csir.co.za (unknown [IPv6:2001:4200:7000:3:7a2b:cbff:fe9d:7520])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by marge.meraka.csir.co.za (Postfix) with ESMTPS;
	Thu, 25 Aug 2022 10:30:13 +0200 (SAST)
Received: from [127.0.0.1] (helo=localhost)
	by willempc.meraka.csir.co.za with esmtp (Exim 4.90_1)
	(envelope-from <wvdwalt@csir.co.za>)
	id 1oR8Fh-0004et-8A; Thu, 25 Aug 2022 10:30:13 +0200
Date: Thu, 25 Aug 2022 10:30:13 +0200 (SAST)
From: Willem van der Walt <wvdwalt@csir.co.za>
X-X-Sender: wvdwalt@willempc.meraka.csir.co.za
To: K0LNY_Glenn <glenn@ervin.email>
cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: hopefully some help with AntiX
In-Reply-To: <011d01d8b7dc$1fbf79c0$80ffa8c0@Win7VM>
Message-ID: <alpine.DEB.2.21.1.2208251022200.17853@willempc.meraka.csir.co.za>
References: <005b01d8b764$65f690e0$80ffa8c0@Win7VM> <f1e0bff4-cbdc-1766-293-dc2558869c6b@panix.com> <007001d8b776$2a7193a0$80ffa8c0@Win7VM> <alpine.DEB.2.21.1.2208241123100.3538@willempc.meraka.csir.co.za> <011d01d8b7dc$1fbf79c0$80ffa8c0@Win7VM>
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

Sorry, there was a typo in my nmap command, so what you did below is 
correct.
It is tricky without speech, but you can try the following iptables 
commands on the machine.
#Allow ssh from your network
iptables -A INPUT -p tcp -s 10.248.1.0/24 --dport 22 -m state --state NEW,ESTABLISHED -j ACCEPT
#Allow outgoing ssh
iptables -A INPUT -p tcp --sport 22 -j ACCEPT
The iptables command should work as it is the basic command used by all 
firewall tools.
HTH, Willem


On Wed, 24 Aug 2022, K0LNY_Glenn wrote:

> [The e-mail server of the sender could not be verified (SPF Record)]
>
> Well after thinking about it, I realized that I could have just put in the
> actual IP address with nmap.
> So I did:
> nmap -f 10.248.1.143
> and it quickly found antix and it said all 1000 ports have been scanned and
> they all are closed.
> Glenn
> ----- Original Message -----
> From: "Willem van der Walt" <wvdwalt@csir.co.za>
> Cc: "Speakup is a screen review system for Linux."
> <speakup@linux-speakup.org>
> Sent: Wednesday, August 24, 2022 4:28 AM
> Subject: Re: hopefully some help with AntiX
>
>
> Hi,
> The Ubuntu and I think, Debian ssh server package is called ssh-server.
> I suggest you do a portscan with nmap f
> om another machine to see if ssh server is running.
> It should show an open port 22 if it is.
> Note, you must ssh into the machine as a non-root user.
> HTH, Willem
>
> On Tue, 23 Aug 2022, K0LNY_Glenn wrote:
>
>> [The e-mail server of the sender could not be verified (SPF Record)]
>>
>> Well I tried using the iPhone app, seeing AI.
>> I can't read back letter by letter using short text, which is what reads
>> monitors the best, so I have to rely on what I hear.
>> It appears it does not know aptitude, so I tried apt, and that command
>> works.
>> But I tried three different package names:
>> openssh-server
>> openssh
>> and just ssh
>> In all the returns, it said it could not find the packages, and they may
>> exist under a different name.
>> So unless anyone has other Debian based SSH install names, I'll be doing
>> more research on antiX and SSH.
>>
>> Glenn
>> ----- Original Message -----
>> From: "Jude DaShiell" <jdashiel@panix.com>
>> To: "K0LNY_Glenn" <glenn@ervin.email>; "Speakup is a screen review system
>> for Linux." <speakup@linux-speakup.org>
>> Sent: Tuesday, August 23, 2022 10:50 PM
>> Subject: Re: hopefully some help with AntiX
>>
>>
>> You could try fenrir with git or pipi whichever is available.
>>
>>
>> Jude <jdashiel at panix dot com> "There are four boxes to be used in
>> defense of liberty:
>> soap, ballot, jury, and ammo. Please use in that order."
>> -Ed Howdershelt (Author, 1940)
>>
>> .
>>
>> On Tue, 23 Aug 2022, K0LNY_Glenn wrote:
>>
>>> Hello,
>>> So I successfully got a live version of AntiX 19.5 base 386 on my Asus701
>>> I am having trouble getting in with SSH.
>>> When I do speaker test on the actual netbook, it works, so I know the
>>> audio
>>> works.
>>> Neither espeak test, or espeak-ng test, worked.
>>> It is Debian based, so I did apt update and most of the following things,
>>> I
>>> tried both with sudo and without.
>>> On the computer trying to get in, it tells me connection refused.
>>> It is on the network as antix1
>>> Everything I read on-line suggest it should have openssh installed, but I
>>> ran the apt install for openssh-server -y just in case.
>>> I tried systemctl start openssh
>>> and I tried system restart openssh
>>> I guess it is possible espeak-NG may not be in its repository.
>>> Then espeeakup wouldn't be there either.
>>> If I had speakup going on the AntiX, or an SSH connection, I could start
>>> getting it going.
>>>
>>> Anyone have any ideas for this?
>>> This would be good on the Asus 701, it's using Buster, which isn't that
>>> old.Thanks for any assistance.
>>>
>>> Glenn
>>>
>>>
>>>
>>
>>
>>
>
>

