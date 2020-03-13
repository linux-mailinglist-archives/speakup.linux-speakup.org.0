Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from grumpy.reisers.ca (grumpy.reisers.ca [206.248.184.126])
	by mail.lfdr.de (Postfix) with ESMTP id E6D61185278
	for <lists+speakup@lfdr.de>; Sat, 14 Mar 2020 00:50:24 +0100 (CET)
Received: by grumpy.reisers.ca (Postfix, from userid 65534)
	id 4415342804A0; Fri, 13 Mar 2020 19:50:24 -0400 (EDT)
Authentication-Results: grumpy.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.b="gIyweASh";
	dkim-atps=neutral
Received: from befuddled.reisers.ca (unknown [10.10.10.10])
	by grumpy.reisers.ca (Postfix) with ESMTP id 6D5534280463
	for <lists+speakup@lfdr.de>; Fri, 13 Mar 2020 19:50:23 -0400 (EDT)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 58D051C57FC; Fri, 13 Mar 2020 19:50:23 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=gIyweASh;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id D1E481C57EA;
	Fri, 13 Mar 2020 19:48:44 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id BBB0C1C57EA; Fri, 13 Mar 2020 19:48:37 -0400 (EDT)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 7C5C41C2DAB
 for <speakup@linux-speakup.org>; Fri, 13 Mar 2020 19:48:34 -0400 (EDT)
Received: from vbox.gregn.net (unknown
 [IPv6:2607:fb90:9c30:3d49:a00:27ff:fe01:8e92])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by vserver.gregn.net (Postfix) with ESMTPSA id CB571BE2;
 Fri, 13 Mar 2020 16:48:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gregn.net; s=default;
 t=1584143338; bh=g8bpzFxnmIyg+FxCUieCTXrC6cir1tSTbELg1bOFclQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=gIyweAShklya4isZZzo5ek19lIunDsaD6D7gW72xkrBaXmTl3pEepxBoVBOq3iTiv
 nhVEFhCyB6fd0MUK7p6tRjjK3nJspiPpi7CsejUUhNgESWuQJfyPCgYFPtMR2Ppmsw
 zZyrJQa/gqsgR+HsaoZIalB1frmHwExtHoYsgnFP3M6zlAlV/cZ2b2GAxGRVggft3k
 A+4CtCrUyhl9Wut/EfBgRytKpj/oWFjrRhqMpHO2FR3p4s1zKQsn9+HRx2YnKTNtbb
 U1DRSHu5TZ5ktkrgz0Nj9PReD3HvgMOOuFuEO5hy0o/gtEhw3wdyCUCK1ElC6KYfgg
 fd6iwi6URAwfg==
Received: from greg by vbox.gregn.net with local (Exim 4.84_2)
 (envelope-from <greg@gregn.net>)
 id 1jCu25-0007Pb-SO; Fri, 13 Mar 2020 16:48:01 -0700
Date: Fri, 13 Mar 2020 16:48:01 -0700
From: Gregory Nowak <greg@gregn.net>
To: Samuel Thibault <samuel.thibault@ens-lyon.org>
Subject: Re: speakup on latest kernels
Message-ID: <20200313234801.GA28428@gregn.net>
References: <77f47396-554f-3d0a-fd9d-fc760ecb2dfe@the-brannons.com>
 <20200130053303.GA4319@gregn.net>
 <9ca2e37d-f293-9b7b-80a2-177cbccfb08e@gmail.com>
 <alpine.NEB.2.21.2001301518500.16863@panix1.panix.com>
 <20200303131128.7d4uitw7feevimoj@function>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200303131128.7d4uitw7feevimoj@function>
X-PGP-Key: http://www.gregn.net/pubkey.asc
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Virus-Scanned: clamav-milter 0.102.2 at vserver
X-Virus-Status: Clean
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
Cc: Janina Sajka <janina@rednote.net>,
 "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

I see this patch has been added to Greg Kh's staging repo. I just
wanted to share I've been using a kernel with this patch applied for a
week on both my desktop and laptop systems with no crashes at
all. Thanks.

Greg


On Tue, Mar 03, 2020 at 02:11:28PM +0100, Samuel Thibault wrote:
> Hello,
> 
> For people who have had crashes with latest kernels and can rebuild
> their own kernel, could you try to apply the attached patch? It seems to
> be fixing things and for sure would trigger crashes when doing get_word
> while speakup is on a space. The issue has been there for at least 10
> years, it's a bit crazy that only now we have crashes with it :)
> 
> Samuel

> commit 72c8cfdd58ad6a39002f4ae93752ee28d567b69f
> Author: Samuel Thibault <samuel.thibault@ens-lyon.org>
> Date:   Tue Mar 3 01:24:24 2020 +0100
> 
>     speakup: fix get_word non-space look-ahead
>     
>     get_char was erroneously given the address of the pointer to the text
>     instead of the address of the text, thus leading to random crashes when
>     the user requests speaking a word while the current position is on a space
>     character and say_word_ctl is not enabled.
>     
>     Cc: stable@vger.kernel.org
>     Reported-on: https://github.com/bytefire/speakup/issues/1
>     Reported-by: Kirk Reiser <kirk@reisers.ca>
>     Reported-by: Janina Sajka <janina@rednote.net>
>     Reported-by: Alexandr Epaneshnikov <aarnaarn2@gmail.com>
>     Reported-by: Gregory Nowak <greg@gregn.net>
>     Reported-by: deedra waters <deedra@the-brannons.com>
>     Signed-off-by: Samuel Thibault <samuel.thibault@ens-lyon.org>
>     TODO: Tested-by: Alexandr Epaneshnikov <aarnaarn2@gmail.com>
> 
> diff --git a/drivers/staging/speakup/main.c b/drivers/staging/speakup/main.c
> index 488f2539aa9a..81ecfd1a200d 100644
> --- a/drivers/staging/speakup/main.c
> +++ b/drivers/staging/speakup/main.c
> @@ -561,7 +561,7 @@ static u_long get_word(struct vc_data *vc)
>  		return 0;
>  	} else if (tmpx < vc->vc_cols - 2 &&
>  		   (ch == SPACE || ch == 0 || (ch < 0x100 && IS_WDLM(ch))) &&
> -		   get_char(vc, (u_short *)&tmp_pos + 1, &temp) > SPACE) {
> +		   get_char(vc, (u_short *)tmp_pos + 1, &temp) > SPACE) {
>  		tmp_pos += 2;
>  		tmpx++;
>  	} else {


-- 
web site: http://www.gregn.net
gpg public key: http://www.gregn.net/pubkey.asc
skype: gregn1
(authorization required, add me to your contacts list first)
If we haven't been in touch before, e-mail me before adding me to your contacts.

--
Free domains: http://www.eu.org/ or mail dns-manager@EU.org
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
