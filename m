Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (tunnel25281-pt.tunnel.tserv21.tor1.ipv6.he.net [IPv6:2001:470:1c:288::2])
	by mail.lfdr.de (Postfix) with ESMTP id D34C1155875
	for <lists+speakup@lfdr.de>; Fri,  7 Feb 2020 14:30:17 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 1AB161C2C78; Fri,  7 Feb 2020 08:30:17 -0500 (EST)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; secure) header.d=mailbox.org header.i=@mailbox.org header.a=rsa-sha256 header.s=mail20150812 header.b=t9vw8eKZ;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=mailbox.org header.i=@mailbox.org header.a=rsa-sha256 header.s=mail20150812 header.b=rRLxFKxA;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 556501C2C71;
	Fri,  7 Feb 2020 08:29:41 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id C23671C2C6B; Fri,  7 Feb 2020 08:29:38 -0500 (EST)
Received: from mout-p-102.mailbox.org (mout-p-102.mailbox.org
 [IPv6:2001:67c:2050::465:102])
 by befuddled.reisers.ca (Postfix) with ESMTPS id A13DE1C0148
 for <speakup@linux-speakup.org>; Fri,  7 Feb 2020 08:29:35 -0500 (EST)
Received: from smtp2.mailbox.org (smtp2.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:2:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mout-p-102.mailbox.org (Postfix) with ESMTPS id 48DbkN6hpvzKmTJ
 for <speakup@linux-speakup.org>; Fri,  7 Feb 2020 14:29:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mailbox.org; h=
 content-transfer-encoding:content-type:content-type:mime-version
 :message-id:subject:subject:from:from:date:date:received; s=
 mail20150812; t=1581082170; bh=sC82lbJ2dwMnURhvfICmTgxjJ0BfwnLy6
 ETQaLvDzQI=; b=t9vw8eKZavhK4tUUFnpGBOgEtcYqFMxo9KIXAT3t3745UWGjN
 7ovj5wpKDoIUQm3T5pEMlCNDrgGIkRfKjvnutecii5+GjNNC/Oy/kBM5VxsJHyzU
 EFWuYAP82hUspemO3jQxNv5GqodSm3zFqSN/XUKvbig/5IlZ/KTvL2NuSMznJxI6
 9tiPU5lmSKHwNiqUkNh/yWUaw1QUib/uzyyn+iqPwcSb+UOVL5Gj1N+wqEfKM68m
 LnuueZgpxI5Hsgj2JmwUAUF/R6KRQZmJi9LbaBn17i84LW8sy+U/y2nXJRwbUbgg
 nbGvgU1zVbMDubd4anvIWCRjl4hVMFlq852zA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org;
 s=mail20150812; t=1581082171;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=Y6iuX09ke0M9bQA06NMBYOqtgwPVYCwrZtd/9R9VCyY=;
 b=rRLxFKxAWi2U0OV0x1KR8TINAInzpQN1hr5dHWexdNJ5C9vhsQUzShXEhSx1ZRxhsOdtMi
 Z+DAqCZ+S0KuWmQlQ5gG8yQFJWWiS4AurOQjT+DX5ZiTX72Fj3BMAR3wtyQd7zUPLv6vBF
 pq4QTTmEz/EB3PHJFHQ0/vmTyS0t+cpNnWBJzUI0emsboVc3KCbR8MuAIUsCvHsV6KIPEy
 /NjaurLbyQ2iTIKjxMlM/mNM/wuIlhH+zXw22gGC/blQ6CMt/++VYmc623k7wCiyUGb/l+
 cEtMi1jz0Z7G0gGsEE54y9ozwz054f69geeqVEBCYOjvrTxBLBQe2YsstgeBmQ==
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by spamfilter03.heinlein-hosting.de (spamfilter03.heinlein-hosting.de
 [80.241.56.117]) (amavisd-new, port 10030)
 with ESMTP id gsw4EjDo9XE7 for <speakup@linux-speakup.org>;
 Fri,  7 Feb 2020 14:29:30 +0100 (CET)
Date: Fri, 07 Feb 2020 14:29:28 +0100
From: Lukasz Golonka <lukasz.golonka@mailbox.org>
To: speakup@linux-speakup.org
Subject: Debian with Speakup and software speech under VirtualBox
Message-Id: <20200207142925.2D07.BD179882@mailbox.org>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

Hello,

Is anyone able to successfully use versions of Debian more recent than Debian 7 under any version of VirtualBox with a Speakup and eSpeakup? For me it works as long as speech is not stopped, so it is not possible to use screen navigation for example effectively making it unusable. My main host is running VB 5.1.14 but I've also tried with more recent versions up to the latest one 6.1. Any help welcome.


-- 
Regards
Lukasz
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
