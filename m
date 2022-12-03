Return-Path: <speakup+bounces-871-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 6DFC764157A
	for <lists+speakup@lfdr.de>; Sat,  3 Dec 2022 10:56:53 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id EA008382A26; Sat,  3 Dec 2022 04:56:51 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id D60D6380F34
	for <lists+speakup@lfdr.de>; Sat,  3 Dec 2022 04:56:51 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id DB8773808C7; Sat,  3 Dec 2022 04:56:46 -0500 (EST)
Received: from sonata.ens-lyon.org (sonata.ens-lyon.org [140.77.166.138])
	by befuddled.reisers.ca (Postfix) with ESMTPS id B35B73808C7
	for <speakup@linux-speakup.org>; Sat,  3 Dec 2022 04:56:46 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by sonata.ens-lyon.org (Postfix) with ESMTP id 4D5F12012F;
	Sat,  3 Dec 2022 10:56:45 +0100 (CET)
Received: from sonata.ens-lyon.org ([127.0.0.1])
	by localhost (sonata.ens-lyon.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9-wW9_7stpQY; Sat,  3 Dec 2022 10:56:45 +0100 (CET)
Received: from begin (lfbn-bor-1-376-208.w109-215.abo.wanadoo.fr [109.215.91.208])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by sonata.ens-lyon.org (Postfix) with ESMTPSA id 925912010E;
	Sat,  3 Dec 2022 10:56:44 +0100 (CET)
Received: from samy by begin with local (Exim 4.96)
	(envelope-from <samuel.thibault@ens-lyon.org>)
	id 1p1PGG-006rTz-0m;
	Sat, 03 Dec 2022 10:56:44 +0100
Date: Sat, 3 Dec 2022 10:56:44 +0100
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: yang.yang29@zte.com.cn
Cc: w.d.hubbs@gmail.com, chris@the-brannons.com, kirk@reisers.ca,
	mushi.shar@gmail.com, speakup@linux-speakup.org,
	linux-kernel@vger.kernel.org, xu.panda@zte.com.cn
Subject: Re: [PATCH linux-next] accessibility: speakup: use strscpy() to
 instead of strncpy()
Message-ID: <20221203095644.6g7acpenj6brvjis@begin>
Mail-Followup-To: Samuel Thibault <samuel.thibault@ens-lyon.org>,
	yang.yang29@zte.com.cn, w.d.hubbs@gmail.com, chris@the-brannons.com,
	kirk@reisers.ca, mushi.shar@gmail.com, speakup@linux-speakup.org,
	linux-kernel@vger.kernel.org, xu.panda@zte.com.cn
References: <202212031421285953755@zte.com.cn>
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
In-Reply-To: <202212031421285953755@zte.com.cn>
Organization: I am not organized
User-Agent: NeoMutt/20170609 (1.8.3)
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

yang.yang29@zte.com.cn, le sam. 03 déc. 2022 14:21:28 +0800, a ecrit:
> From: Xu Panda <xu.panda@zte.com.cn>
> 
> The implementation of strscpy() is more robust and safer.
> That's now the recommended way to copy NUL terminated strings.
> 
> Signed-off-by: Xu Panda <xu.panda@zte.com.cn>
> Signed-off-by: Yang Yang <yang.yang29@zte.com>
> ---
>  drivers/accessibility/speakup/kobjects.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/accessibility/speakup/kobjects.c b/drivers/accessibility/speakup/kobjects.c
> index a7522d409802..273c076b661a 100644
> --- a/drivers/accessibility/speakup/kobjects.c
> +++ b/drivers/accessibility/speakup/kobjects.c
> @@ -426,8 +426,7 @@ static ssize_t synth_direct_store(struct kobject *kobj,
>  	spin_lock_irqsave(&speakup_info.spinlock, flags);
>  	while (len > 0) {
>  		bytes = min_t(size_t, len, 250);
> -		strncpy(tmp, ptr, bytes);
> -		tmp[bytes] = '\0';
> +		strscpy(tmp, ptr, bytes);

This needs to be bytes+1, otherwise the trailing `\0` will be put at
bytes-1 instead of bytes as the original code does, thus eating one
character.

>  		string_unescape_any_inplace(tmp);
>  		synth_printf("%s", tmp);
>  		ptr += bytes;
> -- 
> 2.15.2
> 

