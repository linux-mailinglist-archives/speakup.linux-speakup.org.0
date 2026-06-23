Return-Path: <speakup+bounces-1622-lists+speakup=lfdr.de@linux-speakup.org>
Delivered-To: lists+speakup@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 7gdLDUIGO2oUOwgAu9opvQ
	(envelope-from <speakup+bounces-1622-lists+speakup=lfdr.de@linux-speakup.org>)
	for <lists+speakup@lfdr.de>; Wed, 24 Jun 2026 00:18:42 +0200
X-Original-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 3624F6BA620
	for <lists+speakup@lfdr.de>; Wed, 24 Jun 2026 00:18:28 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=panix.com header.s=panix header.b=VU8E3FVp;
	spf=none (mail.lfdr.de: domain of "speakup+bounces-1622-lists+speakup=lfdr.de@linux-speakup.org" has no SPF policy when checking 206.248.184.127) smtp.mailfrom="speakup+bounces-1622-lists+speakup=lfdr.de@linux-speakup.org";
	dmarc=pass (policy=none) header.from=panix.com
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 0B06F38268E; Tue, 23 Jun 2026 18:18:19 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id DD3AB38263F
	for <lists+speakup@lfdr.de>; Tue, 23 Jun 2026 18:18:18 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id D2849382642; Tue, 23 Jun 2026 18:18:12 -0400 (EDT)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by befuddled.reisers.ca (Postfix) with ESMTPS id B2A26382631
	for <speakup@linux-speakup.org>; Tue, 23 Jun 2026 18:18:12 -0400 (EDT)
Received: from panix3.panix.com (panix3.panix.com [166.84.1.3])
	by mailbackend.panix.com (Postfix) with ESMTP id 4glKFv2DjQz4Nt2
	for <speakup@linux-speakup.org>; Tue, 23 Jun 2026 18:18:11 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=panix.com; s=panix;
	t=1782253091; bh=kqF3xq/TQpqyZxhwN3r94bvdGfvA6Bpt1LWQOEfF8e4=;
	h=Date:From:To:Subject:References:In-Reply-To;
	b=VU8E3FVpHx1QVyYdfd0WYPQRawGtsFMX/qxIRj1G3ujvVMCk7p+P681MVNgs8EmjI
	 mFZTE9vWa45jBSdaO+72uZ4A79itZzj+GNZ33hpeb2n9jjtYijvobV5RRvUgjr3Z2b
	 CuSIoLqUSZJ75wWSMOrmWbrbqa3+d3QNwelY5KgA=
Received: by panix3.panix.com (Postfix, from userid 20196)
	id 4glKFv1yQWz1QXN; Tue, 23 Jun 2026 18:18:11 -0400 (EDT)
Date: Tue, 23 Jun 2026 18:18:11 -0400
From: Rudy Vener <salt@panix.com>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Speechd-up -- nice!
Message-ID: <ajsGIzaxbaQe8Bm_@panix.com>
References: <aa9f5623-dba3-4686-9b5c-8144e409425f@math.wisc.edu>
 <031401dd02c6$798d33a0$8b01f80a@nucwin10>
 <d6e07425-3566-407a-a371-a4d8055e9764@math.wisc.edu>
 <036601dd032c$a63f17e0$8b01f80a@nucwin10>
 <ajrSKnrqwLcVFaAN@panix.com>
 <c329fefb-8d70-4d24-b148-7eaf01f5b4f9@math.wisc.edu>
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
In-Reply-To: <c329fefb-8d70-4d24-b148-7eaf01f5b4f9@math.wisc.edu>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.89 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[panix.com,none];
	R_DKIM_ALLOW(-0.20)[panix.com:s=panix];
	MAILLIST(-0.18)[generic];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_NO_TLS_LAST(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-1622-lists,speakup=lfdr.de];
	TO_DN_ALL(0.00)[];
	FORGED_SENDER(0.00)[salt@panix.com,speakup@linux-speakup.org];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[panix.com:+];
	RCPT_COUNT_ONE(0.00)[1];
	FORWARDED(0.00)[lists@lfdr.de];
	R_SPF_NA(0.00)[no SPF record];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:5645, ipnet:206.248.128.0/18, country:CA];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[salt@panix.com,speakup@linux-speakup.org];
	FROM_HAS_DN(0.00)[];
	SUBJECT_ENDS_EXCLAIM(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	MID_RHS_MATCH_FROM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[speakup];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux-speakup.org:from_smtp,substack.com:url,befuddled.reisers.ca:rdns,befuddled.reisers.ca:helo,rudyvener.com:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3624F6BA620

Nope. speechd-up never says "space" even with soft/punct set to 1 or 2.
It did make a difference though. At the higher settings, speechd-up did say "greater" when
character flat review under speakup landed on a > (greater than sign) 
Previously that symbol was also silent.
Nonetheless, that minor improvement is insufficient to persuade me to use speechd-up.
I think i18n/characters is where the speakup gets its spoken versions of
characters. I habitually edit mine to change the ! sign from exclamation, to bang.
And yes, character 32 is defined as "space" in my i18n/characters variable structure

Hold a sec, let me test this...

Yeah, it works I copied i18n/characters to a file, edited 
32 space 
to 
32 whitespace
and now speakup says "whitespace" every time I hit the space bar or put the cursor
on a space in speakup character review mode. At least it does this using espeakup.

Let me try this in speechd-up...

-- 
Nope. Speechd-up still remains stubbornly silent on spaces.

Rudy Vener

Can monsters be the good guys? Find out in Beast Hunt Vol 1: https://www.amazon.com/dp/B0DPN1QGGJ
Like Light-hearted Limericks? Read Memories Of The Music Man https://substack.com/@LimerickDude
Website: http://www.rudyvener.com

On Tue, Jun 23, 2026 at 04:07:08PM -0500, John G. Heim wrote:
> The only thing I can think of is that the?? punctuation setting got changed
> somehow. The punctuation level is stored in
> /sys/accessibility/speakup/soft/punct. On my system, that's 0 (zero) and??
> it works fine.
> 
> Other than?? that, I?? don't know how you could make this happen even if you
> tried.?? While writing the RPItalk?? code, I saw that Speakup sends the
> string, " space "?? when it wants the TTS to say the word "space". Given
> that, I don't know how you'd get Speech Dispatcher to not say the word space
> when you hit the space bar.
> 
> 
> On 6/23/26 1:36 PM, Rudy Vener wrote:

