Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from grumpy.reisers.ca (grumpy.reisers.ca [206.248.184.126])
	by mail.lfdr.de (Postfix) with ESMTP id D328619625B
	for <lists+speakup@lfdr.de>; Sat, 28 Mar 2020 01:15:13 +0100 (CET)
Received: by grumpy.reisers.ca (Postfix, from userid 65534)
	id C6D9A4280484; Fri, 27 Mar 2020 20:15:04 -0400 (EDT)
Authentication-Results: grumpy.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=coolip.net header.i=@coolip.net header.b="SdTnCMXT";
	dkim-atps=neutral
Received: from befuddled.reisers.ca (unknown [10.10.10.10])
	by grumpy.reisers.ca (Postfix) with ESMTP id D10114280463
	for <lists+speakup@lfdr.de>; Fri, 27 Mar 2020 20:13:42 -0400 (EDT)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 245261C73D4; Fri, 27 Mar 2020 20:13:42 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=coolip.net header.i=@coolip.net header.a=rsa-sha256 header.s=E7505158-8BEF-11E7-8FDA-0CC2F7FFB772 header.b=SdTnCMXT;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 619621C73BA;
	Fri, 27 Mar 2020 20:13:23 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 7A6C31C57B6; Fri, 27 Mar 2020 20:13:14 -0400 (EDT)
Received: from mailer.coolip.net (mailer.coolip.net [54.165.87.160])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 81AAF1C26CB
 for <speakup@linux-speakup.org>; Fri, 27 Mar 2020 20:13:11 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
 by mailer.coolip.net (Postfix) with ESMTP id C1555E053E;
 Fri, 27 Mar 2020 20:13:07 -0400 (EDT)
Received: from mailer.coolip.net ([127.0.0.1])
 by localhost (mailer.coolip.net [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id BDQRc88r64-Q; Fri, 27 Mar 2020 20:13:06 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
 by mailer.coolip.net (Postfix) with ESMTP id 928C1E0551;
 Fri, 27 Mar 2020 20:13:06 -0400 (EDT)
DKIM-Filter: OpenDKIM Filter v2.10.3 mailer.coolip.net 928C1E0551
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=coolip.net;
 s=E7505158-8BEF-11E7-8FDA-0CC2F7FFB772; t=1585354386;
 bh=15fk8GMF32+uFzOFzhj8oCr5Eot8ko1KxyM4bpDhDjc=;
 h=Date:From:To:Message-ID:MIME-Version;
 b=SdTnCMXTAsRVfABpm7FIgEZArQqwpqYRbldo1sooJmEvOpKkbzlD6VB45x+LMQoZ9
 yTPkGb6/PdYqDYPSV9smpYKRIZcNCWvjps4jv8SHiMPGVQUvtbElUMyLb0B6Ccq2FG
 YjK6m8zh1B9XxAAStXFMBAjkbmlk/SvxgcIOUqBXE44wchft//ebqs7vdFxvpS+0HY
 RfhlAYzcUwH4LuOVnfBUGAQa+wFyj946M2zx6uX0GNXd1tTj119GpRXRL7plpVzoBL
 mahTqkKmgvvynU2NszxOTd0L2GDsLa3+zMuR5NSUKhKeqKzZmlvVTqH3e54Bk1rNyx
 jvRQeBLfgzgjQ==
X-Virus-Scanned: amavisd-new at mailer.coolip.net
Received: from mailer.coolip.net ([127.0.0.1])
 by localhost (mailer.coolip.net [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id OdeAQNCuII-0; Fri, 27 Mar 2020 20:13:06 -0400 (EDT)
Received: from io.coolip.net (cpe-75-186-70-119.cinci.res.rr.com
 [75.186.70.119])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: kprescott@coolip.net)
 by mailer.coolip.net (Postfix) with ESMTPSA id 092A7E053E;
 Fri, 27 Mar 2020 20:13:05 -0400 (EDT)
Date: Fri, 27 Mar 2020 20:12:55 -0400 (EDT)
From: Kelly Prescott <kprescott@coolip.net>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: speakup on latest kernels
In-Reply-To: <20200303131128.7d4uitw7feevimoj@function>
Message-ID: <alpine.LNX.2.22.411.2003271958160.10657@io.coolip.net>
References: <77f47396-554f-3d0a-fd9d-fc760ecb2dfe@the-brannons.com>
 <20200130053303.GA4319@gregn.net>
 <9ca2e37d-f293-9b7b-80a2-177cbccfb08e@gmail.com>
 <alpine.NEB.2.21.2001301518500.16863@panix1.panix.com>
 <20200303131128.7d4uitw7feevimoj@function>
User-Agent: Alpine 2.22 (LNX 411 2020-02-29)
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
Cc: Janina Sajka <janina@rednote.net>, Gregory Nowak <greg@gregn.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

This patch appears to now be included in arch Linux after 
upgrading the kernel to 5.5.13-arch1
Could someone also confirm this for me?
I got my information from 
https://git.archlinux.org/archlinux.git/log/?h=v5.5.12-arch1&ofs=50&showmsg=1



On Tue, 3 Mar 2020, Samuel Thibault wrote:

> Hello,
>
> For people who have had crashes with latest kernels and can rebuild
> their own kernel, could you try to apply the attached patch? It seems to
> be fixing things and for sure would trigger crashes when doing get_word
> while speakup is on a space. The issue has been there for at least 10
> years, it's a bit crazy that only now we have crashes with it :)
>
> Samuel
>
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
