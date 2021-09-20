Return-Path: <speakup+bounces-310-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 2AFE641225A
	for <lists+speakup@lfdr.de>; Mon, 20 Sep 2021 20:14:09 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id DD3C13811F4; Mon, 20 Sep 2021 14:14:07 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id CAA47380A17
	for <lists+speakup@lfdr.de>; Mon, 20 Sep 2021 14:14:07 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 698AB380C1D; Mon, 20 Sep 2021 14:14:03 -0400 (EDT)
Received: from bullseyemail.carmickle.com (bullseyemail.carmickle.com [50.116.61.232])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 59EF43809B0
	for <speakup@linux-speakup.org>; Mon, 20 Sep 2021 14:14:03 -0400 (EDT)
Received: from [IPv6:2600:3c03:e000:3c2::91:66] (unknown [IPv6:2600:3c03:e000:3c2::91:66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by bullseyemail.carmickle.com (Postfix) with ESMTPSA id EC5D530345BD;
	Mon, 20 Sep 2021 18:14:01 +0000 (UTC)
Content-Type: text/plain;
	charset=us-ascii
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.21\))
Subject: Re: Broken espeakup on debian sid
From: Frank Carmickle <frank@carmickle.com>
In-Reply-To: <852948e5-248d-dbe8-e5cd-602d1bc31827@reisers.ca>
Date: Mon, 20 Sep 2021 14:14:00 -0400
Cc: Gregory Nowak <greg@gregn.net>,
 speakup@linux-speakup.org
Content-Transfer-Encoding: quoted-printable
Message-Id: <F619089A-DA51-4BA6-A37D-B6AC2622BD99@carmickle.com>
References: <74614290-2cb8-c5a7-91e9-e639a673464a@reisers.ca>
 <YUXlLephhiYuV4UA@rednote.net>
 <50b02165-17e9-2561-ec8-6c35cba66944@reisers.ca>
 <YUYXLHoSvcMnUYzW@rednote.net>
 <dd651c4c-1178-8d83-125d-23ad3d2cef88@reisers.ca>
 <14c0aaef-dea9-7b7c-77e3-a1a4edba4c31@slint.fr>
 <6b1e6e66-d12a-3d9e-a3e5-e8d0499177d9@reisers.ca>
 <20210919231255.GB5961@gregn.net>
 <852948e5-248d-dbe8-e5cd-602d1bc31827@reisers.ca>
To: Kirk Reiser <kirk@reisers.ca>
X-Mailer: Apple Mail (2.3445.104.21)
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi all,

Maintainers, please keep in mind the spirit of the speakup project, =
system access from boot to shutdown.

Please ask of those who are advocating for audio services to be run by a =
non-system user how this improves functionality. Please let others know =
that this has a great impact on system accessibility.

If there is an argument for securing audio input, maybe an audio input =
group should be introduced? I do not think this is required, as I don't =
think it to be useful given the number of privilege escalation bugs that =
exist.

What are people hearing as the reason for wanting to run, what seem like =
audio daemons, as non-system users?

Thank you for your work.
--FC

On Sep 20, 2021, at 8:49 AM, Kirk Reiser <kirk@reisers.ca> wrote:
>=20
> Yeah, I apologize for getting the spelling wrong and it seems missing
> the names on both projects I mentioned. I still can't remember the
> names of the other specialty blind projects.
>=20
> I'll blame it on old-age, yep, that has to be it. 'sheepish grin' On
>=20
> Sun, 19 Sep 2021, Gregory Nowak wrote:
>=20
>> On Sun, Sep 19, 2021 at 10:09:31AM -0400, Kirk Reiser wrote:
>>> It also seems to me that we have two different situations wrt =
distros,
>>> general communities like debian, ubuntu, arch etc and those that are
>>> specially put together for the blind community like debuan, slint =
and
>>> others I don't remember there names of anymore.
>>=20
>> I assume you meant devuan instead of debuan. While accessibility is
>> one of devuan's goals, devuan isn't especially put together for the
>> blind community. The majority of devuan's user base seem to be
>> sighted.
>>=20
>> Greg
>>=20
>>=20
>>=20
>=20


