Return-Path: <speakup+bounces-464-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id BD6D356D112
	for <lists+speakup@lfdr.de>; Sun, 10 Jul 2022 21:38:37 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm3 header.b=QM32oaeI;
	dkim=pass (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm3 header.b=CIB1JHfV;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 9BED7380BB2; Sun, 10 Jul 2022 15:38:36 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 77D26380ABF
	for <lists+speakup@lfdr.de>; Sun, 10 Jul 2022 15:38:36 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id CCF14380AB4; Sun, 10 Jul 2022 15:38:28 -0400 (EDT)
Received: from wout2-smtp.messagingengine.com (wout2-smtp.messagingengine.com [64.147.123.25])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 272583807B5
	for <speakup@linux-speakup.org>; Sun, 10 Jul 2022 15:38:28 -0400 (EDT)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailout.west.internal (Postfix) with ESMTP id A225732004AE;
	Sun, 10 Jul 2022 15:38:26 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute3.internal (MEProxy); Sun, 10 Jul 2022 15:38:26 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	hubert-humphrey.com; h=cc:cc:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm3; t=1657481906; x=
	1657568306; bh=Nz+UqBQgA9OYlmhgIrMIc1pNcTYyj6uMde3Gv5AS4Bw=; b=Q
	M32oaeI0Ilf4Ur5TVZVpbLe+cKquUy0/CHg+9n9tFAyI7/DxyqikAPR9GKaz/ZOA
	FTZiiazA55nv12Z331pCaTYr1KXuwRTN93dOHpvMVDmUYXN+LEKsibvkumOkmO/8
	w4N6pfoaBOQh8ZmWILBRLELffTKMAyBNVm5E4Nf5VecUtQl6bDEiQ/HsBrfKeV99
	AIMhSfzty8/UW0P91A0/EubPKgGr/LwMKdAw3IQBK3bqtphg8yGYsFWpjEQZOx57
	OecYjdNoSaDw5VumOjilI+TivUm9hlY/BnklLzj+kF2B3ik3LV9SNOflOdeQAcgC
	nploRnOSpFbR3W3wYw99A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm3; t=1657481906; x=1657568306; bh=Nz+UqBQgA9OYlmhgIrMIc1pNcTYy
	j6uMde3Gv5AS4Bw=; b=CIB1JHfV5MQfOjlHKGSo41FT6PeA2XuiwwvVI+gyfmDc
	jErCTACPCuRzZqLazg6AKkai5TW/sW9qIcg2gIMsMZzhqYQBWVDKesCaR5XZJEw2
	Mru+HMoBzVT8DfTZa+DmmDdqb+MCFmqv+WJXUv1Y1iCka7f41RCu3vkDXsKHF510
	MnwEUZ21zlodU5bezsBHVRDcPOGy+LxfiJA/Yv8+o8WVjWg6G+HaQS5ggQHcpNUY
	UhWvBZYerWWzG+DpCgIvRc5EqfpQc50wc6Dp4zYF/PV1E1DZ1AAkD/pgaadZZ0Bx
	AyocNi7fEunmaAfc5lvsxjOEvxqEwMYtvwvpXyhPpg==
X-ME-Sender: <xms:sSrLYq7q_J7WY67u93x5sZ-Zeqzragj9k6uOM4IA-WJJa0A6dzylvA>
    <xme:sSrLYj5c5nCR1bcXVD1uEJNwXqNZeiWSaG5umQ0OSsUW9jwGMxXCPXAzydG8T4utt
    nBfl5HkYEFb28FaTNc>
X-ME-Received: <xmr:sSrLYpdSfc2174UGzkKctZwq9YH_Z3N9pDwf1VDRxY8DaKv9oQhOSegZd1kL8PbdnViQR82VwFBXmgvS2xLNdZD07RTH24lK2A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrudejuddgudegvdcutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
    enucfjughrpeffhffvvefujgfkfhggtgesthdtredttddtvdenucfhrhhomhepvehhihhm
    vgcujfgrrhhtuceotghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomheqne
    cuggftrfgrthhtvghrnhepvdehgeeljeekgeeugfefleekjeeivdekkedvteeuveeufeef
    fffffeffledufedtnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilh
    hfrhhomheptghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomh
X-ME-Proxy: <xmx:sSrLYnJAp3CBr-FKeQNeksM8qUQZcmWuhf3QfmPwhowe6ObfbB1zEQ>
    <xmx:sSrLYuKgeLyjx47k6uHlTAVE1vSSB9E14kuYhR4nF1wRVg8LvI9Wxg>
    <xmx:sSrLYowoJm2Y_Vk20d6QRT0BDwv0UHfGFc6_0TwT7H1e_-c6IUeHvw>
    <xmx:sirLYoyLkzTaGp668SHER-5Ii7XO1CMl9ugGNPlS_aekSmw36JN-lg>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 10 Jul 2022 15:38:25 -0400 (EDT)
Date: Sun, 10 Jul 2022 12:38:23 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
To: Samuel Thibault <samuel.thibault@aquilenet.fr>
cc: speakup@linux-speakup.org
Subject: Re: About no_interrupt?
In-Reply-To: <20220710191638.ifp4speglszs3hm4@begin>
Message-ID: <221ddb78-9ec2-6f00-b249-50dcbb7e57ef@hubert-humphrey.com>
References: <e12ad8db-3330-1eb3-bd02-65800c170ea9@hubert-humphrey.com> <20220710191638.ifp4speglszs3hm4@begin>
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

Thank you Samuel for your analysis: Since I posted, I tried putting those 
speakup files in .speakup /load and /etc/speakup. None of which made any 
difference. As to your question, I wish I knew, especially not knowing where 
Gilles-and-Oralux got them from? I notice there are times where speakup will 
not read until I highlight my current line, this is after typing some commands 
such as after I get a Debian login prompt. I am thinking, maybe have it read 
something long-and-look-and-see what processes are running? Thanks in advance
Chime


