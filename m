Return-Path: <speakup+bounces-1630-lists+speakup=lfdr.de@linux-speakup.org>
Delivered-To: lists+speakup@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id MlPZNT4APGq5iAgAu9opvQ
	(envelope-from <speakup+bounces-1630-lists+speakup=lfdr.de@linux-speakup.org>)
	for <lists+speakup@lfdr.de>; Wed, 24 Jun 2026 18:05:18 +0200
X-Original-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id B61E66BFE31
	for <lists+speakup@lfdr.de>; Wed, 24 Jun 2026 18:05:17 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=t39smtp-sign001.email header.s=titan1 header.b=gPMNqQ6I;
	spf=none (mail.lfdr.de: domain of "speakup+bounces-1630-lists+speakup=lfdr.de@linux-speakup.org" has no SPF policy when checking 206.248.184.127) smtp.mailfrom="speakup+bounces-1630-lists+speakup=lfdr.de@linux-speakup.org";
	dmarc=none
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 23866382691; Wed, 24 Jun 2026 12:05:16 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 037DC38263E
	for <lists+speakup@lfdr.de>; Wed, 24 Jun 2026 12:05:16 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id CA7C4382649; Wed, 24 Jun 2026 12:05:09 -0400 (EDT)
Received: from mail64.out.titan.email (mail64.out.titan.email [44.205.83.93])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 8557F382631
	for <speakup@linux-speakup.org>; Wed, 24 Jun 2026 12:05:09 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by smtp-out.flockmail.com (Postfix) with ESMTP id 4glmx03C5fz1xm7;
	Wed, 24 Jun 2026 16:05:08 +0000 (UTC)
X-Titan-User-Uid: eyJhbGciOiJkaXIiLCJlbmMiOiJBMjU2R0NNIn0..auAH9-6uoYP0cfBh.gEUBsQAXdBsmbZuCvsa4B8FrbUCTZB-v_cUggdLKqdUQ7M0h7HG24_Of2CEJbnsBoRp6q0wu8oS1RfHMguG8aes6HcOBb9KAAPxkEN8.R-26lzmCcjzP7nLIY1VaUw
DKIM-Signature: a=rsa-sha256; bh=xWv/du/15qw55yPjxJtPEvTBnYNfdGNEIYyoRyICZYk=;
	c=relaxed/relaxed; d=t39smtp-sign001.email;
	h=mime-version:reply-to:from:to:date:message-id:references:subject:from:to:subject:date:message-id:reply-to:references:cc:in-reply-to;
	q=dns/txt; s=titan1; t=1782317108; v=1;
	b=gPMNqQ6IMoIH/nhzvuUQxr+nBfQmF9J4VqkPvgMYRq6DFKNuD+1P581F3Ss0j+M77CiS1fta
	fqzOogLc52+Hs+5Pql2MENo5YyHzG6x3ncr+/ioAj8MKUtjNfX3+G6MRsT2xr8yJMK63LJm9Ao9
	WYsK1/inqLE0HGyCjUnAvlNA=
X-AuthUser: glenn@ervin.email
Received: from nucwin10 (unknown [140.228.165.201])
	by smtp-out.flockmail.com (Postfix) with ESMTPA id 4glmwz685jz1xpY;
	Wed, 24 Jun 2026 16:05:07 +0000 (UTC)
Message-ID: <0c6901dd03f3$3a48f8e0$8b01f80a@nucwin10>
Reply-To: "K0LNY ??" <glenn@ervin.email>
Feedback-ID: :glenn@ervin.email:ervin.email:flockmailId
From: "K0LNY ??" <glenn@ervin.email>
To: "Georgina Joyce" <gena@m0ebp.uk>,
	"Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <D7D21247-9059-4643-85A4-BEF006828EDA@m0ebp.uk>
Subject: Re: Social media from the terminal
Date: Wed, 24 Jun 2026 11:05:06 -0500
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
X-Titan-Src-Out: 1782317108201222209.32333.8405035020436282112@prod-use1-smtp-out1003.
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.4 cv=P9oKQCAu c=1 sm=1 tr=0 ts=6a3c0034
	a=sfY17wZm961WJQkZ7MXrtw==:117 a=sfY17wZm961WJQkZ7MXrtw==:17
	a=8nJEP1OIZ-IA:10 a=MKtGQD3n3ToA:10 a=CEWIc4RMnpUA:10 a=vggBfdFIAAAA:8
	a=qPKtzgQbAAAA:8 a=SlEAobzoFEweJzvmDsIA:9 a=wPNLvfGTeEIA:10
	a=OTAqJWGB1laLS8RTg9aS:22 a=P3K-DvM3-jjlTNsN-mCd:22
	a=NWVoK91CQySWRX1oVYDe:22
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5
X-Rspamd-Action: no action
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
	FORGED_RECIPIENTS(0.00)[m:gena@m0ebp.uk,s:lists@lfdr.de];
	R_SPF_NA(0.00)[no SPF record];
	DMARC_NA(0.00)[ervin.email];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_ALL(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[glenn@ervin.email,speakup@linux-speakup.org];
	HAS_ORG_HEADER(0.00)[];
	TAGGED_FROM(0.00)[bounces-1630-lists,speakup=lfdr.de];
	DKIM_TRACE(0.00)[t39smtp-sign001.email:+];
	HAS_REPLYTO(0.00)[glenn@ervin.email];
	RCVD_COUNT_FIVE(0.00)[6];
	DBL_BLOCKED_OPENRESOLVER(0.00)[befuddled.reisers.ca:rdns,befuddled.reisers.ca:helo,linux-speakup.org:from_smtp,linux-speakup.org:email,t39smtp-sign001.email:dkim];
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
X-Rspamd-Queue-Id: B61E66BFE31

Hi All,
On this note, I wonder if there are any podcasts/videos of people accessing 
sites, social media as well as sites like Amazon.com using lynx.
I've used lynx, but just the basics, and it would be interesting to have 
someone demonstrate how they can do things like social media, or making 
purchases on-line with lynx.
Glenn
----- Original Message ----- 
From: "Georgina Joyce" <gena@m0ebp.uk>
To: "Speakup is a screen review system for Linux." 
<speakup@linux-speakup.org>
Sent: Wednesday, June 24, 2026 10:48 AM
Subject: Social media from the terminal


Hello All,

I just thought I would ask if anyone was using the terminal to access social 
media? I received an email that promoted a particular adaptive tech 
company's facebook pages. It got me thinking I have never been able to 
manage the facebook interface. I understood they also prevented access to 
the mobile site. I see that in 2012 there was fbcmd app. I'll look later to 
see if it is still available. I recall twitter was easy from the command 
line some time ago. However, I have no interest in X. I also believe there 
is an easy to listen to youtube videos option but the BT Speak requires a 
GUI browser to log into a Google account. So I am not sure if there are any 
pure terminal options now-a-days?

Perhaps, I'm too old! LOL!

Are there simpler social media options than IOS and Android?
Thanks,


Gena



