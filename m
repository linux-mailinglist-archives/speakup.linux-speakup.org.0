Return-Path: <speakup+bounces-1210-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 7B8CB96B30C
	for <lists+speakup@lfdr.de>; Wed,  4 Sep 2024 09:39:42 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=csircoza.onmicrosoft.com header.i=@csircoza.onmicrosoft.com header.a=rsa-sha256 header.s=selector2-csircoza-onmicrosoft-com header.b=GXJzQSDI;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=csircoza.onmicrosoft.com header.i=@csircoza.onmicrosoft.com header.a=rsa-sha256 header.s=selector2-csircoza-onmicrosoft-com header.b=OAhM0QoY;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=mail-dkim-eu-west-1.prod.hydra.sophos.com header.i=@mail-dkim-eu-west-1.prod.hydra.sophos.com header.a=rsa-sha256 header.s=v1 header.b=PUZdLdxq;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 60EA238207A; Wed, 04 Sep 2024 03:39:41 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 3E369381FEE
	for <lists+speakup@lfdr.de>; Wed, 04 Sep 2024 03:39:41 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 0A735381FEE; Wed, 04 Sep 2024 03:39:34 -0400 (EDT)
Received: from JNYP275CU001.outbound.protection.outlook.com (mail-southafricanorthazon11020109.outbound.protection.outlook.com [52.101.161.109])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 96DC5380E69
	for <speakup@linux-speakup.org>; Wed, 04 Sep 2024 03:39:32 -0400 (EDT)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=fail;
 b=ompIIK+vXZ769TRvOujFZT397jf74gEih8NdxLnLmzsprQpudwTZ24+QSlmo5DGwahgGlH/4O5sfS06ErsBjqiUUSZ3B7pnKSpz/0+yMTULbMsPS9ROLkSfUIR18KoUk9vxmogpwRg5pPinqwx2J4kaDLSwtDVfhN1VM2VAemuC56FHHPct18vwxdUo9mQYUNBUaSxDpCRNjedPieE+ximgFXyH3PrYUmGFJ8yw1X9QiUSjFpnZkzUj7A3TSd3T025BiEWtlA6L1GeThBb6jVKzqVkyJyX2oXC1CW8fCNytXQKk6HPN6/JLP0sJd9RE5E6kPzK+pJgJVwuyM1JPBMA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=V/x2O5Okn7Y4SDPX5UHd+NusLTiyP48YNGp5dGyiCYc=;
 b=oy66pEvENQ9ZTPn164NyRnmXM1YVq45d8Cp3G5e2c3VZxtVHBOGBSUnkoukLMP8HSU3XEi81TRidrPu/aDtwvjPflLk3nAYCdX8/NNmRL3gYeg319UwgsvY6kAfdAKxx3/QvEXn4TbLah2H1Ct0vl2AqYFRqgRspOHUkpD/IL6Se/kCYD81oYt8+vFxPGIadsXg/oxqAQ28il5zil+8SPBHFhX4pCdYTMkz718lN7bNc9g46ZOufxiKPvdvSiT3parJNEr3BoBq+K1IVNDBziqFVfDaouZ9EBSkX7qwfTVjfyLBMXuqjo+TvrTH3ntLJAqDCYWR0iS+vY8dIdzvGng==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 198.154.180.224) smtp.rcpttodomain=linux-speakup.org
 smtp.mailfrom=csir.co.za; dmarc=pass (p=none sp=none pct=100) action=none
 header.from=csir.co.za; dkim=fail (body hash did not verify)
 header.d=csircoza.onmicrosoft.com; dkim=fail (body hash did not verify)
 header.d=mail-dkim-eu-west-1.prod.hydra.sophos.com; arc=fail (47)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=csircoza.onmicrosoft.com; s=selector2-csircoza-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=V/x2O5Okn7Y4SDPX5UHd+NusLTiyP48YNGp5dGyiCYc=;
 b=GXJzQSDI4VQ/Ka++uyajuLp5T7mBgbnluMz3cl//wNh0y2EmTgOooaYP5j33FvFT0ezD3NRlu91KtpitMbIuak2GmR/lrqRjLMXEO+ux8w6v0f/d7u2g0sP3HFTHimYzQxpQGJqhePHIf8nM0nxNqyVUvVlKnMjhM2nha5F35T8=
