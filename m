Return-Path: <speakup+bounces-319-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 018CA42FC2F
	for <lists+speakup@lfdr.de>; Fri, 15 Oct 2021 21:32:58 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="key not found in DNS" header.d=slint.fr header.i=@slint.fr header.a=rsa-sha256 header.s=default header.b=jvGrmU+t;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 93D4A381195; Fri, 15 Oct 2021 15:32:57 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 18775381D37
	for <lists+speakup@lfdr.de>; Fri, 15 Oct 2021 15:32:54 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id A8FAA380F18; Fri, 15 Oct 2021 15:32:51 -0400 (EDT)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79])
	by befuddled.reisers.ca (Postfix) with ESMTP id 421BF380943
	for <speakup@linux-speakup.org>; Fri, 15 Oct 2021 15:32:51 -0400 (EDT)
Received: from [192.168.0.10] (sfa89-1-78-208-157-71.fbx.proxad.net [78.208.157.71])
	by darkstar.slint.fr (Postfix) with ESMTPSA id BE31EA38B5
	for <speakup@linux-speakup.org>; Fri, 15 Oct 2021 19:32:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=slint.fr; s=default;
	t=1634319133; bh=tkKyPzVtynD2/nx7ERblYSzraFPk7m+7ekmyl/gzfcs=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=jvGrmU+tSy6QFX/fVL7pxsVvzh7qTcKZ0hQ6zRu8pM3Kx4xdhhTfY47Pp/fMVjEv2
	 SBR7VsVe0ivpmrRBiSAK9HC5PQFZ5LAXGtM5ElXuThdaHfRiT2A+XfZd9ewHTes023
	 /l0mEkDLhidwRI/2xkCaogqsOPos83BoDRSuNopi7lux7I5WrhB5iUk1n+30/Of4hj
	 gAnG0Mc3oSOO+3qG/diMevHZhiZFCn15szk6u3HzZSn5+jqTMmsOUs2TlK0k95O89+
	 nfQJUet9NF3EKgT4FyUlwTVLhqnWTSfzLc2j22ppLICFAjTrCydFeHvPJVJDltzYym
	 VPPxrH5N9xyjQ==
Message-ID: <26bab3e2-04ce-26ee-efc1-c3a4a8d1a661@slint.fr>
Date: Fri, 15 Oct 2021 21:32:37 +0200
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
 Thunderbird/91.2.0
Subject: Re: fwd: [DNG] Announcing Devuan 4.0: Chimaera!
Content-Language: en-US
To: speakup@linux-speakup.org
References: <20211015192340.GA3715@gregn.net>
From: Didier Spaier <didier@slint.fr>
In-Reply-To: <20211015192340.GA3715@gregn.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi Gregory and all,

Yes, I saw that and was interested indeed.

I thing puzzles me though. I read:

 > Devuan Chimaera has the ability to
 > install desktop environments without PulseAudio, allowing speech
 > synthesis in both console and GUI sessions at the same time.

I Slint speech synthesis is available in both console and GUI sessions 
at the
same time with PulseAudio installed. Is that not possible in Devuan?

Best regards,
Didier

Le 15/10/2021 à 21:23, Gregory Nowak a écrit :
> Hi all.
> 
> I thought I'd pass this along for anyone interested.
> 
> Greg
> 
> 
> ----- Forwarded message from Mason Loring Bliss <mason@blisses.org> -----
> 
> Date: Thu, 14 Oct 2021 11:00:33 -0400
> From: Mason Loring Bliss <mason@blisses.org>
> To: dng@lists.dyne.org
> Subject: [DNG] Announcing Devuan 4.0: Chimaera!
> 
> Dear Friends and Software Freedom Lovers,
> 
> Devuan Developers are pleased to announce the release of Devuan Chimaera
> 4.0 as the project's newest stable release. This is the result of lots of
> painstaking work by the team and extensive testing by the wider Devuan
> community.
> 
> ---------------------------------------------------------------------------
> What's new in Chimaera 4.0?
> 
>      * Based on Debian Bullseye (11.1) with Linux kernel 5.10.
>      * Your choice of init: sysvinit, runit, and OpenRC.
>      * Improved desktop support - virtually all desktop environments available
>        in Debian are now part of Devuan, systemd-free.
>      * New boot, display manager and desktop theming.
>      * Enhanced accessibility: installation via GUI or console can now be
>        accomplished via software or hardware speech synthesis, or using a
>        refreshable braille display, and Devuan Chimaera has the ability to
>        install desktop environments without PulseAudio, allowing speech
>        synthesis in both console and GUI sessions at the same time.
> 
> ---------------------------------------------------------------------------
> Installation and Documentation
> 
> Whether you are upgrading an existing Devuan install, migrating from Debian
> or installing from scratch, instructions and guidance can be found online:
> 
>      https://devuan.org/os/install
>      https://devuan.org/get-devuan.
> 
> Packages, netboot images and installation media are available through a
> resilient network of http package mirrors, http, https, ftp and rsync iso
> mirrors, torrent and magnet.
> 
> Please take time to read the Release Notes. They include important
> configuration information and tips to help your install or upgrade go as
> smoothly as possible.
> 
>      https://files.devuan.org/devuan_chimaera/Release_notes.txt
> 
> For the impatient, you can go straight to the package and sources.list
> information or the installation media downloads:
> 
>      https://devuan.org/os/packages
>      http://files.devuan.org/devuan_chimaera/
> 
> ---------------------------------------------------------------------------
> Resources and Support
> 
> * Mailing list: https://mailinglists.dyne.org/cgi-bin/mailman/listinfo/dng
> * IRC: #devuan #devuan-dev (Libera)
> * Forum: https://dev1galaxy.org
> * Press contact: freedom@devuan.org
> * Source code: https://git.devuan.org
> * Bug tracker: https://bugs.devuan.org
> * Package information: https://pkginfo.devuan.org
> * Popularity contest: https://popcon.devuan.org
> 
> ---------------------------------------------------------------------------
> After Chimaera
> 
> The next Devuan release, 5.0, is codenamed Daedalus. Repositories are
> already available for the adventurous to test.
> 
> ---------------------------------------------------------------------------
> Appreciation
> 
> We wish to thank all of you for the incredible support given to Devuan.
> Without your help and feedback, Devuan could not be the reliable and
> versatile distribution that it is.
> 
> To support the Devuan project you can examine our financial reports and
> donate at:
> 
>      https://devuan.org/donate
> 
> ---------------------------------------------------------------------------
>                             Live long and prosper!
>                          The Devuan Development Team
> ---------------------------------------------------------------------------
> 
> 
> 
> _______________________________________________
> Dng mailing list
> Dng@lists.dyne.org
> https://mailinglists.dyne.org/cgi-bin/mailman/listinfo/dng
> 
> 
> ----- End forwarded message -----
> 

