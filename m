Return-Path: <speakup+bounces-389-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id A480E4F19D7
	for <lists+speakup@lfdr.de>; Mon,  4 Apr 2022 20:43:54 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; secure) header.d=pcdesk.net header.i=@pcdesk.net header.a=rsa-sha256 header.s=pcdesk20210713 header.b=o3qC/Y2g;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 45F36380D4C; Mon,  4 Apr 2022 14:43:54 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 3086D3809A3
	for <lists+speakup@lfdr.de>; Mon,  4 Apr 2022 14:43:54 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 1AF4B3809A3; Mon,  4 Apr 2022 14:43:48 -0400 (EDT)
Received: from mail.pcdesk.net (mail.pcdesk.net [69.28.94.151])
	by befuddled.reisers.ca (Postfix) with UTF8SMTPS id 0568E38092A
	for <speakup@linux-speakup.org>; Mon,  4 Apr 2022 14:43:47 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pcdesk.net;
	s=pcdesk20210713; t=1649097827;
	bh=d2No2XOZLtVb5jSsiwzQmV61F9fhF9VNvrJtBhOq2kA=; l=1343;
	h=Subject:To:Cc:References:From:Date:In-Reply-To;
	b=o3qC/Y2gPf2nR4NFEFr19Ug5Yggce6VcrSiL1IstvmABSCuWU7lqU4XuBOe41sklr
	 pQIm2S+pNbWE1J9qd3Ges44AGMajmdu7dCGo4r89yJJtzPFOr4Rr6IwaUVQvZUoP8g
	 CdN8rGKB9XH+Qy18q4BvkCZOoZ+5BRD33znV83h/xCroReS2tAlrF+HdEWaHCDEp3+
	 S4RJYpv0l0SEnsQEzTnpL/Q+/yKaCNxNbBpB83+ZTiLM9jKxOogkJWAW48tpTdy5Tr
	 TvRMFCJ1DVNLFEJw0//4G1vIlyvdqdH/eYIVp6iBNbkRH4pjyWBd6OhnOUjcWXgGXu
	 sQoYFlHtObTHA==
Original-Subject: Re: How Can I Switch Synthesizers on the Fly?
Original-From: "Joseph C. Lininger" <joe@pcdesk.net>
Original-Cc: Gregory Nowak <greg@gregn.net>, speakup@linux-speakup.org
Subject: Re: How Can I Switch Synthesizers on the Fly?
To: Chime Hart <chime@hubert-humphrey.com>
Cc: Gregory Nowak <greg@gregn.net>, speakup@linux-speakup.org
References: <1dc619bf-ba8a-47b3-2c85-7dff6e27086@hubert-humphrey.com>
 <Yko9zLikCNY1qcDX@gregn.net>
 <4ce83a8d-a0a1-3ef8-e8df-c9881198622@hubert-humphrey.com>
 <e4b20df5-5211-efaa-5937-ed214d1ae35e@pcdesk.net>
 <7da3e7da-321-40cd-5d66-3761b9143e3@hubert-humphrey.com>
From: "Joseph C. Lininger" <joe@pcdesk.net>
Message-ID: <59e80e78-d905-4e01-3a0f-e85f039fb53a@pcdesk.net>
Date: Mon, 4 Apr 2022 14:43:46 -0400
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.6.0
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
In-Reply-To: <7da3e7da-321-40cd-5d66-3761b9143e3@hubert-humphrey.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

My explanation of how to fix it was slightly incorrect actually. I told 
you to run sudo under sudo, basically, which is not necessary. I've 
provided what should be a full working script below. Try this script. It 
won't matter that you're running this under tcsh, as long as you have a 
working bash on your system. I've set it up to automatically execute bash.

-- begin script --
#!/bin/bash
# Force a couple of environment variables to sane values for security 
reasons
PATH=/bin:/usr/bin:/usr/local/bin:/sbin:/usr/sbin:/usr/local/sbin
IFS=" \t\n"
# Change the synth
echo "soft" > /sys/accessibility/speakup/synth
-- end script --

You could also add lines to the script to run whatever support programs 
you need to make the synthesizer work once you've switched it in 
Speakup. Don't add "sudo" to any lines in this script since it's already 
running as root. You'll run the script itself using sudo. For example, 
if you were to name the script enablesoft, and it were in your path, 
you'd type this.

sudo enablesoft

Assuming the rest of the parts are working, that should do it for you.

--
Joe



On 4/4/2022 2:17 PM, Chime Hart wrote:
> Thank you Joe for a `wonderful explainer-and-I think you are most 
> likely correct. We had similar results running an inflection script 
> for the DecTalk.
> Chime
>


