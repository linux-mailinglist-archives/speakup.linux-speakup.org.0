Return-Path: <speakup+bounces-1626-lists+speakup=lfdr.de@linux-speakup.org>
Delivered-To: lists+speakup@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id TPIyJTZEO2qaVAgAu9opvQ
	(envelope-from <speakup+bounces-1626-lists+speakup=lfdr.de@linux-speakup.org>)
	for <lists+speakup@lfdr.de>; Wed, 24 Jun 2026 04:43:02 +0200
X-Original-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id DFB106BAF52
	for <lists+speakup@lfdr.de>; Wed, 24 Jun 2026 04:43:01 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=panix.com header.s=panix header.b=CokChq7h;
	spf=none (mail.lfdr.de: domain of "speakup+bounces-1626-lists+speakup=lfdr.de@linux-speakup.org" has no SPF policy when checking 206.248.184.127) smtp.mailfrom="speakup+bounces-1626-lists+speakup=lfdr.de@linux-speakup.org";
	dmarc=pass (policy=none) header.from=panix.com
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 86AED38269D; Tue, 23 Jun 2026 22:43:00 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 558A938263F
	for <lists+speakup@lfdr.de>; Tue, 23 Jun 2026 22:43:00 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 50FC638264D; Tue, 23 Jun 2026 22:42:54 -0400 (EDT)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 1F2F838263F
	for <speakup@linux-speakup.org>; Tue, 23 Jun 2026 22:42:54 -0400 (EDT)
Received: from panix3.panix.com (panix3.panix.com [166.84.1.3])
	by mailbackend.panix.com (Postfix) with ESMTP id 4glR7J4CT9z4ZSH;
	Tue, 23 Jun 2026 22:42:52 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=panix.com; s=panix;
	t=1782268972; bh=izEOYi9qfP3bU+4ZoT/YJ2WazFU+fRwCzloGxoZLmzI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=CokChq7hoYsc6yjlf+juzUSxQNb3H+kgSB7gs875rOe5i8UGU/sk0/gziJEENKris
	 daO5jG9yYvKWjQhI8XXBmr8EdDf0oJpp6CCKVMQdgivwUbG38jDYB2BdpQ5BcSjCzn
	 FlCyS5utsniqSudKxGP8MAQQrpmo0ZJiXO7DAkJ8=
Received: by panix3.panix.com (Postfix, from userid 20196)
	id 4glR7J3zpbz1QXN; Tue, 23 Jun 2026 22:42:52 -0400 (EDT)
Date: Tue, 23 Jun 2026 22:42:52 -0400
From: Rudy Vener <salt@panix.com>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Cc: "John G. Heim" <jheim@math.wisc.edu>
Subject: Re: Speechd-up -- nice!
Message-ID: <ajtELEkIA1L3kwhX@panix.com>
References: <aa9f5623-dba3-4686-9b5c-8144e409425f@math.wisc.edu>
 <031401dd02c6$798d33a0$8b01f80a@nucwin10>
 <d6e07425-3566-407a-a371-a4d8055e9764@math.wisc.edu>
 <036601dd032c$a63f17e0$8b01f80a@nucwin10>
 <ajrSKnrqwLcVFaAN@panix.com>
 <c329fefb-8d70-4d24-b148-7eaf01f5b4f9@math.wisc.edu>
 <ajsGIzaxbaQe8Bm_@panix.com>
 <73008a8e-0ebb-4ee3-9a5b-78d323039778@math.wisc.edu>
 <04c201dd037b$0bdc9890$8b01f80a@nucwin10>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux." <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <04c201dd037b$0bdc9890$8b01f80a@nucwin10>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.89 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[panix.com,none];
	R_DKIM_ALLOW(-0.20)[panix.com:s=panix];
	MAILLIST(-0.18)[generic];
	RCVD_NO_TLS_LAST(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:jheim@math.wisc.edu,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-1626-lists,speakup=lfdr.de];
	TO_DN_ALL(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[salt@panix.com,speakup@linux-speakup.org];
	SUBJECT_ENDS_EXCLAIM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[panix.com:+];
	R_SPF_NA(0.00)[no SPF record];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[salt@panix.com,speakup@linux-speakup.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:5645, ipnet:206.248.128.0/18, country:CA];
	TAGGED_RCPT(0.00)[speakup];
	DBL_BLOCKED_OPENRESOLVER(0.00)[substack.com:url,linux-speakup.org:from_smtp,linux-speakup.org:email,befuddled.reisers.ca:rdns,befuddled.reisers.ca:helo,wisc.edu:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: DFB106BAF52

In my slint Linux system, speakup-save
copies all the various state files in /sys/accessibility/speakup/
into  /var/lib/speakup/<synth_name>/

while speakup-restore does the opposite, so it's not one config file. It's a lot
of small files, some synth dependent, some hardware dependent. 

-- 
Rudy Vener

Can monsters be the good guys? Find out in Beast Hunt Vol 1: https://www.amazon.com/dp/B0DPN1QGGJ
Like Light-hearted Limericks? Read Memories Of The Music Man https://substack.com/@LimerickDude
Website: http://www.rudyvener.com

On Tue, Jun 23, 2026 at 08:44:49PM -0500, K0LNY ?? wrote:
> If two parties have speakupconf installed, can they share a settings file?
> Like Orca has a settings.conf file.
> I use speakupconf load to load my settings.
> And when I do speakupconf save
> They must be saved somewhere.
> Perhaps someone can send Rudy a conf file.
> Glenn
> 
> ----- Original Message ----- 
> From: "John G. Heim" <jheim@math.wisc.edu>
> To: "Rudy Vener" <salt@panix.com>; "Speakup is a screen review system for 
> Linux." <speakup@linux-speakup.org>
> Sent: Tuesday, June 23, 2026 7:59 PM
> Subject: Re: Speechd-up -- nice!
> 
> 
> Well, I don't know. I haven't had any problems with Speechd Up. I really
> doubt the problem is Speechd Up though. I suspect some Speech Dispatcher
> oddity.
> 
> 
> 
> On 6/23/26 5:18 PM, Rudy Vener wrote:
> > Nope. speechd-up never says "space" even with soft/punct set to 1 or 2.
> > It did make a difference though. At the higher settings, speechd-up did 
> > say "greater" when
> > character flat review under speakup landed on a > (greater than sign)
> > Previously that symbol was also silent.
> > Nonetheless, that minor improvement is insufficient to persuade me to use 
> > speechd-up.
> > I think i18n/characters is where the speakup gets its spoken versions of
> > characters. I habitually edit mine to change the ! sign from exclamation, 
> > to bang.
> > And yes, character 32 is defined as "space" in my i18n/characters variable 
> > structure
> >
> > Hold a sec, let me test this...
> >
> > Yeah, it works I copied i18n/characters to a file, edited
> > 32 space
> > to
> > 32 whitespace
> > and now speakup says "whitespace" every time I hit the space bar or put 
> > the cursor
> > on a space in speakup character review mode. At least it does this using 
> > espeakup.
> >
> > Let me try this in speechd-up...
> >

