Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (tunnel25281-pt.tunnel.tserv21.tor1.ipv6.he.net [IPv6:2001:470:1c:288::2])
	by mail.lfdr.de (Postfix) with ESMTP id 0AC101B8DF7
	for <lists+speakup@lfdr.de>; Sun, 26 Apr 2020 10:36:19 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 2CD6D1C2CE2; Sun, 26 Apr 2020 04:36:18 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id CB9311C5B73;
	Sun, 26 Apr 2020 04:34:59 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id EAC8F1C3309; Sun, 26 Apr 2020 04:34:49 -0400 (EDT)
Received: from covici.com (debian-2.covici.com [166.84.7.93])
 by befuddled.reisers.ca (Postfix) with ESMTPS id E17261C26C7
 for <speakup@linux-speakup.org>; Sun, 26 Apr 2020 04:34:47 -0400 (EDT)
Received: from ccs.covici.com (ccs.covici.com [70.109.53.110])
 (authenticated bits=0)
 by covici.com (8.15.2/8.15.2/Debian-14~deb10u1) with ESMTPSA id 03Q8Yqv0014507
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT)
 for <speakup@linux-speakup.org>; Sun, 26 Apr 2020 04:34:53 -0400
Received: from ccs.covici.com (localhost [127.0.0.1])
 by ccs.covici.com (8.15.2/8.15.2) with ESMTPS id 03Q8Yg9M3785565
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT)
 for <speakup@linux-speakup.org>; Sun, 26 Apr 2020 04:34:42 -0400
Received: (from covici@localhost)
 by ccs.covici.com (8.15.2/8.15.2/Submit) id 03Q8YgFg3785563;
 Sun, 26 Apr 2020 04:34:42 -0400
Date: Sun, 26 Apr 2020 04:34:42 -0400
Message-ID: <m3o8resl0d.wl-covici@ccs.covici.com>
From: John Covici <covici@ccs.covici.com>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Speakup Pausing for Punctuation?
In-Reply-To: <Pine.LNX.4.64.2004252121430.32657@server2.shellworld.net>
References: <Pine.LNX.4.64.2004252121430.32657@server2.shellworld.net>
User-Agent: Wanderlust/2.15.9 (Almost Unreal) SEMI-EPG/1.14.7 (Harue)
 FLIM/1.14.9 (=?ISO-8859-4?Q?Goj=F2?=) APEL/10.8 EasyPG/1.0.0 Emacs/26
 (x86_64-pc-linux-gnu) MULE/6.0 (HANACHIRUSATO)
Organization: Covici Computer Systems
MIME-Version: 1.0 (generated by SEMI-EPG 1.14.7 - "Harue")
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
Reply-To: covici@ccs.covici.com, "Speakup is a screen review system for Linux."
 <speakup@linux-speakup.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

I think this is synth driven, I had to tweak things so speakup would
pause while still reading the punctuation which is what I like.  It
probably depends on the init string.

On Sun, 26 Apr 2020 00:30:52 -0400,
Chime Hart wrote:
> 
> HI All: Well, all-of-a-sudden on Saturday afternoon I was
> noticing odd pauses while reading mail, which I first thought
> were cpu or bandwidth related. After examining text, it looks
> like Speakup is pausing where a punctuation is. I normally keep
> both punc settings on 0 but if I move reading punc to 3  it reads
> a dot when it finds a period. So these pauses are a kind of quiet
> while it would be saying a punctuation item. Is this some  sort
> of option in Speakup, where I can switch among words or
> sentences? I don't think this is DecTalk driven. Thanks so much
> in advance for any suggestions.
> Chime
> _______________________________________________
> Speakup mailing list
> Speakup@linux-speakup.org
> http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
> 

-- 
Your life is like a penny.  You're going to lose it.  The question is:
How do
you spend it?

         John Covici wb2una
         covici@ccs.covici.com
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
