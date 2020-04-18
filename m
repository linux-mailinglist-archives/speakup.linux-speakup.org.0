Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (tunnel25281-pt.tunnel.tserv21.tor1.ipv6.he.net [IPv6:2001:470:1c:288::2])
	by mail.lfdr.de (Postfix) with ESMTP id E67681AE906
	for <lists+speakup@lfdr.de>; Sat, 18 Apr 2020 02:54:18 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 568C11C73BF; Fri, 17 Apr 2020 20:54:18 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id EA97A1C57DE;
	Fri, 17 Apr 2020 20:53:19 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 9B7831C57B6; Fri, 17 Apr 2020 20:53:10 -0400 (EDT)
Received: from server2.shellworld.net (server2.shellworld.net [66.172.12.120])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 6936E1C2C7B
 for <speakup@linux-speakup.org>; Fri, 17 Apr 2020 20:53:07 -0400 (EDT)
Received: by server2.shellworld.net (Postfix, from userid 1005)
 id 34D418C05BC; Sat, 18 Apr 2020 00:53:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by server2.shellworld.net (Postfix) with ESMTP id 0F9768C0141
 for <speakup@linux-speakup.org>; Fri, 17 Apr 2020 20:53:06 -0400 (EDT)
Date: Fri, 17 Apr 2020 20:53:06 -0400 (EDT)
From: Karen Lewellen <klewellen@shellworld.net>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: DecTalk Settings from Within Speakup?
In-Reply-To: <20200417193714.enlesc2vad3phjls@function>
Message-ID: <Pine.LNX.4.64.2004172029030.20019@server2.shellworld.net>
References: <Pine.LNX.4.64.2004141805070.1871@server2.shellworld.net>
 <20200415034841.GA5932@gregn.net>
 <Pine.LNX.4.64.2004142055040.3919@server2.shellworld.net>
 <20200415044239.GA6357@gregn.net>
 <Pine.LNX.4.64.2004150141390.8315@server2.shellworld.net>
 <20200416232813.t2zszb42qd2icfks@function> <20200417004033.GA5829@gregn.net>
 <20200417011211.yz4a7gch76ewp6j5@function>
 <Pine.LNX.4.64.2004171438170.15807@server2.shellworld.net>
 <20200417193714.enlesc2vad3phjls@function>
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

Samuel,
Since you removed the explanation about inflection, I hope you realize its 
importance to the function of any   quality screen reader...it is after 
all what helps humans sound more human in the first place.
The idea of leaving  important aspects like  rate pitch and inflection 
configuration   specifics to  the 
synthesizer, translates  into  inconsistent speakup performance.  From what 
you  say, the quality will depend on the synthesizer not the  screen reader 
program.  That, speaking personally, is a mistake.  End users should 
expect the same quality of critical aspects, and yes the ability to fine tune 
how fast how clear  and how human   what your using is, sits firmly in the 
critical dictionary,  from  their screen reader, regardless of 
synthesizers.  Of course individuals are 
going to fine tune those factors, why ever would they not? Such 
preferences  vary from person to person, its part of why there are so many hardware 
synthesizers in the first place, and why software speech is  considered of 
such poor 
quality  for many, when both compared to those tools and the human voice.
As for users of speekup   updating the files, that would require a uniform 
experience, which as you seem to illustrate here is beyond  what a user 
should   expect to fine.
My comments may seem  harsh to you, but  the ability to use Linux  in a 
fluid fashion for some is only as good as the screen reader,  and those 
doing  the work, even if  volunteers, must respect as much.
Its apart  of quality control.

Just my opinion ,
Karen



On Fri, 17 Apr 2020, Samuel Thibault wrote:

> Hello,
>
> Karen Lewellen wrote:
>> there*must* be something uniform that allows caps [...] etc., available for
>> *the user* to set and have those remain  constant, not to change at the
>> whims of speakup.
>
> That is *exactly* what I am talking about. Using speakupconf to
> configure things nicely, and not having to do obscure echo to an obscure
> /sys file.
>
> Karen Lewellen wrote:
>> If speakup lacks the option  after being around  for so long,
>
> It doesn't lack it, it lets the synthesizer manage it. What is discussed
> here is about tuning it, which I haven't heared being asked for before.
>
> Karen Lewellen wrote:
>> if that is not happening, you have problems.
>
> Please avoid directing such kind of sentence at people who are actually
> trying to find time to work on stuff, I don't see how that can be
> helping in any way.
>
> Karen Lewellen wrote:
>> there should be guides both for Linux itself and speakup outside of
>> the operating system,
>
> There is a speakup guide on http://linux-speakup.org/spkguide.txt
> of course it should be getting updated etc. somebody has to do it.
> It just can not be me, since I'm not even remotely a user of speakup,
> it'd be way simpler if it was real users who would work on it.
>
> Samuel
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
