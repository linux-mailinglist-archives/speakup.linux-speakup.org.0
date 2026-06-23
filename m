Return-Path: <speakup+bounces-1614-lists+speakup=lfdr.de@linux-speakup.org>
Delivered-To: lists+speakup@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 6OfzIBuzOmoLEQgAu9opvQ
	(envelope-from <speakup+bounces-1614-lists+speakup=lfdr.de@linux-speakup.org>)
	for <lists+speakup@lfdr.de>; Tue, 23 Jun 2026 18:23:55 +0200
X-Original-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id E069A6B8B32
	for <lists+speakup@lfdr.de>; Tue, 23 Jun 2026 18:23:54 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=t39smtp-sign001.email header.s=titan1 header.b=axQUcthB;
	spf=none (mail.lfdr.de: domain of "speakup+bounces-1614-lists+speakup=lfdr.de@linux-speakup.org" has no SPF policy when checking 206.248.184.127) smtp.mailfrom="speakup+bounces-1614-lists+speakup=lfdr.de@linux-speakup.org";
	dmarc=none
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 10363382631; Tue, 23 Jun 2026 12:23:48 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id E21B83821A9
	for <lists+speakup@lfdr.de>; Tue, 23 Jun 2026 12:23:47 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id DB4D53821A9; Tue, 23 Jun 2026 12:23:41 -0400 (EDT)
Received: from mail412.out.titan.email (mail412.out.titan.email [98.80.1.170])
	by befuddled.reisers.ca (Postfix) with ESMTPS id ADA513817CB
	for <speakup@linux-speakup.org>; Tue, 23 Jun 2026 12:23:41 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by smtp-out.flockmail.com (Postfix) with ESMTP id 4gl9Np4FKhz1xrj;
	Tue, 23 Jun 2026 16:23:38 +0000 (UTC)
X-Titan-User-Uid: eyJhbGciOiJkaXIiLCJlbmMiOiJBMjU2R0NNIn0..9ntnQ-hrrisFMVz0.ofWmDhbKESGpiLt9GYpFjr9mt51gYc0fnm7Aj4JScwBZDcJ-N8kYuTlVXaZ18d-T4VEz875iXZppvdENeemBPsgk7HegWxsmUU583Ic.5QBc9eZVaoQN3xvcjL_Wxg
DKIM-Signature: a=rsa-sha256; bh=3UB7EhBtYwM6P92f9/nhqqvGm0zLp7gQ2v16LkDW4sk=;
	c=relaxed/relaxed; d=t39smtp-sign001.email;
	h=from:to:message-id:reply-to:references:mime-version:cc:subject:date:from:to:cc:subject:date:message-id:reply-to:references:in-reply-to;
	q=dns/txt; s=titan1; t=1782231818; v=1;
	b=axQUcthBIBxN0ZxHBRakgr5cehwZAhmoGsxcV7zL09ZI9OqYib79xbO5vYuXsHXNRcV1uOs9
	hpeqPTDzcA70LMeTx9WmNpUKaWvnDQbIIqLeDWrCDvyIXIpMlfClOIIKYUyh5A6cmfqjp06lI6V
	UaFHc0ADo3NoPBmiZBJV+f1k=
X-AuthUser: glenn@ervin.email
Received: from nucwin10 (unknown [140.228.165.201])
	by smtp-out.flockmail.com (Postfix) with ESMTPA id 4gl9Np0qNMz1xsm;
	Tue, 23 Jun 2026 16:23:38 +0000 (UTC)
