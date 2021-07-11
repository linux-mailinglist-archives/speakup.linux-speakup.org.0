Return-Path: <speakup+bounces-227-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id A606F3C39F6
	for <lists+speakup@lfdr.de>; Sun, 11 Jul 2021 05:19:32 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 362CA380E23; Sat, 10 Jul 2021 23:19:32 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm1 header.b=kc28p4GQ;
	dkim=pass (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm3 header.b=FltpxhqK;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 22A9A380B0F
	for <lists+speakup@lfdr.de>; Sat, 10 Jul 2021 23:19:32 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id D4E43380B1F; Sat, 10 Jul 2021 23:19:25 -0400 (EDT)
Received: from out1-smtp.messagingengine.com (out1-smtp.messagingengine.com [66.111.4.25])
	by befuddled.reisers.ca (Postfix) with ESMTPS id F4132380A84
	for <speakup@linux-speakup.org>; Sat, 10 Jul 2021 23:19:20 -0400 (EDT)
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
	by mailout.nyi.internal (Postfix) with ESMTP id 566D45C0221;
	Sat, 10 Jul 2021 23:19:20 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute6.internal (MEProxy); Sat, 10 Jul 2021 23:19:20 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	hubert-humphrey.com; h=date:from:to:cc:subject:in-reply-to
	:message-id:references:mime-version:content-type; s=fm1; bh=PmDu
	/PiCnu1s2ZduG3FwV5cf2mKN3kBsVqSdkwyD6ZM=; b=kc28p4GQ7a2C91vi93lS
	/g1BR80AckD5OZzYbx/eB0e16FdKDjZVpGl6Z7a+Igysh7TazGXa301fRYuMxBhp
	bw5NjSuHQ2KhJbbPL3H8e+fNbrGDxaplCumsFyzv573SHW1EZVzgdxkokZ66UvNi
	VPkFLUd02eMxDE+0IU3DG8rII1vo99TQc8AoDeyKXsNbjHtJs+6JypFtvVOWuVgN
	e/VwRZXpADpzXDAifFheG0OMkcRU2fjHb++NU7t6f0mdrckc8+6uO850RrtTdcUk
	x5lMtCy4LgvouF5ZTZfWeOoB3VRBaVcHv24s8PIepqxxsLisz/M00DVcXPlVimT8
	ww==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=PmDu/P
	iCnu1s2ZduG3FwV5cf2mKN3kBsVqSdkwyD6ZM=; b=FltpxhqKOipVirOEMa7x+4
	+fq+7J9rLTTZgOD096pibxI0DuKeAR5l1BhThN/IvvpLuEWGFgMP/B+DfElfp6HA
	m1koxL/0vketQ4f/N8Nn2skcMa9TbuT/vlDKeKGonsepu0f+DpK0FiXTsjqtdgyw
	CLoU1bXkWcvBqm9vz2jckXIfbtgjhx8zeB0IrEjI85PKwk7EQj7rzQYw2pU+9dVa
	DYQEuu3e+HJ/Bvn3A8rP1exNZYHgEZU6m68sqbp2FWnCOzgUZtOz2Ce11Pp2mRjs
	UOL9NHk4CZPx3YyKYoxC7E5UFpujEQh+UgY5n/qBGc3xyobMV/CaYtkzRIQPnyyA
	==
X-ME-Sender: <xms:N2PqYPlpzEJ-dkwbPZBAX2g_el4qv3FIh9lRAEanS29peC3gQoE2ZQ>
    <xme:N2PqYC3xwP-WtNdKibd62UHpjNMz_CKsp2Bko7SXSmJ6jmj0QKXmQoUQP5U57XKtl
    7voWu1Riik69niZauA>
X-ME-Received: <xmr:N2PqYFp2sZDSZ7-xlX9mNH5c0PB5eJROq5d4URwfj6PYYpTPj9yCv36eClMJjnGG6RlOB6ReZ5nYwWSMTo-gx7hISy9ziOHZng>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrtdelgdeijecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpeffhffvufgjkfhfgggtsehttdertddttddvnecuhfhrohhmpeevhhhimhgvucfj
    rghrthcuoegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhmqeenucggtf
    frrghtthgvrhhnpeffhedthfdvvdeuueeihedvfeffuedtgeeuudfhgfelteelvdduudfg
    leekvedtveenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhroh
    hmpegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhm
X-ME-Proxy: <xmx:N2PqYHmsv3fuwXYHDmZDxY-u40GPD3GjWogP-jAJXE2TCip5gBWiEQ>
    <xmx:N2PqYN3pYFunU5MXCrUTt09pVoTcNXDDYCv0_5vHf1gawWqLM7oxXA>
    <xmx:N2PqYGu9Ark_noz4ilGXnDnzM-puWjHKwyaPZUJeS8HRfAUKjQHsDQ>
    <xmx:OGPqYK9EsQiTrCko9NcLGd9aQfqdv-cTKmGW9b6Piy9r8EAyERCriQ>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 10 Jul 2021 23:19:19 -0400 (EDT)
Date: Sat, 10 Jul 2021 20:19:18 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
To: Karen Lewellen <klewellen@shellworld.net>
cc: speakup@linux-speakup.org
Subject: Re: No Interrupt in Voxin Embedded Voices?
In-Reply-To: <Pine.LNX.4.64.2107102255340.3430053@server2.shellworld.net>
Message-ID: <3fad2141-177b-fc4e-e3f5-15155421fac7@hubert-humphrey.com>
References: <a983ac4d-a9aa-a592-8612-275a1d729bfe@hubert-humphrey.com> <Pine.LNX.4.64.2107102255340.3430053@server2.shellworld.net>
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

Hi Karen-and-All: There are dictionary files several levels deep in a Voxin 
version number directory. Speakup does work, but I just can't interrupt it at 
all. And Karen, when I first ran Speakup in 2003 with a Dec PC internal 
interrupts were quite slugglish until I got a DecTalk U S B in 2005, which I am 
still enjoying as I type.
Chime


