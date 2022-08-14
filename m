Return-Path: <speakup+bounces-545-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id DFDD6591D81
	for <lists+speakup@lfdr.de>; Sun, 14 Aug 2022 03:56:12 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=jookia.org header.i=@jookia.org header.a=rsa-sha256 header.s=key1 header.b=Q8Uyv1dS;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 6F9773847C4; Sat, 13 Aug 2022 21:56:12 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 4F97138479B
	for <lists+speakup@lfdr.de>; Sat, 13 Aug 2022 21:56:12 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 173A038479F; Sat, 13 Aug 2022 21:56:05 -0400 (EDT)
Received: from out2.migadu.com (out2.migadu.com [188.165.223.204])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 70056384795
	for <speakup@linux-speakup.org>; Sat, 13 Aug 2022 21:56:03 -0400 (EDT)
Date: Sun, 14 Aug 2022 11:54:41 +1000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1660442126;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=rqmaldoEDukYL387YpxBaQ1cBoVgiDoE6asL2+Uhdg0=;
	b=Q8Uyv1dS+JVJsz6B1cB/xZbPi6L3bWNlZBxKv+dbS8QVzyFwGfHVKwIFw6xJpYI1A/h+PS
	m8QwYKAtxM/FxioDWirrFY4GrIxrXnsZu4njMB5fEtTcg+yX8JGvI4aZKPwtB1OnRRvuzk
	AZRWO+Ery7gxP861hLMCrJR7vc7duUK8bdIxhw1NaeiYGD2Gb/EzUepfMOPgV2SoVbJked
	9ucgOtcfee77EEcj9Td6f1EIb3IDXtNHw0JGhO6B7zDlXK0dn4CAFTW0ijtouq4/N9Q4wf
	dfE/LMoqNT8kBvzaQywvZTnKC/vSlx2XdXq5ignTs/FwrO1EzjADU/0qSdircg==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Jookia <contact@jookia.org>
To: Karen Lewellen <klewellen@shellworld.net>
Cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>,
	Linux for blind general discussion <blinux-list@redhat.com>,
	blind_linux_users <discuss@blvuug.org>
Subject: Re: "Accessibility in Fedora Workstation" (fwd)
Message-ID: <YvhV4TWzuP2O1JAZ@novena-choice-citizen>
References: <Pine.LNX.4.64.2208112229350.1215855@server2.shellworld.net>
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
In-Reply-To: <Pine.LNX.4.64.2208112229350.1215855@server2.shellworld.net>
X-Migadu-Flow: FLOW_OUT
X-Migadu-Auth-User: jookia.org
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi Karen,

It seems like discussion about this article has been flooding my inbox
over the past few days so I figured I'd finally read the article.

It looks like he's just going to tidy up GNOME application accessibility
which ... isn't that hard a job (at least for a sighted person), just
tedious and political. This doesn't really require high certifications
or degrees, just labor and people management.

If we demand people have amazing certifications to do work like this
then you'd end up in a situation like Gitea which has decided to close
and lockevery unfixed accessibility issue in their tracker and seek a
paid professional accessibility audit just to tell them to fix their bugs.

Saying speakup without espeakup is basically useless is a stretch, but
they're certainly rare devices at this point. 

Jookia.

