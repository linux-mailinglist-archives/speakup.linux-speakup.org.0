Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (tunnel25281-pt.tunnel.tserv21.tor1.ipv6.he.net [IPv6:2001:470:1c:288::2])
	by mail.lfdr.de (Postfix) with ESMTP id E55C728A0FB
	for <lists+speakup@lfdr.de>; Sat, 10 Oct 2020 19:17:56 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id C0CDE380BE0; Sat, 10 Oct 2020 13:17:55 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm2 header.b=dqN8jRid;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm1 header.b=qLgDTtqA;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 076F5380B34;
	Sat, 10 Oct 2020 13:17:54 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 9DE9D380B2D; Sat, 10 Oct 2020 13:17:52 -0400 (EDT)
Received: from wout4-smtp.messagingengine.com (wout4-smtp.messagingengine.com
 [64.147.123.20])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 2C699380B2A
 for <speakup@linux-speakup.org>; Sat, 10 Oct 2020 13:17:52 -0400 (EDT)
Received: from compute2.internal (compute2.nyi.internal [10.202.2.42])
 by mailout.west.internal (Postfix) with ESMTP id 87F33F68
 for <speakup@linux-speakup.org>; Sat, 10 Oct 2020 13:17:48 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute2.internal (MEProxy); Sat, 10 Oct 2020 13:17:48 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 hubert-humphrey.com; h=date:from:to:subject:in-reply-to
 :message-id:references:mime-version:content-type; s=fm2; bh=mCvn
 GXAsdCgDI2fnNmqJxzA8S96+pVKi/AYDBIhQIys=; b=dqN8jRidkhTEykMNcsj0
 bsOz9soow8TMAxr3he1urCoeYitsAEkZO2E5uQprpeF6ozCpdK55NtzPta5kBSRo
 B/JAmw7wX3lgP7+QecN15mJgnEaGI1JVDMCu36v8B1Z7dgd6p8tw7OScdthvPn6U
 Y3hMXFvDc5IqzQkFF2xBg4R/oZzFURAW4Z4+dh4j1JP911FHxgCNAkrSKV+U1Jqi
 a7cWmq7xnUeZ835F5K7cYHcs1LOxszElfcWaZkW1Tj6CAXxU82AUJz11Cmc+FVPs
 4QXPVGVcCt8Rzb30G4sTtUBX/VI+3qtfvm/9FxXkjCmT5BcoMwYSTBdHgb+mtnzV
 Rw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=mCvnGX
 AsdCgDI2fnNmqJxzA8S96+pVKi/AYDBIhQIys=; b=qLgDTtqAll8OgQTiYdKZTL
 NFmR82jvj5V5auRnpZRd2PknEtKv1ctM6L7scw4/yne+vkEffTo1rSGiPxOqub/R
 NvcZ239Wocnr9HXPn88u9Dh3mYKD02hQ+mn5GbGh5nO4utRb76oShh4ZeYuAyejU
 lH9+P+zubYPWmFK22hKKjjLrmKR4MSBKWt+Vb4/Y1uyBGRcM6WcfMTWk++6cYTkH
 NNcr2ewajxqEFOA+kO2pRRsZQYWll3XoHBZPaiEqiCO1KH+yS116vpw7t6huAyIs
 SEdpr4XnCA45Ww+XBGqZegGjwc+ILG5dricM379jOhq5Li0dVt41UUKlFWgiMqqA
 ==
X-ME-Sender: <xms:u-yBX6Vu2m9Jf1MXeRPxkTeBxfFsXZ77VVR88filfsvL4vbvH1-mHg>
 <xme:u-yBX2l2ez2DsCSqFCgqEtak32ZLqc4M2IuitC4egDc4WcVEcwQ12uMAoCn2kcVFC
 1ho7l75HXh22KSNymo>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedrheefgdduudduucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffujgfkfhgfgggtsehttdertddtredvnecuhfhrohhmpeevhhhimhgv
 ucfjrghrthcuoegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhmqeenuc
 ggtffrrghtthgvrhhnpeefuddvuddvvefffeevgeejfffggfeiiefgtdeugfehgfejhedt
 ieelhfeuleelffenucfkphepuddtgedrudejvddrfedrieefnecuvehluhhsthgvrhfuih
 iivgeptdenucfrrghrrghmpehmrghilhhfrhhomheptghhihhmvgeshhhusggvrhhtqdhh
 uhhmphhhrhgvhidrtghomh
X-ME-Proxy: <xmx:u-yBX-YYIEgRm_dOCCRpQfTUKWgDJkba_EuGF88IHwzIwztPVQ8yeg>
 <xmx:u-yBXxWq9DhCvBLU_yCw5JK8nH1Fs9PcsTloBNTL5FU1AGMv9d1X4Q>
 <xmx:u-yBX0kNm071XcJxbA8lcXBnmDjnnAjx7oYnQPf7EcIafPqNNoq2bA>
 <xmx:vOyBXwwpChuyUAGVwktudtyhH_Jg9tNdt-8HdIJARWwLgggQsVd4EA>
Received: from chime.lan (cpe-104-172-3-63.socal.res.rr.com [104.172.3.63])
 by mail.messagingengine.com (Postfix) with ESMTPA id 71B5E328005D
 for <speakup@linux-speakup.org>; Sat, 10 Oct 2020 13:17:47 -0400 (EDT)
Date: Sat, 10 Oct 2020 10:17:46 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: So, where'd the volume controls get to?
In-Reply-To: <8782d637-e5c8-a847-47c9-a2ed3f1664ba@gmail.com>
Message-ID: <alpine.DEB.2.23.453.2010101015460.4131538@chime>
References: <alpine.DEB.2.23.453.2010091111480.51713@befuddled.reisers.ca>
 <20201010151312.fbz27eyoua2574tw@function>
 <8782d637-e5c8-a847-47c9-a2ed3f1664ba@gmail.com>
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

So Alexander, is their an easy way in Debian to run a later version, 
considering Speakup doesn't upgrade with an apt-get? Thanks so much in 
advance.
Chime

_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
