Return-Path: <speakup+bounces-658-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 5782A5A2606
	for <lists+speakup@lfdr.de>; Fri, 26 Aug 2022 12:44:28 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 18842381633; Fri, 26 Aug 2022 06:44:26 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 9145338475D
	for <lists+speakup@lfdr.de>; Fri, 26 Aug 2022 06:44:24 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 30928380E1D; Fri, 26 Aug 2022 06:44:23 -0400 (EDT)
Received: from pta-smg1.csir.co.za (pta-smg1.csir.co.za [146.64.81.180])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 462D4380CEF
	for <speakup@linux-speakup.org>; Fri, 26 Aug 2022 06:44:22 -0400 (EDT)
Received: from pta-smg1.csir.co.za (localhost.localdomain [127.0.0.1])
	by localhost (Email Security Appliance) with SMTP id 02A7D2978FA0_308A3FDB;
	Fri, 26 Aug 2022 10:44:13 +0000 (GMT)
Received: from marge.meraka.csir.co.za (marge.meraka.csir.co.za [146.64.28.1])
	by pta-smg1.csir.co.za (Sophos Email Appliance) with ESMTP id 7A229297613C_308A3FCF;
	Fri, 26 Aug 2022 10:44:12 +0000 (GMT)
Received: from marge.meraka.csir.co.za (localhost [127.0.0.1])
	by marge.meraka.csir.co.za (Postfix) with ESMTP id 7129E52E41;
	Fri, 26 Aug 2022 12:44:12 +0200 (SAST)
X-Virus-Scanned: amavisd-new at meraka.org.za
Received: from marge.meraka.csir.co.za ([127.0.0.1])
	by marge.meraka.csir.co.za (marge.meraka.csir.co.za [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ghL7bqGQXdR9; Fri, 26 Aug 2022 12:44:12 +0200 (SAST)
Received: from willempc.meraka.csir.co.za (unknown [IPv6:2001:4200:7000:3:7a2b:cbff:fe9d:7520])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by marge.meraka.csir.co.za (Postfix) with ESMTPS;
	Fri, 26 Aug 2022 12:44:09 +0200 (SAST)
Received: from [127.0.0.1] (helo=localhost)
	by willempc.meraka.csir.co.za with esmtp (Exim 4.90_1)
	(envelope-from <wvdwalt@csir.co.za>)
	id 1oRWor-0000Ol-Pz; Fri, 26 Aug 2022 12:44:09 +0200
Date: Fri, 26 Aug 2022 12:44:09 +0200 (SAST)
From: Willem van der Walt <wvdwalt@csir.co.za>
X-X-Sender: wvdwalt@willempc.meraka.csir.co.za
To: K0LNY_Glenn <glenn@ervin.email>
cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: hopefully some help with AntiX
In-Reply-To: <020a01d8b8b9$97365310$80ffa8c0@Win7VM>
Message-ID: <alpine.DEB.2.21.1.2208261051420.318@willempc.meraka.csir.co.za>
References: <005b01d8b764$65f690e0$80ffa8c0@Win7VM> <f1e0bff4-cbdc-1766-293-dc2558869c6b@panix.com> <007001d8b776$2a7193a0$80ffa8c0@Win7VM> <alpine.DEB.2.21.1.2208241123100.3538@willempc.meraka.csir.co.za> <011d01d8b7dc$1fbf79c0$80ffa8c0@Win7VM>
 <alpine.DEB.2.21.1.2208251022200.17853@willempc.meraka.csir.co.za> <020a01d8b8b9$97365310$80ffa8c0@Win7VM>
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
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-SASI-RCODE: 200
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi,
I checked on my ubuntu.
You should be able to do:
sudo ufw disable
It should open up your firewall and disable it so that it does not start 
up when you reboot or power down.
You said:
If I turn off ufw it tells me all 1000 ports are closed with nmap.
If you still get this result after disabling ufw, then ssh is likely not 
running on the machine.

Reboot will cancil the iptables commands.
It would have helped if you ran 
nmap after those iptables commands to see if 
there is any change.
HTH, Willem


On Thu, 25 Aug 2022, K0LNY_Glenn wrote:

> [The e-mail server of the sender could not be verified (SPF Record)]
>
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
>>>
>>
>>
>
>
>

