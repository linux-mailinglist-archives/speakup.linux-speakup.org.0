Return-Path: <speakup+bounces-1323-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 401C6B493C3
	for <lists+speakup@lfdr.de>; Mon,  8 Sep 2025 17:40:07 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=math.wisc.edu header.i=@math.wisc.edu header.a=rsa-sha256 header.s=selector1 header.b=k+8j6Td2;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 7E4BC382756; Mon, 08 Sep 2025 11:40:06 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 5945D38271F
	for <lists+speakup@lfdr.de>; Mon, 08 Sep 2025 11:40:06 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id E3EA2382713; Mon, 08 Sep 2025 11:39:58 -0400 (EDT)
Received: from mx0b-007b0c01.pphosted.com (mx0b-007b0c01.pphosted.com [205.220.177.71])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 77F4D38270B
	for <speakup@linux-speakup.org>; Mon, 08 Sep 2025 11:39:58 -0400 (EDT)
Received: from pps.filterd (m0316047.ppops.net [127.0.0.1])
	by mx0b-007b0c01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 588Cx5kZ012974;
	Mon, 8 Sep 2025 10:39:56 -0500
Received: from nam11-dm6-obe.outbound.protection.outlook.com (mail-dm6nam11on2082.outbound.protection.outlook.com [40.107.223.82])
	by mx0b-007b0c01.pphosted.com (PPS) with ESMTPS id 4914stqj2u-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 08 Sep 2025 10:39:56 -0500 (CDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=oas2YXCIXnCg7OmBYBcMXPwxGAIFb3bgtez//zVY6DQW5d9AEo6gfcG0ZvHXkirhKlMw7ZIE2SYg9OhbkfkKXJAY8/hJAuYkQFim+XRvWVuecTU9iRAC3Vw6z5WDtIz64h1xTwlbMnXvPObqWrOWcXj/ZhcyIatdNxereBVUBrFAMMCAVVQnPOik/4BPc+nQDSCWg02jzgiABnxVHx/B9cuov4ZUgAxSO7ip4lmR+3XEyXHptp2wLcCzrL16Gk+y5uKAKEv1t6HqOOrF0VadlnjPHGcaVB9Y0fo5XJPcnx0G2ZVOOD0SYxMq/HbpiyMBfEzELlyOu1uUUM6mosX5bg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pUONdT0HQaGLWISuXAFKqVrK2djm8EWLqHhkvz7rNIU=;
 b=UsdE2SqGTwz/1Mz+00blGLGEO/i4fn3lvyee4rviU/8QAbbTyAsbtCjzesYo5imw1czohhtA4gsLl3ijwHqDHsXQfOxWXYGlBULT4DB6lTPlWX33v99n1PAO7Z7AbuRztSgvmEUmur+6Cr63NjUPohospmFqfMaJX72MYvwot52W+nvTIIWiyxD0XrS1jNtVLt5SQZOdPWtNgcUL4ln67+T8QjPD4E3hGXJfw1VIx2/lEq9WFoCG22ei/PaGdmFsII3fZLx/uMorgul3ogsQVAWMZEN4PFYLze7XzKHNXP08p39lSzt8V/6OHq6+TXssojkrz+0ep1kzTXQlWDIBnQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none
 header.from=math.wisc.edu; dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=math.wisc.edu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pUONdT0HQaGLWISuXAFKqVrK2djm8EWLqHhkvz7rNIU=;
 b=k+8j6Td2tngujGSkPheNLhVzoCgu/zrAgTn4DpPdOa4gbfYKfei8iO5qVhguj1jbyoxP7VKyPXh/aF0d+aNeWlYDZNwRVosVP9gxgrA3eKGw4aN1wmhO3weng2GWKVnPSfmJcmP8SBh2/xLMpp6UTmR7dWR3O7+WfOVnldxD7nUx2wSv1YLx43FfmR4U3NJ2yN9DZcsj/zjaSv/aJKtZQPJVCU4pQCP/Jl+pdw+1dYge+Oll1FvijIMuPzK/7/sT9PGTZroGLlveKkf7lklwSyodzsCLqqs0iIMO3Dy2izAKS2A+AWI8J1McqTZWTyO8OFExPh/hqQ2I1kYONjmKKg==
Received: from LV3PR06MB9881.namprd06.prod.outlook.com (2603:10b6:408:23d::16)
 by MWHPR06MB10322.namprd06.prod.outlook.com (2603:10b6:303:27d::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.22; Mon, 8 Sep
 2025 15:39:54 +0000
Received: from LV3PR06MB9881.namprd06.prod.outlook.com
 ([fe80::9d0c:9802:d961:5a8]) by LV3PR06MB9881.namprd06.prod.outlook.com
 ([fe80::9d0c:9802:d961:5a8%6]) with mapi id 15.20.9094.018; Mon, 8 Sep 2025
 15:39:54 +0000
Content-Type: multipart/alternative;
 boundary="------------T00sBgg0L82MO1FVpPlrcNSq"
Message-ID: <694cf51b-fbe8-4377-aeab-4afa0d753019@math.wisc.edu>
Date: Mon, 8 Sep 2025 10:39:52 -0500
User-Agent: Mozilla Thunderbird
Subject: Re: speakup from boot
To: covici@ccs.covici.com, "Terry D. Cudney" <terry@cudneys.ca>
Cc: speakup@linux-speakup.org
References: <aL5U_xg372xiMOJm@cudneys.ca> <aL5dVITcCcq369vC@cudneys.ca>
 <m3v7ltv3t4.wl-covici@ccs.covici.com>
Content-Language: en-US
From: "John G. Heim" <jheim@math.wisc.edu>
In-Reply-To: <m3v7ltv3t4.wl-covici@ccs.covici.com>
X-ClientProxiedBy: CH2PR07CA0055.namprd07.prod.outlook.com
 (2603:10b6:610:5b::29) To LV3PR06MB9881.namprd06.prod.outlook.com
 (2603:10b6:408:23d::16)
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: LV3PR06MB9881:EE_|MWHPR06MB10322:EE_
X-MS-Office365-Filtering-Correlation-Id: e96ad578-e0c6-4877-ce25-08ddeeedf4dd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|366016|41320700013|1800799024|376014|8096899003;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?U2FqRlByTFV3eHBlWmdIU2JySzhuQmFMdEtiaEQ0aFNmaE1uTFk4SnRqWFcx?=
 =?utf-8?B?Y0tEV0ZSYjNna1E1ZG9EWUFtQjYwd1lWNUw1aHhMR1JXKzIyWDYvaU1qb3hT?=
 =?utf-8?B?Kys1aDB4Wlo0bVJnWURHbTJzMnlmQU9IN0M0RUt3SHcvVzd0WFFEam9LU2F0?=
 =?utf-8?B?a201U1Y3RTdFWTFYUFBkQjJhTnNJakFkV3VKT3dQa2VNUDVHM2I3ZjZDZEdW?=
 =?utf-8?B?NXdMN0V5VGduaU1SMU5YdXhFb2NxL0NjdnJrRzdNVDdoOTRDbU5odDYveG10?=
 =?utf-8?B?djE2QVBkTDUvclF2R1BZSTZtbzlORjFmUStsUmtTMG4rcE9LZW5PbXI5V0Rn?=
 =?utf-8?B?V1BqVWRvcGJvNi9HKzJIdkZSdWdFM2NReXd2aXBDQ3gzUXdUUmJmNmFWR2M4?=
 =?utf-8?B?OVR1ejQxbm1HbHNRamlDYzVLMkxkS0Q0a1NqZ2JSbmtTRW5YTFh5WU54RWFB?=
 =?utf-8?B?aHZyREN4WGNoNm5wc0RpNW40dnJidFZGeU0vc2pvdTFOc3J2WGFtUVpHQ1M2?=
 =?utf-8?B?TUxwQ0hnNmRLRGFlblRNRmFVVzdkV2xDMzVVaGpjYmpSTFFBNHg0Q3lwNkFn?=
 =?utf-8?B?Ym9NLzZPeUlTUDZsQzEySG10cFk0Tm9uZGZ6K3kxNWhkZTFhdzVneS9uY1d1?=
 =?utf-8?B?bTN3NjU4cEVEQmNLQmNxbmFBeUZ1OWVlRnQvWll5b0dZVWxWWUp1ajJsVnI1?=
 =?utf-8?B?TUYvZDNJcGdmTzB1SG0rcTZoWmlqR09JN0ZybGR6NnZSbU1IMkdHQi90Rlg5?=
 =?utf-8?B?Z1U2N2cwWHlhKytTWGFyUlhJSWk0Znh5TVZ4S1dGUzg3UXI1alNiMWI5cFlJ?=
 =?utf-8?B?eEg0aWtMdzhjKzhZNE84eTBJMEJ3UFk0ZUpkaldyS3VnaWZmSGp4U2hJVXhT?=
 =?utf-8?B?NkRDL1FhblpwN0FQUzZHbXk5bXEzREJwU0ZDY0RUTzVZTlJEalZCRDBGSkNn?=
 =?utf-8?B?b2I2M0syM3JJUGttNnFmK3ZwMC9OQXQxbnVVRGk4dG9nSXBOeitQK0FNMnRk?=
 =?utf-8?B?bnRIZ1VjVGJIQzBIbGdpdUp3OXdJU0RDeVVhTU8yTm9JY1N4QldGQnBSYWdr?=
 =?utf-8?B?ZkgrUS9jdEhyK2VwV1A0RHVXdGRBYy80blZSNWFOTFgwQWs3aFMrV1lrWXl2?=
 =?utf-8?B?aXBHOXZiY3lTQjdBcEs0aUZBWld6RmIzK3RWUHpKRkJlOHNjd0tUdDhoYmFE?=
 =?utf-8?B?MU1Nb3h0UERMWFRIU3dXZzRCcmtIVVkwNm9McE1Dc0xBRitkV0NaL2RGcVJL?=
 =?utf-8?B?dWRNdm0yRHZ1VDI5RnEvRzRKR3RlVmdhMDBVQWk4elBZN2NJUFpZTlgxcEdD?=
 =?utf-8?B?L1g3cU1MS0Jjdkp4b1NsejM3a21XL2hzUkVCbEdZa0daMUY2Um9MOGJ5OGZ1?=
 =?utf-8?B?M2N0SGlhRlBJa1VxbzZKN01LVjJGQkRpRm9pcVBoM2QwMGIxQzFoYXpRS1FP?=
 =?utf-8?B?TURNN3dLbllRNnhJS1hWYXRXb29qd1pxSHJ0cUNWWDZKejFKcnAvcU5UbkxH?=
 =?utf-8?B?a0xuNCs1K3A3NmxMcjhtS3BqV2ltQWhsN3FaQnB2OUNHYkVZWkdwZW1tNzVh?=
 =?utf-8?B?Sm5ZOGI0amtlak1oSENEejFIQTFBWm11YW4vNTgzOUR4eUtTbGdtNDRwYXdm?=
 =?utf-8?B?UERUNUpHMWp5OFo3YmpPRGZNMWxYeEdCdExEQWNUTkhqL2JKc1Rld2dQVEp1?=
 =?utf-8?B?VVJJeHRwR2ozdm11amRqVkR6Ly9uRHkyUittQnA5SjdoMzc1QWRvbzQyNUFZ?=
 =?utf-8?B?blYvQUtmYVpmZmhhMVlOaTRnK2E1Q29EMGcydEU0elJUTkFnYU9yZHBHL296?=
 =?utf-8?B?ZW1sRHZ1b1A1QklZd1BueU1FVnl3dHd0aTNKMEgzeEdtSVEzd0V4Q2hMb0t6?=
 =?utf-8?B?VVJ3a3EzME5OSFFRWkY5SW5mSnhkR3k0MmVPSWluYktxaXc9PQ==?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:LV3PR06MB9881.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(41320700013)(1800799024)(376014)(8096899003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?RGU2akY0OE96eE45YW5kblNKWkp2ekl5N3lGSTQwc09zbmpUS3JDdmE1Zi9I?=
 =?utf-8?B?dm9wREFKU0hNZzNvZDA2R2FTUFRIK0FUZGlCangyc1VCcVhLUEhqS0xJUVA2?=
 =?utf-8?B?VDNoVWZkZ3ovVnhaaVJhTlpWR3JPUkxpQS83K1lEa1VmSk5xMkFBQldISzhk?=
 =?utf-8?B?MTVEZTJOUFNaZ3hsMHRRNWVmTmR1SGJvUXBIUDFZR2dHVnRNNithMzJ1V1Nw?=
 =?utf-8?B?c1ZpZzRTd3VWSGZJMFp5TjBvUDRxV0h1V0VjOGN4ajVKczVRb1VkRk1nNlM4?=
 =?utf-8?B?aXQzcEwyOFZTcWhlaGpEQ2o2OCtmS3pxYVdvOUloMWpQbTA4Ky9tRlM4U2RI?=
 =?utf-8?B?dEpmQ1lIcTVNTGZVT3FaMUZtYWJtUFJ0SlhvaUgxYkNVZHZGRVMrV1dnbVQr?=
 =?utf-8?B?RzFWQTVwbXpDOE0ybnVsVm0rM1NBR3huZm1TcmMvektvMVlxM21MWlcrazNI?=
 =?utf-8?B?WVVUcnhzZGRod1p3TE4vRzBaS3lKNHFmdkhBNFkzUU5iUkprcWhmZTkzemdp?=
 =?utf-8?B?V0wvbG12a2h3MFNTa0FFbGNqMlpBMi9BNndwbE11QVduWUZneGVTSDEya09o?=
 =?utf-8?B?M1Y1YTJCWGNQNVBZZTFUL2NLYW43WU1pcFdWQ3RyQnNETkoxc2NiamhrTHdT?=
 =?utf-8?B?SnhpN3ZMM3hhdzBuUlEvMEc3WDNBTXAzUmFPd0tGQnRTYVUvZjdHUlJ1eEZx?=
 =?utf-8?B?OEhQellmSXNwU2Z5aUlLL3czMFYzUCtwZ3dSeWllbVFvWDMxY1NnNTZmaHdI?=
 =?utf-8?B?dVRrT2F3VnhFQVZtS2RGMkE3RVBTaXR2R3pxeXp5VndUK0o0ZTFQdGdsNDA3?=
 =?utf-8?B?SnZUdHFnNnNpMWg2Zm5PZ1d3Sm5yZjc3WWg0dUZ5aEp0VzdkV2JHTnpHWC9Z?=
 =?utf-8?B?V1hBK3VjKzdhQ09vSEhmeWRUZEpoMzBhTitsMnVkRU9vdkV4LzBvMDFYb2Rz?=
 =?utf-8?B?WFF5a2dUL0dsRzhNZU5ITGdxb1ZWcWNWKzJYY1BBY2grdjZ4dFcxeDZlbnFi?=
 =?utf-8?B?VWVmQW11RjFKaDFIUG5oK00xNnJrc3RRT25lMXpOSTIvbFlCOWNHVVFwc00w?=
 =?utf-8?B?a0tHa05ZYXRhQVFzTm9HL1ArQ2s4dGczZXRCUHFGakZKRzhIWjVaVVMvcnp2?=
 =?utf-8?B?bzRaaGYwOERqWlZXcHE4ZUdoQjZxNlhGTzJNczlVdHp2dmhzUGlnOUkrSlcr?=
 =?utf-8?B?elg0cDk4ZGliY2o1bGxNbVhJL1JzWU1mTEhTMmxYREhMYWtTVmJCSFU3UkZG?=
 =?utf-8?B?MjBUcE1NeVpTMXFhTWo5NGtGY25pMVVFbEJGbjRDY1NWWGNtcVQ5Q2FGZHlj?=
 =?utf-8?B?Mk40L01nRjVhSmk5MHZNNTlsZTRaR1F3VjlhSnBwZDRmbU1nWDRzRzNPVExF?=
 =?utf-8?B?SlNqUW1ya01DMG1aeXIvTmlFWHpNVG1WdmZlS1ZMOTNpREhPVnBveHhuSTg1?=
 =?utf-8?B?cnRiR2p6SGNtakNxbkRwVlg3TTg3a2k1ZUhUOEtqRzVlVkExdzBqVCtZVzQv?=
 =?utf-8?B?V1UvN1BLUisyYi9DUzBnbWFRWjhMWm9va0svSUFIbk84aGJLTWJjeGFKZnZL?=
 =?utf-8?B?Y2NSNVgrenFVaVJJRktxS0k2SUtoYzdJVFZHbGxLUWhrdDAvNVZ4TmJ4V0tM?=
 =?utf-8?B?MjlldVFQTTRJeE1ZTGJvcGxqLzA1UTZXWDkyL3o4bFBVRjk4SWpWVENDa3A5?=
 =?utf-8?B?djhMZ3Q3WElmdFhoZ2NnU0JNTXRxZGYxUjhvY3YvTWVuSkpwRGdXSVMvU2VP?=
 =?utf-8?B?UzhlNTJMRzNWVXFnai9pZ1JEV2FFUnpiREdyZGlrY1l1RHkreUlDOExtOS91?=
 =?utf-8?B?RDQ5VHZEVU9nZjNORTl6SVNwNVZWeEFQQkRESDVuK0UxM2t0S2t2dFZjelJy?=
 =?utf-8?B?RVJLbkFWc014UU5Ja2doQVJwV05DYVVjeEE0T0tHUFFwRy8wNDBaTmFrVG5C?=
 =?utf-8?B?ZUlXdWNxMXRSZ0oycithWmlCbStIK09OQnU5MlpobXIrUVVROTZtYUJwSWww?=
 =?utf-8?B?RVRnQzVUQmpBL09NRytVY3YvOUNvNkxoUEprR0JsYUVPdDA2SWhYY205OTcy?=
 =?utf-8?B?a2ZLUFRpekRKUmNHcEwzTi9mM29XNk9paVVVMmU2TDBYTW82UWxSUnNRZ2Fr?=
 =?utf-8?Q?hY8KYMNkaBX9FPT1tMjJXNrnI?=
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: e96ad578-e0c6-4877-ce25-08ddeeedf4dd
X-MS-Exchange-CrossTenant-AuthSource: LV3PR06MB9881.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Sep 2025 15:39:54.1055
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: g38nsKZPxn6VrGlZ9FW+Haz8ECDtLqwo/MI8mVkUdwv+lL+Kxk4DdPksjHNFIMmM
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR06MB10322
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA3MDA2NCBTYWx0ZWRfXzfrpp1JlH4dM
 f/QvUkV0amTGzmhf8oG/iJcGH/wyxWKM2f7jfewUybHgo6MGGtvdDl+SFKOaHi7iPiY8yCV1rcB
 HRSU+yKgh/MEnbLe4ZSTLBgnUxNInUdCb/cg8MdyK9uChkbywC56khezvqBaJzaD/JBXNmmFeKq
 cUlj++FO1OyPNXn0wu0x0EyTwbl0ngTa89sf9+iXEjvl5rZWzea+nIOzs6MVbWtfISrAe0Ryl1C
 2nvx/RJ3NNsKB9LeGzhemzD5y3qaL3CW+7swiqTNr6FaHndu0DdWzYrfcUcExl78kT05Ki1sqea
 tI6EwWG4p5HO8TtEZWPuRha8tYhuxK47uE2AoTT0mwX45atTwJYmpZMWO8WwVJBmIgzEBUPticO
 KQg7LwNP
X-Authority-Analysis: v=2.4 cv=Hq92G1TS c=1 sm=1 tr=0 ts=68bef8cc cx=c_pps
 a=IKKnTnttSRAw3yzzHe0h3A==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19
 a=xqWC_Br6kY4A:10 a=yJojWOMRYYMA:10 a=lre9DRYkaIEA:10 a=VBeCEuiNAAAA:8
 a=-FaTFFh5S9Mq6nWb_poA:9 a=QEXdDO2ut3YA:10 a=uJ_w1ttZAAAA:8
 a=bpCJmQH3yTN8x6aXe0oA:9 a=78792r8EmqlzCH9_:21 a=_W_S_7VecoQA:10
 a=lqcHg5cX4UMA:10 a=K-WoAglidRTgu2AFuYQT:22 a=muQ5ErImgoUO71fbljk_:22
 a=iFtThO9_p-c16l5TK7rv:22
X-Proofpoint-ORIG-GUID: BDQYhQLr3ORH2ahoQSEBoNzeoeYLFKHj
X-Proofpoint-GUID: BDQYhQLr3ORH2ahoQSEBoNzeoeYLFKHj
X-Wisc_ValidFrom: true
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-08_05,2025-09-08_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 priorityscore=1501 malwarescore=0 suspectscore=0 phishscore=0
 bulkscore=0 adultscore=0 impostorscore=0 clxscore=1011 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509070064
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

--------------T00sBgg0L82MO1FVpPlrcNSq
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

The OP was a little unclear on what he wants to do but if what he said 
at the end, "The goal is to have speakup talking before loggin in: is 
correct, then you don't have to mess with the initrd for that. Just 
enabling the espeakup systemd service should do it.

To check the status:
systemctl status espeakup
To enable the service:
systemctl enable espeakup


On 9/8/25 1:47 AM, John Covici wrote:
> You would have to load the kernel module in your initrd and regenerate
> the initrd in order to do this.  There is a script runs after the
> initrd is generated, this may help.  Sorry, I can't remember how to do
> this and I use a serial synth.
>
> On Mon, 08 Sep 2025 00:36:36 -0400,
> Terry D. Cudney wrote:
>> Hi again,
>>
>>     To give credit where credit is due...
>>
>>     This little script (now modified) came from Kirk...
>>
>>     This is how I get speakup to talk after logging in.
>>
>>     First I must run this script,  as root:
>> /* start of script */
>> #!/bin/bash
>>
>> systemctl stop espeakup
>> /usr/bin/chown terry:terry /dev/softsynth*
>> /usr/bin/chmod 1777 /run
>> /* end of script */
>>
>>
>> Then logged in as myself, I run espeakup as an application.
>> /usr/bin/espeakup
>>
>> 	From here on speakup talks normally on all tty's including the login prompts.
>>
>> 	This is good, but not completely satisfactory, The goal is to have speakup talking before loggin in, ideally from power-on.
>>
>> 	Thanks again for any suggestions/help ,
>>
>> 	--terry
>>   
>> -- 
>> Name: Terry D. Cudney
>> Telephone: 289-438-6828
>> E-mail:terry@cudneys.ca
>>   
>>
--------------T00sBgg0L82MO1FVpPlrcNSq
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<!DOCTYPE html><html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <p>The OP was a little unclear on what he wants to do but if what he
      said at the end, &quot;<span style="white-space: pre-wrap">The goal is to have speakup talking before loggin in: is correct, then you don't have to mess with the initrd for that. Just enabling the espeakup systemd service should do it.</span></p>
    <pre wrap="" class="moz-quote-pre">To check the status:
systemctl status espeakup
To enable the service:
systemctl enable espeakup

</pre>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 9/8/25 1:47 AM, John Covici wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:m3v7ltv3t4.wl-covici@ccs.covici.com">
      <pre wrap="" class="moz-quote-pre">You would have to load the kernel module in your initrd and regenerate
the initrd in order to do this.  There is a script runs after the
initrd is generated, this may help.  Sorry, I can't remember how to do
this and I use a serial synth.

On Mon, 08 Sep 2025 00:36:36 -0400,
Terry D. Cudney wrote:
</pre>
      <blockquote type="cite">
        <pre wrap="" class="moz-quote-pre">
Hi again,

   To give credit where credit is due...

   This little script (now modified) came from Kirk...

   This is how I get speakup to talk after logging in.  

   First I must run this script,  as root:
/* start of script */
#!/bin/bash

systemctl stop espeakup
/usr/bin/chown terry:terry /dev/softsynth*
/usr/bin/chmod 1777 /run
/* end of script */


Then logged in as myself, I run espeakup as an application.
/usr/bin/espeakup

	From here on speakup talks normally on all tty's including the login prompts.

	This is good, but not completely satisfactory, The goal is to have speakup talking before loggin in, ideally from power-on.

	Thanks again for any suggestions/help ,

	--terry
 
-- 
Name: Terry D. Cudney
Telephone: 289-438-6828
E-mail: <a class="moz-txt-link-abbreviated" href="mailto:terry@cudneys.ca">terry@cudneys.ca</a>
 

</pre>
      </blockquote>
      <pre wrap="" class="moz-quote-pre">
</pre>
    </blockquote>
  </body>
</html>

--------------T00sBgg0L82MO1FVpPlrcNSq--

