Return-Path: <speakup+bounces-851-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 9924E621279
	for <lists+speakup@lfdr.de>; Tue,  8 Nov 2022 14:32:43 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=verizon.net header.i=@verizon.net header.a=rsa-sha256 header.s=a2048 header.b=flJYgWS5;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id AC393383656; Tue,  8 Nov 2022 08:32:42 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 8C0533835F1
	for <lists+speakup@lfdr.de>; Tue,  8 Nov 2022 08:32:42 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id D13833835F2; Tue,  8 Nov 2022 08:32:33 -0500 (EST)
Received: from sonic305-20.consmr.mail.gq1.yahoo.com (sonic305-20.consmr.mail.gq1.yahoo.com [98.137.64.83])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 4BB2B380927
	for <speakup@linux-speakup.org>; Tue,  8 Nov 2022 08:32:33 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=verizon.net; s=a2048; t=1667914349; bh=47zlnGZ9Bx2vPDTUkrdX7W8V1LuSfwj0mus2As30jd0=; h=Date:Subject:To:Cc:References:From:In-Reply-To:From:Subject:Reply-To; b=flJYgWS5573V+YuGJWAHKwKiOV0XH276YADzyCIaW0Mh5LKtBH5aBbX4UNe8UzNv+94l5eW1CZpZ3Di4l6P5HoqHzSfB+/rlZ6UHJ7qFwYP0AJgAniNYxUC1oJV3pnD8Do7FCgwvRb9iLTxPDKc5xnBNY4d9oAIMfZNBXnrtZNgNYZp+UTuZ2vnqzSqDTy1fIiy2Y6/2DgR+TgGZWb+RQJr29tui5dI6BWbqLUzWxGuZQvx2KcZa/31NJonP2iS5Jjtvh9NWnzC36FDofx1AFO0WcnRUQFkN2DxhCYX8nQmXzUVoO31O4gtxDJLAFEBBGqZW4u2iRRSMzM5ArEuhMw==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1667914349; bh=1AiS8vCLHrfeEEW75w4VL+oSDzurE8aHUEQPBPa/TUA=; h=X-Sonic-MF:Date:Subject:To:From:From:Subject; b=Y74zotOUYnohnUNezi+NaO4QrleKr14KC/wPfgdqswDqgtdjtVwt53tkzolpE94r2EEP1uajzo5pK+ieYo/Zjs/APMJ65H5n0sABm0Hjv+IC5/WmoI8lJX6P1BbzfMszW8ygxDY0fczBPmIj6nzd+36NK+dz0EKntoC7G8ywIyRhpqVsGe7XXxo+g8zhuoC1oqYNyVUxQWZZMcnAR3lfbdvZCifV0JgedltpfHs0Mx/r2rP6amWP7sSG6E6M0oSdx5iSaeIBst+jxTHmz8D4D8sCaxTxEmgSKXvAOM7wimn1FCA2DF+r1BQO143Xog59xuH0OWq21aaThxiqqZc+bg==
