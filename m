Return-Path: <speakup+bounces-1176-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 1DCD7951417
	for <lists+speakup@lfdr.de>; Wed, 14 Aug 2024 08:00:07 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 5C564382656; Wed, 14 Aug 2024 02:00:06 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 49CFE3820D0
	for <lists+speakup@lfdr.de>; Wed, 14 Aug 2024 02:00:06 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 8077A3825C4; Wed, 14 Aug 2024 02:00:02 -0400 (EDT)
Received: from sonata.ens-lyon.org (sonata.ens-lyon.org [140.77.166.138])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 5CD2838201E
	for <speakup@linux-speakup.org>; Wed, 14 Aug 2024 02:00:02 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by sonata.ens-lyon.org (Postfix) with ESMTP id D580BA03A1;
	Wed, 14 Aug 2024 07:59:59 +0200 (CEST)
Received: from sonata.ens-lyon.org ([127.0.0.1])
	by localhost (sonata.ens-lyon.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id q-65m9eZU7RT; Wed, 14 Aug 2024 07:59:59 +0200 (CEST)
Received: from begin.home (apoitiers-658-1-118-253.w92-162.abo.wanadoo.fr [92.162.65.253])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by sonata.ens-lyon.org (Postfix) with ESMTPSA id 8671DA039F;
	Wed, 14 Aug 2024 07:59:56 +0200 (CEST)
Received: from samy by begin.home with local (Exim 4.98)
	(envelope-from <samuel.thibault@ens-lyon.org>)
	id 1se735-000000072Ep-3REY;
	Wed, 14 Aug 2024 07:59:55 +0200
Date: Wed, 14 Aug 2024 07:59:55 +0200
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: bajing <bajing@cmss.chinamobile.com>
Cc: w.d.hubbs@gmail.com, chris@the-brannons.com, kirk@reisers.ca,
	speakup@linux-speakup.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] speakup: i18n: modify incorrect comments
Message-ID: <20240814055955.4mf5idugote3pihu@begin>
Mail-Followup-To: Samuel Thibault <samuel.thibault@ens-lyon.org>,
	bajing <bajing@cmss.chinamobile.com>, w.d.hubbs@gmail.com,
	chris@the-brannons.com, kirk@reisers.ca, speakup@linux-speakup.org,
	linux-kernel@vger.kernel.org
References: <20240814030017.2094-1-bajing@cmss.chinamobile.com>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240814030017.2094-1-bajing@cmss.chinamobile.com>
Organization: I am not organized
User-Agent: NeoMutt/20170609 (1.8.3)
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

bajing, le mer. 14 août 2024 11:00:17 +0800, a ecrit:
> Regarding the text part, the comment was written incorrectly, so it needs to be modified.
> 
> Signed-off-by: bajing <bajing@cmss.chinamobile.com>
> ---
>  drivers/accessibility/speakup/i18n.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/accessibility/speakup/i18n.c b/drivers/accessibility/speakup/i18n.c
> index d62079b1661f..10c7cdc685f7 100644
> --- a/drivers/accessibility/speakup/i18n.c
> +++ b/drivers/accessibility/speakup/i18n.c
> @@ -541,7 +541,7 @@ static bool fmt_validate(char *template, char *user)
>   * If the function fails, then user_messages is untouched.
>   * Arguments:
>   * - index: a message number, as found in i18n.h.
> - * - text:  text of message.  Not NUL-terminated.
> + * - text:  text of message.  Not NULL-terminated.

? Man ascii says it's called NUL, not NULL. We don't want people to
confuse it with the NULL pointer anyway, so no, we don't to change this.

Samuel

>   * - length: number of bytes in text.
>   * Failure conditions:
>   * -EINVAL -  Invalid format specifiers in formatted message or illegal index.
> -- 
> 2.33.0

