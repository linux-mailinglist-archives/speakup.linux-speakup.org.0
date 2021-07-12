Return-Path: <speakup+bounces-242-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id CA36C3C463B
	for <lists+speakup@lfdr.de>; Mon, 12 Jul 2021 11:23:00 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 2DCC2380F9E; Mon, 12 Jul 2021 05:22:30 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=opopanax.net header.i=@opopanax.net header.a=rsa-sha256 header.s=dkim header.b=vda8AFBX;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 1AEDB380F59
	for <lists+speakup@lfdr.de>; Mon, 12 Jul 2021 05:22:30 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 09969380F61; Mon, 12 Jul 2021 05:22:24 -0400 (EDT)
Received: from mail.opopanax.net (unknown [66.172.33.24])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 285A2380F2F
	for <speakup@linux-speakup.org>; Mon, 12 Jul 2021 05:22:19 -0400 (EDT)
Received: from mail.opopanax.net (localhost [127.0.0.1])
	by mail.opopanax.net (Postfix) with ESMTP id 4GNdYg1hyTz8tX9
	for <speakup@linux-speakup.org>; Mon, 12 Jul 2021 09:21:27 +0000 (UTC)
Authentication-Results: mail.opopanax.net (amavisd-new);
	dkim=pass (2048-bit key) reason="pass (just generated, assumed good)"
	header.d=opopanax.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=opopanax.net; h=
	user-agent:x-mailer:references:in-reply-to
	:content-transfer-encoding:content-type:mime-version:date
	:subject:to:from:message-id; s=dkim; t=1626081685; x=1628673686;
	 bh=zTHKuukqnrsGaM5xIaIE1f+HsHvv1GqFvmYFnwetWDA=; b=vda8AFBX0UAv
	OfCq/ZxRMxjVw9KqUuqTpjZtiD+gPf0mg13GR4JyKVhUOwJOPyz31jtEYrTwMKz9
	F3mUVOB3H3ABoKxrIrbdOW9NqEWUjwy767vZX4ErLELZo7CwOM8/SVSrFNDWJKK+
	vX/7fB+SA4CMhbRrVixWShkPD+RsHds50qtBKGJGc3jq/hgQARnKKozFJ1iqqOuX
	EzzYV2mgXLK2EHD19CmYmPfPd2cDW0NbuNSZSyAACPnwqmZ9cbbPeQyhCx9Dr+dV
	dYzeCED7QbYHPnknJyvJ7U+kB9OlYKmLPMGdkvaKyhv1IR3634w9syKgNcwQdKNH
	44vkgXeGOA==
X-Virus-Scanned: Debian amavisd-new at mail
Received: from mail.opopanax.net ([127.0.0.1])
	by mail.opopanax.net (mail.opopanax.net [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id 5tgcSwIWjQst for <speakup@linux-speakup.org>;
	Mon, 12 Jul 2021 09:21:25 +0000 (UTC)
Received: from [192.168.1.100] (208-107-97-40-dynamic.midco.net [208.107.97.40])
	by mail.opopanax.net (Postfix) with ESMTPSA id 4GNdYd2WWbz8tX8
	for <speakup@linux-speakup.org>; Mon, 12 Jul 2021 09:21:25 +0000 (UTC)
Message-ID: <20210712.092123.960.7@[192.168.1.100]>
From: "Rob Hudson" <rob_hudson3182@opopanax.net>
To: speakup@linux-speakup.org
Subject: Re: Installing OS on rackmount server
Date: Mon, 12 Jul 2021 04:21:23 -0500
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
In-Reply-To: <202107120157.16C1v0xd029712@nfbcal.org>
References: <202107120157.16C1v0xd029712@nfbcal.org>
X-Mailer: POP Peeper Pro (5.1.2.0)
User-Agent: POP Peeper Pro (5.1.2.0)
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Thanks. I appear to have ram problems on this thing now. I hear three long =
beeps, and according to google that means a ram problem. So now I have to =
test all 12 sticks. Wonderful eh?

----- Original Message -----
From: Brian Buhrow <buhrow@nfbcal.org>
To: "Rob Hudson" <rob_hudson3182@opopanax.net>,        "speakup is a screen =
review system for Linux." <speakup@linux-speakup.org>
Cc: buhrow@nfbcal.org
Date: Sun, 11 Jul 2021 18:57:00 -0700
Subject: Re: Installing OS on rackmount server

> 	hello Rob.  It seems to me you have several options for getting this =
machine installed.  While
> I can't give details for all of them, I'll try to give you enough so you =
can  pursue them on
> your own.
> 
> 1.  If you know how to set up a tftp server and configure a dhcp server, =
then you have all you
> need to set up a PXE server to boot an image from that server.  If you =
learn this technique for
> bootstrapping a new server, I think you'll find this gives you the most =
flexibility for
> switching images in the future, as well as bringing up new machines down =
the road.
> 
> 2.  Install a USB hub, allowing you to  attach an external drive, braille =
display and a
> keyboard at the same time.  Attach the braille display and the keyboard =
to the hub, plug it
> into one of the USB ports on the machine you're installing to, then plug =
the external hard
> drive, the one you're imaging from, into the remaining port.
> 
> 3.  If you have a second machine with a serial port, and if the first =
machine has a serial
> port, perform a serial port based installation.  That is, use the serial =
port as your console,
> and run your braille display and keyboard from the second machine.
> 
> Hope these ideas help.
> 
> -Brian
> 
> 

