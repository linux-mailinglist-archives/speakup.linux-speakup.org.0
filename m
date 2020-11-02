Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id AAE472A33F8
	for <lists+speakup@lfdr.de>; Mon,  2 Nov 2020 20:23:27 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 45D2C380F4C; Mon,  2 Nov 2020 14:23:27 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 5B35A380F38;
	Mon,  2 Nov 2020 14:23:25 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 336CF380F25; Mon,  2 Nov 2020 14:23:24 -0500 (EST)
Received: from hera.aquilenet.fr (hera.aquilenet.fr [185.233.100.1])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 11C63380F17
 for <speakup@linux-speakup.org>; Mon,  2 Nov 2020 14:23:24 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
 by hera.aquilenet.fr (Postfix) with ESMTP id DAA46B65;
 Mon,  2 Nov 2020 20:23:21 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
 by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1cS8ceTkRkJ7; Mon,  2 Nov 2020 20:23:21 +0100 (CET)
Received: from function (lfbn-bor-1-56-204.w90-50.abo.wanadoo.fr
 [90.50.148.204])
 by hera.aquilenet.fr (Postfix) with ESMTPSA id 2B588B64;
 Mon,  2 Nov 2020 20:23:21 +0100 (CET)
Received: from samy by function with local (Exim 4.94)
 (envelope-from <samuel.thibault@ens-lyon.org>)
 id 1kZfQF-00EG65-Ne; Mon, 02 Nov 2020 20:23:19 +0100
Date: Mon, 2 Nov 2020 20:23:19 +0100
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: John Covici <covici@ccs.covici.com>
Subject: Re: speakup crashes with kernel 5.4.69
Message-ID: <20201102192319.ygrr5zri52fvffpm@function>
References: <m3o8l6sge6.wl-covici@ccs.covici.com>
 <20201101205909.zz2ihrr6zmucrfbq@function>
 <5123cc09-8314-7bb4-82dd-5511b53b3703@slint.fr>
 <20201101214000.u6al47enhggqputs@function>
 <20201102071203.GC8027@gregn.net>
 <m3v9eop2ks.wl-covici@ccs.covici.com>
 <20201102091016.kasjjmcc3yjpvu4d@function>
 <m3tuu7po9n.wl-covici@ccs.covici.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <m3tuu7po9n.wl-covici@ccs.covici.com>
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

John Covici, le lun. 02 nov. 2020 14:11:32 -0500, a ecrit:
> not sure there is a way to undo the patch and put in a new one very
> easily.

The -R option is there for this:

patch -p1 -R < ~/patch

Samuel
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
