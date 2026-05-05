Return-Path: <speakup+bounces-1599-lists+speakup=lfdr.de@linux-speakup.org>
Delivered-To: lists+speakup@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YOLLDzxZ+Wk68AIAu9opvQ
	(envelope-from <speakup+bounces-1599-lists+speakup=lfdr.de@linux-speakup.org>)
	for <lists+speakup@lfdr.de>; Tue, 05 May 2026 04:43:08 +0200
X-Original-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 76D224C60E0
	for <lists+speakup@lfdr.de>; Tue, 05 May 2026 04:43:07 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=math.wisc.edu header.i=@math.wisc.edu header.a=rsa-sha256 header.s=selector1 header.b=A5C5F0FF;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id E8F19382B7C; Mon, 04 May 2026 22:37:12 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id C8F703806AF
	for <lists+speakup@lfdr.de>; Mon, 04 May 2026 22:37:12 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 94F7438179A; Mon, 04 May 2026 22:37:06 -0400 (EDT)
Received: from mx0b-007b0c01.pphosted.com (mx0b-007b0c01.pphosted.com [205.220.177.71])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 711B03806AF
	for <speakup@linux-speakup.org>; Mon, 04 May 2026 22:37:05 -0400 (EDT)
Received: from pps.filterd (m0316044.ppops.net [127.0.0.1])
	by mx0b-007b0c01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 644HcBsQ1204179
	for <speakup@linux-speakup.org>; Mon, 4 May 2026 21:36:59 -0500
