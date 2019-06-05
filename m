Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id C7E35361FB
	for <lists+speakup@lfdr.de>; Wed,  5 Jun 2019 18:59:33 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 76E261C6B5E; Wed,  5 Jun 2019 12:59:32 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id E4ED31C6B72;
	Wed,  5 Jun 2019 12:59:16 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 79C831C5B68; Wed,  5 Jun 2019 12:59:14 -0400 (EDT)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by befuddled.reisers.ca (Postfix) with ESMTPS id C92A81C5A80
 for <speakup@linux-speakup.org>; Wed,  5 Jun 2019 12:59:13 -0400 (EDT)
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
 by mailbackend.panix.com (Postfix) with ESMTP id 45Jw4J4ZbYz17lv;
 Wed,  5 Jun 2019 12:59:12 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
 id 45Jw4J3MRmzcbR; Wed,  5 Jun 2019 12:59:12 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
 by panix1.panix.com (Postfix) with ESMTP id 45Jw4J32qWzcbQ;
 Wed,  5 Jun 2019 12:59:12 -0400 (EDT)
Date: Wed, 5 Jun 2019 12:59:12 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: jheim@math.wisc.edu, 
 "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: no sound except speakup
In-Reply-To: <bb706092-7289-2093-e7d0-e1788722cc37@math.wisc.edu>
Message-ID: <alpine.NEB.2.21.1906051255360.28805@panix1.panix.com>
References: <bb706092-7289-2093-e7d0-e1788722cc37@math.wisc.edu>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

What happens after sudo -i amixer set Master 100% unmute <enter>?
If you get temporary volume increase even after sudo -i alsactl store
<enter>
There's probably two possible problem sources.  There's an alsa.xxx.lock
file in the /usr/lib/alsa directory that needs deleting or pulseaudio
needs straightening out if pulseaudio is running on your system.



--

_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
