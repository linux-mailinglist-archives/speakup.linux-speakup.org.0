Return-Path: <speakup+bounces-1625-lists+speakup=lfdr.de@linux-speakup.org>
Delivered-To: lists+speakup@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id lzUOBpw2O2rtSwgAu9opvQ
	(envelope-from <speakup+bounces-1625-lists+speakup=lfdr.de@linux-speakup.org>)
	for <lists+speakup@lfdr.de>; Wed, 24 Jun 2026 03:45:00 +0200
X-Original-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 84BD26BAD24
	for <lists+speakup@lfdr.de>; Wed, 24 Jun 2026 03:44:59 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=t39smtp-sign001.email header.s=titan1 header.b="SiPj/ytU";
	spf=none (mail.lfdr.de: domain of "speakup+bounces-1625-lists+speakup=lfdr.de@linux-speakup.org" has no SPF policy when checking 206.248.184.127) smtp.mailfrom="speakup+bounces-1625-lists+speakup=lfdr.de@linux-speakup.org";
	dmarc=none
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id EB6BE382695; Tue, 23 Jun 2026 21:44:58 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id CB8C3382642
	for <lists+speakup@lfdr.de>; Tue, 23 Jun 2026 21:44:58 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id D464738264C; Tue, 23 Jun 2026 21:44:52 -0400 (EDT)
Received: from mail63.out.titan.email (mail63.out.titan.email [34.202.218.147])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 97EB6382642
	for <speakup@linux-speakup.org>; Tue, 23 Jun 2026 21:44:52 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by smtp-out.flockmail.com (Postfix) with ESMTP id 4glPrK5WMRz4vyr;
	Wed, 24 Jun 2026 01:44:49 +0000 (UTC)
X-Titan-User-Uid: eyJhbGciOiJkaXIiLCJlbmMiOiJBMjU2R0NNIn0..fwDm89h9b3B9-T9G.PciqhIQgSp3c_yjI3MrNq6Y1KiJPddHKGyYnBFiebYi3tWjHZ4VVz5QjR9mKbJsNYqjX0sbSCsOTKU-YmbNuEdNsPe9v3MUfZFczIbI.G3W7HgoNPUXm2pnItHXdQA
DKIM-Signature: a=rsa-sha256; bh=3g0O1AE3lEGHaV33/HsqIn75ez/Xp3oV2YDc3SyKD6I=;
	c=relaxed/relaxed; d=t39smtp-sign001.email;
	h=reply-to:to:references:date:message-id:from:subject:mime-version:from:to:subject:date:message-id:reply-to:references:cc:in-reply-to;
	q=dns/txt; s=titan1; t=1782265489; v=1;
	b=SiPj/ytUEB+qeSvYEQtFk/6IBk1cfAlkU0ZK7t231sMPYkLvhu4mbtVmBDjWmfFoWgbe0OWY
	xlW9OPpt8XG5Dvy/i0SAiVwvutW3JW/1OqN58a3V371yK7TDFu6biGd9kw6miB0XXQTIP+CgKEd
	xLIbbCdeFJkj48EncYsLFmmg=
X-AuthUser: glenn@ervin.email
Received: from nucwin10 (unknown [140.228.165.201])
	by smtp-out.flockmail.com (Postfix) with ESMTPA id 4glPrK1Q0tz4vxk;
	Wed, 24 Jun 2026 01:44:49 +0000 (UTC)
Message-ID: <04c201dd037b$0bdc9890$8b01f80a@nucwin10>
Reply-To: "K0LNY ??" <glenn@ervin.email>
Feedback-ID: :glenn@ervin.email:ervin.email:flockmailId
From: "K0LNY ??" <glenn@ervin.email>
To: "Rudy Vener" <salt@panix.com>,
	"Speakup is a screen review system for Linux." <speakup@linux-speakup.org>,
	"John G. Heim" <jheim@math.wisc.edu>
