Return-Path: <speakup+bounces-1570-lists+speakup=lfdr.de@linux-speakup.org>
Delivered-To: lists+speakup@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uGEmGq82vGl3uwIAu9opvQ
	(envelope-from <speakup+bounces-1570-lists+speakup=lfdr.de@linux-speakup.org>)
	for <lists+speakup@lfdr.de>; Thu, 19 Mar 2026 18:47:27 +0100
X-Original-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id BAE362D03F1
	for <lists+speakup@lfdr.de>; Thu, 19 Mar 2026 18:47:24 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; secure) header.d=posteo.com.br header.i=@posteo.com.br header.a=rsa-sha256 header.s=2017 header.b=bvbYRCWA;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 1BBE7382617; Thu, 19 Mar 2026 13:47:24 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id EF4633817BB
	for <lists+speakup@lfdr.de>; Thu, 19 Mar 2026 13:47:23 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id EF27E3817C1; Thu, 19 Mar 2026 13:47:17 -0400 (EDT)
Received: from mout02.posteo.de (mout02.posteo.de [185.67.36.66])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 02FD23817B5
	for <speakup@linux-speakup.org>; Thu, 19 Mar 2026 13:47:16 -0400 (EDT)
Received: from submission (posteo.de [185.67.36.169]) 
	by mout02.posteo.de (Postfix) with ESMTPS id BED13240101
	for <speakup@linux-speakup.org>; Thu, 19 Mar 2026 18:47:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=posteo.com.br;
	s=2017; t=1773942431;
	bh=yeeuzqvVmw/LqQbIGN8PZC9o4RpNrbvZjzH5vf7VRJ8=;
	h=Message-ID:Date:MIME-Version:Subject:To:From:Content-Type:
	 Content-Transfer-Encoding:From;
	b=bvbYRCWAkaZ4PsA2ZWut9oC1QB6inH63fKiMxWLy+2PpHOC4KJUYOA3QA4eGwQT7N
	 k+euZ+5F68PPNyKH2pMvKoczfGWUGH0RD+6kqR0Fc+dkkw2+uVVWB4IA+TQx3W6+bj
	 fFUFkKeNyqM1IsJlMUuEv5BT4ezOqlSfQkConChDJidpp418Zv8QxdbQzg8L5k4Sjh
	 4tikWbK1pCoCE1wKOZ6JKADaL0y1YAUEDWZyeuP+VXlk+JS5I1M5GLpv8Fbjmp5p9/
	 p2Y14aYtI/HZzJu51MJfpUrSu0RNZKuSJZtnFQPNJCE4ZeArkYBGnWSuuuAmWYBxZk
	 XABQyE7W6BSTg==
Received: from customer (localhost [127.0.0.1])
	by submission (posteo.de) with ESMTPSA id 4fcCnV46Z4z9rxB
	for <speakup@linux-speakup.org>; Thu, 19 Mar 2026 18:47:09 +0100 (CET)
Message-ID: <cbcadd2b-49bc-44a8-9fe6-f933aa346c9e@posteo.com.br>
Date: Thu, 19 Mar 2026 17:47:11 +0000
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux." <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Subject: Re: RPItalk hardware speech synth project and now off topic ramblings
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <f58445bf-9bef-466a-8c0d-2707001c9c84@math.wisc.edu>
 <65660797-d85c-488b-ae64-fdba06f3e5d4@raspberryvi.org>
 <36174ec4-fd0a-413e-96c7-13d6a5db1ffd@math.wisc.edu>
 <132CCCEE-C79E-4A3D-A040-A10C942CE1CF@carmickle.com>
 <3f6ad7ad-7801-47d5-ac88-42b07de3dccd@math.wisc.edu>
 <7B9BD87C-DAEC-4704-BC9A-E2BC3166B23F@carmickle.com>
Content-Language: pt-BR
From: Cleverson Casarin Uliana <clul+speakup@posteo.com.br>
In-Reply-To: <7B9BD87C-DAEC-4704-BC9A-E2BC3166B23F@carmickle.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5
X-Spamd-Result: default: False [-0.89 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[posteo.com.br,none];
	R_DKIM_ALLOW(-0.20)[posteo.com.br:s=2017];
	MAILLIST(-0.18)[generic];
	RCVD_NO_TLS_LAST(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[speakup];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:5645, ipnet:206.248.128.0/18, country:CA];
	NEURAL_HAM(-0.00)[-1.000];
	R_SPF_NA(0.00)[no SPF record];
	TO_DN_ALL(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clul@posteo.com.br,speakup@linux-speakup.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-1570-lists,speakup=lfdr.de,speakup];
	RCVD_COUNT_FIVE(0.00)[6];
	DKIM_TRACE(0.00)[posteo.com.br:+]
X-Rspamd-Queue-Id: BAE362D03F1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Frank, please where can I find more info on your application suite 
written in Lua? I'm always interested in alternative ecosystems, and Lua 
is quite a simple language.

Regards,
Cleverson


