Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (tunnel25281-pt.tunnel.tserv21.tor1.ipv6.he.net [IPv6:2001:470:1c:288::2])
	by mail.lfdr.de (Postfix) with ESMTP id 5166B29E32C
	for <lists+speakup@lfdr.de>; Thu, 29 Oct 2020 04:04:22 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 30BA6380EED; Wed, 28 Oct 2020 23:04:19 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm2 header.b=UeLELt6p;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm1 header.b=qH81DSi/;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 0D8F8380EC2;
	Wed, 28 Oct 2020 23:04:18 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id BA537380E94; Wed, 28 Oct 2020 23:04:17 -0400 (EDT)
Received: from wout3-smtp.messagingengine.com (wout3-smtp.messagingengine.com
 [64.147.123.19])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 1647B380BEB
 for <speakup@linux-speakup.org>; Wed, 28 Oct 2020 23:04:17 -0400 (EDT)
Received: from compute2.internal (compute2.nyi.internal [10.202.2.42])
 by mailout.west.internal (Postfix) with ESMTP id A3AA2DD5
 for <speakup@linux-speakup.org>; Wed, 28 Oct 2020 23:04:13 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute2.internal (MEProxy); Wed, 28 Oct 2020 23:04:13 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 hubert-humphrey.com; h=date:from:to:subject:message-id
 :mime-version:content-type; s=fm2; bh=Oobjw4JZw5SahQI01JCAvO4bDd
 QlfmDzwcTX40jDM3Y=; b=UeLELt6ptTvFGo/3Qw1hMXdqILOV6SsYgJKx0XSkoZ
 VaXKL6XdODq8ABp7Zk8eWa+Sjo8az2m2aA3FIo7JWHbEHEp0oSiyfnKEidtAN0L7
 stooRflbt0bYymGRTtkBgjICjMlZUi55btl8RquDjnaAl7bPtTX8D9czGeo1zVQW
 E9LRlD1AIyoGf/8n8OTez/4NGMCSC+aYBgTJ5K25E9/3OPvJT7NRPC5cTmVBdewH
 ncFnz7HpED6tBe12yCQMlFFu+XmN3XQQX9cEChNLc4DfyR65/2AMehb7PPLgWCGH
 2hYRo2ovPotNV534SN6WQ9+NrFTMQeYqAffeSq55Z6dw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=content-type:date:from:message-id
 :mime-version:subject:to:x-me-proxy:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm1; bh=Oobjw4JZw5SahQI01JCAvO4bDdQlf
 mDzwcTX40jDM3Y=; b=qH81DSi/kPShxNJ60m7ThUQqb5SyStffF+JqiGuXaw8kI
 kvOgUWXhEq2b1PLf0OuzhX28aMFG3BItipoo0BwfOn4udd4ZIfDzkf1XpARRANFt
 7IvksWnh2uKMg8vZc5F8FSxgR0URfrEvPsUT1wXl7MudtFcuuW/AKC3Ifk9eMfOn
 5sZVt6ILiLtE8HImadGoXYWyMp5Vb6K/muOsTvEx+GqID5Op1+YEHd7PnbtV+/Mw
 ews04ugW1yJDzNhPGIsNV3r6mk6s+y8pj1Td4DBx0VfGZXGRfeWgczNrjuEJTu46
 Vkj8hmFEwa7weC5OyC4zRNXVa6HIxWyR54Vz1JaaQ==
X-ME-Sender: <xms:LTGaX1DC0nbitAtYPmGbSvkB91O4OSdWiXedNU7LaDTZmIzxLUR33A>
 <xme:LTGaXzi4BrzUS_ZO4GKsh5sT71gh5T8Tmlkn-dTzJ4-x0nGZrix2YWuBgrquRtoeE
 miEIjC8n1-uyr2fidQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedrledvgdekudcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffukfggtgesthdtredttddtvd
 enucfhrhhomhepvehhihhmvgcujfgrrhhtuceotghhihhmvgeshhhusggvrhhtqdhhuhhm
 phhhrhgvhidrtghomheqnecuggftrfgrthhtvghrnhepjeffffdujeelueffieevtdeite
 ettdekgffgkedvueejteektdehfefhhfdvteeknecukfhppedutdegrddujedvrdefrdei
 feenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegthh
 himhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhm
X-ME-Proxy: <xmx:LTGaXwkYX3MJoMxmma8G7JKPLOGMCeNVeeYRWLo3-odhA6C0Aqk3Tw>
 <xmx:LTGaX_y9RMqSXeRjuHujFcdHJf5MMWqOZb11Y3NCU5z2xjuBo_rlSQ>
 <xmx:LTGaX6QQiconYRCEVFYJ_p8ZuzG9Cjke_qu_2LdqcYV9q9gB3qIXTA>
 <xmx:LTGaXxcnu4kLydVRQEm5MsmMqHVcPJ-9gwu5zpG9tTDWtVRCIKYGWQ>
Received: from chime.lan (cpe-104-172-3-63.socal.res.rr.com [104.172.3.63])
 by mail.messagingengine.com (Postfix) with ESMTPA id AE0A33064683
 for <speakup@linux-speakup.org>; Wed, 28 Oct 2020 23:04:12 -0400 (EDT)
Date: Wed, 28 Oct 2020 20:04:11 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
To: speakup@linux-speakup.org
Subject: 11 Lines of Kernel Code?
Message-ID: <206c843-1b79-9fa-f56e-fcb1b3fc80f3@hubert-humphrey.com>
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

Hi All Last Friday evening I traded messages on this list with 
Samuel-and-others about my console hang or lockup. Reviewing again, on 
this laptop running a Debian Sid 5.9.0.1 with Voxin. Multiple times when 
attempting to paste in an article, nothing was inserted, but I got tons of 
errors, which you will see in this small extract. Cut-and-paste still 
works on my desktop machine, same kernel, but with a DecTalk, still with a 
4second delay. Here is a sampling of kernel.log, where we see each time 
speakup is mentioned, also these errors beginning with 3thousand are after 
pasting.
Oct 19 11:38:45 dance kernel: [   14.295312] input: Speakup as /devices/virtual/input/input14
Oct 19 11:38:45 dance kernel: [   14.295548] speakup 3.1.6: initialized
Oct 20 17:24:44 dance kernel: [   14.350316] input: Speakup as /devices/virtual/input/input14
Oct 20 17:24:44 dance kernel: [   14.350557] speakup 3.1.6: initialized
Oct 22 11:09:32 dance kernel: [  137.964575] input: Speakup as /devices/virtual/input/input20
Oct 22 11:09:32 dance kernel: [  137.971851] speakup 3.1.6: initialized
Oct 23 17:54:34 dance kernel: [   14.963060] input: Speakup as /devices/virtual/input/input14
Oct 23 17:54:34 dance kernel: [   14.963303] speakup 3.1.6: initialized
Oct 23 18:44:28 dance kernel: [ 3021.908980] INFO: task kworker/u8:1:1674 blocked for more than 120 seconds.
Oct 23 18:44:28 dance kernel: [ 3021.909048]       Not tainted 5.9.0-1-amd64 #1 Debian 5.9.1-1
Oct 23 18:44:28 dance kernel: [ 3021.909090] "echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
Back again live. Other than the flat review, I think cut-and-paste are the 
Speakup items I use the most. Thanks in advance for any analysis. After my 
console got hung, I booted, thinking that would have fixed it.
Chime
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
