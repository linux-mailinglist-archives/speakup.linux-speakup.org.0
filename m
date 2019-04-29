Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (tunnel25281-pt.tunnel.tserv21.tor1.ipv6.he.net [IPv6:2001:470:1c:288::2])
	by mail.lfdr.de (Postfix) with ESMTP id 831CBE5F2
	for <lists+speakup@lfdr.de>; Mon, 29 Apr 2019 17:17:51 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id B642E1C43BE; Mon, 29 Apr 2019 11:17:50 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=coolip.net header.i=@coolip.net header.b="y2CQ/Uue";
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id C292C1C433C;
	Mon, 29 Apr 2019 11:17:17 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 580811C431B; Mon, 29 Apr 2019 11:17:09 -0400 (EDT)
Received: from mailer.coolip.net (mailer.coolip.net [54.165.87.160])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 4BE7F1C42F5
 for <speakup@linux-speakup.org>; Mon, 29 Apr 2019 11:17:07 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
 by mailer.coolip.net (Postfix) with ESMTP id 283F9E1EF6
 for <speakup@linux-speakup.org>; Mon, 29 Apr 2019 11:17:06 -0400 (EDT)
Received: from mailer.coolip.net ([127.0.0.1])
 by localhost (mailer.coolip.net [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id PtOMuLFmliNU for <speakup@linux-speakup.org>;
 Mon, 29 Apr 2019 11:17:05 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
 by mailer.coolip.net (Postfix) with ESMTP id 83A3BE52EB
 for <speakup@linux-speakup.org>; Mon, 29 Apr 2019 11:17:05 -0400 (EDT)
DKIM-Filter: OpenDKIM Filter v2.10.3 mailer.coolip.net 83A3BE52EB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=coolip.net;
 s=E7505158-8BEF-11E7-8FDA-0CC2F7FFB772; t=1556551025;
 bh=MUCYDa5g/EATYHEIG4yE7l3B5t5LezJVpwKEaGWQe+8=;
 h=Date:From:To:Message-ID:MIME-Version;
 b=y2CQ/UueNPdGdqNnJ8dNQ6HmN3nzFGvc8PkrjcKc7oV5WKp9Iuq8QtjXb/vNLkSJi
 ciY3AULQfySDUfAnK+bTIS/VLZpgoGy2eXftnh4WeLjp3FQGhj+mYr8QtrFsMByjQC
 yq3D0KF1Zf8cr1ZkpZy13BfMpM9hSrCTOg49w51RHQDgG9v8yWk5ygouTaf/QVvhF4
 XU83T9xOrEhpFiv9iJC0QWdxNf81NU/vUrpmdpSWIF7YZPO2VCRqcy6XFvExGEvjWA
 i9k58ISsv7xb2sh/Kf2w7PGqmkf/fXc0iE2cfkrt72Sv//gAWNUbAQZY6WJUz9FW5s
 bpnXgZTtTxEEA==
X-Virus-Scanned: amavisd-new at mailer.coolip.net
Received: from mailer.coolip.net ([127.0.0.1])
 by localhost (mailer.coolip.net [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id BV1sFGgMSGw3 for <speakup@linux-speakup.org>;
 Mon, 29 Apr 2019 11:17:05 -0400 (EDT)
Received: from whatsup (unknown [65.156.57.10])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: kprescott@coolip.net)
 by mailer.coolip.net (Postfix) with ESMTPSA id 50FA4E1EF6
 for <speakup@linux-speakup.org>; Mon, 29 Apr 2019 11:17:05 -0400 (EDT)
Date: Mon, 29 Apr 2019 11:17:01 -0400 (EDT)
From: Kelly Prescott <kprescott@coolip.net>
X-X-Sender: kprescott@whatsup.nkparts.com
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Speakup not working in Ubuntu 18.04
Message-ID: <alpine.DEB.2.21.1904291111550.13195@whatsup.nkparts.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
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

The  subject says it all.
I have installed Ubuntu 18.04 and speakup will no longer work.
I had 16.04 on this box and speakup with espeakup and soft-synth worked 
fine.
I installed 18.04 and the modules insert with complaints about module 
signing, but they are there
Espeakup is running, but no speech.
I can type espeak hello and it speaks hello
I can boot my archlinux emergency rescue key and it talks just fine.
I can play beeps and such through the speakers.
This is a totally console setup.  I do not use X on this box at all.
Is there a issue with speakup and 18.04?
If so, is there a solution or should I just install something else.
Any ideas would be appreciated.
Thanks.


_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