Received: from ch1pr05cu001.outbound.protection.outlook.com (mail-northcentralusazon11010004.outbound.protection.outlook.com [52.101.193.4])
	by mx0b-007b0c01.pphosted.com (PPS) with ESMTPS id 4dy01gaxn7-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT)
	for <speakup@linux-speakup.org>; Mon, 04 May 2026 21:36:58 -0500 (CDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BzBODBZ6wgXPTMeL011CJXbgT75mn8oiB/KHlDymL2CEQm2IQCx37V1eJLKFJbw3EHisfJWGBjRxMIN+BOEzsKN0Gm8uXg3x9tEyrINLWMSabT4QmJnL+vcKsygYFcZlW77v3mB0d695/E7AUH9gjEzkoexAXZzLexxoudfd61cUDtBw0kZJn1DVE6/KDiToykOLbJo5xjagNndJxxfxudGh0hoST9c+JUm3gSW6nhDKgcDE5sruroLHeNLyh/Tb1zNomDvaDXsqbyNKHiQfaCCAPJh5BuHhroXSY1WuWGbnHjcZmxZXLqUBUualCPCNBtl5zOkbG+xhFle6SDSA6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SHtyUQX4hwlM3As9OwZK1Fc07bmiW+ph2mnBkVzS4u8=;
 b=RCk/OoA/mZ6bzVlnbDLtxAn3oQI52VHdKN4Xm5I49glLQEianS8ZLHkhYUrVIHaswVdCeRpkjZW6DflbpRoWFCNEwTnky7ogNrEclqTZjWcyZ/DW/wBwn3tjO8KpsvzKHDN/VaRwC2xcTwqpk6gFn/RD39FDyxk3/5pV3jW5MwhbTqiwG1E/5gbLQ8FM8oexVXu6wabZ/1BE1ZvTIL+6NCjbRsAVwzk8kz0DymSJ+x8hyOQR22zvWvthxNKoQoxyxiALRdjNGT5awQed8SOZ7EyN+mC3/nHa2P9hp8GG+7ZLcShmVkmj71+iMaJVHZRXiQcbs+zz8rrGMmrMt2zeaQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none
 header.from=math.wisc.edu; dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=math.wisc.edu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SHtyUQX4hwlM3As9OwZK1Fc07bmiW+ph2mnBkVzS4u8=;
 b=A5C5F0FF6V1cbgQW9BmaWoJzBxVjtp9a2h/lop6pWuHd8XpoQpQHn5XYnfgWIGFygiHZFT1tgyejKNm3N2TWoXmdCWmKv6AFUF+xipuOpvJvtbZR5MWkTpn8e/Wh1FdcGGGjEEPrHVhYK0HtrDWSZQaPUbb4Loyn46mPaXa0ZUOn2EElN9xLVD7F3B9qW9bZFOSRxMjnGf0KESkofQo/JFQoOtul8O83IECZPfiJWNQ1+6HyoehKI5EhorKAQceYkjprQ8hiMD3nzteoc5jqdTh2xX0nqC7zEjkGqokrhe3egXe6yh2UNUe0lcPXg3LyUpb4cN8h/DzFeGQspiJZmw==
Received: from BY3PR06MB8195.namprd06.prod.outlook.com (2603:10b6:a03:3ce::19)
 by MW4PR06MB7834.namprd06.prod.outlook.com (2603:10b6:303:11d::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.23; Tue, 5 May
 2026 02:36:54 +0000
Received: from BY3PR06MB8195.namprd06.prod.outlook.com
 ([fe80::a7ad:fb62:4389:fd8b]) by BY3PR06MB8195.namprd06.prod.outlook.com
 ([fe80::a7ad:fb62:4389:fd8b%4]) with mapi id 15.20.9870.023; Tue, 5 May 2026
 02:36:54 +0000
Message-ID: <bf198396-b075-43f2-8e12-96bf7c1a3e11@math.wisc.edu>
Date: Mon, 4 May 2026 21:36:52 -0500
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
From: "John G. Heim" <jheim@math.wisc.edu>
Subject: Voxin and Speech Dispatcher
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: CH0PR04CA0030.namprd04.prod.outlook.com
 (2603:10b6:610:76::35) To BY3PR06MB8195.namprd06.prod.outlook.com
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
X-MS-TrafficTypeDiagnostic: BY3PR06MB8195:EE_|MW4PR06MB7834:EE_
X-MS-Office365-Filtering-Correlation-Id: 99e83208-22da-4cc0-9169-08deaa4f2b45
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|786006|41320700013|366016|376014|1800799024|56012099003|18002099003;
X-Microsoft-Antispam-Message-Info:
	/OJR/Ubp4iaYxGU3YGI+TmVw1b5zEexGc45LtKY2NbsEQi4oHdXL46Gm0v1JgJYoFLOfY2OIG/c7y405476K3QAnKkBxdwmQKcc31rlLQipqHCNjfGVoYMaqhmtxPdeIgjtNKY9uQmGtQlJxny19CkZQxY5xuv1teSET8J0a+c2Wxyba6y4hRiEV8MdVX2wdmdI7X8+Lkcu7YW8oNXXCJaFrcce0aaw6OKtAQJhYzoJap5WgRXYHqzdsX1Xk2xbIPUrX1cs4VkP+vaI0jGFi8uQbSJ8PPSboJTg2JB906gmZCBlC84UX930uTogalSM9bTMvhksP2rqIfi2KoTzQB/sYUFQm/J2Gcv6yNkxXC1DOqAE/+nBFkzEcaUWV+scnDlRPTFmvtnCLR0NJSbLuj3Hs/D45WgCqe4q5n8OQGEaD3dOwDTd14+2AMpyy8ITjwGRnyuv/Qr6L+4xXnlUX7cWRVMEx3ZGnVuJRu9Oo1Byq9QyIG1ZbPAuRLw8/A3Tzh/15+d9crgMWMlDdOynyfWG0afzaNrDkxFIsbF49nR/icjUXBSI/FXivfXfB0ilXY6PZTTG5hAYbjWb1Z2da4HounHchU2aEOkKc0nC1tjF0M0YyUJJ1LcVpKhMs+qAwEElD8K/dU9j/xNNIXK0s1a6ghifsTtjDbiPlUq6VmDE3r3rq7BdlAIClL87Y+oCW
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY3PR06MB8195.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(786006)(41320700013)(366016)(376014)(1800799024)(56012099003)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?WTg5MTJRWGhiNjZuQ2dBOEtiZy8rR3JMMVpPVm5kbUlXdUZ1VVc5dDd1aGZ2?=
 =?utf-8?B?WFFMVXpUa0J1TWRsMXZ1YUtmS3RjZldoOEVxQUNKd1didHhTU0s2eGoxcXFL?=
 =?utf-8?B?MHMzdUtERmRqR1ZYd01sVzRvSUJDbENHb1ZBK2JWR1BSb1R6QWlOY1F2SkNx?=
 =?utf-8?B?UFF4Rk9JZ21IdU5lQzJ1eVc3MWlEdGp0cDNVbTFOcVlmbnRuWWhqN2tvdU4v?=
 =?utf-8?B?dUdZbzNQbHMzS0FCemNzT256TG5TdFYyUFdqd2g3eFI2RlFBMDhBbmRQSWhr?=
 =?utf-8?B?ZGprTWVhaThmcEVLYUFrclA4SkhEaEtiSkNJZ0FxL0c1OUgvNXVwY1Rsb3Va?=
 =?utf-8?B?VGpOOEcwVWZabVlreHEvVkNVNzdUTS9JR0Vlc2NXdUh0ejc3U0s1ZkxaVlF5?=
 =?utf-8?B?TWMrTGVSeWZyMEFvZGQ4cnZTRXlCV2hrL0taamtiWXlIdFE3ejJ0RXJ6Q2NL?=
 =?utf-8?B?WnYxWEIwM2F5UHlXZEVmcGQ1amY3RHR0ZTVacGFHclpQTDEzdnAzKzN3bFVL?=
 =?utf-8?B?LzF2L3B5QURSWDVvcWpmYWlJdng4V3FwN2pudTh1TzFmZ2tTTHFjV2dJL253?=
 =?utf-8?B?c2dyMjkyU0t2WFFYUVB2WWVKcU5WY3U2azJWTTVQcEZxR3h0S0NaYWdSY09B?=
 =?utf-8?B?VFJIcEZ3Tm9GUzlDTk1yOVJXVU9xSVZiZWMzelBRSjZLTlhBRno2eE9tT1A1?=
 =?utf-8?B?U2o2Y05vY1pLTXlTVW5sQkt5V21DOFRDRlVoQm5xWFpQd3Q1YUVndUM0Yk1R?=
 =?utf-8?B?OFZOV0N2MlRqdmd0a0ZSZ1hHbjI0T0hXZ0RqY1RFQXNnZVVZMzc2RjdEb1Vo?=
 =?utf-8?B?dmh6ZWxDcXhzaENUVEZ3ai9oSEZvbmNhT0FMZGdUSk8yeTg0a0RSelJqT0F0?=
 =?utf-8?B?alhjVms3RU5FdjZwVG1vcVdta29McnVXVC9TZFNjTVF0ZXA3WHo5QWNoZm8v?=
 =?utf-8?B?c2dWYmV4dWRjdmV0ekN2a2o0ZFp0UjJMZUVWTTBjNW1wWGxnTWFNTWdrM2VV?=
 =?utf-8?B?V1hiK0pMYklwVlY2cCs5SVpIOTBEOFhSWi9CQVdjekxlM0wydTV5VmV4Zy93?=
 =?utf-8?B?MWlLZTF6Y1pib1lsanUyQS9PV3ord0ptRTI4MWgzbzAxTEUweENJVE9qUmc4?=
 =?utf-8?B?TTB6Wk41b1VsTWRnUWNZQnk2bHpaSmp0ZEJZVHByUjNhdWQ3RFJBMDFWWlNr?=
 =?utf-8?B?WUdyaEU4MDg2M0Q1T0R3SGM4bHNrVmlWWCt3RUtvY3VqbWs4TUJlalVRY1pQ?=
 =?utf-8?B?S2Q4SUFRLzExVFA1b3VqaEJLUUIvcE5kS2x0Q1FXcElkSkhiMDdlNGN6MCs1?=
 =?utf-8?B?ZFkrTTZFcGxiTlpzNG9VMG9ldVdTNlJNL3pGKzVPbnF5aHdENW9zRVQ2MmFJ?=
 =?utf-8?B?akdnSTNGSjBTTEU4WHNSVzZHNjdaN3VkMENSOG5xZG9CWW5tdDRuaUk0eDYv?=
 =?utf-8?B?ZVpzNmRvWlhVQ0dvZUY0VC9vdDVGZHhBbWVDeEhiMzhLcy9yVWEzdXVjelN2?=
 =?utf-8?B?MjlETVZ5VDVWazlFeitCYVMwMUdDMlYzcVZlejR5WFp1TmI2R0h3S1RMVGZW?=
 =?utf-8?B?OUx4UVlFVHZ0cklEQm9lbFliQ3JzZjhxdTl2SDU1SDdNU1N2RDBTME9QTnlo?=
 =?utf-8?B?Tnh2bUJuWUVhcEppUnkrS2FrcWk5MUtIQjdkd3RUOTgyV1V0M25Xa2tUWGYy?=
 =?utf-8?B?SENINEN3bmpwYkpFc3BJejloTUN5OFl3SDRjM0ZyOEVoYndpM2JkWG9SaTJ4?=
 =?utf-8?B?TGxhMHd5Ujh1djI0c0NXOW1raWxvVURlRVJ6REpHWkVZaHNCVytrZ2VQNUEx?=
 =?utf-8?B?VkF0UmRsUTlHZStDZDdpbHJNYWRzRDlpOFdabXA2QXQ1SVp0Tk1Qbld6MGY0?=
 =?utf-8?B?eVJKQUQzUVhNUDk4aXV1NmlNTWdRUDFyZVVISHQxOS9xWnlwanRSQmpLUHl1?=
 =?utf-8?B?bnBLSFNFcEtNcmhYOHFHK1lKMzZUOFhOZFIwd2p4N3B5akRYek16aTl5cDBa?=
 =?utf-8?B?NzR5Rk4yR1lIY0FaellWUVNFMjEzSHFjL0YvejlQUDFxOVkyak52eU5kZzdm?=
 =?utf-8?B?ay9sNVBRT21xUmNNa0syVi94NnVYbkR6L1Y5Mm40QnBkb3NDeUVJbDFoK045?=
 =?utf-8?B?SWk1WU5aM0ZsSVRBRExkZ2xockVsWll6eTR5SFFGQ0NTOE5XMlZ4WFB3SHpS?=
 =?utf-8?B?YzErVEZ4b2Z2Y2JYeWxQd3FNeXBoY0E1MWhxYjhiMW1VM3ZnT0hDdlJ0SFI0?=
 =?utf-8?B?RHJ2eVUwcVdlcFJjeFBVMy9KS29MYkhsSnZwWUl2eFVob3VzNmhjaC9id1JL?=
 =?utf-8?Q?BnmZM4k5wF/tvooBy4?=
X-Exchange-RoutingPolicyChecked:
	VhZwKaONXcATxrjx8rbgiHkjb9QdgmUTqmTfPFSXOu5Oc/AkUU26hlOE+FY7oDbQ0RBx3dr+6bdmZlCJH5Omr08DR8ZgJUjF5Wkk3ApxQamLMEW5ePP0UkfARnEq+iXVRRBqqiiq1BcfoDwOUnoefLOqA4AG5YbIRXL5GIzJ6/+558d2zg/Sv/lJVOXHNBQkFFA/+WcL31T47Pad1sFbXWrU9V6WD7kKW5o2ZEVBSD7iBnRFdxhFrelX8JpUE149w7GCJDc0HxQv9F8QfWGsQjt9NUa5l8mpFarFlSxsjxMIGzmX39pbW34CRGpl4mc8nOQUA4mxJ2fvyMXCSQe73w==
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: 99e83208-22da-4cc0-9169-08deaa4f2b45
X-MS-Exchange-CrossTenant-AuthSource: BY3PR06MB8195.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 May 2026 02:36:54.7156
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: A1mtMQI1bzNadtx+WX5qq3cqZJezEx67tqVKO4RsFCHpW2oPlP/3JHjM/o/6wo9X
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR06MB7834
X-Authority-Analysis: v=2.4 cv=Z/Lc2nRA c=1 sm=1 tr=0 ts=69f957ca cx=c_pps
 a=Q+OuU4uwq9JOSoz6MpkFfA==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=lre9DRYkaIEA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=ZyELlZqCvD1aXIDzc3I-:22 a=PmXMWaiFgSq4GZTC792z:22
 a=ruRgzcJGFK2k4P6-89wA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
X-Proofpoint-GUID: NDlKjSb9alWCFzw8SlpHHuQIgxI4ESWK
X-Proofpoint-ORIG-GUID: NDlKjSb9alWCFzw8SlpHHuQIgxI4ESWK
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTA1MDAyMiBTYWx0ZWRfX2PTrxvq3R7Qo
 qNfH53sDrTmyW0gMsW9WCXoSw7rvSDADEbY0GEkkv/az0iGAoUMh6eZ0Vp9hpYukMOQ9mdd+Cv+
 w+UkWVD8YM6UY+fz5u9zrKw0vReucxNDJLSzt+cS7FWdVWUDzUBca6Et5hYSzC9yrHnjYPezWs7
 ScQg5SXn9mAC6nEKQc19NG9MTi/uys2Yh2JYSgPsTa3qeZlk9iWYWK0+n5fFP5a0gXRgGVRwzw5
 1vfxECePzCKu5quEBIJ7aCO4bRuC2t+N4aVdXrjLaNcwKxXSwMAlkChE368sqW5znBel91AsQ2F
 s6w43V21iBhLE9c2M7Hi630H7V2Uszo4kh1ldqM+xgOq/wY9RbRKgGmv7V0007sMcxupb6EPPKA
 9mSm1AZy5obiAx3AZezP3cE10uAnTtJe+UbgQLXKd/MEi40OsvyTFt3m+BZX7pWQZfvv5Ip5q6I
 ElxshiSzOuTvY0NP02g==
X-Wisc_ValidFrom: true
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-05_01,2026-04-30_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 clxscore=1015 impostorscore=0 lowpriorityscore=0
 adultscore=0 priorityscore=1501 malwarescore=0 suspectscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604200000 definitions=main-2605050022
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5
X-Rspamd-Queue-Id: 76D224C60E0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.89 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[math.wisc.edu,quarantine];
	R_DKIM_ALLOW(-0.20)[math.wisc.edu:s=selector1];
	MAILLIST(-0.18)[generic];
	RCVD_NO_TLS_LAST(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_ONE(0.00)[1];
	TAGGED_RCPT(0.00)[speakup];
	ASN(0.00)[asn:5645, ipnet:206.248.128.0/18, country:CA];
	NEURAL_HAM(-0.00)[-1.000];
	R_SPF_NA(0.00)[no SPF record];
	TO_DN_ALL(0.00)[];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jheim@math.wisc.edu,speakup@linux-speakup.org];
	TAGGED_FROM(0.00)[bounces-1599-lists,speakup=lfdr.de];
	DKIM_TRACE(0.00)[math.wisc.edu:+];
	RCVD_COUNT_SEVEN(0.00)[8]

Anybody know if it's possible to get Speecch Dispatcher to use one of 
the really  nice voices you can get from Voxin? I have Samantha on a 
machine and I'd like to have Speech Dispatcher use it by  default.



