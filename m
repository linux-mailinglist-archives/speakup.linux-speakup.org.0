Return-Path: <speakup+bounces-351-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id BD0D4480DC6
	for <lists+speakup@lfdr.de>; Tue, 28 Dec 2021 23:40:28 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=rednote.net header.i=@rednote.net header.a=rsa-sha256 header.s=dkim header.b=QgfgbC/z;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 45C4D3811C3; Tue, 28 Dec 2021 17:40:28 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 30A9D381169
	for <lists+speakup@lfdr.de>; Tue, 28 Dec 2021 17:40:28 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 99EEF38116A; Tue, 28 Dec 2021 17:40:22 -0500 (EST)
Received: from mail.rednote.net (opera.rednote.net [66.228.34.147])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 866DD381163
	for <speakup@linux-speakup.org>; Tue, 28 Dec 2021 17:40:22 -0500 (EST)
Received: from opera.rednote.net (localhost [IPv6:::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.rednote.net (Postfix) with ESMTPS id 9BEF2FA278;
	Tue, 28 Dec 2021 17:40:21 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rednote.net; s=dkim;
	t=1640731221;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=RcHa0y0S0GL9T3fsEyfcQswd9VUPFqlYJcpMM4/Prnc=;
	b=QgfgbC/zo1V7h7WcCH+hdOSpIYv1KA+WHbbxJfBFPohTGrVSjSkSqE02/tPM17EJm2KgB8
	JZ7EqvMbDrVR06e4T1VM4++0MDSsci+zD5hWHAHdBOKkICq26NUdCkzlCQjyhhASIn7rrs
	y2IKPD8kYsb0MoBMt/F+BdDjIV4kGA8=
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.rednote.net 9BEF2FA278
Authentication-Results: mail.rednote.net; dmarc=pass (p=reject dis=none) header.from=rednote.net
Authentication-Results: mail.rednote.net; spf=pass smtp.mailfrom=rednote.net
Received: (from janina@localhost)
	by opera.rednote.net (8.17.1/8.16.1/Submit) id 1BSMeLg6959582;
	Tue, 28 Dec 2021 17:40:21 -0500
Date: Tue, 28 Dec 2021 17:40:21 -0500
From: Janina Sajka <janina@rednote.net>
To: Alexander Epaneshnikov <aarnaarn2@gmail.com>
Cc: Didier Spaier <didier@slint.fr>, speakup@linux-speakup.org
Subject: Re: Now Fixed: Archlinux Speakup problems after alsa package upgrade
Message-ID: <YcuSVelJCeOX5Vg0@rednote.net>
References: <YMdZA0DL4BgCAShe@rednote.net>
 <6b4b229d-5e00-22e4-8cf2-33ed7bbd6b93@gmail.com>
 <YNMr0Pathc/mqx1L@rednote.net>
 <YcNUgwlCFtiAmY3Q@rednote.net>
 <3cefe3e6-f95a-ffe9-5995-543d6e4357db@jasonjgw.net>
 <Ycs60ClBq1jcVDuF@rednote.net>
 <055e3d2d-0653-3edc-4879-484816734d00@slint.fr>
 <YctqoKAZIKdSZH9f@rednote.net>
 <86d02e30-71fc-50bd-2408-6c658ec2da29@slint.fr>
 <20211228211323.3f2uhc6hblud4h3a@alex-pc>
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
In-Reply-To: <20211228211323.3f2uhc6hblud4h3a@alex-pc>
X-Operating-System: Linux opera.rednote.net 5.15.8-200.fc35.x86_64
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi, Alexander:

Alexander Epaneshnikov writes:
> On Tue, Dec 28, 2021 at 09:15:07PM +0100, Didier Spaier wrote:
> > On 28/12/2021 20:50, Janina Sajka wrote:
> ...
> > In any case you need to rebuild espeakup-0.90 against espeak-ng. How to do that
> 
> no need to do that.
> Janina are you using pipewire on box with not working espeakup?
> currently espeakup hasn't work with pw. I haven't found time to debug this yet.
> sorry.
> 
OK, Alexander. I understand time is a precious thing! <smile> Since
Espeakup is behaving on both my machines, I'm a happy customer, i.e. I
don't mind that I'm using old espeak on one machine, and espeak-ng on
the other. That really doesn't bother me at all. I'm glad I'm now able
to keep the remainder of the audio infrastructure updating.

Yes, I seem to have a full compliment of pw on the older machine, and
the same set of pw on the newer machine.

Interestingly, the files in /etc/alsa/conf.d/ are different. The new
machine shows only two files there:

50-pipewire.conf
99-pipewire-default.conf

On the older machine, earlier today, I tried renumber my alsa devices
via /etc/modprobe.d/alsa.conf. I ended up putting things back the way
they were, because the builtin Intel HDA device doesn't work as card 0
for some reason--very strange, but I adjusted some time ago to start
numbering my three devices as 1, 2 and 3.  So, after I put things back,
a see much more pw in that directory:

10-samplerate.conf
10-speexrate.conf
50-arcam-av-ctl.conf
50-jack.conf
50-oss.conf
50-pipewire.conf
50-pulseaudio.conf
60-speex.conf
60-upmix.conf
60-vdownmix.conf
98-usb-stream.conf
99-pipewire-default.conf


This suggests to me that the conversion to pw is still a work in
progress!

I've no idea why the above is the situation, though, or what packages
handle what aspect.

Best,

Janina

> --
> Sincerely, Alexander

-- 

Janina Sajka
(she/her/hers)
https://linkedin.com/in/jsajka

Linux Foundation Fellow
Executive Chair, Accessibility Workgroup:	http://a11y.org

The World Wide Web Consortium (W3C), Web Accessibility Initiative (WAI)
Co-Chair, Accessible Platform Architectures	http://www.w3.org/wai/apa


