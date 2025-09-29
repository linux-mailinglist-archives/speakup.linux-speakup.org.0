Return-Path: <speakup+bounces-1429-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 8D849BAA3F6
	for <lists+speakup@lfdr.de>; Mon, 29 Sep 2025 20:03:45 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 54DB53815DC; Mon, 29 Sep 2025 13:54:30 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 3CEC838156E
	for <lists+speakup@lfdr.de>; Mon, 29 Sep 2025 13:54:30 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 4718738156E; Mon, 29 Sep 2025 13:54:26 -0400 (EDT)
Received: from sonata.ens-lyon.org (sonata.ens-lyon.org [140.77.166.138])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 09B9338156A
	for <speakup@linux-speakup.org>; Mon, 29 Sep 2025 13:54:26 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by sonata.ens-lyon.org (Postfix) with ESMTP id 537A6A73B3;
	Mon, 29 Sep 2025 19:54:16 +0200 (CEST)
Received: from sonata.ens-lyon.org ([127.0.0.1])
	by localhost (sonata.ens-lyon.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UoYMWdPKLew2; Mon, 29 Sep 2025 19:54:16 +0200 (CEST)
Received: from begin.home (aamiens-653-1-40-48.w83-192.abo.wanadoo.fr [83.192.199.48])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by sonata.ens-lyon.org (Postfix) with ESMTPSA id 4E869A0262;
	Mon, 29 Sep 2025 19:54:15 +0200 (CEST)
Received: from samy by begin.home with local (Exim 4.98.2)
	(envelope-from <samuel.thibault@ens-lyon.org>)
	id 1v3I4k-00000005MJZ-2MWB;
	Mon, 29 Sep 2025 19:54:14 +0200
Date: Mon, 29 Sep 2025 19:54:14 +0200
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: Pavel Zhigulin <Pavel.Zhigulin@kaspersky.com>
Cc: William Hubbs <w.d.hubbs@gmail.com>,
	Chris Brannon <chris@the-brannons.com>,
	Kirk Reiser <kirk@reisers.ca>, speakup@linux-speakup.org,
	linux-kernel@vger.kernel.org, lvc-project@linuxtesting.org
Subject: Re: [PATCH v2] speakup: keyhelp: guard letter_offsets possible
 out-of-range indexing
Message-ID: <aNrHxtOpz9wxnY_0@begin>
Mail-Followup-To: Samuel Thibault <samuel.thibault@ens-lyon.org>,
	Pavel Zhigulin <Pavel.Zhigulin@kaspersky.com>,
	William Hubbs <w.d.hubbs@gmail.com>,
	Chris Brannon <chris@the-brannons.com>,
	Kirk Reiser <kirk@reisers.ca>, speakup@linux-speakup.org,
	linux-kernel@vger.kernel.org, lvc-project@linuxtesting.org
References: <20250929110346.2674287-1-Pavel.Zhigulin@kaspersky.com>
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
In-Reply-To: <20250929110346.2674287-1-Pavel.Zhigulin@kaspersky.com>
Organization: I am not organized
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Pavel Zhigulin, le lun. 29 sept. 2025 14:03:45 +0300, a ecrit:
> help_init() builds letter_offsets[] by using the first byte of each
> function name as an index via `(start & 31) - 1`. If function_names are
> overridden from sysfs (root) with a name starting outside [a–z], the
> index underflows or exceeds the array, leading to OOB write.
> 
> Function names can be overridden with the following commands as root:
> 
>     modprobe speakup_soft
>     echo "0 _bad" > /sys/accessibility/speakup/i18n/function_names
>     # then press Insert+2 on /dev/tty
> 
> This fix checks the first letter in help_init(), and if it is not in the
> [a–z] range the function returns an error to the caller. Eventually this
> error is propagated to drivers/accessibility/speakup/main.c:2217, which
> causes a bleep sound.
> 
> Fixes: c6e3fd22cd53 ("Staging: add speakup to the staging directory")
> Signed-off-by: Pavel Zhigulin <Pavel.Zhigulin@kaspersky.com>

Reviewed-by: Samuel Thibault <samuel.thibault@ens-lyon.org>

Thanks!


> ---
> v2: Use a proper commit in the 'Fixes' trailer. Remove the redundant
> NULL check in help_init() and make it return void as
> Samuel Thibault <samuel.thibault@ens-lyon.org> suggested during
> review.
> 
>  drivers/accessibility/speakup/keyhelp.c | 17 ++++++++++++-----
>  1 file changed, 12 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/accessibility/speakup/keyhelp.c b/drivers/accessibility/speakup/keyhelp.c
> index 822ceac83068..e632c53d6246 100644
> --- a/drivers/accessibility/speakup/keyhelp.c
> +++ b/drivers/accessibility/speakup/keyhelp.c
> @@ -8,6 +8,7 @@
>   */
> 
>  #include <linux/keyboard.h>
> +#include <linux/ctype.h>
>  #include "spk_priv.h"
>  #include "speakup.h"
> 
> @@ -111,7 +112,7 @@ static void say_key(int key)
>  			     spk_msg_get(MSG_KEYNAMES_START + (key - 1)));
>  }
> 
> -static int help_init(void)
> +static void help_init(void)
>  {
>  	char start = SPACE;
>  	int i;
> @@ -120,13 +121,19 @@ static int help_init(void)
>  	state_tbl = spk_our_keys[0] + SHIFT_TBL_SIZE + 2;
>  	for (i = 0; i < num_funcs; i++) {
>  		char *cur_funcname = spk_msg_get(MSG_FUNCNAMES_START + i);
> +		char first_letter;
> 
> -		if (start == *cur_funcname)
> +		first_letter = tolower(*cur_funcname);
> +
> +		/* Accept only 'a'..'z' to index letter_offsets[] safely */
> +		if (first_letter < 'a' || first_letter > 'z')
> +			continue;
> +
> +		if (start == first_letter)
>  			continue;
> -		start = *cur_funcname;
> +		start = first_letter;
>  		letter_offsets[(start & 31) - 1] = i;
>  	}
> -	return 0;
>  }
> 
>  int spk_handle_help(struct vc_data *vc, u_char type, u_char ch, u_short key)
> @@ -144,7 +151,7 @@ int spk_handle_help(struct vc_data *vc, u_char type, u_char ch, u_short key)
>  			synth_printf("%s\n", spk_msg_get(MSG_LEAVING_HELP));
>  			return 1;
>  		}
> -		ch |= 32; /* lower case */
> +		ch = tolower(ch);
>  		if (ch < 'a' || ch > 'z')
>  			return -1;
>  		if (letter_offsets[ch - 'a'] == -1) {
> --
> 2.43.0
> 

-- 
Samuel
 RM> Mauvais OS, changer d'OS (c)(r)(tm)
 J'ai windows 98 et comment faire pour changer l'os de windows 98?
 Dans ajout et suppression du programme et il ne parle pas d'os.
 -+- DN in : GNU -+- L'O.S. est las, hélas, c'est là qu'est l'os -+-

