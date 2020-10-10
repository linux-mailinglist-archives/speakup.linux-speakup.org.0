Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (tunnel25281-pt.tunnel.tserv21.tor1.ipv6.he.net [IPv6:2001:470:1c:288::2])
	by mail.lfdr.de (Postfix) with ESMTP id 7AFA328A093
	for <lists+speakup@lfdr.de>; Sat, 10 Oct 2020 15:56:03 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 14A96380BDE; Sat, 10 Oct 2020 09:56:03 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm2 header.b=bGvk7m/p;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm1 header.b=N1v7X8G8;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id D32DD380B37;
	Sat, 10 Oct 2020 09:56:02 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 86F27380B2B; Sat, 10 Oct 2020 09:56:01 -0400 (EDT)
Received: from wout2-smtp.messagingengine.com (wout2-smtp.messagingengine.com
 [64.147.123.25])
 by befuddled.reisers.ca (Postfix) with ESMTPS id E5B33380B26
 for <speakup@linux-speakup.org>; Sat, 10 Oct 2020 09:56:00 -0400 (EDT)
Received: from compute2.internal (compute2.nyi.internal [10.202.2.42])
 by mailout.west.internal (Postfix) with ESMTP id 496A4A18;
 Sat, 10 Oct 2020 09:55:55 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute2.internal (MEProxy); Sat, 10 Oct 2020 09:55:55 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 hubert-humphrey.com; h=date:from:to:cc:subject:in-reply-to
 :message-id:references:mime-version:content-type; s=fm2; bh=/uxA
 EFZ2L8izLfLjcY+XqvG5TJYRezJC0UZNqxGkdz0=; b=bGvk7m/pD0RnBPteJ+we
 MjBVIDk2VxWY8NykZMeHE1z6WS2jGQ39qjdb1Km/6zzc3k+YC6SPYPx8wproQJyc
 vCdwoOcEKonwGZDVmvKKzLN9L5e31gPc/MAu0x0G+4vnzkjZH3KqOVWkACnSUiH8
 FTkM8jd2grsO8Me7XmwEdWTqz1MJH0GdnTiM9pZkYCJkGKXiHl1wlIsi8toLlY0l
 wntIjxh1Kw1AVdcrqTlqPu05OfI0i4FUJpPNIA7y664SSj0PikWiaWjz+EpVHwNU
 s48yl7KEGUoIGo3QagHzLVnqU8p299F57lxOFx3FtysFvKgcp/7IO54NiHEeKQcx
 ZA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=/uxAEF
 Z2L8izLfLjcY+XqvG5TJYRezJC0UZNqxGkdz0=; b=N1v7X8G8qI5/jhhOp9A80L
 6kCK42KT2qbPFonaG3P2BPwn5VZHSllGrLBYKQrWRgbvRTY7jc2QUTfUjpp8+w7J
 7E1jk7twulO/5Pw7zs8htC7xLj9OH5ANYpsDbjl9Yqco61O+Ou658oDors2yBt4c
 AUOdj8LB4qEoxeTlllsMYG27jihufiz7Xr+HyZok2Zktq+pwhn033+ZnbdffRWW7
 KL1wUI0MYGlv89txBdIR2a1tKoheYFR+E8S4w17DEXELEDGvG8iYdZXKkEKyL+2T
 X4BhHnqO2wXXyh1E/I9G0iQPtxOvO12gTKD1i7yeXPEcP1o1ZOKCx0ysIdze/4Yg
 ==
X-ME-Sender: <xms:ar2BX0DxHpIlUU_U4NHEyolDWIfBM2EGblhSBdoykCMtWPvulkcaZA>
 <xme:ar2BX2hU4jJarNAuGmNAoOm2zSaCKUJZDhgmd4ave32W5joRp7K3f5-1jPkY8EudF
 VLBYMMhur_BqWQt5T8>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedrheefgdeilecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvufgjkfhffgggtgesthdtredttdervdenucfhrhhomhepvehhihhmvgcu
 jfgrrhhtuceotghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomheqnecugg
 ftrfgrthhtvghrnhepfeduvdduvdevffefveegjeffgffgieeigfdtuefghefgjeehtdei
 lefhueelleffnecukfhppedutdegrddujedvrdefrdeifeenucevlhhushhtvghrufhiii
 gvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegthhhimhgvsehhuhgsvghrthdqhhhu
 mhhphhhrvgihrdgtohhm
X-ME-Proxy: <xmx:ar2BX3m4c_m7QcwJiZPA0sW0UMsEG-8ZrRlJ8UkYiblwzhM5Tu4kAg>
 <xmx:ar2BX6ytcXAYeLjWSa0Qm-dhxdKbC9nJab1BlNPt2a58lhKYb90iwQ>
 <xmx:ar2BX5Q-Q4FFUuVnGQosL3KL3nb3o5gVUFvQszKP6UFvD0cUJ0AXyg>
 <xmx:ar2BX0OsZVzsWAd7JgvGRRR1rDV2sWGSyxWTecahenfY48vPY8z5aQ>
Received: from chime.lan (cpe-104-172-3-63.socal.res.rr.com [104.172.3.63])
 by mail.messagingengine.com (Postfix) with ESMTPA id 3E45E3064610;
 Sat, 10 Oct 2020 09:55:21 -0400 (EDT)
Date: Sat, 10 Oct 2020 06:54:53 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: So, where'd the volume controls get to?
In-Reply-To: <alpine.DEB.2.23.453.2010091111480.51713@befuddled.reisers.ca>
Message-ID: <alpine.DEB.2.23.453.2010100638010.4128673@chime>
References: <alpine.DEB.2.23.453.2010091111480.51713@befuddled.reisers.ca>
User-Agent: Alpine 2.23 (DEB 453 2020-06-18)
MIME-Version: 1.0
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

Well Kirk-and-All, I've been asking Samuel for an inflection setting for 
DecTalk in Speakup. Certainly I completely agree, we still need access to 
volume controlls, as probably because of settings in these DecTalk
   DecTalk drivers, volume drops suddenly-and-I need to jossle it 
to restore to where I like it. 
I would love to try these new settings, but I am only on kernel 5.5.0 
although my daily upgrades are in 5.8 but after 174 days I am not ready to 
reboot. Please inform how I can run this newer Speakup? 
Thanks so much in advance-and-I am slightly surprised Samuel didn't make 
an announcement about whatever changes he made, but I would be eternally 
greatful for an inflection setting.
Chime
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
