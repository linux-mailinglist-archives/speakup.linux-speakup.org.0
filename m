Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from grumpy.reisers.ca (grumpy.reisers.ca [206.248.184.126])
	by mail.lfdr.de (Postfix) with ESMTP id 57CC21A2D98
	for <lists+speakup@lfdr.de>; Thu,  9 Apr 2020 04:28:43 +0200 (CEST)
Received: by grumpy.reisers.ca (Postfix, from userid 65534)
	id 58C62428045E; Wed,  8 Apr 2020 22:28:42 -0400 (EDT)
Received: from befuddled.reisers.ca (unknown [10.10.10.10])
	by grumpy.reisers.ca (Postfix) with ESMTP id 2BD9742804F7
	for <lists+speakup@lfdr.de>; Wed,  8 Apr 2020 22:26:43 -0400 (EDT)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id D75C81C5619; Wed,  8 Apr 2020 22:26:42 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 871671C57BA;
	Wed,  8 Apr 2020 22:24:25 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id EC7F01C579D; Wed,  8 Apr 2020 22:24:19 -0400 (EDT)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 563DC1C0129
 for <speakup@linux-speakup.org>; Wed,  8 Apr 2020 22:24:10 -0400 (EDT)
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
 by mailbackend.panix.com (Postfix) with ESMTP id 48yQ1z4hCNzv9m;
 Wed,  8 Apr 2020 22:24:07 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
 id 48yQ1z4LMczcbc; Wed,  8 Apr 2020 22:24:07 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
 by panix1.panix.com (Postfix) with ESMTP id 48yQ1z4FFTzcbW;
 Wed,  8 Apr 2020 22:24:07 -0400 (EDT)
Date: Wed, 8 Apr 2020 22:24:07 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>, 
 Glenn K0LNY <glennervin@cableone.net>
Subject: Re: Installing eSpeakup
In-Reply-To: <20200409020419.GA5996@gregn.net>
Message-ID: <alpine.NEB.2.21.2004082219440.2459@panix1.panix.com>
References: <001401d60dc1$0b9d8490$7001a8c0@NUCPPYH>
 <20200408201524.GA3865@gregn.net> <000301d60e34$46414820$7001a8c0@NUCPPYH>
 <20200409020419.GA5996@gregn.net>
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

orca uses speech-dispatcher and speech-dispatcher can be configured to use
alsa. Use the spd-conf command to do that. I don't know did that version
of ubuntu change from systemv to systemd?  To find out try which systemctl
if nothing returns it's systemv you're using.  If a file path is returned
before rebooting as root type systemctl enable espeakup.  That way speech
eventually will come up if your netbook can do it.

On Wed, 8 Apr 2020,
Gregory Nowak wrote:

> Date: Wed, 8 Apr 2020 22:04:19
> From: Gregory Nowak <greg@gregn.net>
> Reply-To: Speakup is a screen review system for Linux.
>     <speakup@linux-speakup.org>
> To: Glenn K0LNY <glennervin@cableone.net>, speakup@linux-speakup.org
> Subject: Re: Installing eSpeakup
>
> Forwarding back on list.
>
>
> On Thu, Apr 09, 2020 at 01:01:12AM -0500, Glenn K0LNY wrote:
> > If pulseaudio is removed, what does espeakup use as a sound device?
>
> It uses the alsa driver directly.
>
> > I don't really understand the different parts.
> > I believe speech-dispatcher is the go-between for a screenreader and a sound
> > module.
>
> It can be, but doesn't have to be.
>
> > But I don't know what they all use, espeakup and Orca.
>
> The espeakup package uses alsa directly as far as I know, while orca
> uses speech-dispatcher, which can use multiple audio backends, alsa
> directly, and through pulseaudio among them. There is another package,
> speechd-up which was written as a proof of concept, and it can replace
> espeakup to join speakup's software synthesizer with speech-dispatcher.
>
> Greg
>
>
> > Glenn
> > ----- Original Message -----
> > From: "Gregory Nowak" <greg@gregn.net>
> > To: "Glenn K0LNY" <GlennErvin@cableone.net>; "Speakup is a screen review
> > system for Linux." <speakup@linux-speakup.org>
> > Sent: Wednesday, April 08, 2020 3:15 PM
> > Subject: Re: Installing eSpeakup
> >
> >
> > You'll likely  need to add speakup_soft to /etc/modules, and apt-get
> > install espeakup. You may also have to work with, or purge pulseaudio.
> >
> > Greg
> >
> >
> > On Wed, Apr 08, 2020 at 11:16:21AM -0500, Glenn K0LNY wrote:
> > > Hi,
> > > I keep trying different distros on this netbook, an Asus 701 with little
> > > success.
> > > I did get Ubuntu 11.04 working with Orca.
> > > I want to try something newer, so I downloaded Ubuntu Server 14.10, and it
> > > will come without the GUI.
> > > So if I can get it talking with eSpeakup, I will try to install Mate or
> > > Gnome.
> > > But what are the proper steps to get espeakup going in the CLI after it
> > > boots up?
> > > perhaps just apt-get install espeakup?
> > > Or will I need to get something going first?
> > > I have had no luck with Talking Arch or Vinux 4.1.
> > > Thanks.
> > >
> > > Glenn
> > >
> > >
> > > --------------------------------------------------------------------------------
> > >
> > >
> > > --
> > > Ubuntu-accessibility mailing list
> > > Ubuntu-accessibility@lists.ubuntu.com
> > > https://lists.ubuntu.com/mailman/listinfo/ubuntu-accessibility
> > > _______________________________________________
> > > Speakup mailing list
> > > Speakup@linux-speakup.org
> > > http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
> > >
> >
> > --
> > web site: http://www.gregn.net
> > gpg public key: http://www.gregn.net/pubkey.asc
> > skype: gregn1
> > (authorization required, add me to your contacts list first)
> > If we haven't been in touch before, e-mail me before adding me to your
> > contacts.
> >
> > --
> > Free domains: http://www.eu.org/ or mail dns-manager@EU.org
> >
>
>

-- 

_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
