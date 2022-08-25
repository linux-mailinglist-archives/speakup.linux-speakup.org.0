Return-Path: <speakup+bounces-649-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id F0DEE5A1C6B
	for <lists+speakup@lfdr.de>; Fri, 26 Aug 2022 00:32:31 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=panix.com header.i=@panix.com header.a=rsa-sha256 header.s=panix header.b=JKjB+AK1;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 8EE61380F3E; Thu, 25 Aug 2022 18:32:31 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 7733B380E8B
	for <lists+speakup@lfdr.de>; Thu, 25 Aug 2022 18:32:31 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 6028D380E8B; Thu, 25 Aug 2022 18:32:25 -0400 (EDT)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 4F358380E2F
	for <speakup@linux-speakup.org>; Thu, 25 Aug 2022 18:32:25 -0400 (EDT)
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4MDHlX6KRSz48Jf;
	Thu, 25 Aug 2022 18:32:24 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=panix.com; s=panix;
	t=1661466744; bh=TFhdIvrYcRUOiOc3WwvUWwi0s94LZrKQWklSXCsRvp8=;
	h=Date:From:To:cc:Subject:In-Reply-To:References;
	b=JKjB+AK1m7KIBTKJteKs8TvHdA+QK9m5bnG3PhZG0O/M7BZc5wNcYTlfihvZB080S
	 Ynqa5euu9F93B4r9Z8roiCcU0JBqoGQoi108NO7J41E4DkEj2FNPAWmLG9lLCINnny
	 esxUf7R6Iq9xHgHKtP96/M4jjL24KmpS5IPaMGoI=
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4MDHlX6899zcbc; Thu, 25 Aug 2022 18:32:24 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4MDHlX656yzcbP;
	Thu, 25 Aug 2022 18:32:24 -0400 (EDT)
Date: Thu, 25 Aug 2022 18:32:24 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: K0LNY_Glenn <glenn@ervin.email>, Chime Hart <chime@hubert-humphrey.com>
cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: hopefully some help with AntiX
In-Reply-To: <024301d8b8cc$373578c0$80ffa8c0@Win7VM>
Message-ID: <ca235979-c471-756e-6b8-56a733ad3e4@panix.com>
References: <005b01d8b764$65f690e0$80ffa8c0@Win7VM> <f1e0bff4-cbdc-1766-293-dc2558869c6b@panix.com> <022401d8b8c1$9a2c40e0$80ffa8c0@Win7VM> <022901d8b8c6$2c5c46f0$80ffa8c0@Win7VM> <363bcd12-5bd3-5749-2d6e-348ebfa9b461@panix.com> <022d01d8b8c8$57f2a780$80ffa8c0@Win7VM>
 <a66e95d1-4eef-4ede-a970-39e5af7cddd@panix.com> <8a99128b-f995-ce26-7e7a-6f1cbe869a95@hubert-humphrey.com> <024301d8b8cc$373578c0$80ffa8c0@Win7VM>
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

sid is the bleeding edge version of debian only version more dangerous is
experimental.


Jude <jdashiel at panix dot com>
"There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo. Please use in that order."
-Ed Howdershelt (Author, 1940)

.

On Thu, 25 Aug 2022, K0LNY_Glenn wrote:

> What is SID?
> I noticed antix.sid images when getting the image I'm using now, but I got
> the ISO.
> Glenn
> ----- Original Message -----
> From: "Chime Hart" <chime@hubert-humphrey.com>
> To: "Jude DaShiell" <jdashiel@panix.com>
> Cc: "K0LNY_Glenn" <glenn@ervin.email>; "Speakup is a screen review system
> for Linux." <speakup@linux-speakup.org>
> Sent: Thursday, August 25, 2022 4:42 PM
> Subject: Re: hopefully some help with AntiX
>
>
> Hi Glen-and-All: I agree with Jude, you may be missing repos. I could paste
> in
> my apt-sources list from Debian SID
> deb [arch=amd64,i386] http://ftp.us.debian.org/debian sid main contrib
> non-free
> # deb http://ftp.us.debian.org/debian sid-updates main
> deb [arch=amd64] https://download.docker.com/linux/debian buster stable
> # deb-src [arch=amd64] https://download.docker.com/linux/debian buster
> stable
> #Adding deb-multimedia from Australia
> deb http://mirror.optus.net/deb-multimedia/ unstable main
> deb https://www.deb-multimedia.org sid main non-free
> #Adding Contrib from France
> deb http://ftp.fr.debian.org/debian sid main contrib non-free
> Back again live. Glen, its too bad some folks haven't thought to get on  a
> Zoom
> meeting-and-interactively help you live. That would seem faster than 3 days
> of
> back-and-forth, but I will say you have some great minds trying to work out
> a
> solution.
> Chime
>
>
>
>

