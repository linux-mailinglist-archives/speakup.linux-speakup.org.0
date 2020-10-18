Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (tunnel25281-pt.tunnel.tserv21.tor1.ipv6.he.net [IPv6:2001:470:1c:288::2])
	by mail.lfdr.de (Postfix) with ESMTP id BAFFD2961A9
	for <lists+speakup@lfdr.de>; Thu, 22 Oct 2020 17:27:30 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 49A85380F83; Thu, 22 Oct 2020 11:27:30 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm2 header.b=SGxZT0XK;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm1 header.b=lKgjhDWw;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 34D2C380F1F;
	Thu, 22 Oct 2020 11:27:28 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id D5A09380C18; Sun, 18 Oct 2020 19:03:07 -0400 (EDT)
Received: from wout2-smtp.messagingengine.com (wout2-smtp.messagingengine.com
 [64.147.123.25])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 3BAF5380962
 for <speakup@linux-speakup.org>; Sun, 18 Oct 2020 19:03:07 -0400 (EDT)
Received: from compute2.internal (compute2.nyi.internal [10.202.2.42])
 by mailout.west.internal (Postfix) with ESMTP id 3F97DD4F
 for <speakup@linux-speakup.org>; Sun, 18 Oct 2020 19:03:03 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute2.internal (MEProxy); Sun, 18 Oct 2020 19:03:03 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 hubert-humphrey.com; h=date:from:to:subject:message-id
 :mime-version:content-type; s=fm2; bh=ZHRQu6NL/CrsCivVlU/u+5UWkD
 UDOzP75I1ppCGpyH0=; b=SGxZT0XKwmXowvh7ZqSxSa7qf99acgWttZpy7YFp4l
 l+++wf9M214OyONvztvNkHT84UHwUjmumw0Ssx3Ir3Y/+AlksjQYmDMI0ZTwhtug
 SEDJw8WA5RuJ0hVaNXdmLHQQ3jM3jqfH41rkEmQoFd6mQ4TtczCO0p7i2Bws9Fg2
 wUlko1ilslULw4jXDZBdXaNg/odUqf8bn7c4YjUDzqbCFksNv1oo9Q8IbCEpRUoJ
 mdx3ftZk4Tb+TdWftqgOZDPEquI27QrOZTGtpgkmtx5SKf27cv45OiQQnYpyHu6/
 vtmXy52APdOu42S/cn6yD7IPiVi2yfSsud46+P3oJkOg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=content-type:date:from:message-id
 :mime-version:subject:to:x-me-proxy:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm1; bh=ZHRQu6NL/CrsCivVlU/u+5UWkDUDO
 zP75I1ppCGpyH0=; b=lKgjhDWwxB7prufUhsXRO6Rf/rQTjAr5JWhx4tNsGDFNN
 udUkxc9j4mypfFqUBQ5DRnTsd5y3mBuGKQPLkxJRNjh1FhC0KvaI28hrUVKSMHsn
 x7PVwPXLHAg4JD7Eh3jeZwCOft816uQIrh/EgKb6Hws/vsrlcY5FNs1Xa+1GzF+v
 pNY7hNa2qWZnBFMsdLLIihkIPkPlO9uJ4jlnD3U7TGLY0xkEvjHQXiVK+Wldcrqs
 72l9+R1AGtcU00PGPf+kKj1pRXg7S4+//mQ+/K3Ugl/AyaR7XZZ8GBzYZRSdnVIa
 q35W4oabV2hTDfoVuXZETqkgqQIGJXR1WuwXYymGg==
X-ME-Sender: <xms:psmMX2FfCIpQUH2He5nxmXKXr5E7OtI_vNS5fpYUq6BxkpsmI6m73g>
 <xme:psmMX3Xeo57msQbbn8gAlkqqx9k7VusePpY019t5J9M4DH9vrv9n9mH8JR0LiFfGx
 pg8aJYNoVD9xiRaa28>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedrjedtgddukecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffukfgfgggtsehttdertddtre
 dvnecuhfhrohhmpeevhhhimhgvucfjrghrthcuoegthhhimhgvsehhuhgsvghrthdqhhhu
 mhhphhhrvgihrdgtohhmqeenucggtffrrghtthgvrhhnpefhvdejgfefhfdvhfdvgedvie
 dvhfetteejvdejhfdtheelfeethfetjedtudehhfenucfkphepuddtgedrudejvddrfedr
 ieefnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomheptg
 hhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomh
X-ME-Proxy: <xmx:psmMXwIu30a-1krut06ozdadY43WVQ8Bwv9I9bR_uDa6zYnre15vew>
 <xmx:psmMXwHPFxtg9Pb-Sy23WQYBHZHRlt5sFHaZZki4lOIcPojdg8UauA>
 <xmx:psmMX8XNTdw1X1Jfu10FBTE45dFxGNoylWhkijtWqDmVRVBpEeEHdA>
 <xmx:psmMX0j1ppLd701Kfj2yEtyJ27a8i3hDsDuCMMavUhEc6jHgn38nGg>
Received: from chime.lan (cpe-104-172-3-63.socal.res.rr.com [104.172.3.63])
 by mail.messagingengine.com (Postfix) with ESMTPA id 37F0C3064683
 for <speakup@linux-speakup.org>; Sun, 18 Oct 2020 19:03:02 -0400 (EDT)
Date: Sun, 18 Oct 2020 16:03:01 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime
To: speakup@linux-speakup.org
Subject: DecTalk Improvements-and-Issues in 5.9?
Message-ID: <alpine.DEB.2.23.453.2010181556340.2034@chime>
User-Agent: Alpine 2.23 (DEB 453 2020-06-18)
MIME-Version: 1.0
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

Well, after reconfiguring hard-drives, I am now up on a 5.9.1   Looks like 
the volume, pitch, and rate drops may be gone, however, this version has 
an inflection instead of volume settings. I have the patch which was sent 
out a couple of weeks ago, but I have `never run a patch. I just renamed 
it to speakup-patch  and ran with a patch command, but it just sits there.
My largest problem is hardware related. If I do any typing or examining 
with numpad or any other kees, I get a 4second delay from the DecTalk. 
Seems like when we fixed this, it was an accident. Any1 have any 
suggestions please-and-thanks so much in advance
Chime
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
