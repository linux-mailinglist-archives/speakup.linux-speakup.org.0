Return-Path: <speakup+bounces-1313-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id B5482AFBBC4
	for <lists+speakup@lfdr.de>; Mon,  7 Jul 2025 21:34:28 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=t39smtp-sign001.email header.i=@t39smtp-sign001.email header.a=rsa-sha256 header.s=titan1 header.b=NTyEk12l;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id EA0D13824A8; Mon, 07 Jul 2025 15:34:24 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id CAD0B382169
	for <lists+speakup@lfdr.de>; Mon, 07 Jul 2025 15:34:24 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id D6EDB382169; Mon, 07 Jul 2025 15:34:17 -0400 (EDT)
Received: from mail11.out.titan.email (mail11.out.titan.email [3.232.242.252])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 51DAC38195A
	for <speakup@linux-speakup.org>; Mon, 07 Jul 2025 15:34:17 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by smtp-out.flockmail.com (Postfix) with ESMTP id 35F1914009B;
	Mon,  7 Jul 2025 19:34:14 +0000 (UTC)
DKIM-Signature: a=rsa-sha256; bh=dnu2Px9fEcOO9SsED7Hh2Xk2j/vBVClTHvkTPRPzGf4=;
	c=relaxed/relaxed; d=t39smtp-sign001.email;
	h=message-id:from:reply-to:to:references:subject:date:mime-version:from:to:subject:date:message-id:reply-to:references:cc:in-reply-to;
	q=dns/txt; s=titan1; t=1751916854; v=1;
	b=NTyEk12l7ZvAT3sE+iW+IeyT8lEVNKYVPBWo656gCX/quHQ+WaGX2FvMozoChCgDwSy9hpJZ
	+cfls4B4+d4ld75it+LvwBh2iHZ0ZpCzvLUyIOf7QYvaCNgzJN6QE4uqg8R2LH/2gO87726wZ4C
	UOxhduYC8d3coJQSAho67YMA=
Received: from nucwin10 (unknown [140.228.165.201])
	by smtp-out.flockmail.com (Postfix) with ESMTPA id B264F1400A6;
	Mon,  7 Jul 2025 19:34:13 +0000 (UTC)
Message-ID: <00c401dbef76$1f57aaa0$01ffa8c0@nucwin10>
Reply-To: "K0LNY ??" <glenn@ervin.email>
Feedback-ID: :glenn@ervin.email:ervin.email:flockmailId
From: "K0LNY ??" <glenn@ervin.email>
To: "Georgina Joyce" <gena@m0ebp.uk>,
	"Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <8BEF2F60-C508-44B0-B8B5-68268D196FCB@m0ebp.uk>
Subject: Re: debian update killed speakup
Date: Mon, 7 Jul 2025 14:34:13 -0500
Organization: Home
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain;
	charset="iso-8859-1"
Content-Transfer-Encoding: 7bit
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2900.2180
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.2180
X-F-Verdict: SPFVALID
X-Titan-Src-Out: 1751916854053193372.32042.6652600829706414838@prod-use1-smtp-out1003.
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.4 cv=ZKctmW7b c=1 sm=1 tr=0 ts=686c2136
	a=sfY17wZm961WJQkZ7MXrtw==:117 a=sfY17wZm961WJQkZ7MXrtw==:17
	a=8nJEP1OIZ-IA:10 a=MKtGQD3n3ToA:10 a=CEWIc4RMnpUA:10 a=qPKtzgQbAAAA:8
	a=1R6bh11IaDtJG5G89-wA:9 a=wPNLvfGTeEIA:10 a=OTAqJWGB1laLS8RTg9aS:22
	a=P3K-DvM3-jjlTNsN-mCd:22
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi Georgina,
Try to remove pulseaudio
sudo apt remove pulseaudio
That has fixed problems for me.
Also, with spd-conf
I type in alsa over pulseaudio.
Glenn

----- Original Message ----- 
From: "Georgina Joyce" <gena@m0ebp.uk>
To: "Speakup is a screen review system for Linux." 
<speakup@linux-speakup.org>
Sent: Monday, July 7, 2025 2:29 PM
Subject: debian update killed speakup


Hello,

I am at a loss to why debian update should kill speakup. The soft synth 
module is still loading on boot. I think I tried restarting the service with 
systemctl but not too sure of having the right syntax but it stated speakup 
was already running. I recall someone mentioning a symlink that had been 
removed but have no idea what is meant to be linked to what. Speakup was 
installed using espeakup. I have a desktop installed and using pipewire. I 
suspect that pipewire was probably the culprit but no proof.

How do I troubleshoot or even better restore speakup in the console?

Thanks,

Gena


