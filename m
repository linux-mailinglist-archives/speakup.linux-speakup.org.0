Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id D48682A6FAE
	for <lists+speakup@lfdr.de>; Wed,  4 Nov 2020 22:30:21 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 1C4DF380F19; Wed,  4 Nov 2020 16:30:21 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 2A437380F2B;
	Wed,  4 Nov 2020 16:30:17 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 4ACE9380EE1; Wed,  4 Nov 2020 16:30:16 -0500 (EST)
Received: from hera.aquilenet.fr (hera.aquilenet.fr [IPv6:2a0c:e300::1])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 0DDF3380EE1
 for <speakup@linux-speakup.org>; Wed,  4 Nov 2020 16:30:16 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
 by hera.aquilenet.fr (Postfix) with ESMTP id 16C7DC21;
 Wed,  4 Nov 2020 22:30:08 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
 by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7gAZfkZ-VP_y; Wed,  4 Nov 2020 22:30:07 +0100 (CET)
Received: from function.youpi.perso.aquilenet.fr (unknown
 [IPv6:2a01:cb19:956:1b00:9eb6:d0ff:fe88:c3c7])
 by hera.aquilenet.fr (Postfix) with ESMTPSA id 2977D29E;
 Wed,  4 Nov 2020 22:30:07 +0100 (CET)
Received: from samy by function.youpi.perso.aquilenet.fr with local (Exim 4.94)
 (envelope-from <samuel.thibault@ens-lyon.org>)
 id 1kaQM1-003eHu-Ok; Wed, 04 Nov 2020 22:30:05 +0100
Date: Wed, 4 Nov 2020 22:30:05 +0100
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: Matthias Reichl <hias@horus.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jiri Slaby <jirislaby@kernel.org>, speakup@linux-speakup.org,
 linux-serial@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: Crash when specifying non-existent serial port in speakup /
 tty_kopen
Message-ID: <20201104213005.khivjvcwkaz7kz4g@function>
Mail-Followup-To: Samuel Thibault <samuel.thibault@ens-lyon.org>,
 Matthias Reichl <hias@horus.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jiri Slaby <jirislaby@kernel.org>, speakup@linux-speakup.org,
 linux-serial@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20201104145737.GA11024@camel2.lan>
 <20201104201323.dzyt73tbd2jykcrt@function>
 <20201104211504.GA20012@lenny.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201104211504.GA20012@lenny.lan>
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

Matthias Reichl, le mer. 04 nov. 2020 22:15:05 +0100, a ecrit:
> > This looks like only a warning, did it actually crash?
> 
> Yes, scroll down a bit, the null pointer oops followed almost
> immediately after that
> 
> [   49.979043] BUG: kernel NULL pointer dereference, address: 0000000000000090

Ah, [   50.102938]  tty_init_dev+0xb5/0x1d0

probably the trailing release_tty call that does

tty->port->itty = NULL;
(itty is after a struct tty_bufhead + the tty pointer, that looks
plausible).

so probably an if (tty->port) in release_tty could help?

Samuel
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
