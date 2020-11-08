Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (tunnel25281-pt.tunnel.tserv21.tor1.ipv6.he.net [IPv6:2001:470:1c:288::2])
	by mail.lfdr.de (Postfix) with ESMTP id AD2E52AACBC
	for <lists+speakup@lfdr.de>; Sun,  8 Nov 2020 19:10:21 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 3ECB1380EDC; Sun,  8 Nov 2020 13:10:21 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 845EB380EC3;
	Sun,  8 Nov 2020 13:10:19 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 096EE380BB5; Sun,  8 Nov 2020 13:10:19 -0500 (EST)
Received: from hera.aquilenet.fr (hera.aquilenet.fr [IPv6:2a0c:e300::1])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 55F4D380993
 for <speakup@linux-speakup.org>; Sun,  8 Nov 2020 13:10:18 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
 by hera.aquilenet.fr (Postfix) with ESMTP id 6611CB88;
 Sun,  8 Nov 2020 19:10:16 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
 by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nJn_3uthjSfk; Sun,  8 Nov 2020 19:10:15 +0100 (CET)
Received: from function.youpi.perso.aquilenet.fr
 (lfbn-bor-1-56-204.w90-50.abo.wanadoo.fr [90.50.148.204])
 by hera.aquilenet.fr (Postfix) with ESMTPSA id C2A3234D;
 Sun,  8 Nov 2020 19:10:15 +0100 (CET)
Received: from samy by function.youpi.perso.aquilenet.fr with local (Exim 4.94)
 (envelope-from <samuel.thibault@ens-lyon.org>)
 id 1kbp8o-00CmlO-NS; Sun, 08 Nov 2020 19:10:14 +0100
Date: Sun, 8 Nov 2020 19:10:14 +0100
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: John Covici <covici@ccs.covici.com>
Subject: Re: speakup paste problem on debian
Message-ID: <20201108181014.2bcg4ryy4hzjcgng@function>
References: <alpine.BSF.2.01.1401221920580.28152@freire1.furyyjbeyq.arg>
 <20140123031016.GA9556@jdc.jasonjgw.net>
 <25280.1390479703@ccs.covici.com>
 <20201108015446.wq4nfshhqlwcjgf3@function>
 <m3361kpcmb.wl-covici@ccs.covici.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <m3361kpcmb.wl-covici@ccs.covici.com>
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
Cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

John Covici, le dim. 08 nov. 2020 01:49:00 -0500, a ecrit:
> But speakup-r reads a document, as long as it has a
> cursor, by sending down arrows and keeping track of what speech was
> actually sent by means of the synthesizers index marks.  Then when you
> stop the reading, the cursor is where you stopped.

Ah, that's read_all_doc then. Ok, I'll add it to the spkguide so at
least people know about it.

Is that working with software speech?

Samuel
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
