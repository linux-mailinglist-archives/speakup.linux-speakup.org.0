Return-Path: <speakup+bounces-961-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 9E41273CCB2
	for <lists+speakup@lfdr.de>; Sat, 24 Jun 2023 22:49:25 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; secure) header.d=pcdesk.net header.i=@pcdesk.net header.a=rsa-sha256 header.s=pcdesk20210713 header.b=GoKX4p99;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 2520B38257A; Sat, 24 Jun 2023 16:49:25 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 03F193823A6
	for <lists+speakup@lfdr.de>; Sat, 24 Jun 2023 16:49:25 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id F0B8F3823A6; Sat, 24 Jun 2023 16:49:16 -0400 (EDT)
Received: from mail.pcdesk.net (mail.pcdesk.net [69.28.94.151])
	by befuddled.reisers.ca (Postfix) with ESMTPS id C9489382325
	for <speakup@linux-speakup.org>; Sat, 24 Jun 2023 16:49:16 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pcdesk.net;
	s=pcdesk20210713; t=1687639754;
	bh=apwgE1b7GAg2SX1mRanrtBi2z2kbM/soEUL55eaER1Q=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To;
	b=GoKX4p99BWPozF1nD34vEb21t20Fu0j19n9QmzHXJwiVd0EQMF0BhYcvQKPZYGNb9
	 zBPqoiAjmMqAvTFhWFTnlgWOBcqv37eso9CPpUbL19sVNZk8judGmk/xg/BgcADm3P
	 y4cx8K300LM7O3MR0VIoEJCoeF1J2vyHRj76OUCGcKQtvBkXcwvlVAOUzwb2ekLLvs
	 uLpeQt4wkxgkUwIwheJkHsM36ChGMKHW9cLXcfQFPNBoTWwDMd+YZEtb8mWNOqbjOV
	 0QnbfsE1q0svzI+S5mciuhOQIdTbsgxxBRuXRVOUwRWsvsAkoxlFMZG95talvYi3Xm
	 4h4kbMAMrErhA==
Original-Subject: Re: ot: dectalk internal drivers?
Author: Tyler Spivey <tspivey@pcdesk.net>
Original-Cc:
  "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Received: from [192.168.1.72] ([::ffff:99.199.165.46])
  (AUTH: LOGIN tspivey@pcdesk.net, TLS: TLSv1.3,256bits,TLS_AES_256_GCM_SHA384)
  by mail.pcdesk.net with ESMTPSA
  id 0000000000020015.00000000649756C9.0000E829; Sat, 24 Jun 2023 16:49:13 -0400
Message-ID: <c6d291a5-8c81-f306-6257-147e16933c4e@pcdesk.net>
Date: Sat, 24 Jun 2023 13:49:10 -0700
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: ot: dectalk internal drivers?
Content-Language: en-US
To: Karen Lewellen <klewellen@shellworld.net>
Cc:
  "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <Pine.LNX.4.64.2306241500460.774016@users.shellworld.net>
 <1486e800-a981-31bd-05da-86699f680285@pcdesk.net>
 <Pine.LNX.4.64.2306241601470.774699@users.shellworld.net>
From: Tyler Spivey <tspivey@pcdesk.net>
In-Reply-To: <Pine.LNX.4.64.2306241601470.774699@users.shellworld.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

I don't know. But it's safe enough to just load PC1 drivers, and if they 
don't work, try PC2.

On 6/24/2023 1:02 PM, Karen Lewellen wrote:
> How will I know which I have?
> and yes, just the dos drivers, using arctic busines vision.
> Sorry no spell check.
> 
> 
> 
> On Sat, 24 Jun 2023, Tyler Spivey wrote:
> 
>> You just need the dos drivers? My site has them for both the PC1 and PC2:
>> https://allinaccess.com/happ/
>>
>>
>> On 6/24/2023 12:02 PM, Karen Lewellen wrote:
>>>  Seeking these.
>>>  As it can run with speakup, anyone have them?
>>>  Thanks,
>>>  Karen
>>>
>>>
>>>
>>
>>

