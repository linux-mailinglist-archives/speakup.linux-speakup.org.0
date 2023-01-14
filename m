Return-Path: <speakup+bounces-919-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 4A09C66ACE5
	for <lists+speakup@lfdr.de>; Sat, 14 Jan 2023 18:07:54 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=verizon.net header.i=@verizon.net header.a=rsa-sha256 header.s=a2048 header.b=lRe0jUez;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 23555382B6A; Sat, 14 Jan 2023 12:07:53 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 04E29382836
	for <lists+speakup@lfdr.de>; Sat, 14 Jan 2023 12:07:53 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 2DA8A382836; Sat, 14 Jan 2023 12:07:44 -0500 (EST)
Received: from sonic312-24.consmr.mail.gq1.yahoo.com (sonic312-24.consmr.mail.gq1.yahoo.com [98.137.69.205])
	by befuddled.reisers.ca (Postfix) with ESMTPS id C4431382822
	for <speakup@linux-speakup.org>; Sat, 14 Jan 2023 12:07:43 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=verizon.net; s=a2048; t=1673716061; bh=lNwnJMA2SjfFHKEAbtODBtu4psAXsyK39LBW/gEWrL0=; h=Date:To:From:Subject:References:From:Subject:Reply-To; b=lRe0jUezsDGY5ESkL8doFwEo7rDQYRU3y05MSzIvwhWvTrHcIVfDOjP07/riEWjZ+iVwdaJtedEdWgNQGmnh1kLX27wWE3T+O07lD6WO0aLraUx8uDs9izPwQGoHoXhhZ0wfWMeMr8gi5ftOvzxqxPItAvTPoHnbFU6XxDUrf4vq+0HjTtqcmXwSftSAwAW2oh9q3X4drXK6+Ht8G0+8EASj5zze+AWf/BwDQ8ePl0qjMO0rd437r3wO6B973cjqP1tvVHtiXJrUW33gWQp+wnR5mZpLvLv9KxWpEgA4lheGpT4IO46HiwMjJVoYBB9jty4skuT213BWz0aJA0mymg==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1673716061; bh=Mlt5GhgZGvr8fOA29PxkXv/0Zg5xBCmELmVajRBmDv5=; h=X-Sonic-MF:Date:To:From:Subject:From:Subject; b=BOoOt0QuYX6YyR6KpnJVl0u/1x/2VWGz78lMOWmcNa16Cp9zahCPAbLvgVhy07OxoB4P+R4YaXeT4oxJMzfeLK0giOnLNC2lwLaS1wjFmc/7RhVNgySrKahTsNz1Js3rSW8aY6EhKGUvZX9HybQ85EfdkaeINNJeVVlWKKxS87yvYq+dLo+vrI4EVp0gVMaOpZ5b0SmfD5X5E1Kbv/QCMigWQXu9Nz49+ao8lzdYqljWW9rhaypck1fUgvOyQBlVRr+R0ovkWs7iREYNbBIznbrvZWLKED1bC7aSDLOjcQ1/40nOgzOJI0qy/lk5O2Lo7ymIDWHQGryHlwXxzuuh/w==
