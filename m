Return-Path: <speakup+bounces-1097-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id DD95888CA5D
	for <lists+speakup@lfdr.de>; Tue, 26 Mar 2024 18:10:29 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="key not found in DNS" header.d=slint.fr header.i=@slint.fr header.a=rsa-sha256 header.s=default header.b=Y3teq+d4;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 58AD5C81C75; Tue, 26 Mar 2024 13:10:27 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 38009C8104A
	for <lists+speakup@lfdr.de>; Tue, 26 Mar 2024 13:10:27 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id D5A17C8104F; Tue, 26 Mar 2024 13:10:18 -0400 (EDT)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79])
	by befuddled.reisers.ca (Postfix) with ESMTP id EBD00C8104A
	for <speakup@linux-speakup.org>; Tue, 26 Mar 2024 13:10:15 -0400 (EDT)
Received: from [192.168.1.186] (212-194-64-62.abo.bbox.fr [212.194.64.62])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 7B8CC625C8
	for <speakup@linux-speakup.org>; Tue, 26 Mar 2024 18:09:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=slint.fr; s=default;
	t=1711472956; bh=eXXnbJ9HMggWNtTFJLV4kpSsiTZJuwIoZ6BKVv+oDa4=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=Y3teq+d4LarACjPttG/cUGTBEyZK3t0iLVYgZwGI7YHcBfye7k6k3IY3EE2JBm8B2
	 UjJQiwi+ptxdlaVezQCQNrsEeQX29d9XA41WAu242UMBQiIQ6hJxdaYtIzpzE3PbC+
	 X23tJCkZgM28WHcEU/PaMy8gkeIRWn9//H4FR8gcellDYFlEIvM3FKpqHQQo4kYZcz
	 hxNKx/BP9LjiH9ulnjZSHmtpeXWzYZTtFY96fJ18rhHeFaua289PfycJegg1qPQp2m
	 S99fySHTW7APUj0tWl98UdKMOH7n68eTC7ouf85JMbMeRhD35zaaN54FIQ/1wzJAT9
	 eXQPYTC7wiIfQ==
Message-ID: <2ef1d1aa-fd50-44eb-bbba-8a059a5df591@slint.fr>
Date: Tue, 26 Mar 2024 18:10:12 +0100
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] speakup: Turn i18n files utf-8
To: speakup@linux-speakup.org
References: <20240323164247.1388441-1-samuel.thibault@ens-lyon.org>
Content-Language: en-US
From: Didier Spaier <didier@slint.fr>
Autocrypt: addr=didier@slint.fr; keydata=
 xsBNBFY6fG8BCADH4Hf/OaE2MwXRFMrU/9oDd+YPqR/wkhmIv0veDio84fsWA5qMz1De7TEv
 dNuxIVYTznuVOd/9lpdfxQ1KV9rgD7yoBPLmjbQA1vVjB+1QylIQUV0B9AYFUsxZP32Ic2pg
 TS3US/WiZyx+/jS50ri4kvT9iDtIEu7WBWFr8YMOoq3oLkHI8Y7gBG0WsK9XYN09glhtI+bA
 jLPr/ezwEg5M3FDb4U7XFq7GcA6EEzanKMAOHdZl3lta7dv5gpgdj+38j5jPfV1cJW+J1fha
 63X72xxXGs7V6J7NGpnW7SAKfTAMXsPXZwwGIuqMQs1Z89I+2ZPJPOoV8zMncTsWzHStABEB
 AAHNH0RpZGllciBTcGFpZXIgPGRpZGllckBzbGludC5mcj7CwHkEEwEKACMCGwMHCwkIBwMC
 AQYVCAIJCgsEFgIDAQIeAQIXgAUCYZVPGAAKCRDVAgLvYMA+6pOxCADB2pKmm/LgncWREzob
 Z6M+RsvgzvGS/48ik/E/TH2KyPO/hn+Fzbj4MmMwQdqz5YPfdBmkcM7WyDzkPaukzfS8QUvl
 VKyWQ92pqpbI/JUeShI+DLMKV7LZxiPinMBuKmpyLdpxuhk08g2+6F8X6ztbl8mbXQy5jcIZ
 zKQ442N0D4wnn8VXM0tb0uonmqc6ly7dcmkQ/GI7Q0tF/hkn4n3g1Lh6+K1jBqEIC9vn/c6X
 yf67ec+CwbE0GtgVM1FR1R0J1y/6vkYWr7gZHhnzgwKr6k1wzCGkVUyCSpFwB2oeANT9c0qP
 rgn4YjoYQIHS3vMWd630vRyOfqwetWXmVjPxzsBNBFY6fG8BCACqDQKHSw0ElDkwPPpNguL0
 ujOyygO30xlLyfW9pWOEycHSLhLzvDTlFkvr5IxvyCDBIFBdzpkeQqh1+ZxrFliwWyj+9/ro
 JlIjxeAyNs2xQZ7tQM6K5xtbUs8O5YtkCCO3OegAiLgmzzgxes79Qy+V3ciKbl+vrsNu7T9r
 o3zZhyinci1eOCcKEtXFPQW5P4woB+6+JheN9pIiDkjojmdC+xkvDadP7kJYKp19Itys/CbN
 vxEoOLsgeJhsZSmNU2QNhXkLfr7+AC99fb/c5ZDTNPRBqgLJCp+gTxn1QVJrAbq2OP3refmS
 RxdA3yUDMjxEeHwDNZJL9aEtTDlTzPk5ABEBAAHCwF8EGAEKAAkCGwwFAmGVT44ACgkQ1QIC
 72DAPuqjhwgApl0pdNIrbU+8Hn0mr3CTEXxPaTbAU2bYFPDiBaEvXsBGoz8xJ6EZQnywbC7o
 l5wFtVT08LKDewLHaL78zS+Q8rv5sNmWwzMAaipFtZg67e/rU3V5tw4E12nUghyMzQpngUur
 lZPMFlB9IZN9681cXuv2sZzAZlR2+3PsSAftpPQxReoSC7hj3dfiCiAis19G3A184HClA5MB
 I5heGinSz7R/AXhkiej8HZZzz9ZPkS7aeL8HsZKqCwZvViutbGmpm+V70JnbRAHLFjYb+Se3
 rdUWWAXcca4Ry8HCLTo5iK9xCTQh5gEuJ7ROdOXeY4SvMiqWjYhlrsR0qhTv9q/gfg==
