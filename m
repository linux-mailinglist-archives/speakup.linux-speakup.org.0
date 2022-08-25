Return-Path: <speakup+bounces-630-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 2E4FC5A19B7
	for <lists+speakup@lfdr.de>; Thu, 25 Aug 2022 21:42:20 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=ukr.net header.i=@ukr.net header.a=rsa-sha256 header.s=fsm header.b=Vzv7Behe;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 05370380FBF; Thu, 25 Aug 2022 15:42:19 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id E1B5A380E8B
	for <lists+speakup@lfdr.de>; Thu, 25 Aug 2022 15:42:18 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 59DB3380C8C; Thu, 25 Aug 2022 15:42:15 -0400 (EDT)
Received: from frv153.fwdcdn.com (frv153.fwdcdn.com [212.42.77.153])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 3750B3808D5
	for <speakup@linux-speakup.org>; Thu, 25 Aug 2022 15:42:14 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=ukr.net;
	s=fsm; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:
	To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=d8tM4Dy/584a+ItbmamApb96aiYdMJjGQ8P/aTontd0=; b=Vzv7BeheSLoR/NFCmZoumqLeMX
	W+7xFdBaEtLLrvI30yoDkjdoY+NDJwS/UovbHmDG1hDX1y/wKIDsDC1dKjQUe7gSm7vFBBEu+TkXj
	FNcnY+bpOOpEpxdCODtKPojE0UZnbb9Gk7AoSgpqbHU+CPO6oPT89pxFa9Ty8jpHAwDQ=;
Received: from public-gprs396388.centertel.pl ([37.47.179.165] helo=[192.168.25.9])
	by frv153.fwdcdn.com with esmtpsa ID 1oRIjz-000ILB-Dk
	for speakup@linux-speakup.org; Thu, 25 Aug 2022 22:42:11 +0300
Message-ID: <c81f1dcf-4d19-d079-99be-ddff1e646fa4@ukr.net>
Date: Thu, 25 Aug 2022 21:42:09 +0200
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: hopefully some help with AntiX
Content-Language: en-US
To: speakup@linux-speakup.org
References: <005b01d8b764$65f690e0$80ffa8c0@Win7VM>
 <f1e0bff4-cbdc-1766-293-dc2558869c6b@panix.com>
 <007001d8b776$2a7193a0$80ffa8c0@Win7VM>
 <alpine.DEB.2.21.1.2208241123100.3538@willempc.meraka.csir.co.za>
 <011d01d8b7dc$1fbf79c0$80ffa8c0@Win7VM>
 <alpine.DEB.2.21.1.2208251022200.17853@willempc.meraka.csir.co.za>
 <020a01d8b8b9$97365310$80ffa8c0@Win7VM>
From: Volodymyr Dorozhinsky <dorozhinsky@ukr.net>
Disposition-Notification-To: Volodymyr Dorozhinsky <dorozhinsky@ukr.net>
In-Reply-To: <020a01d8b8b9$97365310$80ffa8c0@Win7VM>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Authentication-Result: IP=37.47.179.165; mail.from=dorozhinsky@ukr.net; dkim=pass; header.d=ukr.net
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Glenn,


for me all that You've described sounds like there is no ssh server is 
up and running.



Best regards

Volodymyr


