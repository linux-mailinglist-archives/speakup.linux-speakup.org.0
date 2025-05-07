Return-Path: <speakup+bounces-1289-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 19C0DAAED1E
	for <lists+speakup@lfdr.de>; Wed,  7 May 2025 22:36:24 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=t39smtp-sign001.email header.i=@t39smtp-sign001.email header.a=rsa-sha256 header.s=titan1 header.b=gdZYEqNn;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id B206938299B; Wed, 07 May 2025 16:36:22 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 9201438298D
	for <lists+speakup@lfdr.de>; Wed, 07 May 2025 16:36:22 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id ABCAF38298E; Wed, 07 May 2025 16:36:15 -0400 (EDT)
Received: from mail6.out.titan.email (mail6.out.titan.email [3.226.109.223])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 5B2E7382163
	for <speakup@linux-speakup.org>; Wed, 07 May 2025 16:36:15 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by smtp-out.flockmail.com (Postfix) with ESMTP id E72481002BB;
	Wed,  7 May 2025 20:36:12 +0000 (UTC)
DKIM-Signature: a=rsa-sha256; bh=LDHIAYQ2660isDy47OpyjrGUMjyMGDToX/m0BGRhNY0=;
	c=relaxed/relaxed; d=t39smtp-sign001.email;
	h=message-id:from:date:reply-to:to:references:subject:mime-version:from:to:subject:date:message-id:reply-to:references:cc:in-reply-to;
	q=dns/txt; s=titan1; t=1746650172; v=1;
	b=gdZYEqNnd83iI7bKvlZ187TsHyB2+uJW+fkg6kNoSNr5srfXvAAJEbMpozNwD1NlZakyxpHj
	dYwcLc6xJbdPI/H466fOSVbsqJoOfXw1quKa9sBiIyEnlw4HjfjWNBg8m1VBbMYpnIv/WTZB7qW
	Tsj4lt+pBrSUiVgnHEpuyDsA=
Received: from nucwin10 (unknown [140.228.165.201])
	by smtp-out.flockmail.com (Postfix) with ESMTPA id 862A410038A;
	Wed,  7 May 2025 20:36:12 +0000 (UTC)
Message-ID: <02af01dbbf8f$ac227710$01ffa8c0@nucwin10>
Reply-To: "K0LNY ??" <glenn@ervin.email>
Feedback-ID: :glenn@ervin.email:ervin.email:flockmailId
From: "K0LNY ??" <glenn@ervin.email>
To: "Jude DaShiell" <jdashiel@panix.com>,
	<speakup@linux-speakup.org>
References: <aBvBerA_sTfcYFKX@panix.com>
Subject: Re: pipe-viewer for youtube
Date: Wed, 7 May 2025 15:36:11 -0500
Organization: Home
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain;
	charset="iso-8859-1"
Content-Transfer-Encoding: 7bit
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2900.2180
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.2180
X-F-Verdict: SPFVALID
X-Titan-Src-Out: 1746650172792203868.20113.1055465858683255587@prod-use1-smtp-out1002.
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.4 cv=fZxXy1QF c=1 sm=1 tr=0 ts=681bc43c
	a=sfY17wZm961WJQkZ7MXrtw==:117 a=sfY17wZm961WJQkZ7MXrtw==:17
	a=8nJEP1OIZ-IA:10 a=MKtGQD3n3ToA:10 a=CEWIc4RMnpUA:10 a=VUfPOBp7AAAA:8
	a=qPKtzgQbAAAA:8 a=PPGIfrAzgZrua77OdW4A:9 a=wPNLvfGTeEIA:10
	a=h9p_k6br8ecoN9AbG9pA:22 a=OTAqJWGB1laLS8RTg9aS:22
	a=P3K-DvM3-jjlTNsN-mCd:22
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Where do we get pipe-viewer?
It is not in the Raspberry PI's repository.
Thanks.

Glenn
----- Original Message ----- 
From: "Jude DaShiell" <jdashiel@panix.com>
To: <speakup@linux-speakup.org>
Sent: Wednesday, May 7, 2025 3:24 PM
Subject: pipe-viewer for youtube


In the configuration file for pipe-viewer subscription files are specified.
The man page and pipe-viewer --tricks makes no mention of this and fails to
describe how to subscribe in pipe-viewer to a playing channel.  For those 
that
have no clue what I'm writing about, pipe-viewer once installed is a youtube
video player and other video services player that can be run from the 
command
line and it doesn't show youtube ads when playing either.
I don't have the developer's email address or I'd ask him how to do this and
perhaps would have posted his technique for doing this using pipe-viewer 
here.



