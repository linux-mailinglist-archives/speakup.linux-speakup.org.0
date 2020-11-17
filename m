Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (tunnel25281-pt.tunnel.tserv21.tor1.ipv6.he.net [IPv6:2001:470:1c:288::2])
	by mail.lfdr.de (Postfix) with ESMTP id 0B42A2B59F1
	for <lists+speakup@lfdr.de>; Tue, 17 Nov 2020 07:59:50 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 5C184380EEB; Tue, 17 Nov 2020 01:59:47 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id A052A380EE4;
	Tue, 17 Nov 2020 01:59:46 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 3EF7D380BFA; Tue, 17 Nov 2020 01:59:46 -0500 (EST)
Received: from hera.aquilenet.fr (hera.aquilenet.fr [185.233.100.1])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 1310F380984
 for <speakup@linux-speakup.org>; Tue, 17 Nov 2020 01:59:46 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
 by hera.aquilenet.fr (Postfix) with ESMTP id 3669ECE6;
 Tue, 17 Nov 2020 07:59:43 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
 by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kIirWhfqeZay; Tue, 17 Nov 2020 07:59:42 +0100 (CET)
Received: from function.youpi.perso.aquilenet.fr
 (lfbn-bor-1-56-204.w90-50.abo.wanadoo.fr [90.50.148.204])
 by hera.aquilenet.fr (Postfix) with ESMTPSA id 02F1788F;
 Tue, 17 Nov 2020 07:59:41 +0100 (CET)
Received: from samy by function.youpi.perso.aquilenet.fr with local (Exim 4.94)
 (envelope-from <samuel.thibault@ens-lyon.org>)
 id 1keuxo-00GZtO-Nh; Tue, 17 Nov 2020 07:59:40 +0100
Date: Tue, 17 Nov 2020 07:59:40 +0100
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: Yang Yingliang <yangyingliang@huawei.com>
Subject: Re: [PATCH] speakup: fix uninitialized flush_lock
Message-ID: <20201117065940.pcfjrbyrg4h5ona4@function>
Mail-Followup-To: Samuel Thibault <samuel.thibault@ens-lyon.org>,
 Yang Yingliang <yangyingliang@huawei.com>,
 speakup@linux-speakup.org, linux-kernel@vger.kernel.org,
 w.d.hubbs@gmail.com, gregkh@linuxfoundation.org
References: <20201117012229.3395186-1-yangyingliang@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201117012229.3395186-1-yangyingliang@huawei.com>
Organization: I am not organized
User-Agent: NeoMutt/20170609 (1.8.3)
X-BeenThere: speakup@linux-speakup.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <http://linux-speakup.org/cgi-bin/mailman/options/speakup>, 
 <mailto:speakup-request@linux-speakup.org?subject=unsubscribe>
List-Archive: <http://linux-speakup.org/pipermail/speakup/>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup-request@linux-speakup.org?subject=help>
List-Subscribe: <http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup>,
 <mailto:speakup-request@linux-speakup.org?subject=subscribe>
Reply-To: "Speakup is a screen review system for Linux."
 <speakup@linux-speakup.org>
Cc: gregkh@linuxfoundation.org, speakup@linux-speakup.org,
 linux-kernel@vger.kernel.org, w.d.hubbs@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

Yang Yingliang, le mar. 17 nov. 2020 09:22:29 +0800, a ecrit:
> The flush_lock is uninitialized, use DEFINE_SPINLOCK
> to define and initialize flush_lock.
> 
> Fixes: c6e3fd22cd53 ("Staging: add speakup to the staging directory")
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: Yang Yingliang <yangyingliang@huawei.com>

Reviewed-by: Samuel Thibault <samuel.thibault@ens-lyon.org>

> ---
>  drivers/accessibility/speakup/speakup_dectlk.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/accessibility/speakup/speakup_dectlk.c b/drivers/accessibility/speakup/speakup_dectlk.c
> index 780214b5ca16..ab6d61e80b1c 100644
> --- a/drivers/accessibility/speakup/speakup_dectlk.c
> +++ b/drivers/accessibility/speakup/speakup_dectlk.c
> @@ -37,7 +37,7 @@ static unsigned char get_index(struct spk_synth *synth);
>  static int in_escape;
>  static int is_flushing;
>  
> -static spinlock_t flush_lock;
> +static DEFINE_SPINLOCK(flush_lock);
>  static DECLARE_WAIT_QUEUE_HEAD(flush);
>  
>  static struct var_t vars[] = {
> -- 
> 2.25.1
> 
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
