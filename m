Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (tunnel25281-pt.tunnel.tserv21.tor1.ipv6.he.net [IPv6:2001:470:1c:288::2])
	by mail.lfdr.de (Postfix) with ESMTP id 967801AF2F5
	for <lists+speakup@lfdr.de>; Sat, 18 Apr 2020 19:57:34 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id CD5C91C73C4; Sat, 18 Apr 2020 13:57:33 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id A44591C73C1;
	Sat, 18 Apr 2020 13:57:14 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 031541C57B4; Sat, 18 Apr 2020 13:57:13 -0400 (EDT)
Received: from server2.shellworld.net (server2.shellworld.net [66.172.12.120])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 166701C0B50
 for <speakup@linux-speakup.org>; Sat, 18 Apr 2020 13:57:12 -0400 (EDT)
Received: by server2.shellworld.net (Postfix, from userid 1028)
 id 999C38C034C; Sat, 18 Apr 2020 17:57:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by server2.shellworld.net (Postfix) with ESMTP id 943C18C0133
 for <speakup@linux-speakup.org>; Sat, 18 Apr 2020 10:57:10 -0700 (PDT)
Date: Sat, 18 Apr 2020 10:57:10 -0700
From: Chime Hart <chime@hubert-humphrey.com>
To: speakup@linux-speakup.org
Subject: Is Their an Insert+k in Speakup?
Message-ID: <Pine.LNX.4.64.2004181048520.31500@server2.shellworld.net>
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

Well, experimenting, typing an insert through an alphabet, when I hit insert+k 
my system seemed to freeze, no speech, no back space beep, so I pushed the power 
button, and booted successfully in to
Linux chime 5.5.0-2-amd64 #1 SMP Debian 5.5.17-1 (2020-04-15) x86_64
I was actually wanting to asign insert+t for tone, but I have no idea how or 
where this is done? I also looked in /var/log/messages, didn't find anything 
strange. Thanks so much in advance for any guidance, or if by accident if I 
found some bug.
Chime
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
