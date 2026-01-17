Return-Path: <speakup+bounces-1511-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 6DDEBD38FA7
	for <lists+speakup@lfdr.de>; Sat, 17 Jan 2026 17:08:55 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; secure) header.d=panix.com header.i=@panix.com header.a=rsa-sha256 header.s=panix header.b=YyeMPPaA;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 8B4A238193A; Sat, 17 Jan 2026 11:03:36 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 6306438184E
	for <lists+speakup@lfdr.de>; Sat, 17 Jan 2026 11:03:36 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 7D4C338184E; Sat, 17 Jan 2026 11:03:30 -0500 (EST)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 3B5453817BA
	for <speakup@linux-speakup.org>; Sat, 17 Jan 2026 11:03:29 -0500 (EST)
Received: from panix3.panix.com (panix3.panix.com [166.84.1.3])
	by mailbackend.panix.com (Postfix) with ESMTP id 4dthMz60rBz40by
	for <speakup@linux-speakup.org>; Sat, 17 Jan 2026 11:03:27 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=panix.com; s=panix;
	t=1768665807; bh=IF+CxRR6hJ/pEHDa1PrJq8HEAPPEgLoOuqterKNR7XY=;
	h=Date:From:To:Subject:References:In-Reply-To;
	b=YyeMPPaAv0GX67lwBe+EIC5LTGLuUWSdhGvZLlMSNct+o+0z+LNsbim8jblti2MIg
	 QpBGal0Y6kz8ZNO0Tc7oUKPe1k4cEZm+zATbTuaRx0FKOlrhkVxM4vDptW+s9ikZD1
	 9POq5xukVReDkgSxkSOcbBCoarNHcrO/RiYNZZjo=
Received: by panix3.panix.com (Postfix, from userid 20196)
	id 4dthMz5mmmz1QXN; Sat, 17 Jan 2026 11:03:27 -0500 (EST)
Date: Sat, 17 Jan 2026 11:03:27 -0500
From: Rudy Vener <salt@panix.com>
To: speakup@linux-speakup.org
Subject: Re: Espeakup & Espeak Upgrades Broke Latency
Message-ID: <aWuyz0FNCxlVXhEF@panix.com>
References: <aWpRKvcLNxlSLfbU@A11y.NYC>
 <a004a67b-aa1b-4390-ad97-928e0dc680e2@reisers.ca>
 <aWuikrSJXT1hTKgI@A11y.NYC>
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
In-Reply-To: <aWuikrSJXT1hTKgI@A11y.NYC>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

I have the same problem Kirk mentioned when speakup is nattering on
down the screen and its speech becomes jumbled after a paragraph or two.

I solved this problem by writing the page (usually from lynx) into a text file
and running a script that does this:

espeak-ng -p 75 -g 0 -a 50 -s 200 -v en-us  -w ~/out.wav -f input.txt
speakup-toggle #off
sleep 1
mplayer ~/out.wav
rm ~/out.wav
speakup-toggle #on



speakup-toggle does this:
echo key ctrl+kpenter | dotool


which simulates pressing the speakup on/off keys, assuming you have dotool installed.

Yes, it's kludgy, but it lets me read full novels with espeak using
the mplayer pause and forward/back controls.

-- 
Rudy Vener

Beast Hunt Vol 1 now available: https://www.amazon.com/dp/B0DPN1QGGJ
Ludicrous Limerick - The A.C.L.U. Has No Clue https://substack.com/@LimerickDude
Website: http://www.rudyvener.com

