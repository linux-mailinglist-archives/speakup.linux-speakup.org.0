Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (tunnel25281-pt.tunnel.tserv21.tor1.ipv6.he.net [IPv6:2001:470:1c:288::2])
	by mail.lfdr.de (Postfix) with ESMTP id 7DAF2299A52
	for <lists+speakup@lfdr.de>; Tue, 27 Oct 2020 00:19:50 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id A438D380EE1; Mon, 26 Oct 2020 19:19:47 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm2 header.b=ckY2OEEm;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm1 header.b=BSCBOV5c;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id C9F19380EBC;
	Mon, 26 Oct 2020 19:19:46 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 6B0C3380BEA; Mon, 26 Oct 2020 19:19:46 -0400 (EDT)
Received: from out3-smtp.messagingengine.com (out3-smtp.messagingengine.com
 [66.111.4.27])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 02D7F380BB4
 for <speakup@linux-speakup.org>; Mon, 26 Oct 2020 19:19:46 -0400 (EDT)
Received: from compute2.internal (compute2.nyi.internal [10.202.2.42])
 by mailout.nyi.internal (Postfix) with ESMTP id CEDCC5C014B
 for <speakup@linux-speakup.org>; Mon, 26 Oct 2020 19:19:42 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute2.internal (MEProxy); Mon, 26 Oct 2020 19:19:42 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 hubert-humphrey.com; h=date:from:to:subject:message-id
 :mime-version:content-type; s=fm2; bh=kkTmh68H+eQWxOCtObEdVif5h3
 TSWMu5cFVQiV3m7DA=; b=ckY2OEEmIdql+Vt8TUkDAWHk+WWi6n+K4ULqQwPqik
 H2fVtErZKpYkD9Eqhfx+5IY4etQg+bEVpHdD+pkcPFVSaV4SYsQp5Iz6H5hzWVGX
 YYJkcT+W1ChVVxhzrj1GVoK299Eo9UtLwwVnmg9FD6pvpMDIHoFAmjmLDTtCvtvS
 lghPAEWv6GOnxvXpiRCz+Y7aQLdpon0pNvoyhXhnfmBYPXONqqEqw6NQwMYN3RHB
 kx4XoseXBb8UD4iLhbpO2HjM74FPnmb649QBLw1yQiL1iClWRQWlcaaoCy+ZCGuJ
 TYp+tTD68msTMDAfvaYHYSbDuE/bnsI2vzW+fIXXNrFQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=content-type:date:from:message-id
 :mime-version:subject:to:x-me-proxy:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm1; bh=kkTmh68H+eQWxOCtObEdVif5h3TSW
 Mu5cFVQiV3m7DA=; b=BSCBOV5cXATSg1/w12yU9++7Clq5NdN6cwcaoo5yFRyE9
 k/KRrrEHVq2hn12Hsmg/up1UkrSOKWEg4c7WqLp0ZAevVEH4vFCqfnM1RtqnulPT
 ULBmHoOfSdX1F0z9gfaSGerlU+WYRAKE1Mpst8uN316E0uLeZbd3QMFSiGBqMx+p
 iCVKd1tBvcQtWyUdwHnbi3l9/vSohouMI8CwOIipRTIhNwrFwENEHu81gnJ3xZUv
 RXjUUIVtmYeoITghU5N/7w+EKlVHnsCR8xBji4y7Wd/rB0Gyl7t0uyctm6ai8vsq
 EYZcPrnPW1vmivAWDT1qD+dEeEwknemNpSsvb9ATQ==
X-ME-Sender: <xms:jlmXX2vbKqtlkJncynsQkDUHKqY7AQmTz84dqYsWn9tJma3VfSekrw>
 <xme:jlmXX7eq-7ql6l4Rd85nhzRY2GgR1dUa7gCQK_qWX3AeRpG_SDIrk1swznJQgdPTf
 D_kQox1_OYSadbrS_8>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedrkeekgddtiecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffukfggtgesthdtredttddtvd
 enucfhrhhomhepvehhihhmvgcujfgrrhhtuceotghhihhmvgeshhhusggvrhhtqdhhuhhm
 phhhrhgvhidrtghomheqnecuggftrfgrthhtvghrnhepjeffffdujeelueffieevtdeite
 ettdekgffgkedvueejteektdehfefhhfdvteeknecukfhppedutdegrddujedvrdefrdei
 feenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegthh
 himhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhm
X-ME-Proxy: <xmx:jlmXXxxynMJkr8O8QpgpX6f6yd7SWNwl0vEBg_RsPP4Lpw929GVntA>
 <xmx:jlmXXxMq1Sl5KOYmHeYVVhVfrHktHOoamPeIL33oBUvNx3W8Q6hfSw>
 <xmx:jlmXX2_AV9MDztdN0HlAA-_S3oSt7MybVY-_WqGNC1pgPfAj6bMLWQ>
 <xmx:jlmXX5IolWbxB56T1VRtoah4UJ4awKsXBbaPrCXAxyNwnL7-8nO_Bw>
Received: from chime.lan (cpe-104-172-3-63.socal.res.rr.com [104.172.3.63])
 by mail.messagingengine.com (Postfix) with ESMTPA id 2B16B3064680
 for <speakup@linux-speakup.org>; Mon, 26 Oct 2020 19:19:42 -0400 (EDT)
Date: Mon, 26 Oct 2020 16:19:40 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
To: speakup@linux-speakup.org
Subject: More About Cut-and-Paste
Message-ID: <dfbeb060-3e8c-b52a-c686-f56263d358@hubert-humphrey.com>
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

OK, first, back on Saturday I tried sending a 326kb zip file of 
/var/log/messages and kern.log  to this list, but it was awaiting an owner 
approval because of its size.  I also sent the file to Samuel-and-would be 
happy to send to any 1 else who would want to examin it.
This issue involes my laptop running Voxin, where if I paste nothing gets 
pasted-and-it hangs a console with errors. Now, running same kernel but on 
a desktop machine, I pasted with no trouble, but on that machine I am 
strugling with a 4second delay after typing with a DecTalk, so for 
convenience until an idea comes along to fix that, I will be on a laptop. 
Thanks so much in advance
Chime
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
