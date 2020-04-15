Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (tunnel25281-pt.tunnel.tserv21.tor1.ipv6.he.net [IPv6:2001:470:1c:288::2])
	by mail.lfdr.de (Postfix) with ESMTP id EE20F1A908F
	for <lists+speakup@lfdr.de>; Wed, 15 Apr 2020 03:41:11 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id D9C8A1C73C0; Tue, 14 Apr 2020 21:41:08 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id BD78C1C73BB;
	Tue, 14 Apr 2020 21:40:29 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 13CB81C5791; Tue, 14 Apr 2020 21:40:19 -0400 (EDT)
Received: from server2.shellworld.net (server2.shellworld.net [66.172.12.120])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 4A4D61C2C7B
 for <speakup@linux-speakup.org>; Tue, 14 Apr 2020 21:40:16 -0400 (EDT)
Received: by server2.shellworld.net (Postfix, from userid 1028)
 id E6F758C0563; Wed, 15 Apr 2020 01:39:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by server2.shellworld.net (Postfix) with ESMTP id DC1C88C0233
 for <speakup@linux-speakup.org>; Tue, 14 Apr 2020 18:39:40 -0700 (PDT)
Date: Tue, 14 Apr 2020 18:39:40 -0700
From: Chime Hart <chime@hubert-humphrey.com>
To: speakup@linux-speakup.org
Subject: DecTalk Settings from Within Speakup?
Message-ID: <Pine.LNX.4.64.2004141805070.1871@server2.shellworld.net>
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

For maybe 16years since I purchased a DecTalk U S B, many of you know I 
experience frustrations many times a day as the pitch, volume, and rate drop 
suddenly. Well, a couple of months ago, 1 of my Linux experts had an e-mail 
exchange with Kirk, who mentioned something about defalt settings. Well, I 
looked in a copy of speakup_dectlk.c, was able to see where the rate says 180, 
meanwhile we set it at 229. Or the volume which I think says 60 when we set at 
86. Those are just 2 examples. Only by jussling those insert functions to alter 
volume or pitch will put them back after a sudden drop. Some time ago we created 
an alias to reload this dectalk when it gets hozed.
/usr/bin/sudo /sbin/modprobe  -r speakup_dectlk; /usr/bin/sudo /sbin/modprobe 
speakup_dectlk; sudo cp /usr/local/bin/characters 
/sys/accessibility/speakup/i18n/
However, even altering some of those values, I would also need to know what 
replacement to send dectalk so it might `always respect my changes.
I guess David in Canada was the last person who modified these drivers. I will 
be quite honest, each time I see Okash post, I become hopeful. But now with some 
amunision from Kirk, I hope among the movers-and-shakers, maybesome sort of fix 
or even better a real U S B driver can be created.
I realize, I am only a user-and-not a programmer, but if I were to guess, most 
Speakup users are programmers. Anyway, thanks in advance, whatever any of you 
can do. I had even considered sending Kirk an audio file demonstrating these 
issues, but I haven't yet patched out of an ear-phone jack to a recorder.
Chime
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
