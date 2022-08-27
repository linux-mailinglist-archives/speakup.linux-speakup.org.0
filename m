Return-Path: <speakup+bounces-695-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id B4BE15A3412
	for <lists+speakup@lfdr.de>; Sat, 27 Aug 2022 04:53:28 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=panix.com header.i=@panix.com header.a=rsa-sha256 header.s=panix header.b=E68FgzbR;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id E1C6B381117; Fri, 26 Aug 2022 22:53:27 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id C0B95380C93
	for <lists+speakup@lfdr.de>; Fri, 26 Aug 2022 22:53:27 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id E8FF1380D1C; Fri, 26 Aug 2022 22:53:18 -0400 (EDT)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by befuddled.reisers.ca (Postfix) with ESMTPS id BC0B2380C93
	for <speakup@linux-speakup.org>; Fri, 26 Aug 2022 22:53:18 -0400 (EDT)
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4MF1V50FCwz2mD4;
	Fri, 26 Aug 2022 22:53:17 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=panix.com; s=panix;
	t=1661568797; bh=P38n+SnrML8RHzyTj54yd7UNIWWNBiclLjEik/BTkzY=;
	h=Date:From:To:Subject:In-Reply-To:References;
	b=E68FgzbRF+eru68noKg/2ofghLfXcPEyaCtsWIYObH/BNd0AXLMLctDDt6C9/3R+X
	 9cg1EThG73Nj9MWglnwoKEsilX8ZymRjPTI1crcyTxkn5g4JvsF4QRduRUrxeqGph7
	 DllTkr/JC4GX6CnFTBkoonL8kCRQMLw4kTBJcPlw=
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4MF1V46bVWzcbc; Fri, 26 Aug 2022 22:53:16 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4MF1V46FvMzcbC;
	Fri, 26 Aug 2022 22:53:16 -0400 (EDT)
Date: Fri, 26 Aug 2022 22:53:16 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: K0LNY_Glenn <glenn@ervin.email>, Gregory Nowak <greg@gregn.net>, 
    speakup@linux-speakup.org
Subject: Re: hopefully some help with AntiX
In-Reply-To: <010401d8b9bf$7da53220$80ffa8c0@Win7VM>
Message-ID: <17d3febb-1125-763c-1eca-ffa8627118e6@panix.com>
References: <202208261512.27QFCDux008176@nfbcal.org> <02b101d8b963$7d039fc0$80ffa8c0@Win7VM> <alpine.DEB.2.21.1.2208262017280.8190@willempc.meraka.csir.co.za> <006201d8b97a$ff989cd0$80ffa8c0@Win7VM> <006601d8b97e$e9f9a6e0$80ffa8c0@Win7VM> <Ywle3kA6oGDCREfZ@gregn.net>
 <00b601d8b9a9$5c664f10$80ffa8c0@Win7VM> <acd2012-2ab5-5ff2-4fa6-4e518867727a@panix.com> <00bc01d8b9aa$824f8ce0$80ffa8c0@Win7VM> <127b4a87-d4a5-f669-4d33-534e114ecb8@panix.com> <010401d8b9bf$7da53220$80ffa8c0@Win7VM>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Did you run checkdependencies.py in that installation process?


Jude <jdashiel at panix dot com> "There are four boxes to be used in
defense of liberty:
 soap, ballot, jury, and ammo. Please use in that order."
-Ed Howdershelt (Author, 1940)

.

On Fri, 26 Aug 2022, K0LNY_Glenn wrote:

