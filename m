Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id F36B23A13B
	for <lists+speakup@lfdr.de>; Sat,  8 Jun 2019 20:24:54 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 68F9F1C43D0; Sat,  8 Jun 2019 14:24:54 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 0DC9A1C5A7D;
	Sat,  8 Jun 2019 14:23:45 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 2C18C1C43C4; Sat,  8 Jun 2019 14:23:43 -0400 (EDT)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 974681C43BE
 for <speakup@linux-speakup.org>; Sat,  8 Jun 2019 14:23:40 -0400 (EDT)
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
 by mailbackend.panix.com (Postfix) with ESMTP id 45LnpM2pQKz1Ztx;
 Sat,  8 Jun 2019 14:23:39 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
 id 45LnpM1PWFzcbR; Sat,  8 Jun 2019 14:23:39 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
 by panix1.panix.com (Postfix) with ESMTP id 45LnpM1CwwzcbQ;
 Sat,  8 Jun 2019 14:23:39 -0400 (EDT)
Date: Sat, 8 Jun 2019 14:23:39 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>, 
 Kirk Reiser <kirk@reisers.ca>
Subject: Re: no sound except speakup
In-Reply-To: <f072f5e3-caf0-aab8-4224-c1fc9f142ace@math.wisc.edu>
Message-ID: <alpine.NEB.2.21.1906081417260.24883@panix1.panix.com>
References: <bb706092-7289-2093-e7d0-e1788722cc37@math.wisc.edu>
 <alpine.DEB.2.21.1906051019050.12923@befuddled.reisers.ca>
 <f072f5e3-caf0-aab8-4224-c1fc9f142ace@math.wisc.edu>
MIME-Version: 1.0
X-BeenThere: speakup@linux-speakup.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <http://linux-speakup.org/cgi-bin/mailman/options/speakup>, 
 <mailto:speakup-request@linux-speakup.org?subject=unsubscribe>
List-Archive: <http://linux-speakup.org/pipermail/speakup/>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup-request@linux-speakup.org?subject=help>
List-Subscribe: <http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup>,
 <mailto:speakup-request@linux-speakup.org?subject=subscribe>
Reply-To: "Speakup is a screen review system for Linux."
 <speakup@linux-speakup.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

From what I've been reading on debian-user, and this is from sighted
users using the g.u.i., pulseaudio at most has two good use cases and
those are providing sound for a network, and being able to do many
samples of multiple sound streams.  If you don't need to do any of
those, you don't need pulseaudio.  It could be firefox is going to
deprecate pulseaudio in future too.
It's not as well documented as alsa either and its terminology imposes
an additional learning curve on top of alsa too.
My position on pulseaudio is if it gets installed, live with it until it
messes up then remove and prevent future downloads.

On Sat, 8 Jun 2019, JOHN G HEIM wrote:

> Date: Sat, 8 Jun 2019 12:36:57
> From: JOHN G HEIM <jheim@math.wisc.edu>
> Reply-To: Speakup is a screen review system for Linux.
>     <speakup@linux-speakup.org>
> To: Kirk Reiser <kirk@reisers.ca>,
>     Speakup is a screen review system for Linux. <speakup@linux-speakup.org>
> Subject: Re: no sound except speakup
>
>
> It was indeed pulseaudio. I killed the pulseaudio process and ran aplay
> again but it still did not work. But I noticed that another pulseaudio
> process had been started. So then I removed the pulseaudio package
> entirely. Now it works. But then I ran startx and got no speech from
> orca. But then I ran spd-conf and configured speech-dispatcher for alsa
> and now I get speech in the GUI too. So this is all good. This is my
> network server so I don't care about the GUI too much anyway. But it
> looks like if I really need a GUI, I'll have it.
>
>
> Thanks everybody. Linux rocks. Well, the linux support community,
> specifically speakup and orca, rocks.
>
>
> On 6/5/19 9:22 AM, Kirk Reiser wrote:
> > Hey John: When I've had similar issues with sound it's because there
> > is usually a pulse audio process running or trying to run. There are
> > work arounds to be able to use pulse audio but I believe it includes
> > running it as root or something. I don't use pulse audio so I'm not
> > sure of the work around but others are using it.
> >
> > ? Kirk
> >
> > On Wed, 5 Jun 2019, John G Heim wrote:
> >
> >> I am running a debian buster machine in character mode. Speakup with
> >> software speech works fine but I can't get any other sound. When I
> >> use aplay to play a wav file, it prints the data indicating that it
> >> is playing the file but there is no sound. The same with espeak and
> >> spd-say at the command line. No error messages are displayed but
> >> there is no sound. I would think it was a volume problem except I can
> >> hear speakup. The sound card controls have volume settings, they are
> >> not user settings, right?
> >>
> >>
>

-- 

_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
