Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (tunnel25281-pt.tunnel.tserv21.tor1.ipv6.he.net [IPv6:2001:470:1c:288::2])
	by mail.lfdr.de (Postfix) with ESMTP id 77A3E1B8C17
	for <lists+speakup@lfdr.de>; Sun, 26 Apr 2020 06:31:51 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id BC74F1C57F8; Sun, 26 Apr 2020 00:31:48 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 8FB171C5B73;
	Sun, 26 Apr 2020 00:31:21 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id AC0971C3309; Sun, 26 Apr 2020 00:30:55 -0400 (EDT)
Received: from server2.shellworld.net (server2.shellworld.net [66.172.12.120])
 by befuddled.reisers.ca (Postfix) with ESMTPS id EA4431C26C7
 for <speakup@linux-speakup.org>; Sun, 26 Apr 2020 00:30:53 -0400 (EDT)
Received: by server2.shellworld.net (Postfix, from userid 1028)
 id 647D98C02F4; Sun, 26 Apr 2020 04:30:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by server2.shellworld.net (Postfix) with ESMTP id 5F50F8C0133
 for <speakup@linux-speakup.org>; Sat, 25 Apr 2020 21:30:52 -0700 (PDT)
Date: Sat, 25 Apr 2020 21:30:52 -0700
From: Chime Hart <chime@hubert-humphrey.com>
To: speakup@linux-speakup.org
Subject: Speakup Pausing for Punctuation?
Message-ID: <Pine.LNX.4.64.2004252121430.32657@server2.shellworld.net>
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

HI All: Well, all-of-a-sudden on Saturday afternoon I was noticing odd pauses 
while reading mail, which I first thought were cpu or bandwidth related. After 
examining text, it looks like Speakup is pausing where a punctuation is. I 
normally keep both punc settings on 0 but if I move reading punc to 3  it reads 
a dot when it finds a period. So these pauses are a kind of quiet while it would 
be saying a punctuation item. Is this some  sort of option in Speakup, where I 
can switch among words or sentences? I don't think this is DecTalk driven. 
Thanks so much in advance for any suggestions.
Chime
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
