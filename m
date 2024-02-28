Return-Path: <speakup+bounces-1087-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 9097986A6AC
	for <lists+speakup@lfdr.de>; Wed, 28 Feb 2024 03:40:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1709087997;
	bh=SxWICt6+rbaqpdUB6Fssui4jy6PwoWIft6AmTPgug88=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Post:List-Help:List-Subscribe:From;
	b=M9RLf4pRtUuhNCyS/hcTZhIESIGtsYwur8gA/jfwWg+t2uAopoh3NuEVh/Hai+RKs
	 xXaJNMnZiptzDAVM+It1/30npckLs77o1dY7Rpmov4s2tti4DH4FehKKMkH70XtZ4W
	 O9V4n8L/9OrhlDrK/QVimArmMjCVnN5/Gw9oxzjk=
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id CCEFB38278D; Tue, 27 Feb 2024 21:39:57 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1709087997;
	bh=SxWICt6+rbaqpdUB6Fssui4jy6PwoWIft6AmTPgug88=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Post:List-Help:List-Subscribe:From;
	b=M9RLf4pRtUuhNCyS/hcTZhIESIGtsYwur8gA/jfwWg+t2uAopoh3NuEVh/Hai+RKs
	 xXaJNMnZiptzDAVM+It1/30npckLs77o1dY7Rpmov4s2tti4DH4FehKKMkH70XtZ4W
	 O9V4n8L/9OrhlDrK/QVimArmMjCVnN5/Gw9oxzjk=
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id AC64538266D
	for <lists+speakup@lfdr.de>; Tue, 27 Feb 2024 21:39:57 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1709087990;
	bh=SxWICt6+rbaqpdUB6Fssui4jy6PwoWIft6AmTPgug88=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:From;
	b=WYUi5HQeno1op8lV3SDAmbSjn/O5HimToWl8P7B5dzd0R90eQSpN1nFxZXewB8JDH
	 ztm8RgETKHDWMGK+B9OUYH7G+Om2tY5o2z7dqHrlDPRhcnDBMGbjTYXBDPPVx7h+Hu
	 Le3J6d5ExrePCSM6V2xHa8rf5A8USL3dPx4x8Vqk=
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 1A4F43826E7; Tue, 27 Feb 2024 21:39:50 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1709087988;
	bh=SxWICt6+rbaqpdUB6Fssui4jy6PwoWIft6AmTPgug88=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:From;
	b=aZpXWRZa1mjenpygQLp35uNz4htvMmN8BkyX/Rm60fG5JmUyxzQCraNuePvGcxRJq
	 VFuU33/elfAXMv6OGJhvTR3rG1Mut/s99TxH2nosAuOcuW3ex/JT6yAwEziN4E7w2Z
	 flqwh/5KLFaTRfArvoars4BwLswcYnRtucM9R8NM=
Received: from localhost (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTPS id C30453821E1;
	Tue, 27 Feb 2024 21:39:48 -0500 (EST)
Date: Tue, 27 Feb 2024 21:39:48 -0500 (EST)
From: Kirk Reiser <kirk@reisers.ca>
To: John Covici <covici@ccs.covici.com>
cc: Karen Lewellen <klewellen@shellworld.net>, speakup@linux-speakup.org
Subject: Re: Domain expiration
In-Reply-To: <m3sf1ox3qq.wl-covici@ccs.covici.com>
Message-ID: <007e07a8-0545-e0de-1de4-fe277574ee6c@reisers.ca>
References: <76018e2b-1c58-9a09-2e24-bc2c91697d88@reisers.ca> <Pine.LNX.4.64.2402181537270.775092@users.shellworld.net> <4a5a865f-dbf8-a13a-3aa0-118a854ad022@reisers.ca> <m3sf1ox3qq.wl-covici@ccs.covici.com>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hello folks: You have a reprieve wrt the linux-speakup.org domain
name. A person has come forward and offered to buy the domain and
leave it pointing at the current site and mailing list for the
foreseeable future. I won't say who unless they come forward and
mention it themselves or say they don't care. I do thank them though.

   Kirk