On 8/25/22 21:33, K0LNY_Glenn wrote:
> Willem,
> I was really hoping this would work.
> I had to go back and forth between rooms remembering chunks of the input
> one, and I ran it, and according to seeing AI, it gave no errors.
> So I tried to SSH into it, and connection refused, so I rebooted, and tried
> again, and again, connection refused.
> If I turn off ufw it tells me all 1000 ports are closed with nmap.
> If ufw is running, nmap tells me they are all filtered.
> Glenn
> ----- Original Message -----
> From: "Willem van der Walt" <wvdwalt@csir.co.za>
> To: "K0LNY_Glenn" <glenn@ervin.email>
> Cc: "Speakup is a screen review system for Linux."
> <speakup@linux-speakup.org>
> Sent: Thursday, August 25, 2022 3:30 AM
> Subject: Re: hopefully some help with AntiX
>
>
> Sorry, there was a typo in my nmap command, so what you did below is
> correct.
> It is tricky without speech, but you can try the following iptables
> commands on the machine.
> #Allow ssh from your network
> iptables -A INPUT -p tcp -s 10.248.1.0/24 --dport 22 -m state --state
> NEW,ESTABLISHED -j ACCEPT
> #Allow outgoing ssh
> iptables -A INPUT -p tcp --sport 22 -j ACCEPT
> The iptables command should work as it is the basic command used by all
> firewall tools.
> HTH, Willem
>
>
> On Wed, 24 Aug 2022, K0LNY_Glenn wrote:
>
>> [The e-mail server of the sender could not be verified (SPF Record)]
>>
>> Well after thinking about it, I realized that I could have just put in the
>> actual IP address with nmap.
>> So I did:
>> nmap -f 10.248.1.143
>> and it quickly found antix and it said all 1000 ports have been scanned
>> and
>> they all are closed.
>> Glenn
>> ----- Original Message -----
>> From: "Willem van der Walt" <wvdwalt@csir.co.za>
>> Cc: "Speakup is a screen review system for Linux."
>> <speakup@linux-speakup.org>
>> Sent: Wednesday, August 24, 2022 4:28 AM
>> Subject: Re: hopefully some help with AntiX
>>
>>
>> Hi,
>> The Ubuntu and I think, Debian ssh server package is called ssh-server.
>> I suggest you do a portscan with nmap f
>> om another machine to see if ssh server is running.
>> It should show an open port 22 if it is.
>> Note, you must ssh into the machine as a non-root user.
>> HTH, Willem
>>
>> On Tue, 23 Aug 2022, K0LNY_Glenn wrote:
>>
>>> [The e-mail server of the sender could not be verified (SPF Record)]
>>>
>>> Well I tried using the iPhone app, seeing AI.
>>> I can't read back letter by letter using short text, which is what reads
>>> monitors the best, so I have to rely on what I hear.
>>> It appears it does not know aptitude, so I tried apt, and that command
>>> works.
>>> But I tried three different package names:
>>> openssh-server
>>> openssh
>>> and just ssh
>>> In all the returns, it said it could not find the packages, and they may
>>> exist under a different name.
>>> So unless anyone has other Debian based SSH install names, I'll be doing
>>> more research on antiX and SSH.
>>>
>>> Glenn
>>> ----- Original Message -----
>>> From: "Jude DaShiell" <jdashiel@panix.com>
>>> To: "K0LNY_Glenn" <glenn@ervin.email>; "Speakup is a screen review system
>>> for Linux." <speakup@linux-speakup.org>
>>> Sent: Tuesday, August 23, 2022 10:50 PM
>>> Subject: Re: hopefully some help with AntiX
>>>
>>>
>>> You could try fenrir with git or pipi whichever is available.
>>>
>>>
>>> Jude <jdashiel at panix dot com> "There are four boxes to be used in
>>> defense of liberty:
>>> soap, ballot, jury, and ammo. Please use in that order."
>>> -Ed Howdershelt (Author, 1940)
>>>
>>> .
>>>
>>> On Tue, 23 Aug 2022, K0LNY_Glenn wrote:
>>>
>>>> Hello,
>>>> So I successfully got a live version of AntiX 19.5 base 386 on my
>>>> Asus701
>>>> I am having trouble getting in with SSH.
>>>> When I do speaker test on the actual netbook, it works, so I know the
>>>> audio
>>>> works.
>>>> Neither espeak test, or espeak-ng test, worked.
>>>> It is Debian based, so I did apt update and most of the following
>>>> things,
>>>> I
>>>> tried both with sudo and without.
>>>> On the computer trying to get in, it tells me connection refused.
>>>> It is on the network as antix1
>>>> Everything I read on-line suggest it should have openssh installed, but
>>>> I
>>>> ran the apt install for openssh-server -y just in case.
>>>> I tried systemctl start openssh
>>>> and I tried system restart openssh
>>>> I guess it is possible espeak-NG may not be in its repository.
>>>> Then espeeakup wouldn't be there either.
>>>> If I had speakup going on the AntiX, or an SSH connection, I could start
>>>> getting it going.
>>>>
>>>> Anyone have any ideas for this?
>>>> This would be good on the Asus 701, it's using Buster, which isn't that
>>>> old.Thanks for any assistance.
>>>>
>>>> Glenn
>>>>
>>>>
>>>>
>>>
>>>
>>
>

