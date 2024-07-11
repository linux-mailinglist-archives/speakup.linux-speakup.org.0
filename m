Return-Path: <speakup+bounces-1162-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 774D692DF07
	for <lists+speakup@lfdr.de>; Thu, 11 Jul 2024 06:01:21 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=cudneys.ca header.i=@cudneys.ca header.a=rsa-sha256 header.s=default header.b=VmXHnpBD;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id BBB473820A4; Thu, 11 Jul 2024 00:01:19 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 9DE5B382069
	for <lists+speakup@lfdr.de>; Thu, 11 Jul 2024 00:01:19 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 9F052382075; Thu, 11 Jul 2024 00:01:12 -0400 (EDT)
Received: from cloud (cudneys.ca [198.251.72.142])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 44909380ECD
	for <speakup@linux-speakup.org>; Thu, 11 Jul 2024 00:01:12 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=cudneys.ca;
	s=default; t=1720670430;
	bh=tbNLYlTYhppTTsU0cj55U9155RjukWvg8vzG5qLJRvU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=VmXHnpBDemJT2wRpzaGj1uSBlUND1hoxLol+ClZUTssKt6N8C6pIh1Tx2eE+3fwCj
	 UQ0WA+8SloPPlDppw1osjza1j7/UXJe9+YOiTIBD4DrBEknkcLDE6EleyFvILVyPqT
	 r/9WmTstjEbeIf3qg4qyIy/ksdWdNHvqTsvPJ5XLMMOiNhcOG5TH0jkmjVKMmtA/sE
	 J3eGOI0k2xa1F8DwgqM0tVv6YTDwMSX3U9gRw35XI6N0SGweEPsFztJEVXby6yxGdI
	 CSDSAbJqZFxhNx0dD33NbLhuf8bbX9OS3XO1QVvpKsDXlvMx36Aei4qsWxJ7jR/o4/
	 c9YO89xbaInAA==
Received: by cloud (Postfix, from userid 1000)
	id 2FD733FCEB; Thu, 11 Jul 2024 00:00:30 -0400 (EDT)
Date: Thu, 11 Jul 2024 00:00:30 -0400
From: "Terry D. Cudney" <terry@cudneys.ca>
To: Samuel Thibault <sthibault@debian.org>
Cc: speakup@linux-speakup.org
Subject: Re: How to enable speech during boot up?
Message-ID: <Zo9Y3m_Yu61vGlHK@cudneys.ca>
References: <ZoP_ogmiMrg_BtDu@cudneys.ca>
 <20240710232918.hpfxyppxphbgufoy@begin>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240710232918.hpfxyppxphbgufoy@begin>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Thank you, very much, Samuel!

      I have included a .cc in this reply... A very good suggestion! Thank you, Samuel! !

      Samuel's response to  my original query and my subsequent queryes, are interleaved below...
      
On Thu, Jul 11, 2024 at 01:29:18AM +0200, Samuel Thibault wrote:
--> Hello,
--> 
--> Please always keep a mailing list in Cc, so that I am not the only
--> recipient of the mail. Writing to me only means risking falling in the
--> middle of my vacations and thus not getting an answer for weeks, or that
--> I just don't have the time to answer and thus you would at best get a
--> terse answer, or worse, no answer at all... Conversely, keeping a list
--> in Cc means avoiding all these issues completely, you'll involve all the
--> community to help you, make the answers you get available to everyone,
--> and even archived for web crawlers to find them whenever somebody has
--> the same issue.
--> 
--> Terry D. Cudney wrote:
--> >    It seems that somethings have changed in the Debian/Ubuntu/etc boot process. On examining /etc/grub.d/ there are two files 10_linux  and 10_linux_zfs, each with a variable, "quiet_boot" initialized to "1". I may be "barking up the wrong tree" so to speak, but is this where speakup is silenced during the boot process?
--> 
--> No, that just silences the kernel messages.

OK, I'd like to be able to see those too...
    
--> 
--> The expected way to get speakup auto-start on Debian is just
--> to have espeakup installed. The espeakup systemd unit in
--> /lib/systemd/system/espeakup.service is then in charge of loading
--> speakup_soft before starting espeakup.

    Even though I installed Ubuntu 22.04 using the "s" option with the installer, (speakup was active during the installation) there was no speech after the initial reboot.  I manually installed espeakup with apt but still no speech. lsmod showed speakup and speakup_soft to be loaded. as expected (not sure if they were loaded before I manually installed espeakup), but stillno speech output.

--> 
--> If it's not working, you'd have to check systemctl status espeakup

    Again, this was after manually installing espeakup, systemctl status shows espeakup to be loaded, enabled and active still no speech.

--> 
--> > Ideally, one should be able to confurrently run speakup in the cli and orca in the gui (in a separate console, perhaps via startx).
--> 
--> The problem will them be concurrent access to the audio card between
--> espeakup and speech-dispatcher. If in the desktop you use alsa and the
--> dmix module, that should work fine.

    Ah! That seems to be where the problem lies! The desktop is using pipewire/pulseaudio.


**--**> *** Key question:
What is the best way to disable pulseaudio/pipewire/wireplumber/whatever and force the desktop to use alsa, dmix?


-->If you use pulseaudio or pipewire
--> you'll get a conflict. This is a concern that I've never found time
--> to tackle, and I have hoped for years that somebody else would have
--> a look at it since it won't involve coding, but discussing properly
--> with pulseaudio/pipewire people to work out a proper solution. In the
--> meanwhile people have rather looked at workarounds and stay half-happy
--> with that...
--> 
--> Samuel

    I'm happy to lose pulseaudio/pipewire et al and use alsa/dmix.
    
    Question out of curiosity: What does pulseaudio add; why are  distributions seeming to abandon alsa in favour of pulseaudio?

    My naive observation is that pulseaudio just adds a lot of complexity...


    --terry

-- 
Name: Terry D. Cudney
Telephone: 289-488-4882 ext 1
E-mail: terry@cudneys.ca
 

