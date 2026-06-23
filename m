Return-Path: <speakup+bounces-1618-lists+speakup=lfdr.de@linux-speakup.org>
Delivered-To: lists+speakup@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id btwEEDC/OmrtFggAu9opvQ
	(envelope-from <speakup+bounces-1618-lists+speakup=lfdr.de@linux-speakup.org>)
	for <lists+speakup@lfdr.de>; Tue, 23 Jun 2026 19:15:28 +0200
X-Original-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id B16DA6B8FD4
	for <lists+speakup@lfdr.de>; Tue, 23 Jun 2026 19:15:27 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=t39smtp-sign001.email header.s=titan1 header.b=fe0gFBHU;
	spf=none (mail.lfdr.de: domain of "speakup+bounces-1618-lists+speakup=lfdr.de@linux-speakup.org" has no SPF policy when checking 206.248.184.127) smtp.mailfrom="speakup+bounces-1618-lists+speakup=lfdr.de@linux-speakup.org";
	dmarc=none
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 32BF2382660; Tue, 23 Jun 2026 13:15:27 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 133C83820A0
	for <lists+speakup@lfdr.de>; Tue, 23 Jun 2026 13:15:27 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id EA47D382637; Tue, 23 Jun 2026 13:15:20 -0400 (EDT)
Received: from mail54.out.titan.email (mail54.out.titan.email [44.195.191.162])
	by befuddled.reisers.ca (Postfix) with ESMTPS id B482D3825FD
	for <speakup@linux-speakup.org>; Tue, 23 Jun 2026 13:15:20 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by smtp-out.flockmail.com (Postfix) with ESMTP id 4glBXR6gVnz3wfM;
	Tue, 23 Jun 2026 17:15:19 +0000 (UTC)
X-Titan-User-Uid: eyJhbGciOiJkaXIiLCJlbmMiOiJBMjU2R0NNIn0..tk3oa5XGc2J9FDJm.4tOoXlQ82PTEDyaONEjebRs5TgpkfLVeUbFeaGCiUz-BSTM8hjphsBL3ycZEutxQWNYlBPqLKfmG1IT5vbSJpK9F91oOT57f5KoE8uo.SATk7i7uUdhE0otkCL1tfg
DKIM-Signature: a=rsa-sha256; bh=83GMyg22GAqpTwBS+cro7GVtQlz+7zP5M8B/8xuzXnU=;
	c=relaxed/relaxed; d=t39smtp-sign001.email;
	h=to:from:cc:references:subject:message-id:reply-to:date:mime-version:from:to:cc:subject:date:message-id:reply-to:references:in-reply-to;
	q=dns/txt; s=titan1; t=1782234919; v=1;
	b=fe0gFBHUP9NZ1EP181cTYf04buoLEBKpAZLLPs3C8xkq0zMGFBE2pPFEZflIrLv3C3afkEqn
	sFZplfnYFs6XopJYs916r1YTxkiU6B5wNHpst9Y/HM1y13LMATCRHrmRdMakDFPT8y2dhS5eK5A
	qsWkloOb4RILolWjHxcWt6k0=
X-AuthUser: glenn@ervin.email
Received: from nucwin10 (unknown [140.228.165.201])
	by smtp-out.flockmail.com (Postfix) with ESMTPA id 4glBXR2Xmcz3wbM;
	Tue, 23 Jun 2026 17:15:19 +0000 (UTC)
Message-ID: <038701dd0333$dec327d0$8b01f80a@nucwin10>
Reply-To: "K0LNY ??" <glenn@ervin.email>
Feedback-ID: :glenn@ervin.email:ervin.email:flockmailId
From: "K0LNY ??" <glenn@ervin.email>
To: "Chime Hart" <chime@hubert-humphrey.com>
Cc: "John G. Heim" <jheim@math.wisc.edu>,
	"Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <aa9f5623-dba3-4686-9b5c-8144e409425f@math.wisc.edu> <031401dd02c6$798d33a0$8b01f80a@nucwin10> <d6e07425-3566-407a-a371-a4d8055e9764@math.wisc.edu> <036601dd032c$a63f17e0$8b01f80a@nucwin10> <d39caef1-9a00-0c5d-8b32-b1ac0d28a4cc@hubert-humphrey.com>
Subject: Re: Speechd-up -- nice!
Date: Tue, 23 Jun 2026 12:15:19 -0500
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
	charset="iso-8859-1"
Content-Transfer-Encoding: 7bit
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2900.2180
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.2180
X-F-Verdict: SPFVALID
X-Titan-Src-Out: 1782234919712759712.3794.5939529413652189825@prod-use1-smtp-out1002.
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.4 cv=L+ctheT8 c=1 sm=1 tr=0 ts=6a3abf27
	a=sfY17wZm961WJQkZ7MXrtw==:117 a=sfY17wZm961WJQkZ7MXrtw==:17
	a=8nJEP1OIZ-IA:10 a=MKtGQD3n3ToA:10 a=CEWIc4RMnpUA:10 a=EUDjGK3pAAAA:8
	a=qPKtzgQbAAAA:8 a=3vUCtCe4-nOymAO-c6QA:9 a=wPNLvfGTeEIA:10
	a=7CWdE0Xi03QsYozaNcnV:22 a=OTAqJWGB1laLS8RTg9aS:22
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
	FORGED_RECIPIENTS(0.00)[m:chime@hubert-humphrey.com,m:jheim@math.wisc.edu,s:lists@lfdr.de];
	TO_DN_ALL(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	FORGED_SENDER(0.00)[glenn@ervin.email,speakup@linux-speakup.org];
	SUBJECT_ENDS_EXCLAIM(0.00)[];
	ARC_NA(0.00)[];
	TAGGED_FROM(0.00)[bounces-1618-lists,speakup=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	HAS_X_PRIO_THREE(0.00)[3];
	DKIM_TRACE(0.00)[t39smtp-sign001.email:+];
	HAS_REPLYTO(0.00)[glenn@ervin.email];
	RCVD_COUNT_FIVE(0.00)[6];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux-speakup.org:from_smtp,linux-speakup.org:email,hubert-humphrey.com:email,befuddled.reisers.ca:rdns,befuddled.reisers.ca:helo];
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
X-Rspamd-Queue-Id: B16DA6B8FD4

Yes, Thanks for the correction.
I did mean Espeak.
espeak, espeakup, speakup, they sometimes get all muddied together for me.
I do use speechdup on my Asus 32 bit netbook.
Glenn
----- Original Message ----- 
From: "Chime Hart" <chime@hubert-humphrey.com>
To: "K0LNY ??" <glenn@ervin.email>
Cc: "John G. Heim" <jheim@math.wisc.edu>; "Speakup is a screen review system 
for Linux." <speakup@linux-speakup.org>
Sent: Tuesday, June 23, 2026 12:08 PM
Subject: Re: Speechd-up -- nice!


Well, Glen, several messages ago I think you said "I hate Speakup" maybe you
meant "espeakup" as well, I wouldn't want to waste even 1 byte of any kind 
of e
speak. As far as the screen-reader Speakup, I think a perfect solution would 
be
combining best features of Speakup-and-Vocal-Eyes. I agree as far as ROKU, 
but
whats funny, if you use their voice asistant, you hear a Google engine which 
is
`wonderful, but I tried convincing them to make that a defalt, but I cannot 
get
to any1 incharge of Accessibility. Many other streaming devices such as an
Amazon FireTV, AppleTV, and Google TV Streamer have much better speech. I
thought I still had a sample of the same engine on ROKU, but I cannot find 
it,
name sounds like microft.
Chime


