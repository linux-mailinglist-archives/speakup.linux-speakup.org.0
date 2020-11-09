Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (tunnel25281-pt.tunnel.tserv21.tor1.ipv6.he.net [IPv6:2001:470:1c:288::2])
	by mail.lfdr.de (Postfix) with ESMTP id AE2962AC549
	for <lists+speakup@lfdr.de>; Mon,  9 Nov 2020 20:44:55 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 44C5E380B3F; Mon,  9 Nov 2020 14:44:55 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id F0FE7380EC6;
	Mon,  9 Nov 2020 14:44:53 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 7DCE9380B26; Mon,  9 Nov 2020 14:44:53 -0500 (EST)
Received: from hera.aquilenet.fr (hera.aquilenet.fr [IPv6:2a0c:e300::1])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 44941380987
 for <speakup@linux-speakup.org>; Mon,  9 Nov 2020 14:44:53 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
 by hera.aquilenet.fr (Postfix) with ESMTP id 54DF0D42;
 Mon,  9 Nov 2020 20:44:48 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
 by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gGdzu1t1h44v; Mon,  9 Nov 2020 20:44:47 +0100 (CET)
Received: from function.youpi.perso.aquilenet.fr
 (lfbn-bor-1-56-204.w90-50.abo.wanadoo.fr [90.50.148.204])
 by hera.aquilenet.fr (Postfix) with ESMTPSA id 5C50ECE5;
 Mon,  9 Nov 2020 20:44:47 +0100 (CET)
Received: from samy by function.youpi.perso.aquilenet.fr with local (Exim 4.94)
 (envelope-from <samuel.thibault@ens-lyon.org>)
 id 1kcD5q-00FFBS-6k; Mon, 09 Nov 2020 20:44:46 +0100
Date: Mon, 9 Nov 2020 20:44:46 +0100
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: John Covici <covici@ccs.covici.com>
Subject: Re: speakup paste problem on debian
Message-ID: <20201109194446.plpv3u54cwvpcqxk@function>
References: <alpine.BSF.2.01.1401221920580.28152@freire1.furyyjbeyq.arg>
 <20140123031016.GA9556@jdc.jasonjgw.net>
 <25280.1390479703@ccs.covici.com>
 <20201108015446.wq4nfshhqlwcjgf3@function>
 <m3361kpcmb.wl-covici@ccs.covici.com>
 <20201108181014.2bcg4ryy4hzjcgng@function>
 <m35z6f2grw.wl-covici@ccs.covici.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <m35z6f2grw.wl-covici@ccs.covici.com>
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

John Covici, le lun. 09 nov. 2020 01:20:03 -0500, a ecrit:
> That depends.  I am sure it does NOT work if you use espeakup, but I
> am pretty sure (not tested for a long time) it works with speech
> dispatcher and speechd-up.

Ok. I added support for espeakup in
https://github.com/williamh/espeakup/pull/22

and uploaded it to Debian as version 1:0.80-19.

Samuel
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