In-Reply-To: <20240323164247.1388441-1-samuel.thibault@ens-lyon.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

And these patches are making the headlines somewhere :)
https://www.phoronix.com/news/Linux-6.9-Speakup-Driver

Cheers,
Didier


Le 23/03/2024 à 17:42, Samuel Thibault a écrit :
> i18n currently assume latin1 encoding, which is not enough for most
> languages.
> 
> This separates out the utf-8 processing of /dev/synthu, and uses it for
> a new synth_writeu, which we make synth_printf now use. This has the
> effect of making all the i18 messages processed in utf-8.
> 
> Signed-off-by: Samuel Thibault <samuel.thibault@ens-lyon.org>
> ---
>  drivers/accessibility/speakup/devsynth.c | 59 ++++-----------
>  drivers/accessibility/speakup/speakup.h  |  2 +
>  drivers/accessibility/speakup/synth.c    | 92 ++++++++++++++++++++++--
>  3 files changed, 102 insertions(+), 51 deletions(-)
> 
> diff --git a/drivers/accessibility/speakup/devsynth.c b/drivers/accessibility/speakup/devsynth.c
> index 674204ee5a85..e3d909bd0480 100644
> --- a/drivers/accessibility/speakup/devsynth.c
> +++ b/drivers/accessibility/speakup/devsynth.c
> @@ -39,13 +39,13 @@ static ssize_t speakup_file_write(struct file *fp, const char __user *buffer,
>  static ssize_t speakup_file_writeu(struct file *fp, const char __user *buffer,
>  				   size_t nbytes, loff_t *ppos)
>  {
> -	size_t count = nbytes, want;
> +	size_t count = nbytes, consumed, want;
>  	const char __user *ptr = buffer;
>  	size_t bytes;
>  	unsigned long flags;
>  	unsigned char buf[256];
>  	u16 ubuf[256];
> -	size_t in, in2, out;
> +	size_t in, out;
>  
>  	if (!synth)
>  		return -ENODEV;
> @@ -58,57 +58,24 @@ static ssize_t speakup_file_writeu(struct file *fp, const char __user *buffer,
>  			return -EFAULT;
>  
>  		/* Convert to u16 */
> -		for (in = 0, out = 0; in < bytes; in++) {
> -			unsigned char c = buf[in];
> -			int nbytes = 8 - fls(c ^ 0xff);
> -			u32 value;
> -
> -			switch (nbytes) {
> -			case 8: /* 0xff */
> -			case 7: /* 0xfe */
> -			case 1: /* 0x80 */
> -				/* Invalid, drop */
> -				goto drop;
> -
> -			case 0:
> -				/* ASCII, copy */
> -				ubuf[out++] = c;
> -				continue;
> +		for (in = 0, out = 0; in < bytes; in += consumed) {
> +			s32 value;
>  
> -			default:
> -				/* 2..6-byte UTF-8 */
> +			value = synth_utf8_get(buf + in, bytes - in, &consumed, &want);
> +			if (value == -1) {
> +				/* Invalid or incomplete */
>  
> -				if (bytes - in < nbytes) {
> +				if (want > bytes - in)
>  					/* We don't have it all yet, stop here
>  					 * and wait for the rest
>  					 */
>  					bytes = in;
> -					want = nbytes;
> -					continue;
> -				}
> -
> -				/* First byte */
> -				value = c & ((1u << (7 - nbytes)) - 1);
> -
> -				/* Other bytes */
> -				for (in2 = 2; in2 <= nbytes; in2++) {
> -					c = buf[in + 1];
> -					if ((c & 0xc0) != 0x80)	{
> -						/* Invalid, drop the head */
> -						want = 1;
> -						goto drop;
> -					}
> -					value = (value << 6) | (c & 0x3f);
> -					in++;
> -				}
> -
> -				if (value < 0x10000)
> -					ubuf[out++] = value;
> -				want = 1;
> -				break;
> +
> +				continue;
>  			}
> -drop:
> -			;
> +
> +			if (value < 0x10000)
> +				ubuf[out++] = value;
>  		}
>  
>  		count -= bytes;
> diff --git a/drivers/accessibility/speakup/speakup.h b/drivers/accessibility/speakup/speakup.h
> index 364fde99749e..54f1226ea061 100644
> --- a/drivers/accessibility/speakup/speakup.h
> +++ b/drivers/accessibility/speakup/speakup.h
> @@ -76,7 +76,9 @@ int speakup_paste_selection(struct tty_struct *tty);
>  void speakup_cancel_paste(void);
>  void speakup_register_devsynth(void);
>  void speakup_unregister_devsynth(void);
> +s32 synth_utf8_get(const char *buf, size_t count, size_t *consumed, size_t *want);
>  void synth_write(const char *buf, size_t count);
> +void synth_writeu(const char *buf, size_t count);
>  int synth_supports_indexing(void);
>  
>  extern struct vc_data *spk_sel_cons;
> diff --git a/drivers/accessibility/speakup/synth.c b/drivers/accessibility/speakup/synth.c
> index eea2a2fa4f01..c6339758fa67 100644
> --- a/drivers/accessibility/speakup/synth.c
> +++ b/drivers/accessibility/speakup/synth.c
> @@ -215,10 +215,95 @@ void synth_write(const char *buf, size_t count)
>  	synth_start();
>  }
>  
> +/* Consume one utf-8 character from buf (that contains up to count bytes),
> + * returns the unicode codepoint if valid, -1 otherwise.
> + * In all cases, returns the number of consumed bytes in *consumed,
> + * and the minimum number of bytes that would be needed for the next character
> + * in *want.
> + */
> +s32 synth_utf8_get(const char *buf, size_t count, size_t *consumed, size_t *want)
> +{
> +	unsigned char c = buf[0];
> +	int nbytes = 8 - fls(c ^ 0xff);
> +	u32 value;
> +	size_t i;
> +
> +	switch (nbytes) {
> +	case 8: /* 0xff */
> +	case 7: /* 0xfe */
> +	case 1: /* 0x80 */
> +		/* Invalid, drop */
> +		*consumed = 1;
> +		*want = 1;
> +		return -1;
> +
> +	case 0:
> +		/* ASCII, take as such */
> +		*consumed = 1;
> +		*want = 1;
> +		return c;
> +
> +	default:
> +		/* 2..6-byte UTF-8 */
> +
> +		if (count < nbytes) {
> +			/* We don't have it all */
> +			*consumed = 0;
> +			*want = nbytes;
> +			return -1;
> +		}
> +
> +		/* First byte */
> +		value = c & ((1u << (7 - nbytes)) - 1);
> +
> +		/* Other bytes */
> +		for (i = 1; i < nbytes; i++) {
> +			c = buf[i];
> +			if ((c & 0xc0) != 0x80)	{
> +				/* Invalid, drop the head */
> +				*consumed = i;
> +				*want = 1;
> +				return -1;
> +			}
> +			value = (value << 6) | (c & 0x3f);
> +		}
> +
> +		*consumed = nbytes;
> +		*want = 1;
> +		return value;
> +	}
> +}
> +
> +void synth_writeu(const char *buf, size_t count)
> +{
> +	size_t i, consumed, want;
> +
> +	/* Convert to u16 */
> +	for (i = 0; i < count; i++) {
> +		s32 value;
> +
> +		value = synth_utf8_get(buf + i, count - i, &consumed, &want);
> +		if (value == -1) {
> +			/* Invalid or incomplete */
> +
> +			if (want > count - i)
> +				/* We don't have it all, stop */
> +				count = i;
> +
> +			continue;
> +		}
> +
> +		if (value < 0x10000)
> +			synth_buffer_add(value);
> +	}
> +
> +	synth_start();
> +}
> +
>  void synth_printf(const char *fmt, ...)
>  {
>  	va_list args;
> -	unsigned char buf[160], *p;
> +	unsigned char buf[160];
>  	int r;
>  
>  	va_start(args, fmt);
> @@ -227,10 +312,7 @@ void synth_printf(const char *fmt, ...)
>  	if (r > sizeof(buf) - 1)
>  		r = sizeof(buf) - 1;
>  
> -	p = buf;
> -	while (r--)
> -		synth_buffer_add(*p++);
> -	synth_start();
> +	synth_writeu(buf, r);
>  }
>  EXPORT_SYMBOL_GPL(synth_printf);
>  

