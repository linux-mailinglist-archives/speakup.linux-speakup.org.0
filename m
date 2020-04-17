Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 2B5271AE657
	for <lists+speakup@lfdr.de>; Fri, 17 Apr 2020 21:54:30 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 89FA71C73CC; Fri, 17 Apr 2020 15:54:29 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 80CD61C5801;
	Fri, 17 Apr 2020 15:54:19 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 8D8291C57B6; Fri, 17 Apr 2020 15:54:16 -0400 (EDT)
Received: from hera.aquilenet.fr (hera.aquilenet.fr [185.233.100.1])
 by befuddled.reisers.ca (Postfix) with ESMTPS id CECA21C2C7B
 for <speakup@linux-speakup.org>; Fri, 17 Apr 2020 15:54:14 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
 by hera.aquilenet.fr (Postfix) with ESMTP id 9B3AF4C
 for <speakup@linux-speakup.org>; Fri, 17 Apr 2020 21:54:13 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
 by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mfJt7kC9GMlj for <speakup@linux-speakup.org>;
 Fri, 17 Apr 2020 21:54:11 +0200 (CEST)
Received: from function.home (unknown
 [IPv6:2a01:cb19:956:1b00:9eb6:d0ff:fe88:c3c7])
 by hera.aquilenet.fr (Postfix) with ESMTPSA id 626495C36
 for <speakup@linux-speakup.org>; Fri, 17 Apr 2020 21:37:16 +0200 (CEST)
Received: from samy by function.home with local (Exim 4.93)
 (envelope-from <samuel.thibault@ens-lyon.org>) id 1jPWna-008auY-P0
 for speakup@linux-speakup.org; Fri, 17 Apr 2020 21:37:14 +0200
Date: Fri, 17 Apr 2020 21:37:14 +0200
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: DecTalk Settings from Within Speakup?
Message-ID: <20200417193714.enlesc2vad3phjls@function>
References: <Pine.LNX.4.64.2004141805070.1871@server2.shellworld.net>
 <20200415034841.GA5932@gregn.net>
 <Pine.LNX.4.64.2004142055040.3919@server2.shellworld.net>
 <20200415044239.GA6357@gregn.net>
 <Pine.LNX.4.64.2004150141390.8315@server2.shellworld.net>
 <20200416232813.t2zszb42qd2icfks@function>
 <20200417004033.GA5829@gregn.net>
 <20200417011211.yz4a7gch76ewp6j5@function>
 <Pine.LNX.4.64.2004171438170.15807@server2.shellworld.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Pine.LNX.4.64.2004171438170.15807@server2.shellworld.net>
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

Karen Lewellen wrote:
> there*must* be something uniform that allows caps [...] etc., available for
> *the user* to set and have those remain  constant, not to change at the
> whims of speakup.

That is *exactly* what I am talking about. Using speakupconf to
configure things nicely, and not having to do obscure echo to an obscure
/sys file.

Karen Lewellen wrote:
> If speakup lacks the option  after being around  for so long,

It doesn't lack it, it lets the synthesizer manage it. What is discussed
here is about tuning it, which I haven't heared being asked for before.

Karen Lewellen wrote:
> if that is not happening, you have problems.

Please avoid directing such kind of sentence at people who are actually
trying to find time to work on stuff, I don't see how that can be
helping in any way.

Karen Lewellen wrote:
> there should be guides both for Linux itself and speakup outside of
> the operating system,

There is a speakup guide on http://linux-speakup.org/spkguide.txt
of course it should be getting updated etc. somebody has to do it.
It just can not be me, since I'm not even remotely a user of speakup,
it'd be way simpler if it was real users who would work on it.

Samuel
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