On Sat, Jan 17, 2026 at 09:54:10AM -0500, Janina Sajka wrote:
> Thanks Kirk, All! It's always nice to know I'm not alone in my misery!  :)
> It's also interesting to hear the variety of systems where others have
> similar behavior.
> 
> I have three Linux machines, but only two of them are hands on, and one
> of those is in a VMware virtual machine on my Macbook, so doesn't really
> count. That leaves my 2020 era System76 cube which is running Arch and
> is usually fully updated.
> 
> The curious thing for me is that I wasn't having this problem at all
> until I again decided to update espeak and espeakup. The really
> interesting part, imo, is that returning to the old versions of espeak
> and of espeakup didn't fix things. But before all that compiling and
> upgrading, everything was fine. Somewhere there's a clue in there, but
> I'm not clever enough to discover it.
> 
> One more recent factoid may be helpful. I have 3 audio devices currently
> on this machine, two of which are USB 2 devices. Before I played with
> espeak upgrades, Speakup would always grab usb0, but no more. Now it
> always grabs usb1. I know, because if I boot with the usb unplugged,
> Speakup just waits for me to plug the device in and then it chatters as
> expected. It's like it's sitting there waiting for the connection even
> though the device isn't yet available on the bus. Nothing I can figure
> to do dislodges it from usb1.
> 
> Curiouser and curiouser.
> 
> Best,
> Janina
> 
> Kirk Reiser writes:
> > Hi Janina: Your question is very much a valid one. I was hoping
> > someone else would answer you and we might all benefit from a solid
> > answer.
> > 
> > I use espeakup with espeak-ng on at least four computers and my
> > experience is that on a few it instantly flushes when a control or
> > another key is typed The exact reaction it was designed to be. But
> > more often than not on some computers it is not instantaneous and when
> > moving back across the screen with the review keys it becomes mushy
> > because the text sounds like it is all running together.
> > 
> > The fact that I use debian on these boxes would somewhat seem to
> > indicate that the software should all be exactly the same but at las
> > it certainly doesn't seem so.
> > 
> > Sometimes I can restart espeakup and it starts behaving itself
> > properly but other times theres no difference.
> > 
> > Yes, it is very frustrating just like the jumbled speech towards the
> > bottom of the screen when you just allow the standard output to rattle
> > on.
> > 
> > I'm sorry I don't have a nice answer for you but I wished to let you
> > know you are not alone with your experiences.
> > 
> >   kirk
> > 
> > 
> > 
> > On Fri, 16 Jan 2026, Janina Sajka wrote:
> > 
> > > Hi All:
> > > 
> > > For some years I've been on Espeakup 0.8, avoiding upgrades because
> > > upgrades failed to get speech working
> > > properly, either with Espeak or Espeak-ng. Meanwhile, Speakup was
> > > working brilliantly with the older Espeakup/Espeak version, so I had
> > > left welll enough alone.
> > > 
> > > Until this last week. I decided to try again. To my surprise and delight
> > > I now have Espeak-NG and Espeakup fully updated. Almost everything is
> > > fine--except for Speakup's shut up commands! Not stopping speech
> > > sufficiently quickly is a very big deal, as we all know.
> > > 
> > > I'm using a wired USB keyboard. Ctrl might shut speech up immediately,
> > > or it might take a second or so. Numpad enter is the same. Maybe it
> > > works as it should, but maybe it's very laggy. Likewise the various
> > > numpad screen review keys. Same story all around.
> > > 
> > > My first instinct was to return everything to previous versions, because
> > > laser quick shutup is that important. Unfortunately, restoring the old
> > > didn't fix things. I have the same behavior, regardless whether I'm on
> > > Espeak or Espeak-NG, and regardless the version of Espeakup.
> > > 
> > > So, what might possibly be the story here? Needless to say I want
> > > Speakup's brilliant responsiveness back. But what's broken? And how to
> > > fix?
> > > 
> > > All suggestions most welcome and greatly appreciated!
> > > 
> > > Best,
> > > Janina
> > > 
> > > 
> 
> -- 
> 
> Janina Sajka (she/her/hers)
> Accessibility Consultant https://linkedin.com/in/jsajka
> 
> The World Wide Web Consortium (W3C), Web Accessibility Initiative (WAI)
> Co-Chair, Accessible Platform Architectures	http://www.w3.org/wai/apa
> 
> Linux Foundation Fellow
> https://www.linuxfoundation.org/board-of-directors-2/
> 
> 

