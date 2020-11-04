Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (tunnel25281-pt.tunnel.tserv21.tor1.ipv6.he.net [IPv6:2001:470:1c:288::2])
	by mail.lfdr.de (Postfix) with ESMTP id CE99C2A6E98
	for <lists+speakup@lfdr.de>; Wed,  4 Nov 2020 21:13:33 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 29764380F74; Wed,  4 Nov 2020 15:13:32 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 1025F380F2C;
	Wed,  4 Nov 2020 15:13:30 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id A1605380EE9; Wed,  4 Nov 2020 15:13:28 -0500 (EST)
Received: from hera.aquilenet.fr (hera.aquilenet.fr [185.233.100.1])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 6504E380EE1
 for <speakup@linux-speakup.org>; Wed,  4 Nov 2020 15:13:28 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
 by hera.aquilenet.fr (Postfix) with ESMTP id 45895C1D;
 Wed,  4 Nov 2020 21:13:25 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
 by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EhNBdKwrLQ_R; Wed,  4 Nov 2020 21:13:24 +0100 (CET)
Received: from function.youpi.perso.aquilenet.fr
 (lfbn-bor-1-56-204.w90-50.abo.wanadoo.fr [90.50.148.204])
 by hera.aquilenet.fr (Postfix) with ESMTPSA id 7B56E9ED;
 Wed,  4 Nov 2020 21:13:24 +0100 (CET)
Received: from samy by function.youpi.perso.aquilenet.fr with local (Exim 4.94)
 (envelope-from <samuel.thibault@ens-lyon.org>)
 id 1kaP9n-003dhX-Cl; Wed, 04 Nov 2020 21:13:23 +0100
Date: Wed, 4 Nov 2020 21:13:23 +0100
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: Matthias Reichl <hias@horus.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jiri Slaby <jirislaby@kernel.org>, speakup@linux-speakup.org,
 linux-serial@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: Crash when specifying non-existent serial port in speakup /
 tty_kopen
Message-ID: <20201104201323.dzyt73tbd2jykcrt@function>
Mail-Followup-To: Samuel Thibault <samuel.thibault@ens-lyon.org>,
 Matthias Reichl <hias@horus.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jiri Slaby <jirislaby@kernel.org>, speakup@linux-speakup.org,
 linux-serial@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20201104145737.GA11024@camel2.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201104145737.GA11024@camel2.lan>
Organization: I am not organized
User-Agent: NeoMutt/20170609 (1.8.3)
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

Hello,

Matthias Reichl, le mer. 04 nov. 2020 15:57:37 +0100, a ecrit:
> I initially noticed this oops on x86_64 running kernel 5.4.59 when
> I accidentally mistyped "ttyS0" as "ttyS9":
> 
> modprobe speakup_dummy dev=ttyS9

> [   49.978481] tty_init_dev: ttyS driver does not set tty->port. This would crash the kernel. Fix the driver!

This looks like only a warning, did it actually crash?

> the missing tty->port is quite fatal.

It is fatal for module insertion yes (EINVAL) but IIRC that should be
getting handled properly, making modprobe return the error?

> It looks like spk_ttyio or tty_dev_name_to_number() / tty_kopen()
> should perform some additional validation,

spk_ttyio_initialise_ldisc only has a dev_t so can't do much beyond
calling tty_kopen.

tty_kopen is getting the index from the tty_lookup_driver call (actually
get_tty_driver which uses p->minor_start and p->num) and passes it to
tty_driver_lookup_tty. Perhaps in addition of p->num the driver should
have another field to set, that tty_init_dev could use to reject with
ENODEV indexes beyond what the driver actually provides?

> I couldn't make the kernel warn/crash yet by specifying non-existent
> ttyUSB ports yet though.

That's probably because in the ttyUSB case the device allocation is
dynamic and made exactly according to the number of actual devices,
while for ttyS* there is a large overcommit of minor values.

Samuel
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
