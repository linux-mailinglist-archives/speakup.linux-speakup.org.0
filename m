Return-Path: <speakup+bounces-737-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id C33D15BD67D
	for <lists+speakup@lfdr.de>; Mon, 19 Sep 2022 23:37:07 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm2 header.b=UP4892SO;
	dkim=pass (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm2 header.b=TQKTwk8W;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id D311E3809AC; Mon, 19 Sep 2022 17:37:06 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id B1F07380750
	for <lists+speakup@lfdr.de>; Mon, 19 Sep 2022 17:37:06 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 79BAF380752; Mon, 19 Sep 2022 17:36:57 -0400 (EDT)
Received: from out3-smtp.messagingengine.com (out3-smtp.messagingengine.com [66.111.4.27])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 732F1380173
	for <speakup@linux-speakup.org>; Mon, 19 Sep 2022 17:36:55 -0400 (EDT)
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailout.nyi.internal (Postfix) with ESMTP id 2BFED5C03B1
	for <speakup@linux-speakup.org>; Mon, 19 Sep 2022 17:36:47 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute5.internal (MEProxy); Mon, 19 Sep 2022 17:36:47 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	hubert-humphrey.com; h=cc:content-type:date:date:from:from
	:in-reply-to:message-id:mime-version:reply-to:sender:subject
	:subject:to:to; s=fm2; t=1663623407; x=1663709807; bh=q+Sa7kOEE3
	h4LrneN18PpnWZ6IXfXJkm3R+9ohjGMa0=; b=UP4892SOGyjNwQFxkRQKY9jmW+
	q/K8ECLg8h90lCY41cmD4IO/4tIWQ9QqMM56J0zRYL93u0hVunewXHwTsBqjE7u3
	2M/shgO9Piv16VXFUvL0mP2xFdgSlFnH/14zq0eU0RpBuljjV0cS4A9nQjH1Eqvc
	31o74xdj0dszKcCT1NQVGXXN28wk5yqD+Kj1IzVsa7kBfYfsfgmaWPyWWxIOo8J/
	S8er1vID2daXJcUgdhXvsXroig+9MU+SZjvL3KOZtyibeh9zQL7jP3T1aBf6+/Vo
	xvgGXvzLyAVa2kv2aGjNG8dZeNY8upqzqSGJjW1HdZu5/nRAkNFSZkhwIESw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:message-id:mime-version
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=1663623407; x=
	1663709807; bh=q+Sa7kOEE3h4LrneN18PpnWZ6IXfXJkm3R+9ohjGMa0=; b=T
	QKTwk8WVh/Y+myYWEkY3whUofjLvv+Aw3bU2LmZs8TeVrkSow54FaM3GnP6/6JpC
	wRk3A8qvJfGgNWJ8ic2Pc0yjx/trL1MvML6ZuznRdFBhEEHYQHRuTI3vCsalVK2Z
	zJ7oR0oynGyolcx9gURZvL59l5T73JkAPIqN8r9Q2M9h8ZLRutfeop+aMpeZL/3n
	qnLkFWhZnmfddpuOMtgJffFKsFDXUYwLN8RRsx4wmH3XEguHSqi7Zf8bEbEoeudF
	y0qpbJp7/efss5KLzT70crPJoBUVzBDxryHZfWLe3ZyRWKSkvak/9NAooDy4sAyV
	fNKJlVeJ733823NPjC6bQ==
X-ME-Sender: <xms:7uAoY229KZdYDmyJDQdn2C0mrowPXxvAB6VZe1NQ50NrgRbW7Y-f3w>
    <xme:7uAoY5GxZ0vNrd6ext3Hp3qnJllj0BtVo2LSuU9PFY5EyDGVcSChBVwkspXEaGmnI
    UsielJYbIzsu-sKKZ4>
X-ME-Received: <xmr:7uAoY-44u6vChtkzudD1LzX9F8OPtGWXt2LYPOv7ACU7UmdcZZESP4GhAMR3ERI9nvLRvUHloW3zwE4vNYqMzxk48wf-Swv8YA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrfedvjedgudeihecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffukfggtgesthdtredttd
    dtvdenucfhrhhomhepvehhihhmvgcujfgrrhhtuceotghhihhmvgeshhhusggvrhhtqdhh
    uhhmphhhrhgvhidrtghomheqnecuggftrfgrthhtvghrnhepjeffffdujeelueffieevtd
    eiteettdekgffgkedvueejteektdehfefhhfdvteeknecuvehluhhsthgvrhfuihiivgep
    tdenucfrrghrrghmpehmrghilhhfrhhomheptghhihhmvgeshhhusggvrhhtqdhhuhhmph
    hhrhgvhidrtghomh
X-ME-Proxy: <xmx:7uAoY319KHh1QdHVWreLGDHPV_HMk1VgTKS4ENg2DN-UusO92274CA>
    <xmx:7uAoY5GAe9sGnYfuvjHWg8ua_qYInvDlSJm95YlMo6yDajB1ir2Khg>
    <xmx:7uAoYw-gqi1ksjIKqNRJWiO6v6kiUTkLRmOlsZYcTlxz4Aw5ggZ9Og>
    <xmx:7-AoY4wlYEg2F-MK0wTLpQgsumtKNn5kDbA1HhqG83hOtNBdZgLzAA>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
 <speakup@linux-speakup.org>; Mon, 19 Sep 2022 17:36:46 -0400 (EDT)
Date: Mon, 19 Sep 2022 14:36:45 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
To: speakup@linux-speakup.org
Subject: Are Their BiPass KeyStrokes in Speakup?
Message-ID: <68c7b66a-d07e-1966-db37-d148eb221bed@hubert-humphrey.com>
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

Hi All: I think I remember in Vocal-Eyes, we could hit a control+n to send 
commands directly to a synthesizer. Does Speakup have such a way? Reason I ask, 
on the DecTalk discussion list, we've been discussing my long-standing Speakup 
related sudden changes in pitch, rate, and volume. And so this question came up 
about a bipass. To continue, here are Don's comments from earlier today
The problem is that we can't talk to the DECtalk without going through
SpeakUp.  To test the condition you pose, we could tell DECtalk to use
some other voice.  Then, after the "drop" happens, see if it has reset
the parameters of THAT voice... or, changed to the voice that SpeakUp
*thought* was being used.

We also don't know what the values are reverting to.  Or, what their
various defaults might be (power up, nonvolatile memory, speakup settings,
etc.)

For an original DECtalk, we could enable logging and just look at the
characters that were being sent to the DECtalk by SpeakUp.  If there
are no control sequences that try to alter these settings, then we
would KNOW that it was something that was happening inside the DECtalk
unit.
If, on the other hand, we see some commands being sent but they are
incorrect, then we know the problem lies in SpeakUp.
I don't know how to divorce the serial interface from SpeakUp so that
we can eavesdrop on it.  There are some ways to do this but I don't
know how they will color the results.
The better solution would be if SpeakUp had a debug mode that caused
all output to be copied to some log file that could be analyzed after
a "drop" was noticed.  You could then manually examine the log and
identify whether SpeakUp was causing a parameter change or not.
This would also help the developers backtrace to see why the commands
were being issued and why they weren't correct.
Chime

