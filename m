Return-Path: <speakup+bounces-1350-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 9129EB556E1
	for <lists+speakup@lfdr.de>; Fri, 12 Sep 2025 21:26:02 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; secure) header.d=panix.com header.i=@panix.com header.a=rsa-sha256 header.s=panix header.b=opfFmgV0;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 2634838309E; Fri, 12 Sep 2025 15:26:02 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 0666B382C5C
	for <lists+speakup@lfdr.de>; Fri, 12 Sep 2025 15:26:02 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id E0063382C60; Fri, 12 Sep 2025 15:25:54 -0400 (EDT)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 2D42C382C5A
	for <speakup@linux-speakup.org>; Fri, 12 Sep 2025 15:25:54 -0400 (EDT)
Received: from smtpclient.apple (64.67.55.137.res-cmts.pls.ptd.net [64.67.55.137])
	by mailbackend.panix.com (Postfix) with ESMTPSA id 4cNkt8427WzRRv;
	Fri, 12 Sep 2025 15:25:52 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=panix.com; s=panix;
	t=1757705152; bh=XumFbwPxGrOVjzkdmy5o/WcPf053G99hLl260ejjufg=;
	h=From:Subject:Date:References:Cc:In-Reply-To:To;
	b=opfFmgV0ACeweLUOI/VrjCN4liVyDBUqUS/48kO6rySmd/lu9kE4/9bjWOrAcP+Ty
	 SYUsJ6cnOWNGwNMxhFfii5ygY4hC6qVSrk120P7L8ovjRa0FeVBtGmZqPrEd9j70bx
	 uw+RC3fodNcjgoKwpW3v5PSvSz1QaQ9JLZXgEt4s=
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
Subject: Re: "your browser is not supported anymore" both lynx and elinks, what now?
Date: Fri, 12 Sep 2025 15:25:41 -0400
Message-Id: <297F889A-DB30-4C99-BBAE-63FF29933796@panix.com>
References: <202509121438.58CEcaRB012655@nfbcal.org>
Cc: Chevelle <cstrobel@crosslink.net>, speakup@linux-speakup.org,
 buhrow@nfbcal.org
In-Reply-To: <202509121438.58CEcaRB012655@nfbcal.org>
To: Brian Buhrow <buhrow@nfbcal.org>
X-Mailer: iPhone Mail (22G100)
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

It=E2=80=99s buried deep in lynx.cfg but provision for nonvolatile cookie st=
orage can be enabled. The lines to do this are commented out and have to be u=
ncommented and the cookie path has to exist and you run touch .lynx_cookies o=
nce to create and clear the file. Reverse search lynx.cfg from bottom to top=
 to find the lines quickly.

On Sep 12, 2025, at 10:38=E2=80=AFAM, Brian Buhrow <buhrow@nfbcal.org> wrote=
:

=EF=BB=BF    Hello.  Some months ago, I looked into using https://lite.duckd=
uckgo.com
instead of Google as a search engine.  This was after Google began requiring=
 Javascript to
submit search queries in the US earlier this year.  I found it didn't work b=
ecause in order to
perform a search, I had to get through a capcha which included a bunch of im=
ages which, not
surprisingly using lynx, were all titled [image].  As far as I could tell, t=
here was no audio
alternative.  To make matters worse, by default, Lynx doesn't store cookies t=
o nonvolatile
storage, so every time one restarts lynx, one has to get new cookies and wor=
k through the
capcha again.  There is supposed to be a way to get lynx to save cookies to a=
 cookie file, but
I've never been able to get it to work.

-thanks
-Brian



