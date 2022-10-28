Return-Path: <speakup+bounces-772-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id E704661056E
	for <lists+speakup@lfdr.de>; Fri, 28 Oct 2022 00:13:46 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="key not found in DNS" header.d=slint.fr header.i=@slint.fr header.a=rsa-sha256 header.s=default header.b=SVrdrL/d;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 79F9A383FEE; Thu, 27 Oct 2022 18:13:46 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 57784380376
	for <lists+speakup@lfdr.de>; Thu, 27 Oct 2022 18:13:46 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id EC6A1383FB8; Thu, 27 Oct 2022 18:13:36 -0400 (EDT)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79])
	by befuddled.reisers.ca (Postfix) with ESMTP id 32812380376
	for <speakup@linux-speakup.org>; Thu, 27 Oct 2022 18:13:36 -0400 (EDT)
Received: from [192.168.0.11] (sfa89-1-78-208-157-71.fbx.proxad.net [78.208.157.71])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 1F0EC215BF
	for <speakup@linux-speakup.org>; Thu, 27 Oct 2022 23:10:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=slint.fr; s=default;
	t=1666905007; bh=POZv/O3B/aPGQ3pUp2fisyyjbltvpqlM12tf5NSARaU=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=SVrdrL/dekemeVsxuz63juPsm9EwItvXYA9ygZHl2IoDyYvhNTarJzkL2SsQlrtvr
	 F6b8zRPqoZJdqdk0qPtUWeOH9eBuBDp8tXbBYxhAag468kA81GhzwHhoG4hEwzX9V5
	 XUGBds4EXMUeEzQCJhhY5B4baYEz0ajEuZ+rZS+i3Hr25E1OsSgPSD4Rcrxu5B6hAh
	 rikNGDuPzfbYzXcit2gYhfv9aQr3kv6voDuNhBnsVm1+GiDsxqo++R6V/Lxqq6XrgE
	 eZWUHYnoRfEbMkEkQoWH/vfJsw072yOkbqjw7U20mwAQ5M7q8O1SDcYW5yr1RNf4yL
	 s3DpBBxqnT9CA==
Message-ID: <b7dc2bd6-13e7-3b7a-5651-a1a7e7cc3f11@slint.fr>
Date: Fri, 28 Oct 2022 00:13:24 +0000
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: Installing Voxin
To: speakup@linux-speakup.org
References: <082101d8ea38$0d104d70$87ffa8c0@Win7VM>
 <083301d8ea4e$aa578240$87ffa8c0@Win7VM>
Content-Language: en-US
From: Didier Spaier <didier@slint.fr>
In-Reply-To: <083301d8ea4e$aa578240$87ffa8c0@Win7VM>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

I don't understand. the voxin TTS and voices are intended to be used with screen
readers like fenrir, speechd-up or orca, or with emacspeac, not espeakup and the
same goes for speech-dispatcher. Which screen reader do you use? Or are trying
to use several ones at the same time?

I assume that if speakup repeatedly speaks something like:
speakup failed to load software synth and still works, maybe the speakup-soft
driver is built-in your kernel, not provided as a module?

Didier


Le 27/10/2022 à 21:54, K0LNY_Glenn a écrit :
> Well some improvement, Voxin has installed to my Debian Bullseye, I heard 
> back from Gilles, and he informed me that Voxin 3.X won't install to a 32 
> bit system, so I installed Voxin-2.2
> But when it boots up, Speakup repeatedly speaks something like:
> speakup failed to load software synth
> But it defaulted to eSpeak, so I still have that.
> The Voxin installer asked if I want Voxin to be the default synth, and I 
> entered for yes. don't nde
> So, is there a problem in speech-dispatcher, specifically in speechd.conf?
> Thanks for any info.
> 
> Glenn
> 
> ----- Original Message ----- 
> From: "K0LNY_Glenn" <glenn@ervin.email>
> To: "Speakup is a screen review system for Linux." 
> <speakup@linux-speakup.org>
> Sent: Thursday, October 27, 2022 2:12 PM
> Subject: Installing Voxin
> 
> 
> Hi Group,
> I'm back working on Debian Bullseye on my old Asus 701 netbook.
> It is operating okay, and I wanted to get something installed to control my
> NanoVNA network analiser for Ham radio work.
> But first, I thought I would try again to get Voxin (IBM ViaVoice) working
> on it.
> I am just using Speakup with eSpeak at this time.
> I contacted Oralux on this, a long time back, and was offered a suggestion
> to try, but I get errors in trying the command they gave me, and I'm hoping
> someone here might help me to understand the usage of their suggestion.
> Here's what was suggested I try:
> 
> sudo --login $PWD/voxin-installer.sh
> Normally I just do:
> sudo bash voxin-installer.sh
> But here's the error from that which prompted me to contact Oralux
> initially:
> Your version of speech-dispatcher has not been recognized.
> If the installation continues, voxin will use its module for
> speech-dispatcher                                                graphic 545
> Do you really
> want to continue?
> If yes, press the ENTER key.
> 
>                                                 Logs written in
> log/voxin.log
> Initialization; please wait...
> Error: more details in
> /home/lenny/Downloads/voxin-3.3rc5/voxin-enu-3.3rc5/log/voxin.log
> graphic 545 For support, email
> to contact at oralux.org
> Here's the contents of the voxin.log file:
> 
>   GNU nano 5.4                                              voxin.log
> graphic 192 /usr/bin/gettext
> 
> uninstallOldVoxin
> installSystem
> graphic 545
> 
> rfs all tarball not found!
> voxin package not found!installOldVoxin
> 
> 
> 
> 

