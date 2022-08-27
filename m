Return-Path: <speakup+bounces-698-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id B505E5A3651
	for <lists+speakup@lfdr.de>; Sat, 27 Aug 2022 11:27:59 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id BE637380E8B; Sat, 27 Aug 2022 05:27:58 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id A82A4380BFD
	for <lists+speakup@lfdr.de>; Sat, 27 Aug 2022 05:27:58 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id CAA16380C58; Sat, 27 Aug 2022 05:27:53 -0400 (EDT)
Received: from pta-smg1.csir.co.za (pta-smg1.csir.co.za [146.64.81.180])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 0C59F380BFD
	for <speakup@linux-speakup.org>; Sat, 27 Aug 2022 05:27:53 -0400 (EDT)
Received: from pta-smg1.csir.co.za (localhost.localdomain [127.0.0.1])
	by localhost (Email Security Appliance) with SMTP id EC1512978CEE_309E38FB
	for <speakup@linux-speakup.org>; Sat, 27 Aug 2022 09:27:43 +0000 (GMT)
Received: from marge.meraka.csir.co.za (marge.meraka.csir.co.za [146.64.28.1])
	by pta-smg1.csir.co.za (Sophos Email Appliance) with ESMTP id 7A605297605C_309E38FF
	for <speakup@linux-speakup.org>; Sat, 27 Aug 2022 09:27:43 +0000 (GMT)
Received: from marge.meraka.csir.co.za (localhost [127.0.0.1])
	by marge.meraka.csir.co.za (Postfix) with ESMTP id 70A9553F5B
	for <speakup@linux-speakup.org>; Sat, 27 Aug 2022 11:27:43 +0200 (SAST)
