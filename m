Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 864F41A91B5
	for <lists+speakup@lfdr.de>; Wed, 15 Apr 2020 06:04:46 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 9E0CF1C73BC; Wed, 15 Apr 2020 00:04:45 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id B0AF41C73DE;
	Wed, 15 Apr 2020 00:04:10 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 222DC1C578D; Wed, 15 Apr 2020 00:04:08 -0400 (EDT)
Received: from server2.shellworld.net (server2.shellworld.net [66.172.12.120])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 250051C2C7B
 for <speakup@linux-speakup.org>; Wed, 15 Apr 2020 00:04:07 -0400 (EDT)
Received: by server2.shellworld.net (Postfix, from userid 1028)
 id 228948C0563; Wed, 15 Apr 2020 04:04:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by server2.shellworld.net (Postfix) with ESMTP id 1AB508C0233
 for <speakup@linux-speakup.org>; Tue, 14 Apr 2020 21:04:02 -0700 (PDT)
Date: Tue, 14 Apr 2020 21:04:02 -0700
From: Chime Hart <chime@hubert-humphrey.com>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: DecTalk Settings from Within Speakup?
In-Reply-To: <20200415034841.GA5932@gregn.net>
Message-ID: <Pine.LNX.4.64.2004142055040.3919@server2.shellworld.net>
References: <Pine.LNX.4.64.2004141805070.1871@server2.shellworld.net>
 <20200415034841.GA5932@gregn.net>
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

Thanks Greg: Next time these values drop, I will try that. Most times I don't 
run that alias, usually just hit insert+1 which brings volume back to 85, but I 
also do that for each of these settings which get knocked down.
Just tried your load command, which knocked out my extra inflection, and moved 
the pitch from 113 to 122. To enjoy more inflection, I must type
sudo echo "[:dv pr 250]" >> /sys/accessibility/speakup/synth_direct
Thats in an alias which calls a script.
Chime
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
