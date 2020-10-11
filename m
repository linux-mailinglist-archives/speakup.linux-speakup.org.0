Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (tunnel25281-pt.tunnel.tserv21.tor1.ipv6.he.net [IPv6:2001:470:1c:288::2])
	by mail.lfdr.de (Postfix) with ESMTP id 247E128A7B7
	for <lists+speakup@lfdr.de>; Sun, 11 Oct 2020 16:16:06 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 907D4380BD0; Sun, 11 Oct 2020 10:16:04 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 2AA52380BB4;
	Sun, 11 Oct 2020 10:16:03 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id ABCCF380B28; Sun, 11 Oct 2020 10:16:01 -0400 (EDT)
Received: from hera.aquilenet.fr (hera.aquilenet.fr [185.233.100.1])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 8957E380AC5
 for <speakup@linux-speakup.org>; Sun, 11 Oct 2020 10:16:01 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
 by hera.aquilenet.fr (Postfix) with ESMTP id 3457C1085
 for <speakup@linux-speakup.org>; Sun, 11 Oct 2020 16:16:00 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
 by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qd9nFQMMGJDN for <speakup@linux-speakup.org>;
 Sun, 11 Oct 2020 16:15:59 +0200 (CEST)
Received: from function (lfbn-bor-1-56-204.w90-50.abo.wanadoo.fr
 [90.50.148.204])
 by hera.aquilenet.fr (Postfix) with ESMTPSA id 6BBCCE10
 for <speakup@linux-speakup.org>; Sun, 11 Oct 2020 16:15:59 +0200 (CEST)
Received: from samy by function with local (Exim 4.94)
 (envelope-from <samuel.thibault@ens-lyon.org>) id 1kRc8k-004R5v-8e
 for speakup@linux-speakup.org; Sun, 11 Oct 2020 16:15:58 +0200
Date: Sun, 11 Oct 2020 16:15:58 +0200
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Flushing issue
Message-ID: <20201011141558.heqzdjqhr2s2gmwm@function>
References: <alpine.DEB.2.23.453.2010091111480.51713@befuddled.reisers.ca>
 <20201010151312.fbz27eyoua2574tw@function>
 <alpine.DEB.2.23.453.2010101446340.31356@befuddled.reisers.ca>
 <20201010194612.ut6md7liw4e47ky7@function>
 <alpine.DEB.2.23.453.2010101905240.36490@befuddled.reisers.ca>
 <20201010235355.uqqvyyjqxupfw5qw@function>
 <32185047-b54c-4841-9021-09f8fcb25eda@pcdesk.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <32185047-b54c-4841-9021-09f8fcb25eda@pcdesk.net>
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

Tyler Spivey, le sam. 10 oct. 2020 17:46:58 -0700, a ecrit:
> It might be getting interrupted quickly, but at the wrong time.
> IIRC, the core issue with espeak-ng (without speech dispatcher) is that
> there's no way to flush the audio without at least one buffer of audio
> playing.

Which version of espeak-ng are you using exactly? In Debian we have
a patch to cancel the audio as early as possible, it was discussed
upstream on https://github.com/espeak-ng/espeak-ng/issues/172

The Debian patch is available on 

https://salsa.debian.org/a11y-team/espeak-ng/-/raw/master/debian/patches/fix-cancel

Samuel
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
