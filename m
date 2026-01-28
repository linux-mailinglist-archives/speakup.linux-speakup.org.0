Return-Path: <speakup+bounces-1532-lists+speakup=lfdr.de@linux-speakup.org>
Delivered-To: lists+speakup@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8LzMK1l1eWkSxQEAu9opvQ
	(envelope-from <speakup+bounces-1532-lists+speakup=lfdr.de@linux-speakup.org>)
	for <lists+speakup@lfdr.de>; Wed, 28 Jan 2026 03:32:57 +0100
X-Original-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 0C1779C4A7
	for <lists+speakup@lfdr.de>; Wed, 28 Jan 2026 03:32:57 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=t39smtp-sign001.email header.i=@t39smtp-sign001.email header.a=rsa-sha256 header.s=titan1 header.b=ay4urETS;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 4B04B3820C5; Tue, 27 Jan 2026 21:32:55 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 2289038190B
	for <lists+speakup@lfdr.de>; Tue, 27 Jan 2026 21:32:55 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 2AB93381917; Tue, 27 Jan 2026 21:32:49 -0500 (EST)
Received: from mail66.out.titan.email (mail66.out.titan.email [3.216.99.48])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 3061A381908
	for <speakup@linux-speakup.org>; Tue, 27 Jan 2026 21:32:48 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by smtp-out.flockmail.com (Postfix) with ESMTP id 4f15sW4p19z2xBg;
	Wed, 28 Jan 2026 02:32:47 +0000 (UTC)
DKIM-Signature: a=rsa-sha256; bh=oNUlyRHtFD/Mf4acjjOyTMl/zu5MYWwYgMQRDgne4HU=;
	c=relaxed/relaxed; d=t39smtp-sign001.email;
	h=from:cc:references:date:reply-to:subject:message-id:to:mime-version:from:to:cc:subject:date:message-id:reply-to:references:in-reply-to;
	q=dns/txt; s=titan1; t=1769567567; v=1;
	b=ay4urETS4v1OJJwIkkBFqEc9Xfggpn7RATmXGRzL+VKAAD2XEZvlF6PtEvGGvFmNvElelb+7
	Nt197c7Qs/Eh1JqqOLVUPl5esVxaR1QJqMFNNOcXAAwbHQCQHjROgyQ0qgV0OV6PUGeV4ASWbGs
	9q5P0HVMLQ4jO3Owbh69AQ4Y=
Received: from nucwin10 (unknown [140.228.165.201])
	by smtp-out.flockmail.com (Postfix) with ESMTPA id 4f15sV6Xftz2x9V;
	Wed, 28 Jan 2026 02:32:46 +0000 (UTC)
Message-ID: <004201dc8ffe$63e48ca0$01ffa8c0@nucwin10>
Reply-To: "K0LNY ??" <glenn@ervin.email>
Feedback-ID: :glenn@ervin.email:ervin.email:flockmailId
From: "K0LNY ??" <glenn@ervin.email>
To: "Brian Buhrow" <buhrow@nfbcal.org>,
	"Samuel Thibault" <samuel.thibault@aquilenet.fr>,
	"John G. Heim" <jheim@math.wisc.edu>
Cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <202601272220.60RMKBLE022931@nfbcal.org> <873ea9d1-ba70-48e7-9556-704f32a35dac@math.wisc.edu>
Subject: Re: Cannot get indexing to work on my RPI hardware speech emulator
Date: Tue, 27 Jan 2026 20:32:46 -0600
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
X-Titan-Src-Out: 1769567567461235303.28339.454092739358773019@prod-use1-smtp-out1001.
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.4 cv=TPG/S0la c=1 sm=1 tr=0 ts=6979754f
	a=sfY17wZm961WJQkZ7MXrtw==:117 a=sfY17wZm961WJQkZ7MXrtw==:17
	a=IkcTkHD0fZMA:10 a=MKtGQD3n3ToA:10 a=CEWIc4RMnpUA:10 a=NaBs41E1AAAA:8
	a=qPKtzgQbAAAA:8 a=8RaTqLmjIq_zBDlaJQAA:9 a=QEXdDO2ut3YA:10
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
	TO_DN_ALL(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	TAGGED_FROM(0.00)[bounces-1532-lists,speakup=lfdr.de];
	ARC_NA(0.00)[];
	DMARC_NA(0.00)[ervin.email];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	HAS_X_PRIO_THREE(0.00)[3];
	DKIM_TRACE(0.00)[t39smtp-sign001.email:+];
	HAS_REPLYTO(0.00)[glenn@ervin.email];
	RCVD_COUNT_FIVE(0.00)[6];
	DBL_BLOCKED_OPENRESOLVER(0.00)[befuddled.reisers.ca:helo,befuddled.reisers.ca:rdns,nfbcal.org:email,linux-speakup.org:email,aquilenet.fr:email];
	FROM_NEQ_ENVFROM(0.00)[glenn@ervin.email,speakup@linux-speakup.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[speakup];
	RCPT_COUNT_THREE(0.00)[4];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	REPLYTO_EQ_FROM(0.00)[]
X-Rspamd-Queue-Id: 0C1779C4A7
X-Rspamd-Action: no action

Isn't there serial inputs via the 40 pin header?

----- Original Message ----- 
From: "John G. Heim" <jheim@math.wisc.edu>
To: "Brian Buhrow" <buhrow@nfbcal.org>; "Samuel Thibault" 
<samuel.thibault@aquilenet.fr>
Cc: "Speakup is a screen review system for Linux." 
<speakup@linux-speakup.org>
Sent: Tuesday, January 27, 2026 8:30 PM
Subject: Re: Cannot get indexing to work on my RPI hardware speech emulator



Very helpful. But my research seems to indicate that the Raspberry Pi
gadget port does not have 5 pins. It has only 3, (TX/RX/GND), no modem
control lines.
I take it that means my whole project is in trouble.


On 1/27/26 4:20 PM, Brian Buhrow wrote:
> hello John.  A quick romp through the speakup sources from the linux 
> kernel suggests your
> issue with the lite-talk and delay is not related to indexing.  Instead, 
> it looks like Speakup
> is expecting the synthesizer to signal its readiness for more data by 
> raising the DTR (Data
> Terminal Ready) pin on the serial port.  If it doesn't have that, it uses 
> the full_time as an
> absolute timeout to wait to send more data.  So, if your emulator can 
> raise the DTR pin and
> your serial connection carries that pin back to the linux machine, I think 
> you'll find the
> delay goes away.
>
> The differnce in delay behavior between the Ltlk and Apollo synthesizers 
> appears to be related
> to the default size of the speech buffer for each driver rather than the 
> characteristics of the
> synthesizer itself.  That is, if you run the Apollo long enough, I think 
> you'll run into a
> similar delay.
>
> Conversely, when Speakup wants to send data to serial synthesizers, it 
> raises the RTS pin on
> the serial line.  Consequently, it looks like in order to get the best 
> emulation, you need to
> have a serial connection which has 5 pins connected: gnd, snd, rcv, dtr 
> and rts.
>
> Hope that helps.
>
> -Brian
>


