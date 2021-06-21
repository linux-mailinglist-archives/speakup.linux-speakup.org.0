Return-Path: <speakup+bounces-221-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id CED433AEA12
	for <lists+speakup@lfdr.de>; Mon, 21 Jun 2021 15:29:47 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id C35D6380EE1; Mon, 21 Jun 2021 09:21:16 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=panix.com header.i=@panix.com header.a=rsa-sha256 header.s=panix header.b=DKFSC91N;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id AABFF380BCF
	for <lists+speakup@lfdr.de>; Mon, 21 Jun 2021 09:21:15 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id B53D9380E17; Mon, 21 Jun 2021 09:21:10 -0400 (EDT)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by befuddled.reisers.ca (Postfix) with ESMTPS id A994F380BCF
	for <speakup@linux-speakup.org>; Mon, 21 Jun 2021 09:21:09 -0400 (EDT)
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4G7qsv1PLzz3xQK
	for <speakup@linux-speakup.org>; Mon, 21 Jun 2021 09:21:07 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=panix.com; s=panix;
	t=1624281667; bh=/4HaT0ip8G+ynOt8Y7HR83/+ZMyJaHh6ne6sVfhVOg4=;
	h=Date:From:To:Subject;
	b=DKFSC91NE6Vz8/yRmi2ODv8/eoV1klOQjkKhY/WstzCCoYPQFmpz2u3Y5ea7ctHM8
	 w6vQhsWwLYzjhr2vxCDUMLWxNENApa06XD43GvXdhUvUPFkg60AnT2SjdVfG7b6kg8
	 uHm6NeN20MBUq40/wSkxfdHskAPvL+y+fel9N/Wk=
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4G7qsv0cprzcbc; Mon, 21 Jun 2021 09:21:07 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4G7qsv0GN0zcbV
	for <speakup@linux-speakup.org>; Mon, 21 Jun 2021 09:21:06 -0400 (EDT)
Date: Mon, 21 Jun 2021 09:21:06 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: speakup@linux-speakup.org
Subject: current version of speakup crashing
Message-ID: <alpine.NEB.2.23.451.2106210917580.3058@panix1.panix.com>
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

On slint if I want to get speech running again I have to run service
restart espeakup as root.
It's only a few lines of typing that sets these crashes off.
Does any way exist to catch and log these crashes with debug material I
can use?


