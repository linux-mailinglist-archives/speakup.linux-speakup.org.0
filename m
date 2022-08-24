Return-Path: <speakup+bounces-610-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 468AC59F22D
	for <lists+speakup@lfdr.de>; Wed, 24 Aug 2022 05:50:10 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=panix.com header.i=@panix.com header.a=rsa-sha256 header.s=panix header.b=ZiZhiPhg;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 75756380A01; Tue, 23 Aug 2022 23:50:09 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 55DA9380852
	for <lists+speakup@lfdr.de>; Tue, 23 Aug 2022 23:50:09 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id C2C913808C5; Tue, 23 Aug 2022 23:50:02 -0400 (EDT)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 0E8DE380630
	for <speakup@linux-speakup.org>; Tue, 23 Aug 2022 23:50:02 -0400 (EDT)
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4MCBtw5qQzz2kWH;
	Tue, 23 Aug 2022 23:50:00 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=panix.com; s=panix;
	t=1661313000; bh=A9uOLeJ193NetZAgUpSPjv5FiZCE4mqoNYVGqSm1PUw=;
	h=Date:From:To:Subject:In-Reply-To:References;
	b=ZiZhiPhgJ2MqmXbOqoyT8zMGTX+Msnm7oTSZM45qpe/nuf2CwhD7fKjruZc/B/jRd
	 gkZk+El3sQ0CgqMe4ROskPj18PNU1voBeJ24C09ECtJp2MbF5X+AVJr7dgMO/EZIKn
	 c5G/qLwY5YhsN8PDis3z4+ApS0dh9kavCXCN6GG0=
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4MCBtw5Hxlzcbc; Tue, 23 Aug 2022 23:50:00 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4MCBtw551XzcbC;
	Tue, 23 Aug 2022 23:50:00 -0400 (EDT)
Date: Tue, 23 Aug 2022 23:50:00 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: K0LNY_Glenn <glenn@ervin.email>, 
    "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: hopefully some help with AntiX
In-Reply-To: <005b01d8b764$65f690e0$80ffa8c0@Win7VM>
Message-ID: <f1e0bff4-cbdc-1766-293-dc2558869c6b@panix.com>
References: <005b01d8b764$65f690e0$80ffa8c0@Win7VM>
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

You could try fenrir with git or pipi whichever is available.


Jude <jdashiel at panix dot com> "There are four boxes to be used in
defense of liberty:
 soap, ballot, jury, and ammo. Please use in that order."
-Ed Howdershelt (Author, 1940)

.

On Tue, 23 Aug 2022, K0LNY_Glenn wrote:

> Hello,
> So I successfully got a live version of AntiX 19.5 base 386 on my Asus701
> I am having trouble getting in with SSH.
> When I do speaker test on the actual netbook, it works, so I know the audio
> works.
> Neither espeak test, or espeak-ng test, worked.
> It is Debian based, so I did apt update and most of the following things, I
> tried both with sudo and without.
> On the computer trying to get in, it tells me connection refused.
> It is on the network as antix1
> Everything I read on-line suggest it should have openssh installed, but I
> ran the apt install for openssh-server -y just in case.
> I tried systemctl start openssh
> and I tried system restart openssh
> I guess it is possible espeak-NG may not be in its repository.
> Then espeeakup wouldn't be there either.
> If I had speakup going on the AntiX, or an SSH connection, I could start
> getting it going.
>
> Anyone have any ideas for this?
> This would be good on the Asus 701, it's using Buster, which isn't that
> old.Thanks for any assistance.
>
> Glenn
>
>
>

