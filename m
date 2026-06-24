Return-Path: <speakup+bounces-1628-lists+speakup=lfdr.de@linux-speakup.org>
Delivered-To: lists+speakup@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id X59mC/79O2pBhwgAu9opvQ
	(envelope-from <speakup+bounces-1628-lists+speakup=lfdr.de@linux-speakup.org>)
	for <lists+speakup@lfdr.de>; Wed, 24 Jun 2026 17:55:42 +0200
X-Original-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 327986BFD36
	for <lists+speakup@lfdr.de>; Wed, 24 Jun 2026 17:55:31 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=m0ebp.uk header.s=livemail1 header.b=wQw2EWwQ;
	dkim=pass header.d=m0ebp.uk header.s=livemail3 header.b="/SD1zAN/";
	spf=none (mail.lfdr.de: domain of "speakup+bounces-1628-lists+speakup=lfdr.de@linux-speakup.org" has no SPF policy when checking 206.248.184.127) smtp.mailfrom="speakup+bounces-1628-lists+speakup=lfdr.de@linux-speakup.org";
	dmarc=pass (policy=none) header.from=m0ebp.uk;
	arc=pass ("arc.gem.livemail.co.uk:s=arc-0001:i=1")
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 9F4E93826AB; Wed, 24 Jun 2026 11:49:39 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 7F84438263E
	for <lists+speakup@lfdr.de>; Wed, 24 Jun 2026 11:49:39 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id C629A382642; Wed, 24 Jun 2026 11:49:32 -0400 (EDT)
Received: from t1-mo4-p00.gem.livemail.co.uk (t1-mo4-p00.gem.livemail.co.uk [212.227.122.201])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 4EDA338260D
	for <speakup@linux-speakup.org>; Wed, 24 Jun 2026 11:49:29 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; t=1782316159; cv=none;
    d=arc.gem.livemail.co.uk; s=arc-0001;
    b=V/FmDhlusUbLURodIoMATVPg66DacFPjQhqaXqyttxI37L75LOFdB1md+Hn1MYNHvn
    wGrX6tngiU3rVr8WzS0v0k6WZ/4irpTJImpv+Iu9ZzGqndSOlW3oxtKFM94qeFjwNLYg
    dItKnUbg36Cz0cSlfBZM/Z4PSxZPQ3lygqQeeTgU8OX8k0IUwGab5mSa7kKraG+ky/y/
    iYcRFe/hhamK96U+ABaV0TWksnR1VFC83/aARdyMR5UotypOu8oosuRmfY1QgQ0pk5+B
    /S8eUsUZHuSMIUt/Bd6+Mp5soN4Vn9bsVRsUfaC11mfe4WXrqf1AIYdg3x1erYVibGKe
    KdnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; t=1782316159;
    s=arc-0001; d=arc.gem.livemail.co.uk;
    h=To:Date:Message-Id:Subject:From:Cc:Date:From:Subject:Sender;
    bh=zPQ9/LWU2hrzTOikOC873Y+XDVx0lyobMdHI+o1Cawc=;
    b=JefaN3X3JLk5SkGArnylAm8hUI0+Rq7K11OW3ppnNkPaVvqUpNp44QiWXc8O7kDi0h
    gRAcyCNkoFR0YdYXoRcWCfK3mM6FBZtKQ+OazkJvl1pfeqBFsDCgvORZIZY1sS02fku5
    V2Z0yDj2EuTTxBdKvkPV0gxQPg3+1XqqeC6IwGyEskiNx5xaxBmQDoDVWIyxcctvhmhX
    GV7+WUzTZwa/d/K1DQcjB/HRqr8oUFYjn9X6uxz+sMdIH1IivUYWo5jyy6ugqmdBh9q1
    71A1WyM4o35mTcAyqF3pDF4n7LlFgDzrYn6nvv8bhpWgppt2rZWXpzMTuoEwcDjMxuEJ
    wrmA==
ARC-Authentication-Results: i=1; arc.gem.livemail.co.uk;
    arc=none;
    dkim=none
