Return-Path: <speakup+bounces-999-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 22E2675101F
	for <lists+speakup@lfdr.de>; Wed, 12 Jul 2023 19:57:53 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm3 header.b=F0hYydNo;
	dkim=pass (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm2 header.b=hVtXnDde;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 4BC0B38257B; Wed, 12 Jul 2023 13:57:52 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 2B6813823DC
	for <lists+speakup@lfdr.de>; Wed, 12 Jul 2023 13:57:52 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 726AA3823EF; Wed, 12 Jul 2023 13:57:44 -0400 (EDT)
Received: from out3-smtp.messagingengine.com (out3-smtp.messagingengine.com [66.111.4.27])
	by befuddled.reisers.ca (Postfix) with ESMTPS id B871D38239F
	for <speakup@linux-speakup.org>; Wed, 12 Jul 2023 13:57:43 -0400 (EDT)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailout.nyi.internal (Postfix) with ESMTP id C13CC5C0091
	for <speakup@linux-speakup.org>; Wed, 12 Jul 2023 13:57:41 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute3.internal (MEProxy); Wed, 12 Jul 2023 13:57:41 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	hubert-humphrey.com; h=cc:content-type:content-type:date:date
	:from:from:in-reply-to:message-id:mime-version:reply-to:sender
	:subject:subject:to:to; s=fm3; t=1689184661; x=1689271061; bh=ke
	KaSGyR5ZqkeNznYYIBan4jberLuP9ZDMjyKV8Fs3A=; b=F0hYydNoE/KPq0wZ30
	g07GkV7kl/sBiDg5cOIVQ40xzSLLTYSOSd/JzJIIwOX9v9MS+i5HD3xZ+R8TBF5b
	eKRBtdNinAZir2a/JuVnb1SRV93cbXBvh8Km2sLCp/ucc/0Yt5lxYP8gNzgyNWOc
	6Z7iFfK/h6jW1iLa3nehhn7QfRe/KFp+IpbI/g/bEQYipNbT8JLqrgcavecawn9r
	6O5xt02MV5l4fKLsyhbSFBBbK4CVS/PF+Bc8CAHx5HKQriH2r9MUyfpMunj3SMgA
	9NkV63+PEhrjHmRj+R/Iu7hYfr7e5weRxMgcAsD4in8ktovsh1SNZmrkNB2h3Qlh
	n5BQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:message-id
	:mime-version:reply-to:sender:subject:subject:to:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=
	1689184661; x=1689271061; bh=keKaSGyR5ZqkeNznYYIBan4jberLuP9ZDMj
	yKV8Fs3A=; b=hVtXnDde3tgTHhiGMvBnWCjo1Dn55QmyYBcSZrlIgHiEVM+V0i0
	BZgP1jqe8t7H/xGwoALwQB9hFtgqMEgHDmuS7fl8qB8ghBPcIR9TLgoAux4L92gD
	xxGUe7VyCllQlpgUFKD0msKBkKjpfLThd2P3aIvsAUnXo5NSX946Gx5XpYpmtn6C
	YfmLpKAaG2cJ9PLJaQFjTwxkuFn23SlPJWQIV6mj+P79tZMP9b7wpgHfALAC0Kgt
	gOuAaThevRwBcrqfawefFGvtDWfWphj++GftctirAQb84hnGjsmmAmdAT6eLD6sC
	iq3IgjdBeeqiMkCBl7WDrI4Ckas+TEsiL4Q==
X-ME-Sender: <xms:lemuZEh_B8C5fcDRQrbpXKewIS1vS8Bh0hMcvHjhp4hHIs_aMCPvJA>
    <xme:lemuZND94Y1fLXt0IieJs3DS3J64mWGm0KD6WplgL7UFXUpCyvCAU3FXREIRRVnQF
    gJ8QdEVBqCsoKhlz9U>
X-ME-Received: <xmr:lemuZMFJYsaq4z69HdGenB_CM6uZcWVJeuJOwsk1PR0W0LbRMjEQje7DWeBWBhZKRoP9-pRVuzH-5RVbecHmD1XMaWbmHQJVHQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedviedrfedvgdduudelucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvuffkgggtsehttdertddttd
    dvnecuhfhrohhmpeevhhhimhgvucfjrghrthcuoegthhhimhgvsehhuhgsvghrthdqhhhu
    mhhphhhrvgihrdgtohhmqeenucggtffrrghtthgvrhhnpeelveeuteefffdvfeeitdfhff
    ffiefglefgfeekgeeuteejieffveegvdevjedtteenucffohhmrghinhephhhusggvrhht
    qdhhuhhmphhhrhgvhidrtghomhenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmh
    epmhgrihhlfhhrohhmpegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhm
X-ME-Proxy: <xmx:lemuZFQ57GbZ_Izo9PwO3244M0roV0Mj-0STiiLehrXhsol0qNLRGQ>
    <xmx:lemuZBylyftTgYfq1kTb2YJRUQoie2Rhryzu8BZHWsgSg4WIYfa_OA>
    <xmx:lemuZD4R6V19hmJlgx4bCz2nd_Hy93O9tkJDcXN-RxdMfjC7FC1A1A>
    <xmx:lemuZKsamvW1WM4DVUSQhUIhdq5Byu7y8nu0Z6vaJJGyunFF9WIvmg>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
 <speakup@linux-speakup.org>; Wed, 12 Jul 2023 13:57:41 -0400 (EDT)
Date: Wed, 12 Jul 2023 10:57:32 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
To: speakup@linux-speakup.org
Subject: Announcing pod-kast with a k
Message-ID: <271c596a-9783-71c4-950f-2d2264c3e956@hubert-humphrey.com>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi All: I have been waiting a long time to offer a newer much more intuative 
podcast client for those of us who like menus-and-simplicity. I am and will be 
announcing here-and-in the Blinux list, but since this works especially well in 
Speakup, this list will enjoy it first.
DESCRIPTION
        Welcome to Pod-kast 0.8.0 written by Marc Lytle and conceived by myself, 
Chime Hart.

        Over  many  years almost all podcast clients seemed to be lacking an 
interface which made sense, as well as features I was hoping for.  The only one 
I understood was hpodder, but it is no longer available.  In Pod-kast, since I
        am totally blind and listen with Speakup, a Linux screen-reader, we took 
great care to make all functions really obvious by having numbered menus and 
yes having the word "number" before each digit removing any ambiguity.
Back again live, while you may be able to grab from a github page, which seems 
really messy in L Y N X an easier option would be a direct url from my 
web-site, but not linked from my site.
https://hubert-humphrey.com/pod-kast_0.8.0_amd64.deb
This is beta software-and-there still may be inconsistancies in the man-page. 
Rather than clutterup the list, if you have opperational issues, please write 
myself directly, or write an author Marc at an address listed in the man-page. 
I `sincerely hope all of you enjoy-and-find alot of success with this new 
client, which I named with an alternative spelling, as there are several 
podcast clients with the regular spelling.
Thanks so much in advance
Chime

