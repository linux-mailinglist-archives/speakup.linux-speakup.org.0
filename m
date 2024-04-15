Return-Path: <speakup+bounces-1099-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id E3B1D8A50F7
	for <lists+speakup@lfdr.de>; Mon, 15 Apr 2024 15:20:57 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 340C7C81CC2; Mon, 15 Apr 2024 09:12:45 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 1FC6DC80D2E
	for <lists+speakup@lfdr.de>; Mon, 15 Apr 2024 09:12:45 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 8BCDBC80D2E; Mon, 15 Apr 2024 09:12:40 -0400 (EDT)
Received: from sonata.ens-lyon.org (sonata.ens-lyon.org [140.77.166.138])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 9CD6AC80BA9
	for <speakup@linux-speakup.org>; Mon, 15 Apr 2024 09:12:39 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by sonata.ens-lyon.org (Postfix) with ESMTP id 14966A0356;
	Mon, 15 Apr 2024 15:12:27 +0200 (CEST)
Received: from sonata.ens-lyon.org ([127.0.0.1])
	by localhost (sonata.ens-lyon.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0ePUsKKeAeGk; Mon, 15 Apr 2024 15:12:27 +0200 (CEST)
Received: from begin (unknown [61.199.131.154])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by sonata.ens-lyon.org (Postfix) with ESMTPSA id 4D97EA0326;
	Mon, 15 Apr 2024 15:12:25 +0200 (CEST)
Received: from samy by begin with local (Exim 4.97)
	(envelope-from <samuel.thibault@ens-lyon.org>)
	id 1rwM89-00000007bTI-0YTQ;
	Mon, 15 Apr 2024 15:12:17 +0200
Date: Mon, 15 Apr 2024 15:12:17 +0200
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: Dan Carpenter <dan.carpenter@linaro.org>
Cc: William Hubbs <w.d.hubbs@gmail.com>,
	Chris Brannon <chris@the-brannons.com>,
	Kirk Reiser <kirk@reisers.ca>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Randy Dunlap <rdunlap@infradead.org>, speakup@linux-speakup.org,
	linux-kernel@vger.kernel.org, kernel-janitors@vger.kernel.org
Subject: Re: [PATCH] speakup: Fix sizeof() vs ARRAY_SIZE() bug
Message-ID: <20240415131217.t3zfjucclauc3rkz@begin>
Mail-Followup-To: Samuel Thibault <samuel.thibault@ens-lyon.org>,
	Dan Carpenter <dan.carpenter@linaro.org>,
	William Hubbs <w.d.hubbs@gmail.com>,
	Chris Brannon <chris@the-brannons.com>,
	Kirk Reiser <kirk@reisers.ca>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Randy Dunlap <rdunlap@infradead.org>, speakup@linux-speakup.org,
	linux-kernel@vger.kernel.org, kernel-janitors@vger.kernel.org
References: <d16f67d2-fd0a-4d45-adac-75ddd11001aa@moroto.mountain>
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
In-Reply-To: <d16f67d2-fd0a-4d45-adac-75ddd11001aa@moroto.mountain>
Organization: I am not organized
User-Agent: NeoMutt/20170609 (1.8.3)
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Dan Carpenter, le lun. 15 avril 2024 14:02:23 +0300, a ecrit:
> The "buf" pointer is an array of u16 values.  This code should be
> using ARRAY_SIZE() (which is 256) instead of sizeof() (which is 512),
> otherwise it can the still got out of bounds.
> 
> Fixes: c8d2f34ea96e ("speakup: Avoid crash on very long word")
> Cc: stable@vger.kernel.org
> Signed-off-by: Dan Carpenter <dan.carpenter@linaro.org>

Reviewed-by: Samuel Thibault <samuel.thibault@ens-lyon.org

Thanks!

> ---
>  drivers/accessibility/speakup/main.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/accessibility/speakup/main.c b/drivers/accessibility/speakup/main.c
> index 736c2eb8c0f3..f677ad2177c2 100644
> --- a/drivers/accessibility/speakup/main.c
> +++ b/drivers/accessibility/speakup/main.c
> @@ -574,7 +574,7 @@ static u_long get_word(struct vc_data *vc)
>  	}
>  	attr_ch = get_char(vc, (u_short *)tmp_pos, &spk_attr);
>  	buf[cnt++] = attr_ch;
> -	while (tmpx < vc->vc_cols - 1 && cnt < sizeof(buf) - 1) {
> +	while (tmpx < vc->vc_cols - 1 && cnt < ARRAY_SIZE(buf) - 1) {
>  		tmp_pos += 2;
>  		tmpx++;
>  		ch = get_char(vc, (u_short *)tmp_pos, &temp);
> -- 
> 2.43.0
> 

