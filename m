Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 674FB28A0BF
	for <lists+speakup@lfdr.de>; Sat, 10 Oct 2020 17:13:23 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id BF223380B2C; Sat, 10 Oct 2020 11:13:22 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 6FCC9380B34;
	Sat, 10 Oct 2020 11:13:19 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id B954A380B2C; Sat, 10 Oct 2020 11:13:17 -0400 (EDT)
Received: from hera.aquilenet.fr (hera.aquilenet.fr [185.233.100.1])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 8D1A9380B29
 for <speakup@linux-speakup.org>; Sat, 10 Oct 2020 11:13:17 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
 by hera.aquilenet.fr (Postfix) with ESMTP id 3BC481027
 for <speakup@linux-speakup.org>; Sat, 10 Oct 2020 17:13:14 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
 by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7YtTeBA5r4w5 for <speakup@linux-speakup.org>;
 Sat, 10 Oct 2020 17:13:13 +0200 (CEST)
Received: from function.home (unknown
 [IPv6:2a01:cb19:956:1b00:9eb6:d0ff:fe88:c3c7])
 by hera.aquilenet.fr (Postfix) with ESMTPSA id 8FEAE5F0
 for <speakup@linux-speakup.org>; Sat, 10 Oct 2020 17:13:13 +0200 (CEST)
Received: from samy by function.home with local (Exim 4.94)
 (envelope-from <samuel.thibault@ens-lyon.org>) id 1kRGYa-001qzp-Pz
 for speakup@linux-speakup.org; Sat, 10 Oct 2020 17:13:12 +0200
Date: Sat, 10 Oct 2020 17:13:12 +0200
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: So, where'd the volume controls get to?
Message-ID: <20201010151312.fbz27eyoua2574tw@function>
References: <alpine.DEB.2.23.453.2010091111480.51713@befuddled.reisers.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.23.453.2010091111480.51713@befuddled.reisers.ca>
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

Kirk Reiser, le ven. 09 oct. 2020 11:19:01 -0400, a ecrit:
> Hello Samuel et al: The latest version of speakup appears to have
> replaced the volume controls with inflection controls.

?? I'm not aware of this. Inflection was added in the /sys parameters,
but only to be configured manual by echoing there. What hardware are you
using?

> IMO espeakup is still entirely brain dead so a lot of us still have to
> use very old versions from back before espeak-en to get decent
> performence. It's just an observation.

"Performance"? What do you mean?

Again, I'm not an actual user of speakup, so people have to explain what
they mean in details otherwise I won't be able to grasp what problem
there actually is.

Samuel
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
