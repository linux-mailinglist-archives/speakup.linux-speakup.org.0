Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 624B31AD350
	for <lists+speakup@lfdr.de>; Fri, 17 Apr 2020 01:36:59 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id E49631C73CC; Thu, 16 Apr 2020 19:36:58 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 8D8981C73DD;
	Thu, 16 Apr 2020 19:36:43 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 9A1F01C57AB; Thu, 16 Apr 2020 19:36:40 -0400 (EDT)
Received: from hera.aquilenet.fr (hera.aquilenet.fr [185.233.100.1])
 by befuddled.reisers.ca (Postfix) with ESMTPS id CA9E01C2DA4
 for <speakup@linux-speakup.org>; Thu, 16 Apr 2020 19:36:39 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
 by hera.aquilenet.fr (Postfix) with ESMTP id 7AED01842
 for <speakup@linux-speakup.org>; Fri, 17 Apr 2020 01:36:38 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
 by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pCiIBA-wg5pm for <speakup@linux-speakup.org>;
 Fri, 17 Apr 2020 01:36:37 +0200 (CEST)
Received: from function (lfbn-bor-1-797-11.w86-234.abo.wanadoo.fr
 [86.234.239.11])
 by hera.aquilenet.fr (Postfix) with ESMTPSA id 9E0D313BA
 for <speakup@linux-speakup.org>; Fri, 17 Apr 2020 01:36:37 +0200 (CEST)
Received: from samy by function with local (Exim 4.93)
 (envelope-from <samuel.thibault@ens-lyon.org>) id 1jPE3g-005yAk-C7
 for speakup@linux-speakup.org; Fri, 17 Apr 2020 01:36:36 +0200
Date: Fri, 17 Apr 2020 01:36:36 +0200
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: DecTalk Settings from Within Speakup?
Message-ID: <20200416233636.qxl77jkwg7v4o3vo@function>
References: <Pine.LNX.4.64.2004141805070.1871@server2.shellworld.net>
 <20200415034841.GA5932@gregn.net>
 <Pine.LNX.4.64.2004142055040.3919@server2.shellworld.net>
 <20200415044239.GA6357@gregn.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200415044239.GA6357@gregn.net>
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

Gregory Nowak, le mar. 14 avril 2020 21:42:39 -0700, a ecrit:
> I doubt the values speakup takes for those settings go up to 250,

Speakup takes values as much as the hardware takes it. At least, as much
as is documented in the specific driver. For the pitch in the dectlk
driver, one can read in the driver

{ PITCH, .u.n = {"[:dv ap %d] ", 122, 50, 350, 0, 0, NULL } },

So it's indeed 122 by default, and values ranging from 50 to 350. I just
tried it, and I did indeed saw [:dv ap 350] get output on the serial
port, so it is definitely behaving as expected.

Samuel
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
