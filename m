Return-Path: <speakup+bounces-1536-lists+speakup=lfdr.de@linux-speakup.org>
Delivered-To: lists+speakup@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0DcIJ7eTeWmOxgEAu9opvQ
	(envelope-from <speakup+bounces-1536-lists+speakup=lfdr.de@linux-speakup.org>)
	for <lists+speakup@lfdr.de>; Wed, 28 Jan 2026 05:42:31 +0100
X-Original-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 031529D0B5
	for <lists+speakup@lfdr.de>; Wed, 28 Jan 2026 05:42:30 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=t39smtp-sign001.email header.i=@t39smtp-sign001.email header.a=rsa-sha256 header.s=titan1 header.b=DtzfTFle;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 019E338200F; Tue, 27 Jan 2026 23:42:30 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id CC709381907
	for <lists+speakup@lfdr.de>; Tue, 27 Jan 2026 23:42:29 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 0597A381909; Tue, 27 Jan 2026 23:42:24 -0500 (EST)
Received: from mail8.out.flockmail.com (mail8.out.flockmail.com [18.213.226.178])
	by befuddled.reisers.ca (Postfix) with ESMTPS id C6D823817C7
	for <speakup@linux-speakup.org>; Tue, 27 Jan 2026 23:42:23 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by smtp-out.flockmail.com (Postfix) with ESMTP id 4f18kz0Trsz7t9D;
	Wed, 28 Jan 2026 04:42:19 +0000 (UTC)
DKIM-Signature: a=rsa-sha256; bh=/dRmSwOSaEJoSoXhHvQ9pQwMrhCrNCIZa9o32JD0SOg=;
	c=relaxed/relaxed; d=t39smtp-sign001.email;
	h=subject:mime-version:from:to:message-id:references:date:reply-to:cc:from:to:cc:subject:date:message-id:reply-to:references:in-reply-to;
	q=dns/txt; s=titan1; t=1769575338; v=1;
	b=DtzfTFleAEP/lS30dDhaRd+du6VS19LfCM03WdEy0oENJOPCaFdvO4rYNI+HNfXK9GhiqPA/
	ldUktonEM95U3+2FbV6odmC7O6XBjC+aFcHMXQUj5Cm+e866ZYjMSyGazpMqXENCklquCVKWFub
	35GAOc1g+pOZlBc6vvLyI0vs=
Received: from nucwin10 (unknown [140.228.165.201])
	by smtp-out.flockmail.com (Postfix) with ESMTPA id 4f18ky2Jmqz7t8d;
	Wed, 28 Jan 2026 04:42:18 +0000 (UTC)
Message-ID: <005201dc9010$7c004060$01ffa8c0@nucwin10>
Reply-To: "K0LNY ??" <glenn@ervin.email>
Feedback-ID: :glenn@ervin.email:ervin.email:flockmailId
From: "K0LNY ??" <glenn@ervin.email>
To: "Brian Buhrow" <buhrow@nfbcal.org>,
	"Samuel Thibault" <samuel.thibault@aquilenet.fr>,
	"John G. Heim" <jheim@math.wisc.edu>
Cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <202601272220.60RMKBLE022931@nfbcal.org> <873ea9d1-ba70-48e7-9556-704f32a35dac@math.wisc.edu> <004201dc8ffe$63e48ca0$01ffa8c0@nucwin10> <60df655a-ac88-4a73-994c-3cbafaf94c2f@math.wisc.edu>
Subject: Re: Cannot get indexing to work on my RPI hardware speech emulator
Date: Tue, 27 Jan 2026 22:42:17 -0600
Organization: Home
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux." <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2900.2180
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.2180
X-F-Verdict: SPFVALID
X-Titan-Src-Out: 1769575338863492714.6018.5579131344460993191@prod-use1-smtp-out1002.
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.4 cv=a8/K9VSF c=1 sm=1 tr=0 ts=697993aa
	a=sfY17wZm961WJQkZ7MXrtw==:117 a=sfY17wZm961WJQkZ7MXrtw==:17
	a=IkcTkHD0fZMA:10 a=MKtGQD3n3ToA:10 a=CEWIc4RMnpUA:10 a=yLWw96UGAAAA:8
	a=NaBs41E1AAAA:8 a=qPKtzgQbAAAA:8 a=euVUhh_lWborLjRUEVkA:9
	a=QEXdDO2ut3YA:10 a=-FEs8UIgK8oA:10 a=KUdhhsqGRESlNYUxX4fs:22
	a=9L3PeBEvAxxnwxToPDKU:22 a=OTAqJWGB1laLS8RTg9aS:22
	a=P3K-DvM3-jjlTNsN-mCd:22 a=NWVoK91CQySWRX1oVYDe:22
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.12 / 15.00];
	OLD_X_MAILER(2.00)[];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[t39smtp-sign001.email:s=titan1];
	MAILLIST(-0.18)[generic];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_NO_TLS_LAST(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_ALL(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ervin.email:replyto,ervin.email:email,befuddled.reisers.ca:helo,befuddled.reisers.ca:rdns];
	TAGGED_FROM(0.00)[bounces-1536-lists,speakup=lfdr.de];
	ARC_NA(0.00)[];
	DMARC_NA(0.00)[ervin.email];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	HAS_X_PRIO_THREE(0.00)[3];
	DKIM_TRACE(0.00)[t39smtp-sign001.email:+];
	HAS_REPLYTO(0.00)[glenn@ervin.email];
	R_SPF_NA(0.00)[no SPF record];
	RCVD_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[glenn@ervin.email,speakup@linux-speakup.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[speakup];
	RCPT_COUNT_THREE(0.00)[4];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	REPLYTO_EQ_FROM(0.00)[]
X-Rspamd-Queue-Id: 031529D0B5
X-Rspamd-Action: no action

I got to wondering about a serial port hat for the RPI, and I found this one 
for 11 bucks, I think there are many options for these:
https://www.pishop.us/product/serial-hat-rs232/?srsltid=AfmBOopqC35Lsl4Rhd-0JTCRRVZys2Yiil0sHQxLjoECEsRp21uz85ln

----- Original Message ----- 
From: "John G. Heim" <jheim@math.wisc.edu>
To: "K0LNY ??" <glenn@ervin.email>; "Brian Buhrow" <buhrow@nfbcal.org>; 
"Samuel Thibault" <samuel.thibault@aquilenet.fr>
Cc: "Speakup is a screen review system for Linux." 
<speakup@linux-speakup.org>
Sent: Tuesday, January 27, 2026 8:36 PM
Subject: Re: Cannot get indexing to work on my RPI hardware speech emulator


Yeah, I've seen plenty of posts about wiring that but I do not think
that is practical for this project. I, personally, am not willing to
solder wires onto a Raspberry Pi in order to build a speech synthesizer.
The thing to do might be to see if there are other single board
computers with more amenable hardware.



On 1/27/26 8:32 PM, K0LNY ?? wrote:
> Isn't there serial inputs via the 40 pin header?
>
> ----- Original Message -----
> From: "John G. Heim" <jheim@math.wisc.edu>
> To: "Brian Buhrow" <buhrow@nfbcal.org>; "Samuel Thibault"
> <samuel.thibault@aquilenet.fr>
> Cc: "Speakup is a screen review system for Linux."
> <speakup@linux-speakup.org>
> Sent: Tuesday, January 27, 2026 8:30 PM
> Subject: Re: Cannot get indexing to work on my RPI hardware speech 
> emulator
>
>
>
> Very helpful. But my research seems to indicate that the Raspberry Pi
> gadget port does not have 5 pins. It has only 3, (TX/RX/GND), no modem
> control lines.
> I take it that means my whole project is in trouble.
>
>
> On 1/27/26 4:20 PM, Brian Buhrow wrote:
>> hello John.  A quick romp through the speakup sources from the linux
>> kernel suggests your
>> issue with the lite-talk and delay is not related to indexing.  Instead,
>> it looks like Speakup
>> is expecting the synthesizer to signal its readiness for more data by
>> raising the DTR (Data
>> Terminal Ready) pin on the serial port.  If it doesn't have that, it uses
>> the full_time as an
>> absolute timeout to wait to send more data.  So, if your emulator can
>> raise the DTR pin and
>> your serial connection carries that pin back to the linux machine, I 
>> think
>> you'll find the
>> delay goes away.
>>
>> The differnce in delay behavior between the Ltlk and Apollo synthesizers
>> appears to be related
>> to the default size of the speech buffer for each driver rather than the
>> characteristics of the
>> synthesizer itself.  That is, if you run the Apollo long enough, I think
>> you'll run into a
>> similar delay.
>>
>> Conversely, when Speakup wants to send data to serial synthesizers, it
>> raises the RTS pin on
>> the serial line.  Consequently, it looks like in order to get the best
>> emulation, you need to
>> have a serial connection which has 5 pins connected: gnd, snd, rcv, dtr
>> and rts.
>>
>> Hope that helps.
>>
>> -Brian
>> 