X-YMail-OSG: ikT0XVcVM1mBndjsM07M892S5xYh6Rj5.1i_kZmax878wbrDloZu4iZ9RGLDvvd
 p9hx__QeBSnWhpKuXdAsmzjC_YWuCKepWRTIhi6Vq59nSocGyCNmkc0o1_bJzahVWyc8ZLsGWhsh
 MJ0WmwLF5RfMF.6tRUs93baF62XjC5H4ZvZyNgdjsfuDdy0Pd46_8JNblbdjMYAsPFarspJX7sW_
 hp9rOjgskq1LzLoxHkVsJaeRbK9PbHfrCgU4pTeE3uZtC184KL3ZoUcmd2c3JDq_0YqdRWfmXAlf
 CLS7rH2tTFSlIrwS4yCpHXjLz1ssM_.5X6PzwNCqvWTFCvwetfFo9qJ4raty_TK93mZGSx6ZeTiN
 aVqxW9UTIRuR2f7UCElZT6LJTkB5tOUhiWUMoe60B7WPfCC5jYkLbjjl7Qr5XvIKBsON89UzkT1b
 g_1UAmCQST_0Ev0qmy4Mno7Xwe99RwX8pwdHRShDvEefvuGjoPynKHQIDP7iBcfF3.ym1h_dWRbn
 GkpGwi2gx8fGhS8g.2ShQeV7Ef99ly3otOr6GDXdFyqxMa3bAjQR3XMSFYC_hAnZ4Xl51IaP5e3o
 OFJqYkb_JHKOQYkgEjoD7JnscdlYkfQb95zQkp7REYa8OWD0ZRnEmLotuBkdeLHXw.Pf9zHt7Qbj
 LY8kMCokl_9ZrA0nsSVk_hZ7S6MKbW8VkAmuFe8YEA2sMpU9PcYtXw84qe1qyK0Cb6EOlJv5W0TZ
 znsGeTZlAC5ScES.kKK3Elu3jtLLKrB4j2wSTXorzbMIuRF4nKNr7WFa.OgmD2OvrRN4OesK1DYc
 sgY7cpESxFZftSgCVGzwt15hBj07A0XdB5448k5zTNVEohvxgrcs_S.pzwyP9COr8zVyH_3vsTPu
 7GzT4i_FgsJdR_DWKv_ucvyLDaO0WTR2uqqZh.PbzPnVATAqy055dVSMeJpMMnpCiHxICE_VSzJF
 GCBeM3Tsz_DUT.RpfT_84.Xa48wMKzJKTFDfHi1nzMo1eeW2NFhOCfk0anGFhebahOdCabKbrIxR
 IF0aa37ILq9HV290urKuKKLQlkDd8U_PtbNYqxELTXyKvlUyak1FnRKbYgZhvTjahmwm_OaTWT0i
 iLGj_yElypgpQlBln1vDNwVGVZo5th8F.nvz_Z9b7IZuaDDttu0vJbyDMpnVKDV.MGeOAFEzYp6w
 TpIiMEib9MqWRgLxlHHJ29hak8.wt0BksyvvHUAUh36MDweM31sgfjHyG.3e0V.9qJMnAFmCaqX2
 51qcwLfb84lDWe9JDQ2mV1_u_P_d2Yu2zRx3gbfNOK2d5XzKdKPzYg0BPYa61zzzAPx0EhIFOrfd
 WTZzX0uf81tO_KTkGcwYsYieGu7JE7En_hrwhfUBiM8mmASdIFRvzt0LK358HV2Tt8sGgceYBfPC
 0Iq9pJFheVlXHxomRd5sm30RXIJOkBlRRmNZHROaeDY1BLigcGDDafDAAfzlDxOgHJ3sagF1.QZS
 p_b7bFZzoU5erMhavep2BmXfRXRN7Q7x4oyT0G_WO3BPyKyBZtojLGCWqAVgogpHUKrVU_nAV61w
 08y8uaGqwDORekfqoFvNGD2UO1kSnz7YolSCqxvNARX5gHPx2WxjtwwYnzDvOCZwvVt91pJ8oO2p
 h7RdUgkSJbrIh3nAttP52LqkbgYkQZopw350mbhYK35e_XNTwqu_qzAOQUC6xVuCnrS.ua_NYmBA
 Z1qoV6eBuJH.C2XWNlSVdIF4GVmeAwe6jj1shX6BJOlCcv76WEezJq7ij1C1v_ML8SfoTS7cMYnY
 f8fllHjD2nz87J5b.0f4EgugtbPmSJIbHYUNMs4pz1AVm1gDTD2kRTLYUk8NJ15EXu0wRpUDs2e.
 hxeabxuk4ebos3t07mt19e0fQEC7GTV2tKyewfrOs.eIj0tqkJ0nHNEwZzXhYxKulUGLL6Js1FU1
 _NTBULku8oQjnglvy8cvvapShEhiHbTkov7ZChGbD39u5iKu4tqagxkMyyyWOqw9imH6CJb9nfdZ
 v4EmnxXatQX9wuLfOkXAvyZfFWQbU0RbspfyeA5KybWeHCsbAmquMiNVhS0byblz7CP199VuVyB3
 Y7NznFFNTrhMxRdT6R61O0axAG3rY8r0NKzr_LZbGrroRL7Nq82M6U9n2uPE4R9Cr0N.B3xvWdqQ
 ivN4wrJyrsj9znmCGaZuDnp1mczyUaM0obuLIpXTjOl5eGsqjBiaPAJxw20QnzyoHvq_UDEc4VL9
 Mib0nAWaEgRTxG7LTm3DYmuF3a2RRFGhxC_Q4uzwBDfonctIeKZoYESMpgX37Z9Iv
