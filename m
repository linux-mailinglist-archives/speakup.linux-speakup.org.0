Return-Path: <speakup+bounces-233-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 699073C3BA9
	for <lists+speakup@lfdr.de>; Sun, 11 Jul 2021 13:02:44 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id AE2B3380F05; Sun, 11 Jul 2021 07:02:43 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=poczta.onet.pl header.i=@poczta.onet.pl header.a=rsa-sha256 header.s=2011 header.b=FV30tyJp;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id B02A1380F51
	for <lists+speakup@lfdr.de>; Sun, 11 Jul 2021 07:02:40 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 53193380EB5; Sun, 11 Jul 2021 07:02:37 -0400 (EDT)
Received: from smtpo54.poczta.onet.pl (smtpo54.poczta.onet.pl [213.180.142.185])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 69DB9380BE5
	for <speakup@linux-speakup.org>; Sun, 11 Jul 2021 07:02:31 -0400 (EDT)
Received: from [192.168.0.110] (unknown [193.200.46.1])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: webczat_200@poczta.onet.pl)
	by smtp.poczta.onet.pl (Onet) with ESMTPSA id 4GN3rZ1pdqz1wDs;
	Sun, 11 Jul 2021 13:02:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poczta.onet.pl;
	s=2011; t=1626001343;
	bh=XrsC0le5pFGZdBOqfRcSF9bwI5UTGhsox+YcHoo3VLA=;
	h=Subject:To:References:From:Date:In-Reply-To:From;
	b=FV30tyJpzDV2riV3BK4AYdiNwTQ7OPSwPJja1JsFGwH+9Q7ikAle9xHGG6fi6zXlG
	 HRZm+h1jiBy+VBWWwsd3Oyt+QMzSlN0aEFbrzRTGH8thge48SPjy3GzqH0h8z4htoT
	 xdcz+BylPf6snLSRC6tZYNjszAOcuYHbSlI4hZWY=
Subject: Re: Installing OS on rackmount server
To: mike@raspberryvi.org, speakup@linux-speakup.org
References: <20210711.104927.121.1@[192.168.1.100]>
 <5ff69fe5-fb5b-5233-0c71-1165b9111eed@raspberryvi.org>
From: =?UTF-8?Q?Micha=c5=82_Zegan?= <webczat_200@poczta.onet.pl>
Message-ID: <dc6281a5-97c3-b90f-3d28-bb1066d05259@poczta.onet.pl>
Date: Sun, 11 Jul 2021 13:02:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
In-Reply-To: <5ff69fe5-fb5b-5233-0c71-1165b9111eed@raspberryvi.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="VuM3i5ZJNopquR8C5py5WeLfvnv9vaZJ5"
X-ONET_PL-MDA-SEGREGATION: 0
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--VuM3i5ZJNopquR8C5py5WeLfvnv9vaZJ5
Content-Type: multipart/mixed; boundary="GP3uwyNmtIOWhaMGlvC4QyV9jaYIYxKvp";
 protected-headers="v1"
From: =?UTF-8?Q?Micha=c5=82_Zegan?= <webczat_200@poczta.onet.pl>
To: mike@raspberryvi.org, speakup@linux-speakup.org
Message-ID: <dc6281a5-97c3-b90f-3d28-bb1066d05259@poczta.onet.pl>
Subject: Re: Installing OS on rackmount server
References: <20210711.104927.121.1@[192.168.1.100]>
 <5ff69fe5-fb5b-5233-0c71-1165b9111eed@raspberryvi.org>
In-Reply-To: <5ff69fe5-fb5b-5233-0c71-1165b9111eed@raspberryvi.org>

--GP3uwyNmtIOWhaMGlvC4QyV9jaYIYxKvp
Content-Type: text/plain; charset=utf-8
Content-Language: pl-PL
Content-Transfer-Encoding: quoted-printable

serial console >>> any screenreader for anything text mode IMO. do you
have a serial console and any way to make it usable?

W dniu 11.07.2021 o=C2=A012:54, Mike Ray pisze:
>=20
>=20
> Passive USB hub?
>=20
> Does the rack server have sound? If so you could install Debian from th=
e
> net install CD image written to a flash drive.
>=20
> Or, even if the server does not have sound, you could insert a USB soun=
d
> dongle. Again, by using a USB hub to expand the number of USB ports.
>=20
> You could install something else as well, such as Ubuntu. But if it is =
a
> server only, there is no reason to install a desktop. The Debian net
> install allows you to install only the cli, and no GUI.
>=20
> I would not try installing Linux on another machine and then moving it
> across, unless it's an identical machine. I assume lots of drivers will=

> be selected during the install which would not be appropriate for the
> eventual host.
>=20
>=20
>=20
>=20
> On 11/07/2021 11:49, Rob Hudson wrote:
>> Tried this on another list, got no answer, so trying here. I've got a =
Cisco rackmount that needs an OS. It's only got 2 usb ports, so I can't h=
ook up a keyboard, a braille display and a linux flash drive. I'm given t=
o understand the CIMC interface is inaccessible, and I have no idea how t=
o set up a PXE server. Is my only option for installing an OS to connect =
a hard drive to another computer, install linux on there and then put it =
in the server?
>>
>=20
>=20


--GP3uwyNmtIOWhaMGlvC4QyV9jaYIYxKvp--

--VuM3i5ZJNopquR8C5py5WeLfvnv9vaZJ5
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

wsB5BAABCAAjFiEE8PeJXyv9t1Bfiq63mRxoPZnIFPkFAmDqz7wFAwAAAAAACgkQmRxoPZnIFPkC
1QgAma/pmIPirusZ+gaomflpyNYC5AVfoZooGot4o7w20jSxaBIfISdRxOgHes8KEDdDcBR0Uafi
TtrvpodjG1xy/kULgm+aoUgagnTnvA3YyiqOPQnC64WFAlViqdNAX8xKeCumsefL5edIM8kV8n4u
kA8Oy1SkwNDlXg7ICcWVhP9oUzAkZMHbmWB3JetHbgrO81yp9ml2EkTH0bPNSifRjKjGqpPYe1bI
O7AujkqeUwy3exnnSVh8Pb+tT9aDIOrzl50D7WbSK3beAhGPBrPzWwt7KYGrK+/xIeN341Ad6GM0
qEtlA4SJlJtEMI7zuJvubiRicmvOLNK21y5/w+DeEg==
=uGNA
-----END PGP SIGNATURE-----

--VuM3i5ZJNopquR8C5py5WeLfvnv9vaZJ5--

