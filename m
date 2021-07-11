Return-Path: <speakup+bounces-230-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 22A783C3BA2
	for <lists+speakup@lfdr.de>; Sun, 11 Jul 2021 12:49:38 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id CFF1A380F88; Sun, 11 Jul 2021 06:49:36 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=opopanax.net header.i=@opopanax.net header.a=rsa-sha256 header.s=dkim header.b=hIkC/TnF;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id BDEEF380BB2
	for <lists+speakup@lfdr.de>; Sun, 11 Jul 2021 06:49:36 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id A5746380BD8; Sun, 11 Jul 2021 06:49:31 -0400 (EDT)
Received: from mail.opopanax.net (mail.opopanax.net [66.172.33.24])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 27B6E380BA0
	for <speakup@linux-speakup.org>; Sun, 11 Jul 2021 06:49:31 -0400 (EDT)
Received: from mail.opopanax.net (localhost [127.0.0.1])
	by mail.opopanax.net (Postfix) with ESMTP id 4GN3Yj1s5wz8tX9
	for <speakup@linux-speakup.org>; Sun, 11 Jul 2021 10:49:29 +0000 (UTC)
Authentication-Results: mail.opopanax.net (amavisd-new);
	dkim=pass (2048-bit key) reason="pass (just generated, assumed good)"
	header.d=opopanax.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=opopanax.net; h=
	user-agent:x-mailer:content-transfer-encoding:content-type
	:mime-version:date:subject:to:from:message-id; s=dkim; t=
	1626000568; x=1628592569; bh=PEoVmCGYotHCkhhO2n+Lc5XRJEpcpMwf1NY
	t8XumR5Y=; b=hIkC/TnF8ctXGyzPa5MLCz864kXxb5RGeKY6KKvdK8CoqT9BHB2
	lb9CoM6rRmQ+X0Upxcz3BqCcZI1T8N3pFWWMl3ywK5PN6mVyg1cltQFfiCkWDCD0
	oDAxvyDwW0OQJDAZgcQaxgHxWTxPidOXZuq1t17KINAC43JeL5CGZ8NuNLY1g67d
	fTj/UllUvl7uOsJ9gSjCtMX80xwdwy2KL31f70u0yDmKrZnr3jV/VsYNtfbyfNGU
	3XXwOHNp3Enliy/HbFY7AAsrBVIZR+HkRD4MIdNeDN9PM/8JBXD9k/5WHuEVKeIP
	PwNBntQatlr3/VrVmD07/thZaDn/umkD4Nw==
X-Virus-Scanned: Debian amavisd-new at mail
Received: from mail.opopanax.net ([127.0.0.1])
	by mail.opopanax.net (mail.opopanax.net [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id tVhJA_bti6BL for <speakup@linux-speakup.org>;
	Sun, 11 Jul 2021 10:49:28 +0000 (UTC)
Received: from [192.168.1.100] (208-107-97-40-dynamic.midco.net [208.107.97.40])
	by mail.opopanax.net (Postfix) with ESMTPSA id 4GN3Yh1GSHz8tQW
	for <speakup@linux-speakup.org>; Sun, 11 Jul 2021 10:49:28 +0000 (UTC)
Message-ID: <20210711.104927.121.1@[192.168.1.100]>
From: "Rob Hudson" <rob_hudson3182@opopanax.net>
To: "speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Installing OS on rackmount server
Date: Sun, 11 Jul 2021 05:49:27 -0500
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable
X-Mailer: POP Peeper Pro (5.1.2.0)
User-Agent: POP Peeper Pro (5.1.2.0)
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Tried this on another list, got no answer, so trying here. I've got a Cisco =
rackmount that needs an OS. It's only got 2 usb ports, so I can't hook up =
a keyboard, a braille display and a linux flash drive. I'm given to =
understand the CIMC interface is inaccessible, and I have no idea how to =
set up a PXE server. Is my only option for installing an OS to connect a =
hard drive to another computer, install linux on there and then put it in =
the server?

