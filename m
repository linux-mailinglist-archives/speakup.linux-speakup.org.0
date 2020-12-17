Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id BF1A42DD894
	for <lists+speakup@lfdr.de>; Thu, 17 Dec 2020 19:44:33 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 39C01380FBD; Thu, 17 Dec 2020 13:44:33 -0500 (EST)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm2 header.b=fLjwX7ha;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm1 header.b=Tx2rARGl;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 09D08380F28;
	Thu, 17 Dec 2020 13:44:33 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 21749380C14; Thu, 17 Dec 2020 13:44:32 -0500 (EST)
Received: from out5-smtp.messagingengine.com (out5-smtp.messagingengine.com
 [66.111.4.29])
 by befuddled.reisers.ca (Postfix) with ESMTPS id BBE1B380BE2
 for <speakup@linux-speakup.org>; Thu, 17 Dec 2020 13:44:30 -0500 (EST)
Received: from compute2.internal (compute2.nyi.internal [10.202.2.42])
 by mailout.nyi.internal (Postfix) with ESMTP id 989B65C0148;
 Thu, 17 Dec 2020 13:44:29 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute2.internal (MEProxy); Thu, 17 Dec 2020 13:44:29 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 hubert-humphrey.com; h=date:from:to:cc:subject:in-reply-to
 :message-id:references:mime-version:content-type; s=fm2; bh=OeS5
 ffVramtf9gm+sDQq4/OCDqAOO4ywTf7lD+uJLVs=; b=fLjwX7haloF+t8asck+6
 p0UJNR9rf0WAonOrqbjQrL9pJYeGBGtjozyXpwrOPxCTkm0q4HzFzIeTHk/rLa3Z
 8Ym7GGyvl3oMCoVeqmnq29NuUp8OSO87Lt25Ga7aHxKxP8bWfqZI5qXzuhKUz7Hw
 PRxtIn145jOLvRJFqnmxuvCBVNRvp01sMLOAhAgBNCcdS1c2ZFk1wwzIJm69Qkkx
 gv5ZIAXH11LIEjDagMUfSdyvjry2NvQCBOu3B+NlxzZrWYNbUNFtT9Hrt5eXRj3p
 hz+aGIRFrq+kRYccNA5s5qcu7IAu6JOXhZOzba1FF9iL2HEOjadCjTisN+9ihbxe
 NA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=OeS5ff
 Vramtf9gm+sDQq4/OCDqAOO4ywTf7lD+uJLVs=; b=Tx2rARGlfbIKLp8dxbaa+D
 J5DDjX+oGhgPbWEtyXlMBAv9pT4zgxcLCXstV6Nsyei1anYhPO1wKy6yiw8isF+1
 Fyvd4DY21G2FntYMLDLcQan1rVxPP+sFeWY99VALlY2Lz0uPoIW1R5CX1vZp8AHc
 9TdheR4m35yDNARpjWGl4iDWDq7dTI8teV/N9mVFQpoiDSqWm+7DI9os/ztttBbx
 7T+RbKDdtITX3Mj8I9qwnfyvP3dFIwSrhsf/VMhykQ1qnsAdBmbu7gfcbIn1vDcV
 BEBObu1oM8+iUKNge3IzZ+6R3eZwPOKZSmxtDugIdFUavSrRP/1jXs0Br9gp8+og
 ==
X-ME-Sender: <xms:DafbX8EKLp1o5mZ_GgQaqULiSx_3rkseu_xNHvTFAPk4VuV9wmolbQ>
 <xme:DafbX1UWJtpmJr7KefV6h3bSrdpL2sCHkvf_3R0t_lv6OzlVAWeUeyL_mKf8znOgR
 lLyqIJB5HvSrNi3J5U>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedrudelgedguddugecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
 enucfjughrpeffhffvufgjkfhfgggtsehttdertddttddvnecuhfhrohhmpeevhhhimhgv
 ucfjrghrthcuoegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhmqeenuc
 ggtffrrghtthgvrhhnpeffhedthfdvvdeuueeihedvfeffuedtgeeuudfhgfelteelvddu
 udfgleekvedtveenucfkphepuddtgedrudejvddrfedrieefnecuvehluhhsthgvrhfuih
 iivgeptdenucfrrghrrghmpehmrghilhhfrhhomheptghhihhmvgeshhhusggvrhhtqdhh
 uhhmphhhrhgvhidrtghomh
X-ME-Proxy: <xmx:DafbX2I4BF5AxV7vHwgSwJfNU17Xumfvr1f-FR5tFefbInAa-yu0sA>
 <xmx:DafbX-F5rw2yXg7MAcPCbV9javzf9PTTa5r9JivyadXUkxY2Bf0YEQ>
 <xmx:DafbXyXP5jDN7EVdF2oI8tCRyS6TyGx0pGSi-rFAbxMWnSeQ9XJL4w>
 <xmx:DafbX9De1DsAxf-V0zMGadT9NKXNFPrQ-TJcEBvqmUJ4Js6mFyHqgg>
Received: from chime.lan (cpe-104-172-3-63.socal.res.rr.com [104.172.3.63])
 by mail.messagingengine.com (Postfix) with ESMTPA id E47D024005A;
 Thu, 17 Dec 2020 13:44:28 -0500 (EST)
Date: Thu, 17 Dec 2020 10:44:28 -0800 (PST)
From: Chime Hart <chime@hubert-humphrey.com>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Efficiently using terminal with screenreader
In-Reply-To: <20201217184038.h7b764gsfxtjag4i@function>
Message-ID: <6d5040f0-5528-4fc4-43c3-48403fbf4a2@hubert-humphrey.com>
References: <9EB3CEB9-C251-43F0-8780-E8CBDC759EAC@icloud.com>
 <36759A23-2591-4A2C-BCF1-C868167EAFA0@speedpost.net>
 <20201216130002.GA5313@rednote.net>
 <Pine.LNX.4.64.2012161636510.3602815@server2.shellworld.net>
 <53240DEC-4237-4D6C-9820-30DE24C3904E@icloud.com>
 <f1d6bafe-2326-cd8f-5889-191a2cd7b2e6@math.wisc.edu>
 <20201217184038.h7b764gsfxtjag4i@function>
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

Well, if Speakup does support a U S B connection, then why must I run my 
DecTalk in an RS232 mode?
Chime

_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
