Return-Path: <speakup+bounces-1537-lists+speakup=lfdr.de@linux-speakup.org>
Delivered-To: lists+speakup@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uDhSOjTTeWlCzwEAu9opvQ
	(envelope-from <speakup+bounces-1537-lists+speakup=lfdr.de@linux-speakup.org>)
	for <lists+speakup@lfdr.de>; Wed, 28 Jan 2026 10:13:24 +0100
X-Original-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 49C4B9EB01
	for <lists+speakup@lfdr.de>; Wed, 28 Jan 2026 10:13:23 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 2B3A9381928; Wed, 28 Jan 2026 04:13:21 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 157ED3817E7
	for <lists+speakup@lfdr.de>; Wed, 28 Jan 2026 04:13:21 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id C7F373818BE; Wed, 28 Jan 2026 04:13:17 -0500 (EST)
Received: from sonata.ens-lyon.org (unknown [140.77.166.138])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 9108F3817CB
	for <speakup@linux-speakup.org>; Wed, 28 Jan 2026 04:13:17 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by sonata.ens-lyon.org (Postfix) with ESMTP id 7AAEAA5EAF;
	Wed, 28 Jan 2026 10:13:14 +0100 (CET)
Received: from sonata.ens-lyon.org ([127.0.0.1])
	by localhost (sonata.ens-lyon.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OILuVBV0-F8w; Wed, 28 Jan 2026 10:13:14 +0100 (CET)
Received: from end (nat-inria-interne-52-gw-01-bso.bordeaux.inria.fr [194.199.1.52])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by sonata.ens-lyon.org (Postfix) with ESMTPSA id D6006A4A3E;
	Wed, 28 Jan 2026 10:13:13 +0100 (CET)
Received: from samy by end with local (Exim 4.99.1)
	(envelope-from <samuel.thibault@ens-lyon.org>)
	id 1vl1bt-00000003EGS-1QPu;
	Wed, 28 Jan 2026 10:13:13 +0100
Date: Wed, 28 Jan 2026 10:13:13 +0100
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: Henry Zhang <zeri@umich.edu>
Cc: speakup@linux-speakup.org, w.d.hubbs@gmail.com, chris@the-brannons.com,
	kirk@reisers.ca, gregkh@linuxfoundation.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] speakup: Document bleeps parameter values
Message-ID: <aXnTKcilQ5emIvxC@end>
Mail-Followup-To: Samuel Thibault <samuel.thibault@ens-lyon.org>,
	Henry Zhang <zeri@umich.edu>, speakup@linux-speakup.org,
	w.d.hubbs@gmail.com, chris@the-brannons.com, kirk@reisers.ca,
	gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org
References: <20260128014501.1600263-1-zeri@umich.edu>
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
In-Reply-To: <20260128014501.1600263-1-zeri@umich.edu>
Organization: I am not organized
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.82 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	AUTH_NA(1.00)[];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.18)[generic];
	RCVD_NO_TLS_LAST(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[linux-speakup.org,gmail.com,the-brannons.com,reisers.ca,linuxfoundation.org,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-1537-lists,speakup=lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	DMARC_NA(0.00)[ens-lyon.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[8];
	FROM_NEQ_ENVFROM(0.00)[samuel.thibault@ens-lyon.org,speakup@linux-speakup.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[7];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[speakup];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ens-lyon.org:email]
X-Rspamd-Queue-Id: 49C4B9EB01
X-Rspamd-Action: no action

Henry Zhang, le mar. 27 janv. 2026 20:45:01 -0500, a ecrit:
> The speakup documentation had a TODO about accepted values for the
> bleeps parameter. drivers/accessibility/speakup/main.c indicates
> that it's a bitmasked param where bit 0 controls beeping and bit 1
> controls announcements.
> 
> Signed-off-by: Henry Zhang <zeri@umich.edu>

Reviewed-by: Samuel Thibault <samuel.thibault@ens-lyon.org>

Thanks!

> ---
>  Documentation/ABI/stable/sysfs-driver-speakup | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/ABI/stable/sysfs-driver-speakup b/Documentation/ABI/stable/sysfs-driver-speakup
> index bcb6831aa114..7ead6cb79ca5 100644
> --- a/Documentation/ABI/stable/sysfs-driver-speakup
> +++ b/Documentation/ABI/stable/sysfs-driver-speakup
> @@ -16,8 +16,8 @@ What:		/sys/accessibility/speakup/bleeps
>  KernelVersion:	2.6
>  Contact:	speakup@linux-speakup.org
>  Description:	This controls whether one hears beeps through the PC speaker
> -		when using speakup's review commands.
> -		TODO: what values does it accept?
> +		when using speakup's review commands. Range: 0-3. 0 = off, 1 = beeps
> +		only, 2 = announcements only, 3 = beeps and announcements (default).
>  
>  What:		/sys/accessibility/speakup/bleep_time
>  KernelVersion:	2.6
> -- 
> 2.34.1
> 

