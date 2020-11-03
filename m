Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 7E9D82A4D68
	for <lists+speakup@lfdr.de>; Tue,  3 Nov 2020 18:45:05 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 1E811380F33; Tue,  3 Nov 2020 12:45:05 -0500 (EST)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm2 header.b=Po0kxcgy;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm1 header.b=bHAiSUEw;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id A408A380F4D;
	Tue,  3 Nov 2020 12:45:01 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id C2288380F17; Tue,  3 Nov 2020 12:45:00 -0500 (EST)
Received: from wout4-smtp.messagingengine.com (wout4-smtp.messagingengine.com
 [64.147.123.20])
 by befuddled.reisers.ca (Postfix) with ESMTPS id A9110380F0E
 for <speakup@linux-speakup.org>; Tue,  3 Nov 2020 12:45:00 -0500 (EST)
Received: from compute2.internal (compute2.nyi.internal [10.202.2.42])
 by mailout.west.internal (Postfix) with ESMTP id A46F6EC2
 for <speakup@linux-speakup.org>; Tue,  3 Nov 2020 12:44:59 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute2.internal (MEProxy); Tue, 03 Nov 2020 12:44:59 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 hubert-humphrey.com; h=date:from:to:subject:in-reply-to
 :message-id:references:mime-version:content-type; s=fm2; bh=bMsB
 ssJDJr4FUHu3T+g+jsP8QQPEU7Qo4+D8aEk6CcQ=; b=Po0kxcgy3fqUD5DK0/Qr
 DfVFHqSMfZvRpKKaTJehNFiCuFmd3kkKN9dpIjGwhRFiAahvqh3VPMOYyQhBKJ5u
 Swjb+1NM2NbVt15MojS7kOP0p0l+QXyJxUsCPvJI1uSORl0/jPUgox3V/Mn49jgS
 lZJl5eE53w6B/x5rFWnXFbVQVoPhTlAix8jlaleb0GRYMq0w1bP8PvPX/lAvYxpP
 z9QeA2unMSfUrarnkMr8UoQEnJI+h14CMuSL2ZOugGPeh9VAkIuXbV1RF/57sP48
 UPMllvUgZsuqmKNxcB9CU+HK8oMhIWpQjlhJTmUdBjAYVfkMn2H2iy/sN34TEwfv
 0A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=bMsBss
 JDJr4FUHu3T+g+jsP8QQPEU7Qo4+D8aEk6CcQ=; b=bHAiSUEwxbcnqlo5xnPpaz
 mcKbfrMppfvqRELE8PqEQllZ4McLNKSNHOCv+jxtKWPtjeWfbdeboC0Fp+EfF+Jp
 C8am73wMU1fFBj1aWuSrZkhK9SShslXltrh3b/6khTMoL/KmEIcIFHzl4/eNgght
 x9KClyjttWv5NX6dmj/JRXX1mGx05CG6oqOcNnvczQmK7k6hauvAFo7I955jaDWG
 gsCOKnM1OP3uNDLlqFo8a4gz2G1uvi/fZaMFBqBwm00hqXwG8Fm7zF49nZPhN08p
 Nvme8PLXwJ6mlFEXVE23AffSKcut44yEKTt/MOG3OH4Y3ohHiV2tH4K5U0BOUXBg
 ==
X-ME-Sender: <xms:G5ehXy52BTHu-ZnWdNE7O2TCywJ8BVRF4cj-3_GnoaLhGnN_SBNX8w>
 <xme:G5ehX77B3uWnJhmeDqpT9zrHQSzEfbhq-S9zEjXcmbU_fJS6o55SRBFG9NZJJjN_f
 gB-EFdANyBdJI2syvs>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedruddtfedguddtvdcutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
 enucfjughrpeffhffvufgjkfhfgggtsehttdertddttddvnecuhfhrohhmpeevhhhimhgv
 ucfjrghrthcuoegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhmqeenuc
 ggtffrrghtthgvrhhnpeffhedthfdvvdeuueeihedvfeffuedtgeeuudfhgfelteelvddu
 udfgleekvedtveenucfkphepuddtgedrudejvddrfedrieefnecuvehluhhsthgvrhfuih
 iivgeptdenucfrrghrrghmpehmrghilhhfrhhomheptghhihhmvgeshhhusggvrhhtqdhh
 uhhmphhhrhgvhidrtghomh
X-ME-Proxy: <xmx:G5ehXxeKcVjXTX-ZbTxRw5cGR2NYsuNHVJq72oaLB1EKclhNOw5pFw>
 <xmx:G5ehX_Lhfy6wo_UOQlKC3Fw7lWI5oi-Ioh_VJAzIC6mA2YKCIuOCeQ>
 <xmx:G5ehX2JkzhSIc5QFdNFrnF-IUp5xp_SKo4g_Zu35jPLv4k1TgcUVpw>
 <xmx:G5ehX7U4Eem8wUzU4uvECl7nsSCacAJ-_itz-vJAkv4Wk5ovQXM_sw>
Received: from dance.lan (cpe-104-172-3-63.socal.res.rr.com [104.172.3.63])
 by mail.messagingengine.com (Postfix) with ESMTPA id A79873064682
 for <speakup@linux-speakup.org>; Tue,  3 Nov 2020 12:44:58 -0500 (EST)
Date: Tue, 3 Nov 2020 09:44:57 -0800 (PST)
From: Chime Hart <chime@hubert-humphrey.com>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Cut-and-Paste is Working Again
In-Reply-To: <20201103173759.ikx4uxpsf72v47oq@function>
Message-ID: <b4f057f0-9eae-3ed8-7ca9-14ab9d446d9@hubert-humphrey.com>
References: <0bf28e-3c70-7e4a-e543-daadd91e28d6@hubert-humphrey.com>
 <20201103173759.ikx4uxpsf72v47oq@function>
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

Thanks Samuel. Can you please provide an exact command to install that 
patch?
Chime

_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