Message-ID: <036601dd032c$a63f17e0$8b01f80a@nucwin10>
Reply-To: "K0LNY ??" <glenn@ervin.email>
Feedback-ID: :glenn@ervin.email:ervin.email:flockmailId
From: "K0LNY ??" <glenn@ervin.email>
To: "John G. Heim" <jheim@math.wisc.edu>
Cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <aa9f5623-dba3-4686-9b5c-8144e409425f@math.wisc.edu> <031401dd02c6$798d33a0$8b01f80a@nucwin10> <d6e07425-3566-407a-a371-a4d8055e9764@math.wisc.edu>
Subject: Re: Speechd-up -- nice!
Date: Tue, 23 Jun 2026 11:23:38 -0500
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
X-Titan-Src-Out: 1782231818406780044.32333.629873446629470687@prod-use1-smtp-out1003.
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.4 cv=eeENubEH c=1 sm=1 tr=0 ts=6a3ab30a
	a=sfY17wZm961WJQkZ7MXrtw==:117 a=sfY17wZm961WJQkZ7MXrtw==:17
	a=IkcTkHD0fZMA:10 a=MKtGQD3n3ToA:10 a=CEWIc4RMnpUA:10 a=qPKtzgQbAAAA:8
	a=G1YoVP_uH81tgqB0C8EA:9 a=QEXdDO2ut3YA:10 a=mWFacF0p99gW8SnQVrlR:22
	a=OTAqJWGB1laLS8RTg9aS:22 a=P3K-DvM3-jjlTNsN-mCd:22
	a=NWVoK91CQySWRX1oVYDe:22
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
	RCPT_COUNT_TWO(0.00)[2];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jheim@math.wisc.edu,s:lists@lfdr.de];
	DMARC_NA(0.00)[ervin.email];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ervin.email:replyto,ervin.email:email,ervin.email:from_mime];
	FORGED_SENDER(0.00)[glenn@ervin.email,speakup@linux-speakup.org];
	SUBJECT_ENDS_EXCLAIM(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_ALL(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-1614-lists,speakup=lfdr.de];
	DKIM_TRACE(0.00)[t39smtp-sign001.email:+];
	HAS_REPLYTO(0.00)[glenn@ervin.email];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	R_SPF_NA(0.00)[no SPF record];
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
X-Rspamd-Queue-Id: E069A6B8B32

I started out with an Artic internal card, and I enjoyed having that.
I think now that Espeak sounds a lot like my artic card.
Perhaps it is the default Espeak that grates on me if I listen to it too
long.
It is far better than that crap in the Roku devices, or that was, I don't
know if they still use that crappy voice.
I could not even enter my password because I could not distinguish some of
the characters.
I suggested to Roku that they use Espeak, because it is free, but after I
contacted them, I only heard crickets.
I have heard some variances in Espeak-ng that aren't bad in my opinion.
When I used to set up NVDA for clients, and Espeak came up, usually they
started laughing.
But hey, any TTS is better than nothing.
Glenn

----- Original Message ----- 
From: "John G. Heim" <jheim@math.wisc.edu>
To: "K0LNY ??" <glenn@ervin.email>
Sent: Tuesday, June 23, 2026 10:24 AM
Subject: Re: Speechd-up -- nice!


I am convinced it's just what you are used to. It's like if you listen
to English with a British accent every day, that sounds clearer than
English spoken with an American accent. If you listen to podcasts at 1.5
speed, at first it's hard to understand but then you get used to it. As
someone who switches back and forth between the espeak-ng voice Gene
and Eloquence, I am absolutely convinced there is not a meaningful
difference.

Your mileage may vary. I'm not a neurologist. But I'd bet my house that
it's just what you are used to.



On 6/22/26 11:12 PM, K0LNY ?? wrote:
> I dread the day that human sounding voices are all we have.
> I hate Speakup, although it is quite intelligible, but I never want 
> anything
> but Eloquence/voxin.
> Human sounding voices might be okay for reading a book, but not for 
> computer
> use in my opinion.
> ----- Original Message -----
> From: "John G. Heim" <jheim@math.wisc.edu>
> To: "Speakup is a screen review system for Linux."
> <speakup@linux-speakup.org>
> Sent: Monday, June 22, 2026 10:45 PM
> Subject: Speechd-up -- nice!
>
>
> Not much mention of speechd-up on this list over the years. Turns out
> it's pretty nice. While working on rewriting the docs for Speakup, I
> gave speechd-up a try and it works great. I'm using that Voxin default
> voice, Eloquence, at the command line. You can't do that with espeakup.
>
> Speechd-up might be the way to go in the future because voices that are
> not resource hogs and are more human sounding are coming. Well, they
> already exist except I don't know how to get them to work with Speech
> Dispatcher. AFAIK, nobody does. Like, I have a license for Samantha but
> darned if I can get it to work with Speech Dispatcher.
>
> Anyway, once that kind of thing gets worked out, you'll be able to have
> human sounding voices at the Linux command line.
>
>
>
>
> 


