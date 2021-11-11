Return-Path: <speakup+bounces-328-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 1933B44D005
	for <lists+speakup@lfdr.de>; Thu, 11 Nov 2021 03:26:27 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=jookia.org header.i=@jookia.org header.a=rsa-sha256 header.s=key1 header.b=S4SUT8Qg;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id C2921381150; Wed, 10 Nov 2021 21:26:25 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id A3D4C3809FC
	for <lists+speakup@lfdr.de>; Wed, 10 Nov 2021 21:26:25 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 925E6380ED7; Wed, 10 Nov 2021 21:26:19 -0500 (EST)
Received: from out0.migadu.com (out0.migadu.com [94.23.1.103])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 5B776380A17
	for <speakup@linux-speakup.org>; Wed, 10 Nov 2021 21:26:16 -0500 (EST)
Date: Thu, 11 Nov 2021 13:23:55 +1100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1636597570;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=HRXEd5IFCqnAnvVU+8NbalOh2boVD+29VE+oJnXb+fA=;
	b=S4SUT8QgY685GqQ+R2v2jK3VYQSkrYkWuBgm46P+H4Ac0rEJorXJfbQRQI2WLctN51Tx8f
	KYPOASENkpnOCxkyXOMEdTFSJd/TEnPvDLS01anvKZCUWP4NZNlYFeWj2EbkPO4ckNIVZf
	HcnJlfEqNR07k8tWja4zT2aQBiGDw5HfFFsH2Kj1iZPVboQLwwozu89jwOcnpuJW8Q4Jmm
	pmC92K8A12R3sr0cwzF1Q1acJTpIJ2PzYxbcs3YOooKcucB2g1innVlWHAQYhUIvlYfgdt
	6Ur3wIAG64KFuzOeHGrP8+k+eMVQXTFKUOMvo3MCgeviYmb35M/IaDJP+CxwXA==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Jookia <contact@jookia.org>
To: Didier Spaier <didier@slint.fr>
Cc: speakup@linux-speakup.org, Kirk Reiser <kirk@reisers.ca>,
	Chris Brannon <chris@the-brannons.com>,
	Samuel Thibault <samuel.thibault@ens-lyon.org>,
	Christian Hempfling <chrys@linux-a11y.org>,
	Storm Dragon <storm_dragon@linux-a11y.org>
Subject: Re: Console screen reader for FreeBSD/GhostBSD?
Message-ID: <YYx+u6zex02Cw84+@novena-choice-citizen>
References: <20211110233342.1372516-1-colin.i.king@gmail.com>
 <20211110233509.rt5ioflkym4a6tya@begin>
 <ee412f1d-acce-e5e8-675c-b0e308f69347@slint.fr>
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
In-Reply-To: <ee412f1d-acce-e5e8-675c-b0e308f69347@slint.fr>
X-Migadu-Flow: FLOW_OUT
X-Migadu-Auth-User: contact@jookia.org
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Porting speakup would probably work.

On Thu, Nov 11, 2021 at 01:20:44AM +0100, Didier Spaier wrote:
> Hi,
> 
> I'd like to help make FreeBSD/GHostBSD more accessible with speech on the
> console (in graphical environments speech-dispatcher and orca are already
> available). AFAIK currently only yasr is shipped (limited and old). tdsr and
> fenrir could probably be packaged. Other ideas, including how to handle hard
> synthesizers?
> 
> Cheers,
> Didier
> 

