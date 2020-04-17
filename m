Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (tunnel25281-pt.tunnel.tserv21.tor1.ipv6.he.net [IPv6:2001:470:1c:288::2])
	by mail.lfdr.de (Postfix) with ESMTP id B26C61AD3F9
	for <lists+speakup@lfdr.de>; Fri, 17 Apr 2020 03:12:49 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id D5E171C5801; Thu, 16 Apr 2020 21:12:48 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 4C1F61C73BE;
	Thu, 16 Apr 2020 21:12:17 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 67F091C57AB; Thu, 16 Apr 2020 21:12:16 -0400 (EDT)
Received: from hera.aquilenet.fr (hera.aquilenet.fr [185.233.100.1])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 40F7E1C2DA4
 for <speakup@linux-speakup.org>; Thu, 16 Apr 2020 21:12:15 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
 by hera.aquilenet.fr (Postfix) with ESMTP id 0304B15C2
 for <speakup@linux-speakup.org>; Fri, 17 Apr 2020 03:12:14 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
 by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xQdtsZQoKJtG for <speakup@linux-speakup.org>;
 Fri, 17 Apr 2020 03:12:12 +0200 (CEST)
Received: from function (lfbn-bor-1-797-11.w86-234.abo.wanadoo.fr
 [86.234.239.11])
 by hera.aquilenet.fr (Postfix) with ESMTPSA id 899BD1569
 for <speakup@linux-speakup.org>; Fri, 17 Apr 2020 03:12:12 +0200 (CEST)
Received: from samy by function with local (Exim 4.93)
 (envelope-from <samuel.thibault@ens-lyon.org>) id 1jPFYB-006L8V-J6
 for speakup@linux-speakup.org; Fri, 17 Apr 2020 03:12:11 +0200
Date: Fri, 17 Apr 2020 03:12:11 +0200
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: DecTalk Settings from Within Speakup?
Message-ID: <20200417011211.yz4a7gch76ewp6j5@function>
References: <Pine.LNX.4.64.2004141805070.1871@server2.shellworld.net>
 <20200415034841.GA5932@gregn.net>
 <Pine.LNX.4.64.2004142055040.3919@server2.shellworld.net>
 <20200415044239.GA6357@gregn.net>
 <Pine.LNX.4.64.2004150141390.8315@server2.shellworld.net>
 <20200416232813.t2zszb42qd2icfks@function>
 <20200417004033.GA5829@gregn.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200417004033.GA5829@gregn.net>
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

Gregory Nowak, le jeu. 16 avril 2020 17:40:33 -0700, a ecrit:
> On Fri, Apr 17, 2020 at 01:28:13AM +0200, Samuel Thibault wrote:
> > Well, yes, but that'll work only until speakup wants to change the pitch
> > for whatever screen-reader-related reason such as expressing caps etc.
> 
> I don't understand what Chime means by inflection, but from the thread
> so far, I'm 90% sure he doesn't mean pitch.

Ok, reading more closely:

Chime wrote:
> To enjoy more inflection, I must type
> sudo echo "[:dv pr 250]" >> /sys/accessibility/speakup/synth_direct

The driver reads:
> { PITCH, .u.n = {"[:dv ap %d] ", 122, 50, 350, 0, 0, NULL } },

My bad, notice "pr" vs "ap" which I didn't spot initially. The rest of
the driver doesn't talk about "dv pr".  I don't have the programming
manual for the dectalk, so I don't know what relation the hardware
makes between "dv pr" and "dv ap". Ideally they would be independent,
and thus using synth_direct would indeed be a proper way to set it up,
since speakup itself won't set "dv pr". But since Chime reports it to be
overwritten, it looks like there is a relation with something else,
possibly the pitch, possibly not. I don't know either what inflexion
means, but if it's something different from pitch and rate, we can
probably just add it as another variable like those two, so it can be
set just the same way. One would just need to know the range of values
that can be used.

Samuel
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
