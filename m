Return-Path: <speakup+bounces-1077-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 46B86848F22
	for <lists+speakup@lfdr.de>; Sun,  4 Feb 2024 17:07:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1707062842;
	bh=tWnu2y4zJ6KFIND6qBtnbCYUimzDqDUKamLNQO3cP9g=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Post:List-Help:List-Subscribe:From;
	b=uZd2zTlz/fnHAAB1k9yIfik6mTd0VhKOHFi97wR4bIpwWLEvLltA5+A7esYGek8EC
	 b/nmdplB2s4SzemaPC5/NJu829+1yY4Y8C4Srlba5PbjdTLqNZElXFcyiK7shN/9u6
	 kVW+ejp5kyMQqdGLnoOzRakNzoEA8vNP3OXng78c=
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id AE458382789; Sun,  4 Feb 2024 11:07:22 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1707062842;
	bh=tWnu2y4zJ6KFIND6qBtnbCYUimzDqDUKamLNQO3cP9g=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Post:List-Help:List-Subscribe:From;
	b=uZd2zTlz/fnHAAB1k9yIfik6mTd0VhKOHFi97wR4bIpwWLEvLltA5+A7esYGek8EC
	 b/nmdplB2s4SzemaPC5/NJu829+1yY4Y8C4Srlba5PbjdTLqNZElXFcyiK7shN/9u6
	 kVW+ejp5kyMQqdGLnoOzRakNzoEA8vNP3OXng78c=
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 8C102382529
	for <lists+speakup@lfdr.de>; Sun,  4 Feb 2024 11:07:22 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1707062834;
	bh=tWnu2y4zJ6KFIND6qBtnbCYUimzDqDUKamLNQO3cP9g=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:From;
	b=KClBTr3RlOOGaORXGkA8W8w0+4zY707YIQdEz7scbfTdPfyNgVvMsmaxHFys9Xw1v
	 k7xvxY9le7yEKGGQnUnqkeyeP6BikEyn9f/foLh9A5jQMBHUKntJ5S6BA5f2UqboDG
	 7+aoMbKx1O9z2wuqv+kP5qnkSR/PemFQ1/NBkFDU=
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id E818A382660; Sun,  4 Feb 2024 11:07:14 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1707062834;
	bh=tWnu2y4zJ6KFIND6qBtnbCYUimzDqDUKamLNQO3cP9g=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:From;
	b=KClBTr3RlOOGaORXGkA8W8w0+4zY707YIQdEz7scbfTdPfyNgVvMsmaxHFys9Xw1v
	 k7xvxY9le7yEKGGQnUnqkeyeP6BikEyn9f/foLh9A5jQMBHUKntJ5S6BA5f2UqboDG
	 7+aoMbKx1O9z2wuqv+kP5qnkSR/PemFQ1/NBkFDU=
