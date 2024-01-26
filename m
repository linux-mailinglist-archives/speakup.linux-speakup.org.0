Return-Path: <speakup+bounces-1070-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 4CC5183E0AE
	for <lists+speakup@lfdr.de>; Fri, 26 Jan 2024 18:43:47 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=the-brannons.com header.i=@the-brannons.com header.a=rsa-sha256 header.s=hurricane header.b=aO/blJUJ;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 12E5138279C; Fri, 26 Jan 2024 12:43:46 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id E602D382079
	for <lists+speakup@lfdr.de>; Fri, 26 Jan 2024 12:43:45 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 4A7753820B9; Fri, 26 Jan 2024 12:43:38 -0500 (EST)
Received: from hurricane.the-brannons.com (hurricane.the-brannons.com [216.252.162.32])
	by befuddled.reisers.ca (Postfix) with ESMTPS id AAB89382041
	for <speakup@linux-speakup.org>; Fri, 26 Jan 2024 12:43:37 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; s=hurricane; bh=oeaRcYIENf
	OUeTThaHVc65A8z7avpw2n3CnZotIbK6o=; h=date:references:in-reply-to:
	subject:to:from; d=the-brannons.com; b=aO/blJUJgDajNUJqP8dT/XzkER7W/ks
	ZTXwYamQlEM8tx31FOjdeGr1n6Qd5+IGMu0iLJXZ6HUauLt6jL94TpByQNute//sv+uyPh
	BGNmbgz211H+Va4UJSQ0G8DKQdFkyvetvHsftQUiokwIIOQgCyG52BMgk99VI0QZJS4vSI
	=
Received: 
	by hurricane.the-brannons.com (OpenSMTPD) with ESMTPSA id 4de54a5e (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO) auth=yes user=chris
	for <speakup@linux-speakup.org>;
	Fri, 26 Jan 2024 17:43:35 +0000 (UTC)
From: Chris Brannon <chris@the-brannons.com>
To: speakup@linux-speakup.org
Subject: Re: Thoughts on the website and domain?
In-Reply-To: <7b6c8aad-7ff9-e768-cc91-fd31b8c886d7@reisers.ca> (Kirk Reiser's
	message of "Tue, 16 Jan 2024 12:28:37 -0500 (EST)")
References: <7b6c8aad-7ff9-e768-cc91-fd31b8c886d7@reisers.ca>
Autocrypt: addr=chris@the-brannons.com; prefer-encrypt=mutual; keydata=
 mDMEX37pCBYJKwYBBAHaRw8BAQdASkFrVm/MHGNpj7Oa+nq4b7eBg5LX5qnvS6ojH04ZE9+0LENo
 cmlzdG9waGVyIEJyYW5ub24gPGNocmlzQHRoZS1icmFubm9ucy5jb20+iJAEExYIADgWIQTFfzWT
 HzF7+QWPg09oJ1i8YNj4egUCX37pCAIbAwULCQgHAgYVCgkICwIEFgIDAQIeAQIXgAAKCRBoJ1i8
 YNj4esVsAQCJXDxhj5gZjcrNMmSH6Z+X5RDdbvsTRvS5wwQXM3g4kAEAjOrdx/fvZDiKL8dylDhU
 YUVVSkwWeOD2UtmYjm/QtwG4OARffukIEgorBgEEAZdVAQUBAQdAOMaQorDR8QUdM34/Q9mUyBvS
 9WFK0Mb76dHyNkERx2kDAQgHiHgEGBYIACAWIQTFfzWTHzF7+QWPg09oJ1i8YNj4egUCX37pCAIb
 DAAKCRBoJ1i8YNj4eo/8AQC4AX6NMv65KQQU7s95T/1Y4E+Z7KTbvhKJeSjdDfj88AEA/qzPnDvl
 dLmqqNTqsfZCK81teOxSoNhRlhWcQ8QQ/wY=
Date: Fri, 26 Jan 2024 09:43:33 -0800
Message-ID: <87jznwhtx6.fsf@the-brannons.com>
User-Agent: Gnus/5.13 (Gnus v5.13)
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Kirk Reiser <kirk@reisers.ca> writes:

> Hello everybody: The linux-speakup.org domain needs to be renewed in
> the next few weeks and so I figured I should ask for peoples opinions
> on what to do.

We've talked about this off-list, but it's worth repeating in public.
Most of the site is basically of historical relevance at this point, and
little else.  Kernel docs may need to be updated to remove dangling
references to linux-speakup.org if it goes away.  Personally, I don't
see any strong reason to keep it, but I don't care much either way.

Deedra just yelled at me from the other room to say that she'd vote for
keeping it.

-- Chris

