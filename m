Return-Path: <speakup+bounces-504-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id D7AC25913FC
	for <lists+speakup@lfdr.de>; Fri, 12 Aug 2022 18:38:34 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=pobox.com header.i=@pobox.com header.a=rsa-sha256 header.s=sasl header.b=QJSsKI6r;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 7FB9638376D; Fri, 12 Aug 2022 12:38:34 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 5EA36381900
	for <lists+speakup@lfdr.de>; Fri, 12 Aug 2022 12:38:34 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 0FDB03809FF; Fri, 12 Aug 2022 12:38:27 -0400 (EDT)
Received: from pb-smtp2.pobox.com (pb-smtp2.pobox.com [64.147.108.71])
	by befuddled.reisers.ca (Postfix) with ESMTPS id D344D38095E
	for <speakup@linux-speakup.org>; Fri, 12 Aug 2022 12:38:26 -0400 (EDT)
Received: from pb-smtp2.pobox.com (unknown [127.0.0.1])
	by pb-smtp2.pobox.com (Postfix) with ESMTP id 75AE813B120;
	Fri, 12 Aug 2022 12:38:26 -0400 (EDT)
	(envelope-from mattcampbell@pobox.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=pobox.com; h=message-id
	:date:mime-version:subject:to:references:from:in-reply-to
	:content-type:content-transfer-encoding; s=sasl; bh=3PUeXi+5TWJY
	XrbDh4p2j5jDUacYIxVYEcVzRs/CL44=; b=QJSsKI6rz/4rf8cKXW2Z2gg8n58n
	8h7gkavoWOOwgud97tgmdjhXX/mBX3MS+j/VRyNdodRB/ps1b15ov6xWhe2GZKbF
	Nwe66wysZm0sA1hOkXPUmCt1kv1TIlcYjgHRElu+nQEaN+X1CC1vUJOqQQpRNDYT
	7/YOyqXXQzzuoV0=
Received: from pb-smtp2.nyi.icgroup.com (unknown [127.0.0.1])
	by pb-smtp2.pobox.com (Postfix) with ESMTP id 6E14313B11F;
	Fri, 12 Aug 2022 12:38:26 -0400 (EDT)
	(envelope-from mattcampbell@pobox.com)
Received: from [192.168.0.161] (unknown [68.102.201.97])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by pb-smtp2.pobox.com (Postfix) with ESMTPSA id CB3FB13B11E;
	Fri, 12 Aug 2022 12:38:25 -0400 (EDT)
	(envelope-from mattcampbell@pobox.com)
Message-ID: <f60cc867-9ef2-3e09-6636-64d287056d79@pobox.com>
Date: Fri, 12 Aug 2022 11:38:24 -0500
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: help finding a folder
Content-Language: en-US
To: Jude DaShiell <jdashiel@panix.com>, K0LNY_Glenn <glenn@ervin.email>,
 "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <017b01d8adf2$e34cc620$80ffa8c0@Win7VM>
 <9650b2bb-79d-7624-123-34a12cf2fe5@panix.com>
 <01b601d8ae5c$e6c516d0$80ffa8c0@Win7VM>
 <ab3d87b6-e5e2-4e78-2a94-e316db83d1b4@panix.com>
From: Matt Campbell <mattcampbell@pobox.com>
In-Reply-To: <ab3d87b6-e5e2-4e78-2a94-e316db83d1b4@panix.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Pobox-Relay-ID:
 301E3868-1A5D-11ED-8446-CB998F0A682E-07281746!pb-smtp2.pobox.com
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Glenn, it sounds like you accidentally added a question mark to the end 
of your git clone command. If so, you can fix this by typing the 
following in the directory where you ran that command:

mv '?' RHVoice

Note the single quotes around the question mark.

Yes, building from source is sometimes a hassle. Fortunately, RHVoice is 
already packaged in Debian testing, so Armbian will get it sooner or 
later. I suppose someone could backport the packages and set up their 
own APT repo if they wanted to.

Hope this helps,
Matt