> Well I ran install.sh on the system, and pressed enter where it said to
> proceed, and it said was finished, and it said to type
> sudo fenrir
> to test it, and all I can get is the two-tone sound when fenrir starts, but
> no TTS.
> Should have that installed espeak or espeak-ng?
> Thanks.
>
> ----- Original Message -----
> From: "Jude DaShiell" <jdashiel@panix.com>
> To: "K0LNY_Glenn" <glenn@ervin.email>; "Gregory Nowak" <greg@gregn.net>;
> <speakup@linux-speakup.org>
> Sent: Friday, August 26, 2022 8:27 PM
> Subject: Re: hopefully some help with AntiX
>
>
> For now and not forever, why not do apt purge ufw?
>
>
> Jude <jdashiel at panix dot com>
> "There are four boxes to be used in defense of liberty:
>  soap, ballot, jury, and ammo. Please use in that order."
> -Ed Howdershelt (Author, 1940)
>
> .
>
> On Fri, 26 Aug 2022, K0LNY_Glenn wrote:
>
> > Then all 1000 ports show up in nmap as closed.
> > So it seems if I allow a port in ufw, it shows up as closed, but not
> > filtered.
> > So filtered means ufw is running, and if 22 gets allowed, it is not
> > filtered, but still closed.
> > Glenn
> >
> >
> > ----- Original Message -----
> > From: "Jude DaShiell" <jdashiel@panix.com>
> > To: "K0LNY_Glenn" <glenn@ervin.email>; "Gregory Nowak" <greg@gregn.net>;
> > <speakup@linux-speakup.org>
> > Sent: Friday, August 26, 2022 7:12 PM
> > Subject: Re: hopefully some help with AntiX
> >
> >
> > What happens if ufw --disable is run then the offending computer gets
> > rebooted?
> >
> > Jude <jdashiel at panix dot com>
> > "There are four boxes to be used in defense of liberty:
> >  soap, ballot, jury, and ammo. Please use in that order."
> > -Ed Howdershelt (Author, 1940)
> >
> > .
> >
> > On Fri, 26 Aug 2022, K0LNY_Glenn wrote:
> >
> > > I've considered that, and if I can get any port to open, I will gladly
> > > use
> > > telnet.
> > > Hell, if I could open all 1000 ports now, I would!
> > > Glenn
> > > ----- Original Message -----
> > > From: "Gregory Nowak" <greg@gregn.net>
> > > To: <speakup@linux-speakup.org>
> > > Sent: Friday, August 26, 2022 7:01 PM
> > > Subject: Re: hopefully some help with AntiX
> > >
> > >
> > > On Fri, Aug 26, 2022 at 02:06:13PM -0500, K0LNY_Glenn wrote:
> > > > On the antiX I did
> > > > sudo netcat -l 22
> > > > and then on the pine 64, I did sudo nc 10.248.1.143 22
> > > > and it does not seem to connect.
> > > > I wonder if it is because I am using 22 to get from my windows to the
> > > > Pine64, in order to go linux to linux.
> > >
> > > Port 22 is a privileged port. You should consider using 1024 or
> > > higher. If the listening port is open on the firewall, the commands
> > > you gave above should connect. If you type something on the client
> > > side, you should see it typed on the antiX machine, and the other way
> > > round. This will however not give you a login terminal. To do that,
> > > you need something that handles logins to listen on your netcat. This
> > > isn't something I've done, so can't give you more directions here. If
> > > you don't care about the connection being secure, which you don't seem
> > > to, you might as well try:
> > >
> > > apt install telnetd
> > >
> > > and open tcp 23 on your firewall.
> > >
> > >
> > > On Fri, Aug 26, 2022 at 04:12:28PM -0500, K0LNY_Glenn wrote:
> > > > Well I thought I'd try iptables again.
> > > > I finally got it to run without any errors, that long iptables command
> > > > I
> > > > got
> > > > earlier.
> > > > But nmap still sees no ports open on that host.
> > > > Prior to running iptables, I tried to apt install it, and the message
> > > > was
> > > > that I'm already running the latest.
> > > > So I needed to restart iptables with
> > > > sudo service iptables restart
> > > > and it can find no service iptables.
> > > > I retyped it several times to be sure there was no typos.
> > >
> > > This is to be expected, iptables is not a system service.
> > >
> > > > So I tried
> > > > sudo systemctl restart iptables
> > > > and the system cannot find systemctl
> > >
> > > Is antiX running sysvinit, openrc, or something else? This is
> > > something the antiX documentation should tell you. What does it use
> > > for PID1 or init?
> > >
> > > > question:
> > > > If I reboot, if the long iptables command worked, will it stick if I
> > > > reboot?
> > >
> > > No.
> > >
> > >
> > > On Fri, Aug 26, 2022 at 05:57:37PM -0500, K0LNY_Glenn wrote:
> > > > Well it seems ufw is there, but it must not be running automatically,
> > > > but
> > > > it
> > > > does not fix the port problem.
> > > > I did
> > > > sudo ufw allow ssh
> > > > it said tcp port allowed
> > > > or something like that
> > > > so I checked on the other computer with nmap
> > > > 100 ports closed
> > > > So I did sudo ufw restart
> > > > and the other computer said 999 ports filtered tcp port 22 closed.
> > > > I've done iptables too, but that does not stay after a reboot.
> > > > if I do sudo ufw status
> > > > it shows tcp port 22 allow
> > > > but it does not stay from a reboot.
> > >
> > > You need to save the firewall configuration once you changed it for it
> > > to persist across reboots. I haven't used ufw, so you will need to
> > > read up on how to do that.
> > >
> > > If port tcp 22 shows up as not filtered but closed, then the port is
> > > open, but there is no ssh service running.
> > >
> > > Greg
> > >
> > >
> > >
> >
> >
> >
>
>
>

