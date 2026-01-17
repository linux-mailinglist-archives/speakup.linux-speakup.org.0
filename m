Return-Path: <speakup+bounces-1509-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 802D3D38B50
	for <lists+speakup@lfdr.de>; Sat, 17 Jan 2026 02:37:54 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; secure) header.d=panix.com header.i=@panix.com header.a=rsa-sha256 header.s=panix header.b=AV0ovBOn;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id E872038192B; Fri, 16 Jan 2026 20:37:53 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id C7A2F3817F6
	for <lists+speakup@lfdr.de>; Fri, 16 Jan 2026 20:37:53 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id EA0CC381835; Fri, 16 Jan 2026 20:37:47 -0500 (EST)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 28A783817DC
	for <speakup@linux-speakup.org>; Fri, 16 Jan 2026 20:37:47 -0500 (EST)
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTPS id 4dtK961Phnz4X4x;
	Fri, 16 Jan 2026 20:37:46 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=panix.com; s=panix;
	t=1768613866; bh=hRZo2N/tP8E9YXlODzRJ7Solz9mHeB5d4s5XVN3gr+U=;
	h=Date:From:To:cc:Subject:In-Reply-To:References;
	b=AV0ovBOnsgkubSClxjXhapEEFP682eHo71uAvQNSkW2jgZVJZfpgCxjV3XEMYRIjc
	 Drzi/vjbn99Gz3aBYhlhWKapYO+zIgnImxC6olvAhPGQ4eCpo1do1Ins0CczpxNRNO
	 RzLP0SjC/k9FH+DxZBx6EJW6Sr8Yws0sgWn8D8DU=
Date: Fri, 16 Jan 2026 20:37:46 -0500 (EST)
From: Jude DaShiell <jdashiel@panix.com>
To: Kirk Reiser <kirk@reisers.ca>
cc: Janina Sajka <janina@a11y.nyc>, speakup@linux-speakup.org
Subject: Re: Espeakup & Espeak Upgrades Broke Latency
In-Reply-To: <a004a67b-aa1b-4390-ad97-928e0dc680e2@reisers.ca>
Message-ID: <8f27ebd4-bad5-7344-bd05-28dd73e69a2f@panix.com>
References: <aWpRKvcLNxlSLfbU@A11y.NYC> <a004a67b-aa1b-4390-ad97-928e0dc680e2@reisers.ca>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux." <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi Kirk, Same version of Debian on all four computers? On Fri, 16 Jan 
2026, Kirk Reiser wrote:

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
> 
> 

