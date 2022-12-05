Return-Path: <speakup+bounces-892-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 63F6F6435F4
	for <lists+speakup@lfdr.de>; Mon,  5 Dec 2022 21:44:39 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=panix.com header.i=@panix.com header.a=rsa-sha256 header.s=panix header.b=E/bkqABR;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id D8989382A45; Mon,  5 Dec 2022 15:44:38 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id B99E8382A45
	for <lists+speakup@lfdr.de>; Mon,  5 Dec 2022 15:44:38 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id A872D382A88; Mon,  5 Dec 2022 15:44:29 -0500 (EST)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 8D233382A45
	for <speakup@linux-speakup.org>; Mon,  5 Dec 2022 15:44:29 -0500 (EST)
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4NQwWw6Bfbz3rWg;
	Mon,  5 Dec 2022 15:44:28 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=panix.com; s=panix;
	t=1670273068; bh=mJ858Mce+Qvj74MVD0P5j3BIZZqv+1jwVblxcSpN2l4=;
	h=Date:From:To:Subject:In-Reply-To:References;
	b=E/bkqABRV3d0Xis4vr5xJlY0tF18/XwfIeZ975epHWZP2+56YorOBOilt3On+dXs4
	 zyN29vl2Agx63oGUA92dxFCfBCd2fz71I/302ameLtu0YRBwP2bj0sglPhTam/bBhn
	 4ijRlxjo5n9x2+TCFsfszCKvmH74u3b67/SE2p3s=
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4NQwWw50gDzcbc; Mon,  5 Dec 2022 15:44:28 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4NQwWw3zxkzcbC;
	Mon,  5 Dec 2022 15:44:28 -0500 (EST)
Date: Mon, 5 Dec 2022 15:44:28 -0500
From: Jude DaShiell <jdashiel@panix.com>
To: K0LNY_Glenn <glenn@ervin.email>, speakup@linux-speakup.org, 
    Didier Spaier <didier@slint.fr>
Subject: Re: change eSpeak Default Voice
In-Reply-To: <02de01d908e9$bbaf4b90$88ffa8c0@Win7VM>
Message-ID: <37169af6-5d45-5bcf-2770-8c23ed37f02e@panix.com>
References: <013f01d9074d$551a6650$88ffa8c0@Win7VM> <Y4wZa/0WtgPE3nyH@gregn.net> <017701d90794$4d7619c0$88ffa8c0@Win7VM> <Y4wcSYOKzFn/yIeh@gregn.net> <018001d90797$3bf04b00$88ffa8c0@Win7VM> <Y4woAGJEUf430mTc@gregn.net> <018701d9079f$53126810$88ffa8c0@Win7VM>
 <5ab5197f-f3c3-c7f1-b497-0e702525d2cd@slint.fr> <01a801d907fd$bb39fbc0$88ffa8c0@Win7VM> <3137b9f2-ce47-ce5-955b-36d5d06b7b71@panix.com> <024b01d90849$8e685fa0$88ffa8c0@Win7VM> <d0962b6-b940-1e30-4a76-ca5362b19a6f@panix.com> <02b201d908bc$51231db0$88ffa8c0@Win7VM>
 <b09186d2-5221-478-43dd-3c85b236516@panix.com> <02de01d908e9$bbaf4b90$88ffa8c0@Win7VM>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi Glen,

I'm not sure that version of espeak can change voices.  That's an old
version of espeak.



Jude <jdashiel at panix dot com> "There are four boxes to be used in
defense of liberty:
 soap, ballot, jury, and ammo. Please use in that order."
-Ed Howdershelt (Author, 1940)

.

On Mon, 5 Dec 2022, K0LNY_Glenn wrote:

> Hi Jude,
> espeak-ng --version says something like bad command or filename
> and just espeak says:
> 1.48.15
> Glenn
> ----- Original Message -----
> From: "Jude DaShiell" <jdashiel@panix.com>
> To: "K0LNY_Glenn" <glenn@ervin.email>; <speakup@linux-speakup.org>; "Didier
> Spaier" <didier@slint.fr>
> Sent: Monday, December 05, 2022 1:58 PM
> Subject: Re: change eSpeak Default Voice
>
>
> Try espeak --version and also try espeak-ng --version.  On slint, when you
> do that espeak-ng comes up both times as the actual software in use.
>
>
>
> Jude <jdashiel at panix dot com> "There are four boxes to be used in
> defense of liberty:
>  soap, ballot, jury, and ammo. Please use in that order."
> -Ed Howdershelt (Author, 1940)
>
> .
>
>
>

