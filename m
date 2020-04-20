Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (tunnel25281-pt.tunnel.tserv21.tor1.ipv6.he.net [IPv6:2001:470:1c:288::2])
	by mail.lfdr.de (Postfix) with ESMTP id 898571AFF26
	for <lists+speakup@lfdr.de>; Mon, 20 Apr 2020 02:21:19 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id B62611C57F5; Sun, 19 Apr 2020 20:21:18 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 33B001C73C9;
	Sun, 19 Apr 2020 20:21:10 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id E35951C2C6F; Sun, 19 Apr 2020 20:21:08 -0400 (EDT)
Received: from hera.aquilenet.fr (hera.aquilenet.fr [IPv6:2a0c:e300::1])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 5A8E81C0129
 for <speakup@linux-speakup.org>; Sun, 19 Apr 2020 20:21:06 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
 by hera.aquilenet.fr (Postfix) with ESMTP id 05F21DB3B
 for <speakup@linux-speakup.org>; Mon, 20 Apr 2020 02:21:02 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
 by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 223rOzJ5qeln for <speakup@linux-speakup.org>;
 Mon, 20 Apr 2020 02:21:00 +0200 (CEST)
Received: from function (lfbn-bor-1-797-11.w86-234.abo.wanadoo.fr
 [86.234.239.11])
 by hera.aquilenet.fr (Postfix) with ESMTPSA id A42D54B4C
 for <speakup@linux-speakup.org>; Mon, 20 Apr 2020 02:21:00 +0200 (CEST)
Received: from samy by function with local (Exim 4.93)
 (envelope-from <samuel.thibault@ens-lyon.org>) id 1jQKBG-00Gwb8-VV
 for speakup@linux-speakup.org; Mon, 20 Apr 2020 02:20:58 +0200
Date: Mon, 20 Apr 2020 02:20:58 +0200
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: DecTalk Settings from Within Speakup?
Message-ID: <20200420002058.dzdm3nvydxtjkvw2@function>
References: <20200416232813.t2zszb42qd2icfks@function>
 <20200417004033.GA5829@gregn.net>
 <20200417011211.yz4a7gch76ewp6j5@function>
 <Pine.LNX.4.64.2004171438170.15807@server2.shellworld.net>
 <20200417193714.enlesc2vad3phjls@function>
 <Pine.LNX.4.64.2004172029030.20019@server2.shellworld.net>
 <20200418011411.3z37lu4w54yszjt6@function>
 <20200419022742.GA4101@gregn.net>
 <20200419033024.GA2777@qlf.suddenlink.net>
 <Pine.LNX.4.64.2004191959390.18776@server2.shellworld.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Pine.LNX.4.64.2004191959390.18776@server2.shellworld.net>
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

Karen Lewellen, le dim. 19 avril 2020 20:05:51 -0400, a ecrit:
> that it took more than 16 years for Debian to declare speakup stable,

It took 16 years for some people to find volunteer time on revamping
the configuration, plumbering access to the console, access to keyboard
shortcuts, plumbering USB support, fixing all the bogus speakup code
etc. Kernel development is hard, and none of these were a simple task,
even by kernel standards. Doing it when not even having the hardware is
even harder. There is no company behind this, just a couple volunteers.

> that something as  important as inflection is only now even noticed,

That is rather a user-reporting problem. I don't remember the question
being raised on this list. I'm thus not surprised at all that it's not
implemented since AFAICT nobody asked for it. Don't blame the engineers
if the users didn't ask for something.

> and that many involved with testing accessibility from a w3c-wai
> standpoint do not even consider Linux,

That's the 90% market rule playing again. No big surprise here either.

> let alone Speakup as worthy of inclusion in their testing says a great
> deal.

Please actually express instead of just waving hands.

Do you mean Linux accessibility is not seriously taken care of? I can
only agree: there's no big company behind any more, after Oracle bought
Sun and basically shut down the accessibility department that was making
Gnome accessible.

Spreading oil on the fire at the face of people who are trying to do
what they can with the situation won't help with the matter, at any
rate.

Samuel
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
