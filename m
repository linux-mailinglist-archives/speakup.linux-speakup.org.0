Return-Path: <speakup+bounces-1442-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 92603BEF63F
	for <lists+speakup@lfdr.de>; Mon, 20 Oct 2025 08:04:04 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=t39smtp-sign001.email header.i=@t39smtp-sign001.email header.a=rsa-sha256 header.s=titan1 header.b=QErqzLgR;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 10DF538299C; Mon, 20 Oct 2025 02:04:01 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id E3E29382964
	for <lists+speakup@lfdr.de>; Mon, 20 Oct 2025 02:04:00 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 7456A382953; Mon, 20 Oct 2025 02:03:53 -0400 (EDT)
Received: from mail5.out.titan.email (mail5.out.titan.email [54.208.48.90])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 06F0538189F
	for <speakup@linux-speakup.org>; Mon, 20 Oct 2025 02:03:53 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by smtp-out.flockmail.com (Postfix) with ESMTP id 4cqlHC4rQpz7t9k;
	Mon, 20 Oct 2025 06:03:51 +0000 (UTC)
DKIM-Signature: a=rsa-sha256; bh=b1PfwEW1GIgTopyY7MFEONqsRi7CgcbeXIH4vjOQ21k=;
	c=relaxed/relaxed; d=t39smtp-sign001.email;
	h=from:cc:references:date:message-id:reply-to:subject:mime-version:to:from:to:cc:subject:date:message-id:reply-to:references:in-reply-to;
	q=dns/txt; s=titan1; t=1760940231; v=1;
	b=QErqzLgRIwbw1gzYl9tOBhni+vnBdHXN1VKJkXIS10uUXeaTWAUnZrZ3u6D7DAcTHvs4Moh5
	Pd6totUHlWmWGGDdtMZyXDp+wwvANQ18uD1RcENniaUSmMp3FWt0Ayu9scqEHQXDkFayrVosX3x
	GFOmmqW1PzS7ioyplt2ox2Nc=
Received: from nucwin10 (unknown [140.228.165.201])
	by smtp-out.flockmail.com (Postfix) with ESMTPA id 4cqlHB608sz7t9j;
	Mon, 20 Oct 2025 06:03:50 +0000 (UTC)
Message-ID: <0b3f01dc4187$4ee149d0$01ffa8c0@nucwin10>
Reply-To: "K0LNY ??" <glenn@ervin.email>
Feedback-ID: :glenn@ervin.email:ervin.email:flockmailId
From: "K0LNY ??" <glenn@ervin.email>
To: "Jookia" <contact@jookia.org>
Cc: <speakup@linux-speakup.org>,
	"Cleverson Casarin Uliana" <clul+speakup@posteo.com.br>
References: <021401dc413d$e3e246a0$01ffa8c0@nucwin10> <36b36e62-fecb-4bc9-8302-15dbe4f3b0fc@slint.fr> <bf1f95b5-63d5-4474-8f8e-888df7884bfb@posteo.com.br> <0b3101dc4183$1346cac0$01ffa8c0@nucwin10> <aPXKG2Rjkt8s1UNV@titan>
Subject: Re: Switching To Voxin
Date: Mon, 20 Oct 2025 01:03:49 -0500
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
X-Titan-Src-Out: 1760940231501479597.2432.8950684597443175826@prod-use1-smtp-out1002.
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.4 cv=JbdGrVKV c=1 sm=1 tr=0 ts=68f5d0c7
	a=sfY17wZm961WJQkZ7MXrtw==:117 a=sfY17wZm961WJQkZ7MXrtw==:17
	a=8nJEP1OIZ-IA:10 a=MKtGQD3n3ToA:10 a=CEWIc4RMnpUA:10 a=NEAV23lmAAAA:8
	a=jovt0mFxAAAA:8 a=qPKtzgQbAAAA:8 a=G1MHl-R2AAAA:8 a=5P3rqkMdzyCS9nQgC4UA:9
	a=wPNLvfGTeEIA:10 a=StMmMNtBgVvPiZYFi0f4:22 a=OTAqJWGB1laLS8RTg9aS:22
	a=0_cEEhCvB34XW5aA8UtH:22 a=P3K-DvM3-jjlTNsN-mCd:22
	a=NWVoK91CQySWRX1oVYDe:22
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

I am sure that a few years back, I had espeakup working with voxin.
But at any rate, I can't make sense of this git hub page.
I just go around and around looking for something I can download and run to 
install voxinup and there's nothing.
It mentions a build.sh file, but I can't find that.
In the git clone I did, there is just files to run jupiter and test , but 
nothing there.
I hope if voxinup is the only option, that someone can point me to something 
I can use.
Thanks.

Glenn
----- Original Message ----- 
From: "Jookia" <contact@jookia.org>
To: "K0LNY ??" <glenn@ervin.email>
Cc: <speakup@linux-speakup.org>; "Cleverson Casarin Uliana" 
<clul+speakup@posteo.com.br>
Sent: Monday, October 20, 2025 12:35 AM
Subject: Re: Switching To Voxin


You can't use espeakup with voxin, you have to use the programs provided by 
the
voxin developers. In this case voxinup.

On Mon, Oct 20, 2025 at 12:33:27AM -0500, K0LNY ?? wrote:
> I've been looking on-line, and still can't get espeakup to use Voxin.
> Voxin works with spd-say, and with voxin-say.
> But espeakup is silent.
> I tried:
> espeakup --default-voice=voxin
> and it did not like that until I used sudo with it.
> But that didn't fix the silence.
> Does anyone know where I can edit a conf file?
> I've edited /etc/default/espeakup to read default synth=voxin
> I don't know where else to look.
> Thanks.
>
> Glenn
> ----- Original Message ----- 
> From: "Cleverson Casarin Uliana" <clul+speakup@posteo.com.br>
> To: <speakup@linux-speakup.org>
> Sent: Sunday, October 19, 2025 4:39 PM
> Subject: Re: Switching To Voxin
>
>
> Hi, besides speechd-up and Fenrir, I believe Voxinup, developed by
> Oralux, still works.
> https://github.com/Oralux/voxinup_install
>
> Cheers,
> Cleverson
>
>
> 