X-Virus-Scanned: amavisd-new at meraka.org.za
Received: from marge.meraka.csir.co.za ([127.0.0.1])
	by marge.meraka.csir.co.za (marge.meraka.csir.co.za [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gg_IDXETfgXX for <speakup@linux-speakup.org>;
	Sat, 27 Aug 2022 11:27:43 +0200 (SAST)
Received: from willempc.meraka.csir.co.za (unknown [IPv6:2001:4200:7000:3:7a2b:cbff:fe9d:7520])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by marge.meraka.csir.co.za (Postfix) with ESMTPS
	for <speakup@linux-speakup.org>; Sat, 27 Aug 2022 11:27:43 +0200 (SAST)
Received: from [127.0.0.1] (helo=localhost)
	by willempc.meraka.csir.co.za with esmtp (Exim 4.90_1)
	(envelope-from <wvdwalt@csir.co.za>)
	id 1oRs6R-0004AI-2I
	for speakup@linux-speakup.org; Sat, 27 Aug 2022 11:27:43 +0200
Date: Sat, 27 Aug 2022 11:27:43 +0200 (SAST)
From: Willem van der Walt <wvdwalt@csir.co.za>
X-X-Sender: wvdwalt@willempc.meraka.csir.co.za
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: hopefully some help with AntiX
In-Reply-To: <alpine.DEB.2.21.1.2208271055420.15485@willempc.meraka.csir.co.za>
Message-ID: <alpine.DEB.2.21.1.2208271124110.15985@willempc.meraka.csir.co.za>
References: <202208261512.27QFCDux008176@nfbcal.org> <02b101d8b963$7d039fc0$80ffa8c0@Win7VM> <alpine.DEB.2.21.1.2208262017280.8190@willempc.meraka.csir.co.za> <006201d8b97a$ff989cd0$80ffa8c0@Win7VM>
 <alpine.DEB.2.21.1.2208271055420.15485@willempc.meraka.csir.co.za>
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
I see that you will have to get the antiX deb as it is specially built for 
it.
Many upstream core Debian packages have been rebuilt to remove a hard 
dependency on libsystemd0/libelogind0
    These include apt, cups, dbus, gvfs, openssh, policykit-1, procps, 
pulseaudio, rpcbind, rsyslog, samba, sane-backends,
    udisks2, util-linux, webkit2gtk and xorg-server

That is from their webpage.


On Sat, 27 Aug 2022, Willem van der Walt wrote:

> [The e-mail server of the sender could not be verified (SPF Record)]
>
> Hi Glenn,
> My idea was that, on the AntiX, you do something like cat /dev/vcs1|netcat 
> <dest_ip> 1234 -N
> On the talking linux, do:
> netcat -l 1234 -k
> So, on the AntiX you go to tty2 and run the command there. It wil cat the 
> screen of tty1 on the AntiX to the listening nc on the talking box.
> It does not solve the problem, but it should allow you to listen to your 
> AntiX screen.
> I suggest googling for a .deb package of ssh-server and install it on the 
> AntiX using your thumb drive.
> Regards, Willem
>
>
> On Fri, 26 Aug 2022, K0LNY_Glenn wrote:
>
>> [The e-mail server of the sender could not be verified (SPF Record)]
>> 
>> Hi Willem,
>> Can I operate the terminal with ncat like with SSH?
>> Thanks.
>> 
>> ----- Original Message -----
>> From: "Willem van der Walt" <wvdwalt@csir.co.za>
>> To: "K0LNY_Glenn" <glenn@ervin.email>
>> Cc: "Speakup is a screen review system for Linux."
>> <speakup@linux-speakup.org>
>> Sent: Friday, August 26, 2022 1:19 PM
>> Subject: Re: hopefully some help with AntiX
>> 
>> 
>> Hi Glenn,
>> I think you should use nc.
>> I will send you detailed instructions tomorrow.
>> Regards, Willem
>> 
>> 
>> On Fri, 26 Aug 2022, K0LNY_Glenn wrote:
>> 
>>> [The e-mail server of the sender could not be verified (SPF Record)]
>>> 
>>> Hi Brian,
>>> The trouble is that I cannot SCP because I cannot SSH into it.
>>> It has audio, and I can use apt, but AntiX has its own limited repository.
>>> It has something I think it was called apt-antiX or something, but it is
>>> menu driven, and that does not work with OCR on the screen.
>>> So it seems fast and viable, but I cannot get anything into it.
>>> If I put stuff on a thumb drive and plugged it in, without speech output,
>>> I
>>> couldn't possibly get all guesses needed to find the device in
>>> /media/demo.
>>> Thanks though.
>>> 
>>> Glenn
>>> ----- Original Message -----
>>> From: "Brian Buhrow" <buhrow@nfbcal.org>
>>> To: "K0LNY_Glenn" <glenn@ervin.email>; "Chime Hart"
>>> <chime@hubert-humphrey.com>
>>> Cc: "Willem van der Walt" <wvdwalt@csir.co.za>; "Speakup is a screen
>>> review
>>> system for Linux." <speakup@linux-speakup.org>; <buhrow@nfbcal.org>
>>> Sent: Friday, August 26, 2022 10:12 AM
>>> Subject: Re: hopefully some help with AntiX
>>> 
>>> 
>>> Hello Glen.  Here are a couple of suggestions to try and figure out what's
>>> going on.
>>> 
>>> It sounds like the machine you're installing is up and running to some
>>> extent, i.e. you believe
>>> it has enough network to go out and download packages from repositories.
>>> If that's true, then I suggest building yourself a data file on the
>>> machine
>>> about its
>>> state and then scp it back to your working machine for post mortom
>>> analysis.
>>> In this way, you
>>> can be smarter about what's really going on with it rather than just
>>> trying
>>> our suggestions and
>>> getting more and more frustrated.
>>> 
>>> Depending on the state of the machine, there are a couple of ways to
>>> approach this task.
>>> 
>>> 1.  If you have the script command installed,
>>> I suggest:
>>> cd /tmp
>>> script
>>> 
>>> Then, do a dump of the dmesg output of the machine, a dump of a list of
>>> packages on the
>>> machine, a dump of the network configuration on the machine, using such
>>> commands as ifconfig
>>> and netstat, (if this is Ubuntu based, there's a command that replaces
>>> netstat that I don't
>>> remember off the top of my head.)
>>> 
>>> The script command will capture your commands, and the output they
>>> generate,
>>> into a file called
>>> typescript in the current directory (/tmp above).  When you've collected a
>>> bunch of data, exit
>>> the shell you started with the script command and scp the file
>>> "typescript"
>>> back to your
>>> working installed machine and look it over.  Keep in mind there will be
>>> some
>>> portions of it
>>> that will look like giberish because it captures all the terminal escape
>>> sequences to format
>>> the screen as well, but it will give you a lot more knowledge about what
>>> is
>>> going on.  Also, it
>>> will tell you which commands worked and which didn't, and why.
>>> 
>>> You may need to repeat this process of collecting a script file from the
>>> machine several times,
>>> using the knowledge you gained from the last round, to try more informed
>>> commands.
>>> 
>>> 2.  If the script command is not available, then create your own
>>> approximation of the script
>>> command by doing the following:
>>> 
>>> cd /tmp
>>> touch typescript
>>> dmesg >> typescript 2>&1
>>> . . .
>>> 
>>> Repeat commands, followed by >> typescript 2>&1
>>> 
>>> over and over again, as described above, to dump the output of both
>>> standard
>>> out and standard
>>> error (path for error messages) into your hand made typescript file.
>>> 
>>> When you have collected enough initial data to try doing an analysis, scp
>>> the typescript file
>>> back to your working machine and have a look at it.
>>> 
>>> Keep in mind that when you reboot the Antics machine, the /tmp/typescript
>>> file will be erased.
>>> 
>>> My apologies for not being familiar with the aptitude commands to give you
>>> examples of how to
>>> get package listings from the machine directly.
>>> 
>>> Although, dumping the output of
>>> aptitude --help >> /tmp/typescript 2>&1
>>> into your typescript file should give you pretty good directions on how to
>>> use it.
>>> 
>>> Hope this helps.
>>> 
>>> -Brian
>>> 
>>> 
>>> 
>> 
>> 
>
>

