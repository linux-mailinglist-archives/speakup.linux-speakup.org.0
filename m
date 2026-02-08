Return-Path: <speakup+bounces-1552-lists+speakup=lfdr.de@linux-speakup.org>
Delivered-To: lists+speakup@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id Zl/tHRcEiWkg1AQAu9opvQ
	(envelope-from <speakup+bounces-1552-lists+speakup=lfdr.de@linux-speakup.org>)
	for <lists+speakup@lfdr.de>; Sun, 08 Feb 2026 22:45:59 +0100
X-Original-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 7653910A41E
	for <lists+speakup@lfdr.de>; Sun, 08 Feb 2026 22:45:58 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm1 header.b=XdrzBsxy;
	dkim=pass (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm3 header.b=CJ2j5Pty;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 1A39E381851; Sun, 08 Feb 2026 16:45:57 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id EFBD13817F5
	for <lists+speakup@lfdr.de>; Sun, 08 Feb 2026 16:45:56 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id E8AD6381813; Sun, 08 Feb 2026 16:45:50 -0500 (EST)
Received: from fout-a6-smtp.messagingengine.com (fout-a6-smtp.messagingengine.com [103.168.172.149])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 8CC093817F5
	for <speakup@linux-speakup.org>; Sun, 08 Feb 2026 16:45:50 -0500 (EST)
Received: from phl-compute-06.internal (phl-compute-06.internal [10.202.2.46])
	by mailfout.phl.internal (Postfix) with ESMTP id ADE50EC0386;
	Sun,  8 Feb 2026 16:45:47 -0500 (EST)
Received: from phl-frontend-03 ([10.202.2.162])
  by phl-compute-06.internal (MEProxy); Sun, 08 Feb 2026 16:45:47 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	hubert-humphrey.com; h=cc:cc:content-type:content-type:date:date
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm1; t=1770587147;
	 x=1770673547; bh=fmlWtqDDj0AFTmTMSI3W42cmCPsEqNcqFo/+QOIyVI8=; b=
	XdrzBsxy5MmGQiWgnJrrhqAdDz4SLkKij/A8u18U5FcFa2j2cDklFwhPv51jab1m
	8QmG6MhSNCR/vEcDzzw2hwClKBA1N/P3Qxql0uifzlHErE2HpkxQMJ68VXkjAv0E
	sXBLk+qzOmsKBPW4pEjOTLkVva7FJFLzxLe4s+f4Q6kr/jOC2CbMn/uJhbdhNrGm
	yMPnoLT0hjY1MbZyMVDkeqHKyHb+cq970TZoTyu8v5nKgeyejVRKkqd8WL27g+dd
	fE9IvFfhYcqTnLAPeeW6lZaizUWBje4MTqVBWjk4wapxSnu3qZOqK5cweLGZ9S+l
	4vqtI2i8BteqveRnkqLWwQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=
	1770587147; x=1770673547; bh=fmlWtqDDj0AFTmTMSI3W42cmCPsEqNcqFo/
	+QOIyVI8=; b=CJ2j5PtyqLShezEtTpENZC/CDPdfkpRa1eGl48E8ioD3uAS5TaQ
	dW3CSG/Dq8Vjgq3K4L2SJu2p8q07xyrX3p+ML24SQe/lLmxvO+2rVNb9v02x5bjU
	XXjRiZmecuJOliXdWB06FJQVC4giiRu8nxDBZXV2PmK5yHLAUbYT9D3n0+fMrYpm
	mtaJ8+jHrjOsdNY685ZQdi8jBh61mdmXvHgPhAU+Re1MrWn+05gRgC0nARRY54P1
	KSJf0FBsFzN57uigBxf/dzqW0+oqAe2M/eodm95zQ3klQVt6+T28nnOoPKVbwvOe
	MBaCvMIn5EjJNl843tIsI4sCFYXxRTLVHqg==
X-ME-Sender: <xms:CwSJaSQzHERb40er1cOVHn40g_vP5pFX3uYB0H1xmmUkrow3kP172Q>
    <xme:CwSJady9t4uoIv1j_c4C_keHwzv-E4c2lCWTHbzMEbGJbKkmb9XnQIOgP8uo_5oBJ
    AMXBMS2rkkwXAyhbwmroVlHvsOEIM2QzdGe4GVH2_UgkzB5RaPRGbE>
X-ME-Received: <xmr:CwSJadd06JRCX7BmUJ9brkj0VgR5emgfF679JyXI6p37X7JwWq4GnPpR0j8A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgdduleehtdegucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
    rghilhhouhhtmecufedttdenucenucfjughrpeffhffvvefujgfkfhggtgesthdtredttd
    dtvdenucfhrhhomhepvehhihhmvgcujfgrrhhtuceotghhihhmvgeshhhusggvrhhtqdhh
    uhhmphhhrhgvhidrtghomheqnecuggftrfgrthhtvghrnhepvdehgeeljeekgeeugfefle
    ekjeeivdekkedvteeuveeufeeffffffeffledufedtnecuvehluhhsthgvrhfuihiivgep
    tdenucfrrghrrghmpehmrghilhhfrhhomheptghhihhmvgeshhhusggvrhhtqdhhuhhmph
    hhrhgvhidrtghomhdpnhgspghrtghpthhtohepvddpmhhouggvpehsmhhtphhouhhtpdhr
    tghpthhtohepshhpvggrkhhupheslhhinhhugidqshhpvggrkhhuphdrohhrghdprhgtph
    htthhopeguvggsihgrnhdqrggttggvshhsihgsihhlihhthieslhhishhtshdruggvsghi
    rghnrdhorhhg
X-ME-Proxy: <xmx:CwSJaZIyAZBfH-ySM3vXVyY6YcRNsmWcgqjqL10hKsNrr8veFRsSlQ>
    <xmx:CwSJaeExUIj7Gf14P6Zj6L4S3ng9ajFMZDhUn1n2WkmsAQBbpPAWkg>
    <xmx:CwSJaTpO-c32kPV8eDy9XHUmGf1w5VQ78ZtHt4vrry6U1ttLOKnyKA>
    <xmx:CwSJaXQde_SZYNFxspR6CYbVYOX6Mq-MN6StGHE5xhV5P0_nrrpC_w>
    <xmx:CwSJaa3-scz73Szv30s0K7osT0aO-XrvT7_I8CHZdc75Vv1k6TPJEYbX>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 8 Feb 2026 16:45:47 -0500 (EST)
Date: Sun, 8 Feb 2026 13:45:45 -0800 (PST)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: speakup@linux-speakup.org
cc: debian-accessibility@lists.debian.org
Subject: Re: dectalk with Zabbly?
In-Reply-To: <aYj7xTzujBre3UvV@end>
Message-ID: <5e14d114-7706-05e6-0d2e-89b1939ea7fd@hubert-humphrey.com>
References: <a94778ab-fb0a-c4dd-8560-5f0c13cf7ca2@hubert-humphrey.com> <aYhEef1ay3qawn1q@end> <7c04da49-6ed5-edd5-3fe0-2ca6fed279f2@hubert-humphrey.com> <aYjxf7H2_ir-ZIoq@end> <07e6a7ea-34dd-6a00-16c0-32f43b0bd138@hubert-humphrey.com> <aYj3QBxlYZvRZBjN@end>
 <302bf531-41b5-6335-f16e-0629a3a46515@hubert-humphrey.com> <aYj7xTzujBre3UvV@end>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux." <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.11 / 15.00];
	SUBJECT_ENDS_QUESTION(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[hubert-humphrey.com,none];
	R_DKIM_ALLOW(-0.20)[hubert-humphrey.com:s=fm1,messagingengine.com:s=fm3];
	MAILLIST(-0.18)[generic];
	RCVD_NO_TLS_LAST(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[hubert-humphrey.com:+,messagingengine.com:+];
	R_SPF_NA(0.00)[no SPF record];
	RCPT_COUNT_TWO(0.00)[2];
	TAGGED_FROM(0.00)[bounces-1552-lists,speakup=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[chime@hubert-humphrey.com,speakup@linux-speakup.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:5645, ipnet:206.248.128.0/18, country:CA];
	DBL_BLOCKED_OPENRESOLVER(0.00)[befuddled.reisers.ca:helo,befuddled.reisers.ca:rdns];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[speakup];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 7653910A41E
X-Rspamd-Action: no action

OK Samuel, this is 90lines, hope it makes it through
sudo lsusb -v -d 0dd0:2001

Bus 005 Device 004: ID 0dd0:2001 Access Solutions DECtalk USB
Negotiated speed: Full Speed (12Mbps)
Device Descriptor:
  bLength                18
  bDescriptorType         1
  bcdUSB               1.00
  bDeviceClass            0 [unknown]
  bDeviceSubClass         0 [unknown]
  bDeviceProtocol         0
  bMaxPacketSize0        64
  idVendor           0x0dd0 Access Solutions
  idProduct          0x2001 DECtalk USB
  bcdDevice            2.06
  iManufacturer           1 Access Solutions
  iProduct                2 DECtalk USB
  iSerial                 0
  bNumConfigurations      1
  Configuration Descriptor:
    bLength                 9
    bDescriptorType         2
    wTotalLength       0x0035
    bNumInterfaces          1
    bConfigurationValue     1
    iConfiguration          0
    bmAttributes         0xa0
      (Bus Powered)
      Remote Wakeup
    MaxPower              400mA
    Interface Descriptor:
      bLength                 9
      bDescriptorType         4
      bInterfaceNumber        0
      bAlternateSetting       0
      bNumEndpoints           5
      bInterfaceClass       255 Vendor Specific Class
      bInterfaceSubClass      0 [unknown]
      bInterfaceProtocol      0
      iInterface              0
      Endpoint Descriptor:
        bLength                 7
        bDescriptorType         5
        bEndpointAddress     0x02  EP 2 OUT
        bmAttributes            3
          Transfer Type            Interrupt
          Synch Type               None
          Usage Type               Data
        wMaxPacketSize     0x0040  1x 64 bytes
        bInterval               1
      Endpoint Descriptor:
        bLength                 7
        bDescriptorType         5
        bEndpointAddress     0x04  EP 4 OUT
        bmAttributes            3
          Transfer Type            Interrupt
          Synch Type               None
          Usage Type               Data
        wMaxPacketSize     0x0040  1x 64 bytes
        bInterval               1
      Endpoint Descriptor:
        bLength                 7
        bDescriptorType         5
        bEndpointAddress     0x06  EP 6 OUT
        bmAttributes            3
          Transfer Type            Interrupt
          Synch Type               None
          Usage Type               Data
        wMaxPacketSize     0x0040  1x 64 bytes
        bInterval               1
      Endpoint Descriptor:
        bLength                 7
        bDescriptorType         5
        bEndpointAddress     0x86  EP 6 IN
        bmAttributes            3
          Transfer Type            Interrupt
          Synch Type               None
          Usage Type               Data
        wMaxPacketSize     0x0040  1x 64 bytes
        bInterval               1
      Endpoint Descriptor:
        bLength                 7
        bDescriptorType         5
        bEndpointAddress     0x84  EP 4 IN
        bmAttributes            3
          Transfer Type            Interrupt
          Synch Type               None
          Usage Type               Data
        wMaxPacketSize     0x0040  1x 64 bytes
        bInterval               1
Device Status:     0x0000
  (Bus Powered)
Chime


