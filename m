Return-Path: <speakup+bounces-1343-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 85EC0B55325
	for <lists+speakup@lfdr.de>; Fri, 12 Sep 2025 17:21:51 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm2 header.b=OHvaMwUL;
	dkim=pass (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm1 header.b=hFGffru+;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id C4958382C46; Fri, 12 Sep 2025 11:21:50 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id A0A75382BBF
	for <lists+speakup@lfdr.de>; Fri, 12 Sep 2025 11:21:50 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 46AE2382BC8; Fri, 12 Sep 2025 11:21:43 -0400 (EDT)
Received: from fout-b4-smtp.messagingengine.com (fout-b4-smtp.messagingengine.com [202.12.124.147])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 5E6F4382BBF
	for <speakup@linux-speakup.org>; Fri, 12 Sep 2025 11:21:42 -0400 (EDT)
Received: from phl-compute-06.internal (phl-compute-06.internal [10.202.2.46])
	by mailfout.stl.internal (Postfix) with ESMTP id 4F4891D00255;
	Fri, 12 Sep 2025 11:21:40 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
  by phl-compute-06.internal (MEProxy); Fri, 12 Sep 2025 11:21:40 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	hubert-humphrey.com; h=cc:cc:content-type:content-type:date:date
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm2; t=1757690500;
	 x=1757776900; bh=WmTA9A+vo8BTiZsR7Cy3PzvqrSdk54jRYTADQjSZ3gY=; b=
	OHvaMwULDAtTjabQSLemVbCVvEIJCQelkclpsPS+10QaNDmtXkFX0J8oYl1jcM5D
	3b/XEUy0gAs9cepwkFtjRff2zZnNU6871nJ3k+m4SdCdJpzIflt1mIq+rMuty4M5
	NcyhgvRCiBH5WSgxEiltFf1vo7rJEMnGa8xcTPSx2MdOJCzTZasvLM/dtG0cWFSX
	vY8oPh1gb1zi2jS0XL0VFVR7w5F3YD0wcRA8sLzmERQUkRB9/sSUd5QRws2kVh9v
	QStFSFYm3ZsQaKQETZN71yF9FPi7foYQAOHr4ZtYD2quseY0Y8stX1Bodaf8oABv
	gWIlrRkZ9PFuXxBKeQKcmg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
	1757690500; x=1757776900; bh=WmTA9A+vo8BTiZsR7Cy3PzvqrSdk54jRYTA
	DQjSZ3gY=; b=hFGffru+U9WAHPhu83ppr9mMb8hnZD5AYhujqKr3SD7YNTTaffq
	rXvHhjIHuC7U4WAgP6h4MPCTOpm1WGtXb/PhMJx+VfkjYU4PjBr/9t/u1J+jsm5h
	ZZ0E4X2ygt77ZXM7vX72Kii/2eHQoXr30yJH+GI7EFAGqolK/eIVYIjUf8rhwkBz
	0xre4NY/NCqzDCz6EXsSY1MHWFbIF/hPlLissm/uEubCgwmm6ELRw6lurCd68WGj
	M1Iv0h5AOfe5jA+ComuOUwPAHkaZy3IzyvLjk6DKu2+3+4Cmxg2fUI1Pw75qYH75
	0FcFa10SfSfJ5frjOfDlagmjNOo+eYLKvvA==
X-ME-Sender: <xms:gzrEaL5rt2Q_rmMbHU61WiS4a672fuE7oJ40nXdTD0BrabKTgtc_KA>
    <xme:gzrEaLeh9zGaULSy2e_jNcIoBEwRLaCr8LkOS-eI2OX2TgWpw9uNLVjqW0dc6x6UK
    vdPH3TuUqm9nI-1yPY>
X-ME-Received: <xmr:gzrEaPBSjmHwZj6XG5E59buc1jJ0LSL0wvkYyd8n-8jXJOWClhH1FCJaYGVgOR7z5N5UxDJCfsn4glyJDAvB1EXTpxxyAia3Qn4>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggddvleegtdcutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
    ihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjug
    hrpeffhffvvefujgfkfhggtgesthdtredttddtvdenucfhrhhomhepvehhihhmvgcujfgr
    rhhtuceotghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomheqnecuggftrf
    grthhtvghrnhepvdehgeeljeekgeeugfefleekjeeivdekkedvteeuveeufeeffffffeff
    ledufedtnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomh
    eptghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomhdpnhgspghrtghpthht
    ohepgedpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtoheptghonhhtrggtthesjhhooh
    hkihgrrdhorhhgpdhrtghpthhtohepkhhlvgifvghllhgvnhesshhhvghllhifohhrlhgu
    rdhnvghtpdhrtghpthhtoheptghluhhlodhsphgvrghkuhhpsehpohhsthgvohdrtghomh
    drsghrpdhrtghpthhtohepshhpvggrkhhupheslhhinhhugidqshhpvggrkhhuphdrohhr
    gh
X-ME-Proxy: <xmx:gzrEaO8lnqqj1QfF-QuzXpzGB0PvtZQByAiLYKk8D9jT5N8PwV42wA>
    <xmx:gzrEaKIuVURvQJ7QclMOQfTPwtAYxMJGrFfaw-w6IN0FwnxQSOF2MA>
    <xmx:gzrEaHh6baE04Az_2zhhiYRRoQFw4RpSJkKHkm4uSX7K2bysO1USCw>
    <xmx:gzrEaK7bcSmPIvxCVfdhvOMP2QfbS0KpDG5cdNr0DzpQItM-bAdqUw>
    <xmx:hDrEaF8V6Z5UAFrQ0nBuMAM9STmpYm2wyEAm791pcoOlba0p_JN1Npxs>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 12 Sep 2025 11:21:38 -0400 (EDT)
Date: Fri, 12 Sep 2025 08:21:37 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: Jookia <contact@jookia.org>
cc: Karen Lewellen <klewellen@shellworld.net>, 
    Cleverson Casarin Uliana <clul+speakup@posteo.com.br>, 
    speakup@linux-speakup.org
Subject: Re: Question about blind CLI use (was Re: "your browser is not
 supported anymore" ...)
In-Reply-To: <aMOwSwrEWTBtFn60@titan>
Message-ID: <45100fe1-7400-688a-c7fc-7eae1f81ef2b@hubert-humphrey.com>
References: <202509111603.58BG3W3p018143@nfbcal.org> <7a04c6dd-c761-4445-b53a-3c4525cf2a87@crosslink.net> <579c5d9b-5ba1-4029-982a-01295fea3a61@posteo.com.br> <Pine.LNX.4.64.2509112223130.3830807@users.shellworld.net> <6d3f190e-733a-e5d5-a8f5-cc6eb2c05e65@hubert-humphrey.com>
 <Pine.LNX.4.64.2509120106350.3832376@users.shellworld.net> <aMOwSwrEWTBtFn60@titan>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Well, Jookia, to adequately keep track of your questions, I cut-and-pasted them 
in nano in a separate console. 
I think to a larger extent, especially in my case, as I began a  computer 
journey in 1994, I became used to a text interface, although I appreciated 
menus which guided me. I was practicly forced in to windows95 as I needed a 
more powerful machine to begin enjoying mp3s in late 1997. To some extent I 
could manage with a simple windows desktop until they ruined it by switching to 
windows explorer. By 2006 with windows media player locking up my machine, we 
completely got rid of windows. All along the way I would launch a DOS prompt or 
telnet to read-and-write mail in Pine. I've tried ORCA but am not familliar or 
comfortable with its interface. 
Jookia, I think DOS emu works much better with a screen-reader. What do you 
like better about DosBox? Please, Kirk, cover your ears, but I would love to 
resume useing Vocal-Eyes with a DecTalk. With its exception dictionary-and-its 
ability to enjoy single-digit numbering, I was `extremely comfortable in that 
envirenment. In some ways I find a Chromebook easier than ORCA, but Chromevox 
doesn't support a numpad like Speakup-and-NVDA do. Anyway, I hope I've answered 
all of your items, but please understand, I am only a user-and-not a 
programmer.
Chime


