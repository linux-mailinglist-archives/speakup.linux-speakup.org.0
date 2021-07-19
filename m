Return-Path: <speakup+bounces-246-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id F41BF3CE8E0
	for <lists+speakup@lfdr.de>; Mon, 19 Jul 2021 19:37:53 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id CFDE7380FB6; Mon, 19 Jul 2021 13:37:50 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=poczta.onet.pl header.i=@poczta.onet.pl header.a=rsa-sha256 header.s=2011 header.b=b8SvAx4b;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id BC6A6380995
	for <lists+speakup@lfdr.de>; Mon, 19 Jul 2021 13:37:50 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 3D7A6380A1F; Mon, 19 Jul 2021 13:37:46 -0400 (EDT)
Received: from smtpo86.poczta.onet.pl (smtpo86.poczta.onet.pl [213.180.149.139])
	by befuddled.reisers.ca (Postfix) with ESMTPS id E128B380376
	for <speakup@linux-speakup.org>; Mon, 19 Jul 2021 13:37:42 -0400 (EDT)
Received: from [192.168.0.110] (unknown [193.200.46.1])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: webczat_200@poczta.onet.pl)
	by smtp.poczta.onet.pl (Onet) with ESMTPSA id 4GT8Dk1HQMzlj0vb
	for <speakup@linux-speakup.org>; Mon, 19 Jul 2021 19:37:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poczta.onet.pl;
	s=2011; t=1626716246;
	bh=SNWt3NWZq27cK6TpKQKkN0B3la6aJoD9LQnUadtNmHM=;
	h=To:From:Subject:Date:From;
	b=b8SvAx4b01mw6Bj5bWUwKSrXk4uq9K5196NieN0HndxJYA77otOOly06D6bYYDklb
	 QkQFFLsfDpaHntYx9dwpL+Trb1D/xrxcUjjic1SSWz8hsJU6V/VJkvfG5tLuWngn2Y
	 dWZc5FifueiT+ym45bXLFvTbrn69aJGpLnmEj+Uk=
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
From: =?UTF-8?Q?Micha=c5=82_Zegan?= <webczat_200@poczta.onet.pl>
Subject: changing subscription
Message-ID: <7f0bd106-57a2-1719-576a-29a0ecd8e926@poczta.onet.pl>
Date: Mon, 19 Jul 2021 19:37:24 +0200
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
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="zpStZdlZtrzDSVrMfX7WdnGsccPz1wZF5"
X-ONET_PL-MDA-SEGREGATION: 0
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--zpStZdlZtrzDSVrMfX7WdnGsccPz1wZF5
Content-Type: multipart/mixed; boundary="VQ5bvl2tm30k0fIE6WXDnK1ks15vS71te";
 protected-headers="v1"
From: =?UTF-8?Q?Micha=c5=82_Zegan?= <webczat_200@poczta.onet.pl>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Message-ID: <7f0bd106-57a2-1719-576a-29a0ecd8e926@poczta.onet.pl>
Subject: changing subscription

--VQ5bvl2tm30k0fIE6WXDnK1ks15vS71te
Content-Type: text/plain; charset=utf-8
Content-Language: pl-PL
Content-Transfer-Encoding: quoted-printable

Hi,
seems like something is very very broken because when I go to the
mailman info page of the list and try to remind my password, the whole
thing crashes.
My intention was to change subscription to my new email address.


--VQ5bvl2tm30k0fIE6WXDnK1ks15vS71te--

--zpStZdlZtrzDSVrMfX7WdnGsccPz1wZF5
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

wsB5BAABCAAjFiEE8PeJXyv9t1Bfiq63mRxoPZnIFPkFAmD1uFQFAwAAAAAACgkQmRxoPZnIFPkm
HQf/ZZlUA8vjLrOl6ZOvL8AGJHl9dbbDCmq048qzS4vR14gprHOMcRvXbmWSNH+l+uZfKJg2iWvO
zLVkwsgdzUjbrUNUX2SB3WBDHV/1nRmpWNFQtZnTeWzaYsC1zWEcZHmlXa0goKKMcqogl8mJiH7w
GMbhpe6p1eU04ESazXs/NFpn9DavbEmjqwB6n+DEFMCacPQ4MQq4S1tYwX8FZuJUrvMmgHL2CvTf
63OO7q8heU0IA2AXRkKxuHjxef5QvvMEx6eoDQLO+6I/Ol3wAIS+BtmkaqIPOlhQsCiAbtwbUwGu
Y5SMkltsZ/xoN809R4xVT31r/mf5isVmTmp/9I6shA==
=guFp
-----END PGP SIGNATURE-----

--zpStZdlZtrzDSVrMfX7WdnGsccPz1wZF5--

