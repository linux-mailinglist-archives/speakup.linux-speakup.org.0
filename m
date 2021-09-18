Return-Path: <speakup+bounces-290-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id D7990410798
	for <lists+speakup@lfdr.de>; Sat, 18 Sep 2021 18:27:26 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="key not found in DNS" header.d=rednote.net header.i=@rednote.net header.a=rsa-sha256 header.s=dkim header.b=iKzGnrQW;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 5B6123811DC; Sat, 18 Sep 2021 12:27:26 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 6BE6D3811E5
	for <lists+speakup@lfdr.de>; Sat, 18 Sep 2021 12:27:23 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 033D8380BF0; Sat, 18 Sep 2021 12:27:21 -0400 (EDT)
Received: from mail.rednote.net (opera.rednote.net [66.228.34.147])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 6993538098B
	for <speakup@linux-speakup.org>; Sat, 18 Sep 2021 12:27:19 -0400 (EDT)
Received: from opera.rednote.net (localhost [IPv6:::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.rednote.net (Postfix) with ESMTPS id 50873FA657;
	Sat, 18 Sep 2021 12:27:18 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rednote.net; s=dkim;
	t=1631982438;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=jFD7O0gAFzRnxxw3s71DW4YwmZjYTU/1D+qWaAB3cI0=;
	b=iKzGnrQWOFbMvmQ1b57BkqF8sZ6myodZKw2kHCVcXyweqHSUQRFm44bXU3YLhgv+FGAmi9
	bL9xys39fZUGxlXcHD26bbmfWNJJc01i251vKT+xmE93fqzfRc+hBY+qA1K3anpSyzteBi
	FAy1eJf856eHEVWGHCGpp9p6eDJH89g=
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.rednote.net 50873FA657
Authentication-Results: mail.rednote.net; dmarc=pass (p=reject dis=none) header.from=rednote.net
Authentication-Results: mail.rednote.net; spf=pass smtp.mailfrom=rednote.net
Received: (from janina@localhost)
	by opera.rednote.net (8.16.1/8.16.1/Submit) id 18IGRIlI018714;
	Sat, 18 Sep 2021 12:27:18 -0400
Date: Sat, 18 Sep 2021 12:27:18 -0400
From: Janina Sajka <janina@rednote.net>
To: Kirk Reiser <kirk@reisers.ca>
Cc: speakup@linux-speakup.org
Subject: Re: Broken espeakup on debian sid
Message-ID: <YUYTZq7DoDKEJKQb@rednote.net>
References: <74614290-2cb8-c5a7-91e9-e639a673464a@reisers.ca>
 <YUXlLephhiYuV4UA@rednote.net>
 <50b02165-17e9-2561-ec8-6c35cba66944@reisers.ca>
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
In-Reply-To: <50b02165-17e9-2561-ec8-6c35cba66944@reisers.ca>
X-Operating-System: Linux opera.rednote.net 5.13.16-200.fc34.x86_64
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Thanks, Kirk!

I will try your suggestions this afternoon and see if I can find some
joy on my System76 2020 era mini machine.

I will report. Meanwhile, it does indeed seem pipewire is the path of
the future, and that's probably a good thing, though once again I wish
some of us had been involved in specifying its requirements. I never did
get happy with pulse, so have generally stayed with alsa until now. I do
have the pipewirealsa package loaded, though not sure the older alsa-lib
does anything with that.

Thanks for the specific suggestions.

More soon.

Janina

Kirk Reiser writes:
> Hi Janina: I and Alex have been working on this issue the past couple
> of days. This is what works for now and what the final solution will
> be isn't quite clear to me yet.
> 
> With alsa 1.2.5 installed chown the /dev/softsynth devices to the user
> using them something like:
> 
> sudo chown janina.janina /dev/softsynth*
> 
> The astriks wil cover both devices.
> 
> Then you need to change the permissions of /var/run or whatever it's
> called on your system so espeakup can write the pid file:
> 
> sudo chmod 1777 /run
> 
> Then run espeakup as yourself:
> 
> /usr/bin/espeakup
> 
> We are currently looking into why espeakup doesn't work with pipewire
> yet espeak-ng does. It appears that possibly espeakup handles writing
> to the alsa sound system directly from espeak-ng. I'm not at all sure
> of that yet. It's been a hell of a long time since I looked at 'c'
> code so I'm pretty rusty.
> 
> It does appear that going forward pipewire is going to be the
> pulseaudio replacement.
> 
> I'm certainly open to ideas on the cleanest way to handle all this
> stuff. Possibly running pipewire as root or just running everybody as
> the individual user, I don't know. Unfortunately it appears we need a
> solution to keep up with future alsa libasound2 development.
> 
>   Kirk
> 
> 
> On Sat, 18 Sep 2021, Janina Sajka wrote:
> 
> > Hi, Kirk:
> > 
> > I'm on Arch, not Debian, but I've had broken Espeakup ever since
> > alsa-lib-1.2.5 showed up. Since then Espeakup has been upversioned to
> > 0.90, but this has not fixed things for me, though apparently it has for
> > Alexander now maintaning Espeakup.
> > 
> > I currently have two functional Linux machines, both fully upgraded as
> > of just about half an hour ago except as described below.
> > 
> > The newer hardware will run by hand with the command: 'espeakup -d', but
> > it's highly brittle and prone to crash the system so that a three finger
> > salute is needed.
> > 
> > If I want console access on this 2020 era box, I have to turn to fenrir,
> > which I'm just not as comfortable with--but that's another story.
> > 
> > My older machine is prevented by my /etc/pacman.conf from updating
> > alsa-lib and espeakup, and it runs just fine.
> > 
> > So, my suggestion is back off to the latest alsa-lib-1.2.4, and the
> > latest espeakup-0.8 you have, and you should be fine until someone
> > figures out what's really going on.
> > 
> > For anyone running Arch you want the following in your /etc/pacman.conf:
> > 
> > IgnorePkg   =espeakup
> > IgnorePkg   =alsa-lib
> > 
> > If you've already updated your Arch beyond these versions, you can
> > downgrade. You'll find a cache of previous versions in:
> > 
> > /var/cache/pacman/pkg/
> > Just cd on over there as root and check what you have with a command
> > like:
> > 
> > ls -1 alsa-lib* espeakup*
> > 
> > You can then downversion with pacman like this:
> > 
> > pacman -U ./[filename]
> > 
> > where [filename] is the full name you got from ls. I recommend using the
> > Speakup clipboard to get the command right.
> > 
> > Best,
> > 
> > Janina
> > 
> > 
> > Kirk Reiser writes:
> > > Hi folks: Does anyone have espeakup running on debian sid with
> > > libasound2 1.2.5? After I upgraded a few days ago I lost my speech
> > > output. I have built espeakup and espeak-ng from the current repo on
> > > them with no joy either.
> > > 
> > > Curious minds and all that type thing.
> > > 
> > >   Kirk
> > > 
> > 
> > 

-- 

Janina Sajka
https://linkedin.com/in/jsajka

Linux Foundation Fellow
Executive Chair, Accessibility Workgroup:	http://a11y.org

The World Wide Web Consortium (W3C), Web Accessibility Initiative (WAI)
Co-Chair, Accessible Platform Architectures	http://www.w3.org/wai/apa


