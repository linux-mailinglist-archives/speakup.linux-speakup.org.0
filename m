Return-Path: <speakup+bounces-533-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 4B613591C83
	for <lists+speakup@lfdr.de>; Sat, 13 Aug 2022 22:04:52 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" header.d=zamazal.org header.i=@zamazal.org header.a=ed25519-sha256 header.s=ed25519 header.b=mHAE3bCA;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 81BF33847DE; Sat, 13 Aug 2022 16:04:51 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 60995384773
	for <lists+speakup@lfdr.de>; Sat, 13 Aug 2022 16:04:51 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id D96F0383775; Sat, 13 Aug 2022 16:04:46 -0400 (EDT)
Received: from zamazal.org (petrel.zamazal.org [37.205.9.215])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 22ACE383770
	for <speakup@linux-speakup.org>; Sat, 13 Aug 2022 16:04:46 -0400 (EDT)
DKIM-Signature: v=1; a=ed25519-sha256; q=dns/txt; c=relaxed/relaxed;
	d=zamazal.org; s=ed25519; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:Message-ID:In-Reply-To:Date:References:Subject:Cc:To:From:Sender
	:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
	List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=x6XGMF4k35RGBRoQfs3C+UfX86PTBAMhRumCmWqcXag=; b=mHAE3bCAvdFrU20YoJAMXkYPTn
	va0SKjYqyMiPlf7FYm6Adwy/IS1jrxHDgK1mH9qwnNi9wo37kWYBNxj8pgBg==;
Received: from condor.zamazal.org ([77.48.47.85] helo=zamazal.org)
	by zamazal.org with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <pdm@zamazal.org>)
	id 1oMxN5-00413N-7E; Sat, 13 Aug 2022 22:04:35 +0200
Received: from finch ([192.168.136.5] helo=finch.localdomain)
	by zamazal.org with esmtp (Exim 4.94.2)
	(envelope-from <pdm@zamazal.org>)
	id 1oMxN4-001wu2-RS; Sat, 13 Aug 2022 22:04:34 +0200
Received: from finch (localhost [127.0.0.1])
	by finch.localdomain (Postfix) with ESMTP id 0ACAC236;
	Sat, 13 Aug 2022 22:04:33 +0200 (CEST)
From: Milan Zamazal <pdm@zamazal.org>
To: Karen Lewellen <klewellen@shellworld.net>
Cc: speakup@linux-speakup.org,  Blinux-list@redhat.com
Subject: Re: "Accessibility in Fedora Workstation" (fwd)
References: <Pine.LNX.4.64.2208112229350.1215855@server2.shellworld.net>
	<1e623296-a020-b22d-52cc-77e3a01c2f61@pobox.com>
	<Pine.LNX.4.64.2208121226001.1229118@server2.shellworld.net>
	<871qtkrs03.fsf@zamazal.org>
	<Pine.LNX.4.64.2208131430230.1254020@server2.shellworld.net>
Date: Sat, 13 Aug 2022 22:04:32 +0200
In-Reply-To: <Pine.LNX.4.64.2208131430230.1254020@server2.shellworld.net>
	(Karen Lewellen's message of "Sat, 13 Aug 2022 14:36:36 -0400 (EDT)")
Message-ID: <87o7wnq59r.fsf@zamazal.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/28.1 (gnu/linux)
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

>>>>> "KL" =3D=3D Karen Lewellen <klewellen@shellworld.net> writes:

    KL> may I ask from where he obtained his software engineering
    KL> degree?  Studied computer science?  Perhaps disability studies?
    KL> there are certainly scores of disabled individuals with these
    KL> various levels of qualification..even who are Linux users.  The
    KL> interview did not document a single one, outside of his
    KL> experiencing blindness..which is not going to insure he creates
    KL> an accessible platform for fedora since access refers to several
    KL> populations.  and he states he knows nothing about those.

I have already said regarding this what I felt was needed and I don=E2=80=
=99t
find appropriate continuing that discussion here.  I=E2=80=99d suggest focu=
sing
on how to improve free software accessibility instead.

If anybody cares about Fedora accessibility, there is always opportunity
to help by providing fixes to reported bugs, giving technical advice or
filing bugs on not yet reported issues.  All of these is needed, it=E2=80=
=99s
sometimes difficult to move on with some issues and to get any help.
OTOH trying to demotivate people who work on accessibility is certainly
not helpful.

Regards,
Milan

    KL> On Sat, 13 Aug 2022, Milan Zamazal wrote:

    >>>>>>> "KL" =3D=3D Karen Lewellen <klewellen@shellworld.net> writes:
    >>=20
    KL> What bothers me most are his lack of actual qualifications, and
    KL> absolute dismissal of what he has not experienced..as if he
    KL> defines Linux usage for everyone.  That attitude is dangerous,
    KL> because he is educating those outside of the accessibility
    KL> experiences, who will believe his ignorance is factual.  he has
    KL> to be expert, it is his job.
    >>=20
    >> Hi Karen,
    >>=20
    >> I know Lukas personally and I admire his skills and
    >> qualifications.  I also know first hand that he is open to
    >> constructive feedback and I believe he=E2=80=99d be happy to be corr=
ected
    >> about possible technical inaccuracies in the interview.  It may
    >> be also a good opportunity to find out what=E2=80=99s possibly missi=
ng in
    >> making anybody better informed.
    >>=20
    >> As for =E2=80=9Cabsolute dismissal of what he has not experienced=E2=
=80=9D, what
    >> reasonable free software alternatives to a less or more standard
    >> desktop with Orca and a software synthesizer can you see for a
    >> common blind user who needs to use a fully working web browser,
    >> to read and process text documents, to be compatible with other
    >> computer users, etc.?
    >>=20
    >> And let=E2=80=99s be realistic.  We celebrate every single developer
    >> hired to improve accessibility.  This tells something about the
    >> state of the matters.  We cannot expect that a single person will
    >> fix all the kinds of accessibility problems in all the
    >> environments.  Lukas works at his job focusing on certain areas
    >> currently seen there as urgent ones and I appreciate this
    >> opportunity.  Anybody else seeing a need to work on other areas
    >> is welcome to contribute to whatever sees fit, as I do.
    >>=20
    >> Regards, Milan
    >>=20
    >>=20
    >>=20


