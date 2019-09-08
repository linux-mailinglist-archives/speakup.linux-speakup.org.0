Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 8E532ACF4A
	for <lists+speakup@lfdr.de>; Sun,  8 Sep 2019 16:25:28 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id AC4FE1C433D; Sun,  8 Sep 2019 10:25:27 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=coolip.net header.i=@coolip.net header.b="PoOYes14";
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id A06061C4434;
	Sun,  8 Sep 2019 10:24:11 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 4FBE31C42C7; Sun,  8 Sep 2019 10:24:09 -0400 (EDT)
Received: from mailer.coolip.net (mailer.coolip.net [54.165.87.160])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 834091C355B
 for <speakup@linux-speakup.org>; Sun,  8 Sep 2019 10:24:07 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
 by mailer.coolip.net (Postfix) with ESMTP id 42225E2C9A
 for <speakup@linux-speakup.org>; Sun,  8 Sep 2019 10:24:06 -0400 (EDT)
Received: from mailer.coolip.net ([127.0.0.1])
 by localhost (mailer.coolip.net [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id bC3GzrWPRoif for <speakup@linux-speakup.org>;
 Sun,  8 Sep 2019 10:24:05 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
 by mailer.coolip.net (Postfix) with ESMTP id EFED3E2C9B
 for <speakup@linux-speakup.org>; Sun,  8 Sep 2019 10:24:04 -0400 (EDT)
DKIM-Filter: OpenDKIM Filter v2.10.3 mailer.coolip.net EFED3E2C9B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=coolip.net;
 s=E7505158-8BEF-11E7-8FDA-0CC2F7FFB772; t=1567952645;
 bh=CK860FvMcRrdJDGJ2n7zZv4Ek1r7wT7jn73el1Uqp5c=;
 h=Date:From:To:Message-ID:MIME-Version;
 b=PoOYes14seHEQpUryKSOXu1Br7MBeilWcTEdpQQ+nmWkMs1IFlnbDjTA/WE3fadip
 BZ25q6MyLWKx0d2QtIicKqiHiDCG8zBaFEYsCNNWkLAysPInreoIMqgeZM9Ujpqh7j
 oB+8oArwucC2jFKg/r5P4QUIbQBA7oIDkCzz23yJejqzOixxyUA3MfCJyqfJT8z7LX
 zYyyc+mgjlw3J03lSMqLxAxPdgYpHWhp1OFOKHzFuGNAZwjxcNweEq2dq0ExBtoiPB
 mC0RbBt5R6uX03x1x645OgLICyWRLAPb1wRQI/xnKVF4sMyseEFqr1EPVW4hs7oV73
 zuhfonoGLLYiA==
X-Virus-Scanned: amavisd-new at mailer.coolip.net
Received: from mailer.coolip.net ([127.0.0.1])
 by localhost (mailer.coolip.net [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id nQJJ-BGeUbIy for <speakup@linux-speakup.org>;
 Sun,  8 Sep 2019 10:24:04 -0400 (EDT)
Received: from io.coolip.net (cpe-75-186-88-137.cinci.res.rr.com
 [75.186.88.137])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: kprescott@coolip.net)
 by mailer.coolip.net (Postfix) with ESMTPSA id 7C388E2C9A
 for <speakup@linux-speakup.org>; Sun,  8 Sep 2019 10:24:04 -0400 (EDT)
Date: Sun, 8 Sep 2019 10:21:49 -0400 (EDT)
From: Kelly Prescott <kprescott@coolip.net>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: help fixing speakup hang problem w smp kernels
Message-ID: <alpine.LNX.2.21.9999.1909081006120.8372@io.coolip.net>
User-Agent: Alpine 2.21.9999 (LNX 336 2019-05-04)
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

I will start with the disclaimer that I know a little C, but I am by no 
means a kernel developer nor any other kind of developer.
I do it for fun or on small projects I need for myself.

I have noticed that now that ArchLinux has moved to the Linux 5.x series, 
my system seems to hang with speakup much more than it ever did before.
I do not get the frequent hangs on my Ubuntu 16,4 and 18.4 systems.
I get them, just not as frequently.
I now have 3 archlinux machines, 2 laptops and one desktop where I can 
make the machine hang with in 5 minutes of trying.
I do this by making sure the machine is busy doing something, network 
activity, logging etc. Then I opena large file and review the screen with 
Speakup making my keystrokes faster and faster until the machine hangs.
It is also interesting that in my desktop machine when I installed a 
4-port network card, the hangs became so bad I had to take it out.
When I ran the machine without speakup, they went away, so It was not the 
network card.

Like I said, I can now reliably produce a hang.
I know I am not qualified to fix it, but I would like to offer my 
assistance in providing dumps to assist others in helping find the 
problem.'

I am going to try to get the dumps logged to a serial console and then 
saved to files.
With that said, What information do I need to provide to make this 
meaningful.
What I would like is some instruction and pointers so I can accurately 
help and not just put out useless noise.

As we move toward taking the kernel out of staging, I think we need to fix 
this as it results in a total hang of the machine.

I am willing to grant machine access, make and send crash information, run 
tests, or anything else I can do to help get this resolved.

If someone will reply with what needs to be done from my side, I would be 
happy to get started.

Thanks.

-- Kelly Prescott
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
