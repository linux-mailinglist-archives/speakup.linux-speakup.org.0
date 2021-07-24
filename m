Return-Path: <speakup+bounces-256-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 7CB1E3D4A86
	for <lists+speakup@lfdr.de>; Sun, 25 Jul 2021 00:52:49 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id E7A16380C71; Sat, 24 Jul 2021 18:52:48 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=panix.com header.i=@panix.com header.a=rsa-sha256 header.s=panix header.b=ZDlLn0fe;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id D4EE8380AC8
	for <lists+speakup@lfdr.de>; Sat, 24 Jul 2021 18:52:48 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 2A45F380AC8; Sat, 24 Jul 2021 18:52:44 -0400 (EDT)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by befuddled.reisers.ca (Postfix) with ESMTPS id D9B0F380AC8
	for <speakup@linux-speakup.org>; Sat, 24 Jul 2021 18:52:43 -0400 (EDT)
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4GXM096926z2p2P;
	Sat, 24 Jul 2021 18:52:41 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=panix.com; s=panix;
	t=1627167161; bh=dL1ErfGGg8+NiO9f+2TZ2bHXAQRWq/+Esrph2AKOXXU=;
	h=Date:From:To:Subject:In-Reply-To:References;
	b=ZDlLn0fedc7kWm4nVF96YoLmClFXAQapl3FCgo41dKwP9XYcT5lrz07OC+t+zq+oV
	 JkBiufxpNhiwWpK1pwgJL4YgDGBkXvWp9n1VKn805m1Z4Aju6AvEUx5uCeDY4sYH9I
	 I3MOJ4Zx3NW0M0G+VxPgDH+2JGQ4VFTZzuwt2CxU=
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4GXM0952Wmzcbc; Sat, 24 Jul 2021 18:52:41 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4GXM094W1qzcbW;
	Sat, 24 Jul 2021 18:52:41 -0400 (EDT)
Date: Sat, 24 Jul 2021 18:52:41 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: Didier Spaier <didier@slint.fr>, speakup@linux-speakup.org
Subject: Re: Speakup on Arch Linux
In-Reply-To: <4bf62c3a-5683-93d1-26fa-75fb6dad3bba@slint.fr>
Message-ID: <alpine.NEB.2.23.451.2107241850450.14437@panix1.panix.com>
References: <c5c14706-16d7-c9bf-9b1e-b72e52b37889@pcdesk.net> <YPwaIT2oJm+7+Hpl@rednote.net> <4bf62c3a-5683-93d1-26fa-75fb6dad3bba@slint.fr>
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

I finally got archlinux talking having forgotten some post-configuration
details I needed to refresh memory with my notes.  I'll need to rewrite
those notes soon too since braille on originals is dying out.



