Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (tunnel25281-pt.tunnel.tserv21.tor1.ipv6.he.net [IPv6:2001:470:1c:288::2])
	by mail.lfdr.de (Postfix) with ESMTP id 45C2A1D4048
	for <lists+speakup@lfdr.de>; Thu, 14 May 2020 23:38:58 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id BD4A21C0C5C; Thu, 14 May 2020 17:38:57 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 1861C1C0C61;
	Thu, 14 May 2020 17:38:34 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 59D371C0B30; Thu, 14 May 2020 17:38:29 -0400 (EDT)
Received: from server2.shellworld.net (server2.shellworld.net [66.172.12.120])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 12CD21C0B1D
 for <speakup@linux-speakup.org>; Thu, 14 May 2020 17:38:18 -0400 (EDT)
Received: by server2.shellworld.net (Postfix, from userid 1005)
 id 19F3A8C1522; Thu, 14 May 2020 21:37:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by server2.shellworld.net (Postfix) with ESMTP id 124068C003E
 for <speakup@linux-speakup.org>; Thu, 14 May 2020 17:37:47 -0400 (EDT)
Date: Thu, 14 May 2020 17:37:47 -0400 (EDT)
From: Karen Lewellen <klewellen@shellworld.net>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: calling all dectalk users
In-Reply-To: <20200514204058.GA6486@gregn.net>
Message-ID: <Pine.LNX.4.64.2005141735240.20179@server2.shellworld.net>
References: <20200514022100.GA6582@gregn.net>
 <Pine.LNX.4.64.2005141023131.14733@server2.shellworld.net>
 <20200514204058.GA6486@gregn.net>
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

My goodness how complicated.
I wonder how Linux users discover all these steps, if not on this list?
Out of curiosity, the install would not find a dectalk connected via USB 
why exactly?



On Thu, 14 May 2020, Gregory Nowak wrote:

> You can also start with a dectalk by default in debian and most if not
> all derivatives. At www.debian.org, follow the get debian
> link. Probably the smallest image with speakup is the netinst iso
> image. Grab that, and burn it to a CD, or write it out to a USB drive
> using dd. More info on this process is in debian's documentation
> section.
>
> Then boot your PC from either CD, or your uSB disk, depending on which
> you created above. Once you hear a beep from your PC speaker, press
> tab, space, and type speakup.synth=dectlk and press enter.
>
> This assumes your dectalk is connected to your first serial port. You
> should then hear your dectalk asking you to select a language for the
> installation.
>
> Since you probably don't plan to install debian, (though you are
> welcome to of course) press alt+right arrow, followed by enter.
>
> You should now be at a command prompt, and able to echo commands to
> /sys/accessibility/speakup/synth_direct, and see what your dectalk
> sounds like. Hope that helps.
>
> Greg
>
>
> On Thu, May 14, 2020 at 10:24:37AM -0400, Karen Lewellen wrote:
>> Well, I have a dectalk, but cannot install Linux or speakup  because the
>>  Dectalk is not a default voice option.
>> Just sharing in case you hear from no one else.
>
>
> -- 
> web site: http://www.gregn.net
> gpg public key: http://www.gregn.net/pubkey.asc
> skype: gregn1
> (authorization required, add me to your contacts list first)
> If we haven't been in touch before, e-mail me before adding me to your contacts.
>
> --
> Free domains: http://www.eu.org/ or mail dns-manager@EU.org
> _______________________________________________
> Speakup mailing list
> Speakup@linux-speakup.org
> http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
>
>
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
