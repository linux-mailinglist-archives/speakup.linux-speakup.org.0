Return-Path: <speakup+bounces-295-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id E4E81410889
	for <lists+speakup@lfdr.de>; Sat, 18 Sep 2021 22:23:53 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="key not found in DNS" header.d=rednote.net header.i=@rednote.net header.a=rsa-sha256 header.s=dkim header.b=tjNwNb50;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 5F80A38123B; Sat, 18 Sep 2021 16:23:53 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 438B5381235
	for <lists+speakup@lfdr.de>; Sat, 18 Sep 2021 16:23:53 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 6CE5D380BA1; Sat, 18 Sep 2021 16:23:50 -0400 (EDT)
Received: from mail.rednote.net (opera.rednote.net [66.228.34.147])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 593AB380145
	for <speakup@linux-speakup.org>; Sat, 18 Sep 2021 16:23:50 -0400 (EDT)
Received: from opera.rednote.net (localhost [IPv6:::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.rednote.net (Postfix) with ESMTPS id EF4AEFA657;
	Sat, 18 Sep 2021 16:23:47 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rednote.net; s=dkim;
	t=1631996628;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=/05TCOF+99f2vbVAq1x/sb40IpPLSzvvRH/S0QA1U4w=;
	b=tjNwNb50H3iPkuoOJ5Y8Tg0G1lyst+w+pFs1uyIQhC9YI4TJ4/wzYTN/3Qn1n2w+ePemq5
	zg9GUiINIV3JdAzwltCar7LCIGuN3kxCkgtsYhGHN3fGwkzxXFZUo3vxzcXED2skhnpEA5
	Ed+PWyoHJqUt7BVmde96Eob+kv2vlI8=
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.rednote.net EF4AEFA657
Authentication-Results: mail.rednote.net; dmarc=pass (p=reject dis=none) header.from=rednote.net
Authentication-Results: mail.rednote.net; spf=pass smtp.mailfrom=rednote.net
Received: (from janina@localhost)
	by opera.rednote.net (8.16.1/8.16.1/Submit) id 18IKNl4H035198;
	Sat, 18 Sep 2021 16:23:47 -0400
Date: Sat, 18 Sep 2021 16:23:47 -0400
From: Janina Sajka <janina@rednote.net>
To: Didier Spaier <didier@slint.fr>
Cc: speakup@linux-speakup.org
Subject: Re: Broken espeakup on debian sid
Message-ID: <YUZK09xnYZ/jWTOM@rednote.net>
References: <74614290-2cb8-c5a7-91e9-e639a673464a@reisers.ca>
 <YUXlLephhiYuV4UA@rednote.net>
 <596ae85b-03ef-3f9e-b232-db94931541b1@slint.fr>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <596ae85b-03ef-3f9e-b232-db94931541b1@slint.fr>
X-Operating-System: Linux opera.rednote.net 5.13.16-200.fc34.x86_64
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi, Didier:

Short of installing Slint--which I'm still considering, but I hesitate
to adopt yet another learning curve for  package management ...

Rebuilding pcaudiolib without pulse support sounds intriguing. I will
investigate, because ldd is definitely reporting dependency on .

        libpulse-simple.so.0 => /usr/lib/libpulse-simple.so.0
	(0x00007fa62a433000)
	        libpulse.so.0 => /usr/lib/libpulse.so.0
		(0x00007fa62a3de000)
		        libpulsecommon-15.0.so =>
			/usr/lib/pulseaudio/libpulsecommon-15.0.so
			(0x00007fa62a355000)

Best,

Janina


Didier Spaier writes:
> Hi Kirk and Janina:
> 
> In Slint at time of writing we have:
> alsa-lib-1.2.5
> espeakup-0.9.0
> espeak-ng-git2b77dd27
> linux-5.3.13
> pcaudiolib-gita41d46e
> sonic-gitba331411
> 
> No issue with espeakup, neither that I observed using it nor reported by
> users.
> This makes me assume that the issue doesn't come from upstream.
> 
> FYI, Hhere are the binary dependencies, according to ldd:
> dance[~]$ ldd /usr/bin/espeakup
> 
> 	linux-vdso.so.1 (0x00007ffe7059d000)
> 	libespeak-ng.so.1 => /usr/lib64/libespeak-ng.so.1 (0x00007f284e5a5000)
> 	libasound.so.2 => /usr/lib64/libasound.so.2 (0x00007f284e37b000)
> 	libm.so.6 => /lib64/libm.so.6 (0x00007f284e072000)
> 	libpthread.so.0 => /lib64/libpthread.so.0 (0x00007f284de55000)
> 	libc.so.6 => /lib64/libc.so.6 (0x00007f284da8c000)
> 	libpcaudio.so.0 => /usr/lib64/../lib64/libpcaudio.so.0 (0x00007f284e59c000)
> 	libsonic.so.0 => /usr/lib64/../lib64/libsonic.so.0 (0x00007f284e596000)
> 	libstdc++.so.6 => /usr/lib64/../lib64/libstdc++.so.6 (0x00007f284d710000)
> 	libgcc_s.so.1 => /usr/lib64/../lib64/libgcc_s.so.1 (0x00007f284d4f9000)
> 	libdl.so.2 => /lib64/libdl.so.2 (0x00007f284d2f5000)
> 	librt.so.1 => /lib64/librt.so.1 (0x00007f284d0ed000)
> 	/lib64/ld-linux-x86-64.so.2 (0x00007f284e480000)
> 
> I don't know if that comes into play, but in Slint we don't redirect the
> sound
> streams from alsa to pulseaudio, rather the opposite.
> 
> It could matter what I read in our ChangeLog at:
> https://slackware.uk/slint/x86_64/slint-14.2.1/ChangeLog.txt
> quoted below:
> Tuesday 29 June 2021
> pcaudiolib-gita41d46e-x86_64-2slint: Rebuilt
>   Built without pulseaudio to avoid starting pulseaudio as root through
>   espeakup. Thanks to Tony Seth for the heads-up.
> 
> so I have included these configure options for pcaudiolib:
> --with-alsa
> --without-pulseaudio
> 
> Cheers,
> Didier
> 
> Le 18/09/2021 à 15:10, Janina Sajka a écrit :
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
> > >    Kirk
> > > 
> > 

-- 

Janina Sajka
https://linkedin.com/in/jsajka

Linux Foundation Fellow
Executive Chair, Accessibility Workgroup:	http://a11y.org

The World Wide Web Consortium (W3C), Web Accessibility Initiative (WAI)
Co-Chair, Accessible Platform Architectures	http://www.w3.org/wai/apa


