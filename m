Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id C423B297C27
	for <lists+speakup@lfdr.de>; Sat, 24 Oct 2020 13:42:10 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 45E75380EA8; Sat, 24 Oct 2020 07:42:10 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm2 header.b=UH/jTSDH;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm1 header.b=dZanbpfz;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id A869D380EA7;
	Sat, 24 Oct 2020 07:42:09 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 98F3B380BBF; Sat, 24 Oct 2020 07:42:08 -0400 (EDT)
Received: from wout5-smtp.messagingengine.com (wout5-smtp.messagingengine.com
 [64.147.123.21])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 32134380971
 for <speakup@linux-speakup.org>; Sat, 24 Oct 2020 07:42:08 -0400 (EDT)
Received: from compute2.internal (compute2.nyi.internal [10.202.2.42])
 by mailout.west.internal (Postfix) with ESMTP id 00031828
 for <speakup@linux-speakup.org>; Sat, 24 Oct 2020 07:42:04 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute2.internal (MEProxy); Sat, 24 Oct 2020 07:42:05 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 hubert-humphrey.com; h=date:from:to:subject:in-reply-to
 :message-id:references:mime-version:content-type; s=fm2; bh=AR7Z
 nj0X+GMQl0ZVRtMv4dBDo6o47FIG6/tRIJu4/FE=; b=UH/jTSDHhH3z3FrPUGuA
 irI+zj8HJ0X6ZMM+vPO4UhoGA1dp+DWCXtgZcqrSfyzdGihK0IgcnM/qSxzPqXTy
 PMTSSdo7SVzqQoTFayxSpGcPcrS1dVuOFuYxu8a/D2zqZkQgBrnt/d1+m8d9xydu
 600yYcEB8IxlPesQ2V8lafsMjLJIOvqectDW5vtGmPltswWJX2AqEiSZFt7J83HN
 I8mtD6hAc2PMMR28XY24rz/QSjp5GC/gRlPdNV9HfAyB6F7XtVeLoYUzmmSef2Kj
 jT6EBlQYOIukpkTgJENXX3jRroKZUYUWWvw1YTioh6jpPut1iCCyPCSf97i1KU0z
 4A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=AR7Znj
 0X+GMQl0ZVRtMv4dBDo6o47FIG6/tRIJu4/FE=; b=dZanbpfz1YCW52l24y+Kvn
 KLi4kHG9KuoWz0uhSAYeHGT2n1+xDl4xg2RLSISSolQsVSz4VQgh8kAgYgt3PJ5v
 iVQu3uC7DiM1AUrypQbAfDm3/4+JD6hX44/XCM8Ownjt2sGb9Z62js1AxZmJXAIG
 QF5bm6dP3YPaMUWJ4fBOOHjMGLkjat5I61ygapc50PPeKeJWuwNHPIQUaL06Rt3/
 usKaYHUkx/G416bWYZu4tgdSDA3oiLcBz2kIuFa8PaNx2Mqx+bddGx5hPjbarxFi
 Iq93waLZ90uRQjUrJp7iBih4nSZqAWjokC4a4zIxPAmLfjB7uOpje9hZTcGoA8Mw
 ==
X-ME-Sender: <xms:DBOUX5xtAX-n8_G9B1NNbJC9xqkrBEaR_SyIurBJd_CZzKX5Gou3pg>
 <xme:DBOUX5Tv2_dZw2WkBuf4wTbYw7sawruZngzCtcJHPWDv7e0S0EvR61L32typ8z3Rw
 IToBJpmU2xvx9oLJ9w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedrkedvgdeggecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvufgjkfhfgggtsehttdertddttddvnecuhfhrohhmpeevhhhimhgvucfj
 rghrthcuoegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhmqeenucggtf
 frrghtthgvrhhnpeffhedthfdvvdeuueeihedvfeffuedtgeeuudfhgfelteelvdduudfg
 leekvedtveenucfkphepuddtgedrudejvddrfedrieefnecuvehluhhsthgvrhfuihiivg
 eptdenucfrrghrrghmpehmrghilhhfrhhomheptghhihhmvgeshhhusggvrhhtqdhhuhhm
 phhhrhgvhidrtghomh
X-ME-Proxy: <xmx:DBOUXzVStE0XicjhB7u23G5AklfEOe2rxPnjd-H2d7YSnFPCg7tA5w>
 <xmx:DBOUX7gKYhsL-3-aa4csQxUr8UI9HRxA_DWYG7cK4Q9SUdVb7rueQg>
 <xmx:DBOUX7CkQ2wu0lj1LuPrlKi149IXemW5mz82w7MgCqwKFm2pmVz2eA>
 <xmx:DBOUX-NvH4oNFhCG2S8BhY9qFndTDtI-iq-AjAt5psrDEgKIDN7q3g>
Received: from chime.lan (cpe-104-172-3-63.socal.res.rr.com [104.172.3.63])
 by mail.messagingengine.com (Postfix) with ESMTPA id DF6933064610
 for <speakup@linux-speakup.org>; Sat, 24 Oct 2020 07:42:03 -0400 (EDT)
Date: Sat, 24 Oct 2020 04:42:02 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Cut-and-Paste Kernel Errors
In-Reply-To: <20201024090609.huv2mvwikpjkl66i@function>
Message-ID: <c42e2729-cd3c-f02-e8bd-549669c57228@hubert-humphrey.com>
References: <57a81192-89a4-1671-f440-884f2d4129c@hubert-humphrey.com>
 <20201024090609.huv2mvwikpjkl66i@function>
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

Hi Samuel: I would love to help, if I can upload a zip of 
/var/log/messages and /var/log/kern.log. Obviously trying to cut-and-paste 
will just get me in more trouble. The zip is 326kb. Thanks in advance
Chime

_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
