Return-Path: <speakup+bounces-1144-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 1E3478D81DC
	for <lists+speakup@lfdr.de>; Mon,  3 Jun 2024 14:06:35 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=csircoza.onmicrosoft.com header.i=@csircoza.onmicrosoft.com header.a=rsa-sha256 header.s=selector2-csircoza-onmicrosoft-com header.b=5dQjGrSK;
	dkim=pass (1024-bit key) header.d=csircoza.onmicrosoft.com header.i=@csircoza.onmicrosoft.com header.a=rsa-sha256 header.s=selector2-csircoza-onmicrosoft-com header.b=5dQjGrSK;
	dkim=pass (2048-bit key; unprotected) header.d=mail-dkim-eu-west-1.prod.hydra.sophos.com header.i=@mail-dkim-eu-west-1.prod.hydra.sophos.com header.a=rsa-sha256 header.s=v1 header.b=xlsb7uL5;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 43D99382869; Mon,  3 Jun 2024 08:06:34 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 1FB6B3826FB
	for <lists+speakup@lfdr.de>; Mon,  3 Jun 2024 08:06:34 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 470E138270B; Mon,  3 Jun 2024 08:06:26 -0400 (EDT)
Received: from CT2P275CU009.outbound.protection.outlook.com (mail-southafricawestazon11021011.outbound.protection.outlook.com [52.101.163.11])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 5F61D38265C
	for <speakup@linux-speakup.org>; Mon,  3 Jun 2024 08:06:24 -0400 (EDT)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=TUCOFUiE1jzRTHVyErx5+5KsMsbQwmLtmUP66uYgkpboseROG8X4Hx6wVBzBj42wOornCR4fj54CTmV04C6pJ9dS86X/nVzX2lyOkAocbK4k8V7TeLsB3CWwyJZN6LZYUhHLjq3UnpmHXAsyCQnwsSr6LyBxfNVeioa/zNMXzmfWSOjCI3wg3z1J4yk66WybevGtIvec0H9SV6Toi8KK42x3UMBIlu57i1dzUuOo75HfmmK8ZzTh3u7sSodEsL7cUb4i9klTchMd+UcsXC/Ubqdp1jts5YzimIgIdQrAkjo5pKADVFkageb3aqNpqAHzKhC3B5LBjF9kTIVVYdzZyQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IvcrX8KD1jE6MC+LnmoBK99CmqS1aIOVLiOSs7A5eJs=;
 b=aByECMML8nYCdAseXNQyBy+ECxp0eJS2FlsRUULmbXZo9j/CvrzHld5J4x26xhlhxAK9qkmVCHtD3jjYyUH9DjkrwzzGAhrEtFkuPloGG/eJgIpkjE4tEvpW+2yOibK7HWMxdV1/m5hCfe9SDLjOc9JFuTfDOaWrAvv4BMMEERaGc5bkEizKwV/kCoS0KllCBFfM1jSwewiCrm31DAozIIM/9Hk351gWVqdM1P3dq5E+1qJli8/XH5HGDh/zLGx9AG+srhA080XSNtS3HmsmKMaai9R6K3EFKaXof9hXfHbLIiz8fieLaxrBjm0D16j/41CIT/acu5hu2m/tSi8+iw==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 198.154.180.226) smtp.rcpttodomain=linux-speakup.org
 smtp.mailfrom=csir.co.za; dmarc=pass (p=none sp=none pct=100) action=none
 header.from=csir.co.za; dkim=pass (signature was verified)
 header.d=csircoza.onmicrosoft.com; dkim=pass (signature was verified)
 header.d=mail-dkim-eu-west-1.prod.hydra.sophos.com; arc=pass (0 oda=1 ltdi=1
 spf=[1,1,smtp.mailfrom=csir.co.za] dkim=[1,1,header.d=csir.co.za]
 dmarc=[1,1,header.from=csir.co.za])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=csircoza.onmicrosoft.com; s=selector2-csircoza-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IvcrX8KD1jE6MC+LnmoBK99CmqS1aIOVLiOSs7A5eJs=;
 b=5dQjGrSKIjE+bbJplbjlSqMTQ/65VLX3KI0YNC7qSKY0JbMPXwJpL/Bq9nnbVl2cb8qRGDUkB7i+47SaM5g41riOyTTz0ZMQ5c3QGOeIrkOQpWdHAzbtvePpdwIdwvnb96o0mXzAdB4jJpXynfbha0RQlqgP5DTQkjB5TNrB1Lo=