X-YMail-OSG: NpXzyHMVM1l5tLf.1IKZyE32lh0theQdHpvJuKJiK6HfjyS7Efec5JobF1DF4S1
 qy6DAJnZCm.uv_PIeiZ97J3ExUf5rrOa7uM.pesok2fZtaKgZ0hD4xsBjncufhrY_X1Un.kN1XNS
 XK_d0l8vD4N7HxwfoHy.tzi_zNOQPRpcu0zpzsbuRyT5oXIzcDH2oyVAiATAkUFgGRBqrYSW7f7.
 Z4Q_.uGNF_TZql2pcodfydMfWua9VE6a16nO3L4ahF9PNqnsTsSlpX0oTIRBlRU.HhuIFnOZAszQ
 8WytyW3qQ_tUMAe3TMeN4DDJwSn.LtFBPQXOIOe6OKuO_aHTASp2DmRNL0RZish1hhzJ5LdRPWF9
 JTJnBUVL7Pkl87MyKOTzMyyjAsuz_pDhbHPyWMhQUyxrSZOTnmm615dw9nhqex1RKNeQ1q.4l6De
 Hb5o0oF5PcgqAa4R2g_XFXVf1reQn3NaBE1mVWU8VFHC5drLLG6ryvtXmx.ZsINl2MS3A1nEzdvB
 AKLcpdGAXGrEjBElwMfZyBwYqVMT08f.X0OGcxILpyvisA1bGEfDhSyUix2r6iojZOcZQzfpogED
 b5_YdmKOegQkWupD2WdaI7vUwXQ_Eg9DrV6Jq1HWUARzfQ3tGTtcLnjXUZj_0se1B6iXlKefkGcI
 hV5YRTWip3ww4FB6tnPEzAsGfxRJqmaS6DM6X599H95tB_mbwvsvBDyQZLQp8qRrFIZQBCiBpaAa
 DZmfsFukdFzp7cDPg0SU7worlLgJDdyLLNntyR6TUsXzVlT4y7lD3IYtrDpRdGnfLDbsHNiVyGxx
 Q7BsauFtZ04TfDUp4WmCzfQy0dQRwyk4NcIJNji6w6gyNoylGRojAgwEuLc.BHuOtzF706he52NN
 NlqECP4CvWNJCV.Mas2N0S_tWFOHNnvLfCPiOB2hmtbbqJk3n9_dlfvT3J5x04jowSsmhKjJdvt4
 V8Eg8ElN42cR7kjg6WvdUPxy9txjwVfrvEDDu8O13c.0voRVDlY0jqI7peBoYdNbUE2PYdjfqZSc
 QdC8r6L3x627CkA.K9QIy0aXQ_1i4cSiF9.DPgZp.QUC7Xnvq6TDSaT5EGLOf5snmvs5uXYqVrxs
 om71rAnKUtwyJvfqFdnI9XM0t3dK_7kOHi6xvPyWh9PRk2SPWXiq.JSh1cTiYGTOl.iYUrtYECCJ
 VCLvmu0t79NDHIll_5YWl9qpPsT2rzbdjWAt9DIjMHG6lJX3m2g9vdK0Jjq3JI51yvZ5cPujRbzf
 6.Hae8MCbh_9THrgvsIKsa5xjn8J0ekylJgdm7swWzyjehOYKv0wIR2_YRwH3bETHDKquzT1Ih0l
 VN1e8C7rHzPLrfCO2hpXz4xN8fozG_sxoa9gmV4d8jRrrmMsxWbII7x04zt1jM9pykJvSgbBMixM
 g5IVj0awrAQqmO5GpsdE2sMZRNDfFYEBnmLC0RWOKkilNZZxGuXIyUVCZMEl11fwx.bWt9Jj41nd
 nFh9kcE9mSDKZQw0BqPO1VP6gjU_m.tvrG7g39_s.btnSCckt_cBYcbIWWpgBzqCkvL7exB3tHVe
 g1sznpcE5nm43akMBljoxnjmmUu9NF87MErvgCXU7if6A5Sy1.aPWNtkc6B.zxfPrepg_haENn0W
 px_CggJ01WLASPl4Hb2V1qwaRd3jTZsrzHMM4w3mAA8aWNtE3C61x9cFDseYBDagX4tJJGBsQQ_J
 Pr_nbck7qSbnV0BqJtKOME_uqsGvwXy5PicqQIXURjTcVaYxUGjkxdxaxP2nWfynpVsfNP7p4Vwf
 JrfYAXzsJMk5QRruWVlLoFudYN1seIXlF6eZYM_BW8ok40DdR_IYXxnsrX_WM0cAHRGkvw5NgUDD
 _xdxxVZ2PazkewtaCIXf8ePekwLo28OUVS.Qa4PoKv_xzXTMky8DG8HmKbyGk4JT.s64dmxMVR1w
 fhpzwaLsZghmVPILNN9Ei28g0aSQ4kxfIgU_Bb8vhvISDB5OxHzGAeyLx6fhXX3xJxHSUtD0g_aJ
 ZO295_hw8mxZHiqJrni5CwtxrxcAnbxCeWM.tzauL01OxFYYrwMYDqOwhARJSs4IGT7YtgsYMzkP
 qo3VMjK8SBqCwbBMsD.0BEI7F4aCAtGkY6_hNT.9CLMIPgVUniXA248QtYulGcCfCSWFGEheJN3s
 MfiE5LuF99xpuxARKSxXJPTsFoYsLg6XKNgI50Zo2RRxDfeIJ7HgzOvX9qwLPTdI83ITrf03v2..
 CAjZoLqI7F7nGgRHmq1lIyTvh2UJoQn6qQfo05w--
X-Sonic-MF: <albert.e.sten_clanton@verizon.net>
Received: from sonic.gate.mail.ne1.yahoo.com by sonic312.consmr.mail.gq1.yahoo.com with HTTP; Sat, 14 Jan 2023 17:07:41 +0000
Received: by hermes--production-bf1-6cb45cc684-nfmhd (Yahoo Inc. Hermes SMTP Server) with ESMTPA ID 4b24ec20f8c72b14e7ecbbf9a8b8e497;
          Sat, 14 Jan 2023 17:07:37 +0000 (UTC)
Message-ID: <64291a12-7cfc-3aa6-75d1-f8b369b47ec4@verizon.net>
Date: Sat, 14 Jan 2023 12:07:36 -0500
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
 Thunderbird/102.6.1
Content-Language: en-US
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
From: Al Sten-Clanton <albert.e.sten_clanton@verizon.net>
Subject: looking for archived messages later than January 2021
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
References: <64291a12-7cfc-3aa6-75d1-f8b369b47ec4.ref@verizon.net>
X-Mailer: WebService/1.1.21062 mail.backend.jedi.jws.acl:role.jedi.acl.token.atz.jws.hermes.aol
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Greetings!


I want to check if an answer to a question I have was on the Speakup 
list a few months ago.  So far, I haven't found anything later than 
January of 2021.  Could somebody tell me where to look?


Thanks!

Al



