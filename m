Return-Path: <speakup+bounces-513-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id D61FF59167A
	for <lists+speakup@lfdr.de>; Fri, 12 Aug 2022 22:57:07 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=pobox.com header.i=@pobox.com header.a=rsa-sha256 header.s=sasl header.b=OewP4k0Y;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 7D5653819B1; Fri, 12 Aug 2022 16:57:07 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 67F0B38190D
	for <lists+speakup@lfdr.de>; Fri, 12 Aug 2022 16:57:07 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id C1FFE381912; Fri, 12 Aug 2022 16:56:59 -0400 (EDT)
Received: from pb-smtp2.pobox.com (pb-smtp2.pobox.com [64.147.108.71])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 96D1F381906
	for <speakup@linux-speakup.org>; Fri, 12 Aug 2022 16:56:59 -0400 (EDT)
Received: from pb-smtp2.pobox.com (unknown [127.0.0.1])
	by pb-smtp2.pobox.com (Postfix) with ESMTP id 28C3D13DA5D;
	Fri, 12 Aug 2022 16:56:58 -0400 (EDT)
	(envelope-from mattcampbell@pobox.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=pobox.com; h=message-id
	:date:mime-version:subject:to:cc:references:from:in-reply-to
	:content-type:content-transfer-encoding; s=sasl; bh=Ht4+KEn52Dr7
	1rEJX1a8/3zmP5DLx4p59+6lnuWUb/k=; b=OewP4k0YZTlmhceH+lq2++t/se6p
	pCRgdgKgK2+OxG000HRJOX7XBpy4GHtb8RGC5stnDcvbj57gO04F/FZYU2PWvl5Y
	lK74RDRm/86DJyiqMLo2nRCJwf4cgFqq5lO2KpIQx7xXQOrtHReCXd5nv2PexYoH
	yYp5KSZ6Les1E3w=
Received: from pb-smtp2.nyi.icgroup.com (unknown [127.0.0.1])
	by pb-smtp2.pobox.com (Postfix) with ESMTP id 1F5AB13DA5C;
	Fri, 12 Aug 2022 16:56:58 -0400 (EDT)
	(envelope-from mattcampbell@pobox.com)
Received: from [192.168.0.161] (unknown [68.102.201.97])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by pb-smtp2.pobox.com (Postfix) with ESMTPSA id 5E22813DA5B;
	Fri, 12 Aug 2022 16:56:57 -0400 (EDT)
	(envelope-from mattcampbell@pobox.com)
Message-ID: <3b34c003-8772-fa96-0679-fa1d180a38d1@pobox.com>
Date: Fri, 12 Aug 2022 15:56:56 -0500
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
Subject: Re: getting audio for Orca and Speakup or Fenrir
Content-Language: en-US
To: K0LNY_Glenn <glenn@ervin.email>, Chime Hart <chime@hubert-humphrey.com>
Cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <021801d8ae89$220560c0$80ffa8c0@Win7VM>
 <eb84963a-90e0-c24c-4215-4d0dde3390d0@hubert-humphrey.com>
 <021d01d8ae8c$39e82800$80ffa8c0@Win7VM>
 <8295e54b-fd16-c53f-f3f7-e9a09c7a62c6@pobox.com>
 <022101d8ae8d$31446fa0$80ffa8c0@Win7VM>
From: Matt Campbell <mattcampbell@pobox.com>
In-Reply-To: <022101d8ae8d$31446fa0$80ffa8c0@Win7VM>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Pobox-Relay-ID:
 4DBABC1A-1A81-11ED-AF43-CB998F0A682E-07281746!pb-smtp2.pobox.com
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

There unfortunately can't be a single command that always works for 
unmuting, for two reasons. First, the names of the volume controls vary 
depending on the sound hardware and driver. Second, there's no single 
volume that's appropriate for all sound devices. If you set everything 
to 100%, you may well end up with a volume that's dangerously loud. So 
it always takes trial and error, starting with simply running the amixer 
command with no arguments to find out the available controls and what 
they're set to. This is an inconvenient but unavoidable aspect of using 
a DIY system like Linux on a single-board computer, as opposed to a 
pre-made, integrated platform where everything is tested and tuned by a 
single vendor.

Matt


