Return-Path: <speakup+bounces-1545-lists+speakup=lfdr.de@linux-speakup.org>
Delivered-To: lists+speakup@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yCtQIPSGgGm19wIAu9opvQ
	(envelope-from <speakup+bounces-1545-lists+speakup=lfdr.de@linux-speakup.org>)
	for <lists+speakup@lfdr.de>; Mon, 02 Feb 2026 12:13:56 +0100
X-Original-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 2CEDDCB877
	for <lists+speakup@lfdr.de>; Mon, 02 Feb 2026 12:13:55 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 491443820E4; Mon, 02 Feb 2026 06:13:50 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 3557038184B
	for <lists+speakup@lfdr.de>; Mon, 02 Feb 2026 06:13:50 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 14E82381879; Mon, 02 Feb 2026 06:13:47 -0500 (EST)
Received: from sonata.ens-lyon.org (unknown [140.77.166.138])
	by befuddled.reisers.ca (Postfix) with ESMTPS id E228A3817CA
	for <speakup@linux-speakup.org>; Mon, 02 Feb 2026 06:13:46 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by sonata.ens-lyon.org (Postfix) with ESMTP id 61B2EA19D6;
	Mon,  2 Feb 2026 12:13:43 +0100 (CET)
Received: from sonata.ens-lyon.org ([127.0.0.1])
	by localhost (sonata.ens-lyon.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id i5muLSCpBWUQ; Mon,  2 Feb 2026 12:13:43 +0100 (CET)
Received: from end (unknown [212.133.41.95])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by sonata.ens-lyon.org (Postfix) with ESMTPSA id E68A7A03DB;
	Mon,  2 Feb 2026 12:13:42 +0100 (CET)
Received: from samy by end with local (Exim 4.99.1)
	(envelope-from <samuel.thibault@ens-lyon.org>)
	id 1vmrsD-00000003JJM-3jb9;
	Mon, 02 Feb 2026 12:13:41 +0100
Date: Mon, 2 Feb 2026 12:13:41 +0100
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: Kirill Petrov <kosyanip@gmail.com>
Cc: speakup@linux-speakup.org, w.d.hubbs@gmail.com, chris@the-brannons.com,
	kirk@reisers.ca, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] Documentation/ABI: speakup: document bleeps and
 bleep_time
Message-ID: <aYCG5Ur8QGpXCGy2@end>
Mail-Followup-To: Samuel Thibault <samuel.thibault@ens-lyon.org>,
	Kirill Petrov <kosyanip@gmail.com>, speakup@linux-speakup.org,
	w.d.hubbs@gmail.com, chris@the-brannons.com, kirk@reisers.ca,
	linux-kernel@vger.kernel.org
References: <20260202105650.7871-1-kosyanip@gmail.com>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux." <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260202105650.7871-1-kosyanip@gmail.com>
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
	TAGGED_FROM(0.00)[bounces-1545-lists,speakup=lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[ens-lyon.org];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[linux-speakup.org,gmail.com,the-brannons.com,reisers.ca,vger.kernel.org];
	R_SPF_NA(0.00)[no SPF record];
	RCPT_COUNT_FIVE(0.00)[6];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[samuel.thibault@ens-lyon.org,speakup@linux-speakup.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[speakup];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:5645, ipnet:206.248.128.0/18, country:CA];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 2CEDDCB877
X-Rspamd-Action: no action

Hello,

Kirill Petrov, le lun. 02 févr. 2026 13:56:47 +0300, a ecrit:
> Document the accepted bitmask values for
> /sys/accessibility/speakup/bleeps and the time unit (milliseconds) for
> /sys/accessibility/speakup/bleep_time, as implemented by Speakup edge
> notification logic announce_edge() and bleep().
> 
> Signed-off-by: Kirill Petrov <kosyanip@gmail.com>

Henry Zhang has beaten you on this :)

Thanks anyway,
Samuel

> ---
>  Documentation/ABI/stable/sysfs-driver-speakup | 9 +++++----
>  1 file changed, 5 insertions(+), 4 deletions(-)
> 
> diff --git a/Documentation/ABI/stable/sysfs-driver-speakup b/Documentation/ABI/stable/sysfs-driver-speakup
> index bcb6831aa114..e9d71851e6b5 100644
> --- a/Documentation/ABI/stable/sysfs-driver-speakup
> +++ b/Documentation/ABI/stable/sysfs-driver-speakup
> @@ -16,15 +16,16 @@ What:		/sys/accessibility/speakup/bleeps
>  KernelVersion:	2.6
>  Contact:	speakup@linux-speakup.org
>  Description:	This controls whether one hears beeps through the PC speaker
> -		when using speakup's review commands.
> -		TODO: what values does it accept?
> +		when using speakup's review commands. This is a bitmask:
> +		0x1: bleep (PC speaker) when reaching an edge
> +		0x2: speak the corresponding edge message
> +		Any combination of the above.
>  
>  What:		/sys/accessibility/speakup/bleep_time
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
> 2.43.0

