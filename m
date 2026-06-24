Return-Path: <speakup+bounces-1631-lists+speakup=lfdr.de@linux-speakup.org>
Delivered-To: lists+speakup@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id RdvPD5MCPGogiggAu9opvQ
	(envelope-from <speakup+bounces-1631-lists+speakup=lfdr.de@linux-speakup.org>)
	for <lists+speakup@lfdr.de>; Wed, 24 Jun 2026 18:15:15 +0200
X-Original-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id B96996BFEED
	for <lists+speakup@lfdr.de>; Wed, 24 Jun 2026 18:15:14 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=hubert-humphrey.com header.s=fm2 header.b=mPJ6Kxwv;
	dkim=pass header.d=messagingengine.com header.s=fm1 header.b=Np18VXWK;
	spf=none (mail.lfdr.de: domain of "speakup+bounces-1631-lists+speakup=lfdr.de@linux-speakup.org" has no SPF policy when checking 206.248.184.127) smtp.mailfrom="speakup+bounces-1631-lists+speakup=lfdr.de@linux-speakup.org";
	dmarc=pass (policy=none) header.from=hubert-humphrey.com
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 2A03F38268F; Wed, 24 Jun 2026 12:15:14 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 0959D382660
	for <lists+speakup@lfdr.de>; Wed, 24 Jun 2026 12:15:14 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id CC054382664; Wed, 24 Jun 2026 12:15:07 -0400 (EDT)
Received: from fhigh-a7-smtp.messagingengine.com (fhigh-a7-smtp.messagingengine.com [103.168.172.158])
	by befuddled.reisers.ca (Postfix) with ESMTPS id AD27D382649
	for <speakup@linux-speakup.org>; Wed, 24 Jun 2026 12:15:07 -0400 (EDT)
Received: from phl-compute-08.internal (phl-compute-08.internal [10.202.2.48])
	by mailfhigh.phl.internal (Postfix) with ESMTP id 6167A14001EB;
	Wed, 24 Jun 2026 12:15:07 -0400 (EDT)
Received: from phl-frontend-03 ([10.202.2.162])
  by phl-compute-08.internal (MEProxy); Wed, 24 Jun 2026 12:15:07 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	hubert-humphrey.com; h=cc:cc:content-type:content-type:date:date
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm2; t=1782317707;
	 x=1782404107; bh=nXTrNrOajsxwb0L5DqsAPp2WViYmf8+ejmgci4oYTh8=; b=
	mPJ6Kxwvzec2kj9umKDZrswJ8LLmWQlFXo+nz7JKs4eI1tD3DqpFIm6RcI9fnQXz
	P3wE86Ikrac7Dg5tz6vV/SaPamcC6q47y6iUF6Ebm873FujFXV2jJbX9JPMPjUPQ
	qRZ0nQ5n1DUNP+XVXp5QW2hA0Mox+ZIPTQbXylg0myFeQxpDINDJnDP3ZktZQvey
	ihDOydzAk0P9ASD0eY80Z2v7NSwkiWX2Bmm6yOYJVRYfcTwWt50EE8lOyY7T2xtw
	nXihRnDXp50g/XEUv3XdTG7OM3hHTuk+R4CJ/1Lx9xX/ctAD3W38WxhDCvGAFYvV
	zDEx6tytK30UEySHMdciAw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
	1782317707; x=1782404107; bh=nXTrNrOajsxwb0L5DqsAPp2WViYmf8+ejmg
	ci4oYTh8=; b=Np18VXWKYc6DgPNsyDaW8gGM+NctZsexyULldWcMQmheXc3CVcN
	L1RxkaF9NfNXx5anHRipQf9sNXWyN1SGQ5FOGOBe+gueG2dt1bjXEkcIo+irp9zg
	2sSbtGbBF/GVqzjgTY3j0CqiNVXvDdOtKuooHXs3OZK++kvDxlsTxRvRPkh+atI/
	ZAT/lBrh9YMQi45W48B4u1o1iJH7S661rkXyjA3Hf4DFbPpaTwfT8k4kJTBXEmkt
	t7FeXwIV0tWMhuGb2jSjnL0mRBUC15agLqljuBREuKefUOhr53MS4j9TvQOHsE39
	qT5cdrNk8kjvpxcyYjUozjeTC3QsAd6jfsw==
X-ME-Sender: <xms:iwI8aiEKkDrcI7uvjCi-dpYWZT-pg7t-2xdd7WNk2-9FU-P7WEY67A>
    <xme:iwI8anrhcepYsF6EaP2ISfuyWpSs0pM6JBXHnwanOF5XGVvD9F_SU-bRQfYLgAJU-
    9IUHpKfSvjQzN3xwl8Q_F4gbM2rmdmlMflYyaXFBxSkTC5UFnFkCcw>
