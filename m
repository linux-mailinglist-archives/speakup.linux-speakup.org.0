Return-Path: <speakup+bounces-1616-lists+speakup=lfdr.de@linux-speakup.org>
Delivered-To: lists+speakup@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id fcNtB8S4OmrcEwgAu9opvQ
	(envelope-from <speakup+bounces-1616-lists+speakup=lfdr.de@linux-speakup.org>)
	for <lists+speakup@lfdr.de>; Tue, 23 Jun 2026 18:48:04 +0200
X-Original-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 84D2F6B8D5B
	for <lists+speakup@lfdr.de>; Tue, 23 Jun 2026 18:48:03 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=math.wisc.edu header.s=selector1 header.b=ZZWLMvtP;
	spf=none (mail.lfdr.de: domain of "speakup+bounces-1616-lists+speakup=lfdr.de@linux-speakup.org" has no SPF policy when checking 206.248.184.127) smtp.mailfrom="speakup+bounces-1616-lists+speakup=lfdr.de@linux-speakup.org";
	dmarc=pass (policy=quarantine) header.from=math.wisc.edu;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id F0D68382674; Tue, 23 Jun 2026 12:48:02 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id CD8C73821A9
	for <lists+speakup@lfdr.de>; Tue, 23 Jun 2026 12:48:02 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 8742C38262D; Tue, 23 Jun 2026 12:47:56 -0400 (EDT)
Received: from mx0a-007b0c01.pphosted.com (mx0a-007b0c01.pphosted.com [205.220.165.71])
	by befuddled.reisers.ca (Postfix) with ESMTPS id DE5073821A9
	for <speakup@linux-speakup.org>; Tue, 23 Jun 2026 12:47:55 -0400 (EDT)
Received: from pps.filterd (m0316037.ppops.net [127.0.0.1])
	by mx0a-007b0c01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65NGB0Jc3257331
	for <speakup@linux-speakup.org>; Tue, 23 Jun 2026 11:47:53 -0500
