Return-Path: <speakup+bounces-1641-lists+speakup=lfdr.de@linux-speakup.org>
Delivered-To: lists+speakup@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id q0n2MzHWPWrk6wgAu9opvQ
	(envelope-from <speakup+bounces-1641-lists+speakup=lfdr.de@linux-speakup.org>)
	for <lists+speakup@lfdr.de>; Fri, 26 Jun 2026 03:30:25 +0200
X-Original-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id E3A546C9708
	for <lists+speakup@lfdr.de>; Fri, 26 Jun 2026 03:30:24 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=dottywood.org header.s=2.tigertech header.b=VlfQ3iYk;
	spf=none (mail.lfdr.de: domain of "speakup+bounces-1641-lists+speakup=lfdr.de@linux-speakup.org" has no SPF policy when checking 206.248.184.127) smtp.mailfrom="speakup+bounces-1641-lists+speakup=lfdr.de@linux-speakup.org";
	dmarc=pass (policy=none) header.from=dottywood.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 211CE3826AF; Thu, 25 Jun 2026 21:30:23 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 007BF38269D
	for <lists+speakup@lfdr.de>; Thu, 25 Jun 2026 21:30:23 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 06D9C38269F; Thu, 25 Jun 2026 21:30:17 -0400 (EDT)
Received: from maila2.tigertech.net (maila2.tigertech.net [208.80.4.152])
	by befuddled.reisers.ca (Postfix) with ESMTPS id A6804382699
	for <speakup@linux-speakup.org>; Thu, 25 Jun 2026 21:30:16 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dottywood.org;
	s=2.tigertech; t=1782437413;
	bh=/7wjlH1OVaVW+pJW8g04+Ye5Q29mUQ5FR4UHojRDc+s=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=VlfQ3iYk6DM7g2vne7r+nF2OvKf7gcG8BkR5onuF8oNayLBa6PaoRneiE718s+ka8
	 d5ZlBL2uimWFGMjEamczNjqtycDTik7fAgBInMjkLj9e/E8ZCSa2P06Mblz6TOJny2
	 /ntKbW+Uv8zAxgCjCAjMRSF3o/2cWhkUvo2K8hFo=
Received: from localhost (localhost [127.0.0.1])
	by maila2.tigertech.net (Postfix) with ESMTP id 4gmdQY6vTbz6L7HZ
	for <speakup@linux-speakup.org>; Thu, 25 Jun 2026 18:30:13 -0700 (PDT)
X-Quarantine-ID: <XuxWTUuTD9hQ>
X-Virus-Scanned: Debian amavis at a2.tigertech.net
Received: from [192.168.1.14] (unknown [204.111.106.143])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by maila2.tigertech.net (Postfix) with ESMTPSA id 4gmdQY0fVXz6G7pJ
	for <speakup@linux-speakup.org>; Thu, 25 Jun 2026 18:30:12 -0700 (PDT)
Message-ID: <fb515784-5620-4e0d-ad2a-3350ff0b14ef@dottywood.org>
Date: Thu, 25 Jun 2026 21:30:08 -0400
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux." <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Speechd-up -- nice!
To: speakup@linux-speakup.org
References: <aa9f5623-dba3-4686-9b5c-8144e409425f@math.wisc.edu>
Content-Language: en-US
From: Aaron Chantrill <aaron.chantrill@dottywood.org>
In-Reply-To: <aa9f5623-dba3-4686-9b5c-8144e409425f@math.wisc.edu>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.89 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[dottywood.org,none];
	R_DKIM_ALLOW(-0.20)[dottywood.org:s=2.tigertech];
	MAILLIST(-0.18)[generic];
	RCVD_NO_TLS_LAST(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-1641-lists,speakup=lfdr.de];
	DKIM_TRACE(0.00)[dottywood.org:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[aaron.chantrill@dottywood.org,speakup@linux-speakup.org];
	RCPT_COUNT_ONE(0.00)[1];
	FORWARDED(0.00)[lists@lfdr.de];
	ASN(0.00)[asn:5645, ipnet:206.248.128.0/18, country:CA];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aaron.chantrill@dottywood.org,speakup@linux-speakup.org];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_FIVE(0.00)[6];
	ALIAS_RESOLVED(0.00)[];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[speakup];
	MID_RHS_MATCH_FROM(0.00)[];
	SUBJECT_ENDS_EXCLAIM(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E3A546C9708

On 6/22/26 23:45, John G. Heim wrote:
> Not much mention of speechd-up on this list over the years. Turns out 
> it's pretty nice. While working on rewriting the docs for Speakup, I 
> gave speechd-up a try and it works great. I'm  using that Voxin 
> default voice, Eloquence, at the command line. You can't do that with 
> espeakup.
>
> Speechd-up might be the way to go in  the future because voices that 
> are not resource hogs and are more human sounding are coming. Well, 
> they already exist except I don't know how to get them to work with 
> Speech Dispatcher. AFAIK, nobody  does. Like, I have a license for 
> Samantha but darned if I can get it to work with Speech Dispatcher.
>
> Anyway, once that kind of thing gets worked out, you'll be able to 
> have human sounding voices at the Linux command line.
>
I've been trying to get speechd-up to work on Debian Bookworm and never 
was able to. I have the log level set to 5 but the only message I ever 
get is "Speechd-speakup starts!" I understand that this is because it is 
trying to attach to my root speech-dispatcher 
(/var/run/speech-dispatcher/speechd.sock) while "sudo spd-say 'Hello'" 
just hangs for some reason (the speech-dispatcher log reports that the 
espeak-ng module initialized successfully, and the espeak-ng.log file is 
empty). I was able to get the command line working with 
speech-dispatcher and piper voices (my current favorites) using Fenrir. 
The main problem with that being that it does not start until pretty 
late in the system startup process, so it's not much help with bootup 
issues.

If you have the time, I'd love to know what distro you are using and how 
your audio system is set up. My goal is to use my user's 
speech-dispatcher so I can use my instance of pipewire to play the voice 
audio.


