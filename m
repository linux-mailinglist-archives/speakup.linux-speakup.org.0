Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 49BE61AD327
	for <lists+speakup@lfdr.de>; Fri, 17 Apr 2020 01:29:42 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 94A491C57FD; Thu, 16 Apr 2020 19:29:41 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id F13641C57AB;
	Thu, 16 Apr 2020 19:28:32 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id ABFE61C57AB; Thu, 16 Apr 2020 19:28:21 -0400 (EDT)
Received: from hera.aquilenet.fr (hera.aquilenet.fr [IPv6:2a0c:e300::1])
 by befuddled.reisers.ca (Postfix) with ESMTPS id AAF8F1C2DA4
 for <speakup@linux-speakup.org>; Thu, 16 Apr 2020 19:28:19 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
 by hera.aquilenet.fr (Postfix) with ESMTP id 1A51CBC49
 for <speakup@linux-speakup.org>; Fri, 17 Apr 2020 01:28:16 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
 by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ID5nXc1eqjYc for <speakup@linux-speakup.org>;
 Fri, 17 Apr 2020 01:28:14 +0200 (CEST)
Received: from function (lfbn-bor-1-797-11.w86-234.abo.wanadoo.fr
 [86.234.239.11])
 by hera.aquilenet.fr (Postfix) with ESMTPSA id C43FCA68
 for <speakup@linux-speakup.org>; Fri, 17 Apr 2020 01:28:14 +0200 (CEST)
Received: from samy by function with local (Exim 4.93)
 (envelope-from <samuel.thibault@ens-lyon.org>) id 1jPDvZ-005y7V-QI
 for speakup@linux-speakup.org; Fri, 17 Apr 2020 01:28:13 +0200
Date: Fri, 17 Apr 2020 01:28:13 +0200
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: DecTalk Settings from Within Speakup?
Message-ID: <20200416232813.t2zszb42qd2icfks@function>
References: <Pine.LNX.4.64.2004141805070.1871@server2.shellworld.net>
 <20200415034841.GA5932@gregn.net>
 <Pine.LNX.4.64.2004142055040.3919@server2.shellworld.net>
 <20200415044239.GA6357@gregn.net>
 <Pine.LNX.4.64.2004150141390.8315@server2.shellworld.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Pine.LNX.4.64.2004150141390.8315@server2.shellworld.net>
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

Hello,

Chime Hart, le mer. 15 avril 2020 01:57:52 -0700, a ecrit:
> So that command
> echo "[:dv pr 250]" >> /sys/accessibility/speakup/synth_direct
> sets a parameter in the DecTalk which provides more inflection.

Well, yes, but that'll work only until speakup wants to change the pitch
for whatever screen-reader-related reason such as expressing caps etc.

It seems to me that there is a misunderstanding here: this is really
*not* the way you are supposed to configure your hardware synthesis,
that's deemed to be overwritten whenever the core wants to change the
pitch etc.

The *proper* way to configure pitch, volume etc. is to 

echo 250 > /sys/accessibility/speakup/dectlk/pitch

So that it's *speakup* which knows the desired parameter and tell the
hardware as well, and not only let the hardware know about it. Same for
volume etc.

Of course such live configuration gets lost at reboot. That's why there
is speakupconf, which allows to save your preferred parameters, and you
can get it called at boot to restore your parameters.


I thought this was documented and well-known, but apparently not. Can
somebody work on getting this properly known, to make sure people don't
fall in that trap?

Samuel
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