Received: from sj2pr03cu001.outbound.protection.outlook.com (mail-westusazon11012000.outbound.protection.outlook.com [52.101.43.0])
	by mx0a-007b0c01.pphosted.com (PPS) with ESMTPS id 4eywef08g0-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT)
	for <speakup@linux-speakup.org>; Tue, 23 Jun 2026 11:47:53 -0500 (CDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=v5tGVG9KYbPqtMtvlcNwmvo9ZnYgKqpenzLM1e5et+jSgoDJg63qzyMiR5B41D8bJnrztz1ko0SZ/CH+rxmqzjyY1xjDklcn8ylbV/XkqF47smo1szlQdRlLftZHVMCEln6HM84taiiMqFd4wSDS+/y45bLb5Akck4Fv2Hn4yITV6y5Q8RkLED67LzbXsG29tFU8bsSaN+OyKQPakxXYB/OyMIXkKpBVfts6JRQ0RatymoIggsaFqfRbeutsDtMdK3EiNnLiyoGuR3x8qcR0u2tklIDpIReklfx8rYwAKOhUysaN2nwptsorrSwkqALCUuTZHto63FVL/KAiQ1S6Fg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=y7Vf/oFMDPIh8SgsSF6F2VIFB0QsU94KVAiKVRxyES4=;
 b=vnW0G9OCFSi+U2xzkbqiK1L633kTrz51iR90GdNNy7iANMphAVbzH6Rz7nWb1FuuPkz8ok1xCz3uFYlinjg5CBO49Uukz+aqCWamOginiCrHJVsOjeg11oL0yT8rEAdjTIC27K0H2bgEQARrAft9vQE2UlNjIGCay7vNDV8v4ezMOwMSIFf2PRmgn/gM/sBAXETrhPbcQvWX3RygPdL7zC2ml5OzlwMdsXpBStJH7BHkubfJRgYQTs5XHC8fS9dwlfdBqzJGHVsNlsFwTeW96NEEUZGD+l3gQdZZGWrR68JTSctzagM0g79RgiVQLVRz1gFRzUG3Pkekvwujg43rtQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none
 header.from=math.wisc.edu; dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=math.wisc.edu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=y7Vf/oFMDPIh8SgsSF6F2VIFB0QsU94KVAiKVRxyES4=;
 b=ZZWLMvtPkWcHAR7suD6minZLQOw/9aaNIQLj60bl5hRvmcUNKjzauC8Q+Jwl0S3WPM/xwzZVOYcqw2KFuuJK/ZUcOonD8asgKEHnI2J5dPlfE63KZ0aaafJWtImcw8gEarT2rcDHnbs2ovAtM0b36/gEu7XixZbSdLLlCyCIfrS7N5WUSGMSb8km1guhvdi/1VaGSNSjkTMeIJpRSIK6jKOLysPd8dgYkJldORF2yJekiS1JQ59fBCglDdblLWlPq0oww+qbAjOweL7JFEVJ6ZcHPSsS+IbOrm+xNnxd8kLVoAdr1DFvMns0J9M2QhjZmQA+C8lb6hrSL1/bpxGQwg==
Received: from BY3PR06MB8195.namprd06.prod.outlook.com (2603:10b6:a03:3ce::19)
 by SN7PR06MB7294.namprd06.prod.outlook.com (2603:10b6:806:104::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.139.20; Tue, 23 Jun
 2026 16:47:52 +0000
Received: from BY3PR06MB8195.namprd06.prod.outlook.com
 ([fe80::a7ad:fb62:4389:fd8b]) by BY3PR06MB8195.namprd06.prod.outlook.com
 ([fe80::a7ad:fb62:4389:fd8b%4]) with mapi id 15.21.0159.012; Tue, 23 Jun 2026
 16:47:52 +0000
Message-ID: <a1b402d5-1dd3-4238-aa49-afaed8f71545@math.wisc.edu>
Date: Tue, 23 Jun 2026 11:47:50 -0500
User-Agent: Mozilla Thunderbird
Subject: Re: Rewriting docs: update
From: "John G. Heim" <jheim@math.wisc.edu>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <6cfbf1a1-34d0-47cb-99e7-d1797005d7d9@math.wisc.edu>
 <2b25f8f6-753c-4596-a1c8-f3150549c2e4@math.wisc.edu>
Content-Language: en-US
In-Reply-To: <2b25f8f6-753c-4596-a1c8-f3150549c2e4@math.wisc.edu>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: CH2PR08CA0005.namprd08.prod.outlook.com
 (2603:10b6:610:5a::15) To BY3PR06MB8195.namprd06.prod.outlook.com
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
X-MS-TrafficTypeDiagnostic: BY3PR06MB8195:EE_|SN7PR06MB7294:EE_
X-MS-Office365-Filtering-Correlation-Id: b611d52d-222f-46a4-1a5e-08ded1472ab5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|366016|376014|786006|41320700013|1800799024|23010399003|4143699003|56012099006|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info:
	Lr/ZItUCyXMVDFXc1b7aP5qK4v4JUEiKqWwZ6hKqjEHtlVo1KiEFaPv9NPgZ5iSsZABojHWIUpBD391urGD75fuNqkEfjKAgWPz3lXM8ZbJ3arjWiAV1RMlEIr6COy+n6mld1GmKhJH0QqIDSZ0ZW/cgIrS5jNQgO9qy/MMYHsikgSgi/6jR2arWmhoYg/gibghLK3R/rPOoR3v2gP/nIWR9EjgHFZot+/Db9KcMMssoSb7/BHQDyavHmaM1/43cFO3lsK1/fB0V7wKjAo9ITiurA2fp8EFTM9Bja/ZeOLzYZ8CeITgrGrMPSui0I3Ha7RWRbhk+aoRGJ5XmkT1ztf+2fA177ZBiQYOHKvFPvnnguL3g3wrXMXfWiy29kawKp034MpkI5pvlEUnQexCSO++/c7CFFWciieS7zXO776s6o4C92+FwQYW55FuahEzAlhem/oyzZy71szTDdxB39vvHBlXva72pvIjrom/NBSew7bzd3X1CPTybdlr75ruNKASoU8Vkj6uvqZO77QN0+muvLmc/t2q5KDnljx3mS4mMgQmYWDIOu4AGrNMRblqrBI57Pli5j0egED6aDQEd65dO18il47n6jSpE8KgLTZAc+tthVsbzyxF54lhFft9DXMfLHevpfUNUHZNA7x6WZfEbvN+awVfdf1i4H+XJzY0=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY3PR06MB8195.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(786006)(41320700013)(1800799024)(23010399003)(4143699003)(56012099006)(18002099003)(22082099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?WUFLeUQ4d1F2VEh4djZ2Y0ZxOVhrOGVUSEdzK1JyQmx0VExCWUQyK0FPQVhC?=
 =?utf-8?B?YWZQbHp6WnQyd2djNDA1b0JFL3RkS1hHb0ZVU1lwV0xoN1dYN0lVd1RDYXhQ?=
 =?utf-8?B?UUlYU0pwUFMxT3dvVXRSN1l0K0lodjhxb2NtTHBmUzFpaXZONW5jSHlHMEp0?=
 =?utf-8?B?UVdwdjUycVVWTTJqRWlCbmNQZ2txL0FSd3JXblZrek9yejQvczZ5UU1XcEcz?=
 =?utf-8?B?eFZkaTM2OEtVaXBUZlA4Ni9VWjhhQ3dZZEZXamxHWnFrSEk2OGVGenlXOE13?=
 =?utf-8?B?Qm5BU1BhS1pGRkdON1dwMk9zMlg0MEo0T0lmcW9JQ2NmQ2RnVG9hSit2NHlS?=
 =?utf-8?B?ZjdTSUlyVFpWa0tSTTNyRVBjRmlhamZZdU1CbXNnMGtEdDZDdlRzaGlTZnlC?=
 =?utf-8?B?RzEzVGNBR3F4bGRheThTQkF2b3VCOGNyU085c3hRSU5sUVpFaWd4WUtBSlBu?=
 =?utf-8?B?dXcvWWVnMWNQSFY4OGg3d01IMkNMMnVJRUN2eE1vcjM5U3U3VlFjTkRjQWdl?=
 =?utf-8?B?RDVFeGdpODFkMG5TekVyOG9RREJ6ZUUrdFdVNzlnR1VUbm04OGJNTy9JTDFu?=
 =?utf-8?B?bk01bks2dXJpcHpMRUJ6WWNaaDNOZjdxaGE2ZDhrSkNaSzlqWGtTbnEzUmFU?=
 =?utf-8?B?ZC94cVlKVS9QTHk0RU01Rm55eDN0WVhsVGVvWjB1Wjc0S0pmeFNQU05UM3N3?=
 =?utf-8?B?NjNrNElTTkxiQlZWQ0I3ZkwxbHpRSlN6RGZDQjZVVzRtTnBrVnQ5cjVnQTVW?=
 =?utf-8?B?bUdaaURIK1FuYmVGZ2lqZVlYMEZ6K1VWSXk2UXNyRUlaTEN3SE56cEc4blpT?=
 =?utf-8?B?N3BHYmMvZ2RXUEV5emE1bElvZ29WUXhzMm1QMmhKWnRBM00rcTJ6WHIreVN0?=
 =?utf-8?B?dDFVNEVyOTJ1T1FGNjhIek9HbFN1dEtYT0d5Ui9PVSsrM3BvQitKZWlIYjJY?=
 =?utf-8?B?bG9McGhRTXJyeUd5bTRSbzcyVXpMZVN6ZTVETzdvUjhGNmt3VEZsTkpsNGRn?=
 =?utf-8?B?OE1xM3B2THR4T0VtVU1NaUxBYkJ2NThPelNnT05PNXczbEtIVGtRbi94a2Fv?=
 =?utf-8?B?RUxPTVBTM3BiNmFFMzVGTnZlZkNmTjVFNDlrN09vMHpoQkdmcHl0c0ZIcWVM?=
 =?utf-8?B?YzRON2dwVUhDazZzOUJqY1lMRXZ4bWRQQU92T04wdXduVWhFT05udEQ0R3JW?=
 =?utf-8?B?YTMvcTBOZzkvbnRYc1JaWEFvWUZJTDdVcW1lRGZRWEhvcDNmY2l1RCtLcXRG?=
 =?utf-8?B?ZEhEbFJRV0l1ZXdla24yTThNZ1FWcExGWUJhOTlHc0FyeWp5Wngzc3hwOWxW?=
 =?utf-8?B?ZkQ5OVBrRGZMOWZwcE5oYVRhaXV0RHJyc0VtQk9XSE9xRlFFcmlLcDhMSXQ0?=
 =?utf-8?B?T01NSDJJTFJURmYvSXhDVlNvWDZKL0xnS1BINXd3QUZHQitsRGUzeXZGcm44?=
 =?utf-8?B?NkpqayswTENIVmt2YllZVlRVVkc4c3kwQ2xNNG9aNFZDWjNuKy8zZTgwSGlR?=
 =?utf-8?B?c2JHMVZYT1l5eHRiR2FpdmpDZjV4VERkTldEMUE0ek9DVEppOEYzTnlyNndE?=
 =?utf-8?B?ODRjVDFCOWk4eldoWGZqc2FoaHhQNnBwOGpwQkx4SHB3ZWVWSVYwQXRNc21M?=
 =?utf-8?B?Rys3QjZFU0o1ejFJTVdxQkNvMEZaQXFIMit2WFVHU0QyeWFmMitMQ0p3M0Nl?=
 =?utf-8?B?WmIzc2k1RFBQT0JZaGxPUk4xU1Z6MTdoZXR3bUloUzdYc2VRUG5kcjZDNEhC?=
 =?utf-8?B?TnNNNHFhR0MvWGt1c1E4WjQ1Y1h5NENQVmRYMzlrRTFCMXB6eGJFTlRNcUxZ?=
 =?utf-8?B?NFdlL1BiQlZSdk82Y0duRGhxZEt4ZmdiYmZxaG9Vekh0ZHMwbzUwdldNOVkr?=
 =?utf-8?B?V2dpczh5VVJzZUk0MVk3UVRMRkduaEpmdmg2bTZDN2tZUmVTRm5yblNWdDkw?=
 =?utf-8?B?aEZMY1hWL0lXUkpjdmhYdUc1UDg0NWZlRnZrTHEyYXBQVHUzNnp6N2VIRm9h?=
 =?utf-8?B?ZDlJUHhhQlgxWTU5MnhtOS9mdXNYYVZhNW11R0U1V0tZbDB1aGJ3cDhBdWU3?=
 =?utf-8?B?bWVLMnBoTEFGL3FpVHpNd29lMTY1akxFOGNQVDNYM2xPVDNpcGorK24xWGtV?=
 =?utf-8?B?SWFSa1o4TWRwNnFsQXpyc3V2T0t0dXk2L1NiZkNadGtyTnhZK2pLN09jQktE?=
 =?utf-8?B?MTlVQURSUVpkUnVIaXdsUWVVamRCam9NcTRacTNGV0NkbXJvY0toQXpFYjFJ?=
 =?utf-8?B?RzF3bDEwUlphNUd3anF6SlFXUS9qY25iMXZ4SFRFZVJpb2lFUHYrQXZqNHJU?=
 =?utf-8?Q?I0klzhpJY/h0mgEX4q?=
X-Exchange-RoutingPolicyChecked:
	J0PuyO6tHBgnWGwinx93vTGUwbichRyAqgkv7RWr4bn+ZQsckUXedXtLI6g7mk7JHPGzH3Qlfvg1FDjPbnhFI/L8FI8aMz08VxTtkej6TIpjkLi2+rYrnopYockmGjj+4cq7J0XJN9m93zJewdBYkyNY9104BQRCzmXJLJg8MoXoILQYcExtl5asEvKQoi5jg5Wvq01AbBKR2NB39uOR1kYToUviogD73hNUiv/UTsbLb4C7Ys51UXMy2Z8XkrrE/3wca6nQ1VVkMfHxKicJWuwNtKCXJuNZpjs/p4xIpouil82tUhDQwB2we6MU4n/M1PGvpaYgstwGFW++LiC23w==
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: b611d52d-222f-46a4-1a5e-08ded1472ab5
X-MS-Exchange-CrossTenant-AuthSource: BY3PR06MB8195.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jun 2026 16:47:52.5125
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CmzwNU3ceo/0VaFWX8VldTtRWJ3ZKluT+OX8S0xOtyNyG1C5dcQoqfQ9Za7vL1aD
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR06MB7294
X-Proofpoint-GUID: KQzqZnVyTx-_-Pu6wrNgSNaHW463Ehsp
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjIzMDEzOCBTYWx0ZWRfX6aUWL0hPzUJ5
 YYL5x+dmR/zJWnfbe8KK9WvBS5r5qcavcA5DV+YxsismHgi4a6VJoWOMjYd8VHvT6DDEdKMP6cw
 CmCyL/e1cgK397KhiG23AyMUFzmfqrI=
X-Authority-Analysis: v=2.4 cv=baxbluPB c=1 sm=1 tr=0 ts=6a3ab8b9 cx=c_pps
 a=ikyLliMNhLjillvDIwfXbw==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=lre9DRYkaIEA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=ZyELlZqCvD1aXIDzc3I-:22 a=ITryANUCd-Ynqp4Uyibb:22
 a=DyznqomoAAAA:8 a=Pc4AkupRSG4gC7Isu9UA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
X-Proofpoint-ORIG-GUID: KQzqZnVyTx-_-Pu6wrNgSNaHW463Ehsp
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjIzMDEzOCBTYWx0ZWRfX7F1ipTZv8tVR
 l5va1gesYFWwf3bRtcNv9CFJlzjsZCc+nDmJMOvSlql/IayzXFv9kidtYStRU5YzuF2/A6q0dAp
 odZ9uDoHpvWEUwURgxKrAaHXnwI/cG4oHUrnlt7hyIY2zpFceeKv+QGEwpYLOtyeGJCw2GnC1zi
 C7YRVTqRmXr3DXH+Y7wRRAmtn84XfbrtCyaIQyetc37SYU7PGao6gCWmybCb+Ygtcf7Lo7m7tq1
 XrEl+r2WU/yJgZo1tCOcNLlQsDC91RTIsj78CEB5HHfbAlOIY3Z2aAfERMGWfc/RRAVNUlkLOu8
 Tl7HnpiqlUgtcfO4Y1j1kEazCR7qgloxHNK/BXJ/noKXdNTpL+VlkiH9M7tHLM/+zldIbtDu6t5
 0p/nBRNg7jwvrZFjH5/x4SvUgcQ5g5K6edIlrNT27u6UZ8EbsnKnSNvZOxFNS0jmK6PApc38DUU
 u0BVRaVc35711VKjXfg==
X-Wisc_ValidFrom: true
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-23_03,2026-06-23_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 suspectscore=0 lowpriorityscore=0
 malwarescore=0 spamscore=0 bulkscore=0 adultscore=0 clxscore=1015
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2606230138
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.89 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[math.wisc.edu,quarantine];
	R_DKIM_ALLOW(-0.20)[math.wisc.edu:s=selector1];
	MAILLIST(-0.18)[generic];
	RCVD_NO_TLS_LAST(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	ASN(0.00)[asn:5645, ipnet:206.248.128.0/18, country:CA];
	TAGGED_RCPT(0.00)[speakup];
	DBL_BLOCKED_OPENRESOLVER(0.00)[befuddled.reisers.ca:rdns,befuddled.reisers.ca:helo,wisc.edu:url];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_ONE(0.00)[1];
	RCVD_COUNT_SEVEN(0.00)[8];
	FORGED_SENDER(0.00)[jheim@math.wisc.edu,speakup@linux-speakup.org];
	R_SPF_NA(0.00)[no SPF record];
	FROM_NEQ_ENVFROM(0.00)[jheim@math.wisc.edu,speakup@linux-speakup.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	TO_DN_ALL(0.00)[];
	TAGGED_FROM(0.00)[bounces-1616-lists,speakup=lfdr.de];
	ALIAS_RESOLVED(0.00)[];
	DKIM_TRACE(0.00)[math.wisc.edu:+]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 84D2F6B8D5B

I should have mentioned that I am currently working on the config howto. 
Everything up to the stuff about configuring Speakup in the initrd 
should be correct and complete.  The stuff about how to config Speakup 
in the initrd and everything after that has only been roughed out. And I 
haven't even gotten started  on the user's guide yet.


On 6/23/26 11:41 AM, John G. Heim wrote:
> Here is a link to the documentation rewrite as it currently stands. 
> Constructive criticism is welcome.
>
> https://people.math.wisc.edu/~jheim/speakup/
>
>

