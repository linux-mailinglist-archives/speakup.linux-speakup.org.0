Return-Path: <speakup+bounces-397-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id AAF6D502C6D
	for <lists+speakup@lfdr.de>; Fri, 15 Apr 2022 17:16:45 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; secure) header.d=disr.it header.i=@disr.it header.a=rsa-sha256 header.s=mail header.b=5j8FxiLx;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 3BA5E380BD5; Fri, 15 Apr 2022 11:16:44 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 29802380BA3
	for <lists+speakup@lfdr.de>; Fri, 15 Apr 2022 11:16:44 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id B2B92380BD1; Fri, 15 Apr 2022 11:16:39 -0400 (EDT)
Received: from knopi.disroot.org (knopi.disroot.org [178.21.23.139])
	by befuddled.reisers.ca (Postfix) with ESMTPS id AC0C4380604
	for <speakup@linux-speakup.org>; Fri, 15 Apr 2022 11:16:38 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id BA82B40466
	for <speakup@linux-speakup.org>; Fri, 15 Apr 2022 17:16:36 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from knopi.disroot.org ([127.0.0.1])
	by localhost (disroot.org [127.0.0.1]) (amavisd-new, port 10024)
	with UTF8SMTP id J9cEeZrGXTcF for <speakup@linux-speakup.org>;
	Fri, 15 Apr 2022 17:16:35 +0200 (CEST)
Subject: Re: multiple gentoo speakup install failures
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disr.it; s=mail;
	t=1650035784; bh=XqmBh0/wF8P2w8lpfsmlhP5+ASb2xJ9LWemU5kH2xRk=;
	h=Subject:To:References:From:Date:In-Reply-To;
	b=5j8FxiLxF0kvo2BurAsGuNQIEmw+RYxgpHN+4haaxA6PGlQxGgBiQepxrdrTnm8nh
	 +vneusaf06fRH8jWVuOZK5aB5CfANbs39chmoP+FZ1L9WmgHza3tZJ9XSUd3pVQAK1
	 T04H9FOD92CVacig4iBHlP6nVl/F4L3hdBd0Ar+ij+bba9SuM4EldXPAHJ25TTUI7r
	 hYW2BQGt+Jhgzinc9rp/5H2vFZzrC1JFcN5fsCBRmB1OWtJayvX8wMMAT47AxRtRO9
	 s0Cc+Ez5PgqTeKKCnMSKdW+V00znT6tp8AzRkyfHQh5FadckTjBxofUOx1PeMCIsYM
	 XDTKee1jHu2xw==
To: speakup@linux-speakup.org
References: <c9b13650-c9da-cf15-68f7-9338fe6831@panix.com>
From: Cleverson <clul@disr.it>
Message-ID: <dc6f2489-699c-545d-5b6b-e4d894ab1068@disr.it>
Date: Fri, 15 Apr 2022 12:16:19 -0300
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
Mime-Version: 1.0
In-Reply-To: <c9b13650-c9da-cf15-68f7-9338fe6831@panix.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: pt-BR
Content-Transfer-Encoding: 7bit
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Do you need systemd? I don't know if it is the cause of the problem, but 
whenever I install Gentoo, I never use systemd, and the system always works.

Cheers,
Cleverson

