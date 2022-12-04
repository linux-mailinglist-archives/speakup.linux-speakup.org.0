Return-Path: <speakup+bounces-878-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 476CA641ABC
	for <lists+speakup@lfdr.de>; Sun,  4 Dec 2022 05:54:37 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=SVDEIXdb;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 68B93382A49; Sat,  3 Dec 2022 23:54:36 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 4A3643808CA
	for <lists+speakup@lfdr.de>; Sat,  3 Dec 2022 23:54:36 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 3EF89382A42; Sat,  3 Dec 2022 23:54:27 -0500 (EST)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 16A433808CA
	for <speakup@linux-speakup.org>; Sat,  3 Dec 2022 23:54:27 -0500 (EST)
Received: from vbox.gregn.net (unknown [IPv6:2607:fb90:2d17:4764:3bd2:518a:8c7:ddaa])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by vserver.gregn.net (Postfix) with ESMTPSA id 08B6F43C;
	Sat,  3 Dec 2022 20:54:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gregn.net; s=default;
	t=1670129666; bh=w6E1PLwGFMbAhbLT9JW34MNtxCOnMi2rlR619zXOV6s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SVDEIXdbK1K4lq7cISZN6qZu1A2HLVTTk3+FLjpNJzu/8JhNln9OPBsxo4BfFyeqR
	 ru7DgIsIjaYeWwkUNLOEum++oRSTQY25LQe53wUzdazMrxfXOh6qEUD90TV50tSIyD
	 yiTD/WZD1MvfHbAxJMsBU2Zq+sVQRuAwFWibJgtZQg2pMMDpTrFoP5/vR+FA86dg6Y
	 t3ZVupgL/I1qdPOZa6iJReL8oNwvjrWLrwiJr9cDv/Atxc3WEhBs+YVZm9N12DZLmb
	 aGW1erOqpp4nJruYYBVkpZStnkxYZ/6RPu7HuJn9AuDX3LwLvivJ1EvToE1eYqEVqJ
	 LZE7qxezobGQg==
Received: by vbox.gregn.net (Postfix, from userid 1000)
	id D4500C4B7; Sat,  3 Dec 2022 21:54:24 -0700 (MST)
Date: Sat, 3 Dec 2022 21:54:24 -0700
From: Gregory Nowak <greg@gregn.net>
To: K0LNY_Glenn <glenn@ervin.email>
Cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: change eSpeak Default Voice
Message-ID: <Y4woAGJEUf430mTc@gregn.net>
References: <013f01d9074d$551a6650$88ffa8c0@Win7VM>
 <Y4wZa/0WtgPE3nyH@gregn.net>
 <017701d90794$4d7619c0$88ffa8c0@Win7VM>
 <Y4wcSYOKzFn/yIeh@gregn.net>
 <018001d90797$3bf04b00$88ffa8c0@Win7VM>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <018001d90797$3bf04b00$88ffa8c0@Win7VM>
X-PGP-Key: http://www.gregn.net/pubkey.asc
X-Virus-Scanned: clamav-milter 0.103.6 at vserver
X-Virus-Status: Clean
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Read the espeak/espeak-ng docs, like Didier said. There's no .conf file.

Greg


On Sat, Dec 03, 2022 at 10:16:49PM -0600, K0LNY_Glenn wrote:
> I was thinking that there may be a .conf file in /espeak.
> I have seen voices in speechd.conf, but I'm more interested in affecting 
> eSpeak when used without a screenreader.
> Glenn


-- 
web site: http://www.gregn.net
gpg public key: http://www.gregn.net/pubkey.asc
skype: gregn1
(authorization required, add me to your contacts list first)
If we haven't been in touch before, e-mail me before adding me to your contacts.

--
Free domains: http://www.eu.org/ or mail dns-manager@EU.org

