Return-Path: <speakup+bounces-928-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id EBA8A70AB14
	for <lists+speakup@lfdr.de>; Sat, 20 May 2023 23:29:54 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm2 header.b=0FYjf3U9;
	dkim=pass (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm1 header.b=ws+EZCSl;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id B1D4338243A; Sat, 20 May 2023 17:29:52 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 904A038243A
	for <lists+speakup@lfdr.de>; Sat, 20 May 2023 17:29:52 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 0DC1F38243C; Sat, 20 May 2023 17:29:43 -0400 (EDT)
Received: from out4-smtp.messagingengine.com (out4-smtp.messagingengine.com [66.111.4.28])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 5908F382432
	for <speakup@linux-speakup.org>; Sat, 20 May 2023 17:29:42 -0400 (EDT)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailout.nyi.internal (Postfix) with ESMTP id 93F885C0158
	for <speakup@linux-speakup.org>; Sat, 20 May 2023 17:29:37 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute4.internal (MEProxy); Sat, 20 May 2023 17:29:37 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	hubert-humphrey.com; h=cc:content-type:content-type:date:date
	:from:from:in-reply-to:message-id:mime-version:reply-to:sender
	:subject:subject:to:to; s=fm2; t=1684618177; x=1684704577; bh=G1
	sNrbDOkff9Dr+fqmbHw4GSkXxbQQJUBlhwDLuiWTE=; b=0FYjf3U9S25lW+h8Kh
	pBRObr48CFVdkiQq7In3oAzPo8NS0FB5XStV/UTk8VmwZn6oxh5u3nSJXRZ+pbzW
	Pg6H1xJwn8dNjryUAZkXBoVIi/wI/JusHny0//W7Ejs+dW7PmCvnv4sMdLGIwHQk
	3nfX9VnA2WWal1YOv2kxvY1GESJADGFVUZKpQqlgdUJO6D3FxeIvZQVDzWmhq3Zy
	WdDIXEKF4NRUoLO4HKH7IVGq8PZ9gty7FmAutS3bm0n+CVtvHD1Pvrb3FpmmXxWR
	xRz4tbYBu16ejzgiYu97BDFsu+oi9VZ7AxQuoapboD4eGLTk+Tg7BWJqoo12g3k8
	V9Cw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:message-id
	:mime-version:reply-to:sender:subject:subject:to:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
	1684618177; x=1684704577; bh=G1sNrbDOkff9Dr+fqmbHw4GSkXxbQQJUBlh
	wDLuiWTE=; b=ws+EZCSlbxZwUuzhVhPAI7jtQqBRIFR4bik2FLDi8GTCFsHb/wy
	ElS8RHl+0Ye3xY6LAfkBc/JLEYm/UdkzKROkPj7jML0c5MWUaqWB+8Vz4KRJK4cR
	nkpxPN+0s292RskJtrRNYoGWUxcr1OQ1xtZbp5Vl0J5iAOpsO2Bsr4CGVkUzFG/P
	FUQX4t7oW/RmYYOqOjrl9f5Pxf2rYo3wjhSXueK3L5RdgQTRqhgEpkWcrdwZES6L
	GlZVw+Ge9gC8rYsIrTlbusYAu/e9ftc68LYzhZvuZKF+88AQ7uz1Qk1YslJvMmM/
	xOcHxMhsLnCksMy+OA8Zfo3eu+j7zqunbQg==
X-ME-Sender: <xms:wTtpZF_f5Sz3AZRbdsyteCYOqZdxB40mE_xxn3l_YURUdSEEvbo61A>
    <xme:wTtpZJuRGToCVSeph6MT7Y7LT5waBY324QHCSuRn_3pUGiIKwo0nvZH3i-LQMZDMq
    3DukTGse8b0smoRHTo>
X-ME-Received: <xmr:wTtpZDCZ-FFZP95GUIdwvoXm8MGbkWJ6q5gDp94_V4Z-lmGFnKE-7DIUYWt1ez2W6m7tqXZA7qJteMsEJkmJL5S-PVXhtu6WH5fqxcE>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrfeeijedgudehlecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffukfggtgesthdtredttd
    dtvdenucfhrhhomhepvehhihhmvgcujfgrrhhtuceotghhihhmvgeshhhusggvrhhtqdhh
    uhhmphhhrhgvhidrtghomheqnecuggftrfgrthhtvghrnhepjeffffdujeelueffieevtd
    eiteettdekgffgkedvueejteektdehfefhhfdvteeknecuvehluhhsthgvrhfuihiivgep
    tdenucfrrghrrghmpehmrghilhhfrhhomheptghhihhmvgeshhhusggvrhhtqdhhuhhmph
    hhrhgvhidrtghomh
X-ME-Proxy: <xmx:wTtpZJfFnV1KwfYbMhoRu-rHOtNGfXrMrIDKBcT0_qNc5YQ5F_unsg>
    <xmx:wTtpZKOPKvGcKCvQ-M-eYTzZhP_mmSofsNJepSOD0EpXrYbanaiilA>
    <xmx:wTtpZLk2VjFSgwCdVuG1Z9sN8OgbIjcdESTv73gY32LgTySKbskdCg>
    <xmx:wTtpZNY85h5N_UCRp8kS9D8ijorobADYe6IdfQCkYZvZ0abFrp6uoA>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
 <speakup@linux-speakup.org>; Sat, 20 May 2023 17:29:36 -0400 (EDT)
Date: Sat, 20 May 2023 14:29:35 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
To: speakup@linux-speakup.org
Subject: Can I Increase a Buffer size in Speakup?
Message-ID: <2b29145e-c2f5-feec-9fd8-c312b1b089ae@hubert-humphrey.com>
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

Hi All: This list has been `quite quiet lately. I am temporarily useing a 
laptop with Voxin. Since I am in Alpine with 135 lines, I tend to use a num-pad 
9 to rapidly scroll through text. Well, more often lately, I suppose a buffer 
is over-flowing, as sometimes for several minutes it will continue reading, no 
keystrokes or tty changing will stop it until its finished. I even tried 
altering the niceness of speakup-and-voxin all the way from 10 to minus 20. 
Didn't seem to make any difference. As it is with Voxin, I still hear a smijin 
of a previous line jumbled with a current line. I did try an embedded Alison 
voice, but last November on a trip to NJ, speech mysteriously quit, no errors 
in the log, couldn't get it back with
sudo ./speechd-up
Anyway, I am not exactly thrilled with performance of software speech on this 
laptop. Can any1 please suggest any settings or improvements, but please `no e 
speak. Thanks so  much in advance
Chime

