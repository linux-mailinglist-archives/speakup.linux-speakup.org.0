Return-Path: <speakup+bounces-1360-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 05E86B567CC
	for <lists+speakup@lfdr.de>; Sun, 14 Sep 2025 12:40:32 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=csircoza.onmicrosoft.com header.i=@csircoza.onmicrosoft.com header.a=rsa-sha256 header.s=selector2-csircoza-onmicrosoft-com header.b=n2JvRw51;
	dkim=pass (1024-bit key) header.d=csircoza.onmicrosoft.com header.i=@csircoza.onmicrosoft.com header.a=rsa-sha256 header.s=selector2-csircoza-onmicrosoft-com header.b=n2JvRw51;
	dkim=pass (2048-bit key; unprotected) header.d=mail-dkim-eu-west-1.prod.hydra.sophos.com header.i=@mail-dkim-eu-west-1.prod.hydra.sophos.com header.a=rsa-sha256 header.s=v1 header.b=p0xn6NDG;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id EA1293830BA; Sun, 14 Sep 2025 06:40:19 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id C51C6382BBB
	for <lists+speakup@lfdr.de>; Sun, 14 Sep 2025 06:40:19 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 1AABB382BCB; Sun, 14 Sep 2025 06:40:12 -0400 (EDT)
Received: from JN3P275CU003.outbound.protection.outlook.com (mail-southafricanorthazon11021123.outbound.protection.outlook.com [40.107.141.123])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 27D6E382BBA
	for <speakup@linux-speakup.org>; Sun, 14 Sep 2025 06:40:10 -0400 (EDT)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=pass;
 b=VpoGN7W/MbKxrkzd+YfDtM3C8CqpUn+QwEeLB0cgmTB/VOfhzEoK9GNT2u+aQLwDYgUj/GykRI8HM9EBh630ec3BM4wnMyETg3ERr1bZJXU6Ji3dW1TEbCW6l7QsdzY96lHiDHgFwaq8Tx3VD1R6e06OSk6WMmhKfmPbn86wBkm2PpKkgEc2By6lV/8F87ZVmJ6MDgwv7Tp/26dFgNcAYmWQMpZRpE1Ynv0p+qyQkChFhqdfSjjWGXYr2eJdmBqAK7v8lXAEz8irNfwgXC1Elf/YMrqDeq/LOfZ6mJMYvFO/XV7xdp3488tc96t4IIeyqDEyr5cV9D+45fkgkaDYmQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zPY/ld5VGEfme73eOKNfWFz+Ls216je6u+dPhdiQCUM=;
 b=lFwxuYXs9fFhEjEvFEhR9laEHUyQ4rIBiN5US8WR8KUtJtG8eX0iTrjnwMoSLwoZ1L54kMsVK+BEhHucWpp3kdWFI1GmX4hSLC4W0G7i/H5r2mXf32HzH46eu3+qjzOL+5SsPU0ZCnLEaZzVuK5zBtGE4QMpME84tcwgBnHl7IYs7GSqBIokZ3e/ar+Zxy0/PURTizZhHy0Y2AQ9KCz6VgOIVQXggIS0VT2MFvxagQqIuSZevtDpS7Wm3joNx9xN43BspsiS1NpbGVrH46J5rCp3qYic5YHClJ03wzI/JyBdn/ajHFwkzRIWbaF9MHnnMXoVgt1wmstmclPnl3Hdow==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 198.154.180.225) smtp.rcpttodomain=linux-speakup.org
 smtp.mailfrom=csir.co.za; dmarc=pass (p=none sp=none pct=100) action=none
 header.from=csir.co.za; dkim=pass (signature was verified)
 header.d=csircoza.onmicrosoft.com; dkim=pass (signature was verified)
 header.d=mail-dkim-eu-west-1.prod.hydra.sophos.com; arc=pass (0 oda=1 ltdi=1
 spf=[1,1,smtp.mailfrom=csir.co.za] dkim=[1,1,header.d=csir.co.za]
 dmarc=[1,1,header.from=csir.co.za])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=csircoza.onmicrosoft.com; s=selector2-csircoza-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zPY/ld5VGEfme73eOKNfWFz+Ls216je6u+dPhdiQCUM=;
 b=n2JvRw51Z6hd3egqPjCE3U8hXt/AnchMGzC1gFd8+NBmGWGkyYSInc1BLOeh/QnM967foqdAhl8lu/bC21gj33PnD/6DNujIU96IYwqXsg1iSoxyo7MeTIuksQ9Ym/w3tucyJU0i2q8Y4wapM3HZqDkQWkEtSYZwD/7xX0uTyFY=
