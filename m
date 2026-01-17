Return-Path: <speakup+bounces-1510-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id BBDBDD38F30
	for <lists+speakup@lfdr.de>; Sat, 17 Jan 2026 15:54:22 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=a11y.nyc header.i=@a11y.nyc header.a=rsa-sha256 header.s=dkim header.b=icKdwgxJ;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 1A6DF38193D; Sat, 17 Jan 2026 09:54:21 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id ECAC33817DB
	for <lists+speakup@lfdr.de>; Sat, 17 Jan 2026 09:54:20 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 1F3663817F7; Sat, 17 Jan 2026 09:54:15 -0500 (EST)
Received: from a11y.nyc (opera.a11y.nyc [66.228.34.147])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 0043C38099D
	for <speakup@linux-speakup.org>; Sat, 17 Jan 2026 09:54:14 -0500 (EST)
Received: from opera.a11y.nyc (localhost [IPv6:::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by a11y.nyc (Postfix) with ESMTPS id B4FDEFA0D2
	for <speakup@linux-speakup.org>; Sat, 17 Jan 2026 09:54:10 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=a11y.nyc; s=dkim;
	t=1768661650;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=bpV4Q/zBLB43rwRFXDM8afdMSyOZSmJQ4V8+nksOGu4=;
	b=icKdwgxJf0wTF/mjjed2yv8VQyD2tf7qyAH3NY6IbvqsZoalS4x5FHe17GVX4wpJgIZEXa
	rOsjo0EV924/fqnRI1m2EaPrAB1a61YGBPKGNQxxcfVLKEB/yoiYqoQtdkqALl067CQt+8
	5ASU6TTYP7JYoJGDFaDqQWYdFySC/Xg=
DMARC-Filter: OpenDMARC Filter v1.4.2 a11y.nyc B4FDEFA0D2
Authentication-Results: a11y.nyc; dmarc=pass (p=reject dis=none) header.from=a11y.nyc
Authentication-Results: a11y.nyc; spf=pass smtp.mailfrom=a11y.nyc
Received: (from janina@localhost)
	by opera.a11y.nyc (8.18.1/8.16.1/Submit) id 60HEsAU6013714
	for speakup@linux-speakup.org; Sat, 17 Jan 2026 09:54:10 -0500
Date: Sat, 17 Jan 2026 09:54:10 -0500
From: Janina Sajka <janina@a11y.nyc>
To: speakup@linux-speakup.org
Subject: Re: Espeakup & Espeak Upgrades Broke Latency
Message-ID: <aWuikrSJXT1hTKgI@A11y.NYC>
References: <aWpRKvcLNxlSLfbU@A11y.NYC>
 <a004a67b-aa1b-4390-ad97-928e0dc680e2@reisers.ca>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux." <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a004a67b-aa1b-4390-ad97-928e0dc680e2@reisers.ca>
X-Operating-System: Linux opera.a11y.nyc 6.18.5-100.fc42.x86_64
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Thanks Kirk, All! It's always nice to know I'm not alone in my misery!  :)
It's also interesting to hear the variety of systems where others have
similar behavior.

I have three Linux machines, but only two of them are hands on, and one
of those is in a VMware virtual machine on my Macbook, so doesn't really
count. That leaves my 2020 era System76 cube which is running Arch and
is usually fully updated.

The curious thing for me is that I wasn't having this problem at all
until I again decided to update espeak and espeakup. The really
interesting part, imo, is that returning to the old versions of espeak
and of espeakup didn't fix things. But before all that compiling and
upgrading, everything was fine. Somewhere there's a clue in there, but
I'm not clever enough to discover it.

One more recent factoid may be helpful. I have 3 audio devices currently
on this machine, two of which are USB 2 devices. Before I played with
espeak upgrades, Speakup would always grab usb0, but no more. Now it
always grabs usb1. I know, because if I boot with the usb unplugged,
Speakup just waits for me to plug the device in and then it chatters as
expected. It's like it's sitting there waiting for the connection even
though the device isn't yet available on the bus. Nothing I can figure
to do dislodges it from usb1.

Curiouser and curiouser.

Best,
Janina

Kirk Reiser writes:
> Hi Janina: Your question is very much a valid one. I was hoping
> someone else would answer you and we might all benefit from a solid
> answer.
> 
> I use espeakup with espeak-ng on at least four computers and my
> experience is that on a few it instantly flushes when a control or
> another key is typed The exact reaction it was designed to be. But
> more often than not on some computers it is not instantaneous and when
> moving back across the screen with the review keys it becomes mushy
> because the text sounds like it is all running together.
> 
> The fact that I use debian on these boxes would somewhat seem to
> indicate that the software should all be exactly the same but at las
> it certainly doesn't seem so.
> 
> Sometimes I can restart espeakup and it starts behaving itself
> properly but other times theres no difference.
> 
> Yes, it is very frustrating just like the jumbled speech towards the
> bottom of the screen when you just allow the standard output to rattle
> on.
> 
> I'm sorry I don't have a nice answer for you but I wished to let you
> know you are not alone with your experiences.
> 
>   kirk
> 
> 
> 
> On Fri, 16 Jan 2026, Janina Sajka wrote:
> 
> > Hi All:
> > 
> > For some years I've been on Espeakup 0.8, avoiding upgrades because
> > upgrades failed to get speech working
> > properly, either with Espeak or Espeak-ng. Meanwhile, Speakup was
> > working brilliantly with the older Espeakup/Espeak version, so I had
> > left welll enough alone.
> > 
> > Until this last week. I decided to try again. To my surprise and delight
> > I now have Espeak-NG and Espeakup fully updated. Almost everything is
> > fine--except for Speakup's shut up commands! Not stopping speech
> > sufficiently quickly is a very big deal, as we all know.
> > 
> > I'm using a wired USB keyboard. Ctrl might shut speech up immediately,
> > or it might take a second or so. Numpad enter is the same. Maybe it
> > works as it should, but maybe it's very laggy. Likewise the various
> > numpad screen review keys. Same story all around.
> > 
> > My first instinct was to return everything to previous versions, because
> > laser quick shutup is that important. Unfortunately, restoring the old
> > didn't fix things. I have the same behavior, regardless whether I'm on
> > Espeak or Espeak-NG, and regardless the version of Espeakup.
> > 
> > So, what might possibly be the story here? Needless to say I want
> > Speakup's brilliant responsiveness back. But what's broken? And how to
> > fix?
> > 
> > All suggestions most welcome and greatly appreciated!
> > 
> > Best,
> > Janina
> > 
> > 

-- 

Janina Sajka (she/her/hers)
Accessibility Consultant https://linkedin.com/in/jsajka

The World Wide Web Consortium (W3C), Web Accessibility Initiative (WAI)
Co-Chair, Accessible Platform Architectures	http://www.w3.org/wai/apa

Linux Foundation Fellow
https://www.linuxfoundation.org/board-of-directors-2/


