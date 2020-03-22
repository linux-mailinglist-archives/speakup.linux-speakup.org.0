Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from grumpy.reisers.ca (grumpy.reisers.ca [206.248.184.126])
	by mail.lfdr.de (Postfix) with ESMTP id 40BA218ED4F
	for <lists+speakup@lfdr.de>; Mon, 23 Mar 2020 00:36:55 +0100 (CET)
Received: by grumpy.reisers.ca (Postfix, from userid 65534)
	id 59C554280478; Sun, 22 Mar 2020 19:36:54 -0400 (EDT)
Received: from befuddled.reisers.ca (unknown [10.10.10.10])
	by grumpy.reisers.ca (Postfix) with ESMTP id 0238942804EF
	for <lists+speakup@lfdr.de>; Sun, 22 Mar 2020 19:35:23 -0400 (EDT)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id C5D271C2CDF; Sun, 22 Mar 2020 19:35:23 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id E222D1C73C2;
	Sun, 22 Mar 2020 19:34:46 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 9F31A1C2CDD; Sun, 22 Mar 2020 19:34:44 -0400 (EDT)
Received: from hera.aquilenet.fr (hera.aquilenet.fr [185.233.100.1])
 by befuddled.reisers.ca (Postfix) with ESMTPS id CBD5B1C0148
 for <speakup@linux-speakup.org>; Sun, 22 Mar 2020 19:34:43 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
 by hera.aquilenet.fr (Postfix) with ESMTP id 8DB01E585;
 Mon, 23 Mar 2020 00:34:42 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
 by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Hle_g9ytHy3Y; Mon, 23 Mar 2020 00:34:41 +0100 (CET)
Received: from function (lfbn-bor-1-797-11.w86-234.abo.wanadoo.fr
 [86.234.239.11])
 by hera.aquilenet.fr (Postfix) with ESMTPSA id 8EACEE57F;
 Mon, 23 Mar 2020 00:34:41 +0100 (CET)
Received: from samy by function with local (Exim 4.93)
 (envelope-from <samuel.thibault@ens-lyon.org>)
 id 1jGA76-002R6q-DJ; Mon, 23 Mar 2020 00:34:40 +0100
Date: Mon, 23 Mar 2020 00:34:40 +0100
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: Gregory Nowak <greg@gregn.net>
Subject: Re: speakup on latest kernels
Message-ID: <20200322233440.xs6r5uxevwifa6lo@function>
References: <77f47396-554f-3d0a-fd9d-fc760ecb2dfe@the-brannons.com>
 <20200130053303.GA4319@gregn.net>
 <9ca2e37d-f293-9b7b-80a2-177cbccfb08e@gmail.com>
 <alpine.NEB.2.21.2001301518500.16863@panix1.panix.com>
 <20200303131128.7d4uitw7feevimoj@function>
 <20200313234801.GA28428@gregn.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200313234801.GA28428@gregn.net>
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
Cc: Janina Sajka <janina@rednote.net>,
 "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

Hello,

The fix is in Linus' 5.6-rc7 snapshot, so it will be in Linux 5.6.

Samuel
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
