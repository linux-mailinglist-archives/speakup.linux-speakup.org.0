Return-Path: <speakup+bounces-1147-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id EA529927760
	for <lists+speakup@lfdr.de>; Thu,  4 Jul 2024 15:45:14 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=panix.com header.i=@panix.com header.a=rsa-sha256 header.s=panix header.b=GA/FXlqq;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 1EF27C81C78; Thu, 04 Jul 2024 09:45:14 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 02978C80A5A
	for <lists+speakup@lfdr.de>; Thu, 04 Jul 2024 09:45:14 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 0ACE4C80A68; Thu, 04 Jul 2024 09:45:06 -0400 (EDT)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 41F7EC80A5A
	for <speakup@linux-speakup.org>; Thu, 04 Jul 2024 09:45:05 -0400 (EDT)
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4WFHvg4T9ZzyrT
	for <speakup@linux-speakup.org>; Thu,  4 Jul 2024 09:45:03 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=panix.com; s=panix;
	t=1720100703; bh=5WSpPNkRULFXxyYB8tXpasJHWxO9w/iPfz+gQjNQ9DQ=;
	h=Date:From:To:Subject;
	b=GA/FXlqqJXHnZPlLSQXO1tUK0yXXLx5i8PddhiV+g/DWne6EI9RekRR3R2SxCUqrd
	 DgRGuhxa2/Xr7RVzhjQBPBoNvz/b6nwj5UBVTiGCPEMNv2dIjaFF3gHajGORyjH+n9
	 L3UiLso/GLBM6dc28xBjwLMrpPRPVzcEM7UKJTzI=
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4WFHvg4GCkzcbc; Thu,  4 Jul 2024 09:45:03 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4WFHvg4BN0zcbC
	for <speakup@linux-speakup.org>; Thu,  4 Jul 2024 09:45:03 -0400 (EDT)
Date: Thu, 4 Jul 2024 09:45:03 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: speakup@linux-speakup.org
Subject: re: devuan daedelus and speakup
Message-ID: <14439926-6631-5be8-ae20-5349f21b480b@panix.com>
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

What is to be done to turn speakup on in devuan daedelus so it can be
installed with speakup talking?  I got the minimal iso and don't know if
this one can install with speakup.  I used the s parameter at the grub
beep and that didn't get speakup talking.  If that is supposed to be how
it works I downloaded a corrupt iso.


--
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

