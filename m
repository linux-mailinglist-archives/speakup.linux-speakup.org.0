Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id D5F991AD38D
	for <lists+speakup@lfdr.de>; Fri, 17 Apr 2020 02:17:02 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 6CEF51C578A; Thu, 16 Apr 2020 20:17:02 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id BCE401C73DC;
	Thu, 16 Apr 2020 20:14:50 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 4DD591C57AB; Thu, 16 Apr 2020 20:14:48 -0400 (EDT)
Received: from hera.aquilenet.fr (hera.aquilenet.fr [IPv6:2a0c:e300::1])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 241F41C2DA4
 for <speakup@linux-speakup.org>; Thu, 16 Apr 2020 20:14:47 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
 by hera.aquilenet.fr (Postfix) with ESMTP id 25315BCCF
 for <speakup@linux-speakup.org>; Fri, 17 Apr 2020 02:14:46 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
 by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QgWI8vbGRCMn for <speakup@linux-speakup.org>;
 Fri, 17 Apr 2020 02:14:45 +0200 (CEST)
Received: from function (lfbn-bor-1-797-11.w86-234.abo.wanadoo.fr
 [86.234.239.11])
 by hera.aquilenet.fr (Postfix) with ESMTPSA id 2CA48BCBE
 for <speakup@linux-speakup.org>; Fri, 17 Apr 2020 02:14:45 +0200 (CEST)
Received: from samy by function with local (Exim 4.93)
 (envelope-from <samuel.thibault@ens-lyon.org>) id 1jPEea-0067Io-4O
 for speakup@linux-speakup.org; Fri, 17 Apr 2020 02:14:44 +0200
Date: Fri, 17 Apr 2020 02:14:44 +0200
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: DecTalk Settings from Within Speakup?
Message-ID: <20200417001444.u7snlwcqq5nou7gh@function>
References: <Pine.LNX.4.64.2004141805070.1871@server2.shellworld.net>
 <20200415034841.GA5932@gregn.net>
 <Pine.LNX.4.64.2004142055040.3919@server2.shellworld.net>
 <20200415044239.GA6357@gregn.net>
 <20200416233636.qxl77jkwg7v4o3vo@function>
 <Pine.LNX.4.64.2004161648560.2885@server2.shellworld.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Pine.LNX.4.64.2004161648560.2885@server2.shellworld.net>
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

Chime Hart, le jeu. 16 avril 2020 17:02:45 -0700, a ecrit:
> I tried
> sudo echo 250 > /sys/accessibility/speakup/dectlk/pitch=113

You need to know something: '>' is interpreted by your shell *before*
sudo takes effet. So that is indeed expected to fail, since you are
actually trying to open the file before switching to root. You have to
switch to root with sudo *before* using '>'

> In addition, since you seemingly have a DecTalk,

I don't, but I can look at what getting emitted to what would be a
dectalk.

> Unfortunately no1 has figured out a way to track or log what
> Speakup or this U S B DecTalk are receiving when these drops occur.

Very probably simply exactly the commands that tell the dectalk to reset
the default values. Simply because it's speakup which happens to set
them when it needs to change them temporarily to render caps etc.

Samuel
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
