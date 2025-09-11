Return-Path: <speakup+bounces-1326-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id B0DBBB52B48
	for <lists+speakup@lfdr.de>; Thu, 11 Sep 2025 10:12:30 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=csircoza.onmicrosoft.com header.i=@csircoza.onmicrosoft.com header.a=rsa-sha256 header.s=selector2-csircoza-onmicrosoft-com header.b=Wugbr/kH;
	dkim=pass (1024-bit key) header.d=csircoza.onmicrosoft.com header.i=@csircoza.onmicrosoft.com header.a=rsa-sha256 header.s=selector2-csircoza-onmicrosoft-com header.b=Wugbr/kH;
	dkim=pass (2048-bit key; unprotected) header.d=mail-dkim-eu-west-1.prod.hydra.sophos.com header.i=@mail-dkim-eu-west-1.prod.hydra.sophos.com header.a=rsa-sha256 header.s=v1 header.b=OKPOpddr;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 53420382ABC; Thu, 11 Sep 2025 04:12:19 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 2F828382185
	for <lists+speakup@lfdr.de>; Thu, 11 Sep 2025 04:12:19 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 9D46738218F; Thu, 11 Sep 2025 04:12:11 -0400 (EDT)
Received: from CT2P275CU009.outbound.protection.outlook.com (mail-southafricawestazon11020073.outbound.protection.outlook.com [52.101.163.73])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 7785A382122
	for <speakup@linux-speakup.org>; Thu, 11 Sep 2025 04:12:08 -0400 (EDT)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=pass;
 b=iaKt5AocEYTdipNV4QfyOGge0EBUDlgu4st+qLe+VA9ik5tLmLfrPLYOnmj1RicICTPeLcryQ+EWGr0ia5WAl2+F0Gv++YRDZ+7xjEmeK1QYLWxPL+3SrPbI9ic4i8RTnOJKSUktO9F28uOwU088cOCfIGKfq9ApWUK41K63YHpHG83vNwt7a6jTSF0fs1K7xV5L40ySSTWY5Z2QCMt6VinOZ+VhXficYZGjicxtzI7WL2IQG1eAMoqaoHGQuYJkEQA2INaK3D9kTlv+3+TCs8yMSPVuXZkpGgub5Tk9DR8qqPJA0rhldjDErpVumS7uzPeLzodzr44NXXxQl8c0sg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6enqxbeIOGNjcLhzWYsNJCEok3zJuBd8U4MW+ngadIQ=;
 b=enywM0+EYu+686t5hQ6lCRRzFuwXYRHhakY6yVISdjm7Z36W3PZha6srcV20QGDjc9eHBuxv6TF8J/oBDZtFF7goXdfVZwP8E0n2lGCG8vT1LeoX64PqQQ+GYRgf9LJgxIlPHcD2x7Qik/co+pcTh4w62ROqwSG79WbdCOCX5AyfTU/fX50QsKCEPj3onp6NAsdKGuZpovkD7/jgqewdIIpRZazIANrd8ZJIW1roOuvTlM0VxSJBzuT3vG9qOT0APeaXXF2LSpDB6Cayqm2HmiXu8qfV17Hel3/29BqvK2BleWr0qF6OEkQSLGU4+Wmg6wUtxyJxrkUMR3/cTjYuxg==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 198.154.180.224) smtp.rcpttodomain=linux-speakup.org
 smtp.mailfrom=csir.co.za; dmarc=pass (p=none sp=none pct=100) action=none
 header.from=csir.co.za; dkim=pass (signature was verified)
 header.d=csircoza.onmicrosoft.com; dkim=pass (signature was verified)
 header.d=mail-dkim-eu-west-1.prod.hydra.sophos.com; arc=pass (0 oda=1 ltdi=1
 spf=[1,1,smtp.mailfrom=csir.co.za] dkim=[1,1,header.d=csir.co.za]
 dmarc=[1,1,header.from=csir.co.za])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=csircoza.onmicrosoft.com; s=selector2-csircoza-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6enqxbeIOGNjcLhzWYsNJCEok3zJuBd8U4MW+ngadIQ=;
 b=Wugbr/kHoT2cL7RtxCBzT7n0mK9ELVKkofqSpu9YKYLk+kgDkr5FKp8OqM7gT3mleOFYl2lBTMttaPFcZ8FLfIoeRhycWbd49iLJKn5sxOslAVifsWgpZ+vn9LM1IbFZmhyJZknZoXTbU4+C+Uqzu1Jxd8YfbkAf/f17f8RubyU=
