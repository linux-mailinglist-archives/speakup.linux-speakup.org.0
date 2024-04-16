Return-Path: <speakup+bounces-1101-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id E7A1B8A7261
	for <lists+speakup@lfdr.de>; Tue, 16 Apr 2024 19:30:46 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=panix.com header.i=@panix.com header.a=rsa-sha256 header.s=panix header.b=DTsgyZKF;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 84CA1C81C7A; Tue, 16 Apr 2024 13:30:46 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 668F1C80A25
	for <lists+speakup@lfdr.de>; Tue, 16 Apr 2024 13:30:46 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 1C213C80A96; Tue, 16 Apr 2024 13:30:38 -0400 (EDT)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by befuddled.reisers.ca (Postfix) with ESMTPS id D292DC80A25
	for <speakup@linux-speakup.org>; Tue, 16 Apr 2024 13:30:37 -0400 (EDT)
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4VJrf80YW1z4KQj;
	Tue, 16 Apr 2024 13:30:24 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=panix.com; s=panix;
	t=1713288624; bh=nCS5wo4SKoamnPI5ac73GmcxXgOtvXoWmuoNeerRVdM=;
	h=Date:From:To:Subject:In-Reply-To:References;
	b=DTsgyZKFsZmcTdb/bilfpwxww+gHk1hNbQzHrQeawlFitSQe8N0/f9U37i/dHhnFT
	 dOSSzpX9lGzuLDCm7T1/lGWD1WpVcbI4y2cC6+/65VCHeJmz9LwGEiVxNt4KgC0wyj
	 N7CDcWDQbxwGidxVwI20vAz8M9v6AEAp7E0dd5vU=
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4VJrf80KfFzcbc; Tue, 16 Apr 2024 13:30:24 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4VJrf80GGDzcbC;
	Tue, 16 Apr 2024 13:30:24 -0400 (EDT)
Date: Tue, 16 Apr 2024 13:30:24 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: Chime Hart <chime@hubert-humphrey.com>, speakup@linux-speakup.org
Subject: Re: How Can I Enable Speakup in Arch?
In-Reply-To: <5f590a48-de70-df83-f932-7c8b45f20c9d@hubert-humphrey.com>
Message-ID: <018d835d-9ff8-e6cb-1cb3-d3182c40c3ec@panix.com>
References: <5f590a48-de70-df83-f932-7c8b45f20c9d@hubert-humphrey.com>
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

systemctl disable fenrir-screenreader then
Archlinux needs espeak and
espeakup packages installed speakup-tools is
optional.
Then systemctl enable espeakup and reboot.
Hope this helps.

-- 
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

On Tue, 16 Apr 2024, Chime Hart wrote:

> Hi All: I am out of town on a laptop, which we recently switched from Debian
> to Arch. I wanted to try Fenrir as it has some options which I like. However,
> as I am mostly reading my Alpine mail remotely, I am having alot of issues
> which I can certainly bringup with Storm. Meanwhile, can any1 please inform if
> there are easy ways on the fly of switching to Speakup? I just ran a locate,
> found 14 Speakup items, including modules for 6.8.5. I realize at very least I
> would need to hit an insert+q to turn off Fenrir. Thanks so much in advance.
> Chime
>
>