Received: from DB8P191CA0007.EURP191.PROD.OUTLOOK.COM (2603:10a6:10:130::17)
 by JNZP275MB1548.ZAFP275.PROD.OUTLOOK.COM (2603:1086:0:57::5) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7633.25; Mon, 3 Jun 2024 12:06:12 +0000
Received: from DB1PEPF000509EB.eurprd03.prod.outlook.com
 (2603:10a6:10:130:cafe::a3) by DB8P191CA0007.outlook.office365.com
 (2603:10a6:10:130::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.29 via Frontend
 Transport; Mon, 3 Jun 2024 12:06:11 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.154.180.226)
 smtp.mailfrom=csir.co.za; dkim=pass (signature was verified)
 header.d=csircoza.onmicrosoft.com;dkim=pass (signature was verified)
 header.d=mail-dkim-eu-west-1.prod.hydra.sophos.com;dmarc=pass action=none
 header.from=csir.co.za;
Received-SPF: Pass (protection.outlook.com: domain of csir.co.za designates
 198.154.180.226 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.154.180.226; helo=mfod-euw1.prod.hydra.sophos.com; pr=C
Received: from mfod-euw1.prod.hydra.sophos.com (198.154.180.226) by
 DB1PEPF000509EB.mail.protection.outlook.com (10.167.242.69) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7633.15 via Frontend Transport; Mon, 3 Jun 2024 12:06:10 +0000
Received: from ip-172-19-2-233.eu-west-1.compute.internal (ip-172-19-2-233.eu-west-1.compute.internal [127.0.0.1])
	by mfod-euw1.prod.hydra.sophos.com (Postfix) with ESMTP id 4VtC9t2P6YzlWLr
	for <speakup@linux-speakup.org>; Mon,  3 Jun 2024 12:06:10 +0000 (UTC)
X-Sophos-Product-Type: Mailflow
X-Sophos-Email-ID: 861bd1b9cb4d4856993d2c1a585e025b
Received: from JNYP275CU001.outbound.protection.outlook.com
 (mail-southafricanorthazlp17011009.outbound.protection.outlook.com
 [40.93.74.9])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mf-outbound-eu-west-1.prod.hydra.sophos.com (Postfix) with ESMTPS id
 4VtC9q6PL6zqSHn
 for <speakup@linux-speakup.org>; Mon,  3 Jun 2024 12:06:07 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QSxpXsll/6ETmxHIayozamAs5GyHD2pGB4Q2/JH9uZW4eWCv6XEluHYVLQYv/F34sZCYGZn/P9zMUF71goPpJMlgp0KK+EJ5XofyQYG2o3xp7SwgnyU8Tkxe/JxMDDCpGYnR3aL6unmKS4byyTOMa4tE7m0aheRQ12UrYIb32YLyGXFyT7gnn7Dc+eGdfC9zqAc4uzbXMkbRhewOtUfwZTOOcDAU1J8dVMSZoSV7lOfzGZQs20LmGk7iqvfvh+BpX8EjGi6ZeC6imd1kKb8bTpIMIk2o4VwZApSqur5ST9nJhJNAn4bTd7zm/Z9ZSx2NvBqntwoaloXVnjj9mMtVxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IvcrX8KD1jE6MC+LnmoBK99CmqS1aIOVLiOSs7A5eJs=;
 b=SJULlk0wLavPQ2hGMFFZJNoUSh2EpgZq8Y/vG6GtMjvOF449mbjVUkQcwVf+hCIwxz5A6eBYMJ/ZL5XkxJ+ctLUy9wnETEnB/lKH0in/dNrDhAGuIs8QRWJ0RsRMHtX6qnsuOfoafV31M6ARPBqllXvX8IqIgJU2NOHb0RuVb1H2WH5291GLakbQFJwktSn9QbwqNCT3erwDqW3d7613fMgWjr99EEQqh1nDCl28JzzUNEPTsBu3eeYbPXageS+MTlHE6JDlV3SeJUHALfGjXnXaD1V7IhNyHuXAL1gqQ4Npdj1fM+QSZico5yP0tt6iqUbNe+eNA73svfvjT/yKGg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=csir.co.za; dmarc=pass action=none header.from=csir.co.za;
 dkim=pass header.d=csir.co.za; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=csircoza.onmicrosoft.com; s=selector2-csircoza-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IvcrX8KD1jE6MC+LnmoBK99CmqS1aIOVLiOSs7A5eJs=;
 b=5dQjGrSKIjE+bbJplbjlSqMTQ/65VLX3KI0YNC7qSKY0JbMPXwJpL/Bq9nnbVl2cb8qRGDUkB7i+47SaM5g41riOyTTz0ZMQ5c3QGOeIrkOQpWdHAzbtvePpdwIdwvnb96o0mXzAdB4jJpXynfbha0RQlqgP5DTQkjB5TNrB1Lo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1717416361; 
 s=v1; d=mail-dkim-eu-west-1.prod.hydra.sophos.com;
 h=Content-Type:Subject:cc:From:Date;
 bh=IvcrX8KD1jE6MC+LnmoBK99CmqS1aIOVLiOSs7A5eJs=;
 b=xlsb7uL5kwHIcORKxPazUp96tuUpuDmhYrzDrGDKRJDyrk3TB4YNlwMMre29I1jT
 fBVYT519NZxES3tXipwLmoZYVOsnH6VrsKqJFfoxs542RV2km7WcxPVjL9X138CkoZx
 KgO3lRNIf/T9dtTiMlfiIOb9jxct8JsWKpevQW/+ZybgnQSQ5dHeMHjxEH4s7YanDn+
 +Ly3cIe+oCfYFxrL+IxT/lBoJcR1ixtO/gb4+Typ/MUmccIZ/2bwn+kcPBx2Jriz2w4
 dqhT5ZHwx4OGBr4Qjds5L2pz9JHG+DqhJB05qhypm3a+F2lAC5Qxa/UTnt+6k0lBRU7
 fjEIzzGFfw==
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=csir.co.za;
Received: from JN3P275MB2310.ZAFP275.PROD.OUTLOOK.COM (2603:1086:0:af::11) by
 CP7P275MB1415.ZAFP275.PROD.OUTLOOK.COM (2603:1086:100:3e::10) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7633.27; Mon, 3 Jun 2024 12:06:03 +0000
Received: from JN3P275MB2310.ZAFP275.PROD.OUTLOOK.COM
 ([fe80::5a5:5b4:7ba0:2b32]) by JN3P275MB2310.ZAFP275.PROD.OUTLOOK.COM
 ([fe80::5a5:5b4:7ba0:2b32%7]) with mapi id 15.20.7633.021; Mon, 3 Jun 2024
 12:06:03 +0000
Date: Mon, 3 Jun 2024 14:06:01 +0200 (SAST)
From: Willem van der Walt <wvdwalt@csir.co.za>
cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: SPF FAILED: MAY BE MALICIOUS Re: slightly ot: email options
 revisited?
In-Reply-To: <Zl2fOHhQ0k2RSj0W@rednote.net>
Message-ID: <645f18c6-561a-d0fd-efae-ef349239f271@csir.co.za>
References: <Pine.LNX.4.64.2406012324170.2555914@users.shellworld.net>
 <6a4d694c-2afb-4a0e-8305-7071cb76cd02@jasonjgw.net>
 <Pine.LNX.4.64.2406021456140.2566090@users.shellworld.net>
 <Zl2fOHhQ0k2RSj0W@rednote.net>
Content-Type: text/plain; charset=US-ASCII; format=flowed
X-ClientProxiedBy: JNAP275CA0002.ZAFP275.PROD.OUTLOOK.COM (2603:1086:0:4c::7)
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
	JN3P275MB2310:EE_|CP7P275MB1415:EE_|DB1PEPF000509EB:EE_|JNZP275MB1548:EE_
X-MS-Office365-Filtering-Correlation-Id: f78c8286-550d-446b-432f-08dc83c58eaf
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;ARA:13230031|376005|366007|1800799015;
X-Microsoft-Antispam-Message-Info-Original:
 =?us-ascii?Q?nO/m4C7D7Q25+1B8ZmiSuFiwUxlZ8iBoiLaPzvy81TsBRb/Knrnwbgi5TTGf?=
 =?us-ascii?Q?W8OmwDC3TGrQl6eqSW6wozZ6YhEBPDefsEwf/Yjtc/Cp6oib/4keAovDv/pD?=
 =?us-ascii?Q?1VzwSm6ySHaglHMuWLSZ+qgWUC2SePK2MezdUTPr9aUX6TRfAsd7MMNxkpOS?=
 =?us-ascii?Q?CZLcWrigP0JRKR7jzTy+cIF4XbyvDIV1wxd8VuQc2HfBDB+lfDsmTzAs8F+m?=
 =?us-ascii?Q?yuBAsj44dZDRg3dAXUlxyW0K2HB7h2LuSsSI92B6ecCP22EaCDtXvdUfHi+l?=
 =?us-ascii?Q?DKvD8Ngo+V3i3W+pMWJAc9hJfc2AJWWediqvrbO9d65kwaU0eI6VJioA8pw+?=
 =?us-ascii?Q?4T+9I+iud7kKKB5dVaTtxuwlTH0bX60YZiVd5Wm8H7LD371yNZL++uqfKB8m?=
 =?us-ascii?Q?Wv6RuJqV1ixiXArnYzQPSty52IOv395CQTr2fXCGCqmwyZKQzbHeB4dIeZ9v?=
 =?us-ascii?Q?ncfPLewzpc0c6IOabejqI4T86TdKv/rTrUn2tvPKeDdffuj+j001Fruc6yeS?=
 =?us-ascii?Q?jLtNJFbiWWzhoGVCSoH2PDZSxARFtOrePkor6r8eANf3UZ/5Az8LXyZzaSWa?=
 =?us-ascii?Q?UNlOFQzRjzCG7xcjmLDN1eWSWdSlyLZbSN2sR27NqNt5JyiUonD7TBVszETJ?=
 =?us-ascii?Q?vr1mWMmPQLA8+8yllZYjrMwxtPBWdq4myFrWSe61AxOLLQQn1+Uzio1g8Wpj?=
 =?us-ascii?Q?obQ56y/9QW5PCjg7mLVDO2b/c7WiYYc7RhOE51WnjrFR9Jel5Soei/fkarIP?=
 =?us-ascii?Q?P4KqFSplXmQ9TI+axCQjOXuvGEYMkEzu33l8/tZnrEpvZt8hcMFiyqaQgMuk?=
 =?us-ascii?Q?6NCqApXQN6Qf6LpXIuPUABx2BTVEOinfaxEUB8hErLI56/enFVLNO02D6pXQ?=
 =?us-ascii?Q?UxU1eAUvD1iSI19qE29ftm7K2/phJv/ozr499KhX0mUfcaUSi7F9pbR+rDu5?=
 =?us-ascii?Q?ICh8hHuick4T7EAPaEMgT5tYNfqlsRqwG2pqLtBbbs3oXSWP9tIDEdJpLlyC?=
 =?us-ascii?Q?D11AsX/fQWrIxe08DMTXS7OhgsZonFeVSWO8KxgGvRyYO34H3oHlP0HPCIFq?=
 =?us-ascii?Q?rU2Dfw2MHvHwmkf/1/J+BO2X8crU22EPbpdtP4zg6lBauf03vETzruQjWbW4?=
 =?us-ascii?Q?8yWOyM9s8ToFwFCqm1ZTlBha4vZIWkVt2Q3dyfmb21vFKFUXwwh2Ku+DKBcS?=
 =?us-ascii?Q?48Q/QtiTclue5OQqGg+ENJ+Commr4crJ3UaGx0Tg306cQ5nggBbL4HK6Tmo?=
 =?us-ascii?Q?=3D?=
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255; CTRY:; LANG:en;
 SCL:1; SRV:; IPV:NLI; SFV:NSPM; H:JN3P275MB2310.ZAFP275.PROD.OUTLOOK.COM;
 PTR:; CAT:NONE; SFS:(13230031)(376005)(366007)(1800799015); DIR:OUT;
 SFP:1102; 
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CP7P275MB1415
X-Sophos-Email: [eu-west-1] Antispam-Engine: 5.1.5,
 AntispamData: 2024.6.3.112715
X-LASED-From-ReplyTo-Diff: From:<csir.co.za>:0
X-LASED-SpamProbability: 0.085099
X-LASED-Hits: BODY_SIZE_4000_4999 0.000000, BODY_SIZE_5000_LESS 0.000000,
 BODY_SIZE_7000_LESS 0.000000, DKIM_SIGNATURE 0.000000,
 FROM_NAME_PHRASE 0.000000, HTML_00_01 0.050000, HTML_00_10 0.050000,
 IN_REP_TO 0.000000, LEGITIMATE_SIGNS 0.000000, MISSING_HEADERS 0.000000,
 MSGID_SAMEAS_FROM_HEX_844412 0.100000, MSG_THREAD 0.000000,
 MULTIPLE_REAL_RCPTS 0.000000, NO_FUR_HEADER 0.000000, OUTBOUND 0.000000,
 OUTBOUND_SOPHOS 0.000000, REFERENCES 0.000000, SUPERLONG_LINE 0.050000,
 SUSP_DH_NEG 0.000000, TO_MALFORMED 0.000000, URI_WITH_PATH_ONLY 0.000000,
 __ANY_URI 0.000000, __ARCAUTH_DKIM_PASSED 0.000000,
 __ARCAUTH_DMARC_PASSED 0.000000, __ARCAUTH_PASSED 0.000000,
 __ARC_SEAL_MICROSOFT 0.000000, __ARC_SIGNATURE_MICROSOFT 0.000000,
 __BODY_NO_MAILTO 0.000000, __BOUNCE_CHALLENGE_SUBJ 0.000000,
 __BOUNCE_NDR_SUBJ_EXEMPT 0.000000, __BULK_NEGATE 0.000000, __CC_NAME 0.000000,
 __CC_NAME_DIFF_FROM_ACC 0.000000, __CC_REAL_NAMES 0.000000,
 __CP_URI_IN_BODY 0.000000, __CT 0.000000, __CT_TEXT_PLAIN 0.000000,
 __DQ_NEG_DOMAIN 0.000000, __DQ_NEG_HEUR 0.000000, __DQ_NEG_IP 0.000000,
 __FORWARDED_MSG 0.000000, __FRAUD_NEGATE 0.000000,
 __FRAUD_NEGATE_FROM 0.000000, __FROM_ADDY_SHORT_LC 0.000000,
 __FROM_DOMAIN_NOT_IN_BODY 0.000000, __FROM_NAME_NOT_IN_BODY 0.000000,
 __FUR_RDNS_SOPHOS 0.000000, __HAS_CC_HDR 0.000000, __HAS_FROM 0.000000,
 __HAS_MSGID 0.000000, __HAS_REFERENCES 0.000000, __HAS_X_FF_ASR 0.000000,
 __HAS_X_FF_ASR_CAT 0.000000, __HAS_X_FF_ASR_SFV 0.000000, __HTTPS_URI 0.000000,
 __IMP_FROM_MY_ORG 0.000000, __IN_REP_TO 0.000000,
 __JSON_HAS_SCHEMA_VERSION 0.000000, __JSON_HAS_TENANT_DOMAINS 0.000000,
 __JSON_HAS_TENANT_ID 0.000000, __JSON_HAS_TENANT_SCHEMA_VERSION 0.000000,
 __JSON_HAS_TRACKING_ID 0.000000, __MAIL_CHAIN 0.000000,
 __MIME_BOUND_CHARSET 0.000000, __MIME_TEXT_ONLY 0.000000,
 __MIME_TEXT_P 0.000000, __MIME_TEXT_P1 0.000000, __MIME_VERSION 0.000000,
 __MSGID_HEX_844412 0.000000, __MULTIPLE_URI_TEXT 0.000000,
 __NO_HTML_TAG_RAW 0.000000, __O365_BANNER 0.000000,
 __OUTBOUND_SOPHOS_FUR 0.000000, __OUTBOUND_SOPHOS_FUR_IP 0.000000,
 __OUTBOUND_SOPHOS_FUR_RDNS 0.000000, __PHISH_SPEAR_STRUCTURE_2 0.000000,
 __PHISH_SPEAR_SUBJECT 0.000000, __PHISH_SPEAR_SUBJ_PREDICATE 0.000000,
 __PHISH_SPEAR_SUBJ_SUBJECT 0.000000, __REFERENCES 0.000000,
 __SANE_MSGID 0.000000, __SCAN_D_NEG 0.000000, __SCAN_D_NEG2 0.000000,
 __SCAN_D_NEG_HEUR 0.000000, __SCAN_D_NEG_HEUR2 0.000000,
 __SUBJ_ALPHA_NEGATE 0.000000, __SUBJ_REPLY 0.000000, __URI_IN_BODY 0.000000,
 __URI_MAILTO 0.000000, __URI_NOT_IMG 0.000000, __URI_NO_PATH 0.000000,
 __URI_NO_WWW 0.000000, __URI_NS 0.000000, __URI_REDIR 0.000000,
 __X_FF_ASR_SCL_NSP 0.000000, __X_FF_ASR_SFV_NSPM 0.000000
X-LASED-Impersonation: False
X-LASED-Spam: NonSpam
X-Sophos-Mailflow-Processing-Id: f23346796f8c4f5fbf18c0ff9a3f25ed
X-Sophos-MH-Mail-Info-Key: NFZ0Qzl0MlA2WXpsV0xyLTE3Mi4xOS4yLjIzMw==
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped:
 DB1PEPF000509EB.eurprd03.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs:
	cdeb6a2d-6dc0-45fb-05b9-08dc83c58a22
X-Microsoft-Antispam:
	BCL:0;ARA:13230031|1800799015|36860700004|376005|82310400017|35042699013;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?tYm3m4KCRKjsQ0kXkLU8Uu4P6YHc/PgoiCY3K+74s39y4syXOS1bK6oVovx8?=
 =?us-ascii?Q?OE5CLrWUin+6pBLxrdOEpIT9g7mkC2VfyJOQP9pPLe2aIvp2FYddSQG6QGY3?=
 =?us-ascii?Q?KXoPNKXuLneWoIBKe9el3lxiEDTajQ9GYYT1i56SbHhV46ADlejadYzY1VQ6?=
 =?us-ascii?Q?EtdrEWxeUvklaUq+3t4gXEmX3G7Y5iqKcE2dPtCr396ZJgZxzCPnpdHjI5Ku?=
 =?us-ascii?Q?L/K5YMLIZgFyJOL1mlGNEyWFFsC6W4d8PV3B89Ft/ktTC1qNGyOgBeERJ/pc?=
 =?us-ascii?Q?QAc28i7gy0HsfrsyX1OmL/5OhxEKWsuNxgVGIzTIB97xXCtUn4rWCMaRMAOr?=
 =?us-ascii?Q?Y4s64tkzpvzLkC4DVEnMF1o+tq19O/SiKB+sOXnlfH43TLcqIRNi4faZJ7ZX?=
 =?us-ascii?Q?EsRASUs//T23Kjww9ds1CXLGDva4rQDlqlGwZBLtGlQUgqUxHVhEoa75gxdq?=
 =?us-ascii?Q?PfaPEcFgROkqPhDBWSAo/JW1ifTL0gYlN5cVF8oi4rR3ci2WRWbPjBVOEWQ8?=
 =?us-ascii?Q?BQ/KraFZxpueF8S4CehiplAnKuuwt4evhRt/1PTG3N92hiaeowBTXsDAD6+X?=
 =?us-ascii?Q?siMjeQzBpr02NwvgalQriYaBk8L+n5jfEXOXJFlnqWH+kY/tQmMZFI4eAjYH?=
 =?us-ascii?Q?ms5wWuPv/UkTfXIknrVkkNg62JQbPrvbVwnKWiSb42lxkKpeh5qET8H8VS1D?=
 =?us-ascii?Q?VRSWwQyBIkMgQyz3B+j36wqQpHsvN5LkaJJUkPcoSQQUWOW6JHBOCn3F1IPE?=
 =?us-ascii?Q?4hPL81GNUUS4JuJ+q2/k2Yy6BGvAI895M1lqBRM/Yc7uxguOt3YdXysjzneK?=
 =?us-ascii?Q?uXKqk2of/1V5arJJ38HJNCh1R3V0e/iZg95xafa5kPdHk9CbydbxS8NXUQ5K?=
 =?us-ascii?Q?RTbCum9/wO83Y0+ptiNjaK4gQ8LbjIWrjZWEviprK8xJjj90l3WzgPJp/935?=
 =?us-ascii?Q?FZa4/ypV8Vkf+5TCzYAlUdvRjgm9B23wG2zvvWPVFWv0k8BTbdkT4mVYgjqK?=
 =?us-ascii?Q?riGGNnhioROqdNFWSTuSDI7EirYcMFkzgTIc97SKr/11LS03TLVxjR1Tih4L?=
 =?us-ascii?Q?MxSzVRGDKJpxm8WfRBxofXM2U8Z+Z24b+MFwvzypxppmTIAhk6+zreE0Nyga?=
 =?us-ascii?Q?BwzJ1p/bdX/godpzkt5ZJmQd5lLmnCkSEi07qkdJbBPXDBHGnDf3HNaAWNYl?=
 =?us-ascii?Q?KJtJTYtc8K2hyyhUrZD+Zf+CHQVAnM8gm5I9paO9uFQiCKGNJIYMX0wdwMTV?=
 =?us-ascii?Q?wxKlCTz2S9OYyhVnIqnZV48g/ZY/JSFhG/aBt2qPFt4D9RImQbj1jC+mxrZe?=
 =?us-ascii?Q?4w6EWxw32LTrjRcY3gajYfiW?=
X-Forefront-Antispam-Report:
	CIP:198.154.180.226;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mfod-euw1.prod.hydra.sophos.com;PTR:mfod-euw1.prod.hydra.sophos.com;CAT:NONE;SFS:(13230031)(1800799015)(36860700004)(376005)(82310400017)(35042699013);DIR:OUT;SFP:1102;
X-OriginatorOrg: csir.co.za
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jun 2024 12:06:10.4945
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: f78c8286-550d-446b-432f-08dc83c58eaf
X-MS-Exchange-CrossTenant-Id: 2fd3c5d5-ddb2-4ed3-9803-f89675928df4
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=2fd3c5d5-ddb2-4ed3-9803-f89675928df4;Ip=[198.154.180.226];Helo=[mfod-euw1.prod.hydra.sophos.com]
X-MS-Exchange-CrossTenant-AuthSource:
	DB1PEPF000509EB.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: JNZP275MB1548
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi,
Alpine 2.26 has support for most modern email setups.
I suggest installing that as a user on your shell account and let it talk 
to some outside mail server e.g. gmail.
Not ideal, but IMHO workable.
Regards, Willem



On Mon, 3 Jun 2024, Janina Sajka wrote:

> [You don't often get email from janina@rednote.net. Learn why this is important at https://eu-west-1.protection.sophos.com?d=aka.ms&u=aHR0cHM6Ly9ha2EubXMvTGVhcm5BYm91dFNlbmRlcklkZW50aWZpY2F0aW9u&p=m&i=NjU0NjA2MWRiMzM3ZDMzYTFlMGNmNmY4&t=NXBoeWk1WjVxR0loMEw1YU9OZWFqSi9TcDJYOW90VHoxWU1lQlJnUC9oST0=&h=0173c9a605c64ed48293fbf65b5ad104&s=AVNPUEhUT0NFTkNSWVBUSVbI68MQuvkKJIj5-UCMkHMMDQEomYx_8y53vg8p9yoA7hGI-dJsYqy7kO2RKfhIuviNFdKSrKRRf26tJLK25114 ]
>
> The standards Jason mentioned have been in place for years. To my mind
> that would not be excused by personal emergency.
>
> As someone who loves command line shell functionality, I can well
> appreciate it's attraction for others. I do believe there are still
> options for people who choose to subscribe to a shell service rather than
> administer their own servers. Were that me I believe I would first consider Panix.com. As I recall Panix operates on Linux where shell world operates on BSD. That wouldn't block implementing the mail standards Jason mentions, but may prove more helpful to individuals when using the CLI.
>
> Good luck, Karen! Let us know how this goes, please. I'd be interested
> on how you land over this.
>
> Janina
>
> Karen Lewellen writes:
>> As shared, I do not know what is preventing Luke from  making these changes.
>> My last understanding is that his mother is ill.
>>
>>
>>
>> On Sun, 2 Jun 2024, Jason J.G. White wrote:
>>
>>>
>>> On 1/6/24 23:37, Karen Lewellen wrote:
>>>>  seasoning my question this time is the  fact that in March, most major
>>>>  email pockets, Apple, Google, Yahoo, all started requiring email addresses
>>>>  to  carry an   identifying code that matches the actual host, you
>>>>  @you.com has a code insuring that the email is coming from a place called
>>>>  you.com
>>>>  Goal is to keep spam from using hosts as a cover.
>>>
>>> You need to use a server that properly supports the DKIM, SPF and DMARC
>>> standards, otherwise, recipients are more likely to classify your
>>> messages as spam. This is reality. To handle mailing list posts, the ARC
>>> standard should also be implemented.
>>>
>>> Since I run my own mail server, it is compatible with everything,
>>> including Mutt, Alpine and other client-side software that Speakup users
>>> are likely to want. Commercial providers are increasingly complicating
>>> the authentication process, for legitimate reasons, hence anyone working
>>> from the Linux console will find it increasingly hard to connect, though
>>> not impossible.
>>>
>>>
>>>
>>>
>
>
> --
>
> Janina Sajka (she/her/hers)
> Accessibility Consultant https://eu-west-1.protection.sophos.com?d=linkedin.com&u=aHR0cHM6Ly9saW5rZWRpbi5jb20vaW4vanNhamth&p=m&i=NjU0NjA2MWRiMzM3ZDMzYTFlMGNmNmY4&t=a2pNZEt2VXIzMmtPUEtNTmpwSDlpZzJYL3RybUMwTTFldVJ0S2llMGtwVT0=&h=0173c9a605c64ed48293fbf65b5ad104&s=AVNPUEhUT0NFTkNSWVBUSVbI68MQuvkKJIj5-UCMkHMMDQEomYx_8y53vg8p9yoA7hGI-dJsYqy7kO2RKfhIuviNFdKSrKRRf26tJLK25114
>
> The World Wide Web Consortium (W3C), Web Accessibility Initiative (WAI)
> Co-Chair, Accessible Platform Architectures     https://eu-west-1.protection.sophos.com?d=w3.org&u=aHR0cDovL3d3dy53My5vcmcvd2FpL2FwYQ==&p=m&i=NjU0NjA2MWRiMzM3ZDMzYTFlMGNmNmY4&t=NlZtNGhwWDNnNlZvQURlOVd2WXRpL3o1dTNyY29ROUhPRUQ5LzZzK3NnVT0=&h=0173c9a605c64ed48293fbf65b5ad104&s=AVNPUEhUT0NFTkNSWVBUSVbI68MQuvkKJIj5-UCMkHMMDQEomYx_8y53vg8p9yoA7hGI-dJsYqy7kO2RKfhIuviNFdKSrKRRf26tJLK25114
>
> Linux Foundation Fellow
> https://eu-west-1.protection.sophos.com?d=linuxfoundation.org&u=aHR0cHM6Ly93d3cubGludXhmb3VuZGF0aW9uLm9yZy9ib2FyZC1vZi1kaXJlY3RvcnMtMi8=&p=m&i=NjU0NjA2MWRiMzM3ZDMzYTFlMGNmNmY4&t=RTdKeXdmRy81WThWMGlqQnlzQSt3UERyd3cxT2RlbjF1ZGs4eW02T09wVT0=&h=0173c9a605c64ed48293fbf65b5ad104&s=AVNPUEhUT0NFTkNSWVBUSVbI68MQuvkKJIj5-UCMkHMMDQEomYx_8y53vg8p9yoA7hGI-dJsYqy7kO2RKfhIuviNFdKSrKRRf26tJLK25114
>
>
>