X-RZG-CLASS-ID: mo00
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1782316159;
    s=livemail1; d=m0ebp.uk;
    h=To:Date:Message-Id:Subject:From:Cc:Date:From:Subject:Sender;
    bh=zPQ9/LWU2hrzTOikOC873Y+XDVx0lyobMdHI+o1Cawc=;
    b=wQw2EWwQiYJ4sjZGvea6mOe1Q8UkH/XrmwXuS0Kmi0UC8aQeJkUzqRWplFPoF1Zj1i
    MW+2l0VDZJHBM9yc+LIvqXDqJfNoQQTeCQeoKcZhnfiqy6eI/BuakDwtBNvjd2WB+pVT
    wIsGpPt/nCN8soXbwy2gAn2orSKc3cpYBf6UjVrQs7SM/TOM8bVIypmc/mLgTO/SuQQU
    nxLTCiW00u6oAsZe5PyR5x85+SXtU6R/kTB8jZ00lbf6LmO3Me3b7CxXL3FQx6UYHFdh
    aK6yutOUv7fULkMpB8hR1CUAw8H+7bDf3rxcqLH1TjP3qcXYn5p6xBmJtpnEkDR06SOx
    V1LQ==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; t=1782316159;
    s=livemail3; d=m0ebp.uk;
    h=To:Date:Message-Id:Subject:From:Cc:Date:From:Subject:Sender;
    bh=zPQ9/LWU2hrzTOikOC873Y+XDVx0lyobMdHI+o1Cawc=;
    b=/SD1zAN/xIzBhkfQa+j6RbkTSKb5BVAFJUYHC51Vk7jIH4AEMh4ufMvNkcgJT3U+Hx
    nfxRgzHMzWn0Dj+JK+BA==
Received: from smtp.livemail.co.uk ([127.0.0.1])
    by smtp.livemail.co.uk (RZmta 55.2.4 n,-,???,???,??- am=0)
    with ESMTPSA id e295bc25OFnIAw2
    for <speakup@linux-speakup.org>;
    Wed, 24 Jun 2026 15:49:18 +0000 (UTC)
X-RZG-AUTH: ":K2kKdGClK/r0JlqG2Avpry2JL3axBcWBIP/IOjjOlMp/SoIM2U1pyGdJrgFC"
Received: from smtpclient.apple
    by smtp.livemail.co.uk (RZmta 55.2.4 AUTH)
    with ESMTPSA id e295bc25OFnIAw2
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve X9_62_prime256v1 with 256 ECDH bits, eq. 3072 bits RSA))
	(Client did not present a certificate)
    for <speakup@linux-speakup.org>;
    Wed, 24 Jun 2026 15:49:18 +0000 (UTC)
From: Georgina Joyce <gena@m0ebp.uk>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux." <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3864.600.51.1.1\))
Subject: Social media from the terminal
Message-Id: <D7D21247-9059-4643-85A4-BEF006828EDA@m0ebp.uk>
Date: Wed, 24 Jun 2026 16:48:57 +0100
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
X-Mailer: Apple Mail (2.3864.600.51.1.1)
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.39 / 15.00];
	ARC_ALLOW(-1.00)[arc.gem.livemail.co.uk:s=arc-0001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[m0ebp.uk,none];
	MV_CASE(0.50)[];
	R_DKIM_ALLOW(-0.20)[m0ebp.uk:s=livemail1,m0ebp.uk:s=livemail3];
	MAILLIST(-0.18)[generic];
	RCVD_NO_TLS_LAST(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-1628-lists,speakup=lfdr.de];
	DKIM_TRACE(0.00)[m0ebp.uk:+];
	TO_DN_ALL(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	R_SPF_NA(0.00)[no SPF record];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gena@m0ebp.uk,speakup@linux-speakup.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:5645, ipnet:206.248.128.0/18, country:CA];
	RCVD_COUNT_FIVE(0.00)[6];
	MID_RHS_MATCH_FROM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[speakup];
	FORGED_SENDER(0.00)[gena@m0ebp.uk,speakup@linux-speakup.org]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 327986BFD36

Hello All,

I just thought I would ask if anyone was using the terminal to access =
social media? I received an email that promoted a particular adaptive =
tech company's facebook pages. It got me thinking I have never been able =
to manage the facebook interface. I understood they also prevented =
access to the mobile site. I see that in 2012 there was fbcmd app. I'll =
look later to see if it is still available. I recall twitter was easy =
from the command line some time ago. However, I have no interest in X. I =
also believe there is an easy to listen to youtube videos option but the =
BT Speak requires a GUI browser to log into a Google account. So I am =
not sure if there are any pure terminal options now-a-days?

Perhaps, I'm too old! LOL!

Are there simpler social media options than IOS and Android?
Thanks,


Gena


