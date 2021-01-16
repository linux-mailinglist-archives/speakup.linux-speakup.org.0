Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 14B0C2F8E3E
	for <lists+speakup@lfdr.de>; Sat, 16 Jan 2021 18:21:35 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 437FB380FAA; Sat, 16 Jan 2021 12:21:26 -0500 (EST)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm2 header.b=dVTWEFlw;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm1 header.b=lRTgJAA3;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id F001C380EEA;
	Sat, 16 Jan 2021 12:21:25 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 1C619380BD8; Sat, 16 Jan 2021 12:21:25 -0500 (EST)
Received: from wout1-smtp.messagingengine.com (unknown [64.147.123.24])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 66F57380999
 for <speakup@linux-speakup.org>; Sat, 16 Jan 2021 12:21:22 -0500 (EST)
Received: from compute2.internal (compute2.nyi.internal [10.202.2.42])
 by mailout.west.internal (Postfix) with ESMTP id 5AF63166A
 for <speakup@linux-speakup.org>; Sat, 16 Jan 2021 12:21:07 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute2.internal (MEProxy); Sat, 16 Jan 2021 12:21:07 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 hubert-humphrey.com; h=date:from:to:subject:message-id
 :mime-version:content-type; s=fm2; bh=v70v9lTfRVGabSwd3fv8t8r3O9
 aCOnpId+x81eml75Y=; b=dVTWEFlwIIKcDKn7/cYQrcyvmYMiWh2UVlBOf/zCaL
 4T8WQeVGiER/WWPWzfaaneagIWsW4drUfZcZC/lr/8djdaH8LEdLl4F2lXw9G/Ty
 7QiDXGKTaBfw7NVGQQ36DIlvoI6q7APkw3NaGYYG+R2XvyY9KIDrffS3RJbQ8KUn
 A+yUiDFdr0Om1YVBHhjaGvkRfFD8QZJlDYsRWj4jI/8qeThWVPTOp1pROcLEFYh1
 Gko1pb1Kwlt130ncMUf+cC0XDK0PM80/q2xzFurr972932s8hGWAdydSgsYl9FB3
 m4Y8PYgNBd7KEvjk/6SNALVAvuA6z/yRUsgNgJlb5nGg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=content-type:date:from:message-id
 :mime-version:subject:to:x-me-proxy:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm1; bh=v70v9lTfRVGabSwd3fv8t8r3O9aCO
 npId+x81eml75Y=; b=lRTgJAA321PMdbd0N85dDAqI+yfyo6yFo/leIqLBfUw7R
 hBOL3afmr4subDgg/JWOJz6Ayry6Jw5dG+Fcqqlu8hzQrdywpFTXZBjYXR0dWFsF
 Ha99dMK3BOV+y1riWcmxdtorWBq2tWp4CJrKw4ukqRIrIIYECwH0VafIZQBsdXeb
 q8QbFx0aUB4fN0doLLEWl0e9laueIO3CroDEB+Riv1EytembJ4Fw/WqzuS1viC8S
 JNR6sbjTWlhUAKieu/sj7FmDYsu0VgUYI2DgVvpGeRRWhz0gcM7RPmcEUXoRgqYu
 v0yLH+yHo7If2WU6NKvikkwZcelRMBm+pNPGXqgow==
X-ME-Sender: <xms:giADYIy_-iMY_U8ASOpNTh4G6mFmiDMY92uQRQHhRyiyPWIDH9Fgvg>
 <xme:giADYFPUsYDTIuA1fXN2rbeygDFWpyj9ztL0Upu_loLE2RHh9F6bFEGK8VhZ0rsp6
 TZ4Q0wABPBR1fpt8UI>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrtdeggddutddvucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvuffkgggtsehttdertddttd
 dvnecuhfhrohhmpeevhhhimhgvucfjrghrthcuoegthhhimhgvsehhuhgsvghrthdqhhhu
 mhhphhhrvgihrdgtohhmqeenucggtffrrghtthgvrhhnpeejffffudejleeuffeivedtie
 ettedtkefggfekvdeujeetkedtheefhffhvdetkeenucfkphepuddtgedrudejvddrfedr
 ieefnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomheptg
 hhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomh
X-ME-Proxy: <xmx:giADYMTkleQNqe8CLyjg4jikRZWhGMJ9NBp5QvB9u2b_izgOVxnvlg>
 <xmx:giADYDYyn7dmSRll7H6b61I4pBp78NJMtf5JuC6uVlB--97WmyNyNQ>
 <xmx:giADYJ3cfgUzCLsDzfotFvTh_EY4t_8zUwXpRLHyVaAGkn_T384WaA>
 <xmx:gyADYMWMeTHbh9Jf0IvvIyXythd6ihod5k1o6DFo8W76hzYwEuhZ4g>
Received: from chime.lan (cpe-104-172-3-63.socal.res.rr.com [104.172.3.63])
 by mail.messagingengine.com (Postfix) with ESMTPA id 7985624005B
 for <speakup@linux-speakup.org>; Sat, 16 Jan 2021 12:21:06 -0500 (EST)
Date: Sat, 16 Jan 2021 09:21:05 -0800 (PST)
From: Chime Hart <chime@hubert-humphrey.com>
To: speakup@linux-speakup.org
Subject: Cut-and-Paste, Are their Size Limits?
Message-ID: <7a466694-8463-b45e-2fef-20f58fdf47d3@hubert-humphrey.com>
MIME-Version: 1.0
X-BeenThere: speakup@linux-speakup.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <http://linux-speakup.org/cgi-bin/mailman/options/speakup>, 
 <mailto:speakup-request@linux-speakup.org?subject=unsubscribe>
List-Archive: <http://linux-speakup.org/pipermail/speakup/>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup-request@linux-speakup.org?subject=help>
List-Subscribe: <http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup>,
 <mailto:speakup-request@linux-speakup.org?subject=subscribe>
Reply-To: "Speakup is a screen review system for Linux."
 <speakup@linux-speakup.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

Hi All: On this laptop, running Voxin-and-Speakup, this has happened 
several times. I was ssh in to my desktop machine, opened nano and tried 
pasting in a buffer of probably 100 lines. Not only did it not display nor 
paste in, but it seemed to lockup my console. No keystrokes echo, but I 
can use flat-review to examin my screen. Even after killing processes for 
an ssh session, tty23 is still stuck. Also, while the cut-and-paste will 
say mark or cut, it will not paste in anything now, no matter which 
console I am on. I looked in systemdjournal, kern.log, and 
/var/log/messages but saw nothing matching the time period involved. I 
know eventually I can or will reboot-and-all will be well, but ultimately 
wondering if there is a suggested limit in how many lines we can safely 
paste in? On this laptop I cannot increase number of lines with stty past 
112, no matter which fonts I try. The cut-and-paste buffer saves me from 
saving extra files to import. Thanks so much in advance for any guidance
Chime
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
