Return-Path: <speakup+bounces-1090-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 6BADF87A605
	for <lists+speakup@lfdr.de>; Wed, 13 Mar 2024 11:40:25 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 46035382660; Wed, 13 Mar 2024 06:40:24 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 2EDC33820D4
	for <lists+speakup@lfdr.de>; Wed, 13 Mar 2024 06:40:24 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 041943822AA; Wed, 13 Mar 2024 06:40:20 -0400 (EDT)
Received: from sonata.ens-lyon.org (sonata.ens-lyon.org [140.77.166.138])
	by befuddled.reisers.ca (Postfix) with ESMTPS id C45623820AD
	for <speakup@linux-speakup.org>; Wed, 13 Mar 2024 06:40:19 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by sonata.ens-lyon.org (Postfix) with ESMTP id B175DA01B6;
	Wed, 13 Mar 2024 11:40:15 +0100 (CET)
Received: from sonata.ens-lyon.org ([127.0.0.1])
	by localhost (sonata.ens-lyon.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 67qlf_VEHszX; Wed, 13 Mar 2024 11:40:15 +0100 (CET)
Received: from begin (nat-inria-interne-52-gw-01-bso.bordeaux.inria.fr [194.199.1.52])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by sonata.ens-lyon.org (Postfix) with ESMTPSA id C630EA01AB;
	Wed, 13 Mar 2024 11:40:14 +0100 (CET)
Received: from samy by begin with local (Exim 4.97)
	(envelope-from <samuel.thibault@ens-lyon.org>)
	id 1rkM1u-000000009Kn-1rvr;
	Wed, 13 Mar 2024 11:40:14 +0100
Date: Wed, 13 Mar 2024 11:40:14 +0100
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: Arnd Bergmann <arnd@kernel.org>
Cc: William Hubbs <w.d.hubbs@gmail.com>,
	Chris Brannon <chris@the-brannons.com>,
	Kirk Reiser <kirk@reisers.ca>,
	Nathan Chancellor <nathan@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Bill Wendling <morbo@google.com>,
	Justin Stitt <justinstitt@google.com>, speakup@linux-speakup.org,
	linux-kernel@vger.kernel.org, llvm@lists.linux.dev
Subject: Re: [PATCH] speakup: devsynth: remove c23 label
Message-ID: <20240313104014.thhiz2pektmqun4b@begin>
Mail-Followup-To: Samuel Thibault <samuel.thibault@ens-lyon.org>,
	Arnd Bergmann <arnd@kernel.org>,
	William Hubbs <w.d.hubbs@gmail.com>,
	Chris Brannon <chris@the-brannons.com>,
	Kirk Reiser <kirk@reisers.ca>,
	Nathan Chancellor <nathan@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Bill Wendling <morbo@google.com>,
	Justin Stitt <justinstitt@google.com>, speakup@linux-speakup.org,
	linux-kernel@vger.kernel.org, llvm@lists.linux.dev
References: <20240313100413.875280-1-arnd@kernel.org>
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
In-Reply-To: <20240313100413.875280-1-arnd@kernel.org>
Organization: I am not organized
User-Agent: NeoMutt/20170609 (1.8.3)
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hello,

I have already sent a fix to greg.

("speakup: Fix warning for label at end of compound statement")

Samuel

Arnd Bergmann, le mer. 13 mars 2024 11:04:03 +0100, a ecrit:
> From: Arnd Bergmann <arnd@arndb.de>
> 
> clang-16 and higher warn about a c23 C extension that is also a GNU extension:
> 
> drivers/accessibility/speakup/devsynth.c:111:3: error: label at end of compound statement is a C23 extension [-Werror,-Wc23-extensions]
> 
> clang-15 just produces an error here:
> 
> drivers/accessibility/speakup/devsynth.c:111:3: error: expected statement
> 
> This is apparently the only such warning in the kernel tree at the moment,
> so just convert it into standard C code using the equivalent 'continue'
> keyword.
> 
> Fixes: 807977260ae4 ("speakup: Add /dev/synthu device")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  drivers/accessibility/speakup/devsynth.c | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/accessibility/speakup/devsynth.c b/drivers/accessibility/speakup/devsynth.c
> index da4d0f6aa5bf..76b5e942dc1b 100644
> --- a/drivers/accessibility/speakup/devsynth.c
> +++ b/drivers/accessibility/speakup/devsynth.c
> @@ -68,7 +68,7 @@ static ssize_t speakup_file_writeu(struct file *fp, const char __user *buffer,
>  			case 7: /* 0xfe */
>  			case 1: /* 0x80 */
>  				/* Invalid, drop */
> -				goto drop;
> +				continue;
>  
>  			case 0:
>  				/* ASCII, copy */
> @@ -96,7 +96,7 @@ static ssize_t speakup_file_writeu(struct file *fp, const char __user *buffer,
>  					if ((c & 0xc0) != 0x80)	{
>  						/* Invalid, drop the head */
>  						want = 1;
> -						goto drop;
> +						continue;
>  					}
>  					value = (value << 6) | (c & 0x3f);
>  					in++;
> @@ -107,7 +107,6 @@ static ssize_t speakup_file_writeu(struct file *fp, const char __user *buffer,
>  				want = 1;
>  				break;
>  			}
> -drop:
>  		}
>  
>  		count -= bytes;
> -- 
> 2.39.2
> 

-- 
Samuel
---
Pour une évaluation indépendante, transparente et rigoureuse !
Je soutiens la Commission d'Évaluation de l'Inria.

