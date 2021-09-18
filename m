Return-Path: <speakup+bounces-294-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 3CB47410880
	for <lists+speakup@lfdr.de>; Sat, 18 Sep 2021 22:10:02 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="key not found in DNS" header.d=rednote.net header.i=@rednote.net header.a=rsa-sha256 header.s=dkim header.b=jS+2u8db;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id AC97C381241; Sat, 18 Sep 2021 16:10:01 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 8D7DC3811FA
	for <lists+speakup@lfdr.de>; Sat, 18 Sep 2021 16:10:01 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id CC94B3809B9; Sat, 18 Sep 2021 16:09:58 -0400 (EDT)
Received: from mail.rednote.net (opera.rednote.net [66.228.34.147])
	by befuddled.reisers.ca (Postfix) with ESMTPS id DE96B380145
	for <speakup@linux-speakup.org>; Sat, 18 Sep 2021 16:09:56 -0400 (EDT)
Received: from opera.rednote.net (localhost [IPv6:::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.rednote.net (Postfix) with ESMTPS id 1A4BDFA657;
	Sat, 18 Sep 2021 16:09:56 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rednote.net; s=dkim;
	t=1631995796;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=FsHhm23Sz5Qs1ty/LzuHwqNJ6fPW5pwy3SECgOg/WWg=;
	b=jS+2u8db2UTDWvvwCXYPn76XmZvaYocdBGIvfXSWpl4V/FwnoWqOdf2YHoje+FXxXR66D7
	a/fEKdyqEgRzgutlRe8834OsCm4Y1x2a3s/1Z9vZPZxwMy8J8Fs9BhpGTm320MPPMvmSsQ
	2hpOvsPt4fCT37TtVz7LHgkoWXFlAFY=
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.rednote.net 1A4BDFA657
Authentication-Results: mail.rednote.net; dmarc=pass (p=reject dis=none) header.from=rednote.net
Authentication-Results: mail.rednote.net; spf=pass smtp.mailfrom=rednote.net
Received: (from janina@localhost)
	by opera.rednote.net (8.16.1/8.16.1/Submit) id 18IK9ueV034594;
	Sat, 18 Sep 2021 16:09:56 -0400
Date: Sat, 18 Sep 2021 16:09:56 -0400
From: Janina Sajka <janina@rednote.net>
To: Kirk Reiser <kirk@reisers.ca>
Cc: speakup@linux-speakup.org
Subject: Re: Broken espeakup on debian sid
Message-ID: <YUZHlHqMWZJyeVXK@rednote.net>
References: <74614290-2cb8-c5a7-91e9-e639a673464a@reisers.ca>
 <YUXlLephhiYuV4UA@rednote.net>
 <50b02165-17e9-2561-ec8-6c35cba66944@reisers.ca>
 <YUYXLHoSvcMnUYzW@rednote.net>
 <dd651c4c-1178-8d83-125d-23ad3d2cef88@reisers.ca>
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
In-Reply-To: <dd651c4c-1178-8d83-125d-23ad3d2cef88@reisers.ca>
X-Operating-System: Linux opera.rednote.net 5.13.16-200.fc34.x86_64
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi, Kirk:

You're right, as usual. I hadn't realized that the devices weren't
created, or the sys/accessibility tree either, until espeakup had run.

Once run, it seems you can exit espeakup and the devices are still in
/dev, and the sys/accessibility tree is still there too.

However, even after chowning all these to my uid:gid, I'm still unable
to run espeakup as myself. I can do it as root, but it's still brittle,
and will definitely fail If I also try to add Orca with
speech-dispatcher into the system, especially since the latest rhvoice
is broken. I don't seem to have an earlier version to back off to. Maybe
I'll go hunt for one to get some stability on that second box.

Yes, it's also Arch. There's a lot I like about Arch and I've gotten
very accustomed to it since Bill's passing -- meaning no more Speakup
enabled Fedora kernels.

Didier is coaxing me to give Slint a try, and I'm inclined to do so at
some point, but that means learning to manage things in yet another
Linux ecosystem, i.e. how the heck do they do package management in
slackware, anyway? <grin>

As for systemd, I've grown fairly comfortable with it, though I'm
unclear what the real benefit is over the older ways I knew once.

Thanks for the help today. It has at least clarified things, and I'm
glad to hear you and Alexander are working on the solution. That's the
A-Team on the job, imo! <grin>

Janina

Kirk Reiser writes:
> Huh, are you running arch on that box as well? I am wondering if
> speakup is even loaded. I noticed in the espeakup build systemd
> services that it loads speakup_soft when the systemd service is
> started.
> 
> I'm not crazy about that being the way to load speakup particularly
> but I'm not that familiar with various distros way of doing things but
> it appears the espeakup maintainers figure everyone is running
> systemd.
> 
> That's one of the reasons I mentioned getting folks opinions in my
> last message to you. For people that don't run systemd it will
> certainly break things.
> 
> 
> On Sat, 18 Sep 2021, Janina Sajka wrote:
> 
> > Well, maybe here's a clue of something ...
> > 
> > Going to my System76 box, which is fully updated as of this morning,
> > including alsa-lib 1.2.5.1-3
> > espeakup 0.90-1
> > There is no /dev/softsynth* of any kind.
> > 
> > root@minuet 12:40:10 dev#ls -l soft*
> > ls: cannot access 'soft*': No such file or directory
> > 
> > Weirder still, there's no /sys/accessibility.
> > 
> > My older machine, also updated this morning, but with the newer alsa-lib
> > and espeakup held out of the upgrade, there is indeed a
> > /sys/accessibility/speakup, where there is indeed a soft directory owned
> > by janina:janina, as are all the files inside.
> > 
> > And this older box also has:
> > 
> > crw------- 1 root root 10, 122 Sep 18 12:08 softsynth
> > crw------- 1 root root 10, 121 Sep 18 12:08 softsynthu
> > 
> > But this is the working box, so I don't want to mess with upgrading
> > alsa-lib here. One broken machine is all I can handle for the moment.
> > 
> > Does that tell us anything useful? It's beyond my paygrade! <grin>
> > 
> > Janina
> > 
> > Kirk Reiser writes:
> > > Hi Janina: I and Alex have been working on this issue the past couple
> > > of days. This is what works for now and what the final solution will
> > > be isn't quite clear to me yet.
> > > 
> > > With alsa 1.2.5 installed chown the /dev/softsynth devices to the user
> > > using them something like:
> > > 
> > > sudo chown janina.janina /dev/softsynth*
> > > 
> > > The astriks wil cover both devices.
> > > 
> > > Then you need to change the permissions of /var/run or whatever it's
> > > called on your system so espeakup can write the pid file:
> > > 
> > > sudo chmod 1777 /run
> > > 
> > > Then run espeakup as yourself:
> > > 
> > > /usr/bin/espeakup
> > > 
> > > We are currently looking into why espeakup doesn't work with pipewire
> > > yet espeak-ng does. It appears that possibly espeakup handles writing
> > > to the alsa sound system directly from espeak-ng. I'm not at all sure
> > > of that yet. It's been a hell of a long time since I looked at 'c'
> > > code so I'm pretty rusty.
> > > 
> > > It does appear that going forward pipewire is going to be the
> > > pulseaudio replacement.
> > > 
> > > I'm certainly open to ideas on the cleanest way to handle all this
> > > stuff. Possibly running pipewire as root or just running everybody as
> > > the individual user, I don't know. Unfortunately it appears we need a
> > > solution to keep up with future alsa libasound2 development.
> > > 
> > >   Kirk
> > > 
> > > 
> > > On Sat, 18 Sep 2021, Janina Sajka wrote:
> > > 
> > > > Hi, Kirk:
> > > > 
> > > > I'm on Arch, not Debian, but I've had broken Espeakup ever since
> > > > alsa-lib-1.2.5 showed up. Since then Espeakup has been upversioned to
> > > > 0.90, but this has not fixed things for me, though apparently it has for
> > > > Alexander now maintaning Espeakup.
> > > > 
> > > > I currently have two functional Linux machines, both fully upgraded as
> > > > of just about half an hour ago except as described below.
> > > > 
> > > > The newer hardware will run by hand with the command: 'espeakup -d', but
> > > > it's highly brittle and prone to crash the system so that a three finger
> > > > salute is needed.
> > > > 
> > > > If I want console access on this 2020 era box, I have to turn to fenrir,
> > > > which I'm just not as comfortable with--but that's another story.
> > > > 
> > > > My older machine is prevented by my /etc/pacman.conf from updating
> > > > alsa-lib and espeakup, and it runs just fine.
> > > > 
> > > > So, my suggestion is back off to the latest alsa-lib-1.2.4, and the
> > > > latest espeakup-0.8 you have, and you should be fine until someone
> > > > figures out what's really going on.
> > > > 
> > > > For anyone running Arch you want the following in your /etc/pacman.conf:
> > > > 
> > > > IgnorePkg   =espeakup
> > > > IgnorePkg   =alsa-lib
> > > > 
> > > > If you've already updated your Arch beyond these versions, you can
> > > > downgrade. You'll find a cache of previous versions in:
> > > > 
> > > > /var/cache/pacman/pkg/
> > > > Just cd on over there as root and check what you have with a command
> > > > like:
> > > > 
> > > > ls -1 alsa-lib* espeakup*
> > > > 
> > > > You can then downversion with pacman like this:
> > > > 
> > > > pacman -U ./[filename]
> > > > 
> > > > where [filename] is the full name you got from ls. I recommend using the
> > > > Speakup clipboard to get the command right.
> > > > 
> > > > Best,
> > > > 
> > > > Janina
> > > > 
> > > > 
> > > > Kirk Reiser writes:
> > > > > Hi folks: Does anyone have espeakup running on debian sid with
> > > > > libasound2 1.2.5? After I upgraded a few days ago I lost my speech
> > > > > output. I have built espeakup and espeak-ng from the current repo on
> > > > > them with no joy either.
> > > > > 
> > > > > Curious minds and all that type thing.
> > > > > 
> > > > >   Kirk
> > > > > 
> > > > 
> > > > 
> > 
> > 

-- 

Janina Sajka
https://linkedin.com/in/jsajka

Linux Foundation Fellow
Executive Chair, Accessibility Workgroup:	http://a11y.org

The World Wide Web Consortium (W3C), Web Accessibility Initiative (WAI)
Co-Chair, Accessible Platform Architectures	http://www.w3.org/wai/apa