Received: from JNXP275CA0022.ZAFP275.PROD.OUTLOOK.COM (2603:1086:0:19::34) by
 CT2P275MB1147.ZAFP275.PROD.OUTLOOK.COM (2603:1086:100:2a::6) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9094.22; Thu, 11 Sep 2025 08:11:40 +0000
Received: from JN1PEPF00001EDB.ZAFP275.PROD.OUTLOOK.COM
 (2603:1086:0:19:cafe::7d) by JNXP275CA0022.outlook.office365.com
 (2603:1086:0:19::34) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9115.15 via Frontend Transport; Thu,
 11 Sep 2025 08:11:40 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.154.180.224)
 smtp.mailfrom=csir.co.za; dkim=pass (signature was verified)
 header.d=csircoza.onmicrosoft.com;dkim=pass (signature was verified)
 header.d=mail-dkim-eu-west-1.prod.hydra.sophos.com;dmarc=pass action=none
 header.from=csir.co.za;
Received-SPF: Pass (protection.outlook.com: domain of csir.co.za designates
 198.154.180.224 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.154.180.224; helo=mfod-euw1.prod.hydra.sophos.com; pr=C
Received: from mfod-euw1.prod.hydra.sophos.com (198.154.180.224) by
 JN1PEPF00001EDB.mail.protection.outlook.com (10.167.240.20) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9115.13 via Frontend Transport; Thu, 11 Sep 2025 08:11:38 +0000
Received: from ip-172-19-2-198.eu-west-1.compute.internal (ip-172-19-2-198.eu-west-1.compute.internal [127.0.0.1])
	by mfod-euw1.prod.hydra.sophos.com (Postfix) with ESMTP id 4cMqyc6wVGzKnHh
	for <speakup@linux-speakup.org>; Thu, 11 Sep 2025 08:11:36 +0000 (UTC)
X-Sophos-Product-Type: Mailflow
X-Sophos-Email-ID: e22612b3b9d44455a2b90a3beaed7d31
Received: from CT2P275CU008.outbound.protection.outlook.com
 (mail-southafricawestazon11021093.outbound.protection.outlook.com
 [40.107.145.93])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mf-outbound-eu-west-1.prod.hydra.sophos.com (Postfix) with ESMTPS id
 4cMqyb2w49z3wZ9
 for <speakup@linux-speakup.org>; Thu, 11 Sep 2025 08:11:35 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MZyfUXlwmG+FROE12hUgpYKPdNTBaA4WWYf/heEv9KSpToCPTFOEvrYvGid82zY17xgE0MCrI+PRKixQmvjm8wA5vqmojjjL73ugCzB81Ss8A0Dw5HE1eaPv23CdodEJjJhQsWmM14uzJ+5dd6V2cKfN6fALyv5RvysgWCcVyHOYDkHeJPsFZYtP+vcj3gsS5F0/tEZSDGc2YN7wmThqXHxkOAJiwBzNJdwpMHp6R/jRUKr6cQNYb/w5J1pKP8/OhYDXSCa2x0nZYbg78O9ZlXb3yDBx29+VxxWPqn65Y/u8XxjSaxLE+JBfydjInexzfHQXtr1om6y1d1PeOHgWwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6enqxbeIOGNjcLhzWYsNJCEok3zJuBd8U4MW+ngadIQ=;
 b=TkG904guzl5rL3pnP4mBp4UqITfzU86PhDVoFegtEpDG8zETAXGf/uMkGM4IiChy/xmfJ1guxJnSQfJQXeLPXq2Wlielx7hXkqhhs0bf4vkvQBoJ/+wr3ZZBGrR8H/fd1paItNPkbbGhA37qBePupJbcrB3EEPGDXxdxR5QCNjvXTuycrdTLrJX5INizLODESr+eLdjL7Kih4DM6vOK41NqCkaVN/M1Z3H0lvABjZOP4yUsHp+ynJYIKsGz03YBKvbeF5DrE54v68VWIkHOENvsRnlC/ZuKAF4nULmQzwymfj0C4hBqIBcKT0oTPTdaozv2RSOf4CFbtCa3bnb7ZFg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=csir.co.za; dmarc=pass action=none header.from=csir.co.za;
 dkim=pass header.d=csir.co.za; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=csircoza.onmicrosoft.com; s=selector2-csircoza-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6enqxbeIOGNjcLhzWYsNJCEok3zJuBd8U4MW+ngadIQ=;
 b=Wugbr/kHoT2cL7RtxCBzT7n0mK9ELVKkofqSpu9YKYLk+kgDkr5FKp8OqM7gT3mleOFYl2lBTMttaPFcZ8FLfIoeRhycWbd49iLJKn5sxOslAVifsWgpZ+vn9LM1IbFZmhyJZknZoXTbU4+C+Uqzu1Jxd8YfbkAf/f17f8RubyU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1757578291; 
 s=v1; d=mail-dkim-eu-west-1.prod.hydra.sophos.com;
 h=Content-Type:Subject:cc:From:Date;
 bh=6enqxbeIOGNjcLhzWYsNJCEok3zJuBd8U4MW+ngadIQ=;
 b=OKPOpddr2Nc7EDgA1QbfRNKeBD9gHIWxhqf+fdyDp04NtVVZpaSHHLhOI9VwUKyA
 64RgVIwY1+Zm6duQp7Q60lvJNDXCvp7LnTXkAqARLrwrQFrxgRz7IGNvLsEMX90iwai
 AGgeVIbf2BR7ne6ZEgrVpMm3/bWZS/kaLc72RUC41XNVPV9K2hpSWksA06opGfCLIrd
 dLOYgDzo9SBcT+tckEjIHq4T5aiN7X3BBh0MHgc0ylpWUU+RdxDF1YPm3rYb4thM1mt
 aOANOk90hbxEOAr4wgEbarAqVGHZ0dwp1KSoq8lkA8YjMoUlfxQkPWFg33xA41O1BO4
 FvaTmEAFIQ==
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=csir.co.za;
Received: from JN3P275MB2310.ZAFP275.PROD.OUTLOOK.COM (2603:1086:0:af::11) by
 JN4P275MB2828.ZAFP275.PROD.OUTLOOK.COM (2603:1086:0:b4::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9094.22; Thu, 11 Sep 2025 08:11:31 +0000
Received: from JN3P275MB2310.ZAFP275.PROD.OUTLOOK.COM
 ([fe80::5a5:5b4:7ba0:2b32]) by JN3P275MB2310.ZAFP275.PROD.OUTLOOK.COM
 ([fe80::5a5:5b4:7ba0:2b32%5]) with mapi id 15.20.9094.021; Thu, 11 Sep 2025
 08:11:31 +0000
Date: Thu, 11 Sep 2025 10:11:31 +0200 (SAST)
From: Willem van der Walt <wvdwalt@csir.co.za>
cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: "your browser is not supported anymore" both lynx and elinks, what
 now?
Message-ID: <f2b8f3d0-eb0d-8426-09e2-1afce33c713c@csir.co.za>
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-ClientProxiedBy: JN3P275CA0133.ZAFP275.PROD.OUTLOOK.COM (2603:1086:0:d0::15)
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
	JN3P275MB2310:EE_|JN4P275MB2828:EE_|JN1PEPF00001EDB:EE_|CT2P275MB1147:EE_
X-MS-Office365-Filtering-Correlation-Id: f7d1e6bf-c2c3-45e3-05eb-08ddf10ad5a8
X-MS-Exchange-AtpMessageProperties: SA
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info-Original:
 =?us-ascii?Q?9FFiiGgNxhIZ0Zi50LJVIsx5ln7XhS7RrTdRkEt5vrr3bvfH8jNUcgsqmis7?=
 =?us-ascii?Q?x/WmVaMRAIQQ93WyymO+vvvLEp84L8IOcst38Xd8HEeJac1SQaB/+QNhCHqH?=
 =?us-ascii?Q?yetiiPTqgHH283WJnzYYCx2/DXa/tO6bffdyDc4YikKwn0wgwMftYLwu0eF2?=
 =?us-ascii?Q?8BJfSUB8V4L0xE2ePpMVN3PnTJL/eAoTMT+y12I1WcbPfiBMNyR9Mq8x3b0U?=
 =?us-ascii?Q?cqpXUBTVTQnhahbWa0hJgCZ6zNAZa1P63oNQ8H4yfZgAu8baJejatpkVqhFT?=
 =?us-ascii?Q?oB85NezUWdXyKwqfLYHYZ8BVlUjidQOwE6666aEvCcQCrZ1Un7akrfNjQacr?=
 =?us-ascii?Q?GefbVkCLITQmDV2zfpC7PakoKkM86GC1AqG/L7xf3N5EVjDgCqDPt98N521w?=
 =?us-ascii?Q?WqC6maOWcgx56MMBx33fFQosMOREdQBFyPKYLMvM0NFPzJ0fIMsDdlkOr+1x?=
 =?us-ascii?Q?1iysCnLGCyqm2wmOf2SYzTX57frU7PbscPDzgecXJgo9RojqbnZi+2JjE+Tp?=
 =?us-ascii?Q?Ci1l3krxs0QMI8+kk0T/XurtlCS6KP9nMUUmTSaPR0za61YMRVPwuEJwL1li?=
 =?us-ascii?Q?zyXZACATSIBtTCIrEXPaklIsPIQlFhNjBks1LdFDvtizNsjKbJ2R43V0qZNo?=
 =?us-ascii?Q?0lT6iUeELntFT0iZGWgmjxrRoLBqY4sknQbKPYtMAzucqZ4v5X6GC6zERweD?=
 =?us-ascii?Q?5tAmBf858MGw7DLgFR48g6BDVMrj8zzisjFc6iENrYwhC8vTfKHTjp4n8X6C?=
 =?us-ascii?Q?YyvUsEcFsnIZlKxAlXE+grsIfJg2oH4jmJFt/jEgupWp1JSF8aqymMvg93Za?=
 =?us-ascii?Q?5hhdpDGeMvXqzF7VytreiLWaqpFVuzqg9x6As8kGBmjztN7hXvhGFAlld0zm?=
 =?us-ascii?Q?RLJNa48mzJPGD62rX9jpeKIVO5g9GudHg3cN0cDvFqvDDKaXGViz+fVNaDHz?=
 =?us-ascii?Q?oPFjU7qiyWtRCqP9m4tj2UNOo3uXm1l3rZbE9tI2jCj4IPWNel3UQoCuz4vt?=
 =?us-ascii?Q?HLWQHTFxMZCFvQ+8RNIzgPpZGCExQIEmkAeFTSy23jbVX4ttS0c+fI6evItR?=
 =?us-ascii?Q?wpVbGJp94353LmMFMDZH/CnjLM26wmULeDzHM9NQMK4LA/amufyrJLkVPb9c?=
 =?us-ascii?Q?12eN69A7o8Jx8hJFs4LwpULJdJs5DlT3WFI91yVQ2ssi19Y3wiqqs9ij5raw?=
 =?us-ascii?Q?+6/WKqBoErCk48//2SYypkRl1mjxnKpnRuZHsn7b0Tl73rO7ZmPuuibfO4DF?=
 =?us-ascii?Q?sJBVnNuPC6Owwn/SlDPkkRd1upxqcGUzsE3zDING0uKBvGm6uw4fTA7n4cV4?=
 =?us-ascii?Q?EyuZ7kXMRpOQ6pLoZoEprhYb/4LlqPJB+M+MPQknPqc5ZGQhPcF3Qf81RuIF?=
 =?us-ascii?Q?taeMbiJNSc0yc/2C8ecnHuZvgypw4WYrnaVPoG4lAOVOJ9/KWc2r9ugXZ8hg?=
 =?us-ascii?Q?FyUQjThzGcM=3D?=
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255; CTRY:; LANG:en;
 SCL:1; SRV:; IPV:NLI; SFV:NSPM; H:JN3P275MB2310.ZAFP275.PROD.OUTLOOK.COM;
 PTR:; CAT:NONE; SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT;
 SFP:1102; 
X-MS-Exchange-Transport-CrossTenantHeadersStamped: JN4P275MB2828
X-Sophos-Email: [eu-west-1] Antispam-Engine: 6.0.2,
 AntispamData: 2025.9.11.72719
X-LASED-SpamProbability: 0.083173
X-LASED-Hits: ARCAUTH_PASSED 0.000000, BODYTEXTP_SIZE_3000_LESS 0.000000,
 BODYTEXTP_SIZE_400_LESS 0.000000, BODY_SIZE_1000_LESS 0.000000,
 BODY_SIZE_2000_LESS 0.000000, BODY_SIZE_200_299 0.000000,
 BODY_SIZE_5000_LESS 0.000000, BODY_SIZE_7000_LESS 0.000000,
 DKIM_SIGNATURE 0.000000, FROM_NAME_PHRASE 0.000000, HTML_00_01 0.050000,
 HTML_00_10 0.050000, LEGITIMATE_SIGNS 0.000000, MISSING_HEADERS 0.000000,
 MSGID_SAMEAS_FROM_HEX_844412 0.100000, MULTIPLE_REAL_RCPTS 0.000000,
 NO_CTA_FOUND 0.000000, NO_CTA_URI_FOUND 0.000000, NO_FUR_HEADER 0.000000,
 NO_URI_FOUND 0.000000, NO_URI_HTTPS 0.000000, OUTBOUND 0.000000,
 OUTBOUND_SOPHOS 0.000000, SMALL_BODY 0.000000, SUSP_DH_NEG 0.000000,
 TO_MALFORMED 0.000000, TRANSACTIONAL 0.000000, __ARCAUTH_DKIM_PASSED 0.000000,
 __ARCAUTH_DMARC_PASSED 0.000000, __ARCAUTH_PASSED 0.000000,
 __ARC_SEAL_MICROSOFT 0.000000, __ARC_SIGNATURE_MICROSOFT 0.000000,
 __BODY_NO_MAILTO 0.000000, __BULK_NEGATE 0.000000, __CC_NAME 0.000000,
 __CC_NAME_DIFF_FROM_ACC 0.000000, __CC_REAL_NAMES 0.000000, __CT 0.000000,
 __CT_TEXT_PLAIN 0.000000, __DQ_NEG_DOMAIN 0.000000, __DQ_NEG_HEUR 0.000000,
 __DQ_NEG_IP 0.000000, __FRAUD_NEGATE 0.000000, __FRAUD_NEGATE_FROM 0.000000,
 __FROM_ADDY_SHORT_LC 0.000000, __FROM_DOMAIN_NOT_IN_BODY 0.000000,
 __FROM_NAME_NOT_IN_BODY 0.000000, __FUR_RDNS_SOPHOS 0.000000,
 __HAS_CC_HDR 0.000000, __HAS_FROM 0.000000, __HAS_MSGID 0.000000,
 __HAS_X_FF_ASR 0.000000, __HAS_X_FF_ASR_CAT 0.000000,
 __HAS_X_FF_ASR_SFV 0.000000, __IMP_FROM_MY_ORG 0.000000,
 __JSON_HAS_SCHEMA_VERSION 0.000000, __JSON_HAS_TENANT_DOMAINS 0.000000,
 __JSON_HAS_TENANT_ID 0.000000, __JSON_HAS_TENANT_SCHEMA_VERSION 0.000000,
 __JSON_HAS_TRACKING_ID 0.000000, __MIME_BOUND_CHARSET 0.000000,
 __MIME_TEXT_ONLY 0.000000, __MIME_TEXT_P 0.000000, __MIME_TEXT_P1 0.000000,
 __MIME_VERSION 0.000000, __MSGID_HEX_844412 0.000000,
 __NO_HTML_TAG_RAW 0.000000, __OUTBOUND_SOPHOS_FUR 0.000000,
 __OUTBOUND_SOPHOS_FUR_IP 0.000000, __OUTBOUND_SOPHOS_FUR_RDNS 0.000000,
 __PHISH_SPEAR_STRUCTURE_2 0.000000, __PHISH_SPEAR_SUBJ_TEAM 0.000000,
 __PRODUCT_TYPE_MAILFLOW 0.000000, __SANE_MSGID 0.000000,
 __SCAN_D_NEG2 0.000000, __SCAN_D_NEG_HEUR2 0.000000, __SEO_PHRASE 0.000000,
 __SUBJ_TRANSACTIONAL 0.000000, __SUBJ_TR_TASK_DONE 0.000000,
 __URI_NO_MAILTO 0.000000, __X_FF_ASR_SCL_NSP 0.000000,
 __X_FF_ASR_SFV_NSPM 0.000000
X-LASED-Impersonation: False
X-LASED-Spam: NonSpam
X-Sophos-Mailflow-Processing-Id: 9125e4429cd044c396a8665a4878281d
X-Sophos-MH-Mail-Info-Key: NGNNcXljNndWR3pLbkhoLTE3Mi4xOS4yLjE5OA==
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped:
 JN1PEPF00001EDB.ZAFP275.PROD.OUTLOOK.COM
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs:
	43565074-c91e-4961-c374-08ddf10ad114
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|36860700013|35042699022|1800799024|14060799003|82310400026|376014;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?d8x1o3cTAPDHBNs2kYZq+YstsJLut2TtjLHN2Ps8DTJRKlyj4Kl5xUx3abFo?=
 =?us-ascii?Q?k1OqvWYpf1LDl40OarZe0D0A5Dm7rMPuDhgVG1L7QkRf8KrMhWMNrHP87kjK?=
 =?us-ascii?Q?B4P/bnTUcTao4QDH2KV05U3T7x1mcZo9sdtopv7MBJ6E7Oy4wXFwvwa9Rv6i?=
 =?us-ascii?Q?ThdL349+wVjrY9HLKJDX2xdrWjZc8+ls2OC2TbfIPqSfzRePtlr282aL5rM7?=
 =?us-ascii?Q?Zo2Ys5IhFy4Jyc0LODpAdbvY4ssH7rZ7BrKYWUqdFlz8GjerDkt5m/4K/CMF?=
 =?us-ascii?Q?GDf7RMhkwFMwIJfx5+nwrrbwoWFpBRJOhyV/6GQGrdm+HZXMzv1Cs56JYcf5?=
 =?us-ascii?Q?bNqJiaALSDCqO+iJXIwLiY6SxZO8+4UKJbYDdSe1sFo5EC5JC9UgpohEPHAE?=
 =?us-ascii?Q?3v/y02MrswSMcrLjZ8J8h+dLrtpaNzBeOLHjQDS0RdC9X6OULWuTmQVwH6JU?=
 =?us-ascii?Q?DNxWOIb57WFvLo2L0i4JgrXkPyl7F1aqF5cPU27IaT9OvYQRajh6x44htjh8?=
 =?us-ascii?Q?aynTmWcEopPps2QZXjuNc+DBfE+TwvrjVySb+/RLk54sCnfLNpyKVZeaJxu5?=
 =?us-ascii?Q?KAL4I8M/exXFnhFxQkJVA08jbb/XyjGbPdwrxgMJDmMXYoTF/YAHrA65xwg7?=
 =?us-ascii?Q?ufKJxJjX7d169/h1BClmVCY1VO6n5Z9xlCiHjCXYU3usJ1LzFHWDFyvVGLxV?=
 =?us-ascii?Q?7CaSzILxzc5033XqAqG48mWUrgU7cIVle5+IJOfWz1UOlAf12cuXoCWU73xQ?=
 =?us-ascii?Q?/zc1lDOlofTzvhAx7hYBYJ6itHTLdSS62bQhjGtRnxDwC/YDjf3KE/nLPCNu?=
 =?us-ascii?Q?yx1bN0dbHl+mqExlZ9lIfvQwgUel1PXGmDxu182app/avnR2dxS+1pBIF1z1?=
 =?us-ascii?Q?tXJmdTuLsqjl8rUHNBdj5AlaOAwVw+4Uny7BwqaKYjJsMmPT34P+NuVA9tSA?=
 =?us-ascii?Q?ne88x94UsxuMhbqAaVHIskAWmlaK13FmNoRpPasGsbkSR4++Lin1xEbed26c?=
 =?us-ascii?Q?pi/XeSogSlhRPurScaFX1UjLJlJVSu0EzXPeseNxIi+a9PgXXidAkJeLc4T7?=
 =?us-ascii?Q?bk4NjCXqJvKduZNR6D7Tdqmr1XfOOHesB/uShbbhM2VK2SJ2dnYX75KSAVhX?=
 =?us-ascii?Q?52doQ+ieaGTYZlN6yAo2EPN/6R0dmxJsFXGNWPzMrFHkf2M6cOg+ZRY2pelQ?=
 =?us-ascii?Q?Ko/0FU5Cb5M0mkThnK7cDImEZ/BFWSab7QwLfEuEW6tKACLXVWtrUevauVVZ?=
 =?us-ascii?Q?oKMtCrb4Lm1RhRjvW4rafly/4Wc4a8E6GbR79dWei9pUqFZCbVpRU6wYuMCt?=
 =?us-ascii?Q?CViStn6zsqZpgl3l6Xa17ss/Zy93Y79qBfEGhHTLsQJ6TKqJq3xDjTP3tYef?=
 =?us-ascii?Q?UjHCJ4rqujNlBNrUiodq1wFXTT+Dofiz3NHBPnGnzVcdur0v6nwXOUNrgSWF?=
 =?us-ascii?Q?0ED/IfFVAn04DID3AU7rxqZlDLArqYZSx/m4U/eu+DjPLU7TEwUOWAPKrhV2?=
 =?us-ascii?Q?Ccbg9PFZk3pr1aQma2+dvYlCQDEJCEhCeKwb?=
X-Forefront-Antispam-Report:
	CIP:198.154.180.224;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mfod-euw1.prod.hydra.sophos.com;PTR:mfod-euw1.prod.hydra.sophos.com;CAT:NONE;SFS:(13230040)(36860700013)(35042699022)(1800799024)(14060799003)(82310400026)(376014);DIR:OUT;SFP:1102;
X-OriginatorOrg: csir.co.za
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Sep 2025 08:11:38.7196
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: f7d1e6bf-c2c3-45e3-05eb-08ddf10ad5a8
X-MS-Exchange-CrossTenant-Id: 2fd3c5d5-ddb2-4ed3-9803-f89675928df4
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=2fd3c5d5-ddb2-4ed3-9803-f89675928df4;Ip=[198.154.180.224];Helo=[mfod-euw1.prod.hydra.sophos.com]
X-MS-Exchange-CrossTenant-AuthSource: JN1PEPF00001EDB.ZAFP275.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CT2P275MB1147
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Good day list,
When trying to do a google search this morning, I got the above message.
  My Orca setup is currently broken, so I would like to know if there is a 
console browser/searchengine combination that will still work?
TIA, Willem



