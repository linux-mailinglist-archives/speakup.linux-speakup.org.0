Return-Path: <speakup+bounces-1171-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id C010F94DCA1
	for <lists+speakup@lfdr.de>; Sat, 10 Aug 2024 13:53:34 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=panix.com header.i=@panix.com header.a=rsa-sha256 header.s=panix header.b=YULEXj6s;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 40864382660; Sat, 10 Aug 2024 07:53:34 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 23D743820D1
	for <lists+speakup@lfdr.de>; Sat, 10 Aug 2024 07:53:34 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 3F1633820E2; Sat, 10 Aug 2024 07:53:27 -0400 (EDT)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 813D43820B5
	for <speakup@linux-speakup.org>; Sat, 10 Aug 2024 07:53:26 -0400 (EDT)
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4Wgzgn3ynNzpXY;
	Sat, 10 Aug 2024 07:53:25 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=panix.com; s=panix;
	t=1723290805; bh=FvBMrf6dKQonIJh7/pyYOjGQMIKg/3FyQWz3xbaSd3E=;
	h=Date:From:To:Subject:In-Reply-To:References;
	b=YULEXj6s5OzuC7rZbYHZPJzG+5YBvzcDN3qg/LAKf7tPqjzEQ/BG9620lm7RwRUwk
	 OAoRgmKJF3jVN7e5MqSPyZns9nj/Qyt4rxj/cyq7+WKE/WNgy/otjlTUGlgp+C+zBD
	 /JQp7J20Xn5o7BHJpci+fzciXGODYtogvsN4bkyE=
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4Wgzgn3jwRzcbc; Sat, 10 Aug 2024 07:53:25 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4Wgzgn3jQlzcbV;
	Sat, 10 Aug 2024 07:53:25 -0400 (EDT)
Date: Sat, 10 Aug 2024 07:53:25 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: Janina Sajka <janina@rednote.net>, speakup@linux-speakup.org
Subject: Re: Asahi Linux
In-Reply-To: <ZrdO6W1DFBfuuzuS@rednote.net>
Message-ID: <eb53ee80-4ff6-658f-bf22-80529a6e99b4@panix.com>
References: <ZrdO6W1DFBfuuzuS@rednote.net>
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

Check packages-list if one is available since that usually has what  comes
in the installer.


--
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

On Sat, 10 Aug 2024, Janina Sajka wrote:

> Anyone know whether any flavor of Asahi Linux includes Speakup support?
> I thought I'd ask before digging into their github!
>
> I'm wanting to get some flavor of Linux CLI working in VMware on my M2
> Macbook.
>
> All suggestions welcome, and my apologies if I've spammed you with this
> question on the several lists we're both subscribed to! :)
>
> Janina
>
> PS & FYI: Asahi Linux is reverse engineered to run on Apple silicon:
>
> https://asahilinux.org
>
>
>

