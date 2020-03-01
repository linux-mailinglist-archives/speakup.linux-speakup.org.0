Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from grumpy.reisers.ca (grumpy.reisers.ca [206.248.184.126])
	by mail.lfdr.de (Postfix) with ESMTP id DB39E183EB4
	for <lists+speakup@lfdr.de>; Fri, 13 Mar 2020 02:39:22 +0100 (CET)
Received: by grumpy.reisers.ca (Postfix, from userid 65534)
	id 70C9A42804CE; Thu, 12 Mar 2020 21:39:22 -0400 (EDT)
Received: from befuddled.reisers.ca (unknown [10.10.10.10])
	by grumpy.reisers.ca (Postfix) with ESMTP id 6FDD64280478
	for <lists+speakup@lfdr.de>; Thu, 12 Mar 2020 21:39:21 -0400 (EDT)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 387921C7267; Thu, 12 Mar 2020 21:39:20 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 778961C72CC;
	Thu, 12 Mar 2020 21:30:34 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 6953D1C2A14; Sun,  1 Mar 2020 17:01:27 -0500 (EST)
Received: from hera.aquilenet.fr (hera.aquilenet.fr [185.233.100.1])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 595ED1C0B08
 for <speakup@linux-speakup.org>; Sun,  1 Mar 2020 17:01:26 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
 by hera.aquilenet.fr (Postfix) with ESMTP id 317503854;
 Sun,  1 Mar 2020 23:00:55 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
 by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nQqLJIWo6d8I; Sun,  1 Mar 2020 23:00:54 +0100 (CET)
Received: from function (lfbn-bor-1-797-11.w86-234.abo.wanadoo.fr
 [86.234.239.11])
 by hera.aquilenet.fr (Postfix) with ESMTPSA id 74BBC383B;
 Sun,  1 Mar 2020 23:00:54 +0100 (CET)
Received: from samy by function with local (Exim 4.93)
 (envelope-from <samuel.thibault@ens-lyon.org>)
 id 1j8Wdp-005Ave-PK; Sun, 01 Mar 2020 23:00:53 +0100
Date: Sun, 1 Mar 2020 23:00:53 +0100
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: Alexandr Epaneshnikov <aarnaarn2@gmail.com>
Subject: Re: speakup: kernel panics on 5.2+
Message-ID: <20200301220053.ld6j7brvzo2rnro5@function>
References: <a817aeb9-b980-838e-70a8-114dfd2b0387@gmail.com>
 <20200218204131.onnmxo46navmlq24@function>
 <3a989e1a-86ca-916f-63a1-42da9e203772@gmail.com>
 <20200219004148.x4y7aevnfvr5czuv@function>
 <8ff2f707-9203-90aa-e6c0-de7da334e93f@gmail.com>
 <20200301153614.sspgpav5pt33yl5p@function>
 <50d71000-abc8-f774-d44a-e47b79393528@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <50d71000-abc8-f774-d44a-e47b79393528@gmail.com>
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
Cc: speakup@linux-speakup.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

Alexandr Epaneshnikov, le dim. 01 mars 2020 21:33:35 +0300, a ecrit:
> yep. i just delete it today. sorry about that.
> 
> https://gist.github.com/alex19EP/b5f85a17b4aff4eef7bc73ddc3e76fe3

Ah, I guess you compiled speakup as a module. I'd need the speakup.ko
file then.

Samuel
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
