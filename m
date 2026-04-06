Return-Path: <speakup+bounces-1582-lists+speakup=lfdr.de@linux-speakup.org>
Delivered-To: lists+speakup@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IHdsGg/l02n/ngcAu9opvQ
	(envelope-from <speakup+bounces-1582-lists+speakup=lfdr.de@linux-speakup.org>)
	for <lists+speakup@lfdr.de>; Mon, 06 Apr 2026 18:53:35 +0200
X-Original-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 3DEFC3A574B
	for <lists+speakup@lfdr.de>; Mon, 06 Apr 2026 18:53:34 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=t39smtp-sign001.email header.i=@t39smtp-sign001.email header.a=rsa-sha256 header.s=titan1 header.b=a+FBKIMk;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 2C0DD382621; Mon, 06 Apr 2026 12:53:34 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 010073825B7
	for <lists+speakup@lfdr.de>; Mon, 06 Apr 2026 12:53:34 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id AD5A83825B7; Mon, 06 Apr 2026 12:53:27 -0400 (EDT)
Received: from mail97.out.titan.email (mail97.out.titan.email [3.219.11.208])
	by befuddled.reisers.ca (Postfix) with ESMTPS id C0AA8381854
	for <speakup@linux-speakup.org>; Mon, 06 Apr 2026 12:53:26 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by smtp-out.flockmail.com (Postfix) with ESMTP id 4fqFl35CXYz8sXk;
	Mon,  6 Apr 2026 16:53:19 +0000 (UTC)
X-Titan-User-Uid: eyJhbGciOiJkaXIiLCJlbmMiOiJBMjU2R0NNIn0..jJEuW2Qxka4BS9G7.Of3sBhWjiSVwKFjpwR2iVs81JuP2B9oSJu5wx2bwT1KwzhmFbdvCdpSA4aDwdPRmJHYv-pMndSNRVLIge8d9enmBHImPa2oEA-p0vqw.HDbpMfrWxfoghsj3xO-jyw
DKIM-Signature: a=rsa-sha256; bh=urwB752QOA7bCIZh5E9sBoWfBdWXqgupHUv4wnJXbnQ=;
	c=relaxed/relaxed; d=t39smtp-sign001.email;
	h=subject:from:to:mime-version:message-id:references:date:reply-to:from:to:subject:date:message-id:reply-to:references:cc:in-reply-to;
	q=dns/txt; s=titan1; t=1775494399; v=1;
	b=a+FBKIMkh8bywy2Urli3YV7G087kty4Z4kZYHCJpCmcKmlHMAxfAKQ/R8BcVyuujRbAFZ6z7
	nIcjkujR3OdaW5U0+FKASKcCKfht4lDXQ0ZWfw0bkP+LMNILDJX0mJjOy5uXgX3orP/otJ4UezG
	9Dgq3aplV6BoLruaODyy2zW8=
X-AuthUser: glenn@ervin.email
Received: from nucwin10 (unknown [140.228.165.201])
	by smtp-out.flockmail.com (Postfix) with ESMTPA id 4fqFl3262fz8sXq;
	Mon,  6 Apr 2026 16:53:19 +0000 (UTC)
Message-ID: <112901dcc5e5$df7ac560$01ffa8c0@nucwin10>
Reply-To: "K0LNY ??" <glenn@ervin.email>
Feedback-ID: :glenn@ervin.email:ervin.email:flockmailId
From: "K0LNY ??" <glenn@ervin.email>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>,
	"John G. Heim" <jheim@math.wisc.edu>
References: <0b15c93b-1af7-4046-ace8-5a6057f22dd3@math.wisc.edu>
Subject: Re: Rewriting docs: Live distros in the FAQ
Date: Mon, 6 Apr 2026 11:53:19 -0500
Organization: Home
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux." <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain;
	charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2900.2180
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.2180
X-F-Verdict: SPFVALID
X-Titan-Src-Out: 1775494399519129525.4746.5182326097211864626@prod-use1-smtp-out1008.
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.4 cv=CP0amxrD c=1 sm=1 tr=0 ts=69d3e4ff
	a=sfY17wZm961WJQkZ7MXrtw==:117 a=sfY17wZm961WJQkZ7MXrtw==:17
	a=IkcTkHD0fZMA:10 a=MKtGQD3n3ToA:10 a=CEWIc4RMnpUA:10 a=qPKtzgQbAAAA:8
	a=z50feZZFy3vYbzBMO2MA:9 a=QEXdDO2ut3YA:10 a=OTAqJWGB1laLS8RTg9aS:22
	a=P3K-DvM3-jjlTNsN-mCd:22 a=NWVoK91CQySWRX1oVYDe:22
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5
X-Spamd-Result: default: False [2.12 / 15.00];
	OLD_X_MAILER(2.00)[];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[t39smtp-sign001.email:s=titan1];
	MAILLIST(-0.18)[generic];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_NO_TLS_LAST(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWO(0.00)[2];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_ALL(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	DMARC_NA(0.00)[ervin.email];
	ARC_NA(0.00)[];
	TAGGED_FROM(0.00)[bounces-1582-lists,speakup=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	HAS_X_PRIO_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	HAS_REPLYTO(0.00)[glenn@ervin.email];
	RCVD_COUNT_FIVE(0.00)[6];
	DBL_BLOCKED_OPENRESOLVER(0.00)[wisc.edu:email,t39smtp-sign001.email:dkim,befuddled.reisers.ca:helo,befuddled.reisers.ca:rdns];
	FROM_NEQ_ENVFROM(0.00)[glenn@ervin.email,speakup@linux-speakup.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[t39smtp-sign001.email:+];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[speakup];
	ASN(0.00)[asn:5645, ipnet:206.248.128.0/18, country:CA];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	REPLYTO_EQ_FROM(0.00)[]
X-Rspamd-Queue-Id: 3DEFC3A574B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The raspberry PI images have a light image that has no GUI, and I think this 
would be relevant to that, as well as server images.
Glenn
----- Original Message ----- 
From: "John G. Heim" <jheim@math.wisc.edu>
To: "Speakup is a screen review system for Linux." 
<speakup@linux-speakup.org>
Sent: Monday, April 6, 2026 11:28 AM
Subject: Rewriting docs: Live distros in the FAQ


The Speakup FAQ used to have some stuff in it about using rawrite and
boot images. I cut all that out. But it occurs to me that I think I
should instead mention using live images like GRML.

Does anybody use Speakup in some other live image other than GRML? If
not, I'm just going to write a few lines talking about GRML and
directing the reader to the docs for GRML itself. You don't want to
rewrite somebody else's docs in your FAQ. That's a good way to get
obsolete/incorrect info in your FAQ.

Note: I would imagine some people use Ubuntu for their live image but
then you probably don't use Speakup -- so that's not relevant. That
would belong in the Orca FAQ.




