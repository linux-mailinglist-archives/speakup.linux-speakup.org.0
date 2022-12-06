Return-Path: <speakup+bounces-905-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 0D9F4643C3B
	for <lists+speakup@lfdr.de>; Tue,  6 Dec 2022 05:24:40 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=panix.com header.i=@panix.com header.a=rsa-sha256 header.s=panix header.b=SALsGXYn;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 29232382AE8; Mon,  5 Dec 2022 23:24:39 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 08E56382A88
	for <lists+speakup@lfdr.de>; Mon,  5 Dec 2022 23:24:39 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id D79A0382AB1; Mon,  5 Dec 2022 23:24:29 -0500 (EST)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by befuddled.reisers.ca (Postfix) with ESMTPS id BD1A2382A78
	for <speakup@linux-speakup.org>; Mon,  5 Dec 2022 23:24:29 -0500 (EST)
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4NR6kh6mvpz4G98;
	Mon,  5 Dec 2022 23:24:28 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=panix.com; s=panix;
	t=1670300669; bh=5P7fpZ7Otgagryb7eW2MlO0/a5qZhGBgzZ/zPoblpCE=;
	h=Date:From:To:Subject:In-Reply-To:References;
	b=SALsGXYn1rvu/ET8cede39A6ITa8AU9dWFePOLi4bQ+tqNI1esaD81+Gu+qcJrg+H
	 Oh4cr0FIuChu9PCzu33c2VL31FouzfN6WAJ7AE4p7xgkSzZOAor+dbXEarR9ZvKlzK
	 ZBR1O4wpSFvLwr20IRyge7PH+/jStbxRoh9h0ZbQ=
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4NR6kh6GtGzcbc; Mon,  5 Dec 2022 23:24:28 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4NR6kh5t1SzcbC;
	Mon,  5 Dec 2022 23:24:28 -0500 (EST)
Date: Mon, 5 Dec 2022 23:24:28 -0500
From: Jude DaShiell <jdashiel@panix.com>
To: K0LNY_Glenn <glenn@ervin.email>, speakup@linux-speakup.org, 
    Didier Spaier <didier@slint.fr>
Subject: Re: change eSpeak Default Voice
In-Reply-To: <033701d90925$f21199e0$88ffa8c0@Win7VM>
Message-ID: <8799748d-14f1-d7b8-14d5-77fc22e1a26@panix.com>
References: <013f01d9074d$551a6650$88ffa8c0@Win7VM> <5ab5197f-f3c3-c7f1-b497-0e702525d2cd@slint.fr> <01a801d907fd$bb39fbc0$88ffa8c0@Win7VM> <3137b9f2-ce47-ce5-955b-36d5d06b7b71@panix.com> <024b01d90849$8e685fa0$88ffa8c0@Win7VM> <d0962b6-b940-1e30-4a76-ca5362b19a6f@panix.com>
 <02b201d908bc$51231db0$88ffa8c0@Win7VM> <b09186d2-5221-478-43dd-3c85b236516@panix.com> <02de01d908e9$bbaf4b90$88ffa8c0@Win7VM> <37169af6-5d45-5bcf-2770-8c23ed37f02e@panix.com> <02e301d908ea$7ef69900$88ffa8c0@Win7VM> <40789e6d-d4d-8250-2f54-ba2d63d52be@panix.com>
 <02f301d908f4$d6abdc50$88ffa8c0@Win7VM> <7a4ffbe-a86-80ac-c2f4-52c753e549fe@panix.com> <030401d908fc$a924ead0$88ffa8c0@Win7VM> <9bc8719d-4677-4fec-d1c6-9d3bc8139cb0@panix.com> <030a01d908fd$4d714fc0$88ffa8c0@Win7VM> <796a3940-9bf-33a3-f6f-e5b49a85aae@p
 anix.com> <031d01d9091f$a1fd2ba0$88ffa8c0@Win7VM> <c75a9d21-e0c1-5d82-ea80-2f18602d47f9@panix.com > <033701d90925$f21199e0$88ffa8c0@Win7VM>
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

espeak-ng --list may work better.



Jude <jdashiel at panix dot com>
"There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo. Please use in that order."
-Ed Howdershelt (Author, 1940)

.

On Mon, 5 Dec 2022, K0LNY_Glenn wrote:

> Well I did espeak-ng --help and it says to use list to list the available
> voices, but just putting list after espeak-ng only speaks list.
> I tried voices=list and that didn't work.
> I tried voices=>list, all after entering espeak-ng and a space between them.
> Glenn
> ----- Original Message -----
> From: "Jude DaShiell" <jdashiel@panix.com>
> To: "K0LNY_Glenn" <glenn@ervin.email>; <speakup@linux-speakup.org>; "Didier
> Spaier" <didier@slint.fr>
> Sent: Monday, December 05, 2022 9:13 PM
> Subject: Re: change eSpeak Default Voice
>
>
> Tell espeak-ng where voices are using espeak-ng
> --path=/usr/lib/i386-linux-gnu/espeak-ng/data/voices/mb/
>
>
>
> Jude <jdashiel at panix dot com>
> "There are four boxes to be used in defense of liberty:
>  soap, ballot, jury, and ammo. Please use in that order."
> -Ed Howdershelt (Author, 1940)
>
> .
>
>
>

