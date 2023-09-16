Return-Path: <speakup+bounces-1026-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id DE2FA7A3358
	for <lists+speakup@lfdr.de>; Sun, 17 Sep 2023 01:08:17 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 95C3D3823CA; Sat, 16 Sep 2023 19:08:16 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 7E3473822F1
	for <lists+speakup@lfdr.de>; Sat, 16 Sep 2023 19:08:16 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 4AD4C3822D9; Sat, 16 Sep 2023 19:08:12 -0400 (EDT)
Received: from sonata.ens-lyon.org (sonata.ens-lyon.org [140.77.166.138])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 17B28382204
	for <speakup@linux-speakup.org>; Sat, 16 Sep 2023 19:08:12 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by sonata.ens-lyon.org (Postfix) with ESMTP id D89D32013C;
	Sun, 17 Sep 2023 01:08:09 +0200 (CEST)
Received: from sonata.ens-lyon.org ([127.0.0.1])
	by localhost (sonata.ens-lyon.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id o1eLfS2tQsgw; Sun, 17 Sep 2023 01:08:09 +0200 (CEST)
Received: from begin (lfbn-bor-1-1163-184.w92-158.abo.wanadoo.fr [92.158.138.184])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by sonata.ens-lyon.org (Postfix) with ESMTPSA id 7FDB520137;
	Sun, 17 Sep 2023 01:08:08 +0200 (CEST)
Received: from samy by begin with local (Exim 4.96)
	(envelope-from <samuel.thibault@ens-lyon.org>)
	id 1qheOW-007HHT-04;
	Sun, 17 Sep 2023 01:08:08 +0200
Date: Sun, 17 Sep 2023 01:08:07 +0200
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: Justin Stitt <justinstitt@google.com>
Cc: Kees Cook <keescook@chromium.org>, William Hubbs <w.d.hubbs@gmail.com>,
	Chris Brannon <chris@the-brannons.com>,
	Kirk Reiser <kirk@reisers.ca>, speakup@linux-speakup.org,
	linux-kernel@vger.kernel.org, linux-hardening@vger.kernel.org
Subject: Re: [PATCH] accessibility: speakup: refactor deprecated strncpy
Message-ID: <20230916230807.motaqyb5gqzqjvub@begin>
Mail-Followup-To: Samuel Thibault <samuel.thibault@ens-lyon.org>,
	Justin Stitt <justinstitt@google.com>,
	Kees Cook <keescook@chromium.org>,
	William Hubbs <w.d.hubbs@gmail.com>,
	Chris Brannon <chris@the-brannons.com>,
	Kirk Reiser <kirk@reisers.ca>, speakup@linux-speakup.org,
	linux-kernel@vger.kernel.org, linux-hardening@vger.kernel.org
References: <20230824-strncpy-drivers-accessibility-speakup-kobjects-c-v1-1-3a1ef1221e90@google.com>
 <202308251439.36BC33ADB2@keescook>
 <CAFhGd8r6A4VH5C=yF1WHKEPY86oh6PEzt6wuxPxsJAD0XKfrsQ@mail.gmail.com>
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
In-Reply-To: <CAFhGd8r6A4VH5C=yF1WHKEPY86oh6PEzt6wuxPxsJAD0XKfrsQ@mail.gmail.com>
Organization: I am not organized
User-Agent: NeoMutt/20170609 (1.8.3)
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hello,

Justin Stitt, le ven. 25 août 2023 15:41:03 -0700, a ecrit:
> Thanks for the review Kees and Samuel. Hoping to get this picked-up soon :)
> 
> FWIW, I've quickly copy/pasted Kees' suggested refactor of
> synth_direct_store and rebased against v6.5-rc7 if anyone has the
> means by which to test it.
> 
> TEST PATCH BELOW
> ---
> From e7216bca30673a162660c51f8bad3b463d283041 Mon Sep 17 00:00:00 2001
> From: Justin Stitt <justinstitt@google.com>
> Date: Fri, 25 Aug 2023 22:32:03 +0000
> Subject: [PATCH NEEDS TEST] synth_direct_store refactor to use synth_write
> 
> I've just copy/pasted Kees' suggestion here [1] and rebased it against
> 6.5-rc7.
> 
> This patch needs testing as it refactors behavior in synth_direct_store.
> 
> [1]: https://lore.kernel.org/all/202308251439.36BC33ADB2@keescook/
> 
> Signed-off-by: Justin Stitt <justinstitt@google.com>

Tested-by: Samuel Thibault <samuel.thibault@ens-lyon.org>

but please submit it properly :) It was completely mangled in the mail.

> ---
>  drivers/accessibility/speakup/kobjects.c | 25 +++++++++++-------------
>  1 file changed, 11 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/accessibility/speakup/kobjects.c
> b/drivers/accessibility/speakup/kobjects.c
> index a7522d409802..0dfdb6608e02 100644
> --- a/drivers/accessibility/speakup/kobjects.c
> +++ b/drivers/accessibility/speakup/kobjects.c
> @@ -413,27 +413,24 @@ static ssize_t synth_direct_store(struct kobject *kobj,
>     struct kobj_attribute *attr,
>     const char *buf, size_t count)
>  {
> - u_char tmp[256];
> - int len;
> - int bytes;
> - const char *ptr = buf;
> + char *unescaped;
>   unsigned long flags;
> 
>   if (!synth)
>   return -EPERM;
> 
> - len = strlen(buf);
> + unescaped = kstrdup(buf, GFP_KERNEL);
> + if (!unescaped)
> + return -ENOMEM;
> +
> + string_unescape_any_inplace(unescaped);
> +
>   spin_lock_irqsave(&speakup_info.spinlock, flags);
> - while (len > 0) {
> - bytes = min_t(size_t, len, 250);
> - strncpy(tmp, ptr, bytes);
> - tmp[bytes] = '\0';
> - string_unescape_any_inplace(tmp);
> - synth_printf("%s", tmp);
> - ptr += bytes;
> - len -= bytes;
> - }
> + synth_write(unescaped, strlen(unescaped));
>   spin_unlock_irqrestore(&speakup_info.spinlock, flags);
> +
> + kfree(unescaped);
> +
>   return count;
>  }
> 
> --
> 2.42.0.rc1.204.g551eb34607-goog
> 

-- 
Samuel
---
Pour une évaluation indépendante, transparente et rigoureuse !
Je soutiens la Commission d'Évaluation de l'Inria.

