Return-Path: <speakup+bounces-1495-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 5C082CF687E
	for <lists+speakup@lfdr.de>; Tue, 06 Jan 2026 03:57:03 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=math.wisc.edu header.i=@math.wisc.edu header.a=rsa-sha256 header.s=selector2 header.b=FvvGo2J6;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id DFCC1381908; Mon, 05 Jan 2026 21:57:01 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id BDC9D3817D9
	for <lists+speakup@lfdr.de>; Mon, 05 Jan 2026 21:57:01 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 91C6D381820; Mon, 05 Jan 2026 21:56:55 -0500 (EST)
Received: from mx0a-007b0c01.pphosted.com (mx0a-007b0c01.pphosted.com [205.220.165.71])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 32E3038096F
	for <speakup@linux-speakup.org>; Mon, 05 Jan 2026 21:56:55 -0500 (EST)
Received: from pps.filterd (m0316036.ppops.net [127.0.0.1])
	by mx0a-007b0c01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 605L751b360821;
	Mon, 5 Jan 2026 20:56:52 -0600
Received: from ph0pr06cu001.outbound.protection.outlook.com (mail-westus3azon11011027.outbound.protection.outlook.com [40.107.208.27])
	by mx0a-007b0c01.pphosted.com (PPS) with ESMTPS id 4bgmxdhcq3-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Mon, 05 Jan 2026 20:56:52 -0600 (CST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lNBJRCxmViacDt4C03D8fLgH28+G5EUt05/q2kfyYT2GIv15K0kpNNa9HsxI3Qmw7FQeZL2JUVeZGZynK3hw2iVVp7pbxUgO7lsNUcrtnMKHUwsR73ACGiLLh/lILkCG+ouxnle08MHFFA15ArRtuBkAEgUet3uQFr6hdfJsuj9alOkWAg5crzvdIje3J9+2KBHdlJFN4PsJbOSj4A4tweMBitN+VinLGlRKzugfoI2W7kw87+vcAVJfMlJkpCxMwZunrRh2zYS9BPakYa1mqqkOsWbxwfjyhIx8yyZFN6JgY5xHGXY2MXpHRulwCUhlIk2hXyCYuPNcx5xPO97HmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tA0tW7fjrUwC5JmbN8yq2KMasjRox+oV1czSe3zRnsE=;
 b=jux0C98OcMl8YsX9ERlGUq5b4472o1uRnsnjTj/7kz+GEqxFGjy2ogMtP+YNPJis25sUzaRzHGunziGoUljkgVYUJ+OrOFSuiZOtPUixVIvLlf7q7gKH5szcPr2Jt2zvS6fp2p1qM/LBBtNLmPojpbKYDxweymK6BSVN9fVFmZf68FtqUMrua8//y9kuzudf9WAGX++d5kkUksVG8eeZrqd3t+zsPb8wpyvs2PoLOABLjQZddzhzkke//378GRMr20bEyO11t1gtaAVzD61BV6PrFj4XfbPHvGZ6Qxmo1axUCTjfmGeXFhJT0IA2NosFS8aRUNKrLcf5ECurtvZG6w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none
 header.from=math.wisc.edu; dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=math.wisc.edu;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tA0tW7fjrUwC5JmbN8yq2KMasjRox+oV1czSe3zRnsE=;
 b=FvvGo2J6dyTytK3LIw3oY8kLcjQR9mBh/VveLcUTGzRdAyWC7w3z/hE6hZAfeaG1YOmsOYxH/jDyoJ1XF3OOb4UlPq3Hn60K6cqVPV1t7jsuozWSpTQpnVQaTmAFSQYhqad5+qUXR/1JbTSPF2uCHuTmcCaxgbUkEiWSXDj4sPWrn1ObRGKWDKt00GzY78ygScPAcIXlcOONwIkExYEO9QKUBAUAk1UObnZcg2GZB1IyMdI66+uGUsjPy5c4g4cy5zo1XqVwsZxPJ3SmI7sqzKN74JG5XBpecuslICxcl/OcnaDtfCow266soqnHjbVJ8+aVkwz1ZgP6MC+LB9YFtQ==
Received: from BY3PR06MB8195.namprd06.prod.outlook.com (2603:10b6:a03:3ce::19)
 by CH3PR06MB9313.namprd06.prod.outlook.com (2603:10b6:610:1a6::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9478.4; Tue, 6 Jan
 2026 02:56:48 +0000
Received: from BY3PR06MB8195.namprd06.prod.outlook.com
 ([fe80::a7ad:fb62:4389:fd8b]) by BY3PR06MB8195.namprd06.prod.outlook.com
 ([fe80::a7ad:fb62:4389:fd8b%5]) with mapi id 15.20.9478.004; Tue, 6 Jan 2026
 02:56:48 +0000
Message-ID: <e38b77f0-45ad-4512-8166-babf03f33d73@math.wisc.edu>
Date: Mon, 5 Jan 2026 20:56:47 -0600
User-Agent: Mozilla Thunderbird
Subject: Re: Building a hardware speech synth with a Raspberry Pi
To: Tyler Spivey <tspivey@pcdesk.net>,
        Cleverson Casarin Uliana <clul+speakup@posteo.com.br>,
        speakup@linux-speakup.org
References: <4f9075a8-0252-46f9-8594-1dab9286474f@math.wisc.edu>
 <01FF57A0-2383-4625-975C-944AE93F762D@speedpost.net>
 <eb7fcb31-4b34-4e31-a2db-67e41cc8a79c@posteo.com.br>
 <6b154ff0-fbfb-4eb7-9ca4-21ded53e7c22@math.wisc.edu>
 <7dc8be53-2745-4a3b-8ead-28be810a7798@pcdesk.net>
Content-Language: en-US
From: "John G. Heim" <jheim@math.wisc.edu>
In-Reply-To: <7dc8be53-2745-4a3b-8ead-28be810a7798@pcdesk.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: CH2PR11CA0026.namprd11.prod.outlook.com
 (2603:10b6:610:54::36) To BY3PR06MB8195.namprd06.prod.outlook.com
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
X-MS-TrafficTypeDiagnostic: BY3PR06MB8195:EE_|CH3PR06MB9313:EE_
X-MS-Office365-Filtering-Correlation-Id: bbb71e7c-c46a-4da3-48b7-08de4ccf3c29
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|786006|376014|41320700013|366016;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?R1pqTGZwUnY1SEJTMXArcU9kenVMTEhyZjFCWmNDYlNFdFArSVduSkJBem9k?=
 =?utf-8?B?ZmhxUXNQWWIxMCtucTBqdlVZTHU3eit1OWVpb3ppS2pJYzZ5Tms1clF4cnpJ?=
 =?utf-8?B?UDRZTmlwby9adWlIbTdielQ2SldyZERRcWFzT0NVbmdxR0xtOVRmK25qcHRV?=
 =?utf-8?B?dTc0NW9aWEp0dlo5bUtaQkVRdU9kVUwvM3FKTlFEbmhWc0t2aXUxSzFXSVlO?=
 =?utf-8?B?L1p1NGxzOG5HNjN5eG12VzBpTnpaMzFwOXl4WWhaeUhwTGZQNFhUcFdnOEh4?=
 =?utf-8?B?ZHZIMnBxbW1pcVNOTVphWmVibGd2Y2c3K2l3TDZ0UzFHSUcwSloyai9tRGRP?=
 =?utf-8?B?R2NzSVJuRk1RZlNPL1RVcGNDVXIxRkEzclowYythVUduWkNhdVh6dys4SjVl?=
 =?utf-8?B?Skc5YVF2WnhsWUZENVE1VkxUUGRXM2ZvdjZWZ09HWlFTMmRqSHZkOUVPQVRj?=
 =?utf-8?B?UzlPVGYzamx4aTNMZ2ttTDRkOHNQc1dyRU1CcVNGVVVpWEtpQ2oyU1I0R0hH?=
 =?utf-8?B?Vlo2R2gvaVU1SWZ2RmwraHNiSUpXSElRNVpub0VUVHQxRjQxZ0dzTDVjR2My?=
 =?utf-8?B?a3c0WllDWmpxR0xDZU5kZVB3d2lUYXZGby9ndmh5Vk1TOHlERzQ5Y1U2Qlhk?=
 =?utf-8?B?WWhvbVVQaEYzdDBYcnN3Y3RQSy9LclIwZTNwdGQ0UFI3aTNPZWZRUk9LaGpT?=
 =?utf-8?B?S2VkU3RPN1RKRTFhVUxDL3RoSU9lMU56QVZzMUdaK1dWLy9TdmwxVkVQMVdM?=
 =?utf-8?B?dEhla24vZXpwU205cURaTmE3akEwQ0tvTkJpSCt0Nm1maGFZVXgwU2tNOEdH?=
 =?utf-8?B?bURxT1phNFZ4REo5VytlYThzNWRsSEZsYWZNTmdnU3Y0SVBIWTVsZmR1Tkdh?=
 =?utf-8?B?TXY4UzZhcmREVEV3RzllYlFtL2tXVDBha09lbDB0UXNhd3BvYSt3dWNXR1gy?=
 =?utf-8?B?eWs3S1FCYnFnc3ZlNUl6SUdUNm1QS1Z5NnRmRDV2eFkxK3JIU3VrVHNHZVhV?=
 =?utf-8?B?OEpGQ3lId1pQSTJUaDBZdjZiS0pvd2tTODhFMzBMM2d1SjNrNnNicWpic3Ro?=
 =?utf-8?B?K0VnQzBWNm51cTdYZUZ5TnVVM1NkN1Y4b0tJb2ZPeWNVZGEwemRSeVp6WlV4?=
 =?utf-8?B?NXo4MGU4NGNSTHRxS0N4SEFhaWZQdmxWWlBFTzY1Rkl1b2FwOVlvdzZxTTdz?=
 =?utf-8?B?T2J4U0ticjFXbDQ1MFY1Um42Z2dQTlFyMjlTa0hLRnhEMWdhTjFUVjdPdytJ?=
 =?utf-8?B?b0J3aHBwZ1kvL1A2Q3hUTktkWXQyM05iMVZrRkF4ckQrRkV3KzgyQTI0aXpY?=
 =?utf-8?B?bS9kMi9GeEJVTFliQThOY2NMK2x4ZjVVNkNKV2Z0S3luVm05K29IYUJ3NE5I?=
 =?utf-8?B?YUtqczNVRzdCdlE5L1hCQy9UeDRUdmsvcE1KNlQyeUd1VE5YQnBiOEM4K2xy?=
 =?utf-8?B?b0FVbGptaHllWUhCbWdHNUdnRnZVdzQyOFc5QlNhUFRvUDFVM0tRQ2FTY0Vp?=
 =?utf-8?B?ZFZWQlJqcVdKQy8ybW9lZE12VUplMnMrQzJRWHBjVkJTY1hJM3V3djBiRWpW?=
 =?utf-8?B?TFp2K21BdHdrSmk3TmlGNWhTMWp3VGlEbWkzWnQwRXNNeDE1VjJFVHFWYnpk?=
 =?utf-8?B?QjhWZW5qaGNqZ0xhUmo3eXVlaVNoSm8yOUVLQXNhWUhpWVc0dUpEODZIb3Bu?=
 =?utf-8?B?NWdrOTNXYlV2c0RPcytzc0gzUytjK1J6ZmZWc2hiUjdxanJELzRWM09IT3JK?=
 =?utf-8?B?aWxqbENlZ1BWZCtwOTlpOFVUN2RvdmZLTGtwK1NjSGdnOE93dVA1eVREZm05?=
 =?utf-8?B?WG5Gc3l1UGZNdGVINmNJNlpWYnhVOWJORDBsSk1ldkRnalhvb3VaY0UzUW10?=
 =?utf-8?B?N1cydGZHck5vYnNhelZORVltSElTdXdCMjVmQnRXckhVd1E9PQ==?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY3PR06MB8195.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(786006)(376014)(41320700013)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?Q1VHWVUvK0ErbkFaWHA5N3ZVcGNjU0VvYWQxdUxiNHg0dU1HWWZES09VVTY2?=
 =?utf-8?B?MDFNZzhqQWpobm9ESmxHYUhSMlNKKytSaGV1RW5leWRxcjQ0YnRVN1ZNLzZs?=
 =?utf-8?B?TjZBa3YxNE0yOU1ML1ZCelBrT0pZaFp5V2RDZHZ1dnQrMzhvVWFidWo0SEQ5?=
 =?utf-8?B?VWhFY0V1UEFZMjlqZk4wejZsYStrTGMydmp3Z3pGMWV1amMrYUFpckJjaVg3?=
 =?utf-8?B?UnJ0SVB1dW9reFNiRUNWVFBDeWNQRndEVnZ2bjlwSkxqSHB4TElVUzdVQ0JD?=
 =?utf-8?B?NC9GbXNGckcyNEhSRkpXVDVuM2F2R2NNT01BeDNlTjJKekRtUmc5QVduM1Vv?=
 =?utf-8?B?WWkrbUxVNVR0UlF5NGtmOHJqd0ZTYkpiVUNUc2lCTWNqM1A1USs4bk5QbDlm?=
 =?utf-8?B?NURoUEFJZHNsUUtzNms2VHNJaXdlclBjTnB0TWMxYzN1TG0rWGQ3LzNxVmQz?=
 =?utf-8?B?N2VkQkdQdGYwVEYyYnd2STAvVVRPdTVxTE0yb3N4TlA4eCtrOU8zUk1DbC9S?=
 =?utf-8?B?clNVbjJUeUlmekZscXNNcHFxcG5ENWhuZnFPVmtxNXZNT3llalR4SHJ6TG9B?=
 =?utf-8?B?eG1kbDJJc0tBMDVGanQ2NnlYVmRiR3VJUnBtai9nZE1qQmpQd0xucHBnWEVS?=
 =?utf-8?B?RWZqU2JzNENucmNVUUZTZ3RISWE0MnJDeGZGdmNjbFlycmEzZGQ5WWxpZmpn?=
 =?utf-8?B?ajZ1VjBwbnBrRVlTeHVGc3l4SlQ2aXlrQmdCOWlrWUMwWWRTMW1mOEtXa2gz?=
 =?utf-8?B?QW5hK0hNWjd6aGlpWTQzV2cxV1RyU1VxK2NJZ1k4NmFraVF2OFh4UC9jSzIv?=
 =?utf-8?B?eEYvMmI0c2xFQUJrTXAzajUwSEd6Q25ZbUNXaThYQk4vS0FaUmdmclNOeEdJ?=
 =?utf-8?B?TmNUWFBieDJsUTV5TGJiOTFsSzcySG5iSHBEdDhlTFZGbzloMXNYNjlYaE84?=
 =?utf-8?B?S2VJazIvWGZoeG84TmQxT3NTRHZ2Q0YyTXYxS1A0TVcxMC9mREQ5b1dTMzdS?=
 =?utf-8?B?NDg2QmRtc29SWVJqanAzN3owZnpwSTdKV0lkUDF0ekdKR002QjVzSy9DRXk5?=
 =?utf-8?B?TTVKL1Bzc0ljZmxZcDdveXh5LzlMcnVLUWdZQWlpaDdiTGdVbE4rN1lOcnp0?=
 =?utf-8?B?K0NaVlhXa3g4L2IreGt6UmpqSWxwYkF0dHJXaGNpSHhQd0MxQnQwOFlYenAz?=
 =?utf-8?B?SkZJVTUzd29CVDZTM05qYlVIYVdlamw0L1c4RThIZkNzY3d6L2lWdmEzVVRH?=
 =?utf-8?B?ek9Hbi84aDlNd2xqZE5oTzJlb0kvdGNOcHgxWkNOWWl0cWRvdjl1SzluRmNt?=
 =?utf-8?B?MzBsaUNZZHA2RmNKZC95TVQrV0xwakpZZUUwOVJLeDFlRzlKU1VrV0gxUHhi?=
 =?utf-8?B?anc1UDYrSnk1QWcwZFRFOHVJcUEzNEhVZjJKdzBnMnRLb0pKWnk2dXMyVHRE?=
 =?utf-8?B?ckFjTkp5ZGMvdnNuR25iMFQ1dU45aElzeHRDb0g3eGN4WGhIdis3S25aakV2?=
 =?utf-8?B?TlVkcnZzWENCenRjUmMvZmdFSEVDM29Pb2hMaHR4T1huM0I3cGxZQzMxRGc2?=
 =?utf-8?B?Y0NOVkNzWm5RK1h0WGpNUFNLVWZJZUg3M2RLZ29SRTM3YUJsWmFHVExYUG9t?=
 =?utf-8?B?aGE0VmFWUXlyZkFBSklrQ1dQOG9qWTVSV2dHKytXYTk3Wk0zdysrNTlPZUxJ?=
 =?utf-8?B?TVE4K29VZlpQSHRGNXNaMmJyYTdGMjdPYVdWV0Z6TzNjOEVDWU9UVW5wVFpv?=
 =?utf-8?B?cmlLL3ZqbGZ3MkZjckJHcmViZVN0cVd0MnhwUzRKdVE1a3FNL1o2MTNZU0My?=
 =?utf-8?B?dE1xSU1NeHQ5eDNncHI0a3RLZHZmNHRUSC9oOEI1QXFPSHgrN2REOHNVRlVH?=
 =?utf-8?B?b1hzT2N2ZjhxM3AwcEJBN2FzOHF5MTVoQ3JkbDhickpvVTBvMFFoWVViSGRT?=
 =?utf-8?B?alQraXhMQ095QkNpcnZmYXdrWkNHWm9GVGw0ekRBZkh4ZS9tU1Y4cmx1MEtJ?=
 =?utf-8?B?UnlwOStLeTNOYi91NVFCejNrd2lRZmx6WlRjamZCeXZ1cjF6NFd2UklUYzkz?=
 =?utf-8?B?TGx2WldFV0ZuaDRnbEx0YW9ucTZQa3YvK0VPMGtZYTl1aEFLck9oajN2YS9J?=
 =?utf-8?B?S2ZHYVpRNVRxcjBpdWJrZjljK2ZBK0E4Wm1FK3A0OU9JTEt0a1RHN3FtanY5?=
 =?utf-8?B?VlBUMEZFNjQ4Tk9HY3VlejBhVndqblBSQjNJN252anRVbG9BM1hTRE0rNkZx?=
 =?utf-8?B?ZWRSZDVTSSt6ODdjdnpUb0J1ZGZTdkVJWFYrQ0VjbW9IOGlqQ0cyWExaNGtp?=
 =?utf-8?Q?iZr4z2ADKfzVNf1l/M?=
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: bbb71e7c-c46a-4da3-48b7-08de4ccf3c29
X-MS-Exchange-CrossTenant-AuthSource: BY3PR06MB8195.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jan 2026 02:56:48.5457
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DCFeikfS5EXYrno1S99PHTaR/qQQvP86qaP0rTPrlA5kTHFvpSRMc6j7YzyezJAd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR06MB9313
X-Proofpoint-ORIG-GUID: KDiAw70O_5RnzIa55JLCW9HJFr6qnxb-
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA2MDAyNCBTYWx0ZWRfX+ET20uLm8vra
 AIoZwMWl46IFVINifdDNarvcgsXEySqUVwfweY9qJ2E46s9jc0lunPYTrq7cAuQqXFrrLQUwiCO
 kIAWl86osXw6CorlyMW4QU8SfW/cMBTPDt2hUo9LyMp5n5VlnMIc6ilSRvcKtgPJsMGqMaPTcLm
 hk2Orp1njqnV6X4gNSNtTAVps8MIeWPHXEut1egd734KuqZ0bL9o9fEgkAObVxO7VX9TdGxXKWN
 Jq0kT2VQw8+oW2VV1Rb0ALopIjEj7US2Z797PiAQsfKTuI/lMKSEGPbkyGerEDGxPMb1MWhh6ZY
 U9OCRdKjWs1XPbejALcRaAXKps35kHOJCBQyNkcozX9hfwfI187hicpkskJ2TTUhwMq91bfWvbG
 jy0xdgRwC3OZBy12Qqw44ovH2qSwxsCdOvSXUCPqaceJo7Awl5Duug117eDOj7d3xOc4hJ19Ak2
 dpNY0UtBfQFIWu650rA==
X-Authority-Analysis: v=2.4 cv=CrKys34D c=1 sm=1 tr=0 ts=695c79f4 cx=c_pps
 a=iNm6N7YJuWyXLwPauF+ZSw==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=lre9DRYkaIEA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=NEAV23lmAAAA:8 a=Vqq5rTnOAAAA:8 a=FP58Ms26AAAA:8
 a=-PGjcZCnaYbwJbOxGi4A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=wpuGCMELHfcVa7GrM9FT:22
X-Proofpoint-GUID: KDiAw70O_5RnzIa55JLCW9HJFr6qnxb-
X-Wisc_ValidFrom: true
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-05_02,2026-01-05_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 lowpriorityscore=0 priorityscore=1501 suspectscore=0
 impostorscore=0 adultscore=0 clxscore=1015 bulkscore=0 malwarescore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601060024
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

It doesn't seem to matter much which synth you emulate. I just changed 
my desktop to think it was talking to a BNS instead of a LiteTalk and I 
couldn't tell any difference. My fake speech synth behaved just the 
same. And there was just as much noise coming down the serial cable.

Paring the data stream from Speakup is going to be more work than I though.


On 12/28/25 2:34 PM, Tyler Spivey wrote:
> Writing a synth emulator is easy. Getting it right is not in some cases.
> Here are the ones I know about:
> 1. 
> https://urldefense.com/v3/__https://github.com/tspivey/vbns-ao2__;!!Mak6IKo!OWVWYrQ3MdIfjS5SqocP8SRHzES9CLNXWJ3EmZNVya0O0ynrEjyNaaj3aG4he1OJoTn9TUCXe0w9AkwLGT0$ 
> This is a synth emulating enough of a BNS to talk. It has only been 
> tested on Windows.
> This is a fork of a fork. I wrote the original emulator, someone 
> modified it to use accessible_output2, and I fixed a bug in it last 
> year for my DOSBox guide.
> 2. 
> https://urldefense.com/v3/__https://datajake.braillescreen.net/tts/dectalk*20software*20and*20manual/dtemu.zip__;JSUl!!Mak6IKo!OWVWYrQ3MdIfjS5SqocP8SRHzES9CLNXWJ3EmZNVya0O0ynrEjyNaaj3aG4he1OJoTn9TUCXe0w9KLxWav0$ 
> This is a DecTALK emulator for Windows, which sort of works.
> It would probably work with Speakup no problem, but the DOS TSR uses a 
> completely different protocol which isn't emulated very well.
> 3. 
> https://urldefense.com/v3/__https://emubns.sourceforge.net/__;!!Mak6IKo!OWVWYrQ3MdIfjS5SqocP8SRHzES9CLNXWJ3EmZNVya0O0ynrEjyNaaj3aG4he1OJoTn9TUCXe0w9CkO_Qnc$ 
> Another BNS emulator, this one for Linux. I don't know anything about it.
>
> On 12/28/2025 8:08 AM, John G. Heim wrote:
>> The synth emulation is independent of the speech itself. My python 
>> emulation script acts like a LiteTalk (for now) and speaks via 
>> espeak-ng (for now). A user will never care about which hardware 
>> synth it is emulating. They'll have to know which synth it is 
>> emulating but it won't effect their experience. They might care about 
>> the speech though. I intend to get the emulation working perfectly 
>> first and then add support for other TTS engines like voxim and 
>> festival.
>>
>> The only reason the choice of which synth to emulate matters is in 
>> how difficult it will be to code the emulation. People have said 
>> there is already code out there for emulating a DecTalk but I can't 
>> find it.
>>
>> PS: I was able to log in on my desktop and ping another machine on my 
>> network using my Raspberry Pi synth. It was a struggle though. I 
>> thought that once I got this far, I would be assured of success. But 
>> there's a huge latency problem. I figure that's because I am using a 
>> bluetooth speaker for sound. But if it is because of the USB hardware 
>> on the RPI that could be a problem. It could also be that my code is 
>> inefficient, forking a new espeak process each time it needs to say 
>> something.
>>
>>
>> On 12/28/25 4:51 AM, Cleverson Casarin Uliana wrote:
>>> I think that ESpeak-ng is more than enough as a synth, because it 
>>> supports tents of languages, and also because probably most users of 
>>> this project won't use it as a permanente synthesiser, but mostly as 
>>> a temporary solution for experimenting and installing new systems,
>>>  among other sysadmin tasks. AFAIC, Dektalk for example supports a 
>>> lesser number of languages than ESpeak.
>>>
>>> Regards,
>>> Cleverson
>>>
>>
>

