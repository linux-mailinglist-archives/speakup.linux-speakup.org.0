Return-Path: <speakup+bounces-1382-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 70347B87A0B
	for <lists+speakup@lfdr.de>; Fri, 19 Sep 2025 03:41:40 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=t39smtp-sign001.email header.i=@t39smtp-sign001.email header.a=rsa-sha256 header.s=titan1 header.b=gbUjhHCk;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id E4447382BAA; Thu, 18 Sep 2025 21:41:38 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id BB1DC3827F4
	for <lists+speakup@lfdr.de>; Thu, 18 Sep 2025 21:41:38 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 6DA183827F4; Thu, 18 Sep 2025 21:41:31 -0400 (EDT)
Received: from mail122.out.titan.email (mail122.out.titan.email [3.233.41.74])
	by befuddled.reisers.ca (Postfix) with ESMTPS id B94303827C8
	for <speakup@linux-speakup.org>; Thu, 18 Sep 2025 21:41:30 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by smtp-out.flockmail.com (Postfix) with ESMTP id D0205E0003;
	Fri, 19 Sep 2025 01:41:23 +0000 (UTC)
DKIM-Signature: a=rsa-sha256; bh=JUKkv7oCPkmm93Odj2DRczn4jUWAv1EceoImryvY0uk=;
	c=relaxed/relaxed; d=t39smtp-sign001.email;
	h=reply-to:subject:message-id:from:cc:references:date:mime-version:to:from:to:cc:subject:date:message-id:reply-to:references:in-reply-to;
	q=dns/txt; s=titan1; t=1758246083; v=1;
	b=gbUjhHCkz4MiihXLAZG0vXiT7A/J1kNgITk+9kAg0TRoX9JUbgQRM9USQQ8CUi7ozaMTrgSC
	WT6MCVsbB1K1qJefjP4g+Wafdq+ucz0Ox912edUvhM5Uzvzc/Pc6S5npz9VLfhCZXZjS9SmIVXQ
	i5N+v5ANG5/NAC+ObY9sfzxI=
Received: from nucwin10 (unknown [140.228.165.201])
	by smtp-out.flockmail.com (Postfix) with ESMTPA id 4F4A2E0044;
	Fri, 19 Sep 2025 01:41:23 +0000 (UTC)
Message-ID: <02c901dc2906$81c05380$01ffa8c0@nucwin10>
Reply-To: "K0LNY ??" <glenn@ervin.email>
Feedback-ID: :glenn@ervin.email:ervin.email:flockmailId
From: "K0LNY ??" <glenn@ervin.email>
To: "Karen Lewellen" <klewellen@shellworld.net>
Cc: "Gregory Nowak" <greg@gregn.net>,
	"Butch Bussen" <butchb@shellworld.net>,
	"Rudy Vener" <salt@panix.com>,
	<speakup@linux-speakup.org>
References: <aMOwSwrEWTBtFn60@titan> <45100fe1-7400-688a-c7fc-7eae1f81ef2b@hubert-humphrey.com> <aMsF4T_1FAbaFEHz@titan> <aMsboMhBL4klsYZD@panix.com> <Pine.LNX.4.64.2509171823280.3962820@users.shellworld.net> <aMs6TdEMXhkXkkJP@titan> <Pine.LNX.4.64.2509171937230.3963832@users.shellworld.net> <17e1af06-81a0-40c3-a0df-19bab0242cfe@crosslink.net> <aMt2KmWOCT_waaDM@panix.com> <Pine.LNX.4.64.2509180709190.3974788@users.shellworld.net> <aMyPeEnybDhoh9rD@gregn.net> <Pine.LNX.4.64.2509182026130.3981456@users.shellworld.net> <02be01dc28fe$ac2e6c40$01ffa8c0@nucwin10> <Pine.LNX.4.64.2509182137480.3982285@users.shellworld.net>
Subject: Re: accessible phones database? is  Question about blind CLI use (was Re: "your browser is not supported anymore" ...)
Date: Thu, 18 Sep 2025 20:41:22 -0500
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
X-Titan-Src-Out: 1758246083674842929.32108.7362512701347987961@prod-use1-smtp-out1004.
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.4 cv=Sa8NduRu c=1 sm=1 tr=0 ts=68ccb4c3
	a=sfY17wZm961WJQkZ7MXrtw==:117 a=sfY17wZm961WJQkZ7MXrtw==:17
	a=1FzE8N686WyguKpF:21 a=8nJEP1OIZ-IA:10 a=MKtGQD3n3ToA:10 a=CEWIc4RMnpUA:10
	a=9_GH9xibAAAA:8 a=hEK2XftRAAAA:8 a=VUfPOBp7AAAA:8 a=qPKtzgQbAAAA:8
	a=QaDfZL5BU1ng5SfPBJIA:9 a=wPNLvfGTeEIA:10 a=dO7qa_Xy17WzffDKgyPM:22
	a=pvvZm7_9ER1OwvpV3Ftp:22 a=h9p_k6br8ecoN9AbG9pA:22
	a=OTAqJWGB1laLS8RTg9aS:22 a=P3K-DvM3-jjlTNsN-mCd:22
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Well Karen,
It gives you one to try at a phone store.
You can be the judge.
Glenn
----- Original Message ----- 
From: "Karen Lewellen" <klewellen@shellworld.net>
To: "K0LNY ??" <glenn@ervin.email>
Cc: "Gregory Nowak" <greg@gregn.net>; "Butch Bussen" 
<butchb@shellworld.net>; "Rudy Vener" <salt@panix.com>; 
<speakup@linux-speakup.org>
Sent: Thursday, September 18, 2025 8:38 PM
Subject: Re: accessible phones database? is Question about blind CLI use 
(was Re: "your browser is not supported anymore" ...)


Hi glen,
I am unsure how this answers my question?
Karen



On Thu, 18 Sep 2025, K0LNY ?? wrote:

> Karen,
> I have a Kyrosera Dura.
> It is a flip phone and speaks everything, except the update options, so 
> mine
> has never been updated.
> I'm not fond of the voice, and it could be that Verizon sold me an older
> model, but the voice does not keep up with my number entry, so I need to
> enter my numbers slowly if I want to hear them.
> It can do web pages, but that is not much fun with the arrow keys.
> I think it does email, but I've never set that up.
> HTH.
> Glenn
> ----- Original Message -----
> From: "Karen Lewellen" <klewellen@shellworld.net>
> To: "Gregory Nowak" <greg@gregn.net>
> Cc: "Butch Bussen" <butchb@shellworld.net>; "Rudy Vener" <salt@panix.com>;
> <speakup@linux-speakup.org>
> Sent: Thursday, September 18, 2025 7:34 PM
> Subject: accessible phones database? is Question about blind CLI use (was
> Re: "your browser is not supported anymore" ...)
>
>
> Hi folks,
> Asking about this within the thread, because it is possible someone
> recalls what I am seeking.
> I am profoundly and desperately trying to find a replacement for the LG
> phone I have used for years.
> Canada is retiring its 3g phone network, so I must find a phone with the
> features my body requires.
> Things like speech at the ear, think lg exalt..which I would buy three
> weeks ago last Tuesday if I could find it unlocked.
> Presently I have an lg f4nr, which is not a 4g item.
> Anyway, there is? or was a database that allowed you to search wireless
> pones by feature, buttons, 3.5 headphone jacks, tts those sorts of things.
> The list of options was huge, you checked off your requirements and it
> presented the phones with the items on your list, even if a lesser known
> brand.
> Anyone recall the location of this tool?
>
> With appreciation,
> Karen
>
>
>
>
>


