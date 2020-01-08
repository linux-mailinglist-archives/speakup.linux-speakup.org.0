Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id C7A5C134F58
	for <lists+speakup@lfdr.de>; Wed,  8 Jan 2020 23:26:37 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 465291C0DA4; Wed,  8 Jan 2020 17:26:34 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id DF1901C0D94;
	Wed,  8 Jan 2020 17:26:15 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id A32E91C0D88; Wed,  8 Jan 2020 17:26:03 -0500 (EST)
Received: from server2.shellworld.net (server2.shellworld.net [66.172.12.120])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 4E8CE1C0D65
 for <speakup@linux-speakup.org>; Wed,  8 Jan 2020 17:26:02 -0500 (EST)
Received: by server2.shellworld.net (Postfix, from userid 1028)
 id BA4F78C0353; Wed,  8 Jan 2020 22:26:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by server2.shellworld.net (Postfix) with ESMTP id B647A8C0349
 for <speakup@linux-speakup.org>; Wed,  8 Jan 2020 14:26:00 -0800 (PST)
Date: Wed, 8 Jan 2020 14:26:00 -0800
From: Chime Hart <chime@hubert-humphrey.com>
To: speakup@linux-speakup.org
Subject: Why Doesn't speakup_setlocalle Have US English?
Message-ID: <Pine.LNX.4.64.2001081419410.13011@server2.shellworld.net>
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

Wow, not knowing what it was, I typed a speakup localle and only 3 choices were 
listed, Canadian English-and-2 in French. This mostly seems to affect typing 
rather than live reading, although arrowing accross a line now reads phoneticly. 
Then I looked in a man-page for similar command to change in Debian. It 
suggested
update-locale LANG=en_CA.UTF-8 LANGUAGE
But there is no such command. Thanks so much in advance for any guidance.
Chime
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
