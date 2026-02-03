Return-Path: <speakup+bounces-1547-lists+speakup=lfdr.de@linux-speakup.org>
Delivered-To: lists+speakup@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WMjMMLwqgmnFPwMAu9opvQ
	(envelope-from <speakup+bounces-1547-lists+speakup=lfdr.de@linux-speakup.org>)
	for <lists+speakup@lfdr.de>; Tue, 03 Feb 2026 18:05:00 +0100
X-Original-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 8FEB7DC78B
	for <lists+speakup@lfdr.de>; Tue, 03 Feb 2026 18:04:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1770138296;
	bh=CG+dd9kGLG3P51JBET6YnBOYj5/jdYAvb5AiLxW0Erw=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Post:List-Help:List-Subscribe:From;
	b=azr9j/31jLAfMNbxURIKC8gbeEZgxgmlGjN2IlvYpkeVgoiUuPaWrUrj1Eht4iDVE
	 FWyoQWmO1UAznbfnOcKljPovSnhsRLbjIQ4UP+X8E13FzSPafeJ/Odajw7ccabxFrB
	 FvcfqWSTdS9XJAfcmejpJj3SwaAV1plk66oFMwd0=
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 1ED5A38191F; Tue, 03 Feb 2026 12:04:56 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1770138296;
	bh=CG+dd9kGLG3P51JBET6YnBOYj5/jdYAvb5AiLxW0Erw=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Post:List-Help:List-Subscribe:From;
	b=azr9j/31jLAfMNbxURIKC8gbeEZgxgmlGjN2IlvYpkeVgoiUuPaWrUrj1Eht4iDVE
	 FWyoQWmO1UAznbfnOcKljPovSnhsRLbjIQ4UP+X8E13FzSPafeJ/Odajw7ccabxFrB
	 FvcfqWSTdS9XJAfcmejpJj3SwaAV1plk66oFMwd0=
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id EE98E381806
	for <lists+speakup@lfdr.de>; Tue, 03 Feb 2026 12:04:55 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1770138290;
	bh=CG+dd9kGLG3P51JBET6YnBOYj5/jdYAvb5AiLxW0Erw=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:From;
	b=Q5WUgoDqRP1yqOWSjylS+uLj+aPFtRni9Jx6xIQZ4G7sInNhn0vwEubYAs/bg8ydC
	 c+KB7Z3aTPvNaW619zyMdusPd5bWWO8h+arxHKicT7IHO2wGOZ7iipFTAY1L7Td+wF
	 tVTHzjMD0DEgbTOgEWwjxT6DKKkLHtnwMts+uGng=
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 21D0238189F; Tue, 03 Feb 2026 12:04:50 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1770138289;
	bh=CG+dd9kGLG3P51JBET6YnBOYj5/jdYAvb5AiLxW0Erw=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:From;
	b=MUHYKaevmskVQ82tvQxzjXv14Ayq5OZBDv2v/GH+7/VvwiJBFFlfXERcIzUu4sWQQ
	 2YgOn/rmU5heeK5Qi5SvKC/UzHcTLCVX7OXi3VpYNrDiGgVAo/xCJavc0NdN1QUras
	 8pXIomLsRASoyKRJk3FQMFpb7BO5gWtc6Z0AyB60=
Received: from localhost (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 5337838158A;
	Tue, 03 Feb 2026 12:04:49 -0500 (EST)
Date: Tue, 3 Feb 2026 12:04:49 -0500 (EST)
From: Kirk Reiser <kirk@reisers.ca>
To: Janina Sajka <janina@a11y.nyc>
cc: speakup@linux-speakup.org
Subject: Re: Mourning Didier Spaier
In-Reply-To: <aYH94ERshKQMrOIz@A11y.NYC>
Message-ID: <d5543615-3d43-6169-8ce4-18dba36d1b80@reisers.ca>
References: <aX-8TUlSXevxffOL@gregn.net> <aYH94ERshKQMrOIz@A11y.NYC>
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.39 / 15.00];
	R_DKIM_ALLOW(-0.20)[reisers.ca:s=befuddled];
	MAILLIST(-0.18)[generic];
	RCVD_NO_TLS_LAST(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWO(0.00)[2];
	R_SPF_NA(0.00)[no SPF record];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[reisers.ca];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-1547-lists,speakup=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	FROM_NEQ_ENVFROM(0.00)[kirk@reisers.ca,speakup@linux-speakup.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[reisers.ca:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:5645, ipnet:206.248.128.0/18, country:CA];
	TAGGED_RCPT(0.00)[speakup];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lwn.net:url,eu.org:email,gregn.net:url,www.eu.org:url,befuddled.reisers.ca:helo,befuddled.reisers.ca:rdns]
X-Rspamd-Queue-Id: 8FEB7DC78B
X-Rspamd-Action: no action

Yes, he will be missed. It's always hard to hear of ones passing when
you've known them forever. As time goes bye one misses more and more
folks.

   Kirk

On Tue, 3 Feb 2026, Janina Sajka wrote:

> I am saddened by this news. Didier was indeed a frequent contributor
> here. But perhaps more specifically, he was always quick to respond when
> people needed help, and to respond directly and graciously. I know I've
> benefited from his responses, and I will miss that grace because of his
> passing.
>
> Thanks for the news, Gregory.
>
> Warmly,
> Janina
>
> Gregory Nowak writes:
>> Hello all.
>>
>> Since Didier was a frequent contributor to this group, I thought I
>> would post this here.
>>
>> <https://lwn.net/Articles/1056384/>
>>
>> Greg
>>
>>
>> --
>> web site: http://www.gregn.net
>> gpg public key: http://www.gregn.net/pubkey.asc
>>
>> --
>> Free domains: http://www.eu.org/ or mail dns-manager@EU.org
>
>

