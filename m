Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (tunnel25281-pt.tunnel.tserv21.tor1.ipv6.he.net [IPv6:2001:470:1c:288::2])
	by mail.lfdr.de (Postfix) with ESMTP id 556471A97B6
	for <lists+speakup@lfdr.de>; Wed, 15 Apr 2020 10:59:49 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id E6DCF1C5801; Wed, 15 Apr 2020 04:59:47 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 5D2E81C73BE;
	Wed, 15 Apr 2020 04:58:41 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id BF2781C0B50; Wed, 15 Apr 2020 04:58:13 -0400 (EDT)
Received: from server2.shellworld.net (server2.shellworld.net [66.172.12.120])
 by befuddled.reisers.ca (Postfix) with ESMTPS id BB6F51C0B50
 for <speakup@linux-speakup.org>; Wed, 15 Apr 2020 04:58:02 -0400 (EDT)
Received: by server2.shellworld.net (Postfix, from userid 1028)
 id E29468C05CA; Wed, 15 Apr 2020 08:57:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by server2.shellworld.net (Postfix) with ESMTP id 62F5F8C0559
 for <speakup@linux-speakup.org>; Wed, 15 Apr 2020 01:57:52 -0700 (PDT)
Date: Wed, 15 Apr 2020 01:57:52 -0700
From: Chime Hart <chime@hubert-humphrey.com>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: DecTalk Settings from Within Speakup?
In-Reply-To: <20200415044239.GA6357@gregn.net>
Message-ID: <Pine.LNX.4.64.2004150141390.8315@server2.shellworld.net>
References: <Pine.LNX.4.64.2004141805070.1871@server2.shellworld.net>
 <20200415034841.GA5932@gregn.net>
 <Pine.LNX.4.64.2004142055040.3919@server2.shellworld.net>
 <20200415044239.GA6357@gregn.net>
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

Thanks Greg. Running sudo speakupconf save  didn't ruin my settings, however, 
once I ran it with load, the pitch still went to 122 and my inflection setting 
was knocked out. By the way that is a command sent to the dectalk, has little or 
nothing to do with Speakup. So that command
echo "[:dv pr 250]" >> /sys/accessibility/speakup/synth_direct
sets a parameter in the DecTalk which provides more inflection. Sure I know I 
can increase the pitch all the way to 350 in Speakup.
And lastly, we modified the charactors file, so when I type the number 9  it 
would say niner. And other similar changes, but running that load command knocks 
that out-and-resets to the defalts. By running my "rd" alias, it coppies the 
charactors file back in to use. Thanks for your guidance.
Chime

_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
