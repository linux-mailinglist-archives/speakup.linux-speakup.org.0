Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 9F1CC1AEA8A
	for <lists+speakup@lfdr.de>; Sat, 18 Apr 2020 09:42:10 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id BC3C91C57CB; Sat, 18 Apr 2020 03:42:09 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 0FEA41C57CD;
	Sat, 18 Apr 2020 03:40:48 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 840521C57B4; Sat, 18 Apr 2020 03:40:37 -0400 (EDT)
Received: from hera.aquilenet.fr (hera.aquilenet.fr [185.233.100.1])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 6073A1C0DBF
 for <speakup@linux-speakup.org>; Sat, 18 Apr 2020 03:40:34 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
 by hera.aquilenet.fr (Postfix) with ESMTP id DA55433D2
 for <speakup@linux-speakup.org>; Sat, 18 Apr 2020 09:40:31 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
 by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HqPE15xYjI1H for <speakup@linux-speakup.org>;
 Sat, 18 Apr 2020 09:40:30 +0200 (CEST)
Received: from function (lfbn-bor-1-797-11.w86-234.abo.wanadoo.fr
 [86.234.239.11])
 by hera.aquilenet.fr (Postfix) with ESMTPSA id 89153F428
 for <speakup@linux-speakup.org>; Sat, 18 Apr 2020 03:16:25 +0200 (CEST)
Received: from samy by function with local (Exim 4.93)
 (envelope-from <samuel.thibault@ens-lyon.org>) id 1jPc3f-009Ha6-3f
 for speakup@linux-speakup.org; Sat, 18 Apr 2020 03:14:11 +0200
Date: Sat, 18 Apr 2020 03:14:11 +0200
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: DecTalk Settings from Within Speakup?
Message-ID: <20200418011411.3z37lu4w54yszjt6@function>
References: <20200415034841.GA5932@gregn.net>
 <Pine.LNX.4.64.2004142055040.3919@server2.shellworld.net>
 <20200415044239.GA6357@gregn.net>
 <Pine.LNX.4.64.2004150141390.8315@server2.shellworld.net>
 <20200416232813.t2zszb42qd2icfks@function>
 <20200417004033.GA5829@gregn.net>
 <20200417011211.yz4a7gch76ewp6j5@function>
 <Pine.LNX.4.64.2004171438170.15807@server2.shellworld.net>
 <20200417193714.enlesc2vad3phjls@function>
 <Pine.LNX.4.64.2004172029030.20019@server2.shellworld.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Pine.LNX.4.64.2004172029030.20019@server2.shellworld.net>
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

Karen Lewellen wrote:
> I hope you realize its importance to the function of any quality
> screen reader.

Sure, I was just commenting on the rest. See my mail date Fri, 17 Apr
2020 03:12:11 +0200 about including it as a parameter.

Karen Lewellen wrote:
> From what you say, the quality will depend on the synthesizer not the
> screen reader program.

Yes: the screen reader can't do much if the synthesizer doesn't support
good inflection. It can not make the synthesizer magically change its
behavior if the synthesizer itself doesn't support it.

Karen Lewellen wrote:
> Of course individuals are going to fine tune those factors, why ever
> would they not?

The question was not whether they would tune it or not, but about
knowing it was existing at all. I simply had no idea this notion
was existing at all in synthesizers, since I have basically zero
actual practice of speech synthesizer. Why am I working on speakup
then? Frankly, when I read messages like yours, I do wonder. I just
happened to go by and see that speakup needed help. If it's not welcome
I can just merely leave out speakup as it is. But I don't think that's
what you hoped for? Then like I said, avoid sending the kind of harsh
message you did, I don't see how they can help in any way.

Karen Lewellen wrote:
> As for users of speekup updating the files, that would require a
> uniform experience, which as you seem to illustrate here is beyond
> what a user should expect to fine.

???? ON THE CONTRARY.

I was precisely exactly saying that we should just put the parameter
just along the others, instead of tinkering with synth_direct.

Samuel
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
