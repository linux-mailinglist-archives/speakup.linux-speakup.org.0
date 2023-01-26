Return-Path: <speakup+bounces-922-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id D25E167C8B7
	for <lists+speakup@lfdr.de>; Thu, 26 Jan 2023 11:37:38 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=the-brannons.com header.i=@the-brannons.com header.a=rsa-sha256 header.s=hurricane header.b=ChZwhIoV;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 68A26382BC7; Thu, 26 Jan 2023 05:37:36 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 476B23827A3
	for <lists+speakup@lfdr.de>; Thu, 26 Jan 2023 05:37:36 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 1860A382840; Thu, 26 Jan 2023 05:37:27 -0500 (EST)
Received: from hurricane.the-brannons.com (hurricane.the-brannons.com [216.252.162.32])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 872A73827A3
	for <speakup@linux-speakup.org>; Thu, 26 Jan 2023 05:37:26 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; s=hurricane; bh=1ygJGMbhid
	TCkrADmRk+Rn/iavzNsfNLqlmQfcwqbqc=; h=in-reply-to:date:references:
	subject:cc:to:from; d=the-brannons.com; b=ChZwhIoVSGCGTSsyTR4ZgdqKGkEm
	3KOltn6G07zwjcYiYJUsDkB4cgSMS25PHP+auorKNBtXk3BcHQcmZkzsdKW9gI+fXi7kEb
	PfKpBBwSzBU3OgrYPDjbcvSCMGa/A0d/Zv4Tbb3WmkSYhO2OwEoOpu7PQoz5HwTRIHR6I5
	X1k=
X-Spam: yes
X-Spam-Score: 7.233538 / 6
X-Spam-Status: Yes, score=7.234 required=6.000
	tests=[ARC_NA=0.000, ASN=0.000, BAYES_HAM=-0.766
	FREEMAIL_ENVRCPT=0.000, FREEMAIL_TO=0.000, FROM_EQ_ENVFROM=0.000
	FROM_HAS_DN=0.000, MID_RHS_MATCH_FROM=0.000, MIME_GOOD=-0.100
	MIME_TRACE=0.000, RCPT_COUNT_THREE=0.000, RCVD_COUNT_TWO=0.000
	RCVD_NO_TLS_LAST=0.100, RCVD_VIA_SMTP_AUTH=0.000
	SURBL_MULTI_FAIL=0.000, TO_DN_SOME=0.000, TO_MATCH_ENVRCPT_ALL=0.000
	URIBL_SBL_CSS=6.500, URIBL_XBL=1.500]
Received: 
	by hurricane.the-brannons.com (OpenSMTPD) with ESMTPSA id e2c784cd (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO) auth=yes user=chris;
	Thu, 26 Jan 2023 10:37:17 +0000 (UTC)
From: Chris Brannon <chris@the-brannons.com>
To: Al Sten-Clanton <albert.e.sten_clanton@verizon.net>
Cc: "Speakup is a screen review system for Linux."
 <speakup@linux-speakup.org>, discuss@blvuug.org
Subject: Re: looking for archived messages later than January 2021
References: <64291a12-7cfc-3aa6-75d1-f8b369b47ec4.ref@verizon.net>
	<64291a12-7cfc-3aa6-75d1-f8b369b47ec4@verizon.net>
Autocrypt: addr=chris@the-brannons.com; prefer-encrypt=mutual; keydata=
 mDMEX37pCBYJKwYBBAHaRw8BAQdASkFrVm/MHGNpj7Oa+nq4b7eBg5LX5qnvS6ojH04ZE9+0LENo
 cmlzdG9waGVyIEJyYW5ub24gPGNocmlzQHRoZS1icmFubm9ucy5jb20+iJAEExYIADgWIQTFfzWT
 HzF7+QWPg09oJ1i8YNj4egUCX37pCAIbAwULCQgHAgYVCgkICwIEFgIDAQIeAQIXgAAKCRBoJ1i8
 YNj4esVsAQCJXDxhj5gZjcrNMmSH6Z+X5RDdbvsTRvS5wwQXM3g4kAEAjOrdx/fvZDiKL8dylDhU
 YUVVSkwWeOD2UtmYjm/QtwG4OARffukIEgorBgEEAZdVAQUBAQdAOMaQorDR8QUdM34/Q9mUyBvS
 9WFK0Mb76dHyNkERx2kDAQgHiHgEGBYIACAWIQTFfzWTHzF7+QWPg09oJ1i8YNj4egUCX37pCAIb
 DAAKCRBoJ1i8YNj4eo/8AQC4AX6NMv65KQQU7s95T/1Y4E+Z7KTbvhKJeSjdDfj88AEA/qzPnDvl
 dLmqqNTqsfZCK81teOxSoNhRlhWcQ8QQ/wY=
Date: Thu, 26 Jan 2023 02:37:16 -0800
In-Reply-To: <64291a12-7cfc-3aa6-75d1-f8b369b47ec4@verizon.net> (Al
	Sten-Clanton's message of "Sat, 14 Jan 2023 12:07:36 -0500")
Message-ID: <87a625h99f.fsf@the-brannons.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/28.2 (gnu/linux)
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

Al Sten-Clanton <albert.e.sten_clanton@verizon.net> writes:

> Greetings!
>
>
> I want to check if an answer to a question I have was on the Speakup
> list a few months ago.=C2=A0 So far, I haven't found anything later than
> January of 2021.=C2=A0 Could somebody tell me where to look?

Cc'ed the BLVUUG list, since this concerns y'all too.

Ask and you shall receive.  I've imported all of the Speakup archives,
from 2000 until the present, into a public-inbox (see
https://www.public-inbox.org/README.html for details about what that
is).

You can find the archive at https://inbox.the-brannons.com/speakup.  You
can also read the archives or follow the list using NNTP or IMAP.  I use
nonstandard ports: the NNTP server is at port 1119, and the IMAP server
is at port 1143.

Public-inbox stores all the messages in a git repo.  So if you want to,
you can clone and mirror the whole archive, and keep it up to date by
pulling regularly.

There's also an archive of blinux-list on inbox.the-brannons.com, just
because I could do it.  The lists I administer --
edbrowse-dev, commandline, and blvuug-discuss -- are all there too, of cour=
se.

I'm happy to publish archives of other lists with public-inbox if people
ask.

-- Chris

