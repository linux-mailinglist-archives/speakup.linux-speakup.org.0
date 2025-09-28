Return-Path: <speakup+bounces-1424-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id EF465BA653F
	for <lists+speakup@lfdr.de>; Sun, 28 Sep 2025 03:07:33 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=math.wisc.edu header.i=@math.wisc.edu header.a=rsa-sha256 header.s=selector1 header.b=MjeoYOlC;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 4AC26382BD3; Sat, 27 Sep 2025 21:07:32 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 20BC4382B92
	for <lists+speakup@lfdr.de>; Sat, 27 Sep 2025 21:07:32 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 74C65382B95; Sat, 27 Sep 2025 21:07:24 -0400 (EDT)
Received: from mx0a-007b0c01.pphosted.com (mx0a-007b0c01.pphosted.com [205.220.165.71])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 6734C382B77
	for <speakup@linux-speakup.org>; Sat, 27 Sep 2025 21:07:23 -0400 (EDT)
Received: from pps.filterd (m0316037.ppops.net [127.0.0.1])
	by mx0a-007b0c01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58S0UZob000718;
	Sat, 27 Sep 2025 20:07:17 -0500
Received: from bl0pr03cu003.outbound.protection.outlook.com (mail-eastusazon11012067.outbound.protection.outlook.com [52.101.53.67])
	by mx0a-007b0c01.pphosted.com (PPS) with ESMTPS id 49dayxxf79-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sat, 27 Sep 2025 20:07:16 -0500 (CDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=oFIoATc8giZv5DsU2Ls05PwlsZ8HW1AxMtfC+a7Iw9kf0v1ODugFsQDFXJIZx14W/SG9gfkPlqwwvO9/ICpTNiyXrv3uK8qaNWt4JdKwRsXl+Ede399zk4HZ1TbsSwCK3L0O4Tzx2wfqo2DSauU/LMrxM9tiImnwZ8n20zTdHuss2AWchg/gLiCrbR20aYdqzV1ijmaGf7v5QvaDLuDkEBoGWIZp56ORFxmJXN64rvBN95ANFNkngcks9rLmneRxqRl5/SwO/5eYnZ7cBxMx8WOZwJwnlxzLTblPpl3RDWEUDrBxzpbL/4X88myYzOfwQOmAjvbSxLNzqpBt5RzTdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kTCMilwPBB1+cxf8qOxjfzZQLIppD0fqWdDwWbrGv04=;
 b=hVMjR03AnRT/4ra/ip2WC7z+8zbyCc6jibBGFYFwSoc4C4UEDszOzqAHqk6mjZv4ePqdzbs2iwFAQRNrPmK1LR5ckqKcOdhUTqjPaOvhzv/1ltt3HCrjM+bGvdAAfSOqpskbMJtyVX29g2Sb03dHf6kbnqdDbF5SKWugBuiyYVxKuPcIyczN6Vnr7qYYjkt6pNIxn/iaQBdG1Ar5hj0BkOdbZnkNc7pbOg8sb5RkcPI7OYyQ6IYk9IZ+NDQFM63dyNKrrBq6Vsd52MZNelKOAvpJ0ofeLjnhiZMk25oZsJRKJb6zJcvD+Ygcl28fY0un9JiPyT/bbYpoAu8DUrY+Tw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none
 header.from=math.wisc.edu; dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=math.wisc.edu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kTCMilwPBB1+cxf8qOxjfzZQLIppD0fqWdDwWbrGv04=;
 b=MjeoYOlCYyh2CfwSVW97YoeHaOK3B38UBnEH62Unw4ZDE0wo7TlO69A7DHSf6+Etyk7pppQ8kuVE118TTSlGFge7Wj1GeCdnZV7iD/FZSCo/2fQ/D1yes8c0sytNBsKTYt0xRzJrnMB0X24Yrgur9sw+RJ/JYtxHYUddmf7A/zPj3dOe0yTNtiSCTPt7Wz310S7wdpY9RLB9SgATY95cWV67XbH9WXCNr+ISHkAJZeCn0C26hFAxTFBw04K3/BYHB843ZECNYhGj4/aaRsCh2XFabptDudbwBGvCPGENxjNl1Gff482s8pQ0pBNHGWFK2DOX605U1VtZH05SsqG/qA==
Received: from DS0PR06MB9877.namprd06.prod.outlook.com (2603:10b6:8:1d5::14)
 by CH3PPFDADFC0E69.namprd06.prod.outlook.com (2603:10b6:61f:fc00::28f) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9160.9; Sun, 28 Sep
 2025 01:07:13 +0000
Received: from DS0PR06MB9877.namprd06.prod.outlook.com
 ([fe80::a347:6162:9bfd:9b91]) by DS0PR06MB9877.namprd06.prod.outlook.com
 ([fe80::a347:6162:9bfd:9b91%4]) with mapi id 15.20.9137.016; Sun, 28 Sep 2025
 01:07:13 +0000
Message-ID: <911b56f0-036a-4b1f-9939-4283a4276192@math.wisc.edu>
Date: Sat, 27 Sep 2025 20:07:11 -0500
User-Agent: Mozilla Thunderbird
Subject: Re: Question about blind CLI use (was Re: "your browser is not
 supported anymore" ...)
To: Karen Lewellen <klewellen@shellworld.net>,
        "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <aNIv2l1tKiR26V-R@titan>
 <fcf89a57-b683-4590-8d36-3a1a7b613bd1@math.wisc.edu>
 <Pine.LNX.4.64.2509231554180.4080399@users.shellworld.net>
 <d8d6dfa8-db72-43e9-80b6-9a0053e31b2c@math.wisc.edu>
 <Pine.LNX.4.64.2509242315480.4100948@users.shellworld.net>
 <fd0c0d0c-ff55-40ff-a65e-3e912a03f5ba@math.wisc.edu>
 <Pine.LNX.4.64.2509251917520.4128886@users.shellworld.net>
 <15afdcb8-ebf8-4e8b-a139-03be2da5c7fb@math.wisc.edu>
 <Pine.LNX.4.64.2509261929420.4144616@users.shellworld.net>
 <0aebd748-2fe8-4d5b-ae84-daf049a9e150@math.wisc.edu> <aNdzlqqaEh9SZxGN@titan>
 <Pine.LNX.4.64.2509270129390.4150896@users.shellworld.net>
 <439de8af-3ff7-47f8-967c-6fe4e0c9bd0f@math.wisc.edu>
 <Pine.LNX.4.64.2509271923470.4173166@users.shellworld.net>
Content-Language: en-US
From: "John G. Heim" <jheim@math.wisc.edu>
In-Reply-To: <Pine.LNX.4.64.2509271923470.4173166@users.shellworld.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: CH0PR13CA0055.namprd13.prod.outlook.com
 (2603:10b6:610:b2::30) To DS0PR06MB9877.namprd06.prod.outlook.com
 (2603:10b6:8:1d5::14)
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
X-MS-TrafficTypeDiagnostic: DS0PR06MB9877:EE_|CH3PPFDADFC0E69:EE_
X-MS-Office365-Filtering-Correlation-Id: 0cdb051b-3771-4a64-edbd-08ddfe2b5ba4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|41320700013|376014|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?QVJ3VnFHdTh6Sm1jcnBuVHp2TU42d3BWUFlCSXlmL1oxU2dYMksyYkloVzZJ?=
 =?utf-8?B?bjJhcXN3MmczdkJCbCtzL3RVMnkxeVhYclFoeEJoenppdUczZVZmb09udzBa?=
 =?utf-8?B?MHlYSllKZHd0aGZ3b3hpajFlU2lCcC9td1d0TmYvTzA3V0JKdnBXbVFuUUpB?=
 =?utf-8?B?R2RjQWg1SXFjYndIVnluK2FFRThSOHZwVXdYYS9PSytlY2cxR1d4VWVJN2l4?=
 =?utf-8?B?Rk9CQVpHdUF3RmlkSnJQQkUxMEZRVzllNEswcHU4UlZZTU1lcWQ1ZjZSWnBz?=
 =?utf-8?B?TFdUdldGTDBHOHdkOFNWRWV5d0xJQWNGZ01SSzVCNzB2TEM1c0NUakdzNkVI?=
 =?utf-8?B?T1FPNzVxOFljeC84MWZVWk9LTHNzZXNKVFhDV3BjeGt4WXVLUkUyam1Xd0p0?=
 =?utf-8?B?WXNTM1MxZEhDb2NxTERVL0Q0ZEh0eFFQSHhtb1BHbVlLeEZieTU3cVhaUEZF?=
 =?utf-8?B?VWhUdlk0bjVDL2pjVFloaUZmRytVSUNhN1BFZnFiWUlRVnJqSnBzeXprUmcw?=
 =?utf-8?B?Z3N0T0xoWmNxVlJ3NDNaV0N2a3MxYXloVXdhVnMweHlCWUxiWmRRaUkvVExa?=
 =?utf-8?B?L3RiWnVxaVdLOUVOajVSMG1xcFRtaDN0M0JUbWMydGNFK3ZuVk5NTEpGNVNL?=
 =?utf-8?B?NkFFVzFVMHZQek16WHo4Y0cwYmhwc2tKSGF2L3U4dCt6ZERwd0hOOGNIZGVy?=
 =?utf-8?B?L2tuOFlDSDlDUHlKbmxKQmlyNXNzR2FQb1YvaCtORnN1bkpJNElGMkUremU4?=
 =?utf-8?B?ZGd6VjBxOWowQ2pnN1lZRC9WMkZpRkZVTmVYTEZYcEYvdGcyWkU3ZUpwWnJS?=
 =?utf-8?B?djcyK1ArZUM3K3NJRXJwOTZ1QTAvVWx5aXg1UGJxOTFuMHNmbGg3K1N0TGkw?=
 =?utf-8?B?YSthV3NONGVmeHdCTExUQTRjdGo1MUJIb3hCbWtjemhtVm1Zbkx1VFNnUGpn?=
 =?utf-8?B?SVdPeitIN2piNEpWeE9FeXc0M3UzSU1kdFNIWVhtN2ZLc25IWVZ1YmYveGZD?=
 =?utf-8?B?NGxueVRTVG0rcFlmV1BMTERjMjNjMEFvc1A5NlVBUituU0RTU2s3RUxmUjcz?=
 =?utf-8?B?NUhzR3hKRGJVMVBwREFhM3hOZEFnKzdLVHc5b3YwNlFIQ1c4OXRQSmIranh2?=
 =?utf-8?B?d3A3SUhHQ1hXMGdVMkpqdlBwTi82a1dzSkRtS0NiSEJBTEQwdG1JdmdhWS80?=
 =?utf-8?B?V29hZ291NnVtQnByNjZJeW1BNWU4NVorTENBK0hWR0gycWs3b0E5TFc4aHdZ?=
 =?utf-8?B?ZUc3Wnl4ZG9kUElab04xdmFjWWZXUG9NZm52aU9UTkh5MThKZUxXMnZ0L1ov?=
 =?utf-8?B?bmRoQ21GcFliMXVGVSttYVdSU3NtZGpmby9DQzYyY0RtWFRrc2pmdW5mTFA3?=
 =?utf-8?B?aGdaYmhhY0NjRXErL29XVjdnME5SdFFqZmRCd0d3SVp5N0Z2aEFLUm0rYitt?=
 =?utf-8?B?TVFGcTlYcC8wMVZCWEVmeWJET2k3S0VZenMrZHVoVlBTbytSOG9odXJiZlF0?=
 =?utf-8?B?d05USzJ0OUw4eXNMQ29sQ01ONkhDbGZvY2tqQW84cnNBNjFSU2s3cFg2TXJp?=
 =?utf-8?B?ajN6R29Ed3loWk1qc1hmb1VQOFJGTktrMzc5eEptRCtBNlNBYnVhWWRUYTRK?=
 =?utf-8?B?TWJmMXJ0cjhCMUUwWkNyWVcrKzB0OTRIaEllQlFkRXBqNDVYa2drOXBCSWQx?=
 =?utf-8?B?aHlQOUlxdC90L1VITFJlS3VlSDhwMkJHbWVTaUdZYVp0WW96ZEZia2hVeXV0?=
 =?utf-8?B?Nmw2VitjRUlDTm9jWEJaOUJ6QUp1QlZSZGZGeTdmc2RRSzk2enlpaGJBQTB0?=
 =?utf-8?B?TWZ4eXZRaUp0NHRSUXVjRkFVaGlUVVI3ZTU3RS8yMXI5Q0E2d2grU2N3aUcy?=
 =?utf-8?B?Nm4rRjEzVzE2MVJXQUozMEtpRHEvTjU4YlJTUU5pUnBuTGc9PQ==?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS0PR06MB9877.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(41320700013)(376014)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?MFpvbVk1cVhjUWNzcU5IOEVGS1d6VE9JdmNQR2JBRzRTMzRsMUkydWE3c0s4?=
 =?utf-8?B?cHhTQmVGSTF0UG1XbWlCanBFZTVuK2tFR1N0ZFNoN3BxVFlZeXVrTnFRUUZo?=
 =?utf-8?B?UHk3VnhRNWxUUDZ3dEkwY3RnaG9xdFQ0aURwUndrai9pVnRSbGFYRHluYzZw?=
 =?utf-8?B?ajdpR1dkaFhkTXJjVWlITlo5dWNVbzZkc1kzMUpQZWhPMi91OGluMFU0S2k4?=
 =?utf-8?B?Z2dCdnI2SWk3STBQMFREbkpaODlhaXJySFlLYTB3UXNjOENMRmJvdTYyenhB?=
 =?utf-8?B?RHhzOGpDc3NzWWNLblVwLzhIRnRQaSszaWF6YlZhVWE5UUFEN3lkaGdBTzdq?=
 =?utf-8?B?KzZtTENqRDBoeGJkaTNiZHlKSWpLZ3VkNTRMNkZrdHNHTDZaY3UvWXRLbmRK?=
 =?utf-8?B?SXA2RHR6RzY0TjJPN2Z0OWVPQXAzUnlJeVJ3eFhIcWhBM1h5djFXWDkyV2Rm?=
 =?utf-8?B?NHZ2QXZHUlRSM21kSzB0M0gwQVZSLzVDMUpZb3ZUNFRpYVhmbUdkS2sxK3N2?=
 =?utf-8?B?V0EyS3FrZ0VWaTJIVkNmU1dneGlXaTBCcjZ5RmxyVFcrRjd5cExscWpLdWtS?=
 =?utf-8?B?YnNlS3dPb0UzNlhGT3BxOXVmMXBBYmJyQ2RoMmM1RHFXZEVzMUZ2MU5ldyty?=
 =?utf-8?B?SWxIVWREQWxhTXpFdkM1UUI1WU1WcFY1UFZUaHYwNXZhVWU4VGs2bVVMMGpm?=
 =?utf-8?B?RW9ubVFtRHRtL2xnNjVZb0dPb3JwMG1GdXFKWmRGc3RTdlhFVHViM1NPSlU3?=
 =?utf-8?B?bUpOc2lvZVMzcVhWZW95NEhaUnRGWGd3N1VUdjJJZnJOTmlEWUtPbGxSZEZJ?=
 =?utf-8?B?d1Q0UnBBVEd0UDV4czBnR3IwYjlycEtQdDN1VWxKcitGM3FDSFNsbDBqOGp4?=
 =?utf-8?B?d0lhYjAyMzhmTGNsQTBRMmp0ZktSYWwxWXRPV1dweUgyTTJ3eU9sZ0VQM2dj?=
 =?utf-8?B?VWVlU0hTUWJubE9uVzhHVEFPTmRldlRvekU4NWFFaWdjUElyenZpMUZZV01x?=
 =?utf-8?B?SStUZjAyNzFOSmZPRTlmd1pMN0ZMaDJSNnNEbjZwbzBSVTV3bUdIL0syRytE?=
 =?utf-8?B?bVRtWEJSVHVyN3FPSnltSktFNFBORDF3c2FGdmJSNi9Hb2NlaGdTYkhYUzFX?=
 =?utf-8?B?VGdGTTNXcGJyV3FlY3dRUWRvU1dZd3Q1UU5MMElWbXZjaHltMi9ZaXRRajRL?=
 =?utf-8?B?c0ZKMFZVd2xjcitqTjN5SWowWjNsbHRvVDRIaU92Mm5KcUlScXBpdTd3K1R3?=
 =?utf-8?B?Um1WY1lHVXdRRjdOOUlud01HaFBRWTRnOUI4U0V6eWE0dHh3cjA1VFdVenJv?=
 =?utf-8?B?T1Njakp0V05pNzZQWlY2MjNmbVY0TTlMTnN1VnQrbXRzUnJzOUptUzR5RWRW?=
 =?utf-8?B?UExSL004MU1ObkdUeE5nNWpmMEgzcmtsMDNVTGIyMVEvdmIwci9nQmFmMk9s?=
 =?utf-8?B?ckUrTGlOcE5abVI4aElyUHJ0NGRONncyb01ldVdHeFdzcDRzRjNKSVdNSUg5?=
 =?utf-8?B?Y0YzRFJFUFpzT2V4OVFOQXhaVmFiM1ExOUxZZlJobTE0VmVSS2tkQXl4YWRK?=
 =?utf-8?B?ZUhTbUpJejNHL3hvZ3Jjc1BYZHBTNm4rRXdOVktMbE5wT1drdHJvUWFDc0k0?=
 =?utf-8?B?VkNqbFhRcko2NDRNOEk0NkNZb1k4L2ZQN1dUMXFRWVFETkVjVmFLY2lZUVVi?=
 =?utf-8?B?VVQxak1GTHN2MWVNMjd1eXc1OHNvd1hvelFVaFlheHpMYnNvN1dhamdqY05N?=
 =?utf-8?B?R2tEUG5FM0MzdE9yN0J0TU14elhvWk53V1QyNFRmOUtvVCtDTFFXWnVJelVK?=
 =?utf-8?B?MnJCdFNvelNqYTJRNUFpbEFQR3pNTDNGTjBsa0lyOE1uSGpoM3EzZGE0UmhQ?=
 =?utf-8?B?Vng5M3ovOFlLZEtvR29rZ2xVMXY4OXJnNFEwNUlkcTBTeEw2M0U5SzhPNjhu?=
 =?utf-8?B?VjY2aDlIcHJzQllUWXdIVFlycExzcmlHaDNUa21USUpUM3h4bFE2eVNsYWJr?=
 =?utf-8?B?dUJPOGUwTUttdVN5NUdHbk9BZzhIRy9wNGNwczlxd0JHQ0pMZmFsS1BKVFds?=
 =?utf-8?B?b3Npb2NFR0tqVXRPZFMzU3JRZ1kvMTFvaFRDeWZLVkhZVHppNmxpK0FJdnQv?=
 =?utf-8?Q?tVGuxo7LIsiPftf2GiZsdu1eM?=
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: 0cdb051b-3771-4a64-edbd-08ddfe2b5ba4
X-MS-Exchange-CrossTenant-AuthSource: DS0PR06MB9877.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Sep 2025 01:07:13.2161
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rdD5Rj01iRh3v4zJ8vjcacz13qi1r+h05WSqThcaW9THRK693yhpG2U8s2IsnFjg
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PPFDADFC0E69
X-Proofpoint-GUID: K1446Zlx8mcHt-9t8AZRJA7TAScELqYn
X-Authority-Analysis: v=2.4 cv=Vbf6/Vp9 c=1 sm=1 tr=0 ts=68d88a44 cx=c_pps
 a=2WPJyM168hjBdVADO68ohQ==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19
 a=R3fr6vWxGIgF0CYV:21 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10
 a=lre9DRYkaIEA:10 a=rS6rnCo4AAAA:8 a=hEK2XftRAAAA:8 a=LNhb960rAAAA:8
 a=q5txbtUnAAAA:8 a=A9fJ8ug3UlkRZQ18KD4A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=Cn4oInlQH1Hl-535TvAz:22 a=pvvZm7_9ER1OwvpV3Ftp:22 a=duXMUGqUtLRgrHROm9qa:22
 a=RsootnAUgZ_jVqzlXDew:22 a=HhbK4dLum7pmb74im6QT:22
X-Proofpoint-ORIG-GUID: K1446Zlx8mcHt-9t8AZRJA7TAScELqYn
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI1MDE3MSBTYWx0ZWRfX/jc388ulZceq
 T1C57NMYtMs5kLcmu+jDAbgh5RJHY1D+XmQAySwB8bS30kL8PUTf7mngVJjTl4r15LWgXgzyofb
 /+MGFBTfha4KMAoACuvomzyvmzy1QxabaBi+4K/6+MJZmT4PhAndWGAuC80g40W8Gs3xpXR2xCx
 R3n2x5ASJ0Vc/eomrgmGELdGDHlPLZ7j/30oC0U8fpvc0kHztCsjQAYUE3a5P3vP7sNJKpEFtz9
 WiXKkezRVaYSfnmJOPILcHJ5OWx3rqabYRhaoRg6G0ceGH/deoXqWzKhAR+uDxy9WfNFFkDrM2O
 D+vWRqUSv2DujLoNJVQi1l62pUAiQDbBXoUjgEK2LGRfRvIQOwxCps1UFnEJo9tsnp2HGL7q+ax
 LUDDyydEM/Wbbcl41uiAlHfY5NI++g==
X-Wisc_ValidFrom: true
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-27_08,2025-09-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 bulkscore=0 phishscore=0 clxscore=1015
 priorityscore=1501 lowpriorityscore=0 impostorscore=0 adultscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2509150000
 definitions=main-2509250171
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Karen, I've already answered this question twice. Again, I was making 
the point that circa 2000 - 2005, Speakup may have been the best screen 
reader available. The original question is why are some of us still 
using Speakup at the CLI. I am suggesting it's partly because at one 
time it was the best, in fact just about the only option available.

Has that point been unclear? I mean, I wrote that whole thing about 
walking out of a meeting with a librarian and thinking how lucky I was 
to be a Linux systems admin. Remember?



On 9/27/25 6:25 PM, Karen Lewellen wrote:
> ..but you brought it into the discussion yourself.
> In fact, other than Linux and Mac are both Unix based, voiceover 
> itself is not on topic for the speakup list.
> So, why bring up outspoken at all?
> voiceover either for that matter?
>
>
>
> On Sat, 27 Sep 2025, John G. Heim wrote:
>
>> OutSpoken is not for the CLI nor is it for Linux. It does not answer 
>> the original question and it is not on topic for the Speakup list.
>>
>>
>>
>> On 9/27/25 12:36 AM, Karen Lewellen wrote:
>>>  Jookia
>>>  I am unsure who suggested to you that use of the cli is off topic.
>>>  Speaking personally, for some it is their only path to Linux, or so 
>>> I am
>>>  told.
>>>  The CLI may be the only path to speakup as well.
>>>  Please do not feel you are contributing to the chosen limited 
>>> dictionaries
>>>  of some here.
>>>  As I said a while back the experience of disability in general, 
>>> including
>>>  the experience of blindness has rather bad public relations.
>>>  As with many aspects of the human condition, we rarely reward 
>>> people for
>>>  their uniqueness, while  recognizing we share a common label.
>>>  Karen
>>>
>>>
>>>
>>>  On Sat, 27 Sep 2025, Jookia wrote:
>>>
>>> >  Hi,
>>> > >  I asked about blind CLI experiences and this is partially 
>>> topic. I know >  it's
>>> >  not fully on topic, so please accept my apologies for that. I 
>>> didn't >  know
>>> >  moderation was so strict.
>>> > >  That said, maybe it's best to end this discussion and chill out 
>>> a bit.
>>> > >  Jookia.
>>> > >  On Fri, Sep 26, 2025 at 11:58:04PM -0500, John G. Heim wrote:
>>> > >  What the heck is wrong with you?! Holy cow, if you know of 
>>> someone > >  still
>>> > >  manufacturing hardware synths, say so! Why in the world would 
>>> you > >  *NOT* not
>>> > >  say anything about that while insisting on talking about a 
>>> screen > >  reader
>>> > >  that  was obsolete 20 years ago and never ran under Linux anyway?!
>>> > > > >  You seem to be under a grave misunderstanding of the 
>>> purpose of the > >  Speakup
>>> > >  list. The Speakup list is not for "recognizing two people with 
>>> > >  different
>>> > >  experiences", It's for technical questions/answers about 
>>> Speakup. Not
>>> > >  OutSpoken, not the Mac. Your personal experiences, especially 
>>> with a > >  screen
>>> > >  reader for another operating system,  are off topic for this list.
>>> > > > >  Yeah, I'll freely admit I don't care about your personal 
>>> experiences > >  --
>>> > >  especially when it comes to a 20 year old screen reader for a > 
>>> >  different
>>> > >  operating system. Also, I don't know about your medical issues 
>>> and I > >  don't
>>> > >  want to know.  I'm on the Speakup list to give technical advice 
>>> -- > >  that's
>>> > >  all.
>>> > > > >  PS: Between 2000 and 2005, the libraries at the University 
>>> Of > >  Wisconsin were
>>> > >  forced to get rid of their Macs because they couldn't get a 
>>> screen > >  reader to
>>> > >  work. That's why Apple developed VoiceOver. At the time, 
>>> Apple's > >  marketing
>>> > >  strategy was to get students to use  Macintosh's so they'd want 
>>> them > >  when
>>> > >  they got into the real world. The reason why Microsoft to this 
>>> day has > >  never
>>> > >  developed a fully functional screen reader for Windows is that 
>>> > >  perfectly
>>> > >  good screen readers already exist for Windows. In 2005, that 
>>> wasn't > >  true for
>>> > >  the Mac. The problem the developer of OutSpoken, Berkeley 
>>> Systems, had > >  was
>>> > >  that they couldn't keep up with Mac operating system upgrades. 
>>> By the > >  time
>>> > >  they got OutSpoken patched for one upgrade, another had already 
>>> been
>>> > >  released. That's why Apple was forced to develop VoiceOver. If 
>>> you > >  claim
>>> > >  OutSpoken was so good, why doesn't it still exist? Why did 
>>> Apple > >  develop a
>>> > >  screen reader when Microsoft never did?
>>> > > > > > > > > > > > > > > > > > > > > > > > > > >  On 9/26/25 6:39 
>>> PM, Karen Lewellen wrote:
>>> > > >  John,
>>> > > >  You commented that outspoken was unusable prior to 2005.
>>> > > >  I commented that I have use for it today 20 years later.
>>> > > >  Instead of simply recognizing two people with different 
>>> experiences, > > >  you
>>> > > >  say well some folks  ride to la on horseback..as if somehow 
>>> my > > >  personal
>>> > > >  productivity can fit your experience.  That somehow  my 
>>> unique > > >  situation
>>> > > >  means I am doing things behind the times...to what end?
>>> > > >  you state that I need not comment on everything you spout 
>>> here..I do > > >  not.
>>> > > >  For example when you said  You did not personally feel anyone 
>>> was
>>> > > >  building hardware synthesizers any more, I remained silent.
>>> > > >  i did not reference a Canadian company doing so, nor did I 
>>> reference > > >  new
>>> > > >  scripting efforts  to use the Raspberry pi for the hardware > 
>>> > >  synthesizer.
>>> > > >  We may share to the slightest degree a label, but by no means 
>>> is our
>>> > > >  experience the same..I have no issue with more than one 
>>> solution.
>>> > > >  You, however, talk about the blindness population as a single 
>>> unite > > >  with
>>> > > >  no human  uniqueness or choice.
>>> > > >  Indeed, I cannot use most of your tools for medical 
>>> reasons..but I > > >  could
>>> > > >  just as likely just choose a different way to accommodate.
>>> > > >  In your world that is a problem, in mine it is not.
>>> > > > > > > > > >  On Thu, 25 Sep 2025, John G. Heim wrote:
>>> > > > > > > >  So I say that in 2006, OutSpoken was junk and you 
>>> take that as a
>>> > > > >  comment on your medical conditions? Okay.
>>> > > > > > > > >  Well, anyway, the original question was why some 
>>> people still use
>>> > > > >  Speakup at the CLI. Sure, it's a little in the weeds but my 
>>> point > > > >  is
>>> > > > >  that around 2000 to 2005, Speakup at the CLI was the best > 
>>> > > >  available
>>> > > > >  option for a screen reader. That's a relevant point.
>>> > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > 
>>> > > > > > > > > > > > > > > > > > > > > > > >   Look, you don't have 
>>> to make it a point to comment when > > > > >  another
>>> > > > > >  person,
>>> > > > > >   for medical reasons works differently..or chooses to do so.
>>> > > > > >   Your comment simply illustrates, speaking personally, a 
>>> need
>>> > > > > >  to blanket
>>> > > > > >   and  feel you are right.
>>> > > > > >   Never  mind if it serves no purpose in addressing the > 
>>> > > > >  problems
>>> > > > > >  some are
>>> > > > > >   raising here.
>>> > > > > > > > > > >   If you are going to invade my inbox with an 
>>> off topic, I have
>>> > > > > >  the right to
>>> > > > > >   call you on it.
>>> > > > > >   simply accept that you have worked hard to build 
>>> expertise in
>>> > > > > >  what works
>>> > > > > >   for *you.*  It might work for others, it might not..same 
>>> as > > > > > everyone
>>> > > > > >   using a computer.
>>> > > > > > > > > > > > > > > > > > > > >   On Thu, 25 Sep 2025, John 
>>> G. Heim wrote:
>>> > > > > > > > > > > > Funny, I was going to ask you the same thing. 
>>> Look, you > > > > > >  don't
>>> > > > > >  *HAVE* to >  reply to every thing I say, you know.
>>> > > > > > > > > >    On 9/24/25 10:21 PM, Karen Lewellen wrote:
>>> > > > > > > >     John,
>>> > > > > > > >     your point?
>>> > > > > > > >     I make a living just fine thank you very much.
>>> > > > > > > > > > 
>>>  https://urldefense.com/v3/__http://www.commongroundmedia.ca__;!!Mak6IKo!PKB0RJD8OP0j6IPvNxWqJv3bVdhkPPGFE-kwr9ifYz1VeMSVsSw_Q_-tz-5BScuyFqCPj2W1RNsVjUvTKtEjtR7w2Q$ 
>>> > > > > > > > > > > > > > > > > > >     Further, there are far 
>>> easier ways for me to commit
>>> > > > > >  suicide then to > >  use
>>> > > > > > > >     orca android and so forth given what exposure to the
>>> > > > > >  speech does to > >  my
>>> > > > > > > >     brain..in 5 seconds or less.
>>> > > > > > > >      I am deeply sorry someone told you that the only 
>>> way > > > > > > >  for
>>> > > > > >  you to > >  have any
>>> > > > > > > >     dignity is to claim every blind person is > > > > 
>>> > > > interchangeable
>>> > > > > > for > >   yourself.
>>> > > > > > > > > > > > > >     On Wed, 24 Sep 2025, John G. Heim wrote:
>>> > > > > > > > > > >    Well, you can still ride a horse from New 
>>> York to
>>> > > > > >  Los Angeles. > > Most > people would fly.
>>> > > > > > > > > > > > > On 9/23/25 3:02 PM, Karen Lewellen wrote:
>>> > > > > > > > > >     Its truly interesting how different life > > > 
>>> > > > > > >  experiences
>>> > > > > >  can be > > for > > people,
>>> > > > > > > > > >     even if sharing the same technical diagnosis.
>>> > > > > > > > > >     I currently have outspoken on one of the mac
>>> > > > > >  computers in my > > > >   production
>>> > > > > > > > > >     studio.
>>> > > > > > > > > >     Its tied to a specific edition of pro tools, 
>>> and > > > > > > > > >  the
>>> > > > > >  for me, > >  needful
>>> > > > > > > > > >     control surface I use professionally.
>>> > > > > > > > > >     I produce professional audio projects with this
>>> > > > > >  setup. > > > > Speaking
>>> > > > > > > > > >     personally, I could not work any other way.
>>> > > > > > > > > >     Actually, I did not even get this copy of 
>>> outspoken
>>> > > > > >  until well > > after > >   2005
>>> > > > > > > > > >     too.
>>> > > > > > > > > >     Again speaking personally the more respect for
>>> > > > > >  keeping broad > > > > solutions on
>>> > > > > > > > > >     the  table, no matter the motivations making them
>>> > > > > >  needful the > > > > better.
>>> > > > > > > > > >     Karen
>>> > > > > > > > > > > > > >     On Tue, 23 Sep 2025, John G. Heim wrote:
>>> > > > > > > > > > > > >   BTW, the correct spelling for that early > 
>>> > > > > > > > > > > >  screen
>>> > > > > >  reader > >  for Linux > >  is > Gnopernicus. Googling 
>>> shows me
>>> > > > > >  that Gnopernicus > >  was the default > > screen > reader 
>>> for
>>> > > > > >  Gnome from 2001 to 2006 when > >  it was replaced by > >  
>>> > > > > > Orca.
>>> > > > > > > > > > > > The screen reader for Apple I was trying to > 
>>> > > > > > > > > > >  think
>>> > > > > >  of was > > > > OutSpoken by >  Berkley Systems. Wikipedia 
>>> > > > > >  says
>>> > > > > >  development of > > > > OutSpoken was dropped >  after Apple
>>> > > > > >  released VoiceOver in 2005. > > > >   While that is 
>>> probably >
>>> > > > > >  technically true, as a practical > > matter, > >  
>>> OutSpoken was
>>> > > > > >  no longer a >  practical option for some > > time before > >
>>> > > > > >  VoiceOver came out. The libraries >  at the > >  
>>> University Of
>>> > > > > >  Wisconsin > > stopped buying Macs and got rid of the > > >
>>> > > > > >  ones they had because there > >  was no screen reader.
>>> > > > > > > > > > > > Speakup was released in 1999. So the era I'm
>>> > > > > >  talking about > >  is > >  from 1999 > through 2005. You 
>>> could
>>> > > > > >  use Linux at the > > command line or > >  in the GUI for >
>>> > > > > >  free. Windows had a good > > screen reader but it cost > >
>>> > > > > >  $1000. There was no >  realistic > > alternative for the 
>>> Mac.
>>> > > > > > > > > > > >      It seems to me that Linux has always been 
>>> a > > > > > > > > > > >  step
>>> > > > > >  ahead > >  when it > > comes to > accessibility. Well, at 
>>> > > > > >  least
>>> > > > > >  since 1999. > > Before 1999, I > >  used Jaws For >  
>>> Windows > > > > >  and
>>> > > > > >  administered my > >  Linux machines remotely > > with 
>>> tools > > > > >  like
>>> > > > > > >  putty.
>>> > > > > > > > > > > > > >      On 9/23/25 12:27 AM, Jookia wrote:
>>> > > > > > > > > > > >  Interesting, thanks for sharing. I never > > 
>>> > > > > > > > > >  knew
>>> > > > > > about > > > > > > Gnopernicus.
>>> > > > > > > > > > > > > >       On Sat, Sep 13, 2025 at 10:35:51AM > 
>>> > > > > > > > > > > > >  -0500,
>>> > > > > >  John G. > > Heim > > > > > > wrote:
>>> > > > > > > > > > > > >   One of the biggest impediments for a blind
>>> > > > > >  person using > > > > Windows > >    is the >  cost.
>>> > > > > > > > > > > > >   It's less true today than it used to be. A
>>> > > > > >  Jaws license > > was > > over > > $1000 >  at
>>> > > > > > > > > > > > >   one time.
>>> > > > > > > > > > > > > >      For many years, it wasn't even 
>>> possible > > > > > > > > > > > > >  for
>>> > > > > >  a blind > > person > > to > >  install
>>> > > > > > > > > > > > >   Windows. Well, I used to do  it via Linux, 
>>> > > > > > > > > > > > >  no
>>> > > > > >  kidding. > > I > > booted > > into >    Linux
>>> > > > > > > > > > > > >   and ran the Windows installer in an emulator
>>> > > > > >  with an > > answer > > file. > >  That
>>> > > > > > > > > > > > >   worked really well until it didn't. At some
>>> > > > > >  point, > > Microsoft > > > > changed the
>>> > > > > > > > > > > > >   installer so it had to be run in their pre
>>> > > > > > boot > > environment > > > >  (whatever).
>>> > > > > > > > > > > > > >      Even after the install, I had to 
>>> install a
>>> > > > > > dumbed > > down > > version > >     of Jaws >  that
>>> > > > > > > > > > > > >   worked for only 40 minutes.
>>> > > > > > > > > > > > > >      Also, there was a period when there 
>>> was no
>>> > > > > > screen > > reader > > for Ma > >  Cos. >  There
>>> > > > > > > > > > > > >   was some 3rd party screen reader for the > 
>>> > > > > > > > > > > >  Mac.
>>> > > > > > The > > developer > > > > dropped >   support
>>> > > > > > > > > > > > >   for it and some time later, Apple released
>>> > > > > >  VoiceOver. I > > was > > > >    lucky, at >  the
>>> > > > > > > > > > > > >   time my job did not require me to use a Mac.
>>> > > > > >  But the > > > > libraries at > >  the
>>> > > > > > > > > > > > >   university where I worked had to get rid of
>>> > > > > >  their Macs > > > > because it > > is >   against
>>> > > > > > > > > > > > >   the law to have computers in a student lab
>>> > > > > >  that are not > > > > > >  accessible to >  the
>>> > > > > > > > > > > > >   blind. BTW, that's why Apple so suddenly
>>> > > > > >  started caring > > > > about a > > screen
>>> > > > > > > > > > > > >   reader.
>>> > > > > > > > > > > > > >      IIRC, at the time of the above 
>>> events, I > > > > > > > > > > > > >  was
>>> > > > > > using > > both > > Speakup > >   and a >  GUI
>>> > > > > > > > > > > > >   screen reader called Nupernicus. I remember
>>> > > > > >  walking out > >  of a > > > > meeting > with a
>>> > > > > > > > > > > > >   librarian to talk about screen reader > > 
>>> > > > > > > > > > >  options
>>> > > > > >  for his > > lab > > and > > thinking >     how
>>> > > > > > > > > > > > >   lucky I was to be a Linux user. I believe 
>>> > > > > > > > > > > > >  that
>>> > > > > > > > particular > > library > > >  replaced
>>> > > > > > > > > > > > >   most of their Macs with Windows machines and
>>> > > > > >  paid like > > > > $1000 > >  each to
>>> > > > > > > > > > > > >   Freedom Scientific for Jaws licenses. They 
>>> > > > > > > > > > > > >  put
>>> > > > > >  in one > > Linux > > > >    machine just >  to
>>> > > > > > > > > > > > >   see how it would go.
>>> > > > > > > > > > > > > >      The computers in the student labs in the
>>> > > > > > Math > > department > > where > >     I worked >  were
>>> > > > > > > > > > > > >   alwys Linux.
>>> > > > > > > > > > > > > > > > >      On 9/13/25 7:14 AM, Jookia wrote:
>>> > > > > > > > > > > > > >      Hi Greg,
>>> > > > > > > > > > > > > > > >      Yeah this is unfortunately true. I'm
>>> > > > > >  glad FOSS is > > > > still > > appreciated by > >  people.
>>> > > > > > > > > > > > > > > >      Jookia.
>>> > > > > > > > > > > > > > > >      On Fri, Sep 12, 2025 at 06:53:43PM
>>> > > > > >  -0700, Gregory > > > > Nowak > > > > > >   wrote:
>>> > > > > > > > > > > > > > >      On Fri, Sep 12, 2025 at 03:31:55PM 
>>> > > > > > > > > > > > > > > +1000,
>>> > > > > > Jookia > >   wrote:
>>> > > > > > > > > > > > > > > >      I know this is the speakup list 
>>> and > > > > > > > > > > > > > > >  I'm
>>> > > > > > talking > >   to an > > > > extremely > > > >    niche
>>> > > > > > > > > > > > > > > >  community here, but I'm genuinely 
>>> interested
>>> > > > > > to > >  know: > > Why > >   do you > > > > use
>>> > > > > > > > > > > > > > > >  computers this way instead of like 
>>> Windows
>>> > > > > > or > >  macOS? > > They > > can do > > > > much
>>> > > > > > > > > > > > > > > >      more useful tasks.
>>> > > > > > > > > > > > > > >      They're both proprietary operating
>>> > > > > >  systems. Windows > > > > > > > > > essentially
>>> > > > > > > > > > > > > > >      hijacks the PC these days, and 
>>> dictates > > > > > > > > > > > > > >  to
>>> > > > > >  the user > > how > > they > >  should
>>> > > > > > > > > > > > > > >      use it (E.G. requiring the user to
>>> > > > > >  register an > > account > > with > > > > >   the
>>> > > > > > > > > > > > > > >      developer to set it up, dictating 
>>> when > > > > > > > > > > > > > >  and
>>> > > > > > what > > updates > > the > > > > >    user
>>> > > > > > > > > > > > > > >      wishes to install, and so on). 
>>> MacOS is
>>> > > > > >  tied to > > hardware > > from > > one > > >   company, 
>>> and only
>>> > > > > >  works on
>>> > > > > > > > > > > > > > >      that company's hardware by design.
>>> > > > > > > > > > > > > > > > > >    Greg
>>> > > > > > > > > > > > > > > > > > > > >  -- > > > web site: > > > > >
>>> > > > > > > > > > 
>>> https://urldefense.com/v3/__http://www.gregn.net__;!!Mak6IKo!PJ5X0c86hX4IZtoBfv1kpLI0rcSQhBtXAThLGAI94dOL6KYPF7-9QJySUhuUeXnUO8FQFZp1QNEHanR6Yeo$ 
>>> > > > > > > > > > > > > > > > > > > > > > > > gpg public key: > > > 
>>> > > > > > > > > > > > > > > > > > > > > 
>>> https://urldefense.com/v3/__http://www.gregn.net/pubkey.asc__;!!Mak6IKo!PJ5X0c86hX4IZtoBfv1kpLI0rcSQhBtXAThLGAI94dOL6KYPF7-9QJySUhuUeXnUO8FQFZp1QNEHOOMsI_E$
>>> > > > > > > > > > > > > > > > > >    --
>>> > > > > > > > > > > > > > >      Free domains: > > > > > > > > > > > 
>>> > > > > > > > > > > > > 
>>> https://urldefense.com/v3/__http://www.eu.org/__;!!Mak6IKo!PJ5X0c86hX4IZtoBfv1kpLI0rcSQhBtXAThLGAI94dOL6KYPF7-9QJySUhuUeXnUO8FQFZp1QNEHcie2CdA$
>>> > > > > > > > > > > > > > >      or mail dns-manager@EU.org
>>> > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > 
>>