Received: from localhost (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 3BB4238251B;
	Sun,  4 Feb 2024 11:07:14 -0500 (EST)
Date: Sun, 4 Feb 2024 11:07:14 -0500 (EST)
From: Kirk Reiser <kirk@reisers.ca>
To: Samuel Thibault <samuel.thibault@ens-lyon.org>
cc: gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org, 
    speakup@linux-speakup.org
Subject: Re: [PATCH] speakup: Add /dev/synthu device
In-Reply-To: <20240204155825.ditstifsbqndnce3@begin>
Message-ID: <eacaf4db-5b1e-e42e-96aa-3c803fda9180@reisers.ca>
References: <20240204155825.ditstifsbqndnce3@begin>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII; format=flowed
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Samuel: Would you possibly look into passing the characters from
saychar and it's family through to the softsynu device? There is a
disconnect because espeakup/espeak-ng pronounces characters one way
and the chartab look up has a different way of saying them. I believe
passing them on is probably better although we give up the ability to
pronounce them as we'd like to hear them.

Thank you for dealing with all this stuff!

   Kirk

On Sun, 4 Feb 2024, Samuel Thibault wrote:

> /dev/synth has always been 8bit, but applications nowadays mostly
> expect to be using utf-8 encoding.  This adds /dev/synthu to be able
> to synthesize non-latin1 characters.  This however remains limited
> to 16bit unicode like the rest of speakup.  Any odd input or input
> beyond 16bit is just discarded.
>
> Signed-off-by: Samuel Thibault <samuel.thibault@ens-lyon.org>
>
> Index: linux-6.4/drivers/accessibility/speakup/devsynth.c
> ===================================================================
> --- linux-6.4.orig/drivers/accessibility/speakup/devsynth.c
> +++ linux-6.4/drivers/accessibility/speakup/devsynth.c
> @@ -7,9 +7,10 @@
> #include "speakup.h"
> #include "spk_priv.h"
>
> -static int misc_registered;
> +static int synth_registered, synthu_registered;
> static int dev_opened;
>
> +/* Latin1 version */
> static ssize_t speakup_file_write(struct file *fp, const char __user *buffer,
> 				  size_t nbytes, loff_t *ppos)
> {
> @@ -34,6 +35,97 @@ static ssize_t speakup_file_write(struct
> 	return (ssize_t)nbytes;
> }
>
> +/* UTF-8 version */
> +static ssize_t speakup_file_writeu(struct file *fp, const char __user *buffer,
> +				   size_t nbytes, loff_t *ppos)
> +{
> +	size_t count = nbytes, want;
> +	const char __user *ptr = buffer;
> +	size_t bytes;
> +	unsigned long flags;
> +	unsigned char buf[256];
> +	u16 ubuf[256];
> +	size_t in, in2, out;
> +
> +	if (!synth)
> +		return -ENODEV;
> +
> +	want = 1;
> +	while (count >= want) {
> +		/* Copy some UTF-8 piece from userland */
> +		bytes = min(count, sizeof(buf));
> +		if (copy_from_user(buf, ptr, bytes))
> +			return -EFAULT;
> +
> +		/* Convert to u16 */
> +		for (in = 0, out = 0; in < bytes; in++) {
> +			unsigned char c = buf[in];
> +			int nbytes = 8 - fls(c ^ 0xff);
> +			u32 value;
> +
> +			switch (nbytes) {
> +			case 8: /* 0xff */
> +			case 7: /* 0xfe */
> +			case 1: /* 0x80 */
> +				/* Invalid, drop */
> +				goto drop;
> +
> +			case 0:
> +				/* ASCII, copy */
> +				ubuf[out++] = c;
> +				continue;
> +
> +			default:
> +				/* 2..6-byte UTF-8 */
> +
> +				if (bytes - in < nbytes) {
> +					/* We don't have it all yet, stop here
> +					 * and wait for the rest
> +					 */
> +					bytes = in;
> +					want = nbytes;
> +					continue;
> +				}
> +
> +				/* First byte */
> +				value = c & ((1u << (7 - nbytes)) - 1);
> +
> +				/* Other bytes */
> +				for (in2 = 2; in2 <= nbytes; in2++) {
> +					c = buf[in + 1];
> +					if ((c & 0xc0) != 0x80)	{
> +						/* Invalid, drop the head */
> +						want = 1;
> +						goto drop;
> +					}
> +					value = (value << 6) | (c & 0x3f);
> +					in++;
> +				}
> +
> +				if (value < 0x10000)
> +					ubuf[out++] = value;
> +				want = 1;
> +				break;
> +			}
> +drop:
> +		}
> +
> +		count -= bytes;
> +		ptr += bytes;
> +
> +		/* And speak this up */
> +		if (out) {
> +			spin_lock_irqsave(&speakup_info.spinlock, flags);
> +			for (in = 0; in < out; in++)
> +				synth_buffer_add(ubuf[in]);
> +			synth_start();
> +			spin_unlock_irqrestore(&speakup_info.spinlock, flags);
> +		}
> +	}
> +
> +	return (ssize_t)(nbytes - count);
> +}
> +
> static ssize_t speakup_file_read(struct file *fp, char __user *buf,
> 				 size_t nbytes, loff_t *ppos)
> {
> @@ -62,31 +154,57 @@ static const struct file_operations synt
> 	.release = speakup_file_release,
> };
>
> +static const struct file_operations synthu_fops = {
> +	.read = speakup_file_read,
> +	.write = speakup_file_writeu,
> +	.open = speakup_file_open,
> +	.release = speakup_file_release,
> +};
> +
> static struct miscdevice synth_device = {
> 	.minor = MISC_DYNAMIC_MINOR,
> 	.name = "synth",
> 	.fops = &synth_fops,
> };
>
> +static struct miscdevice synthu_device = {
> +	.minor = MISC_DYNAMIC_MINOR,
> +	.name = "synthu",
> +	.fops = &synthu_fops,
> +};
> +
> void speakup_register_devsynth(void)
> {
> -	if (misc_registered != 0)
> -		return;
> -/* zero it so if register fails, deregister will not ref invalid ptrs */
> -	if (misc_register(&synth_device)) {
> -		pr_warn("Couldn't initialize miscdevice /dev/synth.\n");
> -	} else {
> -		pr_info("initialized device: /dev/synth, node (MAJOR %d, MINOR %d)\n",
> -			MISC_MAJOR, synth_device.minor);
> -		misc_registered = 1;
> +	if (!synth_registered) {
> +		if (misc_register(&synth_device)) {
> +			pr_warn("Couldn't initialize miscdevice /dev/synth.\n");
> +		} else {
> +			pr_info("initialized device: /dev/synth, node (MAJOR %d, MINOR %d)\n",
> +				MISC_MAJOR, synth_device.minor);
> +			synth_registered = 1;
> +		}
> +	}
> +	if (!synthu_registered) {
> +		if (misc_register(&synthu_device)) {
> +			pr_warn("Couldn't initialize miscdevice /dev/synthu.\n");
> +		} else {
> +			pr_info("initialized device: /dev/synthu, node (MAJOR %d, MINOR %d)\n",
> +				MISC_MAJOR, synthu_device.minor);
> +			synthu_registered = 1;
> +		}
> 	}
> }
>
> void speakup_unregister_devsynth(void)
> {
> -	if (!misc_registered)
> -		return;
> -	pr_info("speakup: unregistering synth device /dev/synth\n");
> -	misc_deregister(&synth_device);
> -	misc_registered = 0;
> +	if (synth_registered) {
> +		pr_info("speakup: unregistering synth device /dev/synth\n");
> +		misc_deregister(&synth_device);
> +		synth_registered = 0;
> +	}
> +	if (synthu_registered) {
> +		pr_info("speakup: unregistering synth device /dev/synthu\n");
> +		misc_deregister(&synthu_device);
> +		synthu_registered = 0;
> +	}
> }
>

