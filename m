Return-Path: <speakup+bounces-1380-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 6E69EB87866
	for <lists+speakup@lfdr.de>; Fri, 19 Sep 2025 02:45:32 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=t39smtp-sign001.email header.i=@t39smtp-sign001.email header.a=rsa-sha256 header.s=titan1 header.b=D0emizZZ;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 5C2FB382B94; Thu, 18 Sep 2025 20:45:30 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 393CE38273B
	for <lists+speakup@lfdr.de>; Thu, 18 Sep 2025 20:45:30 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id CC2D6382740; Thu, 18 Sep 2025 20:45:22 -0400 (EDT)
Received: from mail10.out.titan.email (mail10.out.titan.email [3.226.153.83])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 8913238272D
	for <speakup@linux-speakup.org>; Thu, 18 Sep 2025 20:45:22 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by smtp-out.flockmail.com (Postfix) with ESMTP id 0F3F9E0019;
	Fri, 19 Sep 2025 00:45:19 +0000 (UTC)
DKIM-Signature: a=rsa-sha256; bh=6aNVz+iJvkczihQWo1abn4XdabMJVi/8JtynAjxW4Fo=;
	c=relaxed/relaxed; d=t39smtp-sign001.email;
	h=cc:date:mime-version:to:message-id:reply-to:references:subject:from:from:to:cc:subject:date:message-id:reply-to:references:in-reply-to;
	q=dns/txt; s=titan1; t=1758242718; v=1;
	b=D0emizZZDkedhLG7NEFDildUsEc2+ELpI3QPeLuB/SV1eDyWZck/L2U++H0/l9+NYK7zDPck
	a/suv898+ZKNXLm+l9n26z6hr9D893YV+RsflBHVExExU6RGmCK92YHVbuF0ysQ0ff7FtoTBKuH
	s0b0I6HWS5QuFLjh1V9wEGoQ=
Received: from nucwin10 (unknown [140.228.165.201])
	by smtp-out.flockmail.com (Postfix) with ESMTPA id 53E5AE0010;
	Fri, 19 Sep 2025 00:45:18 +0000 (UTC)
Message-ID: <02be01dc28fe$ac2e6c40$01ffa8c0@nucwin10>
Reply-To: "K0LNY ??" <glenn@ervin.email>
Feedback-ID: :glenn@ervin.email:ervin.email:flockmailId
From: "K0LNY ??" <glenn@ervin.email>
To: "Karen Lewellen" <klewellen@shellworld.net>,
	"Gregory Nowak" <greg@gregn.net>
Cc: "Butch Bussen" <butchb@shellworld.net>,
	"Rudy Vener" <salt@panix.com>,
	<speakup@linux-speakup.org>
References: <aMOwSwrEWTBtFn60@titan> <45100fe1-7400-688a-c7fc-7eae1f81ef2b@hubert-humphrey.com> <aMsF4T_1FAbaFEHz@titan> <aMsboMhBL4klsYZD@panix.com> <Pine.LNX.4.64.2509171823280.3962820@users.shellworld.net> <aMs6TdEMXhkXkkJP@titan> <Pine.LNX.4.64.2509171937230.3963832@users.shellworld.net> <17e1af06-81a0-40c3-a0df-19bab0242cfe@crosslink.net> <aMt2KmWOCT_waaDM@panix.com> <Pine.LNX.4.64.2509180709190.3974788@users.shellworld.net> <aMyPeEnybDhoh9rD@gregn.net> <Pine.LNX.4.64.2509182026130.3981456@users.shellworld.net>
Subject: Re: accessible phones database? is  Question about blind CLI use (was Re: "your browser is not supported anymore" ...)
Date: Thu, 18 Sep 2025 19:45:17 -0500
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
X-Titan-Src-Out: 1758242718884863430.32108.3316205402640624761@prod-use1-smtp-out1004.
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.4 cv=Sa8NduRu c=1 sm=1 tr=0 ts=68cca79e
	a=sfY17wZm961WJQkZ7MXrtw==:117 a=sfY17wZm961WJQkZ7MXrtw==:17
	a=1FzE8N686WyguKpF:21 a=8nJEP1OIZ-IA:10 a=MKtGQD3n3ToA:10 a=CEWIc4RMnpUA:10
	a=9_GH9xibAAAA:8 a=hEK2XftRAAAA:8 a=VUfPOBp7AAAA:8 a=qPKtzgQbAAAA:8
	a=8GOlaw2OIwEZU7Lc6tQA:9 a=wPNLvfGTeEIA:10 a=dO7qa_Xy17WzffDKgyPM:22
	a=pvvZm7_9ER1OwvpV3Ftp:22 a=h9p_k6br8ecoN9AbG9pA:22
	a=OTAqJWGB1laLS8RTg9aS:22 a=P3K-DvM3-jjlTNsN-mCd:22
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Karen,
I have a Kyrosera Dura.
It is a flip phone and speaks everything, except the update options, so mine 
has never been updated.
I'm not fond of the voice, and it could be that Verizon sold me an older 
model, but the voice does not keep up with my number entry, so I need to 
enter my numbers slowly if I want to hear them.
It can do web pages, but that is not much fun with the arrow keys.
I think it does email, but I've never set that up.
HTH.
Glenn
----- Original Message ----- 
From: "Karen Lewellen" <klewellen@shellworld.net>
To: "Gregory Nowak" <greg@gregn.net>
Cc: "Butch Bussen" <butchb@shellworld.net>; "Rudy Vener" <salt@panix.com>; 
<speakup@linux-speakup.org>
Sent: Thursday, September 18, 2025 7:34 PM
Subject: accessible phones database? is Question about blind CLI use (was 
Re: "your browser is not supported anymore" ...)


Hi folks,
Asking about this within the thread, because it is possible someone
recalls what I am seeking.
I am profoundly and desperately trying to find a replacement for the LG
phone I have used for years.
Canada is retiring its 3g phone network, so I must find a phone with the
features my body requires.
Things like speech at the ear, think lg exalt..which I would buy three
weeks ago last Tuesday if I could find it unlocked.
Presently I have an lg f4nr, which is not a 4g item.
Anyway, there is? or was a database that allowed you to search wireless
pones by feature, buttons, 3.5 headphone jacks, tts those sorts of things.
The list of options was huge, you checked off your requirements and it
presented the phones with the items on your list, even if a lesser known
brand.
Anyone recall the location of this tool?

With appreciation,
Karen





