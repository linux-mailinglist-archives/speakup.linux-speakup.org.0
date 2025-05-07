Return-Path: <speakup+bounces-1287-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 9EC7EAAD27D
	for <lists+speakup@lfdr.de>; Wed,  7 May 2025 02:59:24 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=math.wisc.edu header.i=@math.wisc.edu header.a=rsa-sha256 header.s=selector1 header.b=ip1hVA7z;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 366D33829A9; Tue, 06 May 2025 20:59:24 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 0F23238293C
	for <lists+speakup@lfdr.de>; Tue, 06 May 2025 20:59:24 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id E66C738293D; Tue, 06 May 2025 20:59:16 -0400 (EDT)
Received: from mx0b-007b0c01.pphosted.com (mx0b-007b0c01.pphosted.com [205.220.177.71])
	by befuddled.reisers.ca (Postfix) with ESMTP id 94C5238291B
	for <speakup@linux-speakup.org>; Tue, 06 May 2025 20:59:16 -0400 (EDT)
Received: from pps.filterd (m0316046.ppops.net [127.0.0.1])
	by mx0b-007b0c01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 546Hh3u8028425;
	Tue, 6 May 2025 19:59:12 -0500
Received: from ch1pr05cu001.outbound.protection.outlook.com (mail-northcentralusazlp17010000.outbound.protection.outlook.com [40.93.20.0])
	by mx0b-007b0c01.pphosted.com (PPS) with ESMTPS id 46e3m3sn04-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 06 May 2025 19:59:11 -0500 (CDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sFyaP4Mbf3/IF69gc7rbkM6mb3xDLtwUXze90na5qy9fjw8t/AXugKDw08xGiMUjPpswMbr0jY9+smOR2hzdCSExqXrfj7VscoY/EX4GrFdPnGG5OrcWTghwYZlA0xhbJMmvLe4VJDdyd6SJbu5AqCR8NRJp3MC0hMJZE9gMvz1wYB8cmMcECxNRyvmmGkHFlqFRIsLuZiSC+9idCJ9m66MKCTYMAgXqFcuitKuUiL8TpqDukFaxqHMvay2AXudoilNJOT+blzu1ozaTSLYxZbQ51Kk7vR9+OhWWsM2l5m2kfSwNyfe3QVGqziuHnKO1r/1jB3DmMjpv/WzSQ4ZAFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZWRdiMmyA3IUzqq9isGW77Kc7n5d4brKUgE7q68q7+w=;
 b=ED/P2nCtim6wUgvCoIxLwleIJIcNs8q6SDWFUj6HPnht7gvNJpDC9U70DAIbk/wxKBPViEDwTVeDU3U5KQChwQsrqVykTJ/5p9uXb3BK6qJK45QFd9GGvkqitrFqXldQfTpBT/9VRWfDX4Zxxw4hmXRwdNV1LVxUy/Z4X2xtW9JRzc6yLZPiQ9JoFaCQzynLvHeJekQpYFwoy9pa6O5SaSU3NzlKzuCp055YykVUyZnEW+yJl0uEuTYgIbWE/ariG0ICIMn7X2Xp9WuhEPZfWHhXdOPFnACwxf9/HvwwW+tt2i+5VFeqLf8yFSz2Nq2aQ3bPaugdcENmayuExP6AAw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none
 header.from=math.wisc.edu; dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=math.wisc.edu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZWRdiMmyA3IUzqq9isGW77Kc7n5d4brKUgE7q68q7+w=;
 b=ip1hVA7zKZxAXPr462WCbhYBBT9KRBMKDQQJdXfbGvmpph7oaNLIzl71mmZe7wxzIXCh+FKOEE1YZM85jq/wxwxoYgSrduAvKFYfbt/obfjxyCgd6QCrXJ31cmfNPmMH/vP0VMA0+YGXV5QYkskcnxSl54c6BhT7WJSFHx6+OXU0ZbqDlJVU8a01D0mVfcrxvveIT8XKtgeVmvGv9JeNp15Q0Oo88OSiUHttswueLfJmcFm2ZFgfMtwdbgQTHSERNeZmuapz/l/1QYDmRrucNTb6pxmLKJGzA+gg1jENNr0fTslHY2gaQGCqedFVfmMxNP4Di6yNTImHiu8N8STkRA==
Received: from DS0PR06MB9877.namprd06.prod.outlook.com (2603:10b6:8:1d5::14)
 by CO1PR06MB8059.namprd06.prod.outlook.com (2603:10b6:303:e6::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.26; Wed, 7 May
 2025 00:58:40 +0000
Received: from DS0PR06MB9877.namprd06.prod.outlook.com
 ([fe80::a347:6162:9bfd:9b91]) by DS0PR06MB9877.namprd06.prod.outlook.com
 ([fe80::a347:6162:9bfd:9b91%3]) with mapi id 15.20.8699.019; Wed, 7 May 2025
 00:58:40 +0000
Message-ID: <080a3c8f-6f9d-4a82-99ec-84124ff0a6aa@math.wisc.edu>
Date: Tue, 6 May 2025 19:58:40 -0500
User-Agent: Mozilla Thunderbird
Subject: Re: Load speakup module as kernel parameter?
To: K0LNY ?? <glenn@ervin.email>, Gregory Nowak <greg@gregn.net>
Cc: Samuel Thibault <samuel.thibault@aquilenet.fr>,
        "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <55a2cd5c-4b26-4c77-a55b-cfaf59d74316@math.wisc.edu>
 <aBklhtM_CN4OmF3L@begin> <781e661c-7ee3-44ab-8da3-a69e7dd21d39@math.wisc.edu>
 <aBk1N295aRxq7LAP@begin> <d8af1f2a-eaa9-4f91-adb2-e2c3cdbf1ebd@math.wisc.edu>
 <aBlwpQWdLhedVVNx@gregn.net>
 <6c8093f9-e75e-442b-9d0c-570d066056a0@math.wisc.edu>
 <aBl-sbHNyN6NRrrs@gregn.net>
 <14db84c6-0360-44b0-beb2-54d7e5c424d9@math.wisc.edu>
 <008801dbbea3$075d66f0$01ffa8c0@nucwin10>
 <2cee115c-569e-4d91-8ce0-93a57c95c445@math.wisc.edu>
 <008c01dbbea4$6c522b80$01ffa8c0@nucwin10>
 <e960a70d-b3a0-4502-95a3-82285031b153@math.wisc.edu>
 <009a01dbbea9$feae2e20$01ffa8c0@nucwin10>
 <d8ee99cd-3883-413c-80a8-df492a861f5d@math.wisc.edu>
 <00b001dbbeb0$e03dce30$01ffa8c0@nucwin10>
 <2c890d5e-fbe9-43aa-bd71-041c34ae98b6@math.wisc.edu>
 <00ef01dbbeb4$c7bc51c0$01ffa8c0@nucwin10>
 <121680b1-4651-4c30-b652-71ea340c8a7c@math.wisc.edu>
 <018501dbbeea$fece01a0$01ffa8c0@nucwin10>
Content-Language: en-US
From: "John G. Heim" <jheim@math.wisc.edu>
In-Reply-To: <018501dbbeea$fece01a0$01ffa8c0@nucwin10>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: CH3P221CA0011.NAMP221.PROD.OUTLOOK.COM
 (2603:10b6:610:1e7::7) To DS0PR06MB9877.namprd06.prod.outlook.com
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
X-MS-TrafficTypeDiagnostic: DS0PR06MB9877:EE_|CO1PR06MB8059:EE_
X-MS-Office365-Filtering-Correlation-Id: 04a7586b-49f0-490b-4470-08dd8d024ebb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|41320700013|366016|376014|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?V1F4aDNRbExiMUhEeE1YSU5TK08xbnc3REJZREh5N0hCRkl0b2tITVJSREJC?=
 =?utf-8?B?NWorWDNGMUFYRERFOW1LelM4dVZrdlJ2a1I2NG5GQjlSMi9RMTJrekc4ZGEz?=
 =?utf-8?B?cWNyWmZTK01nbTlTNC84amxZRjZvVVltT3Bna0t2RVZXZUxXenlrK1NkeFo1?=
 =?utf-8?B?dmczaVRpWVFZRWVEZ1FpNDBtd0hlOHN5TUhwd2RITEVNMmxuZnZVNTJQcG5T?=
 =?utf-8?B?bVZINmNoRkJOTUZpYVA4LytrdVNtKzdqdW5pamRlT3FyM0tGSXdOeU84eHU1?=
 =?utf-8?B?ZDFycjV5YzUzSFkybktic1VWZFhNdEI2b0RFbWxlZ2k5S3JhQ0FSUTVjOC9L?=
 =?utf-8?B?R1B6ekRxclF2cmpJR0kyQnZ3eHJDQXBLQzY4b01tM1Y4YzlsTTU3aDk1NDk3?=
 =?utf-8?B?N0hjOGl2QmpHSk9QVFgvbytyM0hZTG9YTC8zZHVMbVY1ZEpoRHVSMGhnRldE?=
 =?utf-8?B?ZFVXWHVZMDZ6THp3byt1RHBsamZFeHRubDFIN1NGZll5TG1Pem1pemV4RkdV?=
 =?utf-8?B?QjdJQ0lON1lMSy9ZVXBzQ3lRMEV5eVFMeW1abDd1ZVRGbzZnam1EaXBHMllB?=
 =?utf-8?B?alRqVlBsVWFNb1BYdTRLRHNxZmxRR1lzbERvUzBVL0ZpbTRWQ3lNcGJDTmZt?=
 =?utf-8?B?NlJJMDAwQ0JxNjZtbGRtMnRpWEtmejVkN2VKWVBDUVh6b2lwMW5LUGhOT2dV?=
 =?utf-8?B?eXAvM2o1NUNxVFJGcVRkNjJaODljTVhzQW1TU3IyUEVkWkkzZlhqaG9SajBR?=
 =?utf-8?B?OENpK0xGdHlaQnNSMzh0cjdTR1phVzRoSnRVVnY5NEdWSHpZRENjODc4akpB?=
 =?utf-8?B?THgwTHgwMUJNUUNCejg3YTArUkJSZWJ6djFkK1YrU3hPMUJDYlQwdy9JanZ2?=
 =?utf-8?B?UjRwVW1CZG4vNjZtVE5HeHJDUmJ4RnZzcWQrb2VjK0lUWWJrTzZ6OU9DRWgv?=
 =?utf-8?B?TWJMaHNUK0crUEQ0eUxmTFExQi9xZnJKMmx1ejNGQ2RaTlFvR1FDSDF6RTQw?=
 =?utf-8?B?cGsrSllqL1RpQ3BiallYOGlhMHhsWlVURWtxeVZocWp5Z0tuaXNmNE9JakN5?=
 =?utf-8?B?aTF5V3A5VS8rbDFQU2hsL1RZWjhFVU9tVVBxaEFBZVlQMlhhbndOTldUOXds?=
 =?utf-8?B?SVM4U3VEZHFySHZIQzZBYkNNRW8wVmozZXpJeGZSSE9QYTEwd0V1bFBCTTFJ?=
 =?utf-8?B?VE1WT0pXV281OTZpbmpFZkRWeC93Y2dqOWdmNklHWExtM0k1UU5zd2dtMndP?=
 =?utf-8?B?THRCYjIxaUpzbFFoSExPbnhVM1V3TFdRenI2ZFcxYTJMYXo5bmVSVDZBcHFl?=
 =?utf-8?B?L2FpVkNRaUVlbno4V1F5cHdUOExpazFGenZsSkdkTWNPQ252Nk9PYTAxUmxn?=
 =?utf-8?B?b2lPOGtaQkF0dGRXc1YwTmRHWWVjT0hwVUhnUkRWelMycmNtOEg5a2piSDZ2?=
 =?utf-8?B?VzRFYWEvb0dYdVJ2S1AzU0psY2VSeGc0L0U2NzBjQS9MTE1ZZ1NDajhhSlJX?=
 =?utf-8?B?NGk4R0UzVmtRVWR6TVNFTENTTlQ4bUVaU3k5V3gzcW5VbnNnUE1Gbm9RanJz?=
 =?utf-8?B?ZlkwdWY3YklnSE03NkdscDczemlzZG0yWHBYQSt2MExKdVh1dEEwb2JKMTUx?=
 =?utf-8?B?aTJWN0REd0pXRVl5MzErS05TdEo3eGEvd3RSWjdEWmFXQ1U3ZzV1SktnWTls?=
 =?utf-8?B?UkR3SXBhMkRSR0lsYU1XOVRJSFpaT1FURzFtTndTZkNhU05jTjZ2anpuRmNy?=
 =?utf-8?B?ZHZFcXVHUTdNM3N4dWs2SXRSOEZEY0I2SGxyekJ4MXpxMVpQaGJxNzFCWWJM?=
 =?utf-8?B?R3hROVd6Qkd3K25kcFNoUW14Vm82RXBGVHJHZEkvcEg4R1NUYkI1ZkhXVUR2?=
 =?utf-8?B?QXVuZHY1M2RIVW1uQ0JzTjZCVmppcC92a2szeVNGSXcrUmsxbE9jSEZwSHBq?=
 =?utf-8?Q?n2RDj5hM2CY=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS0PR06MB9877.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(41320700013)(366016)(376014)(1800799024)(7053199007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?RGV0alRHYjU4aW1QU0RRZ1pIZ1U2Yk5Mck1hMTREaVYrVGdiUUNhTWhTZkJL?=
 =?utf-8?B?RFRkSUNxd1dSUkZNUVdja3g1TlRkRHFIQ0FNM3NtM3NRN3dLTlVqVTh5bG5U?=
 =?utf-8?B?S29mMndsY0FhVzBQK1ZoaXJtY2V6cnk5cnVmU0QrUnkxaEtiNlN1RlZQbkZQ?=
 =?utf-8?B?dzNwTXZqMmNDUGtSaWphVzNrV00zdTlWMnh5YUk4ZmdOZGFybkRuL25vMkRZ?=
 =?utf-8?B?TlpENE8ySnNDa3hUK25zUWpyYTVlakF3bTR5R043QVRONGhWZGpMNC9XNDhN?=
 =?utf-8?B?MzNnL0F3RE5RQmowcml4bGc1Sm9GdXI2RGd4elFDSkwzdE1wZGd2V3FBQlJL?=
 =?utf-8?B?TFZFRnY1eTN5OGp3MkV2U3JTTmhOQ2J4cWJVQTUvdkJOZ3oxN1loZjk0eTlj?=
 =?utf-8?B?d25OTFBqaThGOHFBcWdwd0Foc1U2bXRUZllDRnE5cFRGOXBpQ3c3TFg5bUFj?=
 =?utf-8?B?WWcxdG1QOWdDZmkrclNualJoYjZaMUR2cHhIcjlHRk5yM3VyTUdjdEpOb3M1?=
 =?utf-8?B?YVNHdHZwa0NjUDlvRDJKMGpIODh4UU9HdjZuSEppM1JmYThPRlprczdBM00w?=
 =?utf-8?B?K2s2NHF6UmdBVTE4RGdDWGxuYzhFc0dEV1dKRDgvWW4rMjF0T1NMN09XdVE5?=
 =?utf-8?B?ZXBTY002N1BxREpoajVpcFJidW1obXNMcjJUTDg1Q3pwSElNZXZTdFJxTTRr?=
 =?utf-8?B?WDRQdVczaHlJRFpHU1ZDOUpDWEZkVXBBYlc2d3p3RWpneldRUnZyOXBMMHpJ?=
 =?utf-8?B?ekZyWVpXK3M3djYzMUlLY1ZKbEVMMnRSVVZLUUY1YTVGMlBaMlZVOHFWblRs?=
 =?utf-8?B?NzNtWnVGSDhVT1NQeE84cVJHeXQ2N094NFJPV1V4NWRpVURXWEZqNjVTSnlN?=
 =?utf-8?B?WlJkZUdwR3NZZHczQVdvVmZWN0lYUm5mWjZtSXJLUHlqbXc2UjBvN2UxQzBG?=
 =?utf-8?B?THp4VUZWNUJ3Y3NaNkJWbU44UzlibHo0NlUxZ1BhcEtkZHdpeHRHQlNuc21C?=
 =?utf-8?B?eS9KcGlGeEJuMDV1TitYSTVxU2d6QzV1aUswK0pSMXdrS25tK3F5aXc2ays1?=
 =?utf-8?B?UURnMTkwNHpDUzdzbVFJbC9kL0tpMTB6eWlBZTZyNEtqSzBZMDdUUmRQd25X?=
 =?utf-8?B?Z1p1YndEakdkcDh6VlpjaFNhaWI0Ti96UFR5cHMySkFoWm1PbGI2NFNqOW9v?=
 =?utf-8?B?K0ljRmV1QnFPSGpEMVFJZ0tHZzZBejB4d3hwRytRR3Q0Z2o2aXNhMG8wQUJY?=
 =?utf-8?B?ZjV4S0wrSG8xeE5sVXRyUXBwK29KbXg5Z1hzOGJCSG1yWWxHeThUWDVoU2Fw?=
 =?utf-8?B?U2xRY20zWHhjUlNqVXJua1NOdXRQdWRKN1NFQlFNRm5ZL0pGMXZrVmdxVHNz?=
 =?utf-8?B?NzZUdGprbnlTWmpzZk1sZEJaY2RUSThxUFFhUkVnUTcwakUzbng0OHhKNHkx?=
 =?utf-8?B?YXBqWi9EVTBUam9xdkladG8zSHB4NEdGTXlSZ3ExSnE2NDR4NFllVm1TSS9q?=
 =?utf-8?B?cHVHUEQ1c0txKzZVMkVDYTU2M3VDem1QaTgvNUFFeFJJNERSOGFIeDVKLzZL?=
 =?utf-8?B?cEhBcFQ3L05taWQzQjY5NUZDUGRBc1M3NXViQUtqNTFXclRDQlhEK25rL1ZN?=
 =?utf-8?B?QVVIcU90ZUp3NnYyUGI1Q25kdG9STnRwcjRvTE45SVhaQVU3U3UwVThEVjhC?=
 =?utf-8?B?YjU4QmRQUi9VbWQ3K1VTY0lIWXNjeFpMSGxUc3lSVnhpNWVHU0h6dWtVTm1s?=
 =?utf-8?B?cW5NZTBlUEZTRkcxVElLTnFoTEVQanlhdEtUVm1FeXhwNll6WTVCM0dWUC85?=
 =?utf-8?B?bFVRSlNTczUyd0V2L3REeU56RUJ1bDVlTStlc2NKQ1QxL0tFT0ZkREp2VUFk?=
 =?utf-8?B?RmtXUHN3V1BtODcyTlhvQzc1L3JHeHVsSi9HZzlxV3dNaGxpQlJUNU5XdnpT?=
 =?utf-8?B?cllvNGZsMGdiTE5YTjM5ajE3VXI0ZnFUOS9xNktNVnFHUXd5TWl6TWpqVzRh?=
 =?utf-8?B?UlJIdGJwb295dVNOWElJZlNqOThmNHZhRG55ZUoyd096OE5uczhFOTVkdVh5?=
 =?utf-8?B?enRncHZQZTIrSlloVEZsYWI4RWsvQU9CR1ltUjc1NG9hNWtySWdENmVXdlFq?=
 =?utf-8?Q?BWxs=3D?=
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: 04a7586b-49f0-490b-4470-08dd8d024ebb
X-MS-Exchange-CrossTenant-AuthSource: DS0PR06MB9877.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 May 2025 00:58:40.8107
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XzTSYKylH4u67IZRHfPdNSipaC1Obu6MYM5UlB55vKm5j2aZdH1fVHh1PzuEH9ux
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR06MB8059
X-Authority-Analysis: v=2.4 cv=KJ5aDEFo c=1 sm=1 tr=0 ts=681ab060 cx=c_pps a=xM7ec0glCC7UZJxDhKPaNg==:117 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=dt9VzEwgFbYA:10 a=lre9DRYkaIEA:10 a=hEK2XftRAAAA:8 a=qPKtzgQbAAAA:8 a=zGwR56aBFt4ZPh6_1awA:9 a=QEXdDO2ut3YA:10 a=pvvZm7_9ER1OwvpV3Ftp:22 a=OTAqJWGB1laLS8RTg9aS:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTA3MDAwNyBTYWx0ZWRfX1OpJ3oc7JfQM BcBC1NDNYYtR8bEm3tiRORQ3aZD4z0CULIMs3aC4Gqw1t5NiiMow5US1pCX3Rl5mb210oDSkR4Y 99O4KU0YR1FuESTexuyqoSJ6URTi9XKqhNDu2fSWoFm4WqLVQWWMeHeTS2qwCHwu1kRSDyOT+YL
 4XxEGkoi+yib3tFcMvXKobPXuJ5Hf/1n5IJU72znIStD9mxTzrxDGiD3uFWmjL6wf9OacvT8254 xsWXGl1W1UL/DrKLiSE5MMeiKdZT4fglPDx7ciDu5ZZXS2l5zYpK/3/D/qfu5eMaBuB03oGCEx1 unRs83JXJ7HbuVFIS58q/imHO9C9PzFPH2JRznBvqNQSSij5sX9Ru1EdAYnH/15+dC8zJBsm2NZ
 ryFw534+V9BsvY/zpfmEKWtxWyA4eVMpVuYA5mupExU0lHCzABRXF7aENJkJWNTWnX/8kDKh
X-Proofpoint-ORIG-GUID: 2KabaMdM714NCfuwq-Opvt-yQ_4uIIlC
X-Proofpoint-GUID: 2KabaMdM714NCfuwq-Opvt-yQ_4uIIlC
X-Wisc_ValidFrom: true
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-07_01,2025-05-06_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 spamscore=0
 impostorscore=0 mlxscore=0 lowpriorityscore=0 phishscore=0
 priorityscore=1501 adultscore=0 malwarescore=0 suspectscore=0
 mlxlogscore=999 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2505070007
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Again, GRML has it's own hooks to create custom images. I'll just use those.



On 5/6/25 7:57 PM, K0LNY ?? wrote:
> Rather than that,
> I propose downloading that image, and use something like Rufus to write it
> to any type of flash media.
> Then plug that into a Linux box and edit the FS.
> Then after that, use DD to make an image file that can either be written to
> a CD/DVD or removable drives.
> Glenn
> ----- Original Message -----
> From: "John G. Heim" <jheim@math.wisc.edu>
> To: "K0LNY ??" <glenn@ervin.email>; "Gregory Nowak" <greg@gregn.net>
> Cc: "Samuel Thibault" <samuel.thibault@aquilenet.fr>; "Speakup is a screen
> review system for Linux." <speakup@linux-speakup.org>
> Sent: Tuesday, May 6, 2025 7:52 PM
> Subject: Re: Load speakup module as kernel parameter?
>
>
> Well, that doesn't mean it can modify a read-only file system w/i
> another read-only file system. To do that, you have to copy the files
> to another file system. It is conceivable that UUI recognizes the
> iso9660 file system in the GRML iso file, mounts it, copies it to a
> temporary file system, maybe even a ram disk, then mounts the squash
> file system w/i the iso9660 file system, copies that to a ram disk,
> modifies it, and then re-squashes the squash file system, puts it back
> into the copy of the iso9660 file system, and generates a new ISO file
> from it.
>
> It's conceivable.
>
>
> If you want to see what I'm talking about, you can try this:
>
> 1. Download a GRML image, for example grml-small-2024.12-amd64.iso.
>
> 2. Mount the ISO file on a loopback device:
>
>    ```
>
>    mkdir /media/loop1
>
>    mount -o loop grml-small-2024.12-amd64.iso /media/loop1
>
> ```
>
> 3. Mount the squashfs GRML file system:
>
>    ```
>
> mkdir /media/loop2
>
>    mount -o loop
> /media/loop1/live/grml-small-amd64/grml-small-amd64.squashfs /media/loop2
>
>    ```
>
> 4. Copy the squashfs file system to disk:
>
>    ```
>
>    mkdir /tmp/squashfs
>
>    rsync --archive /media/loop2/ /tmp/squashfs/
>
>    ````
>
>
> At this point you could make whatever changes you wanted w/i
> /tmp/squashfs/. Then you could use mksquashfs to recreate the squashfs
> file. Then you could make a copy of the iso9660 file system mounted on
> /media/loop1/ and copy the new squashfs into it. Then use mkisofs to
> recreate the GRML iso.
>
>
> On 5/6/25 1:29 PM, K0LNY ?? wrote:
>> Apparently it does, since it can put GRML on a live USB drive.
>> I've used UUI to put systems on a hard drive plugged into a USB to SATA
>> adapter, and then put that into the computer.
>> Glenn
>> ----- Original Message -----
>> From: "John G. Heim" <jheim@math.wisc.edu>
>> To: "K0LNY ??" <glenn@ervin.email>; "Gregory Nowak" <greg@gregn.net>
>> Cc: "Samuel Thibault" <samuel.thibault@aquilenet.fr>; "Speakup is a screen
>> review system for Linux." <speakup@linux-speakup.org>
>> Sent: Tuesday, May 6, 2025 1:26 PM
>> Subject: Re: Load speakup module as kernel parameter?
>>
>>
>> Just to be clear -- you are saying this software has the ability to
>> modify the squashed file system w/i a GRML iso file?
>>
>> I mean, GRML has it's own persistency options. Maybe it knows about them?
>>
>>
>>
>> On 5/6/25 1:01 PM, K0LNY ?? wrote:
>>> If you download UUI the universal USB Installer I mentioned, they have an
>>> installer that you run whenever you want a writable live image on a USB
>>> drive, and GRML is in the list of operating systems that you can select,
>>> and
>>> it downloads the latest image ISO.
>>> Then you can edit it all you want, and the changes will stay until you
>>> change them.
>>> Glenn
>>> ----- Original Message -----
>>> From: "John G. Heim" <jheim@math.wisc.edu>
>>> To: "K0LNY ??" <glenn@ervin.email>; "Gregory Nowak" <greg@gregn.net>
>>> Cc: "Samuel Thibault" <samuel.thibault@aquilenet.fr>; "Speakup is a
>>> screen
>>> review system for Linux." <speakup@linux-speakup.org>
>>> Sent: Tuesday, May 6, 2025 12:57 PM
>>> Subject: Re: Load speakup module as kernel parameter?
>>>
>>>
>>> An iso file contains a read-only file system. GR ML uses a squashed file
>>> system w/i it's ISO file. So you'd have to mount the iso on a loopback
>>> device, copy off the squashed file system, unsquash it, make your
>>> changes, squash it, make a writable copy of the iso file system, copy
>>> your new squashed file system into the iso file system, and then
>>> recreate the iso file.
>>>
>>> As I said, GRML has it's own customization options. I'll use those.
>>>
>>>
>>>
>>> On 5/6/25 12:12 PM, K0LNY ?? wrote:
>>>> Also, you don't have to write an ISO to read only media.
>>>> You can do that after you have made your changes.
>>>>
>>>> ----- Original Message -----
>>>> From: "John G. Heim" <jheim@math.wisc.edu>
>>>> To: "K0LNY ??" <glenn@ervin.email>; "Gregory Nowak" <greg@gregn.net>
>>>> Cc: "Samuel Thibault" <samuel.thibault@aquilenet.fr>; "Speakup is a
>>>> screen
>>>> review system for Linux." <speakup@linux-speakup.org>
>>>> Sent: Tuesday, May 6, 2025 12:06 PM
>>>> Subject: Re: Load speakup module as kernel parameter?
>>>>
>>>>
>>>> If you booted a ubuntu on a CD-ROM, you can make all the changes you
>>>> want to /etc/, /usr/bin, or whatever and the next time you boot from
>>>> that CD, it will do exactly the same thing it did before. You can fix
>>>> stuff on the hard drive of the computer you are booting on but that is
>>>> not what I am working on. When you boot Ubuntu, you can press
>>>> control+alt+s to start Orca. But GRML uses Speakup, not Orca. That's
>>>> fine because it is designed to help you rescue a broken computer. I just
>>>> want to start Speakup during boot on the live image. Like if Ubuntu came
>>>> up talking instead of making you press control+alt+s.
>>>>
>>>>
>>>>
>>>>
>>>>
>>>> On 5/6/25 11:32 AM, K0LNY ?? wrote:
>>>>> If you have the image on writable media, you can edit it.
>>>>> I was working with Raspbian on an SD card and I messed up the fstab
>>>>> file
>>>>> and
>>>>> it would not boot.
>>>>> So I plugged the card into another raspberry pi and used the cp command
>>>>> to
>>>>> copy my backup fstab file back in place.
>>>>> I could easily put a service file in /etc/systemd/system.
>>>>> You would have to wait until first boot to run
>>>>> sudo systemctl enable file.service
>>>>>
>>>>> Glenn
>>>>> ----- Original Message -----
>>>>> From: "John G. Heim" <jheim@math.wisc.edu>
>>>>> To: "K0LNY ??" <glenn@ervin.email>; "Gregory Nowak" <greg@gregn.net>
>>>>> Cc: "Samuel Thibault" <samuel.thibault@aquilenet.fr>; "Speakup is a
>>>>> screen
>>>>> review system for Linux." <speakup@linux-speakup.org>
>>>>> Sent: Tuesday, May 6, 2025 11:26 AM
>>>>> Subject: Re: Load speakup module as kernel parameter?
>>>>>
>>>>>
>>>>> Well, this is GRML, it is a distro designed to be run from a CD-ROM or
>>>>> USB thumb drive. If you change something in /etc/, you will lose it the
>>>>> next time you reboot. I don't know if it's even possible to change
>>>>> anything in /etc/ while running a live GRML image. It might be mounted
>>>>> read-only.
>>>>>
>>>>>
>>>>>
>>>>> On 5/6/25 11:22 AM, K0LNY ?? wrote:
>>>>>> One could use a startup script in systemd/system or maybe a line in
>>>>>> rc.local.
>>>>>> Glenn
>>>>>> ----- Original Message -----
>>>>>> From: "John G. Heim" <jheim@math.wisc.edu>
>>>>>> To: "Gregory Nowak" <greg@gregn.net>
>>>>>> Cc: "Samuel Thibault" <samuel.thibault@aquilenet.fr>; "Speakup is a
>>>>>> screen
>>>>>> review system for Linux." <speakup@linux-speakup.org>
>>>>>> Sent: Tuesday, May 6, 2025 11:17 AM
>>>>>> Subject: Re: Load speakup module as kernel parameter?
>>>>>>
>>>>>>
>>>>>>
>>>>>>> If you want to start speakup by passing parameters to the kernel, the
>>>>>>> speakup modules you want to load have to be compiled into the kernel,
>>>>>>> unless grml does something nifty I don't know about. If the speakup
>>>>>>> modules are just modules, then the earliest stage to start speakup is
>>>>>>> inside the initramfs. That's still not as early as the kernel
>>>>>>> decompresses and loads, but it should still be enough for most
>>>>>>> purposes.
>>>>>>>
>>>>>> Hmm, I guess figuring out how to load hardware speech drivers isn't
>>>>>> worthwhile. It might be possible to install a custom kernel into a
>>>>>> GRML
>>>>>> image but probably a more useful thing to try is to start speakup with
>>>>>> software speech automatically during boot. It is not too difficult to
>>>>>> start speakup after your machine is done booting but it would be
>>>>>> better
>>>>>> to have it start automatically and during boot. I'll have to get back
>>>>>> on
>>>>>> the GrML list to see if I can make this new approach work.
>>>>>>
>>>>>> Man, I should have asked here first instead of spending a week trying
>>>>>> to
>>>>>> load the speakup modules at the kernel command line.
>>>>>>
>>>>>>
>>>>>>

