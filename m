Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 239D21DE2ED
	for <lists+speakup@lfdr.de>; Fri, 22 May 2020 11:23:03 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 46FC61C0D5C; Fri, 22 May 2020 05:23:01 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id B9E371C0D51;
	Fri, 22 May 2020 05:22:05 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 799BF1C0D4C; Fri, 22 May 2020 05:21:59 -0400 (EDT)
Received: from hera.aquilenet.fr (hera.aquilenet.fr [185.233.100.1])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 82C371C07F4
 for <speakup@linux-speakup.org>; Fri, 22 May 2020 05:21:57 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
 by hera.aquilenet.fr (Postfix) with ESMTP id 1F7462D2B;
 Fri, 22 May 2020 11:21:50 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
 by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OYOLJKbB0yKe; Fri, 22 May 2020 11:21:48 +0200 (CEST)
Received: from function (lfbn-bor-1-797-11.w86-234.abo.wanadoo.fr
 [86.234.239.11])
 by hera.aquilenet.fr (Postfix) with ESMTPSA id 3DEC82C0C;
 Fri, 22 May 2020 11:21:48 +0200 (CEST)
Received: from samy by function with local (Exim 4.93)
 (envelope-from <samuel.thibault@ens-lyon.org>)
 id 1jc3sA-00GDlb-Nu; Fri, 22 May 2020 11:21:46 +0200
Date: Fri, 22 May 2020 11:21:46 +0200
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: MugilRaj <dmugil2000@gmail.com>
Subject: Re: [PATCH] taging: speakup: remove volatile
Message-ID: <20200522092146.6ijoma4re7ijai7a@function>
Mail-Followup-To: Samuel Thibault <samuel.thibault@ens-lyon.org>,
 MugilRaj <dmugil2000@gmail.com>,
 William Hubbs <w.d.hubbs@gmail.com>,
 Chris Brannon <chris@the-brannons.com>,
 Kirk Reiser <kirk@reisers.ca>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 speakup@linux-speakup.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
References: <1590138989-6091-1-git-send-email-dmugil2000@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1590138989-6091-1-git-send-email-dmugil2000@gmail.com>
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
Cc: devel@driverdev.osuosl.org, William Hubbs <w.d.hubbs@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, speakup@linux-speakup.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

Hello,

MugilRaj, le ven. 22 mai 2020 14:46:28 +0530, a ecrit:
> fix checkpatch.pl warning, which is Use of volatile is usually wrong: see
> Documentation/process/volatile-considered-harmful.rst

Yes, but the proper fix is usually not to just remove the volatile
qualifier, which will not fix anything and potentially break things.

Fixing this requires really understanding what is at stake here, between
the read_buff_add function and the use of synth_full(). That goes
through interrupt handlers, tty disciplines, and the actual behavior
expected by speakup. Not a simple task, henceforth :)

> Signed-off-by: MugilRaj <dmugil2000@gmail.com>
> ---
>  drivers/staging/speakup/speakup_decext.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/speakup/speakup_decext.c b/drivers/staging/speakup/speakup_decext.c
> index ddbb7e9..22baaeb 100644
> --- a/drivers/staging/speakup/speakup_decext.c
> +++ b/drivers/staging/speakup/speakup_decext.c
> @@ -21,7 +21,7 @@
>  #define SYNTH_CLEAR 0x03
>  #define PROCSPEECH 0x0b
>  
> -static volatile unsigned char last_char;
> +static unsigned char last_char;
>  
>  static void read_buff_add(u_char ch)
>  {
> -- 
> 2.7.4
> 
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
