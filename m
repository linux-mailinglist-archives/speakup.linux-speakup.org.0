Return-Path: <speakup+bounces-235-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id DD2A63C3BE4
	for <lists+speakup@lfdr.de>; Sun, 11 Jul 2021 13:31:54 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 2DB68380F56; Sun, 11 Jul 2021 07:31:54 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=opopanax.net header.i=@opopanax.net header.a=rsa-sha256 header.s=dkim header.b=nTC7yATD;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 185A4380EB7
	for <lists+speakup@lfdr.de>; Sun, 11 Jul 2021 07:31:54 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 39C30380EB9; Sun, 11 Jul 2021 07:31:48 -0400 (EDT)
Received: from mail.opopanax.net (mail.opopanax.net [66.172.33.24])
	by befuddled.reisers.ca (Postfix) with ESMTPS id CA145380EB5
	for <speakup@linux-speakup.org>; Sun, 11 Jul 2021 07:31:47 -0400 (EDT)
Received: from mail.opopanax.net (localhost [127.0.0.1])
	by mail.opopanax.net (Postfix) with ESMTP id 4GN4Ts4Qdwz8tX9
	for <speakup@linux-speakup.org>; Sun, 11 Jul 2021 11:31:13 +0000 (UTC)
Authentication-Results: mail.opopanax.net (amavisd-new);
	dkim=pass (2048-bit key) reason="pass (just generated, assumed good)"
	header.d=opopanax.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=opopanax.net; h=
	user-agent:x-mailer:references:in-reply-to
	:content-transfer-encoding:content-type:mime-version:date
	:subject:to:from:message-id; s=dkim; t=1626003072; x=1628595073;
	 bh=xTeRvFLpxcyrU3NCNScBhZcgdvoRhqKrBY3MzY1XMcw=; b=nTC7yATDhC8/
	xKdeS9d4u4rTFZQaf3MtxAT+bOrju3jh8wbCHVR40mg/R5Cp1oTs4Kgc/HyxkUpy
	OEV6ox3jNMJMHE9QyHJkjjhotjJx3DjyOg6IIGxI8FlU10GVH2JiZBkBhh3W+Ywg
	+5829D/DDXOIrCNe0S+3WNQie6t7WWfytbwym65tWxjURDNNvTXTWT5fP6Qon6+I
	ok7/GAqieaONLoTGB+ePSa0+jAoDgpPX9V8UxeLUXgp7WYSZ17tArEysfT87fY7M
	n9bEi3mstNcM+WFvBPVah0qAosCXL41m6zZ6rgr1h4TFEHzim8H5igd+ngdequsf
	ObRXj53aJg==
X-Virus-Scanned: Debian amavisd-new at mail
Received: from mail.opopanax.net ([127.0.0.1])
	by mail.opopanax.net (mail.opopanax.net [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id pb9tC8MN5Ors for <speakup@linux-speakup.org>;
	Sun, 11 Jul 2021 11:31:12 +0000 (UTC)
Received: from [192.168.1.100] (208-107-97-40-dynamic.midco.net [208.107.97.40])
	by mail.opopanax.net (Postfix) with ESMTPSA id 4GN4Tr1DN4z8tQW;
	Sun, 11 Jul 2021 11:31:12 +0000 (UTC)
Message-ID: <20210711.113111.244.3@[192.168.1.100]>
From: "Rob Hudson" <rob_hudson3182@opopanax.net>
To: "Chris Brannon" <chris@the-brannons.com>,
  speakup@linux-speakup.org
Subject: Re: Installing OS on rackmount server
Date: Sun, 11 Jul 2021 06:31:11 -0500
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
In-Reply-To: <87y2ad14ol.fsf@the-brannons.com>
References: <20210711.104927.121.1@[192.168.1.100]>
	<5ff69fe5-fb5b-5233-0c71-1165b9111eed@raspberryvi.org>
	<dc6281a5-97c3-b90f-3d28-bb1066d05259@poczta.onet.pl>
	<87y2ad14ol.fsf@the-brannons.com>
X-Mailer: POP Peeper Pro (5.1.2.0)
User-Agent: POP Peeper Pro (5.1.2.0)
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Is that the port which looks like an ethernet jack?

----- Original Message -----
From: Chris Brannon <chris@the-brannons.com>
To: speakup@linux-speakup.org
Date: Sun, 11 Jul 2021 04:16:26 -0700
Subject: Re: Installing OS on rackmount server

> Michal Zegan <webczat_200@poczta.onet.pl> writes:
> 
> > serial console >>> any screenreader for anything text mode IMO. do you
> > have a serial console and any way to make it usable?
> 
> Any rackmount server worth owning is going to have IPMI with SOL (serial =
over
> LAN).  When I set up our rackmount server late last year, we put a DHCP
> server and ipmitool on a Raspberry Pi and plugged that puppy into the
> IPMI network interface on the server.  The Pi handed out an IP address
> for the server's IPMI over DHCP, and we logged into the Pi through ssh
> to run ipmitool to configure the server.  In this setup, the Pi was
> connected to our home network through wifi.
> 
> You may need to enable serial over LAN in the BIOS.  We got lucky and it
> was pre-configured for us.
> 
> Serial over LAN also gives you a serial console for the BIOS, once it is
> enabled.  You get full boot-up to shutdown access.
> 
> So hopefully your server has IPMI and SOL.
> 
> -- Chris
> 
> 

