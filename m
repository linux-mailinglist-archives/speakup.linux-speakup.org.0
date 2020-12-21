Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 085572E0299
	for <lists+speakup@lfdr.de>; Mon, 21 Dec 2020 23:43:04 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 4EC23380FBB; Mon, 21 Dec 2020 17:43:03 -0500 (EST)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=poczta.onet.pl header.i=@poczta.onet.pl header.a=rsa-sha256 header.s=2011 header.b=QkY6ChRf;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 52DF5380F93;
	Mon, 21 Dec 2020 17:43:01 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 4550A380F3C; Mon, 21 Dec 2020 17:43:00 -0500 (EST)
Received: from smtpo93.poczta.onet.pl (smtpo93.poczta.onet.pl
 [213.180.149.146])
 by befuddled.reisers.ca (Postfix) with ESMTPS id BBB92380F20
 for <speakup@linux-speakup.org>; Mon, 21 Dec 2020 17:42:59 -0500 (EST)
Received: from [192.168.0.110] (unknown [193.200.46.1])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: webczat_200@poczta.onet.pl)
 by smtp.poczta.onet.pl (Onet) with ESMTPSA id 4D0Dy44mW5zlk0QW
 for <speakup@linux-speakup.org>; Mon, 21 Dec 2020 23:42:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poczta.onet.pl;
 s=2011; t=1608590572;
 bh=tWdFVwt77NceatXes4lTbOEJDZ7iwwYhAeEmwdu17qo=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=QkY6ChRfXHiPZJ0AFah3EEmVm7mgai1K8sp2nVJC2sEDFCV4CgW/PFPmXJ/wW1G/a
 +zov7BtCBvtEisOzGvvJnpP8G20iwXMyy6EDGSc4DoB9FaQwpwAsjSL+/VA9LFQyB0
 qY5UOgE1wQkjIERwKOPbTeYR9dHeLIXx7WM+8DN4=
Subject: Re: Hosting speakup on freedesktop?
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <20201221214457.hu7cg3ino7yqqswn@function>
 <alpine.DEB.2.23.453.2012211701310.533489@befuddled.reisers.ca>
 <1acbbe44-f099-a08b-e788-cc64496eee88@poczta.onet.pl>
 <7b4f6ec0-7519-5ab8-5569-40372aee9407@slint.fr>
From: =?UTF-8?Q?Micha=c5=82_Zegan?= <webczat_200@poczta.onet.pl>
Message-ID: <3a301ccf-117b-244a-2498-b10527c82885@poczta.onet.pl>
Date: Mon, 21 Dec 2020 23:42:51 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.3
MIME-Version: 1.0
In-Reply-To: <7b4f6ec0-7519-5ab8-5569-40372aee9407@slint.fr>
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
Content-Type: multipart/mixed; boundary="===============7256405045696682257=="
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============7256405045696682257==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="vuVIM9YrS2XymKDi0XsT9gPxNFAzyjGHt"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--vuVIM9YrS2XymKDi0XsT9gPxNFAzyjGHt
Content-Type: multipart/mixed; boundary="Zltjqf2RjLJD8L1lbe7rNOaSxP2eMwP7f";
 protected-headers="v1"
From: =?UTF-8?Q?Micha=c5=82_Zegan?= <webczat_200@poczta.onet.pl>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Message-ID: <3a301ccf-117b-244a-2498-b10527c82885@poczta.onet.pl>
Subject: Re: Hosting speakup on freedesktop?
References: <20201221214457.hu7cg3ino7yqqswn@function>
 <alpine.DEB.2.23.453.2012211701310.533489@befuddled.reisers.ca>
 <1acbbe44-f099-a08b-e788-cc64496eee88@poczta.onet.pl>
 <7b4f6ec0-7519-5ab8-5569-40372aee9407@slint.fr>
In-Reply-To: <7b4f6ec0-7519-5ab8-5569-40372aee9407@slint.fr>

--Zltjqf2RjLJD8L1lbe7rNOaSxP2eMwP7f
Content-Type: multipart/mixed;
 boundary="------------521B624F02B22A12E5BC00D7"
Content-Language: pl-PL

