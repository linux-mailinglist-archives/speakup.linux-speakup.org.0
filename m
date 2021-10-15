Return-Path: <speakup+bounces-322-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 8C0C742FDD1
	for <lists+speakup@lfdr.de>; Sat, 16 Oct 2021 00:06:58 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=jookia.org header.i=@jookia.org header.a=rsa-sha256 header.s=key1 header.b=XMJ/P568;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 29928380F2E; Fri, 15 Oct 2021 18:06:58 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 0C28D380EC2
	for <lists+speakup@lfdr.de>; Fri, 15 Oct 2021 18:06:58 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id AD1C5380F18; Fri, 15 Oct 2021 18:06:51 -0400 (EDT)
Received: from out0.migadu.com (out0.migadu.com [94.23.1.103])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 68B9B38097A
	for <speakup@linux-speakup.org>; Fri, 15 Oct 2021 18:06:50 -0400 (EDT)
Date: Sat, 16 Oct 2021 09:05:49 +1100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1634335592;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=fxa4boBRC8oeKWD+LHbDzfde3+nXRn8aVdrrtVxfEnM=;
	b=XMJ/P568ZrRx7Mbg8ljtI1hpe4dBBGg6eh/siVp029PGcMXG0CBgTtVLjYuk6jUZgWW3s+
	AVjCei8JfUKGx/THkuLsJdU8+NL8nbnRHXRbvxNzIwR539XOpd9VVMBfUB1DGWfXrSReik
	9W1wqiNWe0gq9PwwlscdgTCoOeCuqti6oB+vUET7lAF5pR2w+ITCB5FaeyiLNi4xIPQMc4
	fy7xupyhMA8UNZEfDpkvmnI6uXxtny/OY1A93SxLYxja4bsOpno+aLaZw+GczTL2tiM2nD
	QsmobqmX05yEwuBTFxC7Gd4WBTQDDOJ0ZY6dO5lzwkI/Hkj4qbZOeWxcA34H7A==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Jookia <contact@jookia.org>
To: Didier Spaier <didier@slint.fr>
Cc: Gregory Nowak <greg@gregn.net>, speakup@linux-speakup.org
Subject: Re: fwd: [DNG] Announcing Devuan 4.0: Chimaera!
Message-ID: <YWn7PX3hyX2rhHmu@novena-choice-citizen>
References: <20211015192340.GA3715@gregn.net>
 <26bab3e2-04ce-26ee-efc1-c3a4a8d1a661@slint.fr>
 <20211015194854.GA4367@gregn.net>
 <cbd75a41-111c-020a-89dc-399f6cd1117e@slint.fr>
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
In-Reply-To: <cbd75a41-111c-020a-89dc-399f6cd1117e@slint.fr>
X-Migadu-Flow: FLOW_OUT
X-Migadu-Auth-User: contact@jookia.org
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

FWIW with softsynth on Arch you don't need to mess with ALSA at all,
just set up udev and logind rules. Maybe Devuan needs to do something
similiar?

