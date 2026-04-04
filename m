Return-Path: <speakup+bounces-1572-lists+speakup=lfdr.de@linux-speakup.org>
Delivered-To: lists+speakup@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id V/s2CqVs0WnqJQcAu9opvQ
	(envelope-from <speakup+bounces-1572-lists+speakup=lfdr.de@linux-speakup.org>)
	for <lists+speakup@lfdr.de>; Sat, 04 Apr 2026 21:55:17 +0200
X-Original-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 145B539C560
	for <lists+speakup@lfdr.de>; Sat, 04 Apr 2026 21:55:14 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=dottywood.org header.i=@dottywood.org header.a=rsa-sha256 header.s=2.tigertech header.b=kjo4BTU/;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 0C76538260C; Sat, 04 Apr 2026 15:55:13 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id E0AB138236C
	for <lists+speakup@lfdr.de>; Sat, 04 Apr 2026 15:55:12 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id C27973818F6; Sat, 04 Apr 2026 15:55:06 -0400 (EDT)
Received: from mailb2.tigertech.net (mailb2.tigertech.net [208.80.4.154])
	by befuddled.reisers.ca (Postfix) with ESMTPS id A3ED8381832
	for <speakup@linux-speakup.org>; Sat, 04 Apr 2026 15:55:05 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dottywood.org;
	s=2.tigertech; t=1775332502;
	bh=ldEDsTOnkopQUB3Bgl1P73gs3N4m6gA6JxOJMhAfFAE=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=kjo4BTU/iBtHlI4prdSltL/eErf2f8YsVrd8ogpe9l8S00CUVy4TiWy6SJRrmHgUX
	 Da3MsZZYHGAuTBRZ94r1+uXhHxsPK8PfdJ8RUcPST7egt8Gu8/OB/V+rw4XUwdBtyt
	 ShF8C/GH0R2we6NqrpR/Yu/9C/1rBtKtsh/VAosk=
Received: from localhost (localhost [127.0.0.1])
	by mailb2.tigertech.net (Postfix) with ESMTP id 4fp5sf049bz22pPl
	for <speakup@linux-speakup.org>; Sat,  4 Apr 2026 12:55:02 -0700 (PDT)
X-Quarantine-ID: <JQVe7CpG4czv>
X-Virus-Scanned: Debian amavis at b2.tigertech.net
Received: from [192.168.1.22] (unknown [204.111.106.143])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mailb2.tigertech.net (Postfix) with ESMTPSA id 4fp5sd0Dnvz22pPf
	for <speakup@linux-speakup.org>; Sat,  4 Apr 2026 12:54:59 -0700 (PDT)
Message-ID: <5c633a16-5b86-490c-a617-897c97c3c9d0@dottywood.org>
Date: Sat, 4 Apr 2026 15:54:57 -0400
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux." <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Rewriting the docs
To: speakup@linux-speakup.org
References: <f73d1414-0f07-471e-a160-4b40eb0346e6@math.wisc.edu>
Content-Language: en-US
From: Aaron Chantrill <aaron.chantrill@dottywood.org>
In-Reply-To: <f73d1414-0f07-471e-a160-4b40eb0346e6@math.wisc.edu>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5
X-Spamd-Result: default: False [-0.89 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[dottywood.org,none];
	R_DKIM_ALLOW(-0.20)[dottywood.org:s=2.tigertech];
	MAILLIST(-0.18)[generic];
	RCVD_NO_TLS_LAST(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_RCPT(0.00)[speakup];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:5645, ipnet:206.248.128.0/18, country:CA];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	R_SPF_NA(0.00)[no SPF record];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aaron.chantrill@dottywood.org,speakup@linux-speakup.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	TO_DN_NONE(0.00)[];
	TAGGED_FROM(0.00)[bounces-1572-lists,speakup=lfdr.de];
	DKIM_TRACE(0.00)[dottywood.org:+]
X-Rspamd-Queue-Id: 145B539C560
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 4/4/26 13:54, John G. Heim wrote:
> Now that I'm pretty much done with my hardware synth project, I 
> thought I'd get started rewriting the Speakup documentation. I decided 
> to start with the FAQ, which if you believe the date on the FAQ 
> itself, is 24 years old.
>
> The FAQ doesn't even mention software speech so I need to add that. 
> But one thing I am unclear on is the relationship between espeakup and 
> speechd-up. I understand the technical differences but what I am 
> unclear on is whether speechd-up has made espeakup obsolete. 
> Obviously, you wouldn't use both but is one preferred over the other? 
> Maybe the FAQ should take a neutral position and just explain that 
> either can be used.
>
> PS: A note on the hardware synth project -- I am working on getting my 
> package into Debian so it would then automatically be included in 
> Raspberry Pi OS. Once I get that done, I'll get going on getting the 
> kernel to recognize hardware speech synths, including my hardware 
> synth emulator.
>
>
Congratulations again. Updated documentation for speakup would 
definitely be appreciated.

My understanding is that there are two paths to software speech in the 
TTY terminals. Either you use espeakup which can only really use espeak 
or espeak-ng for output or you can use speechd-up which uses 
speech-dispatcher which can then connect to a wide variety of TTS 
engines. This is what I'm interested in as I want to use more modern TTS 
engines in the terminal (especially piper), but speechd-up is very old 
and has not accepted a pull request in 18 years, at least on the 
https://github.com/brailcom/speechd-up repository. On the 
https://github.com/williamh/speechd-up repository that seems to be 
preferred by Debian, it's still been 16 years since there was a merge, 
and when I built it recently for Debian Trixie I had to merge in two of 
Samuel Thibault's unmerged pull requests to get it to build.

I'm currently working on adding a systemd service file for speechd-up, 
but haven't actually been able to get it to work yet (no error messages, 
no audio, log level set to 5, no messages indicating it's aware of 
anything I'm doing in TTY), so I am working on analyzing the code (the 
williamh repository) as I have time.

I have been able to get espeakup working, but only if I don't have 
pipewire installed at all, even I try to use it using the old ALSA 
interface. My ultimate goal is to understand how to get 
speech-dispatcher running for both speakup in the terminal via 
speechd-up and orca on the desktop (I'm using MATE) at the same time.

Anyway, I'm happy to collaborate as I'm really trying to wrap my head 
around all of this. It feels like it shouldn't be this difficult.


