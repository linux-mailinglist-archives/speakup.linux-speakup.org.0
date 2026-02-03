Return-Path: <speakup+bounces-1548-lists+speakup=lfdr.de@linux-speakup.org>
Delivered-To: lists+speakup@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UGbsOTU3gmmVQgMAu9opvQ
	(envelope-from <speakup+bounces-1548-lists+speakup=lfdr.de@linux-speakup.org>)
	for <lists+speakup@lfdr.de>; Tue, 03 Feb 2026 18:58:13 +0100
X-Original-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 6084DDD341
	for <lists+speakup@lfdr.de>; Tue, 03 Feb 2026 18:58:12 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; secure) header.d=panix.com header.i=@panix.com header.a=rsa-sha256 header.s=panix header.b=dpAVNKDH;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 105AA381924; Tue, 03 Feb 2026 12:58:10 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id E7F5F381806
	for <lists+speakup@lfdr.de>; Tue, 03 Feb 2026 12:58:09 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 10DDF3818A2; Tue, 03 Feb 2026 12:58:04 -0500 (EST)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 1035E381806
	for <speakup@linux-speakup.org>; Tue, 03 Feb 2026 12:58:03 -0500 (EST)
Received: from smtpclient.apple (64.67.55.137.res-cmts.pls.ptd.net [64.67.55.137])
	by mailbackend.panix.com (Postfix) with ESMTPSA id 4f5B6K1kjrz4lHp;
	Tue,  3 Feb 2026 12:58:01 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=panix.com; s=panix;
	t=1770141481; bh=T1W5kQpEvbIqc5BKGgX74aHzFRolhcniA3FfI3STHMs=;
	h=From:Subject:Date:References:Cc:In-Reply-To:To;
	b=dpAVNKDHza94tLrrh0EBq5th7DzK/d+gDAw/jhl9yRPIWUp18bTppDCJ1N2RH62/j
	 5Ian2wqoLvN82FgijWHChOFmOFBoHX9ZyTNe/5FWT7NA1dm8bvFWdK0xYGLEDyxU2u
	 ZFGuIjDyN1CT6XROazERonSnCDA3mCHHku0jlGxU=
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
From: jude dashiell <jdashiel@panix.com>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux." <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
Mime-Version: 1.0 (1.0)
Subject: Re: Mourning Didier Spaier
Date: Tue, 3 Feb 2026 12:57:50 -0500
Message-Id: <2DD5ABE9-DE07-4E18-B2FA-60B04E107478@panix.com>
References: <d5543615-3d43-6169-8ce4-18dba36d1b80@reisers.ca>
Cc: Janina Sajka <janina@a11y.nyc>, speakup@linux-speakup.org
In-Reply-To: <d5543615-3d43-6169-8ce4-18dba36d1b80@reisers.ca>
To: Kirk Reiser <kirk@reisers.ca>
X-Mailer: iPhone Mail (23C71)
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.89 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[panix.com,none];
	R_DKIM_ALLOW(-0.20)[panix.com:s=panix];
	MAILLIST(-0.18)[generic];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_NO_TLS_LAST(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[panix.com:+];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-1548-lists,speakup=lfdr.de];
	RCPT_COUNT_THREE(0.00)[3];
	R_SPF_NA(0.00)[no SPF record];
	APPLE_IOS_MAILER_COMMON(0.00)[];
	ASN(0.00)[asn:5645, ipnet:206.248.128.0/18, country:CA];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[jdashiel@panix.com,speakup@linux-speakup.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[speakup];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lwn.net:url,eu.org:email,gregn.net:url]
X-Rspamd-Queue-Id: 6084DDD341
X-Rspamd-Action: no action

Didier certainly was a contributor and I will miss him and his voice we talk=
ed on the phone before Old Boney came and switched the channel on him. With a=
ny luck, we will all meet again in a better place.


On Feb 3, 2026, at 12:04=E2=80=AFPM, Kirk Reiser <kirk@reisers.ca> wrote:

=EF=BB=BFYes, he will be missed. It's always hard to hear of ones passing wh=
en
you've known them forever. As time goes bye one misses more and more
folks.

 Kirk

On Tue, 3 Feb 2026, Janina Sajka wrote:

> I am saddened by this news. Didier was indeed a frequent contributor
> here. But perhaps more specifically, he was always quick to respond when
> people needed help, and to respond directly and graciously. I know I've
> benefited from his responses, and I will miss that grace because of his
> passing.
>=20
> Thanks for the news, Gregory.
>=20
> Warmly,
> Janina
>=20
> Gregory Nowak writes:
>> Hello all.
>>=20
>> Since Didier was a frequent contributor to this group, I thought I
>> would post this here.
>>=20
>> <https://lwn.net/Articles/1056384/>
>>=20
>> Greg
>>=20
>>=20
>> --
>> web site: http://www.gregn.net
>> gpg public key: http://www.gregn.net/pubkey.asc
>>=20
>> --
>> Free domains: http://www.eu.org/ or mail dns-manager@EU.org
>=20
>=20


