Return-Path: <speakup+bounces-1143-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 08FCD926DEE
	for <lists+speakup@lfdr.de>; Thu,  4 Jul 2024 05:10:44 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=jookia.org header.i=@jookia.org header.a=rsa-sha256 header.s=key1 header.b=gFuhfpDZ;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 27B48C80BA0; Wed, 03 Jul 2024 23:10:40 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 08749C80B78
	for <lists+speakup@lfdr.de>; Wed, 03 Jul 2024 23:10:40 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id ED69CC80B84; Wed, 03 Jul 2024 23:10:31 -0400 (EDT)
Received: from out-183.mta1.migadu.com (out-183.mta1.migadu.com [95.215.58.183])
	by befuddled.reisers.ca (Postfix) with ESMTPS id A740FC80B77
	for <speakup@linux-speakup.org>; Wed, 03 Jul 2024 23:10:30 -0400 (EDT)
X-Envelope-To: speakup@linux-speakup.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1720062627;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=vSXDFQig/7jP1my/SLxEB28fLL0BHBOw9wv8fqGCoUA=;
	b=gFuhfpDZSCIzNAalSOuq2zt1qvLG40HZA9wXhum53V7hOYAz1tGORTGARaidoAw60QzMhs
	JLSBOZzSRAhK3eV0oxgFLCW+fZ+9EtV81FOvCeQJtu0yyjUOfMupFdTVrW2EIiGMW9JLbz
	bvWUlFwgOklnXk55w2qmcYD9mI4dKVf7CheD1wbAnB4o0NydFinxB/Ka3ckFhUC23CZFes
	KwR21ophvEMOSLJ5RwbbgmOy4jKFHya6qJwNCLYpLzKm/Ak7iC0brA/GyrW0pu6+GVa4fS
	n3L93oQG2KDjTwjqTUqViuordy46ORukWsdprtzegEOrvZARuoNKTMds1ylREA==
Date: Thu, 4 Jul 2024 13:10:05 +1000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Jookia <contact@jookia.org>
To: speakup@linux-speakup.org
Subject: Plans for CONFIG_VT death?
Message-ID: <ZoYSjTol94J676j_@titan>
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
X-Migadu-Flow: FLOW_OUT
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi there,

More and more sighted developers want to remove CONFIG_VT without adding
accessibility support. Is this going to be the end of speakup?

Jookia.

