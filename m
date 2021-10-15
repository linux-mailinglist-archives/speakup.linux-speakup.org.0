Return-Path: <speakup+bounces-321-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 374A642FDB5
	for <lists+speakup@lfdr.de>; Fri, 15 Oct 2021 23:57:33 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="key not found in DNS" header.d=slint.fr header.i=@slint.fr header.a=rsa-sha256 header.s=default header.b=RsjjJgrQ;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 6BE52380F8A; Fri, 15 Oct 2021 17:57:32 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 576EF380F05
	for <lists+speakup@lfdr.de>; Fri, 15 Oct 2021 17:57:32 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 636D5380F18; Fri, 15 Oct 2021 17:57:26 -0400 (EDT)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79])
	by befuddled.reisers.ca (Postfix) with ESMTP id 8EA06380A13
	for <speakup@linux-speakup.org>; Fri, 15 Oct 2021 17:57:25 -0400 (EDT)
Received: from [192.168.0.10] (sfa89-1-78-208-157-71.fbx.proxad.net [78.208.157.71])
	by darkstar.slint.fr (Postfix) with ESMTPSA id BA316A3A04;
	Fri, 15 Oct 2021 21:56:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=slint.fr; s=default;
	t=1634327811; bh=v9QvwRp2bfl8tB5Ek0KfYM9Lu9OJDjXk6+HfTAi2iqk=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=RsjjJgrQKXdVS6uZXxFY20YaSGgAs8aWMJT1w8w5QAUcsWVXDVMsscvi5XJBFLQiV
	 MPOv8zKasMvhyMqOMRd036RAAWLhCJmceB/v88WPmH1BwMEYvOhl4p4HtAgEuG7rXy
	 VyZaY4GwXL+h8MN6G4ehC2Uhj7+xI3yDgVU7ZL6ptCoPFh6omOqp2eEsfHupBmE/sl
	 X55d6r5eKF0PXe44fpEBsIDGOIKuSNQgIi/PyKDTvR5vhM5+0kbM2biEp6N6MEIMQR
	 lGM7FNWn6V0YiLUK8e/DR/YFzSygwleAdXKUVNaMzPZ5Sw05OA7jE5K3GkKXtd9Aef
	 +GNn8OReGa1sg==
Message-ID: <cbd75a41-111c-020a-89dc-399f6cd1117e@slint.fr>
Date: Fri, 15 Oct 2021 23:57:15 +0200
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
To: Gregory Nowak <greg@gregn.net>
Cc: speakup@linux-speakup.org
References: <20211015192340.GA3715@gregn.net>
 <26bab3e2-04ce-26ee-efc1-c3a4a8d1a661@slint.fr>
 <20211015194854.GA4367@gregn.net>
From: Didier Spaier <didier@slint.fr>
In-Reply-To: <20211015194854.GA4367@gregn.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi,

Le 15/10/2021 à 21:48, Gregory Nowak a écrit :
> My understanding is that having pulseaudio installed and using dmix
> causes sound output to crash, and requires a system reboot.

Not here. My assumption would be that in Debian/Devuan some Alsa 
settings done
in configuration files redirect the stream to Pulse if present, somehow
creating a loop if dmix is used by PulseAudio.

I have found some of these settings a while ago but didn't have the time to
investigate long enough to get to a conclusion (hint: I am not a 
Debian/Devuan
user).

As far as I know there are at least two methods that can be used to make 
sound
streams sent to PA and others sent directly to Alsa coexist nicely, both 
listed
in the Arch Wiki:
https://wiki.archlinux.org/title/PulseAudio#ALSA/dmix_without_grabbing_hardware_device
https://wiki.archlinux.org/title/PulseAudio/Examples#PulseAudio_as_a_minimal_unintrusive_dumb_pipe_to_ALSA

I use the former in Slint.

> pulseaudio rather than working around it was easier to do. I've
> also corresponded with a few people from this list who indicated
> the first thing they do after installing debian/devuan is to purge
> pulseaudio, and if someone wants pulseaudio back in devuan along with
> a graphical desktop, this is easily done during and after system
> install.
> 
> Greg

Best regards,
Didier

