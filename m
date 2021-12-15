Return-Path: <speakup+bounces-337-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id BD3E6475BD1
	for <lists+speakup@lfdr.de>; Wed, 15 Dec 2021 16:28:45 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 7798C380A01; Wed, 15 Dec 2021 10:28:44 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 6426D380A01
	for <lists+speakup@lfdr.de>; Wed, 15 Dec 2021 10:28:44 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id ED8C4380BBF; Wed, 15 Dec 2021 10:28:39 -0500 (EST)
Received: from bullseyemail.carmickle.com (bullseyemail.carmickle.com [50.116.61.232])
	by befuddled.reisers.ca (Postfix) with ESMTPS id DEBFA3805F1
	for <speakup@linux-speakup.org>; Wed, 15 Dec 2021 10:28:39 -0500 (EST)
Received: from fcmbp14.carmickle.com (fcmbp14.carmickle.com [IPv6:2001:470:1f07:6f1:ee1a:59ff:fe3d:a9f3])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by bullseyemail.carmickle.com (Postfix) with ESMTPSA id 3C47635B578D
	for <speakup@linux-speakup.org>; Wed, 15 Dec 2021 15:28:37 +0000 (UTC)
From: Frank Carmickle <frank@carmickle.com>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.21\))
Subject: espeakup not speaking screen review from speakup in Debian sid
 20211215 while screen refreshing to quickly
Message-Id: <6C488A97-ABC4-42AE-96FF-20B10156191C@carmickle.com>
Date: Wed, 15 Dec 2021 10:28:32 -0500
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
X-Mailer: Apple Mail (2.3445.104.21)
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi all,

I've been noticing a problem with speakup/espeakup/espeak-ng, across =
kernels 5.10 5.14 and now 5.15. When I write a lot of output to a =
screen, say dmesg without a pager, screen review stops working for a few =
seconds. I know speakup is still responding because the tones are played =
when navigating by word when moving to a new line. The speech is =
interrupted appropriately but it will not speak again for a few seconds.

Has anyone else experienced this? Does anyone have an idea of where to =
look to help sort this out.

I very much liked the former functionality of being able to press a key =
to momentarily flush the buffer and pick up reading the screen =
immediately.

Thanks all,
--FC