X-Sonic-MF: <albert.e.sten_clanton@verizon.net>
Received: from sonic.gate.mail.ne1.yahoo.com by sonic305.consmr.mail.gq1.yahoo.com with HTTP; Tue, 8 Nov 2022 13:32:29 +0000
Received: by hermes--production-bf1-5878955b5f-pzkd6 (Yahoo Inc. Hermes SMTP Server) with ESMTPA ID cfad9113fe04fb748dd447b58bb99923;
          Tue, 08 Nov 2022 13:32:26 +0000 (UTC)
Message-ID: <0bdcb691-f189-03fd-619c-77de9d8ba139@verizon.net>
Date: Tue, 8 Nov 2022 08:32:25 -0500
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: How to ship the speakup drivers
To: Didier Spaier <didier@slint.fr>, tony seth <lp800@samobile.net>
Cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <a940bccc.9cad.4a8a.9f9b.11fb01c7b080@samobile.net>
 <c7dd7efd-7f01-a827-97ba-7fa9356a3bcb@slint.fr>
Content-Language: en-US
From: Al Sten-Clanton <albert.e.sten_clanton@verizon.net>
In-Reply-To: <c7dd7efd-7f01-a827-97ba-7fa9356a3bcb@slint.fr>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailer: WebService/1.1.20826 mail.backend.jedi.jws.acl:role.jedi.acl.token.atz.jws.hermes.aol
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

The other day, Didier wrote in part, "

I am considering continuing to ship the drivers as modules, but loading the
requested module early during installation as in the Debian installer. I will
build an ISO with this change so you can test."

I think that's cool.  I have a TripleTalk LT I might want to try using again.

Also, thanks for the information after that quote for dealing with an already-installed system.

Al


On 11/7/22 12:22, Didier Spaier wrote:
> Hi,
>
> Tony, it looks like you forgot to CC the list...
> Other than that, answer in line
>
> Le 07/11/2022 à 00:02, tony seth a écrit :
>> Heya there and good evening Didier and all:
>> I agree with Samuel, packaging the speakup drivers into the initrd and not as
>> modules, will very likely work. I think that as software speech became more
>> popular, modularity just seemed a better idea for most since most people don't
>> use hardware synths anymore.
>> I'm probably one of the last hold-outs and in any event, I'm probably not the
>> only one.
>> I'm happy to test it if you go that way.
>> Thanks muchee!
>> Take care... Cheereo.
> I am considering continuing to ship the drivers as modules, but loading the
> requested module early during installation as in the Debian installer. I will
> build an ISO with this change so you can test.
>
> In an installed system, the user can include in the initrd (rebuilt upon each
> kernel upgrade) the driver needed by his or her hard synthesizer.
>
> Please test that (as root or using sudo):
> 1. Create a file named /etc/dracut.conf.d/hardsynth.conf including this single line:
> force_drivers+="speakup_ltlk"
> 2. Then type:
> dracut --force --zstd
>
> After rebooting the module espeakup_ltlk should be loaded and your hard synth
> speak. Please let us know if that works for you.
>
> To know more:
> man dracut
> man dracut.conf
> man dracut.cmdline
>
> Cheers,
> Didier
>

