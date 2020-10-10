Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 26F8328A49B
	for <lists+speakup@lfdr.de>; Sun, 11 Oct 2020 01:54:05 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 322A1380B28; Sat, 10 Oct 2020 19:54:04 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id ED116380B34;
	Sat, 10 Oct 2020 19:54:00 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 79B13380B26; Sat, 10 Oct 2020 19:53:59 -0400 (EDT)
Received: from hera.aquilenet.fr (hera.aquilenet.fr [185.233.100.1])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 5692E38096B
 for <speakup@linux-speakup.org>; Sat, 10 Oct 2020 19:53:59 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
 by hera.aquilenet.fr (Postfix) with ESMTP id 4AF511227
 for <speakup@linux-speakup.org>; Sun, 11 Oct 2020 01:53:58 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
 by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id c0uoYzS5gXBG for <speakup@linux-speakup.org>;
 Sun, 11 Oct 2020 01:53:57 +0200 (CEST)
Received: from function (lfbn-bor-1-56-204.w90-50.abo.wanadoo.fr
 [90.50.148.204])
 by hera.aquilenet.fr (Postfix) with ESMTPSA id 6CFA5E54
 for <speakup@linux-speakup.org>; Sun, 11 Oct 2020 01:53:57 +0200 (CEST)
Received: from samy by function with local (Exim 4.94)
 (envelope-from <samuel.thibault@ens-lyon.org>) id 1kROgV-0030Qy-H6
 for speakup@linux-speakup.org; Sun, 11 Oct 2020 01:53:55 +0200
Date: Sun, 11 Oct 2020 01:53:55 +0200
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Flushing issue (was: So, where'd the volume controls get to?)
Message-ID: <20201010235355.uqqvyyjqxupfw5qw@function>
References: <alpine.DEB.2.23.453.2010091111480.51713@befuddled.reisers.ca>
 <20201010151312.fbz27eyoua2574tw@function>
 <alpine.DEB.2.23.453.2010101446340.31356@befuddled.reisers.ca>
 <20201010194612.ut6md7liw4e47ky7@function>
 <alpine.DEB.2.23.453.2010101905240.36490@befuddled.reisers.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.23.453.2010101905240.36490@befuddled.reisers.ca>
Organization: I am not organized
User-Agent: NeoMutt/20170609 (1.8.3)
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

Kirk Reiser, le sam. 10 oct. 2020 19:17:42 -0400, a ecrit:
> In fact, if I just hold down the previous-lineor next-line keys it
> still reads bits of the screen as it's going up or down. I tried to
> type fast enough to not get any speech but couldn't do it. It almost
> speaks immediately when I press the key or fast enough I can't tell
> the difference.

Ok but isn't it getting interrupted by the next key press also very
fast?

Making the rate to 9 and running less on a long text, then keeping the
down key pressed, I do get gibberish speech indeed, since it basically
tries to speak the first words of each line very fast before the next
key press switches to the next line. But what else would be expected?

> the libespeak library as reported by ldd is:
> 
> libespeak.so.1 => /usr/lib/x86_64-linux-gnu/libespeak.so.1 (0x00007f6298

That is not precise enough, that has never changed since the espeak
times. The last version of espeak-ng I'm aware of is 1.50.

Samuel
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
