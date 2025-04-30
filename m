Return-Path: <speakup+bounces-1262-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 6A0D9AA44A8
	for <lists+speakup@lfdr.de>; Wed, 30 Apr 2025 10:01:52 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=jookia.org header.i=@jookia.org header.a=rsa-sha256 header.s=key1 header.b=pF8kzTk4;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id C596E382966; Wed, 30 Apr 2025 04:01:48 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id A47CD381950
	for <lists+speakup@lfdr.de>; Wed, 30 Apr 2025 04:01:48 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id BE98C3820EC; Wed, 30 Apr 2025 04:01:41 -0400 (EDT)
Received: from out-184.mta0.migadu.com (out-184.mta0.migadu.com [91.218.175.184])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 3F8E538194D
	for <speakup@linux-speakup.org>; Wed, 30 Apr 2025 04:01:40 -0400 (EDT)
Date: Wed, 30 Apr 2025 17:59:49 +1000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1746000064;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=fupyAO7JBJsDB8An/S2G6RFek2iHdjG/TxsE17xQRg0=;
	b=pF8kzTk4UeWdBGRw0fakuwAJxDoqMxs1jrPCaePvgu26EhZiNqfQdc6YrxnGRQAht9iidI
	yJ5QktgaY0jWu1rwKQ4uZ4WqQOlhIbl6MR+Ud0thKDE9z+iVofj5zCoGhfxD47tkxehMaI
	9RYq0RH0a8+fZAafuWvpLMzuY/uIBXvm1Vl16SOL/J0HrbDy4h9A841X+qmulfPt6FTPbA
	pQDbfgPlnVbsjyTDaaRanwWh/JIybF66Mapsf6DVFfytOa+69jmxi8Dof6Qe6GIA1vHPIa
	J+AovwmCJ+vrgZAdperGYUiKnFqwYO1JHcRqGHiDz4xgCwBKLkscm/DOJWwiyg==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Jookia <contact@jookia.org>
To: Samuel Thibault <samuel.thibault@aquilenet.fr>
Cc: David Sexton <david@rustytelephone.net>, Gregory Nowak <greg@gregn.net>,
	fsmithred <fsmithred@gmail.com>, speakup@linux-speakup.org
Subject: Re: announcing experimental Devuan Daedalus mate desktop iso
Message-ID: <aBHYdRRHACYiM81v@titan>
References: <aA1-fneTSXgUZa5y@gregn.net>
 <af828d8a-1e48-40ca-bb3c-94417281967d@gmail.com>
 <aBAx86aYIEKxCw5F@gregn.net>
 <e76a9638-ea16-4491-932b-fff148f8ec0d@gmail.com>
 <aBFx0HYXoycQmM-9@gregn.net>
 <CALsOB_CYcjQ4Bjy655CPy9GnLDDNvWqTtgtVZW2s2f5F6n5r3w@mail.gmail.com>
 <0325da77-8d06-41cd-859d-f74516f74f72@jookia.org>
 <aBHVX9z5A85vi6Wq@begin>
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
In-Reply-To: <aBHVX9z5A85vi6Wq@begin>
X-Migadu-Flow: FLOW_OUT
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

That's surprising, when I brought this up to the maintainer I was met with a
fairly rude response so I figured it was the distro that had to do it. My bad.

On Wed, Apr 30, 2025 at 09:46:39AM +0200, Samuel Thibault wrote:
> The brltty maintainer did the split in may 2022.
> 
> Since then brltty provides two udev files precisely for distributions to
> ship one (90-brltty-usb-customized.rules) by default and not ship the
> other (90-brltty-usb-generic.rules) by default.
> 
> Now, if distribution maintainers don't pay attention to this, we can't
> do much more.
> 
> Samuel

