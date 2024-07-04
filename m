Return-Path: <speakup+bounces-1146-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 6C8CE9273D7
	for <lists+speakup@lfdr.de>; Thu,  4 Jul 2024 12:19:27 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=jookia.org header.i=@jookia.org header.a=rsa-sha256 header.s=key1 header.b=LsRYbMUz;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 97A2DC81C9A; Thu, 04 Jul 2024 06:19:26 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 77D3BC80A5E
	for <lists+speakup@lfdr.de>; Thu, 04 Jul 2024 06:19:26 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 737ABC80A68; Thu, 04 Jul 2024 06:19:18 -0400 (EDT)
Received: from out-177.mta0.migadu.com (out-177.mta0.migadu.com [91.218.175.177])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 47D37C80A5A
	for <speakup@linux-speakup.org>; Thu, 04 Jul 2024 06:19:17 -0400 (EDT)
X-Envelope-To: samuel.thibault@aquilenet.fr
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1720088354;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=AoM8KGylqiPP2w+4IRZay0g9FNYzBUSHR7gf4EEintc=;
	b=LsRYbMUzs6C9R/xme03KbxgWrE96v9jYqcw7GnrLoWa6/tDf0gwQhqFViuka+UmeDV7e26
	j4NlVMxVSjrD0lrs0yQ9RUBvn7ENtzMRhgSI+VPmhN+Qzkr5FMxptNHd1oxBb50OzAt0hG
	KMJaMiuU0D6a1GanuLj7G2Uga1xMVGNWbN2Gr7bEcPnBCQXba7hwmsvjtrFAt+QsRT3eBL
	AXLC76ftDftuWKP/OThOZkR32xvKetAQ8vHWoOsR2cDCK9u4M74IYfptV0qKGFmo1ui8Ch
	psBRh3D07gfcrFLDRTu8CbFliZ5tklfCqHYuOsFn/ehOW+ut6rBALUdkHOI7MQ==
X-Envelope-To: speakup@linux-speakup.org
Date: Thu, 4 Jul 2024 20:18:56 +1000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Jookia <contact@jookia.org>
To: Samuel Thibault <samuel.thibault@aquilenet.fr>
Cc: speakup@linux-speakup.org
Subject: Re: Plans for CONFIG_VT death?
Message-ID: <ZoZ3ENbM6tGd9M_V@titan>
References: <ZoYSjTol94J676j_@titan>
 <20240704065714.gqe2ieny5jf5g33j@begin>
 <ZoZI9lPJV7OfvqOT@titan>
 <20240704070423.psmednz5ayqbdtn2@begin>
 <ZoZKc-kKf8gKoQt1@titan>
 <20240704101822.rbqvpkavaxzrb4rb@begin>
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
In-Reply-To: <20240704101822.rbqvpkavaxzrb4rb@begin>
X-Migadu-Flow: FLOW_OUT
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

On Thu, Jul 04, 2024 at 12:18:22PM +0200, Samuel Thibault wrote:
> Yes: the kernel is way more conservative in terms of userland-visible
> regressions.
> 
> Provided that it is informed of the regression potential.
> 
> Samuel

Okay, thanks for clarification.

Jookia.

