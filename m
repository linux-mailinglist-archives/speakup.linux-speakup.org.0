Return-Path: <speakup+bounces-803-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 3A413611E2E
	for <lists+speakup@lfdr.de>; Sat, 29 Oct 2022 01:34:32 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=D69V6Blo;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id EFB6A38407E; Fri, 28 Oct 2022 19:34:30 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id CF870383FB3
	for <lists+speakup@lfdr.de>; Fri, 28 Oct 2022 19:34:30 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 8ED69383FE8; Fri, 28 Oct 2022 19:34:21 -0400 (EDT)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 42DC3383FB3
	for <speakup@linux-speakup.org>; Fri, 28 Oct 2022 19:34:21 -0400 (EDT)
Received: from vbox.gregn.net (unknown [IPv6:2607:fb90:2d06:e42e:9311:401f:be3e:3e80])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by vserver.gregn.net (Postfix) with ESMTPSA id 0F82B4B6;
	Fri, 28 Oct 2022 16:33:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gregn.net; s=default;
	t=1667000030; bh=6wTF9a1kFNSZF6VvrrViSyQhORSEd5jwjNxhb+CGwpA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=D69V6BloEsrlSJKbuniYvnqwWJx+AEzvOwik5CILzHW68/cjcsHSfygcE/11462Zs
	 mgfBeQ7jDw2/NqsZ8WjfNv2NTofF1U4CLbxK2uj1Ot48SJjdlb60KQ3/FisJ1LSWtm
	 xBIBSavA5fa1h1FqXT8c2nnkpDAON+GVdweQhjTvTLcQAhl8cGScEl5sVwPmY/xIyn
	 vQ2qrxdv2TNGNZPLE+GTGn4hiNNQz0x0YujkKWTk/9A0k9j0c089KY9iWxr0ieGght
	 o0go06lwISGEoW/jQeKck52PP2ZrzU5d5g9BNqpJByyD5YKZ9wZPmFWPYjlLPh80nm
	 c9MjuQTw25YNg==
Received: by vbox.gregn.net (Postfix, from userid 1000)
	id DD277C170; Fri, 28 Oct 2022 16:33:48 -0700 (MST)
Date: Fri, 28 Oct 2022 16:33:48 -0700
From: Gregory Nowak <greg@gregn.net>
To: K0LNY_Glenn <glenn@ervin.email>
Cc: speakup@linux-speakup.org, Didier Spaier <didier@slint.fr>
Subject: Re: Installing Voxin
Message-ID: <Y1xm3HAleBaLGGnk@gregn.net>
References: <089101d8ea60$a48a59c0$87ffa8c0@Win7VM>
 <53a80b58-5be4-63ee-ab32-9b7bd469f522@hubert-humphrey.com>
 <089c01d8ea67$be809ae0$87ffa8c0@Win7VM>
 <Y1tQ09YHFIMW5W2P@gregn.net>
 <08ed01d8eae8$e7bbdab0$87ffa8c0@Win7VM>
 <153ebfb0-180b-a4b8-0027-857f22df878e@hubert-humphrey.com>
 <090701d8eaef$9a45f930$87ffa8c0@Win7VM>
 <082beb13-bca6-f001-6b28-8a2e14ad7b25@slint.fr>
 <096901d8eb12$060be090$87ffa8c0@Win7VM>
 <098901d8eb16$fcddc5b0$87ffa8c0@Win7VM>
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
In-Reply-To: <098901d8eb16$fcddc5b0$87ffa8c0@Win7VM>
X-PGP-Key: http://www.gregn.net/pubkey.asc
X-Virus-Scanned: clamav-milter 0.103.6 at vserver
X-Virus-Status: Clean
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

As has already been suggested, you need to go through the
configuration file where fenrir stores its settings, and set it up to
use speech-dispatcher for speech output if you want to use it with
voxin. I'm not a fenrir user, so can't help you beyond that. If you
start a new thread, others who can help you may notice it, if they're
skipping over this one. Better yet, take this to the fenrir group as
has also been suggested, you will probably get more help there. From the output you provided, it looks like
fenrir is trying every possible output system in order except
speech-dispatcher, and failing, but I don't know why.

Greg


On Fri, Oct 28, 2022 at 04:48:15PM -0500, K0LNY_Glenn wrote:
> Here's the message that comes up if I run sudo fenrir:
> If anyone can provide any direction from the error, I would very much 
> appreciate it.
> Glenn
> 
> lenny@asus701:~$ sudo fenrir 
> graphic 192 play WARN alsa:
> can't encode 0-bit Unknown or not applicable
> ALSA lib pcm.c:2660:(snd_pcm_open_noupdate) Unknown PCM cards.pcm.rear
> ALSA lib pcm.c:2660:(snd_pcm_open_noupdate) Unknown PCM cards.pcm.center_lfe 
> graphic 545 ALSA lib pcm.c:2660:(snd_pcm_open_noupdate)
> Unknown PCM cards.pcm.side
> ALSA lib pcm_route.c:877:(find_matching_chmap) Found no matching channel map
> Cannot connect to server socket err = No such file or directory
> Cannot connect to server request channel
> jack server is not running or cannot be started
> JackShmReadWritePtr::~JackShmReadWritePtr - Init not done for -1, skipping 
> unlock                                             graphic 545 
> JackShmReadWritePtr::~JackShmReadWritePtr
> - Init not done for -1, skipping unlock
> Cannot connect to server socket err = No such file or directory
> Cannot connect to server request channel
> jack server is not running or cannot be started
> JackShmReadWritePtr::~JackShmReadWritePtr - Init not done for -1, skipping 
> unlock                                             graphic 545 
> JackShmReadWritePtr::~JackShmReadWritePtr
> - Init not done for -1, skipping unlock
> ALSA lib pcm_oss.c:377:(_snd_pcm_oss_open) Unknown field port
> ALSA lib pcm_oss.c:377:(_snd_pcm_oss_open) Unknown field port
> ALSA lib pulse.c:242:(pulse_connect) PulseAudio: Unable to connect: 
> Connection refused
>                                                                              
>                                                   graphic 545 ALSA lib 
> pulse.c:242:(pulse_connect)
> PulseAudio: Unable to connect: Connection refused
> 
> ALSA lib pcm_a52.c:823:(_snd_pcm_a52_open) a52 is only for playback
> ALSA lib pcm_usb_stream.c:486:(_snd_pcm_usb_stream_open) Invalid type for 
> card
> ALSA lib pcm_usb_stream.c:486:(_snd_pcm_usb_stream_open) Invalid type for 
> card
> Cannot connect to server socket err = No such file or directory 
> graphic 545 Cannot connect
> to server request channel
> jack server is not running or cannot be started
> JackShmReadWritePtr::~JackShmReadWritePtr - Init not done for -1, skipping 
> unlock
> JackShmReadWritePtr::~JackShmReadWritePtr - Init not done for -1, skipping 
> unlock


-- 
web site: http://www.gregn.net
gpg public key: http://www.gregn.net/pubkey.asc
skype: gregn1
(authorization required, add me to your contacts list first)
If we haven't been in touch before, e-mail me before adding me to your contacts.

--
Free domains: http://www.eu.org/ or mail dns-manager@EU.org

