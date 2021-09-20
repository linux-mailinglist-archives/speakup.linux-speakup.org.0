Return-Path: <speakup+bounces-309-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 4FA8F4114E0
	for <lists+speakup@lfdr.de>; Mon, 20 Sep 2021 14:49:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1632142193;
	bh=ns/MMM7vPOY+m16QaXOgNFsxCj6O1Oo30L4G6k5TtMo=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Post:List-Help:List-Subscribe:From;
	b=bfLOCI/DfkYSqkkI8Lc/7GP5JBCoDJFrn1RM5jCdfPiLkwI05vG3AM8OTkGgOjog5
	 yKa6VppNX7yITlMIacDJqNQM8+AsB2dN7gWkbGuquhG6+4Ynan+xe5q5+G9cSReXjd
	 EjLivgTfXd/3f5UJytshYb0ominDsW85q/IKOfe8=
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id C8ECF3811EF; Mon, 20 Sep 2021 08:49:53 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1632142193;
	bh=ns/MMM7vPOY+m16QaXOgNFsxCj6O1Oo30L4G6k5TtMo=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Post:List-Help:List-Subscribe:From;
	b=bfLOCI/DfkYSqkkI8Lc/7GP5JBCoDJFrn1RM5jCdfPiLkwI05vG3AM8OTkGgOjog5
	 yKa6VppNX7yITlMIacDJqNQM8+AsB2dN7gWkbGuquhG6+4Ynan+xe5q5+G9cSReXjd
	 EjLivgTfXd/3f5UJytshYb0ominDsW85q/IKOfe8=
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id B6AC7380996
	for <lists+speakup@lfdr.de>; Mon, 20 Sep 2021 08:49:53 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1632142189;
	bh=ns/MMM7vPOY+m16QaXOgNFsxCj6O1Oo30L4G6k5TtMo=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:From;
	b=QqdTqTdzyW31OENTnxIwVYm0mCMJb8fQdy78NoQ65yKuIw0E3eaHSJKRgueGkQZjM
	 xnSltC6GNTYj/7HjlumM7LYEBYgceE7prMWk4n/m0sF73NrjPRZzYPajHRyCaNZqDh
	 Oq5iQekFp/5P0ZIIjhLoIK3M3ShQlRvSjRyEyls8=
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 32CFA380BD2; Mon, 20 Sep 2021 08:49:49 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1632142187;
	bh=ns/MMM7vPOY+m16QaXOgNFsxCj6O1Oo30L4G6k5TtMo=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:From;
	b=TPqtILL/zMniCOstmMEnvaThThhiLjOfbY1csGFVnbfGkHWWP90qIYjwhQLP+IFu5
	 42SFhZ3v1jfQfTPhn96KRU1n9r5gTgp0KR7ucqF4Aq4YbjnWJBwdGqfSDtHhiODkBp
	 ROIXWAW7KQywtj+OHFT3ywc9YCDMWtf7Tu3jpODk=
Received: from localhost (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 9D0A0380996;
	Mon, 20 Sep 2021 08:49:47 -0400 (EDT)
Date: Mon, 20 Sep 2021 08:49:47 -0400 (EDT)
From: Kirk Reiser <kirk@reisers.ca>
To: Gregory Nowak <greg@gregn.net>
cc: speakup@linux-speakup.org
Subject: Re: Broken espeakup on debian sid
In-Reply-To: <20210919231255.GB5961@gregn.net>
Message-ID: <852948e5-248d-dbe8-e5cd-602d1bc31827@reisers.ca>
References: <74614290-2cb8-c5a7-91e9-e639a673464a@reisers.ca> <YUXlLephhiYuV4UA@rednote.net> <50b02165-17e9-2561-ec8-6c35cba66944@reisers.ca> <YUYXLHoSvcMnUYzW@rednote.net> <dd651c4c-1178-8d83-125d-23ad3d2cef88@reisers.ca> <14c0aaef-dea9-7b7c-77e3-a1a4edba4c31@slint.fr>
 <6b1e6e66-d12a-3d9e-a3e5-e8d0499177d9@reisers.ca> <20210919231255.GB5961@gregn.net>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII; format=flowed
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Yeah, I apologize for getting the spelling wrong and it seems missing
the names on both projects I mentioned. I still can't remember the
names of the other specialty blind projects.

I'll blame it on old-age, yep, that has to be it. 'sheepish grin' On

Sun, 19 Sep 2021, Gregory Nowak wrote:

> On Sun, Sep 19, 2021 at 10:09:31AM -0400, Kirk Reiser wrote:
>> It also seems to me that we have two different situations wrt distros,
>> general communities like debian, ubuntu, arch etc and those that are
>> specially put together for the blind community like debuan, slint and
>> others I don't remember there names of anymore.
>
> I assume you meant devuan instead of debuan. While accessibility is
> one of devuan's goals, devuan isn't especially put together for the
> blind community. The majority of devuan's user base seem to be
> sighted.
>
> Greg
>
>
>

