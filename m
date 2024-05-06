Return-Path: <speakup+bounces-1131-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id CC57E8BD0A7
	for <lists+speakup@lfdr.de>; Mon,  6 May 2024 16:47:21 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm1 header.b=RNTdYRMN;
	dkim=pass (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm3 header.b=Px4qqWkM;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id C243EC81C9B; Mon, 06 May 2024 10:47:20 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id A2046C80A5E
	for <lists+speakup@lfdr.de>; Mon, 06 May 2024 10:47:20 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 4CAE2C80A63; Mon, 06 May 2024 10:47:12 -0400 (EDT)
Received: from fhigh8-smtp.messagingengine.com (fhigh8-smtp.messagingengine.com [103.168.172.159])
	by befuddled.reisers.ca (Postfix) with ESMTPS id A970AC802EC
	for <speakup@linux-speakup.org>; Mon, 06 May 2024 10:47:11 -0400 (EDT)
Received: from compute7.internal (compute7.nyi.internal [10.202.2.48])
	by mailfhigh.nyi.internal (Postfix) with ESMTP id B58CA114009A;
	Mon,  6 May 2024 10:47:06 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute7.internal (MEProxy); Mon, 06 May 2024 10:47:06 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	hubert-humphrey.com; h=cc:cc:content-type:content-type:date:date
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm1; t=1715006826;
	 x=1715093226; bh=CZWAutrneop9vnwWwWtzXt+/8HWEemWZVhmjZi2G0+o=; b=
	RNTdYRMN7UMczzenOejXNg2hqVoQjocGttppY/b+dvyI7cvd8UgvBIJHOJ/uVEw9
	awDeljQAf5DVo2R7BooVPdB/Ix1hcWH3k/cF4ckTsfk9MvM3XTijGUurkKWo0MV/
	ECASJm+bBPq/h4caj3OJosqUhZNAUMaOaDXwmPnReX1a4ndfkPfCPYn7cBot1H2A
	eLqb5zh4ZSJvW/sxlBFCMEHZcqocfsR/e8s5esbSFNFCjiCVtdCnPJ0o6bfVj9S1
	NBZQLb7+dwbAldd0+cbKln8c48mMNRUVo5BcWQrZtQrebpjjY+JKy47OnYstwZYA
	/oTDTDK/TlTFaGZFcJdcHQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm3; t=1715006826; x=1715093226; bh=CZWAutrneop9vnwWwWtzXt+/8HWE
	emWZVhmjZi2G0+o=; b=Px4qqWkMbzrZu/ioTXzURq1LtXeOKIZa1ys+8vwRmrrE
	pFwkw48CFw27HkyLSec99T5LAjsSp2E7bjtYV8WtNeFMMBMZkJmZGf6ULeQthlV+
	j+XrWsbKh2X4sRPN8JQZRb2jkM1IdN0YY088bvpR1PQNNetgTC8ADa9y8pfut7FT
	SPpK4kYysznC3qGx98iSF3FwhuHshx190MFu1QNdV69zdHMyp3LmsUSeubt/gmoA
	3Ydg+BqyCNIUhR7yyrhBZL2ev13OuqkCFcB2stfJ8F1ZAlvTNVn93eordjLe4uQH
	A1GRM1K/fo2hIQ41IgvStXF2mLLkSUdS45PbcoPcdw==
X-ME-Sender: <xms:au04Zq0Htc68NzPy9L_1PRpY1I1ELTyJEdAx_edT6QtB2sta0OrfsQ>
    <xme:au04ZtHOawk3m4sY69D4yr07pYf6WY13TP66HsqnYiKkFXrCwEZ6Y_pKu2VG55ZYQ
    pTW2YoKIwL-ScMp_90>
X-ME-Received: <xmr:au04Zi4tw7wLWYZ4lD8axm7qCo99J5cBg_3HW8tLnQMqhgDaTofMS2SAzMG4VQce2EVzi-hWtdV4a9lu95z4P-3TFKazOBcyK-8>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrvddviedgkeduucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvfevufgjkfhfgggtsehttdertddttddvnecuhfhrohhmpeevhhhimhgv
    ucfjrghrthcuoegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhmqeenuc
    ggtffrrghtthgvrhhnpedvheegleejkeeguefgfeelkeejiedvkeekvdetueevueeffeff
    ffefffeludeftdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfh
    hrohhmpegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhm
X-ME-Proxy: <xmx:au04Zr38_Ijwe2SANDMmVRz0J9p4f6XDitbFUr2j4lOJaS15LQtShw>
    <xmx:au04ZtEuSb__E-bjyfzs3wojysojOZfo8Dspl7iW16MugsKSRdB0IA>
    <xmx:au04Zk9RyxnoTZVTSnqaKSzutplfAl7Rc2UMOFn6Oa9EHqxvU40wnQ>
    <xmx:au04ZikqEJCkhQUnJgqyLwVYEmPoJssjjndmUhGZVrXQZVTY7l7I3Q>
    <xmx:au04ZiTlgmyZujaQd6k8nKnVF6XSA8ahyHzxqUEvKr828WEPoyxlD8HK>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 6 May 2024 10:47:05 -0400 (EDT)
Date: Mon, 6 May 2024 07:47:04 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: Janina Sajka <janina@rednote.net>
cc: speakup@linux-speakup.org
Subject: Re: Can We `Please Enjoy Single Digit Numbering in Speakup?
In-Reply-To: <ZjjPiNYlatNpb7tK@rednote.net>
Message-ID: <4411ea8e-2679-e510-4c40-3662964802af@hubert-humphrey.com>
References: <af4eb9cb-7a49-f290-7fbe-d77cb5e39982@hubert-humphrey.com> <ZjjPiNYlatNpb7tK@rednote.net>
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

Thank you Janina-and-John for your analysis. Janina, would you also think an 
acception dictionary would also be purely dependant on each TTS? I think 
Speakup-and-YASR are an only Linux screen-readers without such a dictionary. 
Not sure if Storm reads this list, but I think Fenrir has a way of changing 
pronunciations?I asked Storm about single digits-and-he rigged up something, I 
think useing John's method, but it only works with Allison, not the DecTalk 
software. And Janina, recently in addition to phone 
numbers-and-zip-codes, we have Zoom ID numbers. I suppose as I think Kirk 
created Speakup, he would be an authority on why these 2 features were never implemented.
I would think since we can easily ajust caractors, we could also enjoy these 
other options.
Chime


