Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (tunnel25281-pt.tunnel.tserv21.tor1.ipv6.he.net [IPv6:2001:470:1c:288::2])
	by mail.lfdr.de (Postfix) with ESMTP id 4FC161AD385
	for <lists+speakup@lfdr.de>; Fri, 17 Apr 2020 02:03:24 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id A285E1C73D8; Thu, 16 Apr 2020 20:03:23 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 174441C73C0;
	Thu, 16 Apr 2020 20:03:20 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 6D3321C2DA4; Thu, 16 Apr 2020 20:03:18 -0400 (EDT)
Received: from server2.shellworld.net (server2.shellworld.net [66.172.12.120])
 by befuddled.reisers.ca (Postfix) with ESMTPS id E53DD1C2DA4
 for <speakup@linux-speakup.org>; Thu, 16 Apr 2020 20:03:16 -0400 (EDT)
Received: by server2.shellworld.net (Postfix, from userid 1028)
 id 581E38C0563; Fri, 17 Apr 2020 00:02:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by server2.shellworld.net (Postfix) with ESMTP id 5513E8C0233
 for <speakup@linux-speakup.org>; Thu, 16 Apr 2020 17:02:45 -0700 (PDT)
Date: Thu, 16 Apr 2020 17:02:45 -0700
From: Chime Hart <chime@hubert-humphrey.com>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: DecTalk Settings from Within Speakup?
In-Reply-To: <20200416233636.qxl77jkwg7v4o3vo@function>
Message-ID: <Pine.LNX.4.64.2004161648560.2885@server2.shellworld.net>
References: <Pine.LNX.4.64.2004141805070.1871@server2.shellworld.net>
 <20200415034841.GA5932@gregn.net>
 <Pine.LNX.4.64.2004142055040.3919@server2.shellworld.net>
 <20200415044239.GA6357@gregn.net> <20200416233636.qxl77jkwg7v4o3vo@function>
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

Thanks Sam, I tried your exact echo suggestion but even with sudo  I get a 
permission denied. I tried
sudo echo 250 > /sys/accessibility/speakup/dectlk/pitch=113
In addition, since you seemingly have a DecTalk, I need to explain, its more of 
a sing/Song delivery as words are spoken. I think I could manually change pitch 
to 480, but as long as that enflection is set the way we explained, then I am 
happy with 113, but would also like the rate to `stay at 229 and volume to 
remain at 86 whether I reboot  or are arrowing through lines of text. But for an 
unknown reason these values drop suddenly until I go to the insert pannel. 
Unfortunately no1 has figured out a way to track or log what Speakup or this U S 
B DecTalk are receiving when these drops occur. I hope short of my talking with 
you live, that I am explaining these challenges. Thanks so much in advance
Chime

_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
