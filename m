Return-Path: <speakup+bounces-1524-lists+speakup=lfdr.de@linux-speakup.org>
Delivered-To: lists+speakup@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aPNVId3jd2k9mQEAu9opvQ
	(envelope-from <speakup+bounces-1524-lists+speakup=lfdr.de@linux-speakup.org>)
	for <lists+speakup@lfdr.de>; Mon, 26 Jan 2026 22:59:57 +0100
X-Original-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 0D6E18DC30
	for <lists+speakup@lfdr.de>; Mon, 26 Jan 2026 22:59:56 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id AA10D38210B; Mon, 26 Jan 2026 16:50:05 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 964B538195D
	for <lists+speakup@lfdr.de>; Mon, 26 Jan 2026 16:50:05 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 7178438181F; Mon, 26 Jan 2026 16:50:02 -0500 (EST)
Received: from sonata.ens-lyon.org (unknown [140.77.166.138])
	by befuddled.reisers.ca (Postfix) with ESMTPS id AE783381817
	for <speakup@linux-speakup.org>; Mon, 26 Jan 2026 16:50:01 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by sonata.ens-lyon.org (Postfix) with ESMTP id 3E71AA73FA;
	Mon, 26 Jan 2026 22:49:59 +0100 (CET)
Received: from sonata.ens-lyon.org ([127.0.0.1])
	by localhost (sonata.ens-lyon.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SphISBZoXXy9; Mon, 26 Jan 2026 22:49:59 +0100 (CET)
Received: from end (aamiens-653-1-40-48.w83-192.abo.wanadoo.fr [83.192.199.48])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by sonata.ens-lyon.org (Postfix) with ESMTPSA id B5831A73E6;
	Mon, 26 Jan 2026 22:49:58 +0100 (CET)
Received: from samy by end with local (Exim 4.99.1)
	(envelope-from <samuel.thibault@ens-lyon.org>)
	id 1vkUT7-0000000BnTE-3LJJ;
	Mon, 26 Jan 2026 22:49:57 +0100
Date: Mon, 26 Jan 2026 22:49:57 +0100
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: Henry Zhang <henryzhangjcle@gmail.com>
Cc: speakup@linux-speakup.org, w.d.hubbs@gmail.com, chris@the-brannons.com,
	kirk@reisers.ca, gregkh@linuxfoundation.org,
	linux-kernel@vger.kernel.org, Henry Zhang <zeri@umich.edu>
Subject: Re: [PATCH] speakup: Clarify bleep_time unit is milliseconds
Message-ID: <aXfhhSUZyKUM-W58@end>
Mail-Followup-To: Samuel Thibault <samuel.thibault@ens-lyon.org>,
	Henry Zhang <henryzhangjcle@gmail.com>, speakup@linux-speakup.org,
	w.d.hubbs@gmail.com, chris@the-brannons.com, kirk@reisers.ca,
	gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
	Henry Zhang <zeri@umich.edu>
References: <20260126201707.1297665-1-zeri@umich.edu>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux." <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260126201707.1297665-1-zeri@umich.edu>
Organization: I am not organized
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.82 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	AUTH_NA(1.00)[];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.18)[generic];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_NO_TLS_LAST(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-1524-lists,speakup=lfdr.de];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[linux-speakup.org,gmail.com,the-brannons.com,reisers.ca,linuxfoundation.org,vger.kernel.org,umich.edu];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[ens-lyon.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	R_SPF_NA(0.00)[no SPF record];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[8];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[samuel.thibault@ens-lyon.org,speakup@linux-speakup.org];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[speakup];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ens-lyon.org:email,umich.edu:email,linux-speakup.org:email,befuddled.reisers.ca:helo,befuddled.reisers.ca:rdns]
X-Rspamd-Queue-Id: 0D6E18DC30
X-Rspamd-Action: no action

Henry Zhang, le lun. 26 janv. 2026 15:17:07 -0500, a ecrit:
> The documentation had a TODO questioning whether the unit was in
> jiffies. The implementation in drivers/accessibility/speakup/main.c
> passes spk_bleep_time to msecs_to_jiffies(), confirming the unit is
> in milliseconds.
> 
> Signed-off-by: Henry Zhang <zeri@umich.edu>

Reviewed-by: Samuel Thibault <samuel.thibault@ens-lyon.org>

Thanks!

> ---
>  Documentation/ABI/stable/sysfs-driver-speakup | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/Documentation/ABI/stable/sysfs-driver-speakup b/Documentation/ABI/stable/sysfs-driver-speakup
> index bcb6831aa114..8b508b4a7a00 100644
> --- a/Documentation/ABI/stable/sysfs-driver-speakup
> +++ b/Documentation/ABI/stable/sysfs-driver-speakup
> @@ -23,8 +23,7 @@ What:		/sys/accessibility/speakup/bleep_time
>  KernelVersion:	2.6
>  Contact:	speakup@linux-speakup.org
>  Description:	This controls the duration of the PC speaker beeps speakup
> -		produces.
> -		TODO: What are the units? Jiffies?
> +		produces, in milliseconds.
>  
>  What:		/sys/accessibility/speakup/cursor_time
>  KernelVersion:	2.6
> -- 
> 2.34.1
> 

