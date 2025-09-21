Return-Path: <speakup+bounces-1396-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 84038B8DCBE
	for <lists+speakup@lfdr.de>; Sun, 21 Sep 2025 16:00:03 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; secure) header.d=panix.com header.i=@panix.com header.a=rsa-sha256 header.s=panix header.b=cab0KyJp;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 68126382C43; Sun, 21 Sep 2025 10:00:00 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 44FEE382C04
	for <lists+speakup@lfdr.de>; Sun, 21 Sep 2025 10:00:00 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 00AE9382C05; Sun, 21 Sep 2025 09:59:53 -0400 (EDT)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 638D9382BB4
	for <speakup@linux-speakup.org>; Sun, 21 Sep 2025 09:59:52 -0400 (EDT)
Received: from smtpclient.apple (24.152.218.146.res-cmts.sm3.ptd.net [24.152.218.146])
	by mailbackend.panix.com (Postfix) with ESMTPSA id 4cV7Cq4dn9z1Clg;
	Sun, 21 Sep 2025 09:59:51 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=panix.com; s=panix;
	t=1758463191; bh=nMNxWcZkxq6ouThbLl8CWWmsWfVR3/ViK6kJe3CjNvI=;
	h=From:Subject:Date:References:Cc:In-Reply-To:To;
	b=cab0KyJp14ybB0JNpmDT0miDrjqSvidWn4oV02WHOcoFF/DBcmu2g+9C/re0pYcWD
	 DDG1PeaMUhlEA2YAAyki8b+mgaADr6fHzpxndZg7muRkQq5owEr9Dy8juK5bK9OkH+
	 tZNZIvxwaTEeH6ze1b1LtIk22cn/RoZUtvPpwxzw=
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
From: jude dashiell <jdashiel@panix.com>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
Mime-Version: 1.0 (1.0)
Subject: Re: speakup from boot
Date: Sun, 21 Sep 2025 09:59:40 -0400
Message-Id: <8AD1E931-8422-4C8C-B742-3B56DF92C207@panix.com>
References: <aM9AZ_rEDQqzBEh3@titan>
Cc: "Terry D. Cudney" <terry@cudneys.ca>, Gregory Nowak <greg@gregn.net>,
 speakup@linux-speakup.org
In-Reply-To: <aM9AZ_rEDQqzBEh3@titan>
To: Jookia <contact@jookia.org>
X-Mailer: iPhone Mail (22H20)
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

If speakup comes up no need to have it talking at boot. As root dmesg|grep -=
i error >dmesg.log;dmesg|grep -i fatal >>dmesg.log;dmesg|grep -i warn >>dmes=
g.log;less dmesg.log gets you all problem information though the grep search=
 for fatal should have been first in that command. Since it=E2=80=99s all sa=
ved in the file dmesg.log that file can be attached to email if necessary.

On Sep 20, 2025, at 8:11=E2=80=AFPM, Jookia <contact@jookia.org> wrote:

=EF=BB=BFHi there,

I wrote this: https://www.jookia.org/wiki/System-wide_speakup

Jookia.

On Sat, Sep 20, 2025 at 11:59:49PM +0000, Terry D. Cudney wrote:
> Hi Greg,
>=20
>   Thanks for your response!
>=20
>   I have tried voidlinux for a short while. It's a "whole different can of=
 worms". I may still end up going that route, but for now I'm taunted by the=
 idea of "vanquishing" systemd to do what I want.
>=20
>   If I  cant get systemd to obey me, a "systemd-free" distro may be in the=
 future...
>=20
>   Thanks again,
>=20
>   --terry
>=20
> On Mon, Sep 08, 2025 at 01:50:53PM -0700, Gregory Nowak wrote:
> --> Switch to a systemd-free distro like devuan or void. Probably not the
> --> advice you wanted.
> -->
> --> Greg
> -->
> -->
> --> On Mon, Sep 08, 2025 at 04:36:36AM +0000, Terry D. Cudney wrote:
> --> > Hi again,
> --> >
> --> >    To give credit where credit is due...
> --> >
> --> >    This little script (now modified) came from Kirk...
> --> >
> --> >    This is how I get speakup to talk after logging in. =20
> --> >
> --> >    First I must run this script,  as root:
> --> > /* start of script */
> --> > #!/bin/bash
> --> >
> --> > systemctl stop espeakup
> --> > /usr/bin/chown terry:terry /dev/softsynth*
> --> > /usr/bin/chmod 1777 /run
> --> > /* end of script */
> --> >
> --> >
> --> > Then logged in as myself, I run espeakup as an application.
> --> > /usr/bin/espeakup
> --> >
> --> >    =46rom here on speakup talks normally on all tty's including the l=
ogin prompts.
> --> >
> --> >    This is good, but not completely satisfactory, The goal is to hav=
e speakup talking before loggin in, ideally from power-on.
> --> >
> --> >    Thanks again for any suggestions/help ,
> --> >
> --> >    --terry
> --> > =20
> --> > --
> --> > Name: Terry D. Cudney
> --> > Telephone: 289-438-6828
> --> > E-mail: terry@cudneys.ca
> --> > =20
> --> >
> -->
> --> --
> --> web site: http://www.gregn.net
> --> gpg public key: http://www.gregn.net/pubkey.asc
> -->
> --> --
> --> Free domains: http://www.eu.org/ or mail dns-manager@EU.org
> -->
>=20
> --
> Name: Terry D. Cudney
> Telephone: 289-438-6828
> E-mail: terry@cudneys.ca
>=20
>=20


