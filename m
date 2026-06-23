Return-Path: <speakup+bounces-1619-lists+speakup=lfdr.de@linux-speakup.org>
Delivered-To: lists+speakup@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id sDk7DrfCOmpwGAgAu9opvQ
	(envelope-from <speakup+bounces-1619-lists+speakup=lfdr.de@linux-speakup.org>)
	for <lists+speakup@lfdr.de>; Tue, 23 Jun 2026 19:30:31 +0200
X-Original-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 4080B6B90F7
	for <lists+speakup@lfdr.de>; Tue, 23 Jun 2026 19:30:30 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=math.wisc.edu header.s=selector1 header.b="OfgUp7/z";
	spf=none (mail.lfdr.de: domain of "speakup+bounces-1619-lists+speakup=lfdr.de@linux-speakup.org" has no SPF policy when checking 206.248.184.127) smtp.mailfrom="speakup+bounces-1619-lists+speakup=lfdr.de@linux-speakup.org";
	dmarc=pass (policy=quarantine) header.from=math.wisc.edu;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 2E339382665; Tue, 23 Jun 2026 13:30:28 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 0A39A38260D
	for <lists+speakup@lfdr.de>; Tue, 23 Jun 2026 13:30:28 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id BFDD4382637; Tue, 23 Jun 2026 13:30:21 -0400 (EDT)
Received: from mx0a-007b0c01.pphosted.com (mx0a-007b0c01.pphosted.com [205.220.165.71])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 6087638260D
	for <speakup@linux-speakup.org>; Tue, 23 Jun 2026 13:30:21 -0400 (EDT)
Received: from pps.filterd (m0316038.ppops.net [127.0.0.1])
	by mx0a-007b0c01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65NF8DWO3132707;
	Tue, 23 Jun 2026 12:30:16 -0500
