Return-Path: <speakup+bounces-1600-lists+speakup=lfdr.de@linux-speakup.org>
Delivered-To: lists+speakup@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 12TdGXpY+Wk68AIAu9opvQ
	(envelope-from <speakup+bounces-1600-lists+speakup=lfdr.de@linux-speakup.org>)
	for <lists+speakup@lfdr.de>; Tue, 05 May 2026 04:39:54 +0200
X-Original-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id C237F4C607F
	for <lists+speakup@lfdr.de>; Tue, 05 May 2026 04:39:53 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=t39smtp-sign001.email header.i=@t39smtp-sign001.email header.a=rsa-sha256 header.s=titan1 header.b=AOKdEiyL;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 5105A382AE5; Mon, 04 May 2026 22:39:52 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 2ED3838179A
	for <lists+speakup@lfdr.de>; Mon, 04 May 2026 22:39:52 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 06FA9381831; Mon, 04 May 2026 22:39:46 -0400 (EDT)
Received: from mail59.out.titan.email (mail59.out.titan.email [209.209.25.192])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 8B7B038179A
	for <speakup@linux-speakup.org>; Mon, 04 May 2026 22:39:45 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by smtp-out.flockmail.com (Postfix) with ESMTP id 4g8jQm6YTfz4w0h;
	Tue,  5 May 2026 02:39:44 +0000 (UTC)
X-Titan-User-Uid: eyJhbGciOiJkaXIiLCJlbmMiOiJBMjU2R0NNIn0..zYjIk86_YRSeAUfg.8oVpzVEFF2i2fBfA_g-h_PC2aQWGjd8qtdHrwMlSUFJnQ-N7Gll8gcxelxUTrax_xV9QrRRUghxZ3jTANtfL5LJ4vOLCI5boKxQw8s4.OwMY-TQsoLTsd8_W3w_eTg
DKIM-Signature: a=rsa-sha256; bh=dGxJom/vl3NRuOOJz2ely76vN4CItyA7Q7NcXIO62kU=;
	c=relaxed/relaxed; d=t39smtp-sign001.email;
	h=date:message-id:reply-to:from:to:mime-version:references:subject:from:to:subject:date:message-id:reply-to:references:cc:in-reply-to;
	q=dns/txt; s=titan1; t=1777948784; v=1;
	b=AOKdEiyLgqE/01f3TBR0Iko3i8Kip1tkZ6l8PvXrXh+NNCd8N930Nbd0l8MfohsOf7QtZkaQ
	TTHiu4q/EVRPxcBRZCWZTBgv/L8pX5BV+dpz/JFpmz94lCkwZPNI9Ct4i8Qyv+rPH1ncMl9xBN2
	LW7yhItB85CsyiODst7bJkMo=
X-AuthUser: glenn@ervin.email
Received: from nucwin10 (unknown [140.228.165.201])
	by smtp-out.flockmail.com (Postfix) with ESMTPA id 4g8jQm36lgz4vyf;
	Tue,  5 May 2026 02:39:44 +0000 (UTC)
Message-ID: <0c3801dcdc38$6f0944f0$8d01f80a@nucwin10>
Reply-To: "K0LNY ??" <glenn@ervin.email>
Feedback-ID: :glenn@ervin.email:ervin.email:flockmailId
From: "K0LNY ??" <glenn@ervin.email>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>,
	"John G. Heim" <jheim@math.wisc.edu>
References: <bf198396-b075-43f2-8e12-96bf7c1a3e11@math.wisc.edu>
Subject: Re: Voxin and Speech Dispatcher
Date: Mon, 4 May 2026 21:39:44 -0500
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
X-Titan-Src-Out: 1777948784739280192.23191.4315634170375730387@prod-use1-smtp-out1001.
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.4 cv=P8IKQCAu c=1 sm=1 tr=0 ts=69f95870
	a=sfY17wZm961WJQkZ7MXrtw==:117 a=sfY17wZm961WJQkZ7MXrtw==:17
	a=IkcTkHD0fZMA:10 a=MKtGQD3n3ToA:10 a=CEWIc4RMnpUA:10 a=qPKtzgQbAAAA:8
	a=1VPVunSn0IoXjzYhRHcA:9 a=QEXdDO2ut3YA:10 a=OTAqJWGB1laLS8RTg9aS:22
	a=P3K-DvM3-jjlTNsN-mCd:22 a=NWVoK91CQySWRX1oVYDe:22
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5
X-Rspamd-Queue-Id: C237F4C607F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.12 / 15.00];
	OLD_X_MAILER(2.00)[];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[t39smtp-sign001.email:s=titan1];
	MAILLIST(-0.18)[generic];
	RCVD_NO_TLS_LAST(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWO(0.00)[2];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	DMARC_NA(0.00)[ervin.email];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_ALL(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-1600-lists,speakup=lfdr.de];
	DKIM_TRACE(0.00)[t39smtp-sign001.email:+];
	HAS_REPLYTO(0.00)[glenn@ervin.email];
	RCVD_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[glenn@ervin.email,speakup@linux-speakup.org];
	FROM_HAS_DN(0.00)[];
	HAS_X_PRIO_THREE(0.00)[3];
	TAGGED_RCPT(0.00)[speakup];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:5645, ipnet:206.248.128.0/18, country:CA];
	REPLYTO_EQ_FROM(0.00)[]

Hi John,
I have three of the Voxin voices that I regularly use via speech dispatcher.
I type in voxin as the synth, and use alsa  in the speech-dispatcher setup.
I do this with spd-conf.
Glenn
----- Original Message ----- 
From: "John G. Heim" <jheim@math.wisc.edu>
To: "Speakup is a screen review system for Linux." 
<speakup@linux-speakup.org>
Sent: Monday, May 4, 2026 9:36 PM
Subject: Voxin and Speech Dispatcher


Anybody know if it's possible to get Speecch Dispatcher to use one of
the really nice voices you can get from Voxin? I have Samantha on a
machine and I'd like to have Speech Dispatcher use it by default.




