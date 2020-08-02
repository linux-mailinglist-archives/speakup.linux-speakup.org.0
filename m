Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 4213A23597D
	for <lists+speakup@lfdr.de>; Sun,  2 Aug 2020 19:29:50 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 7F9F01C0755; Sun,  2 Aug 2020 13:29:48 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm1 header.b=i2pXR7UB;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm3 header.b=QBeqFv90;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id EC9131C076D;
	Sun,  2 Aug 2020 13:28:40 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 9F69B1C074F; Sun,  2 Aug 2020 13:28:30 -0400 (EDT)
Received: from out5-smtp.messagingengine.com (out5-smtp.messagingengine.com
 [66.111.4.29])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 0046E1C0713
 for <speakup@linux-speakup.org>; Sun,  2 Aug 2020 13:28:26 -0400 (EDT)
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
 by mailout.nyi.internal (Postfix) with ESMTP id 444815C00DD
 for <speakup@linux-speakup.org>; Sun,  2 Aug 2020 13:28:24 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute1.internal (MEProxy); Sun, 02 Aug 2020 13:28:24 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 hubert-humphrey.com; h=date:from:to:subject:message-id
 :mime-version:content-type; s=fm1; bh=Ip/bArOh4uv8ysG0NWNNwDJQLz
 9unA5/efXn90LggK8=; b=i2pXR7UB/s3sFEnKOCjUKZlN6heSBU74dDO+sQkRLx
 6MCZXFsrsV3bBdYcrXt3Y5wytzx/24slTrFZny/6yJb+GwyJ1hPlaxCxZUiWak/D
 ofcKCfkcyOVY5vDauUK8gLlPDrCgKfVacTVjqAb4g9zOS3ecRDoz3zC+qgFVAgTd
 /ePRSFZTOZUc7x1wpbBnXBK9yVqpLOYfdR9oi2CDxgkiBRuv5P4MxFx5Reve4x0y
 xpq439iXu3NIZqMbib/Li8mlPlH5Dn4GjARsm7skwm6IYCAx+Y2180oCBHaH4u9J
 FQev9wmtOOoZ/j58rSd+gK1Noba7A2tuIYwCSFD8H32w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=content-type:date:from:message-id
 :mime-version:subject:to:x-me-proxy:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm3; bh=Ip/bArOh4uv8ysG0NWNNwDJQLz9un
 A5/efXn90LggK8=; b=QBeqFv909kLLMwJGxaFEvkcupgiRr60qrEPRSS0xE6R9H
 O9V9v/MKXk/+WMSMuYnQ/WcoZcYTzCnW8PBrfz90L/CaX1Z9zZtZGHyp5FiPNyB0
 B3ZD3OnO6KG8DT01L9CFL+jbIbqaYBv1JUw+uAD3S5UM60vLQajATvdu8JQCcZhT
 y3BJhTBmdvAULIH44J2kTHb+b+pCPGSYEhXyTvsqoBbU3ZujHWDQhiV8gSRBOawo
 0JOqITIxcYODzpaU77A0u6MTHQuNB/GIjFZPIhr6FBa3Af4aQ5KfseiLh0N8My7u
 G/Ydabyg2igjOEwPs8BsOZLeM5ReAskYdrW/isAcg==
X-ME-Sender: <xms:uPcmX28yK344XkULvD9GtzBH_OG0qdG_5q6WLyrfDazO5kfJux5lkQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduiedrjedvgdduudehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvuffkfgggtgesthdtredttd
 ervdenucfhrhhomhepvehhihhmvgcujfgrrhhtuceotghhihhmvgeshhhusggvrhhtqdhh
 uhhmphhhrhgvhidrtghomheqnecuggftrfgrthhtvghrnhephfdvjefgfefhvdfhvdegvd
 eivdfhteetjedvjefhtdehleeftefhteejtdduhefhnecukfhppedutdegrddujedvrddt
 rddugeefnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomh
 eptghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomh
X-ME-Proxy: <xmx:uPcmX2tP_o-WszuMkUNZ4hwjWgcwcekZgX26OAhY2P6KHjK3F6fLww>
 <xmx:uPcmX8BKpsJFrcDyn7JCZ8u7kCZkF9xgppQ1wnuHutnhPpZIOHCTIA>
 <xmx:uPcmX-e_2fWk2MsjpZoj96c2YA5AQLB6CPKC2A2IpQ-kFY6buHAXkA>
 <xmx:uPcmXxsijYl1B2uorkm81p856hcXyuoKlgF3zSXSfLVDejl1GocRWg>
Received: from [192.168.0.3] (cpe-104-172-0-143.socal.res.rr.com
 [104.172.0.143])
 by mail.messagingengine.com (Postfix) with ESMTPA id AE13E30600A6
 for <speakup@linux-speakup.org>; Sun,  2 Aug 2020 13:28:23 -0400 (EDT)
Date: Sun, 2 Aug 2020 10:28:17 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime
To: speakup@linux-speakup.org
Subject: Especially for Samuel, About the DecTalk
Message-ID: <alpine.DEB.2.23.453.2008021022050.2718091@chime>
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

Well, after examining the manual-and-experimenting, I found the
echo "[:dv hr 10]
provides much more inflection-and-punch to the voice.
Hope this helps
Chime
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
