Return-Path: <speakup+bounces-291-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id A6B3D4107A0
	for <lists+speakup@lfdr.de>; Sat, 18 Sep 2021 18:43:34 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="key not found in DNS" header.d=rednote.net header.i=@rednote.net header.a=rsa-sha256 header.s=dkim header.b=IrfRWxLX;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id BEC71380BA1; Sat, 18 Sep 2021 12:43:33 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 4C842381213
	for <lists+speakup@lfdr.de>; Sat, 18 Sep 2021 12:43:30 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 791793809B9; Sat, 18 Sep 2021 12:43:27 -0400 (EDT)
Received: from mail.rednote.net (opera.rednote.net [66.228.34.147])
	by befuddled.reisers.ca (Postfix) with ESMTPS id E42A0380994
	for <speakup@linux-speakup.org>; Sat, 18 Sep 2021 12:43:26 -0400 (EDT)
Received: from opera.rednote.net (localhost [IPv6:::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.rednote.net (Postfix) with ESMTPS id C99A3FA657;
	Sat, 18 Sep 2021 12:43:24 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rednote.net; s=dkim;
	t=1631983404;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=WFH8zP6+DdZZ6FQlE46uNce3ysZSx/xxcS9ZcGSz8H0=;
	b=IrfRWxLXOtVTm1pR+CsgunrNWs8f6lvO772NtJen7n2G8ekYtyWjhItRulnGQ8HjeI3qsK
	PkkPz3Hnr307eyK7NIJ8A/HCtvfcU3pQG5AynomW8lLTIzVP4owf+ccJxm8NYHmL2jSnnk
	MkArkf3RKSHuK57DXgln6BEBSnLduJg=
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.rednote.net C99A3FA657
Authentication-Results: mail.rednote.net; dmarc=pass (p=reject dis=none) header.from=rednote.net
Authentication-Results: mail.rednote.net; spf=pass smtp.mailfrom=rednote.net
Received: (from janina@localhost)
	by opera.rednote.net (8.16.1/8.16.1/Submit) id 18IGhOKu019851;
	Sat, 18 Sep 2021 12:43:24 -0400
Date: Sat, 18 Sep 2021 12:43:24 -0400
From: Janina Sajka <janina@rednote.net>
To: Kirk Reiser <kirk@reisers.ca>
Cc: speakup@linux-speakup.org
Subject: Re: Broken espeakup on debian sid
Message-ID: <YUYXLHoSvcMnUYzW@rednote.net>
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

Well, maybe here's a clue of something ...

Going to my System76 box, which is fully updated as of this morning,
including alsa-lib 1.2.5.1-3
espeakup 0.90-1
There is no /dev/softsynth* of any kind.

root@minuet 12:40:10 dev#ls -l soft*
ls: cannot access 'soft*': No such file or directory

Weirder still, there's no /sys/accessibility.

My older machine, also updated this morning, but with the newer alsa-lib
and espeakup held out of the upgrade, there is indeed a
/sys/accessibility/speakup, where there is indeed a soft directory owned
by janina:janina, as are all the files inside.

And this older box also has:

crw------- 1 root root 10, 122 Sep 18 12:08 softsynth
crw------- 1 root root 10, 121 Sep 18 12:08 softsynthu

But this is the working box, so I don't want to mess with upgrading
alsa-lib here. One broken machine is all I can handle for the moment.

Does that tell us anything useful? It's beyond my paygrade! <grin>

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