Received: from CT2P275CA0042.ZAFP275.PROD.OUTLOOK.COM (2603:1086:100:a::30) by
 JN2P275MB0430.ZAFP275.PROD.OUTLOOK.COM (2603:1086:0:9::8) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9115.21; Sun, 14 Sep 2025 10:39:57 +0000
Received: from CPT0EPF0000071B.ZAFP275.PROD.OUTLOOK.COM
 (2603:1086:100:a:cafe::1e) by CT2P275CA0042.outlook.office365.com
 (2603:1086:100:a::30) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9115.21 via Frontend Transport; Sun,
 14 Sep 2025 10:39:57 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.154.180.225)
 smtp.mailfrom=csir.co.za; dkim=pass (signature was verified)
 header.d=csircoza.onmicrosoft.com;dkim=pass (signature was verified)
 header.d=mail-dkim-eu-west-1.prod.hydra.sophos.com;dmarc=pass action=none
 header.from=csir.co.za;
Received-SPF: Pass (protection.outlook.com: domain of csir.co.za designates
 198.154.180.225 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.154.180.225; helo=mfod-euw1.prod.hydra.sophos.com; pr=C
Received: from mfod-euw1.prod.hydra.sophos.com (198.154.180.225) by
 CPT0EPF0000071B.mail.protection.outlook.com (10.167.241.20) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9115.13 via Frontend Transport; Sun, 14 Sep 2025 10:39:55 +0000
Received: from ip-172-19-2-165.eu-west-1.compute.internal (ip-172-19-2-165.eu-west-1.compute.internal [127.0.0.1])
	by mfod-euw1.prod.hydra.sophos.com (Postfix) with ESMTP id 4cPl6K1fs1zsSF1
	for <speakup@linux-speakup.org>; Sun, 14 Sep 2025 10:39:53 +0000 (UTC)
X-Sophos-Product-Type: Mailflow
X-Sophos-Email-ID: 901b5617cab044a8b66c99a25c4f20ae
Received: from JNYP275CU001.outbound.protection.outlook.com
 (mail-southafricanorthazon11020138.outbound.protection.outlook.com
 [52.101.161.138])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mf-outbound-eu-west-1.prod.hydra.sophos.com (Postfix) with ESMTPS id
 4cPl6H2r64zPjdj
 for <speakup@linux-speakup.org>; Sun, 14 Sep 2025 10:39:51 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=eLox2V4tk7CXLfOhDiBVoX5ImvWKTN0o2GSuAJRzqkELJWs2X9tAuaLskEb3dozi6pAdnpuAIzNI208MxmbcbyFsZ4tog6ORtudCTP9VnYcvhTpnzaJUHBVI5G//1FQXfd1oT3JCnGkLBzVtSAVanuUYLrvLJwQowXkCTPBu5R91DYB+32P9Qa8GTtAMtn2j6C1vJPIZiTDDKGMy5djx6oXQfeDJegFGBQu57ut5Gl6MRgZzNnEOwQd8Z8Gx7O47Nvr8+s32dkWIg1btIolmdUcmYT3uGc8NuSHs5HHQARR0kL7Kov93IvStiMt+2n+LNYo8Yrd7U8ZrcZ/EDByk5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zPY/ld5VGEfme73eOKNfWFz+Ls216je6u+dPhdiQCUM=;
 b=mKQrni6mebKXN+erS58xy1EhiGrg7OuglHtZjbe0ufEnMpEudO9duYjgTr9uRgR6fDoVWBbmXwBcYDwiEcl2SE3B3gOQIBHi906GWjnsHFpkvRQPUMQ23XZNEFnGeDYplIzJD3Y+TZlFvQ1x1IVt65Vard4d6eXC2HRQlwufcGZp3Eyh5My3sGJB83FIkjw1/yE1h+IqmQXizJ4akQItAmZKi0UYGNZffoSL8dS0bYe/canYWuow+zKHlJ+fd/0UW8KTPR17VzGzYE7Nk1LWoV+1zUOThPEwMN/DOi7UVuFsMUoH2HtE/khaafsXDpbAN5bFYOS5VzG0FSLrB/SmOg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=csir.co.za; dmarc=pass action=none header.from=csir.co.za;
 dkim=pass header.d=csir.co.za; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=csircoza.onmicrosoft.com; s=selector2-csircoza-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zPY/ld5VGEfme73eOKNfWFz+Ls216je6u+dPhdiQCUM=;
 b=n2JvRw51Z6hd3egqPjCE3U8hXt/AnchMGzC1gFd8+NBmGWGkyYSInc1BLOeh/QnM967foqdAhl8lu/bC21gj33PnD/6DNujIU96IYwqXsg1iSoxyo7MeTIuksQ9Ym/w3tucyJU0i2q8Y4wapM3HZqDkQWkEtSYZwD/7xX0uTyFY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1757846382; 
 s=v1; d=mail-dkim-eu-west-1.prod.hydra.sophos.com;
 h=Content-Type:Subject:cc:From:Date;
 bh=zPY/ld5VGEfme73eOKNfWFz+Ls216je6u+dPhdiQCUM=;
 b=p0xn6NDG/IMVsj2DggU0gHAePFaZsfb8lGeZj2CmLLRnFhvEK5JBCni1BC+YtrXJ
 9zNoCKIOE6LKSfg0thooa11+6mqz1VcTOXeDkISRSqpLbfvD0+anU+o6XQ7a0+3IbJY
 QTFGCijnDOtZVmSo2aPHIwtgeX7AdoRQ6IF2Wir5EyXIDsVqtgVwT4VDzezdOCzt6lN
 1uYcXNdTHbOF8deEKa9G9Ll52R/4Rf6KPCrFGSn/NQVonqWILBhW96BPmrHZ3I5Xdjr
 I4oJ5bP/cPHgKsPKfYSF4UqKAiy/tR0NAlzCHJfc3P9j55Vp0L2dw5EE8PfnLmOwWyQ
 URkMo7qh/w==
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=csir.co.za;
Received: from JN3P275MB2310.ZAFP275.PROD.OUTLOOK.COM (2603:1086:0:af::11) by
 JN1P275MB2054.ZAFP275.PROD.OUTLOOK.COM (2603:1086:0:89::14) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9115.21; Sun, 14 Sep 2025 10:39:45 +0000
Received: from JN3P275MB2310.ZAFP275.PROD.OUTLOOK.COM
 ([fe80::5a5:5b4:7ba0:2b32]) by JN3P275MB2310.ZAFP275.PROD.OUTLOOK.COM
 ([fe80::5a5:5b4:7ba0:2b32%5]) with mapi id 15.20.9115.020; Sun, 14 Sep 2025
 10:39:44 +0000
Date: Sun, 14 Sep 2025 12:39:42 +0200 (SAST)
From: Willem van der Walt <wvdwalt@csir.co.za>
cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: SPF FAILED: MAY BE MALICIOUS Re: "your browser is not supported
 anymore" both lynx and elinks, what now?
In-Reply-To: <202509121438.58CEcaRB012655@nfbcal.org>
Message-ID: <3405010c-b800-06b6-6cd0-d585b2c9ef1b@csir.co.za>
References: <202509121438.58CEcaRB012655@nfbcal.org>
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-ClientProxiedBy: JNAP275CA0021.ZAFP275.PROD.OUTLOOK.COM (2603:1086:0:4d::12)
 To JN3P275MB2310.ZAFP275.PROD.OUTLOOK.COM
 (2603:1086:0:af::11)
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
X-MS-TrafficTypeDiagnostic:
	JN3P275MB2310:EE_|JN1P275MB2054:EE_|CPT0EPF0000071B:EE_|JN2P275MB0430:EE_
X-MS-Office365-Filtering-Correlation-Id: 2d4e3dfc-f4c4-473d-0357-08ddf37b0b87
X-MS-Exchange-AtpMessageProperties: SA
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info-Original:
 =?us-ascii?Q?d+2DkT9GN+RZYKS99Jq2w9zTybHEuq1KBIMFaDwHja1SwuuDYzepNxRZ1hsS?=
 =?us-ascii?Q?OozvGK0dgu8uppKRc2AZyxEMiddxGTHTqOqVD+XbH78Vrxs3ZCYLltOTQ1Ga?=
 =?us-ascii?Q?HW/64VZXxXBOhrV8w23tM5Z5sfOlZvlGpZisxOUdudMmvSAvkahwfH6y1Dwv?=
 =?us-ascii?Q?1HQHJEAgWvfB2MhmG9x0g4t29Gf1j//whFuq3+IUp0gtgRZa5CjL+kMHiWx4?=
 =?us-ascii?Q?hDK/4CJ0RKZkaQmt/BWPS5vlTgfQ6liJ0LiAERCXfprpqzmVhIzQqstspYfz?=
 =?us-ascii?Q?361jehQQHrys4pyCIyvJh9BsGRRFyZEoVVPYGXiLSclPXP80TG2YqDKbPgri?=
 =?us-ascii?Q?ebgEQiXBXkYwDjhf4K87dCMClB+IMSin6POASOXO6m99L1HPSyY7bowyOCfa?=
 =?us-ascii?Q?vpnSgx4rdtcd1i4+ZbRsPcEVwKpERkzuIruUjd2+0Wz7GYIXD5Hedn7hL2kt?=
 =?us-ascii?Q?QLSST+JtbLF+FD76kU9AkBPkicWiJ0QpBUYqtyHzEyxBA9gaVCU6bCbFPaP5?=
 =?us-ascii?Q?RTD54rELumgJnBcpx/TD713zmEm8lE9zcPFhjYlt0IRsvmePIxF0YbgwLspA?=
 =?us-ascii?Q?G1XmQH9lsDnLoql5FCQi6mNQnv6MNZRY3Q0qP9+oeodPEToO+wPHugY8Z7/l?=
 =?us-ascii?Q?S2sXp+lUmleke+SO6X1VZm4jOI+Z9t2fvb9LN3/HMJdbNKuqlTle8MWE7Hvg?=
 =?us-ascii?Q?avIbIOTT00P79t166z/eNWwOq2lKR+IS1dberk/BTbmBe84b534hBxwFK72m?=
 =?us-ascii?Q?4NGGNcCPxVlq62bgWpn33lhYPKhRyGuy18mked1qvaUUPuj0VjROSPd7QbX0?=
 =?us-ascii?Q?h1XChCqg7JgVhSnJigfPlYPQzmKXPM7hPxwRB9VMOEtsLkgB/UKhDjRtvjXR?=
 =?us-ascii?Q?8OaLA8fZwCUDgDWd6+5bxbBDfHCn5M7obIU/RjQZgjpY60kc4nrjPkXVHchm?=
 =?us-ascii?Q?Pzw6o9/u3dW3ljwoAnazu4/CrY/7dJZ00o1kpgbfqk/BHuGDzquCJbq29cS0?=
 =?us-ascii?Q?Sb4gsNUEWjgxGAFU+8nkdmYX0vzEcHqyMjZR+Q5wostSPZQvlCUPsMEji73D?=
 =?us-ascii?Q?XMznzpgWFBtKmdJyrSrPo5A1JrOhoF08u1huYuzT3txX07SF4ziWLwQlX3oZ?=
 =?us-ascii?Q?k44tcnWUznhfQWBSPeBX1s2M8YKVQovwiI4Gb8wG3ZS5rJr9umRMc0EXxpwR?=
 =?us-ascii?Q?U2rGQ7TCAoRdUhFGMo1a7zX6pR7iDYfpXpNonkSjtBpk6qAPOW0RPe/rLC69?=
 =?us-ascii?Q?B1jdvka60VXx5LcZ2VA3UyKkpk4gbNKmmdTJ8doWKt2NhoAVzCXrS+QqFPsa?=
 =?us-ascii?Q?h/IVFLXIZEs9CfmUubt8DSEDedL/dHwJ1U18GIM+v2sW20dEW+2+Z7YzeC6s?=
 =?us-ascii?Q?jNnVnSM=3D?=
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255; CTRY:; LANG:en;
 SCL:1; SRV:; IPV:NLI; SFV:NSPM; H:JN3P275MB2310.ZAFP275.PROD.OUTLOOK.COM;
 PTR:; CAT:NONE; SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT;
 SFP:1102; 
X-MS-Exchange-Transport-CrossTenantHeadersStamped: JN1P275MB2054
X-Sophos-Email: [eu-west-1] Antispam-Engine: 6.0.2,
 AntispamData: 2025.9.14.95719
X-LASED-SpamProbability: 0.083173
X-LASED-Hits: ARCAUTH_PASSED 0.000000, BODYTEXTP_SIZE_3000_LESS 0.000000,
 BODY_SIZE_1200_1299 0.000000, BODY_SIZE_2000_LESS 0.000000,
 BODY_SIZE_5000_LESS 0.000000, BODY_SIZE_7000_LESS 0.000000,
 DKIM_SIGNATURE 0.000000, FROM_NAME_PHRASE 0.000000, HTML_00_01 0.050000,
 HTML_00_10 0.050000, IN_REP_TO 0.000000, LEGITIMATE_SIGNS 0.000000,
 MISSING_HEADERS 0.000000, MSGID_SAMEAS_FROM_HEX_844412 0.100000,
 MSG_THREAD 0.000000, MULTIPLE_REAL_RCPTS 0.000000, NO_FUR_HEADER 0.000000,
 OUTBOUND 0.000000, OUTBOUND_SOPHOS 0.000000, REFERENCES 0.000000,
 SINGLE_URI_IN_BODY 0.000000, SUSP_DH_NEG 0.000000, TO_MALFORMED 0.000000,
 TRANSACTIONAL 0.000000, URI_WITH_PATH_ONLY 0.000000, __ANY_URI 0.000000,
 __ARCAUTH_DKIM_PASSED 0.000000, __ARCAUTH_DMARC_PASSED 0.000000,
 __ARCAUTH_PASSED 0.000000, __ARC_SEAL_MICROSOFT 0.000000,
 __ARC_SIGNATURE_MICROSOFT 0.000000, __BODY_NO_MAILTO 0.000000,
 __BOUNCE_CHALLENGE_SUBJ 0.000000, __BOUNCE_NDR_SUBJ_EXEMPT 0.000000,
 __BULK_NEGATE 0.000000, __CC_NAME 0.000000, __CC_NAME_DIFF_FROM_ACC 0.000000,
 __CC_REAL_NAMES 0.000000, __CP_MEDIA_BODY 0.000000, __CP_URI_IN_BODY 0.000000,
 __CT 0.000000, __CT_TEXT_PLAIN 0.000000, __DQ_NEG_DOMAIN 0.000000,
 __DQ_NEG_HEUR 0.000000, __DQ_NEG_IP 0.000000, __FORWARDED_MSG 0.000000,
 __FRAUD_NEGATE 0.000000, __FRAUD_NEGATE_FROM 0.000000,
 __FROM_ADDY_SHORT_LC 0.000000, __FROM_DOMAIN_NOT_IN_BODY 0.000000,
 __FROM_NAME_NOT_IN_BODY 0.000000, __FUR_RDNS_SOPHOS 0.000000,
 __HAS_CC_HDR 0.000000, __HAS_FROM 0.000000, __HAS_MSGID 0.000000,
 __HAS_REFERENCES 0.000000, __HAS_X_FF_ASR 0.000000,
 __HAS_X_FF_ASR_CAT 0.000000, __HAS_X_FF_ASR_SFV 0.000000, __HTTPS_URI 0.000000,
 __IMP_FROM_MY_ORG 0.000000, __IN_REP_TO 0.000000,
 __JSON_HAS_SCHEMA_VERSION 0.000000, __JSON_HAS_TENANT_DOMAINS 0.000000,
 __JSON_HAS_TENANT_ID 0.000000, __JSON_HAS_TENANT_SCHEMA_VERSION 0.000000,
 __JSON_HAS_TRACKING_ID 0.000000, __MIME_BOUND_CHARSET 0.000000,
 __MIME_TEXT_ONLY 0.000000, __MIME_TEXT_P 0.000000, __MIME_TEXT_P1 0.000000,
 __MIME_VERSION 0.000000, __MSGID_HEX_844412 0.000000,
 __NO_HTML_TAG_RAW 0.000000, __OUTBOUND_SOPHOS_FUR 0.000000,
 __OUTBOUND_SOPHOS_FUR_IP 0.000000, __OUTBOUND_SOPHOS_FUR_RDNS 0.000000,
 __PHISH_SPEAR_STRUCTURE_2 0.000000, __PHISH_SPEAR_SUBJECT 0.000000,
 __PHISH_SPEAR_SUBJ_PREDICATE 0.000000, __PHISH_SPEAR_SUBJ_TEAM 0.000000,
 __PRODUCT_TYPE_MAILFLOW 0.000000, __REFERENCES 0.000000, __SANE_MSGID 0.000000,
 __SCAN_D_NEG 0.000000, __SCAN_D_NEG2 0.000000, __SCAN_D_NEG_HEUR 0.000000,
 __SCAN_D_NEG_HEUR2 0.000000, __SEO_PHRASE 0.000000, __SINGLE_URI_TEXT 0.000000,
 __SUBJ_ALPHA_NEGATE 0.000000, __SUBJ_REPLY 0.000000,
 __SUBJ_TRANSACTIONAL 0.000000, __SUBJ_TR_TASK_DONE 0.000000,
 __URI_IN_BODY 0.000000, __URI_NOT_IMG 0.000000, __URI_NO_MAILTO 0.000000,
 __URI_NO_PATH 0.000000, __URI_NO_WWW 0.000000, __URI_NS 0.000000,
 __X_FF_ASR_SCL_NSP 0.000000, __X_FF_ASR_SFV_NSPM 0.000000
X-LASED-Impersonation: False
X-LASED-Spam: NonSpam
X-Sophos-Mailflow-Processing-Id: 7058d281c5b840fd9673902bc04e995f
X-Sophos-MH-Mail-Info-Key: NGNQbDZLMWZzMXpzU0YxLTE3Mi4xOS4yLjE2NQ==
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped:
 CPT0EPF0000071B.ZAFP275.PROD.OUTLOOK.COM
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs:
	49e83cdd-8629-4bf3-fa0f-08ddf37b04f3
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|82310400026|35042699022|14060799003|1800799024|36860700013|376014;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?nYYjmmaXyGF4+ouuQaOvqpHAYrt3z4VXp6Pce/Fz6C1N80WxBxD2xV5jzStI?=
 =?us-ascii?Q?5Cb6d21MlFzgnP+cKqU5pU/pvrr84IBq8QAPVChZ18+hBX+A313/BRg54VFy?=
 =?us-ascii?Q?0iKL1Qc54raJIhcFgZqKy451zTDbG/xzx+A3q2OPjznI2BZxrZgcB7y6Rlm6?=
 =?us-ascii?Q?Q/Fl9v41iNuITdSjyg0GfUTX7gYYLdnDHthg0gwj8DJKgsenFuV9DSOPlx9o?=
 =?us-ascii?Q?YBu8oA4LJUR+WX3CjdutFyhcByY8sqUMBEJTNM5dw7swnsH9wj42ZfophjNH?=
 =?us-ascii?Q?P94I8Bvz0qC4b9e6pZvsy1B7dDDeU8WBkPGcAn3VJIpyWSmPRnzayLF4N76Z?=
 =?us-ascii?Q?VQsdKJm8wVWa1pHgbwJwbdpXeN9fvljROJSdpNJ2KybjaX6MRAe54DLlaAaq?=
 =?us-ascii?Q?YT9CEYvfFRb/D0FBhiOLfWZqYFXHkc1qS1ICAXm98mL145iFSId34poIaGUE?=
 =?us-ascii?Q?8yKbrpGsbrGfPsr/k9a2/0iGwWabEpMW/Jq0p8OJxAJVA9rQKHloARg1B4Fy?=
 =?us-ascii?Q?KmB+5MMChesgfAnibdNYCpDF0yvk+N1P1a1up6WeAkeeXaRvTBH3vgQ4r1j6?=
 =?us-ascii?Q?8R8UMVo/3WLGcbXtpwZRkoKTQpCENjWRC1oLPfOd9XskWI/tVjkQ+jet618H?=
 =?us-ascii?Q?7ixeysPs/uBWfDtagnDBN9/DAnWLw/PAbmBRUfBOtHCF84+svaRCnK7BfagR?=
 =?us-ascii?Q?Q8vdPkptImjPtQakjTdWz8h633VMmUPd+ZI+9EWUbCgnOicbt6zlY4yuDRSa?=
 =?us-ascii?Q?U0zZ7qEGrPOLi6jaJ8DxtsTcFNp7K/DiiAxv7SEsE4i4O0YaEZPXuISgYyGD?=
 =?us-ascii?Q?c6NBslLhs311jn/grVLq/6De/MlV0Rikb5etRAbJAwk+22TiZh0/jv5alstl?=
 =?us-ascii?Q?stJTMoECxSFsr38HY+t6M4MJlBSp9U2sss0iiilA5E8OMkkoIp+irJHzNQMk?=
 =?us-ascii?Q?MLPZGVW0mquAiTVh2w7qfBmGpiSJlszPmwR7k59pLOAtM4Y0451JAmLABKE6?=
 =?us-ascii?Q?VyYVTd8kiaDLVJJs9XF8vQ5J8IXvlnj7xQFHn9452mgoqRM/oVq4Xvv5xagO?=
 =?us-ascii?Q?07LSqvSckShcNJpOIuMGWHpFC83CwxGumo6QODjn7eUkmSMQnJJrkuHY8LNj?=
 =?us-ascii?Q?jAlKhmTM8LMT+mYnn1iIlTeSOnOLAWIqPu7sfxZES2bnkZjKC3vnrpBGHJEe?=
 =?us-ascii?Q?eAYgOp7cZxHoGfI7bkz21Y/oDMGnsQy+LtuiYldO/8i52cLrjwOW6Pq1zZhC?=
 =?us-ascii?Q?QV1jp5407ZZIr6YjHjASn5JDmw0RZCoq9wyr5mHKkOKWtdQW1FyTvw8Bv+KT?=
 =?us-ascii?Q?Qn9SznKoLwLq7hv3j0A+Sixo/TGCjw0F2Bh/skwabQjPpl6Dtrsk3ADpGian?=
 =?us-ascii?Q?MYTled/p14K9O2pPaLQdvGCYMi0r4kLproqstf6LJVTwGkhjMd8lPx/iNRVW?=
 =?us-ascii?Q?OPFzyrGQJKAc2iON1+SqkqPyHJnC/0Ep1VGnEZiCq0o8S5sWK8OO/Q=3D=3D?=
X-Forefront-Antispam-Report:
	CIP:198.154.180.225;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mfod-euw1.prod.hydra.sophos.com;PTR:mfod-euw1.prod.hydra.sophos.com;CAT:NONE;SFS:(13230040)(82310400026)(35042699022)(14060799003)(1800799024)(36860700013)(376014);DIR:OUT;SFP:1102;
X-OriginatorOrg: csir.co.za
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Sep 2025 10:39:55.1213
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 2d4e3dfc-f4c4-473d-0357-08ddf37b0b87
X-MS-Exchange-CrossTenant-Id: 2fd3c5d5-ddb2-4ed3-9803-f89675928df4
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=2fd3c5d5-ddb2-4ed3-9803-f89675928df4;Ip=[198.154.180.225];Helo=[mfod-euw1.prod.hydra.sophos.com]
X-MS-Exchange-CrossTenant-AuthSource: CPT0EPF0000071B.ZAFP275.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: JN2P275MB0430
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi all,
Thanks for the suggestions.
It looks like duckduckgo.com will do the job.
Kind regards, Willem


On Fri, 12 Sep 2025, Brian Buhrow wrote:

> 	Hello.  Some months ago, I looked into using https://eu-west-1.protection.sophos.com?d=duckduckgo.com&u=aHR0cHM6Ly9saXRlLmR1Y2tkdWNrZ28uY29t&p=m&i=NjU0NjA2MWRiMzM3ZDMzYTFlMGNmNmY4&t=eEEzQTl1SllrVnZHcE9OMHFibzc2Zmwvbkc3ai8waS9GYnEyWTVzOE0vaz0=&h=216705d89cbf4f588387d3f6902b05aa&s=AVNPUEhUT0NFTkNSWVBUSVbI68MQuvkKJIj5-UCMkHMMosoSd0vvfuEdLD8EozgcxahYmy2C82ia3Sgx37ugTYMP4ekwdTdrjBpr77Nk-P_A
> instead of Google as a search engine.  This was after Google began requiring Javascript to
> submit search queries in the US earlier this year.  I found it didn't work because in order to
> perform a search, I had to get through a capcha which included a bunch of images which, not
> surprisingly using lynx, were all titled [image].  As far as I could tell, there was no audio
> alternative.  To make matters worse, by default, Lynx doesn't store cookies to nonvolatile
> storage, so every time one restarts lynx, one has to get new cookies and work through the
> capcha again.  There is supposed to be a way to get lynx to save cookies to a cookie file, but
> I've never been able to get it to work.
>
> -thanks
> -Brian
>
>
>

