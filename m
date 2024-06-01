Return-Path: <speakup+bounces-1132-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id B4DD18D71FA
	for <lists+speakup@lfdr.de>; Sat,  1 Jun 2024 23:33:18 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm2 header.b=VB5OR6cN;
	dkim=pass (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm1 header.b=iwmLJPPw;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 4548E382821; Sat,  1 Jun 2024 17:33:18 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 25A99382256
	for <lists+speakup@lfdr.de>; Sat,  1 Jun 2024 17:33:18 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id D1B5B3825DC; Sat,  1 Jun 2024 17:33:10 -0400 (EDT)
Received: from fhigh8-smtp.messagingengine.com (fhigh8-smtp.messagingengine.com [103.168.172.159])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 12A0038221E
	for <speakup@linux-speakup.org>; Sat,  1 Jun 2024 17:33:10 -0400 (EDT)
Received: from compute6.internal (compute6.nyi.internal [10.202.2.47])
	by mailfhigh.nyi.internal (Postfix) with ESMTP id 4348D11400BA;
	Sat,  1 Jun 2024 17:33:09 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute6.internal (MEProxy); Sat, 01 Jun 2024 17:33:09 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	hubert-humphrey.com; h=cc:cc:content-type:content-type:date:date
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm2; t=1717277589;
	 x=1717363989; bh=Ycpo4Xlu6DciBYafwCFtu/KDbNYd8F45VOBS1TpOftU=; b=
	VB5OR6cNFt3RLqCKr/D/GjGYRolEqDE6qlNoRXX9V/VcusY5SoSC54HDWGTIfWW7
	Y5zKGZxyErqahSnm3gECZEqlazEw5E/P60ZuPajzv0N/v3pSa40QXT7kE2LQ/Nhu
	WucZbHK+fAdOrrdok3ybUUI5Xy9TcEevehPL1pNfIjYo5tZWByhVHwnwLkjziSIG
	fmgYTqk9NR9Fo6mh2Ow4ormvPZkWKGwODBeeksbGF5NlVqkdjjkB/lXBFrDohRzI
	0Gm/NCrAJbThtZCUCPVSnUvSomX32HI8AEJJFvKkqVdcElTTA3bQusPZt+i1gtWI
	grT4ogEeG7baa1kOdxooKQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm1; t=1717277589; x=1717363989; bh=Ycpo4Xlu6DciBYafwCFtu/KDbNYd
	8F45VOBS1TpOftU=; b=iwmLJPPwFyKIVIAgHiSCBE1Yg1faytvVb/D+lNN/wbtg
	cSUPq5ib5BVnPFuSr1zJiuwoMB9ivAPVnoMVN+JXXaY/VSNa+swAhVajYVO4TZjL
	lKGg1v9ksrq3Gyk4Dp1HE5SBYx0aE95CbhGDDdWARRu4eHznocu4lFbUR1CKpXuE
	zzYESDxmxfQNM06RiaBymUOR0sJhcm7hykwneXmsZONGVh9iBgO755zcIn7inGfh
	ZhLrkORDhPLbE5CDQY3MyILfIfxs3WOfFSK3fy85u8wMqK0Vd259+8yiAgHFpTSU
	dEHHPCftAPf+Wy+AqE/bBdWzH6A+jkYqxYj4RX911g==
X-ME-Sender: <xms:lZNbZnYgbU4YBztuLFT5YWaBrHpOMxm_NyiGpAxhEByfRvNgsO4P6w>
    <xme:lZNbZmbyXvjIGokbBbLpo_47zpIfAqZ8ARkLVGH40jC_appgWxmO8BLtn_kCyZkaV
    z8zuic5lWbON1jSYNw>
X-ME-Received: <xmr:lZNbZp8xne9uTazndtjSDQSGnX_iyTALQiGy_llG22vXDc9fBwPaNyTFWopXfFii8WeLwNN5yaS8NytHl_YIVaLdDIFpjIHlSFo>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrvdekkedgudeiudcutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
    enucfjughrpeffhffvvefujgfkfhggtgesthdtredttddtvdenucfhrhhomhepvehhihhm
    vgcujfgrrhhtuceotghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomheqne
    cuggftrfgrthhtvghrnhepvdehgeeljeekgeeugfefleekjeeivdekkedvteeuveeufeef
    fffffeffledufedtnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilh
    hfrhhomheptghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomh
X-ME-Proxy: <xmx:lZNbZtpm-iUtAMDwNq7oV82x1pwNLiAjI4GQeA8Ol4ATLggVKqC2LA>
    <xmx:lZNbZiprQT0uygyXbUNccC_JotzOcY0ny7OtTdrpemO1YI5oms_RcA>
    <xmx:lZNbZjT5wJLdtp4sQgXdJ206ZRhFztQL175wOPLbhF02NxZyiepOxg>
    <xmx:lZNbZqpknCLhRmJgTLa87s_Ra0hnuRDT5pf4mWn-4u_YnuHjrbhtyQ>
    <xmx:lZNbZp3z2tYlWNX4x5VZ00EoxtbeAGfmhlS1j8uXAKjn_QCiWPgLTJ_8>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 1 Jun 2024 17:33:08 -0400 (EDT)
Date: Sat, 1 Jun 2024 14:33:07 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: Martin McCormick <martin.m@suddenlink.net>
cc: speakup@linux-speakup.org
Subject: Re: Can We `Please Enjoy Single Digit Numbering in Speakup?
In-Reply-To: <E1sDVdC-0002UC-15@wb5agz>
Message-ID: <f82f802f-0c5c-efc7-e559-2e42f7526537@hubert-humphrey.com>
References: <af4eb9cb-7a49-f290-7fbe-d77cb5e39982@hubert-humphrey.com> <ZjjPiNYlatNpb7tK@rednote.net> <4411ea8e-2679-e510-4c40-3662964802af@hubert-humphrey.com> <ZjjwWbRcbtXWhaWc@rednote.net> <E1sDVdC-0002UC-15@wb5agz>
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

Hi Martin: While I basicly agree with your analysis, I would say Vocal-Eyes in 
DOS had it completely right. Your comments about NOAA Weather Radio, it 
actually sounded better when they were useing DecTalk, however sales of Radios 
had dropped. This particular AT&T Natural Voice has odd seggment jumps or even 
hicups.
Chime


