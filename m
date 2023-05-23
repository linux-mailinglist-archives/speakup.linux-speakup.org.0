Return-Path: <speakup+bounces-929-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 19DE870E18F
	for <lists+speakup@lfdr.de>; Tue, 23 May 2023 18:20:18 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=carmickle.com header.i=@carmickle.com header.a=rsa-sha256 header.s=2021081500 header.b=kUx3Y+IS;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id BDF06381148; Tue, 23 May 2023 12:20:13 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 9986F381148
	for <lists+speakup@lfdr.de>; Tue, 23 May 2023 12:20:13 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 3D0213823CD; Tue, 23 May 2023 12:20:04 -0400 (EDT)
Received: from bullseyemail.carmickle.com (bullseyemail.carmickle.com [50.116.61.232])
	by befuddled.reisers.ca (Postfix) with ESMTPS id D93E2381148
	for <speakup@linux-speakup.org>; Tue, 23 May 2023 12:20:03 -0400 (EDT)
Received: from smtpclient.apple (unknown [IPv6:2600:4040:5dba:7e00:b55e:de41:6950:d494])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by bullseyemail.carmickle.com (Postfix) with ESMTPSA id ACC6A591F2E6;
	Tue, 23 May 2023 16:19:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=carmickle.com;
	s=2021081500; t=1684858768;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=jHT/fk3WbIc4GV/pVAwrtuST3Y0AsbqPeSxvTUw6LsA=;
	b=kUx3Y+ISJkzpHw16dWdXEHa/v/SM8Bo0UwKaJ2J3gjAc10y2kBknsKObAg6uAu9KX8cxDL
	z1ZdJm6NwVokAcu9gcqI16ksXyT/sNB/RsFkahBWbe6sYhBkAEfUmnLKlOApK2+mSK7+hu
	/3bykUZRKLYTnmh+cSeSOrcnBmIXOQ8=
Content-Type: text/plain;
	charset=us-ascii
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3731.500.231\))
Subject: Re: Can I Increase a Buffer size in Speakup?
From: Frank Carmickle <frank@carmickle.com>
In-Reply-To: <2b29145e-c2f5-feec-9fd8-c312b1b089ae@hubert-humphrey.com>
Date: Tue, 23 May 2023 12:19:28 -0400
Cc: speakup@linux-speakup.org
Content-Transfer-Encoding: quoted-printable
Message-Id: <BD451480-536C-4F58-8D27-F72E75DD208C@carmickle.com>
References: <2b29145e-c2f5-feec-9fd8-c312b1b089ae@hubert-humphrey.com>
To: Chime Hart <chime@hubert-humphrey.com>
X-Mailer: Apple Mail (2.3731.500.231)
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi Chime,

On May 20, 2023, at 17:29, Chime Hart <chime@hubert-humphrey.com> wrote:
>=20
> Hi All: This list has been `quite quiet lately. I am temporarily =
useing a laptop with Voxin. Since I am in Alpine with 135 lines, I tend =
to use a num-pad 9 to rapidly scroll through text. Well, more often =
lately, I suppose a buffer is over-flowing,=20

I don't think so. It seems more likely that the control character to =
quiet the speech is getting dropped.

I do not know a way of changing the output buffer of speakup, but I =
think you'd want to make it smaller not larger, to increase =
interactivity. I'd be very surprised if the problem is in the text and =
control characters from speakup reaching the speechd-up buffer. It's =
much more likely that the audio driver isn't receiving the flush =
command.

I too am having issues with software synthesis using speakup. I'll let =
the list know when I've made any progress towards something better .

--FC

> as sometimes for several minutes it will continue reading, no =
keystrokes or tty changing will stop it until its finished. I even tried =
altering the niceness of speakup-and-voxin all the way from 10 to minus =
20. Didn't seem to make any difference. As it is with Voxin, I still =
hear a smijin of a previous line jumbled with a current line. I did try =
an embedded Alison voice, but last November on a trip to NJ, speech =
mysteriously quit, no errors in the log, couldn't get it back with
> sudo ./speechd-up
> Anyway, I am not exactly thrilled with performance of software speech =
on this laptop. Can any1 please suggest any settings or improvements, =
but please `no e speak. Thanks so  much in advance
> Chime
>=20


