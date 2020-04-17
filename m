Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 501691AD422
	for <lists+speakup@lfdr.de>; Fri, 17 Apr 2020 03:29:26 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id B78F61C57B1; Thu, 16 Apr 2020 21:29:25 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 89D2C1C73DC;
	Thu, 16 Apr 2020 21:29:05 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id B366F1C57AB; Thu, 16 Apr 2020 21:29:03 -0400 (EDT)
Received: from hera.aquilenet.fr (hera.aquilenet.fr [IPv6:2a0c:e300::1])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 83F601C2DA4
 for <speakup@linux-speakup.org>; Thu, 16 Apr 2020 21:29:02 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
 by hera.aquilenet.fr (Postfix) with ESMTP id 5BB0035B2
 for <speakup@linux-speakup.org>; Fri, 17 Apr 2020 03:29:01 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
 by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3-A14eGmsQ1X for <speakup@linux-speakup.org>;
 Fri, 17 Apr 2020 03:29:00 +0200 (CEST)
Received: from function (lfbn-bor-1-797-11.w86-234.abo.wanadoo.fr
 [86.234.239.11])
 by hera.aquilenet.fr (Postfix) with ESMTPSA id E6F883031
 for <speakup@linux-speakup.org>; Fri, 17 Apr 2020 03:28:59 +0200 (CEST)
Received: from samy by function with local (Exim 4.93)
 (envelope-from <samuel.thibault@ens-lyon.org>) id 1jPFoQ-006LNZ-N8
 for speakup@linux-speakup.org; Fri, 17 Apr 2020 03:28:58 +0200
Date: Fri, 17 Apr 2020 03:28:58 +0200
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: DecTalk Settings from Within Speakup?
Message-ID: <20200417012858.r5kipbsmnrevwymq@function>
References: <Pine.LNX.4.64.2004141805070.1871@server2.shellworld.net>
 <20200415034841.GA5932@gregn.net>
 <Pine.LNX.4.64.2004142055040.3919@server2.shellworld.net>
 <20200415044239.GA6357@gregn.net>
 <Pine.LNX.4.64.2004150141390.8315@server2.shellworld.net>
 <20200416232813.t2zszb42qd2icfks@function>
 <20200417004033.GA5829@gregn.net>
 <20200417011211.yz4a7gch76ewp6j5@function>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200417011211.yz4a7gch76ewp6j5@function>
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

Samuel Thibault, le ven. 17 avril 2020 03:12:11 +0200, a ecrit:
> I don't have the programming manual for the dectalk, so I don't know
> what relation the hardware makes between "dv pr" and "dv ap".

With a quick search I found it on
https://manualzz.com/doc/7326177/dectalk-5.01-e1-user-guide
and it says:

ap Average pitch, in H
pr Pitch range, in %

So it's indeed a different thing: ap is the average, and pr is how much
it should vary (defaults to 100% with the Paul voice). I'd still be
surprised that setting dv ap would change dv pr as well, they are
supposed to be independent.

Maybe experimenting with synth_direct would allow to know more, e.g.

echo "[:dv ap 112 pr 100] First test [:dv ap 112 pr 250] Second test [:dv ap 113] Third test" >> /sys/accessibility/speakup/synth_direct

I would expect the second test to have more inflection, and the third
test to have the same inflection, only a very little bit higher pitch.

Samuel
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
