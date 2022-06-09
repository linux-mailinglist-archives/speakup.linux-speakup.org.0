Return-Path: <speakup+bounces-454-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 272EE544BFA
	for <lists+speakup@lfdr.de>; Thu,  9 Jun 2022 14:28:54 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 3675E380807; Thu,  9 Jun 2022 08:28:53 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 2078D3807A8
	for <lists+speakup@lfdr.de>; Thu,  9 Jun 2022 08:28:53 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 3F54B3807B3; Thu,  9 Jun 2022 08:28:48 -0400 (EDT)
Received: from sonata.ens-lyon.org (sonata.ens-lyon.org [140.77.166.138])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 17A04380148
	for <speakup@linux-speakup.org>; Thu,  9 Jun 2022 08:28:48 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by sonata.ens-lyon.org (Postfix) with ESMTP id 61E4B2015C;
	Thu,  9 Jun 2022 14:28:45 +0200 (CEST)
Received: from sonata.ens-lyon.org ([127.0.0.1])
	by localhost (sonata.ens-lyon.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id K-HSDGkridoK; Thu,  9 Jun 2022 14:28:45 +0200 (CEST)
Received: from begin (ip-185-104-137-33.ptr.icomera.net [185.104.137.33])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by sonata.ens-lyon.org (Postfix) with ESMTPSA id 948A620157;
	Thu,  9 Jun 2022 14:28:44 +0200 (CEST)
Received: from samy by begin with local (Exim 4.95)
	(envelope-from <samuel.thibault@ens-lyon.org>)
	id 1nzHHD-00DgPa-Cr;
	Thu, 09 Jun 2022 14:28:39 +0200
Date: Thu, 9 Jun 2022 14:28:39 +0200
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: Sasha Levin <sashal@kernel.org>
Cc: linux-kernel@vger.kernel.org, stable@vger.kernel.org,
	Zheng Bin <zhengbin13@huawei.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	w.d.hubbs@gmail.com, chris@the-brannons.com, kirk@reisers.ca,
	trix@redhat.com, salah.triki@gmail.com, speakup@linux-speakup.org
Subject: Re: [PATCH AUTOSEL 5.18 31/68] accessiblity: speakup: Add missing
 misc_deregister in softsynth_probe
Message-ID: <20220609122839.35vn5vtukmuuxch3@begin>
Mail-Followup-To: Samuel Thibault <samuel.thibault@ens-lyon.org>,
	Sasha Levin <sashal@kernel.org>, linux-kernel@vger.kernel.org,
	stable@vger.kernel.org, Zheng Bin <zhengbin13@huawei.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	w.d.hubbs@gmail.com, chris@the-brannons.com, kirk@reisers.ca,
	trix@redhat.com, salah.triki@gmail.com, speakup@linux-speakup.org
References: <20220607174846.477972-1-sashal@kernel.org>
 <20220607174846.477972-31-sashal@kernel.org>
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
In-Reply-To: <20220607174846.477972-31-sashal@kernel.org>
Organization: I am not organized
User-Agent: NeoMutt/20170609 (1.8.3)
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Sasha Levin, le mar. 07 juin 2022 13:47:57 -0400, a ecrit:
> From: Zheng Bin <zhengbin13@huawei.com>
> 
> [ Upstream commit 106101303eda8f93c65158e5d72b2cc6088ed034 ]
> 
> softsynth_probe misses a call misc_deregister() in an error path, this
> patch fixes that.
> 
> Signed-off-by: Zheng Bin <zhengbin13@huawei.com>
> Link: https://lore.kernel.org/r/20220511032937.2736738-1-zhengbin13@huawei.com
> Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Signed-off-by: Sasha Levin <sashal@kernel.org>

Reviewed-by: Samuel Thibault <samuel.thibault@ens-lyon.org>

> ---
>  drivers/accessibility/speakup/speakup_soft.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/accessibility/speakup/speakup_soft.c b/drivers/accessibility/speakup/speakup_soft.c
> index 19824e7006fe..786dc5d080f3 100644
> --- a/drivers/accessibility/speakup/speakup_soft.c
> +++ b/drivers/accessibility/speakup/speakup_soft.c
> @@ -397,6 +397,7 @@ static int softsynth_probe(struct spk_synth *synth)
>  	synthu_device.name = "softsynthu";
>  	synthu_device.fops = &softsynthu_fops;
>  	if (misc_register(&synthu_device)) {
> +		misc_deregister(&synth_device);
>  		pr_warn("Couldn't initialize miscdevice /dev/softsynthu.\n");
>  		return -ENODEV;
>  	}
> -- 
> 2.35.1
> 

-- 
Samuel
---
Pour une évaluation indépendante, transparente et rigoureuse !
Je soutiens la Commission d'Évaluation de l'Inria.

