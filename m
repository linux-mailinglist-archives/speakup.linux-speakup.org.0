Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 43F1A2E025B
	for <lists+speakup@lfdr.de>; Mon, 21 Dec 2020 23:12:28 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id AE8C0380F4E; Mon, 21 Dec 2020 17:12:27 -0500 (EST)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=poczta.onet.pl header.i=@poczta.onet.pl header.a=rsa-sha256 header.s=2011 header.b=Ww1E8BRS;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id E103B380F49;
	Mon, 21 Dec 2020 17:12:24 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 84C5B380F21; Mon, 21 Dec 2020 17:12:23 -0500 (EST)
Received: from smtpo105.poczta.onet.pl (smtpo105.poczta.onet.pl
 [213.180.149.158])
 by befuddled.reisers.ca (Postfix) with ESMTPS id A52E6380ECA
 for <speakup@linux-speakup.org>; Mon, 21 Dec 2020 17:12:21 -0500 (EST)
Received: from [192.168.0.110] (unknown [193.200.46.1])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: webczat_200@poczta.onet.pl)
 by smtp.poczta.onet.pl (Onet) with ESMTPSA id 4D0DGh71Trz2JCj
 for <speakup@linux-speakup.org>; Mon, 21 Dec 2020 23:12:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poczta.onet.pl;
 s=2011; t=1608588733;
 bh=9nIBHoyE1l/NLlH43eGuqe17Y2o8oAq+NM2jC4M9ae0=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=Ww1E8BRSqpDOYUroYgv0LPLn45I7gEL3fKOWPn/nqqU9WENU019NI0QrTI/s7o6JW
 HJhm4lssMVYQMlOAZk7STyu4EPXgDYco78d+ngsZN8qIiiyBFIoW3gltSBLBysPeQZ
 X5Y/A3eJe951x12JF+UMT6dKt0IUq8gLZ8HkTx+s=
Subject: Re: Hosting speakup on freedesktop?
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <20201221214457.hu7cg3ino7yqqswn@function>
 <alpine.DEB.2.23.453.2012211701310.533489@befuddled.reisers.ca>
From: =?UTF-8?Q?Micha=c5=82_Zegan?= <webczat_200@poczta.onet.pl>
Message-ID: <1acbbe44-f099-a08b-e788-cc64496eee88@poczta.onet.pl>
Date: Mon, 21 Dec 2020 23:12:11 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.3
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.23.453.2012211701310.533489@befuddled.reisers.ca>
X-ONET_PL-MDA-SEGREGATION: 0
X-Content-Filtered-By: Mailman/MimeDel 2.1.29
X-BeenThere: speakup@linux-speakup.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <http://linux-speakup.org/cgi-bin/mailman/options/speakup>, 
 <mailto:speakup-request@linux-speakup.org?subject=unsubscribe>
List-Archive: <http://linux-speakup.org/pipermail/speakup/>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup-request@linux-speakup.org?subject=help>
List-Subscribe: <http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup>,
 <mailto:speakup-request@linux-speakup.org?subject=subscribe>
Reply-To: "Speakup is a screen review system for Linux."
 <speakup@linux-speakup.org>
Content-Type: multipart/mixed; boundary="===============6708554683253031784=="
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============6708554683253031784==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="YNGXtX8v2Qk88CKHnELSq5JXRu2vjhjQJ"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--YNGXtX8v2Qk88CKHnELSq5JXRu2vjhjQJ
Content-Type: multipart/mixed; boundary="Zmq8ERhV3kUFVytpcFhC8hC0EowXbtxRU";
 protected-headers="v1"
From: =?UTF-8?Q?Micha=c5=82_Zegan?= <webczat_200@poczta.onet.pl>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Message-ID: <1acbbe44-f099-a08b-e788-cc64496eee88@poczta.onet.pl>
Subject: Re: Hosting speakup on freedesktop?
References: <20201221214457.hu7cg3ino7yqqswn@function>
 <alpine.DEB.2.23.453.2012211701310.533489@befuddled.reisers.ca>
In-Reply-To: <alpine.DEB.2.23.453.2012211701310.533489@befuddled.reisers.ca>

--Zmq8ERhV3kUFVytpcFhC8hC0EowXbtxRU
Content-Type: multipart/mixed;
 boundary="------------DE6EE22F6DFCFD068607520C"
Content-Language: pl-PL

This is a multi-part message in MIME format.
--------------DE6EE22F6DFCFD068607520C
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Just one note: it may not be important enough, but whatever the problem
may or may not be with github, it is far more accessible as a site than
gitlab. I don't think gitlab fixed accessibility, ever.

W dniu 21.12.2020 o=C2=A023:03, Kirk Reiser pisze:
> Hi Samuel et al: That works fine for me. I haven't really had much to
> do with development work on speakup for a longg time. You had an
> account on my server but I see it appears to have disappeared sometime
> over the years for no reason I can think of.
>=20
> =C2=A0 Kirk
>=20
> On Mon, 21 Dec 2020, Samuel Thibault wrote:
>=20
>> Hello,
>>
>> Currently we have an old git repository on
>> http://linux-speakup.org/speakup.git , that was not updated since
>> ~2013.=C2=A0 I don't seem to have push access to it. We also have some=

>> bug tracking on https://github.com/bytefire/speakup/issues . This
>> looks quite scattered, and github.com depends on the good will
>> of Microsoft. I'm thinking that we could have speakup hosted on
>> https://gitlab.freedesktop.org (freedesktop is a "completely volunteer=

>> organisation with no corporate backing or funding stream", notably par=
t
>> of X.org). We can keep the mailing list as it is, but we could move th=
e
>> git repository and the issue tracking there, where it is easy to creat=
e
>> accounts, give rights, follow-up on bugs etc.=C2=A0 I have made a requ=
est for
>> a speakup group creation to freedesktop people.
>>
>> The idea is that on that repository we could host the latest version o=
f
>> the speakup source code, so that people can try it without having to
>> patch and rebuild their whole kernel etc.
>>
>> Samuel
>> _______________________________________________
>> Speakup mailing list
>> Speakup@linux-speakup.org
>> http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
>>
> _______________________________________________
> Speakup mailing list
> Speakup@linux-speakup.org
> http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup

--------------DE6EE22F6DFCFD068607520C--

--Zmq8ERhV3kUFVytpcFhC8hC0EowXbtxRU--

--YNGXtX8v2Qk88CKHnELSq5JXRu2vjhjQJ--

--===============6708554683253031784==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup

--===============6708554683253031784==--
