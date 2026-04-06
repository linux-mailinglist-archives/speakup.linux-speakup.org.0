Return-Path: <speakup+bounces-1578-lists+speakup=lfdr.de@linux-speakup.org>
Delivered-To: lists+speakup@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0ObKKB/L02nomAcAu9opvQ
	(envelope-from <speakup+bounces-1578-lists+speakup=lfdr.de@linux-speakup.org>)
	for <lists+speakup@lfdr.de>; Mon, 06 Apr 2026 17:02:55 +0200
X-Original-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 396E33A47D5
	for <lists+speakup@lfdr.de>; Mon, 06 Apr 2026 17:02:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1775487770;
	bh=g6qmFUeI053sXUr3WKZHiJJ2Hn+fliKv9+Eoj00Zb/8=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Post:List-Help:
	 List-Subscribe:From;
	b=gMw8zjJJ7qFTSzZEDtUxfFKMoYPHaquDFzRl2egyhrMn30ERkdR/DF2vu/hKSYA2O
	 EpDf434O9Hy58J8FPc9Skj9cmqxVTz+4xU1D/wwVNFEyJPeljyFpVzrqlnhzxqC3rk
	 9NJZmi8aspb/YEeBb1lEvrDoG/zTIIKufMjB3hfw=
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id BF74A382604; Mon, 06 Apr 2026 11:02:50 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1775487770;
	bh=g6qmFUeI053sXUr3WKZHiJJ2Hn+fliKv9+Eoj00Zb/8=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Post:List-Help:
	 List-Subscribe:From;
	b=gMw8zjJJ7qFTSzZEDtUxfFKMoYPHaquDFzRl2egyhrMn30ERkdR/DF2vu/hKSYA2O
	 EpDf434O9Hy58J8FPc9Skj9cmqxVTz+4xU1D/wwVNFEyJPeljyFpVzrqlnhzxqC3rk
	 9NJZmi8aspb/YEeBb1lEvrDoG/zTIIKufMjB3hfw=
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id A1FF8381833
	for <lists+speakup@lfdr.de>; Mon, 06 Apr 2026 11:02:50 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1775487764;
	bh=g6qmFUeI053sXUr3WKZHiJJ2Hn+fliKv9+Eoj00Zb/8=;
	h=Date:From:To:Subject:From;
	b=Fos0c+NoKgOnYUiLJSdSeABNqtJNqTWTs6OiG/OOPqvDDDYeNYHXZv+WBf04OmgRU
	 1LZlsixhdhas+qOM5KJXv0j4MbKagq+beJFjyYsyyOED/lkJgq7Aj5/pDu0P+RG3cs
	 rAmDsEw1FCn6oFcFmaSf+jIVGL9dkmfm/X3UvAr4=
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id A0524381842; Mon, 06 Apr 2026 11:02:44 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1775487764;
	bh=g6qmFUeI053sXUr3WKZHiJJ2Hn+fliKv9+Eoj00Zb/8=;
	h=Date:From:To:Subject:From;
	b=Fos0c+NoKgOnYUiLJSdSeABNqtJNqTWTs6OiG/OOPqvDDDYeNYHXZv+WBf04OmgRU
	 1LZlsixhdhas+qOM5KJXv0j4MbKagq+beJFjyYsyyOED/lkJgq7Aj5/pDu0P+RG3cs
	 rAmDsEw1FCn6oFcFmaSf+jIVGL9dkmfm/X3UvAr4=
Received: from localhost (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 7EB7F381831
	for <speakup@linux-speakup.org>; Mon, 06 Apr 2026 11:02:44 -0400 (EDT)
Date: Mon, 6 Apr 2026 11:02:44 -0400 (EDT)
From: Kirk Reiser <kirk@reisers.ca>
To: speakup@linux-speakup.org
Subject: speechd-up
Message-ID: <550a035b-15a7-76c9-8cb0-169257a24146@reisers.ca>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux." <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5
X-Spamd-Result: default: False [-0.39 / 15.00];
	R_DKIM_ALLOW(-0.20)[reisers.ca:s=befuddled];
	MAILLIST(-0.18)[generic];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_NO_TLS_LAST(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_ONE(0.00)[1];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[reisers.ca];
	TAGGED_FROM(0.00)[bounces-1578-lists,speakup=lfdr.de];
	RBL_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[206.248.184.127:from];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[reisers.ca:+];
	R_SPF_NA(0.00)[no SPF record];
	MISSING_XM_UA(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kirk@reisers.ca,speakup@linux-speakup.org];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[speakup];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:5645, ipnet:206.248.128.0/18, country:CA];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux-speakup.org:url,befuddled.reisers.ca:helo,befuddled.reisers.ca:rdns]
X-Rspamd-Queue-Id: 396E33A47D5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hello folks: Thanks to Brandon McGinty who hunted down Chris Brannon's
latest work on speechd-up here is the most recent archive.

https://linux-speakup.org/speechd-up-ng.zip

Hopefully this will be useful to folks that would like bridging
speakup with speech-dispatcher.

Enjoy!

   Kirk


