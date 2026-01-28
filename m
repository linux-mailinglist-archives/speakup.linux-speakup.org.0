Return-Path: <speakup+bounces-1535-lists+speakup=lfdr.de@linux-speakup.org>
Delivered-To: lists+speakup@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8MX4GemEeWnGxQEAu9opvQ
	(envelope-from <speakup+bounces-1535-lists+speakup=lfdr.de@linux-speakup.org>)
	for <lists+speakup@lfdr.de>; Wed, 28 Jan 2026 04:39:21 +0100
X-Original-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 2FE7C9CC70
	for <lists+speakup@lfdr.de>; Wed, 28 Jan 2026 04:39:20 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; secure) header.d=pcdesk.net header.i=@pcdesk.net header.a=rsa-sha256 header.s=pcdesk20210713 header.b=PHY58Sc9;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 3E56738191F; Tue, 27 Jan 2026 22:38:57 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 1E917381907
	for <lists+speakup@lfdr.de>; Tue, 27 Jan 2026 22:38:57 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 3B003381909; Tue, 27 Jan 2026 22:38:51 -0500 (EST)
Received: from mail.pcdesk.net (unknown [69.28.94.151])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 179B93817DE
	for <speakup@linux-speakup.org>; Tue, 27 Jan 2026 22:38:51 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pcdesk.net;
	s=pcdesk20210713; t=1769571527;
	bh=4BmSOI5EAPgTeg7Vodub8aKCbwtZCVpQjQXYrEdzNBw=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To;
	b=PHY58Sc9s/hbq4VNRU7l2nYQAgsftR2opJS9uq70t9Gacr3Ux5kilXZOHfQE3YsYW
	 y3YKREV5Egk1sKyGLLYXC38vpC5ULB3VKvXa3gaMytoaybb2eMrknYoBzKRQCKsZ8I
	 dMK9c1Q5aldpdk3mA9tTGg6BDdM6xC8IUvj5kqZT0MktWyxHch9apmzFyMhvKGBIcG
	 YUOWzoPur/NDFOd/MPmD76r3yVHThQQDAVSC6vxx06tdrb7jjTLmQzh2i4J2Q63UV2
	 eo9bp2LmznheXqHMpX4u8JyjTSJne6aAgmcyDL0V4d4QOtNlsGWbpJQXSFrxPgDCYw
	 7YBrJU04FCyYA==
Original-Subject: Re: Cannot get indexing to work on my RPI hardware speech emulator
Author: Tyler Spivey <tspivey@pcdesk.net>
Received: from [192.168.1.75] (d207-6-209-188.bchsia.telus.net [::ffff:207.6.209.188])
  (AUTH: LOGIN tspivey@pcdesk.net, TLS: TLSv1.3,256bits,TLS_AES_256_GCM_SHA384)
  by mail.pcdesk.net with ESMTPSA
  id 0000000000020287.00000000697984C7.0004DC74; Tue, 27 Jan 2026 22:38:46 -0500
Message-ID: <39534271-277e-4077-8b32-1eb6124d1f4f@pcdesk.net>
Date: Tue, 27 Jan 2026 19:38:47 -0800
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
To: "K0LNY ??" <glenn@ervin.email>, Brian Buhrow <buhrow@nfbcal.org>,
  Samuel Thibault <samuel.thibault@aquilenet.fr>,
  "John G. Heim" <jheim@math.wisc.edu>
Cc:
  "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <202601272220.60RMKBLE022931@nfbcal.org>
 <873ea9d1-ba70-48e7-9556-704f32a35dac@math.wisc.edu>
 <004201dc8ffe$63e48ca0$01ffa8c0@nucwin10>
 <60df655a-ac88-4a73-994c-3cbafaf94c2f@math.wisc.edu>
 <004601dc8fff$6a2e6490$01ffa8c0@nucwin10>
