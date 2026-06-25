Return-Path: <speakup+bounces-1635-lists+speakup=lfdr.de@linux-speakup.org>
Delivered-To: lists+speakup@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id qvJxEE2SPGoQpggAu9opvQ
	(envelope-from <speakup+bounces-1635-lists+speakup=lfdr.de@linux-speakup.org>)
	for <lists+speakup@lfdr.de>; Thu, 25 Jun 2026 04:28:29 +0200
X-Original-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id AF99B6C2636
	for <lists+speakup@lfdr.de>; Thu, 25 Jun 2026 04:28:28 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=reisers.ca header.s=befuddled header.b=lPOG6HU2;
	dkim=pass header.d=reisers.ca header.s=befuddled header.b=lPOG6HU2;
	dkim=pass header.d=reisers.ca header.s=befuddled header.b=UCZyB6in;
	dkim=pass header.d=reisers.ca header.s=befuddled header.b=HulIXtZx;
	spf=none (mail.lfdr.de: domain of "speakup+bounces-1635-lists+speakup=lfdr.de@linux-speakup.org" has no SPF policy when checking 206.248.184.127) smtp.mailfrom="speakup+bounces-1635-lists+speakup=lfdr.de@linux-speakup.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1782354508;
	bh=ujKslY56IvggbIqsgQKP4pYg7lq9IM/yeduHanFQLr8=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Post:List-Help:List-Subscribe:From;
	b=lPOG6HU2a81Ak0odW9X9xUHMegPGuP8PwI2SYwkJWEzgmF9Aau4nuQhugjt3a6fjA
	 fbxFXHeOKvP0yccpl+KPAW/c8i3DsZutZFxU7Xr07dWBfmGoeI3hVDd3PbjSa035do
	 hZQa+thA/lSCjAGTEwZ7S9P5+htNYhm2V7J7a82E=
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 2CC11382694; Wed, 24 Jun 2026 22:28:28 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1782354508;
	bh=ujKslY56IvggbIqsgQKP4pYg7lq9IM/yeduHanFQLr8=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Post:List-Help:List-Subscribe:From;
	b=lPOG6HU2a81Ak0odW9X9xUHMegPGuP8PwI2SYwkJWEzgmF9Aau4nuQhugjt3a6fjA
	 fbxFXHeOKvP0yccpl+KPAW/c8i3DsZutZFxU7Xr07dWBfmGoeI3hVDd3PbjSa035do
	 hZQa+thA/lSCjAGTEwZ7S9P5+htNYhm2V7J7a82E=
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 0E3DE38268C
	for <lists+speakup@lfdr.de>; Wed, 24 Jun 2026 22:28:28 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1782354502;
	bh=ujKslY56IvggbIqsgQKP4pYg7lq9IM/yeduHanFQLr8=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:From;
	b=UCZyB6inXtsEx0G5xccOym5446UoU2iRK/X+B/BQrBcMabOm00IeAUPDg2O9uBKyr
	 lHC34VmknvhSwzmCVz8x5nq//6d5yh1kFCDvKh3rvnZX+umVNQPvkfoeBszKgC2yhx
	 RF45ieIcfYVeJY13oAHMwn1tosRlSufTs8BcDdho=
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 0FC7038267F; Wed, 24 Jun 2026 22:28:22 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1782354501;
	bh=ujKslY56IvggbIqsgQKP4pYg7lq9IM/yeduHanFQLr8=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:From;
	b=HulIXtZxgtMVouQNwcZ1dZhWowAkwbqncg5mKyC/Me1qpZLJtG7A2FeyWA/EaNBZk
	 rKVG+oZ85slzRIiKh3RCoLboydy765I3BAdLNf3dTOCuxKj7O0TlSH1BoPHcl6MBL2
	 CtwLRk5r3fBs98Ofpo4M+wGsggmvJAmoyUEXTp0k=
Received: from localhost (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTPS id D69A238263F;
	Wed, 24 Jun 2026 22:28:21 -0400 (EDT)
Date: Wed, 24 Jun 2026 22:28:21 -0400 (EDT)
From: Kirk Reiser <kirk@reisers.ca>
To: Karen Lewellen <klewellen@shellworld.net>
cc: Chime Hart <chime@hubert-humphrey.com>, Georgina Joyce <gena@m0ebp.uk>, 
    "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Social media from the terminal
In-Reply-To: <Pine.LNX.4.64.2606242140570.1067145@users.shellworld.net>
Message-ID: <bff0ad58-a2a0-a527-7dfa-85b551b50d79@reisers.ca>
References: <D7D21247-9059-4643-85A4-BEF006828EDA@m0ebp.uk> <86406e85-fa15-f55c-68c1-ab2067baf81b@hubert-humphrey.com> <Pine.LNX.4.64.2606241739550.1059219@users.shellworld.net> <86a16937-fe97-db63-83df-bba4aa850258@reisers.ca>
 <Pine.LNX.4.64.2606242140570.1067145@users.shellworld.net>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux." <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII; format=flowed
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.39 / 15.00];
	R_DKIM_ALLOW(-0.20)[reisers.ca:s=befuddled];
	MAILLIST(-0.18)[generic];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_NO_TLS_LAST(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	TO_DN_ALL(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[reisers.ca];
	FORGED_RECIPIENTS(0.00)[m:klewellen@shellworld.net,m:chime@hubert-humphrey.com,m:gena@m0ebp.uk,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[kirk@reisers.ca,speakup@linux-speakup.org];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-1635-lists,speakup=lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kirk@reisers.ca,speakup@linux-speakup.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[reisers.ca:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[speakup];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:5645, ipnet:206.248.128.0/18, country:CA];
	DBL_BLOCKED_OPENRESOLVER(0.00)[reisers.ca:dkim,reisers.ca:mid,reisers.ca:from_mime,linux-speakup.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: AF99B6C2636

I don't need to share a link because it is part of all new emacs
installations. If you are not familiar with emacs then it probably
isn't worth it because it's a large learning curve. It is a very
powerful editor and like most complicated applications it takes a bit
of work to learn it.

   Kirk

On Wed, 24 Jun 2026, Karen Lewellen wrote:

> ..someone actually named a tool eww?
> would you mind sharing a link?
> I have a mac running high sierra, so am interested in alternatives.
> besides I want to read how they market that one smiles.
> Kare
>
>
>
> On Wed, 24 Jun 2026, Kirk Reiser wrote:
>
>> I use the emacs browser 'eww' for mastodon and twitter although I
>> stopped using twitter. I think there may be clients for others but I'm
>> not sure of that.
>>
>>  kirk
>> 
>> 
>> On Wed, 24 Jun 2026, Karen Lewellen wrote:
>>
>>>  In allot of cases companies have removed access for third party
>>>  applications. Places like reddit and twitter for example.
>>>  It is my understanding that Facebook likewise removed access to the 
>>> mobile
>>>  platform, impacting many, not just terminal users.
>>>  Kare
>>> 
>>> 
>>> 
>>> 
>> 
>> 
>

