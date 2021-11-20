Return-Path: <speakup+bounces-330-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 58C61457ABC
	for <lists+speakup@lfdr.de>; Sat, 20 Nov 2021 04:22:06 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; secure) header.d=comcast.net header.i=@comcast.net header.a=rsa-sha256 header.s=20190202a header.b=yrfreVPB;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 2DE4D380C76; Fri, 19 Nov 2021 22:22:05 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 1BC783809A3
	for <lists+speakup@lfdr.de>; Fri, 19 Nov 2021 22:22:05 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 02FEF380B19; Fri, 19 Nov 2021 22:21:59 -0500 (EST)
Received: from resqmta-ch2-08v.sys.comcast.net (resqmta-ch2-08v.sys.comcast.net [69.252.207.40])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 8441C380961
	for <speakup@linux-speakup.org>; Fri, 19 Nov 2021 22:21:58 -0500 (EST)
Received: from resomta-ch2-01v.sys.comcast.net ([69.252.207.97])
	by resqmta-ch2-08v.sys.comcast.net with ESMTP
	id oGrbm7Cmdlhj7oGuymQoXH; Sat, 20 Nov 2021 03:19:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=comcast.net;
	s=20190202a; t=1637378396;
	bh=XqFVBO0nQUZO3AV34/kPgWV1sLRzUGc0KQN4GjNzZZ8=;
	h=Received:Received:Date:From:To:Message-ID:Subject:MIME-Version:
	 Content-Type;
	b=yrfreVPBIch0qOFd6hd6Wukh9RZixHouFJCuRjhCmQPPCfmzmG7oLFadc7eJ79zI5
	 1cgzK+O1LAJJNPWq+Hl+zlnxSoWLBIwagcrx5XE9vTZhyey3Ae3eMhJAN4I3bmTiyQ
	 owVXTFdONWj6QYTOHL+rfnvwTxIQ6LKcCnOMbNiSVBZOteo96VQJYadjOBTpyzpi13
	 n6Ka6RmJCWdEbpVxzJhu+Uj6qX/WjzYJ0pHrE5xsDvgRwF6gtSi9gMhLhZHUk8WT6H
	 Ppwz7WLAa75MpBpe2qQfNtM416Swai+Qjx1fsmFiF+VL12BOjQ7vzGBH50dVV6gBd9
	 Y0bjfg3FuVNCA==
Received: from localhost ([IPv6:2601:647:4701:1370:ca3:22e0:1653:75dd])
	by resomta-ch2-01v.sys.comcast.net with ESMTPSA
	id oGujm5HtOYgkcoGuxmgehe; Sat, 20 Nov 2021 03:19:56 +0000
X-Xfinity-VMeta: sc=0.00;st=legit
Date: Fri, 19 Nov 2021 19:20:04 -0800 (PST)
From: Mike Keithley <mlkeithley@comcast.net>
To: speakup@linux-speakup.org
Message-ID: <228234727.2.1637378390667@localhost>
Subject: speech/braille live rescue?
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain;charset=utf-8
Content-Transfer-Encoding: 7bit
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Which linux rescue systems have speech/braille as a live bootable image I can put on a USB stick?

