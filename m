Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 0C03F1D2246
	for <lists+speakup@lfdr.de>; Thu, 14 May 2020 00:45:06 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 335A41C07F0; Wed, 13 May 2020 18:45:05 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id C18121C0831;
	Wed, 13 May 2020 18:44:24 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id B9ACD1C07EF; Wed, 13 May 2020 18:44:22 -0400 (EDT)
Received: from hera.aquilenet.fr (hera.aquilenet.fr [185.233.100.1])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 983001C0129
 for <speakup@linux-speakup.org>; Wed, 13 May 2020 18:44:20 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
 by hera.aquilenet.fr (Postfix) with ESMTP id 26A512408
 for <speakup@linux-speakup.org>; Thu, 14 May 2020 00:44:14 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
 by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id K5ioVhuiTPtH for <speakup@linux-speakup.org>;
 Thu, 14 May 2020 00:44:13 +0200 (CEST)
Received: from function (lfbn-bor-1-797-11.w86-234.abo.wanadoo.fr
 [86.234.239.11])
 by hera.aquilenet.fr (Postfix) with ESMTPSA id EFA4E2339
 for <speakup@linux-speakup.org>; Thu, 14 May 2020 00:44:12 +0200 (CEST)
Received: from samy by function with local (Exim 4.93)
 (envelope-from <samuel.thibault@ens-lyon.org>) id 1jZ06l-007EsL-HY
 for speakup@linux-speakup.org; Thu, 14 May 2020 00:44:11 +0200
Date: Thu, 14 May 2020 00:44:11 +0200
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: speakup crashed in Vmware
Message-ID: <20200513224411.mlf42v6m7r6vzqoh@function>
References: <DM6PR14MB3647DD1F4448E4D621813D67DABF0@DM6PR14MB3647.namprd14.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DM6PR14MB3647DD1F4448E4D621813D67DABF0@DM6PR14MB3647.namprd14.prod.outlook.com>
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

Criss, le mer. 13 mai 2020 16:00:58 -0400, a ecrit:
> When I tryed install debian with speakup in VMware virtual machine, I can't
> continue because speakup crashing, (with arch in vmware crashed too). Is
> this a speakup bug?

Possibly it may be a sound card driver issue that makes espeakup abort.

> How can I restart speakup in debian installation?.

You can press alt-f2 to get on VT2, press enter to get a shell, and then
type espeakup and press enter.

Samuel
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
