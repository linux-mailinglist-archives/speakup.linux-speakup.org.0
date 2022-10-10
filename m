Return-Path: <speakup+bounces-743-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id DDE825FA294
	for <lists+speakup@lfdr.de>; Mon, 10 Oct 2022 19:17:19 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id DFA23383FFC; Mon, 10 Oct 2022 13:17:16 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id CA3F4383F7A
	for <lists+speakup@lfdr.de>; Mon, 10 Oct 2022 13:17:16 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id D06AA383EFD; Mon, 10 Oct 2022 13:17:11 -0400 (EDT)
Received: from sonata.ens-lyon.org (sonata.ens-lyon.org [140.77.166.138])
	by befuddled.reisers.ca (Postfix) with ESMTPS id A928038079C
	for <speakup@linux-speakup.org>; Mon, 10 Oct 2022 13:17:11 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by sonata.ens-lyon.org (Postfix) with ESMTP id C90BB2015F;
	Mon, 10 Oct 2022 19:17:07 +0200 (CEST)
Received: from sonata.ens-lyon.org ([127.0.0.1])
	by localhost (sonata.ens-lyon.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JDNmcF0NPE6w; Mon, 10 Oct 2022 19:17:07 +0200 (CEST)
Received: from begin.home (lfbn-bor-1-376-208.w109-215.abo.wanadoo.fr [109.215.91.208])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by sonata.ens-lyon.org (Postfix) with ESMTPSA id 61F9A2011C;
	Mon, 10 Oct 2022 19:17:07 +0200 (CEST)
Received: from samy by begin.home with local (Exim 4.96)
	(envelope-from <samuel.thibault@ens-lyon.org>)
	id 1ohwOo-006OrU-36;
	Mon, 10 Oct 2022 19:17:06 +0200
Date: Mon, 10 Oct 2022 19:17:06 +0200
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: Mushahid Hussain <mushi.shar@gmail.com>, speakup@linux-speakup.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] Speakup: fix a segfault caused by switching consoles
Message-ID: <20221010171706.7omuxueiuyqugjha@begin>
Mail-Followup-To: Samuel Thibault <samuel.thibault@ens-lyon.org>,
	Greg KH <gregkh@linuxfoundation.org>,
	Mushahid Hussain <mushi.shar@gmail.com>, speakup@linux-speakup.org,
	linux-kernel@vger.kernel.org
References: <20221010165720.397042-1-mushi.shar@gmail.com>
 <Y0RQNt80BnQjozZC@kroah.com>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Y0RQNt80BnQjozZC@kroah.com>
Organization: I am not organized
User-Agent: NeoMutt/20170609 (1.8.3)
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hello,

Greg KH, le lun. 10 oct. 2022 19:02:46 +0200, a ecrit:
> On Mon, Oct 10, 2022 at 09:57:20PM +0500, Mushahid Hussain wrote:
> > This patch fixes a segfault by adding a null check on synth in
> > speakup_con_update(). The segfault can be reproduced as follows:
> > 
> > 	- Login into a text console
> > 
> > 	- Load speakup and speakup_soft modules
> > 
> > 	- Remove speakup_soft
> > 
> > 	- Switch to a graphics console
> > 
> > This is caused by lack of a null check on `synth` in
> > speakup_con_update().
> > 
> > Here's the sequence that causes the segfault:
> > 
> > 	- When we remove the speakup_soft, synth_release() sets the synth
> > 	  to null.
> > 
> > 	- After that, when we change the virtual console to graphics
> > 	  console, vt_notifier_call() is fired, which then calls
> > 	  speakup_con_update().
> > 
> > 	- Inside speakup_con_update() there's no null check on synth,
> > 	  so it calls synth_printf().
> > 
> > 	- Inside synth_printf(), synth_buffer_add() and synth_start(),
> > 	  both access synth, when it is null and causing a segfault.
> > 
> > Therefore adding a null check on synth solves the issue.
> > 
> > Signed-off-by: Mushahid Hussain <mushi.shar@gmail.com>
> > Signed-off-by: Samuel Thibault <samuel.thibault@ens-lyon.org>
> > ---
> >  drivers/accessibility/speakup/main.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> What commit id does this fix?

It is there since 2610df41489f548e235171b86895d4b49e6acb1f
("staging: speakup: Add pause command used on switching to graphical
mode")

> Should it go to stable kernels?

Yes, please.

Mushahid, you can see in Documentation/process/submitting-patches.rst
how to encode this in the patch submission.

Samuel

