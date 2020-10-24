Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id A72D3297A47
	for <lists+speakup@lfdr.de>; Sat, 24 Oct 2020 04:01:37 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 04248380EB7; Fri, 23 Oct 2020 22:01:36 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm2 header.b=N0rcCZ4J;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm1 header.b=eRsn3DQu;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id D8943380EA9;
	Fri, 23 Oct 2020 22:01:34 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id CEB1F380E97; Fri, 23 Oct 2020 22:01:33 -0400 (EDT)
Received: from out1-smtp.messagingengine.com (out1-smtp.messagingengine.com
 [66.111.4.25])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 5562C380B43
 for <speakup@linux-speakup.org>; Fri, 23 Oct 2020 22:01:33 -0400 (EDT)
Received: from compute2.internal (compute2.nyi.internal [10.202.2.42])
 by mailout.nyi.internal (Postfix) with ESMTP id 90B315C0090
 for <speakup@linux-speakup.org>; Fri, 23 Oct 2020 22:01:30 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute2.internal (MEProxy); Fri, 23 Oct 2020 22:01:30 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 hubert-humphrey.com; h=date:from:to:subject:message-id
 :mime-version:content-type; s=fm2; bh=eQWfzdx5tp0t8NDPRsJsNI6G0A
 ft6bT1gdJZgDQdj1s=; b=N0rcCZ4JPUdP5E2tOO097t6IEJU5ZX/Ym+yqb9IBIr
 pg+zwmnWW96MXQ7aEJ7UAtqayFe0BL0LGp9SSplx7g5V37mZg/l3MCjo6VqmzMSz
 uHwvuQRwqqZNgkAppXfuj1cp4oSj0lnhtspreFlIUysQkMVXtJTaKvGElqO+rrGk
 jCX7KXygVm+Txdl5bTxO0QtY0JJ6A8ghUgRAZbqHSquYMQ/RTn1KHQmOjn0yoMKb
 VtHqHxI7YnSs9bySi+aW11of9TfR/P1KbLqhKxY0ACS6gr6dIufPv09kf9pm1pmr
 qMc47jf8vX3iiWOh3QIMEpr0bcxzcUiCaxQjohAS6E3g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=content-type:date:from:message-id
 :mime-version:subject:to:x-me-proxy:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm1; bh=eQWfzdx5tp0t8NDPRsJsNI6G0Aft6
 bT1gdJZgDQdj1s=; b=eRsn3DQuyHUH48jM8zHftRsUSdQtQWfvVn6n4fY4q60dX
 nxW4sRMORRMDIq5AaGdcs8cjxjFMTp3EdcbzjRxsdaqRMtmoM+yRaNB8MdVuGmRY
 gowRKpzOJSebfHulbtXIJXR2HLUjmUwe37TlbCLBJJONX/+5380UIiPBd+EulXYA
 kHFSLOR1nct9z0R/GOd3gnW762BYFV5Xev60XkyKZIyWjk9fFstSYLJQoRndjQh3
 Io/0H3guw4OuiNl0i8uGu4vJ7p7IHveqgHYQy+2BO5QDzeXTBLgO0nXML0sk1ViR
 oO98eKi99r6Lg5DBeCWoWwgl5aiN1dH5/k/VtFkYQ==
X-ME-Sender: <xms:-oqTXyqGrCJlCQ-CELCwpVQssU9BPGNBpC9FAkFuUtwJRoNBY5RgGw>
 <xme:-oqTXwr4rCYDjhcHT6Xtn1gC6IDKMEOKtxW890IP8X2MuDuLBc_IAfqwyfxXIU49M
 EgybdtmuskW2mir2DM>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedrkedugdehgecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffukfggtgesthdtredttddtvd
 enucfhrhhomhepvehhihhmvgcujfgrrhhtuceotghhihhmvgeshhhusggvrhhtqdhhuhhm
 phhhrhgvhidrtghomheqnecuggftrfgrthhtvghrnhepjeffffdujeelueffieevtdeite
 ettdekgffgkedvueejteektdehfefhhfdvteeknecukfhppedutdegrddujedvrdefrdei
 feenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegthh
 himhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhm
X-ME-Proxy: <xmx:-oqTX3PwFisLqUwc5_AMUwHFosnIKeszO-upzePiAIQyMsGkyqnDjw>
 <xmx:-oqTXx4fs52k3iTtUDKdSSbNwju0zObkxMoejvBLzk6SVPtgAe9r3w>
 <xmx:-oqTXx74JAMGyF1uEcMIyx5dn5pPveTFymaSTLNjhEkq6eHriEvXVg>
 <xmx:-oqTXzHM86XmOGUON02ZNoLetxOUGDrvjp_3O0ZB1hkXIEOlvtIcWw>
Received: from chime.lan (cpe-104-172-3-63.socal.res.rr.com [104.172.3.63])
 by mail.messagingengine.com (Postfix) with ESMTPA id DED323064610
 for <speakup@linux-speakup.org>; Fri, 23 Oct 2020 22:01:29 -0400 (EDT)
Date: Fri, 23 Oct 2020 19:01:28 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
To: speakup@linux-speakup.org
Subject: Cut-and-Paste Kernel Errors
Message-ID: <57a81192-89a4-1671-f440-884f2d4129c@hubert-humphrey.com>
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

Wow, all-of-a-sudden after trying to paste in an article in to Alpine, no 
article goes in but I get these kernel hunt announcements about task hung 
I would love to paste in these errors, but not only would that cause more 
trouble-and-lockup more consoles. The messages say something about a 
timeout and an echo command to disable it. If this message is garbled its 
because those errors are invading more consoles. I guess I can't use 
cut-and-paste for now.
Chime
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
