Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 2EC58728CF
	for <lists+speakup@lfdr.de>; Wed, 24 Jul 2019 09:07:47 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 4E2CD1C4379; Wed, 24 Jul 2019 03:07:45 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id B2CDF1C435F;
	Wed, 24 Jul 2019 03:06:43 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id ECAC91C3563; Wed, 24 Jul 2019 03:06:39 -0400 (EDT)
Received: from hera.aquilenet.fr (hera.aquilenet.fr [185.233.100.1])
 by befuddled.reisers.ca (Postfix) with ESMTPS id DCFA51C355F
 for <speakup@linux-speakup.org>; Wed, 24 Jul 2019 03:06:35 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
 by hera.aquilenet.fr (Postfix) with ESMTP id 4D67711C9B;
 Wed, 24 Jul 2019 09:06:02 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
 by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QJ2yePrOJoZj; Wed, 24 Jul 2019 09:06:01 +0200 (CEST)
Received: from function (105.251.129.77.rev.sfr.net [77.129.251.105])
 by hera.aquilenet.fr (Postfix) with ESMTPSA id 82E11660E;
 Wed, 24 Jul 2019 09:06:01 +0200 (CEST)
Received: from samy by function with local (Exim 4.92)
 (envelope-from <samuel.thibault@ens-lyon.org>)
 id 1hqBLc-0001tf-J6; Wed, 24 Jul 2019 09:06:00 +0200
Date: Wed, 24 Jul 2019 09:06:00 +0200
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: Okash Khawaja <okash.khawaja@gmail.com>
Subject: Re: Linux Open Source Presentation
Message-ID: <20190724070600.6gbugq7y6xztosd2@function>
References: <20190721180431.7ce1f716@narunkot>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190721180431.7ce1f716@narunkot>
Organization: I am not organized
User-Agent: NeoMutt/20170113 (1.7.2)
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
Cc: speakup@linux-speakup.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

Hello,

Okash Khawaja, le dim. 21 juil. 2019 18:04:31 +0100, a ecrit:
> slide 1: What is speakup?
> -------------------------
> - piece of software that reads out what's on console and what you type with keyboard

It will probably be interesting to mention the two modes: it speaks text
as it gets printed by applications, but the user can also use speakup
shortcuts to read what was printed by the application and is still
visible on the screen.

> slide 3: Present
> -----------------
> TODO: tty based vs directly accessing ports

Yes, that's an interesting point.

Before the tty support, the port knocking was obviously posing
problems of conflicting with the existing serial drivers, and supporting
only legacy serial ports.

You can mention that speakup is particular in that it's a purely
software driver that needs to operate the serial port. Thus a line
discipline, thus what you implemented.

> TODO: console content and keyboard snooping done properly

You can indeed mention the proper use of console text fetching, and
keyboard notification registration.

> TODO: what distros ship with speakup?

I must admit that I don't know :)


You can also mention that proper unicode support was done, so that all
languages can now be supported seamlessly.

> slide 3: Future
> ----------------
> 
> - move from staging to mainline
> - fix bugs
> - new features: usb drivers, auto load
> - TODO: what else for future? ask mailing list

I think there is at least still work to be done for internationalization
of speakup messages and such things.

> slide 5: Core:
> --------------
> - main.c contains speakup core
> - main.c + supporting files yield speakup.ko
> - upon loading:
>     - perform some initialisations (spk_vars, add virtual keyboard, initialise an internal representation of every console etc)
>     - initialise sysfs interface
>     - register tty ldisc
>     - synth_init() (TODO: what is this?)

It tries to initialize the synths given on the command line.

>     - speakup kthread (mainly for synth->catch_up()

You can explain that speakup uses buffering: keyboard and console
notifiers queue stuff to be spoken, and the speakup kthread
progressively pushes that to a serial port or the software synthesis.

> slide 6: Core - keyboard and vt:
> --------------------------------
> [TODO]

I'm not sure whether you want to detail much of that. You could make
some rehearsal to see whether you will have the time to detail here.

Perhaps that's the place for just explaining the buffering I mentioned
above.

> slide 8: struct spk_syth:
> -------------------------
> TODO: reproduce its code here and go through members one by one

It would be tedious to cover it all. You can probably just cover it in a
few related groups like: probe/release,
read_buff_add/synth_immediate/catch_up/flush, is_alive, get_index

> slide 9: struct spk_io_ops:
> ---------------------------
> - struct spk_io_ops

That one you can probably cover it all.

> slide 12: Software Synths: speakup_dummy:
> -----------------------------------------
> - useful for development purposes

Yes, that's an important point to make: you don't need an actual synth
to do development.

> - typical development set up with speakup_dummy:
>     - qemu with serial port tied to a file on host
>     - load speakup_dummy with dev param pointing to the serial port

It'd be useful that you provide the ready-to-run commands so people can
try it out.

Samuel
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
