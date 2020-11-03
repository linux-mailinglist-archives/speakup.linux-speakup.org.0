Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 1D5CE2A4D21
	for <lists+speakup@lfdr.de>; Tue,  3 Nov 2020 18:35:43 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 92B03380F0E; Tue,  3 Nov 2020 12:35:42 -0500 (EST)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm2 header.b=eXmNTeV+;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm1 header.b=A6i4c2DX;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id CEE7F380F38;
	Tue,  3 Nov 2020 12:35:40 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id A83B7380F0E; Tue,  3 Nov 2020 12:35:39 -0500 (EST)
Received: from wout4-smtp.messagingengine.com (wout4-smtp.messagingengine.com
 [64.147.123.20])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 06498380EEA
 for <speakup@linux-speakup.org>; Tue,  3 Nov 2020 12:35:39 -0500 (EST)
Received: from compute2.internal (compute2.nyi.internal [10.202.2.42])
 by mailout.west.internal (Postfix) with ESMTP id 8D388CF3
 for <speakup@linux-speakup.org>; Tue,  3 Nov 2020 12:35:34 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute2.internal (MEProxy); Tue, 03 Nov 2020 12:35:34 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 hubert-humphrey.com; h=date:from:to:subject:message-id
 :mime-version:content-type; s=fm2; bh=aPq3tswF4nj9V4uCwiO+sK4w58
 PqIq5o7Kj1Bmc8Hys=; b=eXmNTeV+eKwHtTpyOtR1+sDTsqAZvgsJc7Qv7IzRow
 melxXTtxMO9CkLSiL0BY2+DY+/1cEl5+Dca9DQWSPWlzZMp2hNtPkJdg5KCNutaj
 dvFq7trXNc8bhh5PSTIW0unY3ch7hWC/Cd3lQ6tjExeSDyvk0+VyMvIbA+84wuCm
 khM7vDcmqyHxB8C7P31XHN5+IfMhxa2spVz5EJyHdjyGwkpt2bYb0jS17wxT4uZF
 OmUb+vmPlb0NKNCbS9FbQ0tenSPzvYTFzR4wwkTX8vrp/+LQrQBOGp0rQ6DZIxjS
 2x5VybQ6gcavNM1nJWxBhKyA/96ydXF/T1+4yH3x/m1g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=content-type:date:from:message-id
 :mime-version:subject:to:x-me-proxy:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm1; bh=aPq3tswF4nj9V4uCwiO+sK4w58PqI
 q5o7Kj1Bmc8Hys=; b=A6i4c2DXZH2RLgN1j7k9taxa13nXlovZcntrrGpi8obB/
 vCltBse+oNIsYFtrgDcx5SvJgbNuUPWdsFMUzdquoukr9eM6RaEPtPc89f8YiYzl
 z+hriJh7MCOBiYafzRlxFwx2GUMsAauKiaIZcRKbO/CxTLlvCwz/fz1gvrpcnSvA
 LA2HGTPI1NYjb0Ee3hPUT/6v6QXifnPdZkYb6TijdUCO3Y8B7RXp2lQ1S9pA2Dy7
 6mMIIJXBjh7Gl8JtlnJ2apeNfLsagF0EiftVgAunXzQ0QK0lwT1nRkGljvk9X4uz
 5ke0K0Mgq6p+oXfMSFRHwIiHimilKtzRR7xEscl3A==
X-ME-Sender: <xms:5ZShX3AKmKF_Qng2qMURr1qWHhBc5dF2VbgFwAU_zAasyhmDztQFtg>
 <xme:5ZShX9gtU25VRTnYVTIQ601oHbEip-XJg5ZYNVZUVfXYR3AKLI7NlGe9HGosnPH-n
 R2QTkeToJys8cC471Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedruddtfedguddttdcutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffukfggtgesthdtredttd
 dtvdenucfhrhhomhepvehhihhmvgcujfgrrhhtuceotghhihhmvgeshhhusggvrhhtqdhh
 uhhmphhhrhgvhidrtghomheqnecuggftrfgrthhtvghrnhepjeffffdujeelueffieevtd
 eiteettdekgffgkedvueejteektdehfefhhfdvteeknecukfhppedutdegrddujedvrdef
 rdeifeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
 gthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhm
X-ME-Proxy: <xmx:5ZShXyntGj-FgUKa8nLwaapdNo5dU7xkQShXnmK1CKv4CcQcHM3pdg>
 <xmx:5ZShX5w8OYR2Ca_0EfHEVFWueChQ7oB3w3SCCVHR4SuC9cLKROoCyQ>
 <xmx:5ZShX8S65hxdVI8dsg0dri6McakI0MCDy2-S_YwZ5mBTHKPEu9XIhA>
 <xmx:5pShXzdTleG0ypAiTvlfhoraWJ5XlMV1pHs0nRUSzaRfsTAoMrQbIg>
Received: from dance.lan (cpe-104-172-3-63.socal.res.rr.com [104.172.3.63])
 by mail.messagingengine.com (Postfix) with ESMTPA id 85995306467D
 for <speakup@linux-speakup.org>; Tue,  3 Nov 2020 12:35:33 -0500 (EST)
Date: Tue, 3 Nov 2020 09:35:25 -0800 (PST)
From: Chime Hart <chime@hubert-humphrey.com>
To: speakup@linux-speakup.org
Subject: Cut-and-Paste is Working Again
Message-ID: <0bf28e-3c70-7e4a-e543-daadd91e28d6@hubert-humphrey.com>
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

Well, some good-news, I rebooted my laptop-and-now cut-and-paste 
works-and-does not hang a console. Still, where the volume settings are in 
the pannel, it says "inflection" but at least in Voxin with an I B M TTS, 
it seems to make no difference. Anyway, so glad cut-and-paste is back 
again, as I use it `alot. Thanks
Chime
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