Received: from AS4P191CA0023.EURP191.PROD.OUTLOOK.COM (2603:10a6:20b:5d9::19)
 by CP7P275MB2073.ZAFP275.PROD.OUTLOOK.COM (2603:1086:100:46::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.27; Wed, 4 Sep
 2024 07:39:21 +0000
Received: from AM3PEPF0000A79A.eurprd04.prod.outlook.com
 (2603:10a6:20b:5d9:cafe::bd) by AS4P191CA0023.outlook.office365.com
 (2603:10a6:20b:5d9::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.27 via Frontend
 Transport; Wed, 4 Sep 2024 07:39:20 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.154.180.224)
 smtp.mailfrom=csir.co.za; dkim=fail (body hash did not verify)
 header.d=csircoza.onmicrosoft.com;dmarc=pass action=none
 header.from=csir.co.za;
Received-SPF: Pass (protection.outlook.com: domain of csir.co.za designates
 198.154.180.224 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.154.180.224; helo=mfod-euw1.prod.hydra.sophos.com; pr=C
Received: from mfod-euw1.prod.hydra.sophos.com (198.154.180.224) by
 AM3PEPF0000A79A.mail.protection.outlook.com (10.167.16.105) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7918.13 via Frontend Transport; Wed, 4 Sep 2024 07:39:20 +0000
Received: from ip-172-19-1-224.eu-west-1.compute.internal (ip-172-19-1-224.eu-west-1.compute.internal [127.0.0.1])
	by mfod-euw1.prod.hydra.sophos.com (Postfix) with ESMTP id 4WzDs34tcRzCrVf
	for <speakup@linux-speakup.org>; Wed,  4 Sep 2024 07:39:19 +0000 (UTC)
X-Sophos-Product-Type: Mailflow
X-Sophos-Email-ID: c3815f1f2da346b8a0695720006d9476
Received: from CT2P275CU008.outbound.protection.outlook.com
 (mail-southafricawestazlp17011029.outbound.protection.outlook.com
 [40.93.75.29])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mf-outbound-eu-west-1.prod.hydra.sophos.com (Postfix) with ESMTPS id
 4WzDs11F0szCqjV; Wed,  4 Sep 2024 07:39:17 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=eJXMJiod4MvM7gv0Abc701/WumiS7svCEDR3Q1cg5QcORJSV778VzJ+qdY4oNUPV6j+EqqrlIlnBdJEEZxac+YLd+idy5VM2CVeKDxYD3ytwuS1Ow1nlRd9cx1uZG0/f2NwiL4z2VTNDXJErQwNRqL6KvjMhinmB9lU7CODxZ+v0Dk+swHZZdhPArBD+eu1YUKf5kARJExjcJQ+/s9oLH4y+tm1ug+tFja1dzvX7u+w0KywBCsfTNTlfDTEYu/eTFZMTEBpp4LMIpBSVJ0r4q9d7akTEjg/5rYN3iAcRsC/vHi2ZnnE0TkY5VrxKlUs8L14P9iwLxnLDIH6kxU2K7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1QOxAVtpFKGhxL6Z7JirXSF6p1+hILHw/LiIOC/gcjg=;
 b=PSfLW59ZfnMvxsiKG5mnSsP5Bx7yv9zxPJSRM/z7jVJQRnBd9AVF6n/P+NKUd9pnYW54Yto5UeIeFjmDghca/J4Iee3kt0xUo0tg7YEGCGj6KFSsPUkuWZAkw/nwNnvPyzIkgqWCfiPyXLD4le5eOS+ktFEcYRYFjq72YtTtKtkYVbW8pSXv9vghnT6JG6HYajDGDJ/ybeObOr4j8H1KehMsBxchCK/427Qb9QwbTY/EiOUiml4MRpDxBbMDNJTFfFSreQofWuwF08hXpgR0Lw1pH+UtErCN9FVWRzJB8nrHsXu2bazkJR1KWYyVgKKp3TnSCN5jwcfYLLNYz54gKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=csir.co.za; dmarc=pass action=none header.from=csir.co.za;
 dkim=pass header.d=csir.co.za; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=csircoza.onmicrosoft.com; s=selector2-csircoza-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1QOxAVtpFKGhxL6Z7JirXSF6p1+hILHw/LiIOC/gcjg=;
 b=OAhM0QoYhkfHNzkM0TYJv7MVuabnM+RpeMiHmyqJn2bJLNvUjTV3s5pRb9v2dgn/gWatpwxY9dhv8pde+KFmWVQygSwtVBYttsHKfMgOSNii9wC/VAWICUBG7LwUMeFFI83dPTP23gYAwjRnaCtmR55NyA610iocsMn/v9+ARtc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1725435552; 
 s=v1; d=mail-dkim-eu-west-1.prod.hydra.sophos.com;
 h=Content-Type:Subject:cc:To:From:Date;
 bh=1QOxAVtpFKGhxL6Z7JirXSF6p1+hILHw/LiIOC/gcjg=;
 b=PUZdLdxq49n930C+w6abnyBL2w04NY6Ou/g3SnfLvXWc308W5NmUUECMsbK6QNqt
 BIKC0af7BPHpe+gbNZhPuKJiQJrG6TgzloHHLCiEQGfR67jsknhmavbWAHCA2s1s/qA
 uq8ivxXcojQX4SQgxQ1OrGtIhJg6mHGYzXsqy52cZVxNgvPy2dokelglUtLcn95aBzS
 BzZdhfGI4/Z2qZYmADMOnV6ao0VxoNT1MGnaWgO2ITpA5XAucp5NBj1rGRk4A2q3t3Z
 9ljT6tnHrsoAmdiw0KBkkgA6y58wp63uSdzz1kZdrOOGQ4Vv8Tv6dSdbCNsSJdlml9C
 k4MO+v+KNg==
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=csir.co.za;
Received: from JN3P275MB2310.ZAFP275.PROD.OUTLOOK.COM (2603:1086:0:af::11) by
 JN1P275MB0396.ZAFP275.PROD.OUTLOOK.COM (2603:1086:0:c::11) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7918.27; Wed, 4 Sep 2024 07:39:12 +0000
Received: from JN3P275MB2310.ZAFP275.PROD.OUTLOOK.COM
 ([fe80::5a5:5b4:7ba0:2b32]) by JN3P275MB2310.ZAFP275.PROD.OUTLOOK.COM
 ([fe80::5a5:5b4:7ba0:2b32%4]) with mapi id 15.20.7918.024; Wed, 4 Sep 2024
 07:39:12 +0000
Date: Wed, 4 Sep 2024 09:39:12 +0200 (SAST)
From: Willem van der Walt <wvdwalt@csir.co.za>
To: Martin McCormick <martin.m@suddenlink.net>
cc: speakup@linux-speakup.org
Subject: Re: SPFUNSUPPORTED MAY BE MALICIOUS Re: SPFUNSUPPORTED MAY BE
 MALICIOUS CLI Terminals with Speakup (Was howto run speakup/orca concurrently
 in ubuntu)
In-Reply-To: <E1slZoq-0004cu-22@wb5agz>
Message-ID: <9d81f31f-d81d-975f-d962-8dec59455583@csir.co.za>
References: <ZoieyBFD0TXlL_bd@cudneys.ca> <ZojtZ3RQxdiZaMN1@gregn.net>
 <E1sl62C-0002oX-0Y@wb5agz> <b47611eb-67aa-5c99-07b8-3b31b4168e67@csir.co.za>
 <e7b27ee1-63bd-430c-8d66-d6dc9e9829ec@math.wisc.edu>
 <E1slBYr-0003js-0w@wb5agz> <cb2e836c-c6ce-aa54-a752-3a0d56126c7a@reisers.ca>
 <8aaba50a-94aa-4171-afa0-71530ea1290c@jasonjgw.net> <E1slFDa-0001Hb-0R@wb5agz>
 <Zta33F80vCUd8tBU@titan> <E1slZoq-0004cu-22@wb5agz>
Content-Type: text/plain; charset=US-ASCII; format=flowed
X-ClientProxiedBy: JNAP275CA0065.ZAFP275.PROD.OUTLOOK.COM (2603:1086:0:4f::7)
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
	JN3P275MB2310:EE_|JN1P275MB0396:EE_|AM3PEPF0000A79A:EE_|CP7P275MB2073:EE_
X-MS-Office365-Filtering-Correlation-Id: e4fd6042-4d46-4b09-06ef-08dcccb4b025
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info-Original:
 =?us-ascii?Q?1sOd3Q1OKGqR3uAQpNlANmxLoFJH/3OXVK/pk3oaELZpp0V0UipE+4GoazKL?=
 =?us-ascii?Q?FFZhJHbOlMb5O2cYg7ItdhEoFrg3hXAk9oSJQM0gzgdG3QsQXPAHw/mxNGM5?=
 =?us-ascii?Q?3ki1fV6lPE9fCDJw8ZZG+0Lhw7mHA1rsYCrEOOEf9V4GrPOVgRNer+b5gzB2?=
 =?us-ascii?Q?Fie8PQF+BMozKMsmC6g3LR+VGw8r1zkhhCEDYZO4z2buHYDeUhmLYbQeH85o?=
 =?us-ascii?Q?VABfrVB9638PBecyCJP8abflQFPVlpGrp+rdSPASSiApvVm/ZISuUdvmtgJW?=
 =?us-ascii?Q?Q3HCPS1xZl0l+2Vb+WY1xc1IUAT5C2qG3+9+bz8COJiiSlx8OkPEhWhnVN75?=
 =?us-ascii?Q?Em0j3b83GoWF/xMauqS9ERM+DRJ+n/dD+ZDVVOWFVFpEm99Nu5IjxB117gAr?=
 =?us-ascii?Q?cv2pU8TnBKuhwttCweM1xAmkEIwOJb297dEUwC5jxRMwEbzhpeoeeR5DtiUQ?=
 =?us-ascii?Q?K5WXGrMig+OLeplHuZZaHrMiu9f5qqby5gijqXKtXJcxBPBsngjV4RfazWhO?=
 =?us-ascii?Q?2M6E6vyZNar6VIbfHGH2m69mbSyGiWlNrvNwOzYbAUMA5rDsNwMjAWG9VAqr?=
 =?us-ascii?Q?ctxJYVICTLyJYZlA3BznT5mP15xCbpggONlz0Ws0wNVXrAKeSZebIkbQq7gq?=
 =?us-ascii?Q?sVhnovZHmiGlxYDTKuHIDdOPIL42q6yzRB4v/pIZx41PPeItiJDmP0CYjyTL?=
 =?us-ascii?Q?NKXC1+8oKreXC8DstLIC3w53C3E6KJg12zfkykdYMOcVdYMJB6JwD6HALt0N?=
 =?us-ascii?Q?FF1MbjNCzmIDRhbeWPypzKTy5sWQmlTUxsjpztE9oCvUepXuTFe0XBPMESQt?=
 =?us-ascii?Q?6VYBkGzdHnnH8hc/3SB0AYNf64k93DOSHyXhm/s5ZyFx+uA0fKQjpy6G4tM8?=
 =?us-ascii?Q?o+U7T8XyeTTBOM+cPiZ4eho5RZhOfg8uP9qmhiQjoNEGFqIGyjqeD6tZHXnK?=
 =?us-ascii?Q?w59Zeu00MSONNK054GO7bflTKMs6O+F1YywdsJjROIoru5Lmw0o3LeOtN4bS?=
 =?us-ascii?Q?vOL+8ATEBULaQiZvKQCvxwZwwD60poT6+wmo0ZiKREnUSgmhdFscjxk5K7/1?=
 =?us-ascii?Q?7sLNv3ruCP4FV8LbWJItpBCBoTxAKGI5/Vv0IXSpip5BBSHCxJ43mInyl6k3?=
 =?us-ascii?Q?5ad3iTTPSsYVKMyJ7Vu3ih59xOicNW8p7hQNPhSwFDrPKLPrtRK3dtd3eRHh?=
 =?us-ascii?Q?upWsyURaIeVd0jWmEhHMuTWoLs58Gp1MSxq4I/bb6Z8AO9iySkgDJgpFlW/a?=
 =?us-ascii?Q?KZ+S+1E+3WdTV3gsNztF3/J6b6plpCIaXCHXPdnIJ/BoBStd2crVxRldgfgA?=
 =?us-ascii?Q?0D8Q1B8m1uJQKHmaneqBX+66Z9ESPhi2ccI5UgnDYsiNmw=3D=3D?=
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255; CTRY:; LANG:en;
 SCL:1; SRV:; IPV:NLI; SFV:NSPM; H:JN3P275MB2310.ZAFP275.PROD.OUTLOOK.COM;
 PTR:; CAT:NONE; SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT;
 SFP:1102; 
X-MS-Exchange-Transport-CrossTenantHeadersStamped: JN1P275MB0396
X-Sophos-Email: [eu-west-1] Antispam-Engine: 6.0.0,
 AntispamData: 2024.9.4.70616
X-LASED-From-ReplyTo-Diff: From:<csir.co.za>:0
X-LASED-SpamProbability: 0.083173
X-LASED-Hits: ARCAUTH_PASSED 0.000000, BODYTEXTP_SIZE_3000_LESS 0.000000,
 BODY_SIZE_2000_2999 0.000000, BODY_SIZE_5000_LESS 0.000000,
 BODY_SIZE_7000_LESS 0.000000, DKIM_SIGNATURE 0.000000,
 FROM_NAME_PHRASE 0.000000, HTML_00_01 0.050000, HTML_00_10 0.050000,
 IN_REP_TO 0.000000, LEGITIMATE_SIGNS 0.000000,
 MSGID_SAMEAS_FROM_HEX_844412 0.100000, MSG_THREAD 0.000000,
 MULTIPLE_REAL_RCPTS 0.000000, NO_CTA_URI_FOUND 0.000000,
 NO_FUR_HEADER 0.000000, NO_URI_HTTPS 0.000000, OUTBOUND 0.000000,
 OUTBOUND_SOPHOS 0.000000, REFERENCES 0.000000, SUSP_DH_NEG 0.000000,
 __ANY_URI 0.000000, __ARCAUTH_DKIM_PASSED 0.000000,
 __ARCAUTH_DMARC_PASSED 0.000000, __ARCAUTH_PASSED 0.000000,
 __ARC_SEAL_MICROSOFT 0.000000, __ARC_SIGNATURE_MICROSOFT 0.000000,
 __BODY_NO_MAILTO 0.000000, __BOUNCE_CHALLENGE_SUBJ 0.000000,
 __BOUNCE_NDR_SUBJ_EXEMPT 0.000000, __BULK_NEGATE 0.000000, __CT 0.000000,
 __CT_TEXT_PLAIN 0.000000, __DC_PHRASE 0.000000, __DQ_NEG_DOMAIN 0.000000,
 __DQ_NEG_HEUR 0.000000, __DQ_NEG_IP 0.000000, __FORWARDED_MSG 0.000000,
 __FRAUD_NEGATE 0.000000, __FRAUD_NEGATE_FROM 0.000000,
 __FRAUD_URGENCY 0.000000, __FROM_ADDY_SHORT_LC 0.000000,
 __FROM_DOMAIN_NOT_IN_BODY 0.000000, __FROM_NAME_NOT_IN_BODY 0.000000,
 __FUR_RDNS_SOPHOS 0.000000, __HAS_CC_HDR 0.000000, __HAS_FROM 0.000000,
 __HAS_MSGID 0.000000, __HAS_REFERENCES 0.000000, __HAS_X_FF_ASR 0.000000,
 __HAS_X_FF_ASR_CAT 0.000000, __HAS_X_FF_ASR_SFV 0.000000,
 __IMP_FROM_MY_ORG 0.000000, __INT_PROD_COMP 0.000000,
 __INVOICE_MULTILINGUAL 0.000000, __IN_REP_TO 0.000000,
 __JSON_HAS_SCHEMA_VERSION 0.000000, __JSON_HAS_TENANT_DOMAINS 0.000000,
 __JSON_HAS_TENANT_ID 0.000000, __JSON_HAS_TENANT_SCHEMA_VERSION 0.000000,
 __JSON_HAS_TRACKING_ID 0.000000, __KNOWN_SPAMMER_ADDRESS_2 0.000000,
 __MIME_BOUND_CHARSET 0.000000, __MIME_TEXT_ONLY 0.000000,
 __MIME_TEXT_P 0.000000, __MIME_TEXT_P1 0.000000, __MIME_VERSION 0.000000,
 __MSGID_HEX_844412 0.000000, __NO_HTML_TAG_RAW 0.000000,
 __OUTBOUND_SOPHOS_FUR 0.000000, __OUTBOUND_SOPHOS_FUR_IP 0.000000,
 __OUTBOUND_SOPHOS_FUR_RDNS 0.000000, __REFERENCES 0.000000,
 __SANE_MSGID 0.000000, __SCAN_D_NEG 0.000000, __SCAN_D_NEG2 0.000000,
 __SCAN_D_NEG_HEUR 0.000000, __SCAN_D_NEG_HEUR2 0.000000,
 __SUBJ_ALPHA_NEGATE 0.000000, __SUBJ_REPLY 0.000000, __TO_MALFORMED_2 0.000000,
 __TO_NAME 0.000000, __TO_NAME_DIFF_FROM_ACC 0.000000, __TO_REAL_NAMES 0.000000,
 __URI_MAILTO 0.000000, __URI_NO_WWW 0.000000, __URI_NS 0.000000,
 __X_FF_ASR_SCL_NSP 0.000000, __X_FF_ASR_SFV_NSPM 0.000000
X-LASED-Impersonation: False
X-LASED-Spam: NonSpam
X-Sophos-Mailflow-Processing-Id: 4384676be28e4594b28d712d63a9f449
X-Sophos-MH-Mail-Info-Key: NFd6RHMzNHRjUnpDclZmLTE3Mi4xOS4xLjIyNA==
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped:
 AM3PEPF0000A79A.eurprd04.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs:
	d5f32d68-6fe0-47f3-9d6f-08dcccb4abb4
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|36860700013|82310400026|35042699022|376014;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?cq6Valq0KjDu7WORLzicxjD4NB0piFtk6l0s3P3uggJlUukG9tN3lB1VjXxo?=
 =?us-ascii?Q?muH0DTzIsrZwvs589ChUnOI8cz7LfiPNVDH2Amg4e+udW7w3l0Go1VSVav+j?=
 =?us-ascii?Q?lVDnk2RRvsTskFTVTCHucVddTnbh73DiA3MnEWJzPEiKzmC4kh/1X0LqjvWG?=
 =?us-ascii?Q?ch3uYmuCTNdSUSXOugNSu5scBa0zx0BS2104lWCB+BrsiUfN3Vn4S5b8A1HQ?=
 =?us-ascii?Q?FWPPy4d19hGj/pAuHEUj2/19pUuaRJiNlBGVx16F1DBFKtCAlk6/KkHMd2o4?=
 =?us-ascii?Q?ZubLQ5Wo1+trj111fGRcSMepsUR6KLXXm7P0SQSz3d+yScu2xlta6VaQzKOD?=
 =?us-ascii?Q?vvWK9/1ZH1VaP8dhg6o6XI1WD9f8/FqL4hJ4vSYyykWcyUGchfvQLuuikff+?=
 =?us-ascii?Q?kqPoMlTVpXeQoHaTuXF7RBIrPfDFb4zcq7oGY/HqiYqfixV+t/Wb/TpUAs3u?=
 =?us-ascii?Q?0JtJEta6711qVFyZ2UomezaJsh+4IXD7w3mmZjjH1EkHbmMbt+1PoJrCvPFg?=
 =?us-ascii?Q?cWb+6teHUFUBLsMhvb70/Sl63Dk8ttfQuNlaePUaBA54n/uKjMRXxenBDQOk?=
 =?us-ascii?Q?0d0LfD/R5VOL5p+vsr2hzD+YmM0e3OhCGq9Bj1Jn6KnlYnY5MS/kcZvjWyB6?=
 =?us-ascii?Q?WufCu/q2iQNaoAyLyeW9kbrGm3TtG+/4GjQ4KD5ZAZIDUjPMfdW3ZDLmWgnC?=
 =?us-ascii?Q?iOgsmrCL3FxlEMNspMq0xBzOprj46dWb1LzasM2+OAZZGMCczfOkD63XxgXX?=
 =?us-ascii?Q?lWaCRpOjbu+wMzLWg/7DAGasiZFwwJv9Q8KZZPau5JTt+VqpdtWQAbHUfw/f?=
 =?us-ascii?Q?IZSpjGfddvImLfKK1+3hH9IWGNef/tsPUIOG0Xz4wysxnHn0zFu3/J8MoFth?=
 =?us-ascii?Q?pI1qYbZNvkreDaqh3deeegQmwLSxkTGdPywK5TdpIlhJ18OQGPXk85HI5/9e?=
 =?us-ascii?Q?/O5MO2Xm+bY4Lm/s3VFS9nChev5WLw3GDQAtf8hF0FX5cX1O1IuU4GKdH0yQ?=
 =?us-ascii?Q?AJ7q/o3HoKDINMQzWIwzH48FhAZomI7n4Y7KU2YAJ8453JZrvFhmu8N/j+u/?=
 =?us-ascii?Q?yvP2IZtNoUGhnQWcuxIzmtWhfgAjK06/Fl+9HCfUIHvX0qy7UPKPGjlvznhY?=
 =?us-ascii?Q?/b6lTQw4pfLGjcYq6NmSGP7c2e18Z5gBS4kD9FsozOOxJc8Kk9ST11zLYqPu?=
 =?us-ascii?Q?aQpF+qAAYhc/T4odCY8SmLO7cLvTaWSGpGilMUiMsj5NmMdzjgtHv+NMkbyg?=
 =?us-ascii?Q?nIJ0QVD3NmcmcoNijUngnkj6CAIyIhk9cN5tgCh/d23fCK62zLhUpkDoORLv?=
 =?us-ascii?Q?t3pJSEEu6CO2KbgeYa2isH0daj3TYQXldg04JYMiDAKQOsknT1/ftyoP6IS2?=
 =?us-ascii?Q?8UTRFVZC/lYuzst/hhDf7mIdpHmJFdvZwrK28Vp4xzjdFVh+2hn7LvLw8+Xd?=
 =?us-ascii?Q?XBN/PbSMtjDTEWqf5jdZeFZy1YXmSkLy?=
X-Forefront-Antispam-Report:
	CIP:198.154.180.224;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mfod-euw1.prod.hydra.sophos.com;PTR:mfod-euw1.prod.hydra.sophos.com;CAT:NONE;SFS:(13230040)(1800799024)(36860700013)(82310400026)(35042699022)(376014);DIR:OUT;SFP:1102;
X-OriginatorOrg: csir.co.za
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Sep 2024 07:39:20.0226
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: e4fd6042-4d46-4b09-06ef-08dcccb4b025
X-MS-Exchange-CrossTenant-Id: 2fd3c5d5-ddb2-4ed3-9803-f89675928df4
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=2fd3c5d5-ddb2-4ed3-9803-f89675928df4;Ip=[198.154.180.224];Helo=[mfod-euw1.prod.hydra.sophos.com]
X-MS-Exchange-CrossTenant-AuthSource:
	AM3PEPF0000A79A.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CP7P275MB2073
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi Martin,
What happens when you run spd-say hello from tty3/4/5 after having logged 
in blindly?
If it says hello, you know your speech-dispatcher can talk.
>From the same terminal, what happens when you run espeakup?
In a gui terminal, first check if espeakup is installed with which 
espeakup.
HTH, Willem


On Tue, 3 Sep 2024, Martin McCormick wrote:

> Jookia <contact@jookia.org> writes:
>> Did you try my guide?
> Jookia <contact@jookia.org> writes:
>> Did you try my guide?
>
> 	Yes and it is well written but it doesn't quite address
> what I hope to do since this is not a multi-user system so I will
> describe things differently and see if I do a better job of it.
>
> 	What one gets if we install gnome and orca are 2 talking
> GUI consoles which, in earlier days, we would have given our
> dominant hands to have as they enabled us to get graphical access
> to browsers like firefox and a few other similar browsers plus other
> applications that use X.
>
> 	In not so long ago times, we might have installed Linux
> and speakup and gotten good access to the command-line world of
> vi and lynx, etc.
>
> 	If one installs gnome desktop now, we can run orca and
> get two virtual consoles that talk.  There are 3 more consoles,
> however, that are not GUI consoles but are non-graphical consoles
> like the days of yore.
>
> 	They presently do not talk at all and it would be really
> nice if they did because access to such applications as vi and
> non-GUI terminals on remote systems feels a little odd when run
> through the mate terminal.  In vi, for example, I have had vi
> stop echoing properly which makes it hard to detect one's typos
> as smoothly as one would like.
>
> 	In other words, the old stuff was better at times than
> what one gets in a graphical console.
>
> 	I want the 3 remaining consoles to have speakup which is
> like speakup is on non-GUI systems but I don't dislike the
> speakup on the GUI consoles.  It's just different enough that
> having access to both would be best.
>
> 	The ideal configuration would be that virtual consoles 1
> and 2 speak as they already do but virtual consoles 3, 4 and 5
> would behave like the older non-graphical terminals.
>
> 	On a non-GUI system, all the virtual consoles can talk.
> One hears the name of the console when first activating it as it
> presents a login prompt and one logs in and can go back and forth
> between the first console and the others, depending on which ones
> are active.
>
> 	That is what this whole discussion is about.
>
> Martin
>
>

