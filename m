Return-Path: <speakup+bounces-773-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 20D44610580
	for <lists+speakup@lfdr.de>; Fri, 28 Oct 2022 00:16:42 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm3 header.b=jeKvnt9V;
	dkim=pass (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm3 header.b=bPLk74sd;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 01800383FF7; Thu, 27 Oct 2022 18:16:40 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id D38FA383FBB
	for <lists+speakup@lfdr.de>; Thu, 27 Oct 2022 18:16:40 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 2C257383FDC; Thu, 27 Oct 2022 18:16:31 -0400 (EDT)
Received: from wout4-smtp.messagingengine.com (wout4-smtp.messagingengine.com [64.147.123.20])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 2794F383FBB
	for <speakup@linux-speakup.org>; Thu, 27 Oct 2022 18:16:30 -0400 (EDT)
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
	by mailout.west.internal (Postfix) with ESMTP id 537FA32008FD;
	Thu, 27 Oct 2022 18:16:27 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute2.internal (MEProxy); Thu, 27 Oct 2022 18:16:27 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	hubert-humphrey.com; h=cc:cc:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm3; t=1666908986; x=
	1666995386; bh=z4kMuJZLp0aP89XjVW8nC5Bsmj1zy4QRJpLJxAe2As8=; b=j
	eKvnt9VYHIhpgZvO/QVxAppUTxukJNxScnvpNmnW+o3Qw/vs8cHu4dNuQB8jP/CP
	0eN6ZbXMaPhIsz5HNxN0bcmQOVDkXEGoWetkEws+a5SbaMBfVG1tTYl+FpJ73B6A
	KdcUmrWcKYZfnuclTVEdAxvKIqfwNI674v95hDYwy20HAxMQkxKpUuNRleWii5q1
	Wr9HmWjTibf2J56EcCLGavTGByiIwQeSd7YVqESGQEb4fSQwMV4KyMk0VnlL5/xo
	eT45+tywUv983U7AHqFVNWfiYycLTO9y8Bt1OslbGw73T6zqiCRnmdh+CmvC6vTD
	K8pkWCmM9GCHsY+MoOMnw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm3; t=1666908986; x=1666995386; bh=z4kMuJZLp0aP89XjVW8nC5Bsmj1z
	y4QRJpLJxAe2As8=; b=bPLk74sdTeHGvu2QjlA2baSG49LYC+8pdQMMMZYjjvxQ
	aF3r142gFBTe+MzeJbvjeGlFFy5/7KraIxjDSwagV4msVLJtSueL4ObCmToOpaBQ
	u2NsXEKvEiAtiqxb7ACQ6+sp+fdu1Zpdp2zgq8DwNLyoG39sVdoM5k11aA1XsVmM
	JeiGmAwUF3KeCYQBC2UnXAj/9LbTwqb90ltze4aqKyNotoPwqPPa0HOxZHtce3B5
	i4YrHi6CO1Qll3cyLPifM/O+//X4pu0t4jq2Wzk2+jQwlqfyxahrGfeaLbH/UkMh
	RY4kHCZLq/IxeS4nFeWMUtLjjv8hfBjvmH5AiIPtHw==
X-ME-Sender: <xms:OgNbYwCORj7g62yPp9X0kCGBsyXfiy1QJH7yYAdbIY4Oig4_eW5iHg>
    <xme:OgNbYyiSlBeBU-j-21SwHp-NBuxpAHA1EXyWsxeeoVHj830dEbBrPxEVEU4fRaiD3
    iVCcxSg2DaoLRSIY48>
X-ME-Received: <xmr:OgNbYzmD0ulqg3mUuyfjsXLlLRhsei95n4GsKnJaEjjbEzkXHszRWg5ysiirmwuLk6Rr5LnKdA-KU2Jn0AojXTmYywBLwZPwIA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvgedrtdehgddtkecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpeffhffvvefujgfkfhggtgesthdtredttddtvdenucfhrhhomhepvehhihhmvgcu
    jfgrrhhtuceotghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomheqnecugg
    ftrfgrthhtvghrnhepvdehgeeljeekgeeugfefleekjeeivdekkedvteeuveeufeefffff
    feffledufedtnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrh
    homheptghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomh
X-ME-Proxy: <xmx:OgNbY2yB9lslHBmpTn3-Kk7xto6aZJfOqoXcM9yDj4kEEoutD_8l1w>
    <xmx:OgNbY1TnD9Qtw8M4UfqjOqL-JuVTr3gbM7sw18Ftn2U0a2bCuB8tEA>
    <xmx:OgNbYxaT8S6dlN0zaFW3Mt2h0054tVJFizv-Kz8WbbjnktEGBy0G_g>
    <xmx:OgNbY25uLWrfOye0D0rocePsmjY2R_eLpg_hqLLso-Jpb0eExtCwKw>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 27 Oct 2022 18:16:26 -0400 (EDT)
Date: Thu, 27 Oct 2022 15:16:23 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
To: K0LNY_Glenn <glenn@ervin.email>
cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Installing Voxin
In-Reply-To: <083301d8ea4e$aa578240$87ffa8c0@Win7VM>
Message-ID: <32971cb4-513b-70e2-4371-fd1544adb848@hubert-humphrey.com>
References: <082101d8ea38$0d104d70$87ffa8c0@Win7VM> <083301d8ea4e$aa578240$87ffa8c0@Win7VM>
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

Hi Glen-and-All: I have sure had alot of challenges getting Voxin working, 
however, try-and-type
spd-conf
When you answer its questions, backspace over espeak and type voxin. It will 
say you need to correct your answer. Say "no" Many of those values you can just 
accept the defaults. My version of spd-conf is 0.11.3  but I am in Debian SID. 
Also, you know, after running an installer for voxin, it will usually take 
affect after a reboot. Hope all of that helps alot.
Chime


