Return-Path: <speakup+bounces-1638-lists+speakup=lfdr.de@linux-speakup.org>
Delivered-To: lists+speakup@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Ky31BukOPWr0wQgAu9opvQ
	(envelope-from <speakup+bounces-1638-lists+speakup=lfdr.de@linux-speakup.org>)
	for <lists+speakup@lfdr.de>; Thu, 25 Jun 2026 13:20:09 +0200
X-Original-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id B635A6C50EF
	for <lists+speakup@lfdr.de>; Thu, 25 Jun 2026 13:20:07 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=posteo.com.br header.s=2017 header.b=GlEp15cE;
	spf=none (mail.lfdr.de: domain of "speakup+bounces-1638-lists+speakup=lfdr.de@linux-speakup.org" has no SPF policy when checking 206.248.184.127) smtp.mailfrom="speakup+bounces-1638-lists+speakup=lfdr.de@linux-speakup.org";
	dmarc=pass (policy=none) header.from=posteo.com.br
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 58A153826AF; Thu, 25 Jun 2026 07:20:06 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 3B3B4382678
	for <lists+speakup@lfdr.de>; Thu, 25 Jun 2026 07:20:06 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 39A26382681; Thu, 25 Jun 2026 07:20:00 -0400 (EDT)
Received: from mout02.posteo.de (mout02.posteo.de [185.67.36.66])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 41FBC382677
	for <speakup@linux-speakup.org>; Thu, 25 Jun 2026 07:19:58 -0400 (EDT)
Received: from submission (posteo.de [185.67.36.169]) 
	by mout02.posteo.de (Postfix) with ESMTPS id 2E97D240104
	for <speakup@linux-speakup.org>; Thu, 25 Jun 2026 13:19:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=posteo.com.br;
	s=2017; t=1782386394;
	bh=buWGRiY8nv4caD6BzR8glOTdU051akKXQRjB6BMKVHA=;
	h=Message-ID:Date:MIME-Version:Subject:To:From:Content-Type:
	 Content-Transfer-Encoding:From;
	b=GlEp15cEOHAKJSNkU7HjnkA3nx+Ero64QV4G+Qp74xXianU2MN3lQOrvHkG79VPjU
	 W3SaqRx/JpxuNqrun8RiX1raX3wSrPTx5BzFTvTJpT7Nw76HU8FGW8vUxKCw7Mq2CF
	 O0QiSQeJWcXqHh/9JSauwgRXD+xDLLVvwXQHj40YDMs5fv/+egcXQJW13H2vslirdL
	 YObHDzVPYLedBzLdsDOSghsoJ37t1oueA/7JjvH+FnVOOErQQDZvk3voAyYxCKc9Yh
	 rbM6ZaPrNeIGcLpSKAwrput6ChD/0hl7oF3p/1kfCfEB2XQt4DURFB6DenaSMG9hVr
	 xkY8Sg01WUjGA==
Received: from customer (localhost [127.0.0.1])
	by submission (posteo.de) with ESMTPSA id 4gmGYP3J1dz9rxM
	for <speakup@linux-speakup.org>; Thu, 25 Jun 2026 13:19:52 +0200 (CEST)
Message-ID: <ae8c28d7-fd0f-4804-a453-4283e1d3a1da@posteo.com.br>
Date: Thu, 25 Jun 2026 11:19:53 +0000
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux." <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Subject: Re: Social media from the terminal
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <D7D21247-9059-4643-85A4-BEF006828EDA@m0ebp.uk>
 <86406e85-fa15-f55c-68c1-ab2067baf81b@hubert-humphrey.com>
 <Pine.LNX.4.64.2606241739550.1059219@users.shellworld.net>
 <86a16937-fe97-db63-83df-bba4aa850258@reisers.ca>
 <Pine.LNX.4.64.2606242140570.1067145@users.shellworld.net>
 <bff0ad58-a2a0-a527-7dfa-85b551b50d79@reisers.ca>
 <ajyW14R8QeNUNquA@panix.com>
 <Pine.LNX.4.64.2606242311590.1072023@users.shellworld.net>
Content-Language: pt-BR
From: Cleverson Casarin Uliana <clul+speakup@posteo.com.br>
In-Reply-To: <Pine.LNX.4.64.2606242311590.1072023@users.shellworld.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.89 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[posteo.com.br,none];
	R_DKIM_ALLOW(-0.20)[posteo.com.br:s=2017];
	MAILLIST(-0.18)[generic];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_NO_TLS_LAST(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-1638-lists,speakup=lfdr.de,speakup];
	DKIM_TRACE(0.00)[posteo.com.br:+];
	TO_DN_ALL(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	RCPT_COUNT_ONE(0.00)[1];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:5645, ipnet:206.248.128.0/18, country:CA];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clul@posteo.com.br,speakup@linux-speakup.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[clul@posteo.com.br,speakup@linux-speakup.org];
	RCVD_COUNT_FIVE(0.00)[6];
	MID_RHS_MATCH_FROM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[speakup];
	DBL_BLOCKED_OPENRESOLVER(0.00)[chawan.net:url,linux-speakup.org:from_smtp,befuddled.reisers.ca:rdns,befuddled.reisers.ca:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B635A6C50EF

Regarding terminal browsers which support javascript, there is Chawan, see:
https://chawan.net/

There's also abrowse, which requires Chromium installed as a dependency, 
but it seems unmaintained, though it still works:
https://github.com/yplassiard/abrowser/

Cheers,
Cleverson


