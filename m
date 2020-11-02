Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 0ABB12A2688
	for <lists+speakup@lfdr.de>; Mon,  2 Nov 2020 10:02:52 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 9C1B7380F39; Mon,  2 Nov 2020 04:02:51 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id D750B380F2D;
	Mon,  2 Nov 2020 04:02:50 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 71518380F23; Mon,  2 Nov 2020 04:02:49 -0500 (EST)
Received: from hera.aquilenet.fr (hera.aquilenet.fr [185.233.100.1])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 4EF6B380F14
 for <speakup@linux-speakup.org>; Mon,  2 Nov 2020 04:02:49 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
 by hera.aquilenet.fr (Postfix) with ESMTP id 3D449AE1
 for <speakup@linux-speakup.org>; Mon,  2 Nov 2020 10:02:48 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
 by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QpRLZgSwH8Xe for <speakup@linux-speakup.org>;
 Mon,  2 Nov 2020 10:02:47 +0100 (CET)
Received: from function (lfbn-bor-1-56-204.w90-50.abo.wanadoo.fr
 [90.50.148.204])
 by hera.aquilenet.fr (Postfix) with ESMTPSA id 77B13A6A
 for <speakup@linux-speakup.org>; Mon,  2 Nov 2020 10:02:47 +0100 (CET)
Received: from samy by function with local (Exim 4.94)
 (envelope-from <samuel.thibault@ens-lyon.org>) id 1kZVjg-00BXSe-N4
 for speakup@linux-speakup.org; Mon, 02 Nov 2020 10:02:44 +0100
Date: Mon, 2 Nov 2020 10:02:44 +0100
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: speakup crashes with kernel 5.4.69
Message-ID: <20201102090244.dumjnrfblsluegx7@function>
References: <m3o8l6sge6.wl-covici@ccs.covici.com>
 <20201101205909.zz2ihrr6zmucrfbq@function>
 <5123cc09-8314-7bb4-82dd-5511b53b3703@slint.fr>
 <20201101214000.u6al47enhggqputs@function>
 <20201102071203.GC8027@gregn.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201102071203.GC8027@gregn.net>
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

Gregory Nowak, le lun. 02 nov. 2020 00:12:03 -0700, a ecrit:
> I'm using a ltlk on a machine running 5.4.70, and on another running
> 5.8.14 sometimes, and haven't run into this issue. Does this effect
> only the 5.4.x series of kernels, or later ones through 5.9.x?

It'd basically affect any kernel that has the ttyio support.

> Is there something I can do to force the problem to happen, so as to
> test the patch properly?

This would happen on read-all-doc command. This, again, doesn't seem to
be documented in spkguide.txt.

Now that I re-read this part, it seems my patch would be bogus. Let me
rework it.

Samuel
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
