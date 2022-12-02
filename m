Return-Path: <speakup+bounces-870-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id AA65F641162
	for <lists+speakup@lfdr.de>; Sat,  3 Dec 2022 00:20:01 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 68B84382A74; Fri,  2 Dec 2022 18:20:00 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 4F7B93829A1
	for <lists+speakup@lfdr.de>; Fri,  2 Dec 2022 18:20:00 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 7A52F38290F; Fri,  2 Dec 2022 18:19:55 -0500 (EST)
Received: from sonata.ens-lyon.org (domu-toccata.ens-lyon.fr [140.77.166.138])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 54CE638063A
	for <speakup@linux-speakup.org>; Fri,  2 Dec 2022 18:19:55 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by sonata.ens-lyon.org (Postfix) with ESMTP id 50A4D2012F;
	Sat,  3 Dec 2022 00:19:51 +0100 (CET)
Received: from sonata.ens-lyon.org ([127.0.0.1])
	by localhost (sonata.ens-lyon.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HL9YNgRCjZiI; Sat,  3 Dec 2022 00:19:51 +0100 (CET)
Received: from begin (lfbn-bor-1-376-208.w109-215.abo.wanadoo.fr [109.215.91.208])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by sonata.ens-lyon.org (Postfix) with ESMTPSA id 8E5122011C;
	Sat,  3 Dec 2022 00:19:50 +0100 (CET)
Received: from samy by begin with local (Exim 4.96)
	(envelope-from <samuel.thibault@ens-lyon.org>)
	id 1p1FJu-003HcO-08;
	Sat, 03 Dec 2022 00:19:50 +0100
Date: Sat, 3 Dec 2022 00:19:50 +0100
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: Gaosheng Cui <cuigaosheng1@huawei.com>
Cc: w.d.hubbs@gmail.com, chris@the-brannons.com, kirk@reisers.ca,
	gregkh@linuxfoundation.org, speakup@linux-speakup.org
Subject: Re: [PATCH] tty: fix possible null-ptr-defer in spk_ttyio_release
Message-ID: <20221202231950.2adteriw3mjw7t3j@begin>
References: <20221202060633.217364-1-cuigaosheng1@huawei.com>
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
In-Reply-To: <20221202060633.217364-1-cuigaosheng1@huawei.com>
Organization: I am not organized
User-Agent: NeoMutt/20170609 (1.8.3)
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Gaosheng Cui, le ven. 02 déc. 2022 14:06:33 +0800, a ecrit:
> Run the following tests on the qemu platform:
> 
> syzkaller:~# modprobe speakup_audptr
>  input: Speakup as /devices/virtual/input/input4
>  initialized device: /dev/synth, node (MAJOR 10, MINOR 125)
>  speakup 3.1.6: initialized
>  synth name on entry is: (null)
>  synth probe
> 
> spk_ttyio_initialise_ldisc failed because tty_kopen_exclusive returned
> failed (errno -16), then remove the module, we will get a null-ptr-defer
> problem, as follow:
> 
> syzkaller:~# modprobe -r speakup_audptr
>  releasing synth audptr
>  BUG: kernel NULL pointer dereference, address: 0000000000000080
>  #PF: supervisor write access in kernel mode
>  #PF: error_code(0x0002) - not-present page
>  PGD 0 P4D 0
>  Oops: 0002 [#1] PREEMPT SMP PTI
>  CPU: 2 PID: 204 Comm: modprobe Not tainted 6.1.0-rc6-dirty #1
>  RIP: 0010:mutex_lock+0x14/0x30
>  Call Trace:
>  <TASK>
>   spk_ttyio_release+0x19/0x70 [speakup]
>   synth_release.part.6+0xac/0xc0 [speakup]
>   synth_remove+0x56/0x60 [speakup]
>   __x64_sys_delete_module+0x156/0x250
>   ? fpregs_assert_state_consistent+0x1d/0x50
>   do_syscall_64+0x37/0x90
>   entry_SYSCALL_64_after_hwframe+0x63/0xcd
>  </TASK>
>  Modules linked in: speakup_audptr(-) speakup
>  Dumping ftrace buffer:
> 
> in_synth->dev was not initialized during modprobe, so we add check
> for in_synth->dev to fix this bug.
> 
> Fixes: 4f2a81f3a882 ("speakup: Reference synth from tty and tty from synth")
> Signed-off-by: Gaosheng Cui <cuigaosheng1@huawei.com>

Reviewed-by: Samuel Thibault <samuel.thibault@ens-lyon.org>

Please also Cc stable@vger.kernel.org ;)

Thanks!

> ---
>  drivers/accessibility/speakup/spk_ttyio.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/accessibility/speakup/spk_ttyio.c b/drivers/accessibility/speakup/spk_ttyio.c
> index 08cf8a17754b..07373b3debd1 100644
> --- a/drivers/accessibility/speakup/spk_ttyio.c
> +++ b/drivers/accessibility/speakup/spk_ttyio.c
> @@ -354,6 +354,9 @@ void spk_ttyio_release(struct spk_synth *in_synth)
>  {
>  	struct tty_struct *tty = in_synth->dev;
>  
> +	if (tty == NULL)
> +		return;
> +
>  	tty_lock(tty);
>  
>  	if (tty->ops->close)
> -- 
> 2.25.1
> 

-- 
Samuel
---
Pour une évaluation indépendante, transparente et rigoureuse !
Je soutiens la Commission d'Évaluation de l'Inria.