Received: from byapr05cu005.outbound.protection.outlook.com (mail-westusazon11010064.outbound.protection.outlook.com [52.101.85.64])
	by mx0a-007b0c01.pphosted.com (PPS) with ESMTPS id 4eyncs3heu-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Tue, 23 Jun 2026 12:30:16 -0500 (CDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HIHFL91dCuza8NuB2LCA4trF6LrhZkVXqPGqk0IKUPNfhk25QGq+K8xx5nZqle2RShbfxnHk4ePv1Mhk58yzmVhrcKxWSod4TCu27XhG55Mlwa4scNwpla6vWlWbyy/zjzZz4vDr6KIcrqb1uN+sYlhmHnlovDMvgLuob3lEPJjt0ycy6M1w5Tvn4CIFGg04l4MwRHgcV6/SI49v7RyzcFKLfuAreWrIU6LRylXf1XI6MApVwZB3BYk5F90VNyLEgz8QE8SFv5oxES0Q+6vLLzooA2pKEMK4fJyrqKEkV+lxCtNrRfwdKR5oaQMPZM9MO5NLhJ17pjwlTKnqTMuviA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sHb/c0HukbnPumsG+nOuQm0Wx4BLTACDtLEzShdjP3U=;
 b=aq96NBMPtQyxkIEvwCMZlo5PlGojn+sXFLTiuGjm5hMUkPh7H/SoIFNcvFSq8lpV6gscP3qm6f9z5KqiM+e4EJJDvQts1CnRntGOHSAUNEuE5so/m4Z7OMClhK3lv3coFI/Rht7u9Cm2s7L3dJcltvbBw6b8EeUYLueJtItqmhkuZHV6k/S/Q3r2e6bJXCzszxpgyAVpYLZbcdhMc8QPzADp0/ZQPtPpGwfhhOgbnsxsNlNk64exXEkl6RLplEaSuFahHyDMduCGfqwmM7kgxi6pM/UuDdkO7AGzm22Ps7vfn05N2r+4Ocerg2XVmpehLhpgwuV46rat25Oj8k6Tfw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none
 header.from=math.wisc.edu; dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=math.wisc.edu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sHb/c0HukbnPumsG+nOuQm0Wx4BLTACDtLEzShdjP3U=;
 b=OfgUp7/zCbJeP6G4R8b8oKR0ZNM9BXkSbI1VEN5GAdUlgRnj3DYwWlTw9x2SnKq1el+yseVaoOvyuJEof0VUzaICZhw4+qdN8Mwbs3gelmcdKoqDyuXB2N7v3RtZQ6BckEbOpMYyFPFldPgsBBaxJoqfgBCJ8NXAxAYa+WZ8sMIZ20Wz44zr8CPNv9TN8Ddqlkjy4zIf9Z+w5XclbU1cORxpg+Rh3sl3B8F3jrBp3qGPHpHuIOfzLYp8C+0pz0JiKxOcs+cJozm/HtfY3d2XeuZfPYcxWvLYeFQBigN5CES7dyEr17Tp5Uc4CBL/asCcr3l2EhfhJMVgGPLHTh6HKQ==
Received: from BY3PR06MB8195.namprd06.prod.outlook.com (2603:10b6:a03:3ce::19)
 by DS1PR06MB10679.namprd06.prod.outlook.com (2603:10b6:8:21f::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.139.11; Tue, 23 Jun
 2026 17:30:14 +0000
Received: from BY3PR06MB8195.namprd06.prod.outlook.com
 ([fe80::a7ad:fb62:4389:fd8b]) by BY3PR06MB8195.namprd06.prod.outlook.com
 ([fe80::a7ad:fb62:4389:fd8b%4]) with mapi id 15.21.0159.012; Tue, 23 Jun 2026
 17:30:06 +0000
Message-ID: <943f1deb-5f8a-457a-b887-5f657260624a@math.wisc.edu>
Date: Tue, 23 Jun 2026 12:30:04 -0500
User-Agent: Mozilla Thunderbird
Subject: Re: Speechd-up -- nice!
To: Chime Hart <chime@hubert-humphrey.com>, K0LNY ?? <glenn@ervin.email>
Cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <aa9f5623-dba3-4686-9b5c-8144e409425f@math.wisc.edu>
 <031401dd02c6$798d33a0$8b01f80a@nucwin10>
 <d6e07425-3566-407a-a371-a4d8055e9764@math.wisc.edu>
 <036601dd032c$a63f17e0$8b01f80a@nucwin10>
 <d39caef1-9a00-0c5d-8b32-b1ac0d28a4cc@hubert-humphrey.com>
Content-Language: en-US
From: "John G. Heim" <jheim@math.wisc.edu>
In-Reply-To: <d39caef1-9a00-0c5d-8b32-b1ac0d28a4cc@hubert-humphrey.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: CH2PR18CA0023.namprd18.prod.outlook.com
 (2603:10b6:610:4f::33) To BY3PR06MB8195.namprd06.prod.outlook.com
 (2603:10b6:a03:3ce::19)
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux." <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY3PR06MB8195:EE_|DS1PR06MB10679:EE_
X-MS-Office365-Filtering-Correlation-Id: f14a64cd-f6ab-4d2d-55ee-08ded14d10fb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|786006|366016|23010399003|1800799024|41320700013|56012099006|6133799003|18002099003|22082099003|4143699003;
X-Microsoft-Antispam-Message-Info:
	KKLA8dxp21B8EZuBx9AY7JbwHsuD9bx6i1+uvpIbgD4+2hkK5l0xf9Zbz0SryiL2LeUR50sFgcnt0cEWxES1oRyRTjH55p1u7sj0j8SkVwXVaf736GROUhkM3cYTGflQxjQ8T6jAF8Kld17H/ACIkThJZAc3ugRlEBga19drQmX1Dz5PivNtcuaFyXEL8XDyN5R3GaZiNU1YB3cObmjmvjF1W2GoOXdo4fE9X9Y3iTcF/Wg3voAyYb2SxWSlXf5t/2gUjNeXdW19ixXd+cV9DhLaUSRVvapklQgSn3bIVlcz1u7JD7gdYNL7srujyGbspgJ7qFi20MF9P7RmdmF2oa99Mgo2NJ3vtDAAK/6JvXNTeFtzQiPoqPvSUydoEZn38l8KoBwJtUXgc6hd4ESw09sfMvsbPZp+gZGf09JLjF0uNJ4wOecrIEfAwY3rPaMHq74Ql2LYkhUhBCrU6TF1WQOCxndI4hMBtmXaW4G9YpA34stVHAONohdVdD1+jadzYDR31gguLKJ3omN9cFevLk4/UUubcQVJOyEaMa5hUIhrhAZC7I54e3S644t+KuZJtWUoufmBmzMcUxbbqHauCJLvEAqLyQaXMkD/msC4iO1c0BS94RSNgCkvjP8F8zsHpIh1W6APbpRUOh4nBPiGewei2Hk9PzaAXk4Yrn0CBhE=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY3PR06MB8195.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(786006)(366016)(23010399003)(1800799024)(41320700013)(56012099006)(6133799003)(18002099003)(22082099003)(4143699003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?U1o2N0UrQk01VUpTS0d2M2dCdlpoYlVjcmc3dlhOMm1XWG1nN1Vad0pVektC?=
 =?utf-8?B?aGYwdlpNM2h4SC9xeWo1YzFtSGcvNnFUd1cxYmZsVTI5bmRLZzl4ZjlFUzd3?=
 =?utf-8?B?VkpzMnplTDUrc3c4VEd3T3JVRTRWSFFBbGIwNEg1VjdFNkZRcC82WW1jUmdy?=
 =?utf-8?B?aTRpYVBkN2FCenc4RDVadm56NEdrUGtzSVUrY001ejRJUGpkVGtpY2hpK2tp?=
 =?utf-8?B?dzJiL0FOQkZpYkFFZEd1QnJGc0ExMjJCakp4MXVwVGpRTFp5d2JQMUFSMmc1?=
 =?utf-8?B?K3N2UVVhRno4akdScUFIODNvZkt6S3RaTVdzbHpHeUNvdTMrSXB5VUZzOUhm?=
 =?utf-8?B?cFp0NCt3K0dKKzBBbmhxL2RmNXVkdzNnS3liclpDYm5PWXg2WXdqQzB0Q0R1?=
 =?utf-8?B?SHRGNU02SnJnQ212VXphU0g2elc3NzFWdUdyZ1RLUFQ5cXY5Y2FodmRNMk1o?=
 =?utf-8?B?cEtmQmVNeW9oNTlFV2J1S24xRnhIa2oxaXBrdGI5Q1dqVlB1S2VFYVUvaWdQ?=
 =?utf-8?B?MVFvYVR3NFBPdGZrcWViN2l3ZHFZdk1FclpQOVdyc2pvV2RJZ3l0Ykh1d0NN?=
 =?utf-8?B?K0QwSytQSENnWEFEYXcwOHh5clJybGlvc09uaXNXZzdsYzh4UnlVcXNmMGNN?=
 =?utf-8?B?YlZmZXI3YkFQaXVEaU8zUUwxbFY2Zno2OUhZRUR1MFlCcGtjYVRPRGYvWktx?=
 =?utf-8?B?ZDI0eUV4S2JicFIrVWk3RDN2Z3RqS1ZHMWxHWU0vWHA4Nkhnak51b1BXUGtQ?=
 =?utf-8?B?UnNSU2RGYnBzNGhQaVkwcUU0Y1Zocy8wcHZzY2RTSXlOU0s3TG5oRExidUQ5?=
 =?utf-8?B?UFZhWE0vVm5jbkd4bk4vTzRUYkg4Tmh4TkZKb0VBMzZZZ2ZFblNTRVZJTGx2?=
 =?utf-8?B?bitvbzMzbWRKMUlPMXZMWVlta2hBTVlBdXVrTjVUOXdITjVFR2lkTUFOR0Jy?=
 =?utf-8?B?MGRKRHJ6Y3F2MDlVY1BOcGtjalZUR2EwVHB2c25hUEhKenltZDhkTkRiNUQ2?=
 =?utf-8?B?dWdkaVhUMXZ4NGdpQTBoWDI5RmFDMkljUmJsRXE4aDBYQTZPQzBNbHM4VlRR?=
 =?utf-8?B?L2k0OFUzejlnOG9uUVpNbFpFV1kzZTZUVnE3SlpycnhLN2dFQ2M0Y0ZSS1c1?=
 =?utf-8?B?WFdvZHlXOWJoRlFaUThGdENhb1lTL3dQeGp4Wk1Yc2JlclhnWGM3UEUyUWFN?=
 =?utf-8?B?SytnYXRyQ1Zva1RpelgzMUYyVlpGaUJheVV0QU5sUGFXVndJUlBzekJIVVli?=
 =?utf-8?B?M2lUVFNBNjJBclh5c2ZMd3NkSXNtY3VldEREdmtBOVNydC9WbU1BQU00Y2tt?=
 =?utf-8?B?bTdvQTJNTkZUdzFBL3FlS3RBY1lnU0xJQThXU1gvNk1FanduRE5iOW12ZFBm?=
 =?utf-8?B?QndvNlhsbmpZckgwQ2lVZndHQ29mWStEUlRkUnpZQjUwVFkyTktHc0UrSEo1?=
 =?utf-8?B?VmJtMmhmRitXdjNPK3BGL000R2lSSXhsOUpmcDZtbkRwRXRrVzljOWJ4T0JF?=
 =?utf-8?B?bDM1eEhCWXVnUTRwRFJKYTRZY21rdnBwTzN6WXl5YW1LamptWll6MHFMZHhp?=
 =?utf-8?B?M0RYNlF6UG1jQmlWd25GUk8waGorRWVwRlozR211alZ4SHpQTWkyRnYvOVlz?=
 =?utf-8?B?SmxhRlhFV09YR0tnSWJLdytUNXEzUEFjUitrVmZKWWN4YkZhSUxDTWJFOXRm?=
 =?utf-8?B?TjgwZWxmcGxrc3M4R1lIUUMvV0prNHdFZ2xQZkdJNTdRbS9jamI3ZUlmQkc2?=
 =?utf-8?B?dkhwVGlmREdoemUwcjE4N2oxQ2xQSGFMbU9PeTN3cllNdDJUeS9NU2N6YWYx?=
 =?utf-8?B?RDNCVFMwSG5nMG9IeHZHSFNtOWtjajFwUlRyb0NRanh2bWlRcm5raXRsbnlU?=
 =?utf-8?B?cWhJSHQ5QkZEZnlKZm9zSE5UcXFLcmFpVjF2SmZPYzVHcERGSnd3djZhbllk?=
 =?utf-8?B?VWhvbVZ1NlYzUmQwb0h3R1dRUFZtZjBpWEI5MDRMQzZVaUdjTWN6QlFFNnNv?=
 =?utf-8?B?RzBkQjNUd2lTanpCVUhHckVNL053aDRlakorMk82V1pMWjJLN1hlVGVwRU1v?=
 =?utf-8?B?ZllQZ2tSbjJkYWdDajMwMW9uYmZTeDV1M3UzbWJybjlQdFJnL2E3c2pCWEd4?=
 =?utf-8?B?WVBrM3lyeEpCa1B5SGthZlZES2xjSGg2LzFZeGFzRFNtZmVZdlJJZkIvZCsy?=
 =?utf-8?B?d0x5Y0ZFOG5LWDQ0ZkQ1MmplcWZnTWQ2a2tyR0RldTZiRkdUMkIrOXBoWXA4?=
 =?utf-8?B?NWV2QUNKWlArLzNxMDFIdlpucHpzU1dpTGVlczZtNDg5YnRQZlZVOVFrTCty?=
 =?utf-8?Q?3LqLSoANjxgj4KkHbM?=
X-Exchange-RoutingPolicyChecked:
	JGK5t1L9lJAy/bDQue6lJJTXnXFZwoGV7AwWEKeYJvrHjycvf+8oiT/DYBFV//UoFDyRm69XMH0Ng/b91nuzNF3fpFB9KS9aHH401Kb9+1FTiA8XOzB5k+ZaQLUMgpmrkoTcem1L24+vp6yHMa1kcfTTQhCY+K3UNrhd4D3d8KMiJ7QMFtdr4E+w+LaNHeMRgq8AGgyVKBkINlckcwy+SwzZsPhe10D63kC7rszb3EgVafB8zTzimrzGvbzZZxyzyvZkBp39wTUeTYeTHK3Rdaez9Yoy815ldC/HMxppphYLmgophUa1cPs/07dYYqQmLL0Zz5VglAZ6hDpZvlA1yQ==
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: f14a64cd-f6ab-4d2d-55ee-08ded14d10fb
X-MS-Exchange-CrossTenant-AuthSource: BY3PR06MB8195.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jun 2026 17:30:06.2305
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Sm122/wLzu2E1c42ppWpsn02E9zdXAje1E4sh02UeTV2KddtoTQTXkqoul+0pD+w
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS1PR06MB10679
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjIzMDE0NCBTYWx0ZWRfXx7zeXBIATOJu
 Hk8KeGVMWKi9MbWmU3YmXJ0rQHJhNPuYrx/YG03EWXo3IaODMzPLXnLLBQDhdKSHuu6ooBpLSyW
 4zMmi8Ir2XaPrCZgYgd/rCCmsxxg6fs=
X-Authority-Analysis: v=2.4 cv=BfvoFLt2 c=1 sm=1 tr=0 ts=6a3ac2a8 cx=c_pps
 a=Et1EcG/LeKhR1br1BBFfMA==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=lre9DRYkaIEA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=ZyELlZqCvD1aXIDzc3I-:22 a=8Xyu5n2RU-RuQlyQMiry:22
 a=DdXGLYZOht6lFm1NPG4A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
X-Proofpoint-ORIG-GUID: TFdKMGXUTw16eGlQ0QVYTbK6AUktahiu
X-Proofpoint-GUID: TFdKMGXUTw16eGlQ0QVYTbK6AUktahiu
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjIzMDE0NCBTYWx0ZWRfX29U2zh9bzktR
 FKRJQVoBDFG6y7LzzwMXdgN15W/9+5TpAUAwG1SdGSAkguMt9JbcfgVz1vlY9NSskIRux2PM6Wh
 t1VhcAmefDYtR5GEDL+AgMfFZSQbBz3J9e+nhm8qCdfO19kPIyEYGgEi1rs+7+gi/D3qnEMMfs3
 MB/rT/VdlZHzgF8GHdgWHmvYMg8eXRjdSIbaxz9ZA0vV88fjGwWwCUSUI3Z1jAg9Fg4I218UYoO
 xMNuzSE+F6XZkciap05n0kNF6Dv6XTfe+Y7unlLY5rmJajZ4uYGtQqR81vfIepQ0CG9o5isWJ0X
 fMIObUBHEtfhGQ90T1PNUjf5aWcB9iNjSdwz9X353k9iQFSuf0j2WZ/+51mobxOcCYEZlmhid0F
 3zZcty1fbZW9onSv9QWgFKSkL/utUpzPBchwoIGxtuVct7+gVQN6qgySp7/IGPR1nLTNe5MJED4
 fDQUXYzAtK4qjS3PN7g==
X-Wisc_ValidFrom: true
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-23_03,2026-06-23_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 spamscore=0 adultscore=0 priorityscore=1501
 impostorscore=0 phishscore=0 bulkscore=0 clxscore=1011 malwarescore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2606230144
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.89 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[math.wisc.edu,quarantine];
	R_DKIM_ALLOW(-0.20)[math.wisc.edu:s=selector1];
	MAILLIST(-0.18)[generic];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_NO_TLS_LAST(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-1619-lists,speakup=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_ALL(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:chime@hubert-humphrey.com,m:glenn@ervin.email,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[jheim@math.wisc.edu,speakup@linux-speakup.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[math.wisc.edu:+];
	R_SPF_NA(0.00)[no SPF record];
	SUBJECT_ENDS_EXCLAIM(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[befuddled.reisers.ca:rdns,befuddled.reisers.ca:helo,linux-speakup.org:from_smtp];
	FROM_NEQ_ENVFROM(0.00)[jheim@math.wisc.edu,speakup@linux-speakup.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:5645, ipnet:206.248.128.0/18, country:CA];
	TAGGED_RCPT(0.00)[speakup];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4080B6B90F7

There is little to no incentive to add new user interface features to 
Speakup. It is  never going to have all the features of something like 
Orca or the Windows screen readers. More important are systems interface 
features like supporting USB ttys, working with software speech, etc. 
The next thing I would do is to get the kernel to  recognize a hardware 
synth connected via USB and automatically load the appropriate Speakup 
module. A blind Linux systems engineer ought to be able to plug a USB 
hardware synth into a machine and have the kernel load the proper module 
like it does anything else.

I've actually started  working on that already sort of. I'm a little gun 
shy after the amount of pushback I got from Linux kernel developers. A 
large part of that is that I didn't know what I was asking. I have to 
educate myself before I ask again.


On 6/23/26 12:08 PM, Chime Hart wrote:
> Well, Glen, several messages ago I think you said "I hate Speakup" maybe you
> meant "espeakup" as well, I wouldn't want to waste even 1 byte of any kind of e
> speak. As far as the screen-reader Speakup, I think a perfect solution would be
> combining best features of Speakup-and-Vocal-Eyes. I agree as far as ROKU, but
> whats funny, if you use their voice asistant, you hear a Google engine which is
> `wonderful, but I tried convincing them to make that a defalt, but I cannot get
> to any1 incharge of Accessibility. Many other streaming devices such as an
> Amazon FireTV, AppleTV, and Google TV Streamer have much better speech. I
> thought I still had a sample of the same engine on ROKU, but I cannot find it,
> name sounds like microft.
> Chime
>

