Return-Path: <speakup+bounces-336-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 9B4D646C868
	for <lists+speakup@lfdr.de>; Wed,  8 Dec 2021 00:54:45 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm2 header.b=FzR3tU0m;
	dkim=pass (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm1 header.b=eA/zCDXw;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 7A522380E63; Tue,  7 Dec 2021 18:54:44 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 5B892380A17
	for <lists+speakup@lfdr.de>; Tue,  7 Dec 2021 18:54:44 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 96EBE380B40; Tue,  7 Dec 2021 18:54:38 -0500 (EST)
Received: from out3-smtp.messagingengine.com (out3-smtp.messagingengine.com [66.111.4.27])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 7690F3809FC
	for <speakup@linux-speakup.org>; Tue,  7 Dec 2021 18:54:37 -0500 (EST)
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailout.nyi.internal (Postfix) with ESMTP id 66DC45C0669
	for <speakup@linux-speakup.org>; Tue,  7 Dec 2021 18:54:36 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute5.internal (MEProxy); Tue, 07 Dec 2021 18:54:36 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	hubert-humphrey.com; h=date:from:to:subject:message-id
	:mime-version:content-type; s=fm2; bh=RHwutWrhFLeeLTibd3A7X6OuEI
	+d7cGPMk71mvJYakg=; b=FzR3tU0msFaZ0UKrL6YQbs4g+nzgCjoODDxUOlwymJ
	C0YEMhXoDNHdBbkDFE5cX2x8eJ5Nlgi0qg/IRA5niUFIGgo0IYH7hZYaGfU+CMfJ
	1NC0fR7Wm2tV8Cb7rNc2lNkWhJsU6PCdcRcuefkGj8ZZj5N++wDmHqKeGM1aI1AZ
	HDi+dLcGBow3IO2FpwOgQ98fiCkgae+WSVq8dInEdzDuJGr53j3PBte2M90N2nQH
	hSBWu5WawzfSlp7LAHMYEvt3HPSkXRrtfseJr3hf3sQpku+PvfernWa5/GQl0dLE
	mLJHILs78g6/79zuSDDMtZqmi8xbnJbJSncBWVMquRvw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:message-id
	:mime-version:subject:to:x-me-proxy:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm1; bh=RHwutWrhFLeeLTibd3A7X6OuEI+d7
	cGPMk71mvJYakg=; b=eA/zCDXwatFtCYEVByFraGhzY/zXuj/zCiHH3WDJsa4AD
	Se2ws9RQyDg/Xrrga5uVHnAKe/cpFPGvs74L2C8oWxjlBm9tW1qBZRMecalPS9de
	wgIiYneWb7gCOXMWKXrPMJVtS/IAym5cmkxlxfmxLCJA14ftMMYZgxCwQqcAjfjz
	Y2l/VXl8AUnIBIpjEqvZPVo6uMxJvV7c9jHjJa1GW2ctpUWZI8Ok2kqEkHMfdvXx
	4wJfhEuFTMOsRinj9Ji7dDDKWiWn3rQeiWU71Eb0h11EMdC+kXOSD6U19SqhrYB+
	ZmiVKlIB5SByEQCSwdsdugtoFXW5srFuT9mG7khBA==
X-ME-Sender: <xms:PPSvYVUa0_RpKwxl34fVj-kwiawELUcNyR4B8QjMlziAqLmcYTg7dw>
    <xme:PPSvYVmw3Cvdvv3xkwBNhy1VM04r2frQ1fXo1YSEHEGmR_c3NbJNq73c725cRQY_h
    VJgkHqxzpeg3dPrhgI>
X-ME-Received: <xmr:PPSvYRZk06rgeRRgUDDQkCLlTBk_C7ds3_QHvdjzJWFfkXXD0KsagTGnAavPZyNbFJAQMr_iC-PcOgvrZFBGsTCkTnBk1OSmIQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvuddrjeeigddugecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffukfggtgesthdtredttddtvd
    enucfhrhhomhepvehhihhmvgcujfgrrhhtuceotghhihhmvgeshhhusggvrhhtqdhhuhhm
    phhhrhgvhidrtghomheqnecuggftrfgrthhtvghrnhepjeffffdujeelueffieevtdeite
    ettdekgffgkedvueejteektdehfefhhfdvteeknecuvehluhhsthgvrhfuihiivgeptden
    ucfrrghrrghmpehmrghilhhfrhhomheptghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrh
    gvhidrtghomh
X-ME-Proxy: <xmx:PPSvYYXNGEVDOFCb56J_2jokwU27sn5QUbJovXNoc0ID30Icd35XTA>
    <xmx:PPSvYfnDFL3cFrVgiLRykK3A2dFG5KyWm2jMc_4CGugZtAXiFNC__Q>
    <xmx:PPSvYVfDW0JGKa2NvFCVq4Nq0dlhucBNb1G1pITupe9UJStVmUFuzw>
    <xmx:PPSvYVQ1m-wIGEXd-vx2bMtY74UexJ7s-7xE1tc2-82bOCpPKXzYRg>
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
 <speakup@linux-speakup.org>; Tue, 7 Dec 2021 18:54:35 -0500 (EST)
Date: Tue, 7 Dec 2021 15:54:34 -0800 (PST)
From: Chime Hart <chime@hubert-humphrey.com>
To: speakup@linux-speakup.org
Subject: I Cannot Interrupt Speech in New Embedded Voices?
Message-ID: <becbadd1-54d2-3e4d-3e53-3fdd4248f1d@hubert-humphrey.com>
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

Hi All: I purchased both Allison-and-Samantha from Oralux, however, I cannot 
interrupt speech in most cases. I wrote to Gilles, but am awaiting a reply. 
Meanwhile I notice a "no_interrupt" mention in speakup-sys.txt. Are these 
commands I can try from the console or are their controll-pannel items I can 
change? For many years the regular Voxin voices never had this. Thanks so much 
in advance
Chime

