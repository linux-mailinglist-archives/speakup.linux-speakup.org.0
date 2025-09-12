Return-Path: <speakup+bounces-1334-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 7D487B53FE3
	for <lists+speakup@lfdr.de>; Fri, 12 Sep 2025 03:28:50 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; secure) header.d=posteo.com.br header.i=@posteo.com.br header.a=rsa-sha256 header.s=2017 header.b=Fet4HxiN;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 800B3382BAB; Thu, 11 Sep 2025 21:28:49 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 603FC382AE5
	for <lists+speakup@lfdr.de>; Thu, 11 Sep 2025 21:28:49 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 5F703382AE5; Thu, 11 Sep 2025 21:28:42 -0400 (EDT)
Received: from mout01.posteo.de (mout01.posteo.de [185.67.36.65])
	by befuddled.reisers.ca (Postfix) with ESMTPS id F301F382AE0
	for <speakup@linux-speakup.org>; Thu, 11 Sep 2025 21:28:40 -0400 (EDT)
Received: from submission (posteo.de [185.67.36.169]) 
	by mout01.posteo.de (Postfix) with ESMTPS id 24409240027
	for <speakup@linux-speakup.org>; Fri, 12 Sep 2025 03:28:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=posteo.com.br;
	s=2017; t=1757640518;
	bh=COO7TdtqNTj1DUI1/mPZjjgV3Z1iJQc7o93qwxaC7eY=;
	h=Message-ID:Date:MIME-Version:Subject:To:From:Content-Type:
	 Content-Transfer-Encoding:From;
	b=Fet4HxiNw4/hqXusaQuRjGCwUzTrBVpE5Fh00L/uI3Fir0bI8fAyfVOMnyxh0txXt
	 RkgughweEOESJnKFycH4oW0Z7oEWcpKgE2MWqJOjJusW0SK7/mluq0jsbTCXLD+USv
	 f05+18aWTTlesN6s5FwVwrebwlfdfWuaitSIgUdrcZdgqm5w/CWUNDTRrfcw022OMc
	 0zsiSt/SCpbRt4D04lNPRtVqBGlpbAYIAa/4d+rv01zsF/SDuy7R2zlruN/4IrcWZu
	 oQxxfAxPortnQxgP8fa3YxmJwlGVcqcZhIF88MqXdMGAZFfqcLjM/ZmDpWKWzzZBf+
	 0vFDQ94ORhB5w==
Received: from customer (localhost [127.0.0.1])
	by submission (posteo.de) with ESMTPSA id 4cNGz82vP9z9rxR
	for <speakup@linux-speakup.org>; Fri, 12 Sep 2025 03:28:35 +0200 (CEST)
Message-ID: <579c5d9b-5ba1-4029-982a-01295fea3a61@posteo.com.br>
Date: Fri, 12 Sep 2025 01:28:36 +0000
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Subject: Re: "your browser is not supported anymore" both lynx and elinks,
 what now?
To: speakup@linux-speakup.org
References: <202509111603.58BG3W3p018143@nfbcal.org>
 <7a04c6dd-c761-4445-b53a-3c4525cf2a87@crosslink.net>
Content-Language: pt-BR
From: Cleverson Casarin Uliana <clul+speakup@posteo.com.br>
In-Reply-To: <7a04c6dd-c761-4445-b53a-3c4525cf2a87@crosslink.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi all, what about Edbrowse? It claims to support Javascript, but the 
dev team is small; I have no idea if they are able to keep up with the 
modern web.

Regards,
Cleverson


