Return-Path: <speakup+bounces-762-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 157966068D8
	for <lists+speakup@lfdr.de>; Thu, 20 Oct 2022 21:27:40 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="key not found in DNS" header.d=slint.fr header.i=@slint.fr header.a=rsa-sha256 header.s=default header.b=UilWY8cG;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 9EAE7383FFE; Thu, 20 Oct 2022 15:27:39 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 8072C383FDE
	for <lists+speakup@lfdr.de>; Thu, 20 Oct 2022 15:27:39 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 42262383FE6; Thu, 20 Oct 2022 15:27:30 -0400 (EDT)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79])
	by befuddled.reisers.ca (Postfix) with ESMTP id D9799383FDE
	for <speakup@linux-speakup.org>; Thu, 20 Oct 2022 15:27:29 -0400 (EDT)
Received: from [192.168.0.11] (sfa89-1-78-208-157-71.fbx.proxad.net [78.208.157.71])
	by darkstar.slint.fr (Postfix) with ESMTPSA id D1B2E24339
	for <speakup@linux-speakup.org>; Thu, 20 Oct 2022 20:24:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=slint.fr; s=default;
	t=1666290249; bh=1jRU3B33eRhYdiqlz9NKtibgFQNOWiuDAdvNkaVLgZo=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=UilWY8cGY/2mJ1rzTeYNjUt2wcF395HNupi6e1xZKl0w+YFQyK701v3eozI89KXJ1
	 chHpc9pEqkPBOIIuxvomCubkKGTQ6vC+bVGMnKJeGOxMj/gO/nQimSCwNlNXFd8/4Y
	 TcxmtHq6NVpUsKb5IdvwmpwVD7eMD1NeCN3XPvUSQN3Eq1eXomPKEaE/Z3GGRS5iit
	 98E8t+F6WEPLqZdXCn7lp1C7oet+5Tuc0dowRbnfT1J7ReR/0Ge6JnQai7dHphup7F
	 aHKDuTvySRQ6JZGwuzYI+ioPB6TCS7hQ1VqFYXy/MDVJ0b9y4YtqDDsx6Tiasb+/Bc
	 yPg2u5r51HElg==
Message-ID: <8a1a7665-e444-6873-1435-8a4438f9147b@slint.fr>
Date: Thu, 20 Oct 2022 21:27:24 +0000
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Subject: Re: spelling words with military letter pronunciation
To: speakup@linux-speakup.org
References: <20210105173502.GA17449@panix.com>
 <20221020181216.o5rpkuy5tgdcmgyo@begin> <Y1GchjnSy19miU5l@panix.com>
Content-Language: en-US
From: Didier Spaier <didier@slint.fr>
In-Reply-To: <Y1GchjnSy19miU5l@panix.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Le 20/10/2022 à 19:07, Rudy Vener a écrit :
> I think the newly restored genmap program, which should be available in the next release of slint and other linux versions
> will help me address this on my own. At least I hope so.

Well Rudy, when officially released Slint 15 will include a kernel version
5.19.y, you will get the restored genmap when we will upgrade to 6.0.y in a few
weeks.

Cheers,
Didier

