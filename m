Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from grumpy.reisers.ca (grumpy.reisers.ca [206.248.184.126])
	by mail.lfdr.de (Postfix) with ESMTP id AB2F7184188
	for <lists+speakup@lfdr.de>; Fri, 13 Mar 2020 08:31:19 +0100 (CET)
Received: by grumpy.reisers.ca (Postfix, from userid 65534)
	id E4BEF42804C1; Fri, 13 Mar 2020 03:31:17 -0400 (EDT)
Received: from befuddled.reisers.ca (unknown [10.10.10.10])
	by grumpy.reisers.ca (Postfix) with ESMTP id D323F4280492
	for <lists+speakup@lfdr.de>; Fri, 13 Mar 2020 03:31:16 -0400 (EDT)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 8945F1C57F7; Fri, 13 Mar 2020 03:31:16 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 337341C2DE8;
	Fri, 13 Mar 2020 03:30:51 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 884211C2DAB; Fri, 13 Mar 2020 03:30:49 -0400 (EDT)
Received: from mail2-relais-roc.national.inria.fr
 (mail2-relais-roc.national.inria.fr [192.134.164.83])
 by befuddled.reisers.ca (Postfix) with ESMTPS id DAD1E1C00E7
 for <speakup@linux-speakup.org>; Fri, 13 Mar 2020 03:30:47 -0400 (EDT)
X-IronPort-AV: E=Sophos;i="5.70,547,1574118000"; d="scan'208";a="440134820"
Received: from unknown (HELO function) ([193.50.111.81])
 by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Mar 2020 08:30:45 +0100
Received: from samy by function with local (Exim 4.93)
 (envelope-from <samuel.thibault@ens-lyon.org>)
 id 1jCemL-00010L-6i; Fri, 13 Mar 2020 08:30:45 +0100
Date: Fri, 13 Mar 2020 08:30:45 +0100
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: Jookia <contact@jookia.org>
Subject: Re: New deadlock?
Message-ID: <20200313073045.gqkrmmh2mtcsacym@function>
References: <20200313022237.GF1639@novena-choice-citizen>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200313022237.GF1639@novena-choice-citizen>
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

Hello,

Jookia, le ven. 13 mars 2020 13:22:37 +1100, a ecrit:
> I was debugging the big deadlock that's fixed in staging-next when I hit
> this backtrace. Anybody have any ideas on what's going on here?

>  Possible unsafe locking scenario:\x0a
>        CPU0
>        ----
>   lock(console_lock);
>   <Interrupt>
>     lock(console_lock);

Which is possible indeed.

>  lock_acquire+0x13f/0x370
>  ? speakup_clear_selection+0xe/0x20 [speakup]
>  console_lock+0x33/0x50
>  ? speakup_clear_selection+0xe/0x20 [speakup]
>  speakup_clear_selection+0xe/0x20 [speakup]
>  speakup_cut+0x19e/0x4b0 [speakup]
[...]
>  i8042_interrupt+0x232/0x510 [i8042]

speakup_cut, called from the keyboard interrupt handler, calls
speakup_clear_selection which takes a lock. That can't be safe since
interrupt handlers can't sleep. I guess the speakup_clear_selection call
in speakup_cut should be moved into speakup's set_selection mechanism,
i.e. inside __speakup_set_selection. And actually just get rid of
speakup_clear_selection and simply put clear_selection just before
set_selection_kernel inside __speakup_set_selection.

Samuel
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
