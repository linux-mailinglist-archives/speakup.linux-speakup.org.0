Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id AEE4060F99
	for <lists+speakup@lfdr.de>; Sat,  6 Jul 2019 11:01:36 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id B25C61C32F0; Sat,  6 Jul 2019 05:01:28 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 2521D1C373E;
	Sat,  6 Jul 2019 05:00:39 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 4076E1C32F0; Sat,  6 Jul 2019 05:00:33 -0400 (EDT)
Received: from hera.aquilenet.fr (hera.aquilenet.fr [185.233.100.1])
 by befuddled.reisers.ca (Postfix) with ESMTPS id A03831C32EA
 for <speakup@linux-speakup.org>; Sat,  6 Jul 2019 05:00:30 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
 by hera.aquilenet.fr (Postfix) with ESMTP id 2ED7F6069;
 Sat,  6 Jul 2019 11:00:21 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
 by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4_8_IRcTvWRm; Sat,  6 Jul 2019 11:00:20 +0200 (CEST)
Received: from function (dhcp-64-231.ens-lyon.fr [140.77.64.231])
 by hera.aquilenet.fr (Postfix) with ESMTPSA id 73E6A6063;
 Sat,  6 Jul 2019 11:00:20 +0200 (CEST)
Received: from samy by function with local (Exim 4.92)
 (envelope-from <samuel.thibault@ens-lyon.org>)
 id 1hjgYN-0004Wq-Jw; Sat, 06 Jul 2019 11:00:19 +0200
Date: Sat, 6 Jul 2019 11:00:19 +0200
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: Markus Elfring <Markus.Elfring@web.de>
Subject: Re: [PATCH] staging: speakup: One function call less in
 speakup_win_enable()
Message-ID: <20190706090019.rivposzrqesodhso@function>
Mail-Followup-To: Samuel Thibault <samuel.thibault@ens-lyon.org>,
 Markus Elfring <Markus.Elfring@web.de>, speakup@linux-speakup.org,
 devel@driverdev.osuosl.org,
 Bhagyashri Dighole <digholebhagyashri@gmail.com>,
 Chris Brannon <chris@the-brannons.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Kirk Reiser <kirk@reisers.ca>,
 Okash Khawaja <okash.khawaja@gmail.com>,
 William Hubbs <w.d.hubbs@gmail.com>,
 LKML <linux-kernel@vger.kernel.org>,
 kernel-janitors@vger.kernel.org
References: <11f79333-25c3-1ad9-4975-58c64821f3fe@web.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <11f79333-25c3-1ad9-4975-58c64821f3fe@web.de>
Organization: I am not organized
User-Agent: NeoMutt/20170113 (1.7.2)
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
Cc: devel@driverdev.osuosl.org, kernel-janitors@vger.kernel.org,
 Bhagyashri Dighole <digholebhagyashri@gmail.com>,
 William Hubbs <w.d.hubbs@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, speakup@linux-speakup.org,
 LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

Markus Elfring, le sam. 06 juil. 2019 10:15:30 +0200, a ecrit:
> From: Markus Elfring <elfring@users.sourceforge.net>
> Date: Sat, 6 Jul 2019 10:03:56 +0200
> 
> Avoid an extra function call by using a ternary operator instead of
> a conditional statement.
> 
> This issue was detected by using the Coccinelle software.
> 
> Signed-off-by: Markus Elfring <elfring@users.sourceforge.net>

Reviewed-by: Samuel Thibault <samuel.thibault@ens-lyon.org>

> ---
>  drivers/staging/speakup/main.c | 7 +++----
>  1 file changed, 3 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/speakup/main.c b/drivers/staging/speakup/main.c
> index 488f2539aa9a..03bbc9a4dbb3 100644
> --- a/drivers/staging/speakup/main.c
> +++ b/drivers/staging/speakup/main.c
> @@ -1917,10 +1917,9 @@ static void speakup_win_enable(struct vc_data *vc)
>  		return;
>  	}
>  	win_enabled ^= 1;
> -	if (win_enabled)
> -		synth_printf("%s\n", spk_msg_get(MSG_WINDOW_SILENCED));
> -	else
> -		synth_printf("%s\n", spk_msg_get(MSG_WINDOW_SILENCE_DISABLED));
> +	synth_printf("%s\n", spk_msg_get(win_enabled
> +					 ? MSG_WINDOW_SILENCED
> +					 : MSG_WINDOW_SILENCE_DISABLED));
>  }
> 
>  static void speakup_bits(struct vc_data *vc)
> --
> 2.22.0
> 

-- 
Samuel
--- christ gives channel operator status to Dieu
 -+- #ens-mim and hell -+-
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
