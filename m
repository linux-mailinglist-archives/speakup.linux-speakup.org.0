Return-Path: <speakup+bounces-1528-lists+speakup=lfdr.de@linux-speakup.org>
Delivered-To: lists+speakup@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QETSF6sleWnmvgEAu9opvQ
	(envelope-from <speakup+bounces-1528-lists+speakup=lfdr.de@linux-speakup.org>)
	for <lists+speakup@lfdr.de>; Tue, 27 Jan 2026 21:52:59 +0100
X-Original-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 474639A7CB
	for <lists+speakup@lfdr.de>; Tue, 27 Jan 2026 21:52:58 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; secure) header.d=pcdesk.net header.i=@pcdesk.net header.a=rsa-sha256 header.s=pcdesk20210713 header.b=xjFk1Cs0;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id BC166382014; Tue, 27 Jan 2026 15:52:57 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 9D6E1381909
	for <lists+speakup@lfdr.de>; Tue, 27 Jan 2026 15:52:57 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id D2AD3381909; Tue, 27 Jan 2026 15:52:51 -0500 (EST)
Received: from mail.pcdesk.net (unknown [69.28.94.151])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 2205238158A
	for <speakup@linux-speakup.org>; Tue, 27 Jan 2026 15:52:51 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pcdesk.net;
	s=pcdesk20210713; t=1769547167;
	bh=XR1WfFzYY4oSRarb9w6NcArJsumLo26rBGYan7M8xnI=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To;
	b=xjFk1Cs0y0BwqXad8Ccxzrm7wGpP3hwE/PqMGZqG1z50GgkFyvMBsFYoa+tt5/7nO
	 3im3kcE8u26j5hF8DS7usSmoMWguu9vy3q83P20zx5uEFYbeo4E5QWf8jXtQFDHiOD
	 9fElcIES364IkCStUZB8qwIoP3uzrVfSn0LmisErSM4G6otLHatkChWWq9w6U/CjOi
	 u8XCHelmsNdwgwBsB+rHvAVKwtLwJE0vX+yL8sFTzR5M72Q2Rqb9l7oQRnp1VPIc3r
	 4HaacFddDpHGbDOTUnf/0DkduDkYxeJ/kxt9mGgHNbudZMuHx/8mn7oNXa6aFRuPYW
	 M54r5N6SVEU+w==
Original-Subject: Re: Cannot get indexing to work on my RPI hardware speech emulator
Author: Tyler Spivey <tspivey@pcdesk.net>
Received: from [192.168.1.75] (d207-6-209-188.bchsia.telus.net [::ffff:207.6.209.188])
  (AUTH: LOGIN tspivey@pcdesk.net, TLS: TLSv1.3,256bits,TLS_AES_256_GCM_SHA384)
  by mail.pcdesk.net with ESMTPSA
  id 0000000000020287.000000006979259F.0004CEB6; Tue, 27 Jan 2026 15:52:47 -0500
Message-ID: <b7338e5d-c460-40a6-8377-87515564cf76@pcdesk.net>
Date: Tue, 27 Jan 2026 12:52:45 -0800
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux." <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Cannot get indexing to work on my RPI hardware speech emulator
To: "John G. Heim" <jheim@math.wisc.edu>,
  Samuel Thibault <samuel.thibault@aquilenet.fr>
Cc:
  "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <e8e83e43-4afc-4c74-b101-4bb93f1a664b@math.wisc.edu>
 <aXkaCwIct6Nvqbv1@end> <36e4c9b5-5ea5-47d3-b7cf-15706d0470cd@math.wisc.edu>
Content-Language: en-US
From: Tyler Spivey <tspivey@pcdesk.net>
In-Reply-To: <36e4c9b5-5ea5-47d3-b7cf-15706d0470cd@math.wisc.edu>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.89 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[pcdesk.net,quarantine];
	R_DKIM_ALLOW(-0.20)[pcdesk.net:s=pcdesk20210713];
	MAILLIST(-0.18)[generic];
	RCVD_NO_TLS_LAST(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:5645, ipnet:206.248.128.0/18, country:CA];
	TAGGED_RCPT(0.00)[speakup];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	R_SPF_NA(0.00)[no SPF record];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_NEQ_ENVFROM(0.00)[tspivey@pcdesk.net,speakup@linux-speakup.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-1528-lists,speakup=lfdr.de];
	RCVD_COUNT_FIVE(0.00)[5];
	TO_DN_ALL(0.00)[];
	DKIM_TRACE(0.00)[pcdesk.net:+]
X-Rspamd-Queue-Id: 474639A7CB
X-Rspamd-Action: no action

I think what you need to do is switch to pyserial. Install the 
python3-serial package and look at the documentation.
If I'm reading the code correctly, the delay is because the serial lines 
aren't set. Try RTS/CTS.

On 1/27/2026 12:29 PM, John G. Heim wrote:
> I'll give it a try. But I just tried something else, I switched to the 
> Apollo synt driver on the host. So instead of speakup_ltlk, I loaded 
> speakup_apolo and it works fine. Things like changing the pitch for caps 
> didn't work because there are different command strings for that. But 
> there's no delays.
> 
> As someone else pointed out, RC systems put out a doc on how to talk to 
> their synth.  So I could sort of reverse engineer that. I could look at 
> what Speakup was sending me and compare that to the documentation and 
> figure out what to do. So I have pitch  changes and speech rate changes 
> working.  Having documentation is nice but I can probably do w/o it. If 
> you press the Spekup hotkey for changing pitch, capslock+3 or 
> capslock+4, you can see what bytes it sends and infer from that how to 
> emulate the synth.
> 
> So I think I'll try your 0x11 trick and if that doesn't work, give up on 
> the LiteTalk. Switch over to emulating an Apollo.
> 
> 
> 
> On 1/27/26 2:03 PM, Samuel Thibault wrote:
>> Hello,
>>
>> John G. Heim, le mar. 27 janv. 2026 13:42:05 -0600, a ecrit:
>>> Speakup  takes a 40 second break between sending
>>> chunks of text.
>>> I think that thing about it never sending indexing commands is key.
>> I think it's rather a flow control issue.
>>
>> The full_time is used only when writing text returns an error, which can
>> be a buffer-full issue. I see in some drivers that some hardware synths
>> seem to be sending XON/XOFF characters. Perhaps you just need to send
>> XON characters (0x11)
>>
>> Samuel
> 


