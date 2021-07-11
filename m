Return-Path: <speakup+bounces-234-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id A8E5B3C3BBE
	for <lists+speakup@lfdr.de>; Sun, 11 Jul 2021 13:16:48 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 06676380F56; Sun, 11 Jul 2021 07:16:48 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id E6AC8380EAF
	for <lists+speakup@lfdr.de>; Sun, 11 Jul 2021 07:16:47 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 67077380EB7; Sun, 11 Jul 2021 07:16:43 -0400 (EDT)
Received: from hurricane.the-brannons.com (hurricane.the-brannons.com [216.252.162.32])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 10701380EAF
	for <speakup@linux-speakup.org>; Sun, 11 Jul 2021 07:16:42 -0400 (EDT)
Received: from localhost (<unknown> [2602:3f:e0f9:dc00::2])
	by hurricane.the-brannons.com (OpenSMTPD) with ESMTPSA id 0dff2465 (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO)
	for <speakup@linux-speakup.org>;
	Sun, 11 Jul 2021 04:16:27 -0700 (PDT)
From: Chris Brannon <chris@the-brannons.com>
To: speakup@linux-speakup.org
Subject: Re: Installing OS on rackmount server
References: <20210711.104927.121.1@[192.168.1.100]>
	<5ff69fe5-fb5b-5233-0c71-1165b9111eed@raspberryvi.org>
	<dc6281a5-97c3-b90f-3d28-bb1066d05259@poczta.onet.pl>
Date: Sun, 11 Jul 2021 04:16:26 -0700
In-Reply-To: <dc6281a5-97c3-b90f-3d28-bb1066d05259@poczta.onet.pl>
 (=?utf-8?Q?=22Micha=C5=82?=
	Zegan"'s message of "Sun, 11 Jul 2021 13:02:20 +0200")
Message-ID: <87y2ad14ol.fsf@the-brannons.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.2 (gnu/linux)
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Micha=C5=82 Zegan <webczat_200@poczta.onet.pl> writes:

> serial console >>> any screenreader for anything text mode IMO. do you
> have a serial console and any way to make it usable?

Any rackmount server worth owning is going to have IPMI with SOL (serial ov=
er
LAN).  When I set up our rackmount server late last year, we put a DHCP
server and ipmitool on a Raspberry Pi and plugged that puppy into the
IPMI network interface on the server.  The Pi handed out an IP address
for the server's IPMI over DHCP, and we logged into the Pi through ssh
to run ipmitool to configure the server.  In this setup, the Pi was
connected to our home network through wifi.

You may need to enable serial over LAN in the BIOS.  We got lucky and it
was pre-configured for us.

Serial over LAN also gives you a serial console for the BIOS, once it is
enabled.  You get full boot-up to shutdown access.

So hopefully your server has IPMI and SOL.

-- Chris

