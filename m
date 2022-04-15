Return-Path: <speakup+bounces-398-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id D6407502CEE
	for <lists+speakup@lfdr.de>; Fri, 15 Apr 2022 17:37:13 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=panix.com header.i=@panix.com header.a=rsa-sha256 header.s=panix header.b=J2lsNYZQ;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 736DE380D45; Fri, 15 Apr 2022 11:37:13 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 601E7380B2A
	for <lists+speakup@lfdr.de>; Fri, 15 Apr 2022 11:37:13 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id E0473380BD1; Fri, 15 Apr 2022 11:37:08 -0400 (EDT)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by befuddled.reisers.ca (Postfix) with ESMTPS id D22D1380B2A
	for <speakup@linux-speakup.org>; Fri, 15 Apr 2022 11:37:08 -0400 (EDT)
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4Kg0nJ0nNQz149N;
	Fri, 15 Apr 2022 11:37:08 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=panix.com; s=panix;
	t=1650037028; bh=xfEDfPyAizsDfUj+rnNnBi3kWHLRN1rSv5ogyDUoRso=;
	h=Date:From:To:Subject:In-Reply-To:References;
	b=J2lsNYZQjjqbETX12ULNn2CWWHVfIuJQRcxdQ3XAjDNigrhWZLl5pPXgTd9qHIgq4
	 tfRIROXjh8yUcez/Yzpedtk/0NI1sqhi6z0mQNYT43qCyRmJ4BW79IfPvFNcMNShqX
	 +N05JxDAKQlAzx/l68zfmvsVylsQzutOxnEeJkCI=
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4Kg0nJ0390zcbc; Fri, 15 Apr 2022 11:37:07 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4Kg0nH6pvrzcbP;
	Fri, 15 Apr 2022 11:37:07 -0400 (EDT)
Date: Fri, 15 Apr 2022 11:37:07 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: Cleverson <clul@disr.it>, speakup@linux-speakup.org
Subject: Re: multiple gentoo speakup install failures
In-Reply-To: <dc6f2489-699c-545d-5b6b-e4d894ab1068@disr.it>
Message-ID: <fdba632-7ee9-da9b-4dc1-5f91aafc2866@panix.com>
References: <c9b13650-c9da-cf15-68f7-9338fe6831@panix.com> <dc6f2489-699c-545d-5b6b-e4d894ab1068@disr.it>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Systemd is the one flavor  I have familiarity using.  I never used the
other two flavors offered by gentoo before.  I think I'll hold off and
study each of the systemd alternatives in terms of features and likely
continuing support.


On Fri, 15 Apr 2022, Cleverson wrote:

> Do you need systemd? I don't know if it is the cause of the problem, but
> whenever I install Gentoo, I never use systemd, and the system always works.
>
> Cheers,
> Cleverson
>
>
>