X-ME-Received: <xmr:iwI8arRPHadGNRtRjOnbLdfZHUtfUTYufFA0wK5VIwzWXCmfE1Lpu_pVAGVp>
X-ME-Proxy-Cause: dmFkZTFEMBVOiKGzXPmsyR/pg9Hlg/Lrj1l/WFv5aeYQ48II64m+Rnj6wEyejyPfpqepGR
    RGlz8ReGgPNvvRB6+qgpUETi7orhfTmyyMgLgeptiZK8/JS7TW0Szjax4slRVlqNI1tBQ/
    aP32N+3BxhEOIK2KQNQd6ge/E7J4ezdfSLdUW1bECCtmvchjJU8gG09sSGZIpNJ68bCf2Z
    6JEjCkf2e6AMjjrOLMGgps4psTUc+PTlH62q21BrQLyInAFNHDANx09ekMUb6wuGdcMryL
    K1xLKvIIyMHKImV4DpZrq2Gw+tbxWav93pPyJe3AIPXcYw4ddeIpt/8yT+nXYAvpCDgLFs
    d2kwK7ZKX55fnP0AYSTVuuPfOzbElk5ok4oNDjIrdi+IqmkDHCieGFA7Y5NwjnObvxlFN/
    0GIbN8FVfadUZ2TR0y7oUCQ0X3GM9+BGwpsaYeXqGLfEtad0iHmCDichStkEEq5Hun5PnY
    g8kdmW3He7U2AarLjrNYudr+2EUqmzISMDEyxlEVdRhMSMRK8aHJc2oKV5IgA9el9n3GvU
    DOn40vloKbVA6jZ8M2l2QQwqiITvH6UeHcOBT0bXxt+8luSywAjbrhlUvvdJbZPqgc2M0t
    Z4zuJ6DXhqZlWJAgjJrGkmGDxQZbu4Xyg9Y7S4XZU9Jh4NGHFmy+CwTb10+Q
X-ME-Proxy: <xmx:iwI8akOf2MAPOaeVuBlHGGP2rQoXHtnYckjnRbicGYrfJ8jF_Y_FIg>
    <xmx:iwI8auMJlNsQ8LV9umrxcbOVkt2Y0t0EETQBCp_35gtrWLEMicB9lg>
    <xmx:iwI8akur-F63rjK285MG38jR7roPpys4rgmRBIT4UzvOYrr31MCY4g>
    <xmx:iwI8aoXMSzcikvaDuExwktDVYHsOAmYqjFHWRUx2_WMo0xfdOTBchQ>
    <xmx:iwI8aixbKg4XC1zrgl6P9Hht_yNmkQNPwhbzjpsSd0N4XXdr0p-QQevd>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 24 Jun 2026 12:15:06 -0400 (EDT)
Date: Wed, 24 Jun 2026 09:15:05 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: K0LNY ?? <glenn@ervin.email>
cc: Georgina Joyce <gena@m0ebp.uk>, 
    "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Social media from the terminal
In-Reply-To: <0c6901dd03f3$3a48f8e0$8b01f80a@nucwin10>
Message-ID: <fd643665-25e1-858d-9c7d-a8349aa27656@hubert-humphrey.com>
References: <D7D21247-9059-4643-85A4-BEF006828EDA@m0ebp.uk> <0c6901dd03f3$3a48f8e0$8b01f80a@nucwin10>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux." <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.89 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[hubert-humphrey.com,none];
	R_DKIM_ALLOW(-0.20)[hubert-humphrey.com:s=fm2,messagingengine.com:s=fm1];
	MAILLIST(-0.18)[generic];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_NO_TLS_LAST(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-1631-lists,speakup=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_ALL(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:glenn@ervin.email,m:gena@m0ebp.uk,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[chime@hubert-humphrey.com,speakup@linux-speakup.org];
	DKIM_TRACE(0.00)[hubert-humphrey.com:+,messagingengine.com:+];
	RCPT_COUNT_THREE(0.00)[3];
	R_SPF_NA(0.00)[no SPF record];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[chime@hubert-humphrey.com,speakup@linux-speakup.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[speakup];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:5645, ipnet:206.248.128.0/18, country:CA];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B96996BFEED

Well, Glen, I just searched lynx browser in youtube-viewer, 49 of the first 50 
results are mostly about setting up lynx, 1 item was about bro.sh. I just tried 
"purchasing on amazon with lynx" but so-far nothing found.
Chime


