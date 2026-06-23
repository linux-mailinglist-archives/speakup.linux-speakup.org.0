Return-Path: <speakup+bounces-1612-lists+speakup=lfdr.de@linux-speakup.org>
Delivered-To: lists+speakup@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id U34ME6cHOmo40QcAu9opvQ
	(envelope-from <speakup+bounces-1612-lists+speakup=lfdr.de@linux-speakup.org>)
	for <lists+speakup@lfdr.de>; Tue, 23 Jun 2026 06:12:23 +0200
X-Original-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id C5CF96B3F81
	for <lists+speakup@lfdr.de>; Tue, 23 Jun 2026 06:12:22 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=t39smtp-sign001.email header.s=titan1 header.b=KiAlLnLm;
	spf=none (mail.lfdr.de: domain of "speakup+bounces-1612-lists+speakup=lfdr.de@linux-speakup.org" has no SPF policy when checking 206.248.184.127) smtp.mailfrom="speakup+bounces-1612-lists+speakup=lfdr.de@linux-speakup.org";
	dmarc=none
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 4A079382658; Tue, 23 Jun 2026 00:12:22 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 27FCD381926
	for <lists+speakup@lfdr.de>; Tue, 23 Jun 2026 00:12:22 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 1320D38237C; Tue, 23 Jun 2026 00:12:16 -0400 (EDT)
Received: from mail103.out.titan.email (mail103.out.titan.email [34.226.11.255])
	by befuddled.reisers.ca (Postfix) with ESMTPS id B63CF381926
	for <speakup@linux-speakup.org>; Tue, 23 Jun 2026 00:12:15 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by smtp-out.flockmail.com (Postfix) with ESMTP id 4gks8v0Y7Lz3wbN;
	Tue, 23 Jun 2026 04:12:15 +0000 (UTC)
X-Titan-User-Uid: eyJhbGciOiJkaXIiLCJlbmMiOiJBMjU2R0NNIn0..s85xPEtn57OA4zjY.VAyq2pkjfmABmDqJW9UMyTPNqh7KSyblDqTrn_WqyQnWDbcMf5Rkb_uvpCVxSLUKpdbZyoMTqal7OKiNdTeq_FFN_b4Hp_aHNeQHqsA.3E6BiMdveL_8PYDuNe49fQ
DKIM-Signature: a=rsa-sha256; bh=2WmN9adZhvP5/xTxb5wMn0nTpSWwWgYIp7wjG3fQqOw=;
	c=relaxed/relaxed; d=t39smtp-sign001.email;
	h=message-id:from:references:reply-to:subject:to:date:mime-version:from:to:subject:date:message-id:reply-to:references:cc:in-reply-to;
	q=dns/txt; s=titan1; t=1782187934; v=1;
	b=KiAlLnLmeFqCrcTvvwpFO1N1wAiuKxP/8FSIJgefsni4bFt2oLuDz40mRMkXNsIw8NrCtC47
	cHyyKegTshnvz0sbFoafbeDTiOXGVsrIJacPYAiNnyciWyBEc2xIbZB8jAu5OwiPH8qxI8gJFVS
	Ebwf5X128h1Wq3xBdC3m2s24=
X-AuthUser: glenn@ervin.email
Received: from nucwin10 (unknown [140.228.165.201])
	by smtp-out.flockmail.com (Postfix) with ESMTPA id 4gks8t3zy7z3wbR;
	Tue, 23 Jun 2026 04:12:14 +0000 (UTC)
Message-ID: <031401dd02c6$798d33a0$8b01f80a@nucwin10>
Reply-To: "K0LNY ??" <glenn@ervin.email>
Feedback-ID: :glenn@ervin.email:ervin.email:flockmailId
From: "K0LNY ??" <glenn@ervin.email>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>,
	"John G. Heim" <jheim@math.wisc.edu>
References: <aa9f5623-dba3-4686-9b5c-8144e409425f@math.wisc.edu>
Subject: Re: Speechd-up -- nice!
Date: Mon, 22 Jun 2026 23:12:14 -0500
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
X-Titan-Src-Out: 1782187934842954169.3794.7858991270663116992@prod-use1-smtp-out1002.
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.4 cv=L+ctheT8 c=1 sm=1 tr=0 ts=6a3a079e
	a=sfY17wZm961WJQkZ7MXrtw==:117 a=sfY17wZm961WJQkZ7MXrtw==:17
	a=IkcTkHD0fZMA:10 a=MKtGQD3n3ToA:10 a=CEWIc4RMnpUA:10 a=qPKtzgQbAAAA:8
	a=gO8iOuMx_BLpyxsUUqAA:9 a=QEXdDO2ut3YA:10 a=OTAqJWGB1laLS8RTg9aS:22
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
	FORGED_RECIPIENTS(0.00)[m:jheim@math.wisc.edu,s:lists@lfdr.de];
	RCPT_COUNT_TWO(0.00)[2];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[ervin.email];
	R_SPF_NA(0.00)[no SPF record];
	FORGED_SENDER(0.00)[glenn@ervin.email,speakup@linux-speakup.org];
	SUBJECT_ENDS_EXCLAIM(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_ALL(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-1612-lists,speakup=lfdr.de];
	DKIM_TRACE(0.00)[t39smtp-sign001.email:+];
	HAS_REPLYTO(0.00)[glenn@ervin.email];
	RCVD_COUNT_FIVE(0.00)[6];
	DBL_BLOCKED_OPENRESOLVER(0.00)[wisc.edu:email,linux-speakup.org:from_smtp,linux-speakup.org:email,befuddled.reisers.ca:rdns,befuddled.reisers.ca:helo,ervin.email:replyto,ervin.email:from_mime];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[glenn@ervin.email,speakup@linux-speakup.org];
	HAS_X_PRIO_THREE(0.00)[3];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[speakup];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:5645, ipnet:206.248.128.0/18, country:CA];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	REPLYTO_EQ_FROM(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C5CF96B3F81

I dread the day that human sounding voices are all we have.
I hate Speakup, although it is quite intelligible, but I never want anything 
but Eloquence/voxin.
Human sounding voices might be okay for reading a book, but not for computer 
use in my opinion.
----- Original Message ----- 
From: "John G. Heim" <jheim@math.wisc.edu>
To: "Speakup is a screen review system for Linux." 
<speakup@linux-speakup.org>
Sent: Monday, June 22, 2026 10:45 PM
Subject: Speechd-up -- nice!


Not much mention of speechd-up on this list over the years. Turns out
it's pretty nice. While working on rewriting the docs for Speakup, I
gave speechd-up a try and it works great. I'm using that Voxin default
voice, Eloquence, at the command line. You can't do that with espeakup.

Speechd-up might be the way to go in the future because voices that are
not resource hogs and are more human sounding are coming. Well, they
already exist except I don't know how to get them to work with Speech
Dispatcher. AFAIK, nobody does. Like, I have a license for Samantha but
darned if I can get it to work with Speech Dispatcher.

Anyway, once that kind of thing gets worked out, you'll be able to have
human sounding voices at the Linux command line.