References: <aa9f5623-dba3-4686-9b5c-8144e409425f@math.wisc.edu> <031401dd02c6$798d33a0$8b01f80a@nucwin10> <d6e07425-3566-407a-a371-a4d8055e9764@math.wisc.edu> <036601dd032c$a63f17e0$8b01f80a@nucwin10> <ajrSKnrqwLcVFaAN@panix.com> <c329fefb-8d70-4d24-b148-7eaf01f5b4f9@math.wisc.edu> <ajsGIzaxbaQe8Bm_@panix.com> <73008a8e-0ebb-4ee3-9a5b-78d323039778@math.wisc.edu>
Subject: Re: Speechd-up -- nice!
Date: Tue, 23 Jun 2026 20:44:49 -0500
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
	charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2900.2180
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.2180
X-F-Verdict: SPFVALID
X-Titan-Src-Out: 1782265489587060716.27910.8500354483067708120@prod-use1-smtp-out1001.
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.4 cv=L+ctheT8 c=1 sm=1 tr=0 ts=6a3b3691
	a=sfY17wZm961WJQkZ7MXrtw==:117 a=sfY17wZm961WJQkZ7MXrtw==:17
	a=IkcTkHD0fZMA:10 a=MKtGQD3n3ToA:10 a=CEWIc4RMnpUA:10 a=VUfPOBp7AAAA:8
	a=qPKtzgQbAAAA:8 a=VMSLQ10Qy9ldKqTYVTwA:9 a=QEXdDO2ut3YA:10
	a=h9p_k6br8ecoN9AbG9pA:22 a=OTAqJWGB1laLS8RTg9aS:22
	a=P3K-DvM3-jjlTNsN-mCd:22 a=NWVoK91CQySWRX1oVYDe:22
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5
X-Rspamd-Action: no action
X-Spamd-Result: default: False [2.12 / 15.00];
	OLD_X_MAILER(2.00)[];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[t39smtp-sign001.email:s=titan1];
	MAILLIST(-0.18)[generic];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_NO_TLS_LAST(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[ervin.email];
	FORGED_RECIPIENTS(0.00)[m:salt@panix.com,m:jheim@math.wisc.edu,s:lists@lfdr.de];
	TO_DN_ALL(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	FORGED_SENDER(0.00)[glenn@ervin.email,speakup@linux-speakup.org];
	SUBJECT_ENDS_EXCLAIM(0.00)[];
	ARC_NA(0.00)[];
	TAGGED_FROM(0.00)[bounces-1625-lists,speakup=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	HAS_X_PRIO_THREE(0.00)[3];
	DKIM_TRACE(0.00)[t39smtp-sign001.email:+];
	HAS_REPLYTO(0.00)[glenn@ervin.email];
	RCVD_COUNT_FIVE(0.00)[6];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux-speakup.org:from_smtp,linux-speakup.org:email,panix.com:email,wisc.edu:email,t39smtp-sign001.email:dkim];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[glenn@ervin.email,speakup@linux-speakup.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[speakup];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:5645, ipnet:206.248.128.0/18, country:CA];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	REPLYTO_EQ_FROM(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 84BD26BAD24

If two parties have speakupconf installed, can they share a settings file?
Like Orca has a settings.conf file.
I use speakupconf load to load my settings.
And when I do speakupconf save
They must be saved somewhere.
Perhaps someone can send Rudy a conf file.
Glenn

----- Original Message ----- 
From: "John G. Heim" <jheim@math.wisc.edu>
To: "Rudy Vener" <salt@panix.com>; "Speakup is a screen review system for 
Linux." <speakup@linux-speakup.org>
Sent: Tuesday, June 23, 2026 7:59 PM
Subject: Re: Speechd-up -- nice!


Well, I don't know. I haven't had any problems with Speechd Up. I really
doubt the problem is Speechd Up though. I suspect some Speech Dispatcher
oddity.



On 6/23/26 5:18 PM, Rudy Vener wrote:
> Nope. speechd-up never says "space" even with soft/punct set to 1 or 2.
> It did make a difference though. At the higher settings, speechd-up did 
> say "greater" when
> character flat review under speakup landed on a > (greater than sign)
> Previously that symbol was also silent.
> Nonetheless, that minor improvement is insufficient to persuade me to use 
> speechd-up.
> I think i18n/characters is where the speakup gets its spoken versions of
> characters. I habitually edit mine to change the ! sign from exclamation, 
> to bang.
> And yes, character 32 is defined as "space" in my i18n/characters variable 
> structure
>
> Hold a sec, let me test this...
>
> Yeah, it works I copied i18n/characters to a file, edited
> 32 space
> to
> 32 whitespace
> and now speakup says "whitespace" every time I hit the space bar or put 
> the cursor
> on a space in speakup character review mode. At least it does this using 
> espeakup.
>
> Let me try this in speechd-up...
>


