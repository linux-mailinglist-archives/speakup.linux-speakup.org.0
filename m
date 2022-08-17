Return-Path: <speakup+bounces-582-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 79948596FB3
	for <lists+speakup@lfdr.de>; Wed, 17 Aug 2022 15:22:20 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 23403384821; Wed, 17 Aug 2022 09:22:10 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 0F0C23847F3
	for <lists+speakup@lfdr.de>; Wed, 17 Aug 2022 09:22:10 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id DAD983847E6; Wed, 17 Aug 2022 09:22:04 -0400 (EDT)
Received: from pta-smg1.csir.co.za (pta-smg1.csir.co.za [146.64.81.180])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 9807A3847DE
	for <speakup@linux-speakup.org>; Wed, 17 Aug 2022 09:22:04 -0400 (EDT)
Received: from pta-smg1.csir.co.za (localhost.localdomain [127.0.0.1])
	by localhost (Email Security Appliance) with SMTP id 656502978DEE_2FCEB77B
	for <speakup@linux-speakup.org>; Wed, 17 Aug 2022 13:21:59 +0000 (GMT)
Received: from marge.meraka.csir.co.za (marge.meraka.csir.co.za [146.64.28.1])
	by pta-smg1.csir.co.za (Sophos Email Appliance) with ESMTP id 1E1E52976597_2FCEB77F
	for <speakup@linux-speakup.org>; Wed, 17 Aug 2022 13:21:59 +0000 (GMT)
Received: from marge.meraka.csir.co.za (localhost [127.0.0.1])
	by marge.meraka.csir.co.za (Postfix) with ESMTP id 169535F27A
	for <speakup@linux-speakup.org>; Wed, 17 Aug 2022 15:21:59 +0200 (SAST)
X-Virus-Scanned: amavisd-new at meraka.org.za
Received: from marge.meraka.csir.co.za ([127.0.0.1])
	by marge.meraka.csir.co.za (marge.meraka.csir.co.za [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id imAw44r8DNHC for <speakup@linux-speakup.org>;
	Wed, 17 Aug 2022 15:21:59 +0200 (SAST)
Received: from willempc.meraka.csir.co.za (unknown [IPv6:2001:4200:7000:3:7a2b:cbff:fe9d:7520])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by marge.meraka.csir.co.za (Postfix) with ESMTPS
	for <speakup@linux-speakup.org>; Wed, 17 Aug 2022 15:21:58 +0200 (SAST)
Received: from [127.0.0.1] (helo=localhost)
	by willempc.meraka.csir.co.za with esmtp (Exim 4.90_1)
	(envelope-from <wvdwalt@csir.co.za>)
	id 1oOIze-00005O-9C
	for speakup@linux-speakup.org; Wed, 17 Aug 2022 15:21:58 +0200
Date: Wed, 17 Aug 2022 15:21:58 +0200 (SAST)
From: Willem van der Walt <wvdwalt@csir.co.za>
X-X-Sender: wvdwalt@willempc.meraka.csir.co.za
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: solved! tty keeps jumping to tty7 ubuntu 22.04 after upgrade
In-Reply-To: <alpine.DEB.2.21.1.2208151305110.1705@willempc.meraka.csir.co.za>
Message-ID: <alpine.DEB.2.21.1.2208171514510.32744@willempc.meraka.csir.co.za>
References: <alpine.DEB.2.21.1.2208151305110.1705@willempc.meraka.csir.co.za>
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

Good day,
I thought I would share my sollution on this one.
My X server was broken, but lightdm was running.
Stopping lightdm allowed me to stay on tty1 to tty6.
I have also removed lightdm as I prefer to use startx when I want a gui.
So now I have a machine starting up in text mode with speakup speaking 
with the option to use startx once logged in, to start the xfce gui with 
orca talking.
Regards, Willem


On Mon, 15 Aug 2022, Willem van der Walt wrote:

> Good day,
> After upgrading from ubuntu 20.04 to 22.04, I have this funny problem.
> I first had some issues getting sound/alsa/espeakup to talk, but that is kind 
> of sorted now.
> What is happening now, is that, if I go to tty1 through tty6, I get a login 
> prompt as expected, but a second or so later, I am on tty7 with speakup 
> speaking, but it is a blank screen.
> I currently do not know if the machine comes up in  graphical mode after 
> boot, as I had no speech at that point anyway.
> I can ssh into the machine, which is mostly what I do, but I got to get 
> speakup and later orca working here.
> I never had this behaviour before, any ideas?
> Regards, Willem
>
>
>

