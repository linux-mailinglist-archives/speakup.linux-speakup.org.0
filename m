Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from grumpy.reisers.ca (grumpy.reisers.ca [206.248.184.126])
	by mail.lfdr.de (Postfix) with ESMTP id A6D7E18F825
	for <lists+speakup@lfdr.de>; Mon, 23 Mar 2020 16:05:29 +0100 (CET)
Received: by grumpy.reisers.ca (Postfix, from userid 65534)
	id 9F0354280458; Mon, 23 Mar 2020 11:05:27 -0400 (EDT)
Received: from befuddled.reisers.ca (unknown [10.10.10.10])
	by grumpy.reisers.ca (Postfix) with ESMTP id 117474280481
	for <lists+speakup@lfdr.de>; Mon, 23 Mar 2020 11:04:30 -0400 (EDT)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 0C98B1C73BE; Mon, 23 Mar 2020 11:04:25 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id B09C31C73D8;
	Mon, 23 Mar 2020 11:04:16 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 919071C436A; Mon, 23 Mar 2020 11:04:14 -0400 (EDT)
Received: from hera.aquilenet.fr (hera.aquilenet.fr [185.233.100.1])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 30E9A1C0135
 for <speakup@linux-speakup.org>; Mon, 23 Mar 2020 11:04:13 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
 by hera.aquilenet.fr (Postfix) with ESMTP id D4184E607;
 Mon, 23 Mar 2020 16:03:40 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
 by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6tRvTzKG0Usc; Mon, 23 Mar 2020 16:03:40 +0100 (CET)
Received: from function.home (lfbn-bor-1-797-11.w86-234.abo.wanadoo.fr
 [86.234.239.11])
 by hera.aquilenet.fr (Postfix) with ESMTPSA id D6F49C34F;
 Mon, 23 Mar 2020 16:03:39 +0100 (CET)
Received: from samy by function.home with local (Exim 4.93)
 (envelope-from <samuel.thibault@ens-lyon.org>)
 id 1jGOc6-0045af-K6; Mon, 23 Mar 2020 16:03:38 +0100
Date: Mon, 23 Mar 2020 16:03:38 +0100
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: Gregory Nowak <greg@gregn.net>
Subject: Re: speakup on latest kernels
Message-ID: <20200323150338.3siu2dwnvccpxbun@function>
References: <77f47396-554f-3d0a-fd9d-fc760ecb2dfe@the-brannons.com>
 <20200130053303.GA4319@gregn.net>
 <9ca2e37d-f293-9b7b-80a2-177cbccfb08e@gmail.com>
 <alpine.NEB.2.21.2001301518500.16863@panix1.panix.com>
 <20200303131128.7d4uitw7feevimoj@function>
 <20200313234801.GA28428@gregn.net>
 <20200322233440.xs6r5uxevwifa6lo@function>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200322233440.xs6r5uxevwifa6lo@function>
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

Samuel Thibault, le lun. 23 mars 2020 00:34:40 +0100, a ecrit:
> The fix is in Linus' 5.6-rc7 snapshot, so it will be in Linux 5.6.

And it got applied in the stable trees, so for the upcoming
5.5.12, 5.4.28, 4.19.113, 4.14.175, 4.9.218, 4.4.218.

Samuel
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
