Return-Path: <speakup+bounces-384-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id E8E464F0D4B
	for <lists+speakup@lfdr.de>; Mon,  4 Apr 2022 02:51:58 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm1 header.b=IUcWUCKV;
	dkim=pass (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm3 header.b=mNXvg+jO;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 8A9E5380D36; Sun,  3 Apr 2022 20:51:58 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 6B14938094F
	for <lists+speakup@lfdr.de>; Sun,  3 Apr 2022 20:51:58 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 22341380985; Sun,  3 Apr 2022 20:51:52 -0400 (EDT)
Received: from out5-smtp.messagingengine.com (out5-smtp.messagingengine.com [66.111.4.29])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 3551E380930
	for <speakup@linux-speakup.org>; Sun,  3 Apr 2022 20:51:51 -0400 (EDT)
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailout.nyi.internal (Postfix) with ESMTP id D0C915C00CB;
	Sun,  3 Apr 2022 20:51:46 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute5.internal (MEProxy); Sun, 03 Apr 2022 20:51:46 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	hubert-humphrey.com; h=cc:cc:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm1; bh=TMe/0rTWKR0H1A
	tvcDhV6S7UnG5hT3egyMhxseCLIvU=; b=IUcWUCKVtUTK9Q0dp6oDT7tl+AtT/B
	PvAw2XFowjcRc9EQtABnE7J1Z1qA4e6TERf2iG45w7lpl0CZZ6up/SSwNOszyJBr
	lSUzrDyFLajyr8wHrA5Li8ZW2xMjQdkXkoxC2uiLru8pLog7NKntsKSPXimzTa4A
	9WmrDplszXp1BmHICLD+swyd7Pi7Mv2DxeKczhDwOX2CwkH2Gw/pT9anBwzRonbY
	d9RLuABXiEqWk5v6+lotuLr4Uf2N4aFnYaE4wO2WWg+R2loLHh6RJX/OTW5YHz5a
	tfLFxSwGCmgZe0TYOvsMVsUZrygsI1FA2dvOE78rDYpEnRKiMyYbxMTg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=TMe/0rTWKR0H1Atvc
	DhV6S7UnG5hT3egyMhxseCLIvU=; b=mNXvg+jOsPAy+ZlQPMvLT5HNndEpq/jmV
	B6QysjG4gxlffhn0n5kKrsjfeDAoryUUbsA6qF5K1Fijuiw/p5+6AaKkvg5Husku
	WjrkduunDiT4IZm+xSJsxLsYLSQoOg3o6/D6Rvl6iag15PJWmWEFKRuPm8F+a5od
	LN+3UlF1z0iynGJmH/EdN6p41cuU7r50YidXd7G0sLNEklOqIMzrd0Xoog1JXI3w
	DqzUVQ4XAe724Q36XVgfegFtUzjAuHKProvAuBMJw0LuGcuENqa4tMjY6nGPJnjl
	YBYrcCE5jd/6FVZC48eAdFhqqcjwFVayrYOFcR0g95DbiUrOFGG/A==
X-ME-Sender: <xms:IkFKYhvndCs3AxKu9VufAg4N2LD1xFgfk56wFm7ATNqNHQGhwgnyLw>
    <xme:IkFKYqfEQkeW0DnMTWOhJ9-TsAxsvVIhRjSEVm99WobxfX-VgFsnDaVa4_Q_YbGEF
    RGGg-m6Sk-GaH_5Dv4>
X-ME-Received: <xmr:IkFKYkwdcGfM4Yh8u5DzJsrV4zG8cCPtHZdKQDivtHKLsr4MAH11cam2UcruDl0k-hSnd8fxDCUaBksqGuA4HnJrfOCyCQoUtA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddrudejuddgfeelucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvffujgfkfhggtgesthdtredttddtvdenucfhrhhomhepvehhihhmvgcu
    jfgrrhhtuceotghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomheqnecugg
    ftrfgrthhtvghrnhepffehtdfhvddvueeuieehvdefffeutdegueduhffgleetledvuddu
    gfelkeevtdevnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrh
    homheptghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomh
X-ME-Proxy: <xmx:IkFKYoMtAvRVhR31o9QvBz7IyEUZQJB1W2K3-IIVLPHBN7BlS-TLzg>
    <xmx:IkFKYh_X2KQduDtRXvXE-t-NObbM0hFHXsP6AMA-6rVJ_V7FshsIRg>
    <xmx:IkFKYoUOFLWfDWUphoa4SsNQCs7kb6m6qHLjlOdVk_jk3ly4PWblxA>
    <xmx:IkFKYuEX748p3a2vD0aT3PbFHlzGlqDYve0ZD8RnDJLsSzmR9rriwA>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 3 Apr 2022 20:51:46 -0400 (EDT)
Date: Sun, 3 Apr 2022 17:51:44 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
To: Gregory Nowak <greg@gregn.net>
cc: speakup@linux-speakup.org
Subject: Re: How Can I Switch Synthesizers on the Fly?
In-Reply-To: <Yko9zLikCNY1qcDX@gregn.net>
Message-ID: <4ce83a8d-a0a1-3ef8-e8df-c9881198622@hubert-humphrey.com>
References: <1dc619bf-ba8a-47b3-2c85-7dff6e27086@hubert-humphrey.com> <Yko9zLikCNY1qcDX@gregn.net>
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

Thank you Greg for your analysis. Yes I am in TCSH. When I run with
sudo echo soft >/sys/accessibility/speakup/synth
I get a permission error. As far as speechd-up  if I run an apt install in 
Debian, it tries installing a 0.5 version from 2011, but errors out. Here is an 
output
Preparing to unpack .../speechd-up_0.5~20110719-11_amd64.deb ...
Unpacking speechd-up (0.5~20110719-11) ...
Setting up speechd-up (0.5~20110719-11) ...
Job for speechd-up.service failed because the control process exited with error 
code.
See "systemctl status speechd-up.service" and "journalctl -xeu 
speechd-up.service" for details.
invoke-rc.d: initscript speechd-up, action "restart" failed.
x speechd-up.service - LSB: Interface between speakup and speech-dispatcher
      Loaded: loaded (/etc/init.d/speechd-up; generated)
      Active: failed (Result: exit-code) since Sun 2022-04-03 17:46:08 PDT; 82ms 
ago
        Docs: man:systemd-sysv-generator(8)
     Process: 1576174 ExecStart=/etc/init.d/speechd-up start (code=exited, 
status=1/FAILURE)
         CPU: 37ms

Apr 03 17:46:06 chime speechd-up[1576174]: Starting Interface between speakup 
and speech-dispatcher : speechd-up
Apr 03 17:46:06 chime speechd-up[1576190]: [Sun Apr  3 17:46:06 2022] speechd: 
Configuration has been read from "/etc/speechd-up.conf"
Apr 03 17:46:06 chime speechd-up[1576174]: Starting speechd-up...
Apr 03 17:46:06 chime speechd-up[1576174]: To work, speechd-up needs speakup 
and speakup_soft modules.
Apr 03 17:46:06 chime speechd-up[1576174]: They are loaded automatically. If 
you don't want, type
Apr 03 17:46:06 chime speechd-up[1576174]: rmmod speakup speakup_soft
Apr 03 17:46:08 chime speechd-up[1576300]:  failed!
Apr 03 17:46:08 chime systemd[1]: speechd-up.service: Control process exited, 
code=exited, status=1/FAILURE
Apr 03 17:46:08 chime systemd[1]: speechd-up.service: Failed with result 
'exit-code'.
Apr 03 17:46:08 chime systemd[1]: Failed to start LSB: Interface between 
speakup and speech-dispatcher.
dpkg: error processing package speechd-up (--configure):
  installed speechd-up package post-installation script subprocess returned 
error exit status 1
Processing triggers for man-db (2.10.2-1) ...
Processing triggers for install-info (6.8-4+b1) ...
Errors were encountered while processing:
  speechd-up
E: Sub-process /usr/bin/dpkg returned an error code (1)
Back again live. If this list thinks 54lines is too long, I can write you 
off-list with that output. Thanks in advance.
Chime