This is a multi-part message in MIME format.
--------------521B624F02B22A12E5BC00D7
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Also, whatever you can say about ms, they really care about
accessibility, at least for some of their projects. I have never seen
developers interested so much in the accessibility work like developers
of, for example, vscode are. And difference between github accessibility
and gitlab accessibility is/was? pretty dramatic. For example in gitlab
many things are not behaving correctly with keyboard, have to be
clicked, sometimes with orca you may hit a wrong thing, that is at least
what I remember. With github even things like at-completing people in
comments works by immediately saying the suggestions when you press the
at sign. That applies for issue reporting etc.
My info about gitlab may be outdated, but I remember myself being on
gitlab not so long ago and it didn't change.

W dniu 20.12.2020 o=C2=A023:30, Didier Spaier pisze:
> I don't see an issue using github. Recently Microsoft showed interest
> for Linux and open source:
> They are a member of the Open Invention Network, alongside Linux
> distributions including Slint :-) so they signed an agreement like
> this one http://slackware.uk/slint/x86_64/slint-14.2.1/agreement.pdf
> which protect all members.
> Recently they did their best to protect youtube-dl from a DMCA takedown=
:
> https://youtube-dl.org/
> https://github.blog/2020-11-16-standing-up-for-developers-youtube-dl-is=
-back/
>=20
>=20
> Additionally I prefer the interface of github over gitlab's
>=20
> In the (unlikely, I think) event that github be taken down, it will
> still be possible to time to find another home for speakup, I think.
>=20
> Just my two euro cents.
>=20
> Cheers, Didier
>=20
> On 21/12/2020 23:12, Micha=C5=82 Zegan wrote:
>> Just one note: it may not be important enough, but whatever the proble=
m
>> may or may not be with github, it is far more accessible as a site tha=
n
>> gitlab. I don't think gitlab fixed accessibility, ever.
>>
>> W dniu 21.12.2020 o=C2=A023:03, Kirk Reiser pisze:
>>> Hi Samuel et al: That works fine for me. I haven't really had much to=

>>> do with development work on speakup for a longg time. You had an
>>> account on my server but I see it appears to have disappeared sometim=
e
>>> over the years for no reason I can think of.
>>>
>>> =C2=A0=C2=A0 Kirk
>>>
>>> On Mon, 21 Dec 2020, Samuel Thibault wrote:
>>>
>>>> Hello,
>>>>
>>>> Currently we have an old git repository on
>>>> http://linux-speakup.org/speakup.git , that was not updated since
>>>> ~2013.=C2=A0 I don't seem to have push access to it. We also have so=
me
>>>> bug tracking on https://github.com/bytefire/speakup/issues . This
>>>> looks quite scattered, and github.com depends on the good will
>>>> of Microsoft. I'm thinking that we could have speakup hosted on
>>>> https://gitlab.freedesktop.org (freedesktop is a "completely volunte=
er
>>>> organisation with no corporate backing or funding stream", notably p=
art
>>>> of X.org). We can keep the mailing list as it is, but we could move =
the
>>>> git repository and the issue tracking there, where it is easy to cre=
ate
>>>> accounts, give rights, follow-up on bugs etc.=C2=A0 I have made a re=
quest
>>>> for
>>>> a speakup group creation to freedesktop people.
>>>>
>>>> The idea is that on that repository we could host the latest version=
 of
>>>> the speakup source code, so that people can try it without having to=

>>>> patch and rebuild their whole kernel etc.
>>>>
>>>> Samuel
>>>> _______________________________________________
>>>> Speakup mailing list
>>>> Speakup@linux-speakup.org
>>>> http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
>>>>
>>> _______________________________________________
>>> Speakup mailing list
>>> Speakup@linux-speakup.org
>>> http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
>>>
>>> _______________________________________________
>>> Speakup mailing list
>>> Speakup@linux-speakup.org
>>> http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
> _______________________________________________
> Speakup mailing list
> Speakup@linux-speakup.org
> http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup

--------------521B624F02B22A12E5BC00D7--

--Zltjqf2RjLJD8L1lbe7rNOaSxP2eMwP7f--

--vuVIM9YrS2XymKDi0XsT9gPxNFAzyjGHt--

--===============7256405045696682257==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup

--===============7256405045696682257==--