Content-Language: en-US
From: Tyler Spivey <tspivey@pcdesk.net>
In-Reply-To: <004601dc8fff$6a2e6490$01ffa8c0@nucwin10>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.89 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[pcdesk.net,quarantine];
	R_DKIM_ALLOW(-0.20)[pcdesk.net:s=pcdesk20210713];
	MAILLIST(-0.18)[generic];
	RCVD_NO_TLS_LAST(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[speakup];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	MID_RHS_MATCH_FROM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ervin.email:email,aquilenet.fr:email,wisc.edu:email];
	TO_DN_ALL(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tspivey@pcdesk.net,speakup@linux-speakup.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	R_SPF_NA(0.00)[no SPF record];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-1535-lists,speakup=lfdr.de];
	DKIM_TRACE(0.00)[pcdesk.net:+]
X-Rspamd-Queue-Id: 2FE7C9CC70
X-Rspamd-Action: no action

Could you use a USB to serial adapter for your project?

On 1/27/2026 6:40 PM, K0LNY ?? wrote:
> I would think it would not have to be soldered.
> There is likely a header that provides a serial connection.
> Glenn
> ----- Original Message -----
> From: "John G. Heim" <jheim@math.wisc.edu>
> To: "K0LNY ??" <glenn@ervin.email>; "Brian Buhrow" <buhrow@nfbcal.org>;
> "Samuel Thibault" <samuel.thibault@aquilenet.fr>
> Cc: "Speakup is a screen review system for Linux."
> <speakup@linux-speakup.org>
> Sent: Tuesday, January 27, 2026 8:36 PM
> Subject: Re: Cannot get indexing to work on my RPI hardware speech emulator
> 
> 
> Yeah, I've seen plenty of posts about wiring that but I do not think
> that is practical for this project. I, personally, am not willing to
> solder wires onto a Raspberry Pi in order to build a speech synthesizer.
> The thing to do might be to see if there are other single board
> computers with more amenable hardware.
> 
> 
> 
> On 1/27/26 8:32 PM, K0LNY ?? wrote:
>> Isn't there serial inputs via the 40 pin header?
>>
>> ----- Original Message -----
>> From: "John G. Heim" <jheim@math.wisc.edu>
>> To: "Brian Buhrow" <buhrow@nfbcal.org>; "Samuel Thibault"
>> <samuel.thibault@aquilenet.fr>
>> Cc: "Speakup is a screen review system for Linux."
>> <speakup@linux-speakup.org>
>> Sent: Tuesday, January 27, 2026 8:30 PM
>> Subject: Re: Cannot get indexing to work on my RPI hardware speech
>> emulator
>>
>>
>>
>> Very helpful. But my research seems to indicate that the Raspberry Pi
>> gadget port does not have 5 pins. It has only 3, (TX/RX/GND), no modem
>> control lines.
>> I take it that means my whole project is in trouble.
>>
>>
>> On 1/27/26 4:20 PM, Brian Buhrow wrote:
>>> hello John.  A quick romp through the speakup sources from the linux
>>> kernel suggests your
>>> issue with the lite-talk and delay is not related to indexing.  Instead,
>>> it looks like Speakup
>>> is expecting the synthesizer to signal its readiness for more data by
>>> raising the DTR (Data
>>> Terminal Ready) pin on the serial port.  If it doesn't have that, it uses
>>> the full_time as an
>>> absolute timeout to wait to send more data.  So, if your emulator can
>>> raise the DTR pin and
>>> your serial connection carries that pin back to the linux machine, I
>>> think
>>> you'll find the
>>> delay goes away.
>>>
>>> The differnce in delay behavior between the Ltlk and Apollo synthesizers
>>> appears to be related
>>> to the default size of the speech buffer for each driver rather than the
>>> characteristics of the
>>> synthesizer itself.  That is, if you run the Apollo long enough, I think
>>> you'll run into a
>>> similar delay.
>>>
>>> Conversely, when Speakup wants to send data to serial synthesizers, it
>>> raises the RTS pin on
>>> the serial line.  Consequently, it looks like in order to get the best
>>> emulation, you need to
>>> have a serial connection which has 5 pins connected: gnd, snd, rcv, dtr
>>> and rts.
>>>
>>> Hope that helps.
>>>
>>> -Brian
>>>
> 
> 


