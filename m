Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (tunnel25281-pt.tunnel.tserv21.tor1.ipv6.he.net [IPv6:2001:470:1c:288::2])
	by mail.lfdr.de (Postfix) with ESMTP id 4D1BB28A7B9
	for <lists+speakup@lfdr.de>; Sun, 11 Oct 2020 16:17:50 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id E1396380BE2; Sun, 11 Oct 2020 10:17:49 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 57D3E380BB2;
	Sun, 11 Oct 2020 10:17:48 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 3ACF8380B2A; Sun, 11 Oct 2020 10:17:47 -0400 (EDT)
Received: from hera.aquilenet.fr (hera.aquilenet.fr [185.233.100.1])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 14A21380AC5
 for <speakup@linux-speakup.org>; Sun, 11 Oct 2020 10:17:47 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
 by hera.aquilenet.fr (Postfix) with ESMTP id 15D90E10
 for <speakup@linux-speakup.org>; Sun, 11 Oct 2020 16:17:46 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
 by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BscbI4uZ30zu for <speakup@linux-speakup.org>;
 Sun, 11 Oct 2020 16:17:45 +0200 (CEST)
Received: from function (lfbn-bor-1-56-204.w90-50.abo.wanadoo.fr
 [90.50.148.204])
 by hera.aquilenet.fr (Postfix) with ESMTPSA id 26710D87
 for <speakup@linux-speakup.org>; Sun, 11 Oct 2020 16:17:45 +0200 (CEST)
Received: from samy by function with local (Exim 4.94)
 (envelope-from <samuel.thibault@ens-lyon.org>) id 1kRcAS-004RAp-Bp
 for speakup@linux-speakup.org; Sun, 11 Oct 2020 16:17:44 +0200
Date: Sun, 11 Oct 2020 16:17:44 +0200
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Flushing issue (was: So, where'd the volume controls get to?)
Message-ID: <20201011141744.pwte6hjbijqyb7my@function>
References: <alpine.DEB.2.23.453.2010091111480.51713@befuddled.reisers.ca>
 <20201010151312.fbz27eyoua2574tw@function>
 <alpine.DEB.2.23.453.2010101446340.31356@befuddled.reisers.ca>
 <20201010194612.ut6md7liw4e47ky7@function>
 <alpine.DEB.2.23.453.2010101905240.36490@befuddled.reisers.ca>
 <20201010235355.uqqvyyjqxupfw5qw@function>
 <alpine.DEB.2.23.453.2010102053100.39482@befuddled.reisers.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.23.453.2010102053100.39482@befuddled.reisers.ca>
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

Kirk Reiser, le sam. 10 oct. 2020 20:58:56 -0400, a ecrit:
> On Sun, 11 Oct 2020, Samuel Thibault wrote:
> > Ok but isn't it getting interrupted by the next key press also very
> > fast?
> 
> It does interrupt quickly but there is previously spoken speech that
> gets jammed against the new speech.

So they get mixed? This really looks like what I fixed in the Debian
patch that upstream still hasn't integrated.

> > > the libespeak library as reported by ldd is:
> > > 
> > > libespeak.so.1 => /usr/lib/x86_64-linux-gnu/libespeak.so.1 (0x00007f6298
> > 
> > That is not precise enough, that has never changed since the espeak
> > times. The last version of espeak-ng I'm aware of is 1.50.
> 
> Okay, the espeakup I'm using isn't using espeak-ng at all. It's using:
> 
> libespeak1:amd64                       1.48.04+dfsg-9

That's really old them. You'd want to use a more recent version, at
least libespeak-ng1 1.49.0+dfsg-7

Samuel
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
