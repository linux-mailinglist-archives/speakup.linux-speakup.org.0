Return-Path: <speakup+bounces-1587-lists+speakup=lfdr.de@linux-speakup.org>
Delivered-To: lists+speakup@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uNkBCA852GmAaAgAu9opvQ
	(envelope-from <speakup+bounces-1587-lists+speakup=lfdr.de@linux-speakup.org>)
	for <lists+speakup@lfdr.de>; Fri, 10 Apr 2026 01:41:03 +0200
X-Original-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 36F253D084A
	for <lists+speakup@lfdr.de>; Fri, 10 Apr 2026 01:41:00 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id F100C382710; Thu, 09 Apr 2026 19:33:35 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id DE32138267E
	for <lists+speakup@lfdr.de>; Thu, 09 Apr 2026 19:33:35 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 9085C381832; Thu, 09 Apr 2026 19:33:32 -0400 (EDT)
Received: from sonata.ens-lyon.org (domu-toccata.ens-lyon.fr [140.77.166.138])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 672423817BD
	for <speakup@linux-speakup.org>; Thu, 09 Apr 2026 19:33:32 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by sonata.ens-lyon.org (Postfix) with ESMTP id B3708A1B9A;
	Fri, 10 Apr 2026 01:33:13 +0200 (CEST)
Received: from sonata.ens-lyon.org ([127.0.0.1])
	by localhost (sonata.ens-lyon.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WWCjSF5SDu3d; Fri, 10 Apr 2026 01:33:13 +0200 (CEST)
Received: from end (aamiens-653-1-40-48.w83-192.abo.wanadoo.fr [83.192.199.48])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by sonata.ens-lyon.org (Postfix) with ESMTPSA id 0FF43A01D8;
	Fri, 10 Apr 2026 01:33:13 +0200 (CEST)
Received: from samy by end with local (Exim 4.99.1)
	(envelope-from <samuel.thibault@ens-lyon.org>)
	id 1wAys4-00000002Nos-1uha;
	Fri, 10 Apr 2026 01:33:12 +0200
Date: Fri, 10 Apr 2026 01:33:12 +0200
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: Francisco Maestre <francisco@maestretorreblanca.com>
Cc: w.d.hubbs@gmail.com, chris@the-brannons.com, kirk@reisers.ca,
	speakup@linux-speakup.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/4] speakup: speakup_soft: fix comment style and
 repeated word
Message-ID: <adg3ONvnpCNSv5v3@end>
Mail-Followup-To: Samuel Thibault <samuel.thibault@ens-lyon.org>,
	Francisco Maestre <francisco@maestretorreblanca.com>,
	w.d.hubbs@gmail.com, chris@the-brannons.com, kirk@reisers.ca,
	speakup@linux-speakup.org, linux-kernel@vger.kernel.org
References: <20260409220535.98479-1-francisco@maestretorreblanca.com>
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
In-Reply-To: <20260409220535.98479-1-francisco@maestretorreblanca.com>
Organization: I am not organized
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5
X-Spamd-Result: default: False [2.82 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	AUTH_NA(1.00)[];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.18)[generic];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_NO_TLS_LAST(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-1587-lists,speakup=lfdr.de];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,the-brannons.com,reisers.ca,linux-speakup.org,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	DMARC_NA(0.00)[ens-lyon.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[8];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[samuel.thibault@ens-lyon.org,speakup@linux-speakup.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	R_DKIM_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[speakup];
	ASN(0.00)[asn:5645, ipnet:206.248.128.0/18, country:CA];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ens-lyon.org:email,maestretorreblanca.com:email,befuddled.reisers.ca:helo,befuddled.reisers.ca:rdns]
X-Rspamd-Queue-Id: 36F253D084A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Francisco Maestre, le jeu. 09 avril 2026 17:05:35 -0500, a ecrit:
> Fix two comment style issues in speakup_soft.c:
> 
> - Remove duplicated word 'the' in a block comment ('the the' -> 'the')
> - Move the closing '*/' of the block comment to its own line, as
>   required by the kernel coding style
> 
> Assisted-by: Claude:claude-opus-4-5
> Signed-off-by: Francisco Maestre <francisco@maestretorreblanca.com>


Reviewed-by: Samuel Thibault <samuel.thibault@ens-lyon.org>

> ---
>  drivers/accessibility/speakup/speakup_soft.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/accessibility/speakup/speakup_soft.c b/drivers/accessibility/speakup/speakup_soft.c
> index 6d4468246..57d83b82f 100644
> --- a/drivers/accessibility/speakup/speakup_soft.c
> +++ b/drivers/accessibility/speakup/speakup_soft.c
> @@ -446,8 +446,9 @@ static int softsynth_adjust(struct spk_synth *synth, struct st_var_header *var)
>  	if (var->var_id != PUNC_LEVEL)
>  		return 0;
>  
> -	/* We want to set the the speech synthesis punctuation level
> -	 * accordingly, so it properly tunes speaking A_PUNC characters */
> +	/* We want to set the speech synthesis punctuation level
> +	 * accordingly, so it properly tunes speaking A_PUNC characters
> +	 */
>  	var_data = var->data;
>  	if (!var_data)
>  		return 0;
> -- 
> 2.50.1 (Apple Git-155)
> 

-- 
Samuel
<Y> C'ETAIT PAS UN BUG !
<y> :ppp
<y> c ce qu'on dit ;)
<Y> (j'ai appuye sur ON, ca peut arriver, non ?)
 -+- #hp debuggue IRCprime -+-

