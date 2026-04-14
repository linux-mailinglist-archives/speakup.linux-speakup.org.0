Return-Path: <speakup+bounces-1590-lists+speakup=lfdr.de@linux-speakup.org>
Delivered-To: lists+speakup@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QIj7MZB03mkqEgAAu9opvQ
	(envelope-from <speakup+bounces-1590-lists+speakup=lfdr.de@linux-speakup.org>)
	for <lists+speakup@lfdr.de>; Tue, 14 Apr 2026 19:08:32 +0200
X-Original-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id E60BC3FCD73
	for <lists+speakup@lfdr.de>; Tue, 14 Apr 2026 19:08:30 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=math.wisc.edu header.i=@math.wisc.edu header.a=rsa-sha256 header.s=selector1 header.b=nhNR2dyK;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id BE43E3825B9; Tue, 14 Apr 2026 12:59:43 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 99B3238158B
	for <lists+speakup@lfdr.de>; Tue, 14 Apr 2026 12:59:43 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 557B43818AB; Tue, 14 Apr 2026 12:59:37 -0400 (EDT)
Received: from mx0b-007b0c01.pphosted.com (mx0b-007b0c01.pphosted.com [205.220.177.71])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 4E0BD38158B
	for <speakup@linux-speakup.org>; Tue, 14 Apr 2026 12:59:36 -0400 (EDT)
Received: from pps.filterd (m0316046.ppops.net [127.0.0.1])
	by mx0b-007b0c01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 63EGBJN92375049;
	Tue, 14 Apr 2026 11:59:31 -0500
Received: from sa9pr02cu001.outbound.protection.outlook.com (mail-southcentralusazon11013057.outbound.protection.outlook.com [40.93.196.57])
	by mx0b-007b0c01.pphosted.com (PPS) with ESMTPS id 4dhrvsgd6x-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Tue, 14 Apr 2026 11:59:31 -0500 (CDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aIvOZhtT7jkXIc5oP4GOac+WZ3FNiATKX1nFjJk+JJJRhOPqZcmCJV93ncP6zYIyQ1U89RrkWfLhFWpKvsnr0J4ZkIOl2L0qkD91zMZBhra5znC2JkIwwgkbxiwJ0yW07osWFsIwQ+y7s9b0iEombGOGZecUiARs1Jth5h9BqQtMGSzKQgadcg0mt9hfmGUQetlo5gdubNDFx5ErZ9awTt+srx1kb7JSebhF2zejjUJRAJ6/ppMZBP4LcQt02oYEsnFuj0SYj/y8D1oCadNx0N+aE2pLc4l1Px/pmtZ9XjYmuNG+MW3/sdb4TCh4wezHiF2M2I8Qw1m4z5igxkpYJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=21EfCE1OH4XDuVxqv4sascqg3oG3FXcypqjzO88dMHY=;
 b=FJhXyXX6bmSDH9J8/WZ/DU3FDBuUPj4DJbIruDed/u2SD5DW0pwN1Snh6aXX6JO09JV6Dfw4QuuwuArF2yoVRO7Oxk+KGrCdqZBAVGkN31L31d4SDl/QT7mAMxrW83ew9ndyfUE76liiIUXVYTSJ5UpsrzfyslOG8HIhhFiWm22H0FyV2AK4WmwfCR3SCOLgm25o/3/FMkse54RNM6fQU9f6CgCJEJYb7NdyLPAYceb/zMDE7pcZVKMwQbhT+u2Td3vekfJAliTPbp5/NBjjYbmx5147esF4E5GRmt+eJ8REL+CmvsPmIWlAz6T4bJK1GGbMdZ8rsyOXwDhcicMfJA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none
 header.from=math.wisc.edu; dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=math.wisc.edu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=21EfCE1OH4XDuVxqv4sascqg3oG3FXcypqjzO88dMHY=;
 b=nhNR2dyKVPQXmVy6u3DSiSytrxXhY7Ry85LYScV5WE4x5/tMZmZCbXKq1U7lJkBzlnULtbrF/bxfMiuHaTuYvr95lCvHoTkQiZ6K+7q7dzgqRWd/v3jr0R7iW7BkSLsvd6acUXzSV9Bqf1sy1oUYWZe8jFiH38xE83tNTGsyUlF4LWQKMaF8d515GY7X/093QlZTFE1tIrWziz6+1p73wTMcM9eH0YHe9IilQ1dcSBNzJIUEGObzh9Oo4PY1YZ9MEFMIC7R8m3lyktvWHmDQfIp0yKMe/ky0FGsq1FrsYDFHz1bdX0aLYRGoc7UgDQMSUEZdqljmoyuQkK6ZNYmpeA==
Received: from BY3PR06MB8195.namprd06.prod.outlook.com (2603:10b6:a03:3ce::19)
 by CH2PR06MB6614.namprd06.prod.outlook.com (2603:10b6:610:8c::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.48; Tue, 14 Apr
 2026 16:59:29 +0000
Received: from BY3PR06MB8195.namprd06.prod.outlook.com
 ([fe80::a7ad:fb62:4389:fd8b]) by BY3PR06MB8195.namprd06.prod.outlook.com
 ([fe80::a7ad:fb62:4389:fd8b%4]) with mapi id 15.20.9769.046; Tue, 14 Apr 2026
 16:59:28 +0000
Message-ID: <2f0d35b6-b2b1-4aee-9a56-55bb08675386@math.wisc.edu>
Date: Tue, 14 Apr 2026 11:59:26 -0500
User-Agent: Mozilla Thunderbird
Subject: Re: Rewriting docs: Live distros in the FAQ
To: Gregory Nowak <greg@gregn.net>
Cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <0b15c93b-1af7-4046-ace8-5a6057f22dd3@math.wisc.edu>
 <adR32lZjzJrmAhFo@gregn.net>
Content-Language: en-US
From: "John G. Heim" <jheim@math.wisc.edu>
In-Reply-To: <adR32lZjzJrmAhFo@gregn.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: CH0PR07CA0020.namprd07.prod.outlook.com
 (2603:10b6:610:32::25) To BY3PR06MB8195.namprd06.prod.outlook.com
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
X-MS-TrafficTypeDiagnostic: BY3PR06MB8195:EE_|CH2PR06MB6614:EE_
X-MS-Office365-Filtering-Correlation-Id: 2d0af335-2b92-442a-4b43-08de9a473094
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|366016|41320700013|1800799024|786006|22082099003|56012099003|18002099003;
X-Microsoft-Antispam-Message-Info:
	2aoM08xpo8JC59re8KlhlAvArVT1nV2Y7CRIbUBZBNlQ7Uc4ODFZE9Wu3e6cKKoFNaxM9/ZV38nVtcnZEagLIS4rbXk4KKt26PbK5Stg/adDDnvRFPjB+MaF/Xt2q9cpMfsh7IEOx8SVlKgsI8uJtlt996lc/1EKv8vhDTe5iaGw/B3kQkW0K0kWOkJPZ9YF7yg1yAjZrpAJUvrfx6hgydL7SddrbnD7Wv/wobXad6dRtdjljH0zFbqRGBcyy+Gp774sfFrIm9VfttUoWqmxr7VK4tUcHWCg+8N7m33cREINzTfPSl5NmnRZrGxmqMV+zawGuLQMtJtWWD5IEzAEdaqhu8bCpo4aKtcB1E1R6bDFji1MfRllKnw1cGiElumjAkVjLbSosXMi0iK/WkVTKw676xYbPThuaX30uDj9/zuJzq/FpLrsiF8OH1G5twU6Ym6EVkQojvnc4Ix4GCZF6/rqoNN8ELHfAVT0gq/Dj/5N//g27EYhTCnlRJq3UtUu7BmDuj0fKVnEls6MeZUxpdocb2/iSDR62dEOjgcI5AJgDNO96IPfiZJ62ELQQodjqMpYpHzdSQRvEL4tv+O+iaN2JRqjRcrhRLUu9fCEu68t/aft47CCikZcxZeSoJ2DbUVSZBSiSfb+K2YNFCvZaiW8ko1MFpk9uY7BlKpskq0ubr87iv3bdp2i/vAbdFoq
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY3PR06MB8195.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(41320700013)(1800799024)(786006)(22082099003)(56012099003)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?a29WRDNJYk1Vazh2S3JPaFd0VXFaZ1ZUdXUyYnN4WFNQdnI3UVV3eEhXTUY4?=
 =?utf-8?B?RHVZQlpOYWJsK0luaGc0YmF0WHFLbmxINUpNVGRZdFhtU3VWRlZwbTcyNHR5?=
 =?utf-8?B?NWVVVis5NWoydHhYWTdwVjJqUUVkQlh4aDNFSFh0bk9UenlVZzNNQ0FPOUxl?=
 =?utf-8?B?cjU0NjFvSUxrWUROM2YzbnVQQlh4UWdHM1dLL1JzcmwxMXIwZDN1djRKQ0Zz?=
 =?utf-8?B?Sm9PZzhwdXFDcXhBYXF6KzBnZzFkZklSSlJRSFlER29OS3lWMU5LWjhURFhP?=
 =?utf-8?B?akhpMldqL2RFSE1VaWhMOW9uNUJxUEF4UW9aRllwN1pPMndtUlZMRk9MYUll?=
 =?utf-8?B?ME0zQVp1d1BMREZqZGNsYXRDNkd6TUF1YlBzUlE3YnZ2aCs1UGFjbXNGMjFT?=
 =?utf-8?B?K1gyS1dwbFViNmlxVjZGVGQrbk84VG1uS09hcmZRRkxuTHVqd2NvWHZKczUx?=
 =?utf-8?B?R3lwTFNybUt1c2lCTzJVMXYrQzBnK0wwWUFPSzNsbDE0dzNRdnEyOEtRbWFm?=
 =?utf-8?B?eXpBZ0hnQ0xkZHE4OUlJNEF5MGtndDRGY0M4VitLZ2c4SnJrSzREWjdYM1hY?=
 =?utf-8?B?WWxtbWlsUnFPaGNIbEwxSkVLU0M0YUlWclgveFE3dDEwcWlPSS9rbG8yWnd2?=
 =?utf-8?B?ODNZSFlZR1RIVmxoQWttRnpBL0Ntci9ralFYbmdoRlM1QmpuQXdwT0tlWkp4?=
 =?utf-8?B?TW5nQ1NNcDRJcmFDYnd0ZUppekRQQjlWY1Q0eHNNaWVNQ0VtVTY5dllIS29u?=
 =?utf-8?B?UkUrc1FEeTJFQUFTVVBMTG9Ld0xLYnFlRVJ1QWVGV0ZwWUpMTVFhZUFHaU5L?=
 =?utf-8?B?bFdpRnA3aEhuVXJQQjBxSDBodlZORnpJc3R2eENVMzhmL25NMTRiT0VnRlls?=
 =?utf-8?B?bkZLdGNicU4vYWtyNDlhNkJzTjB3U0s0QWVtYzBYRkVIbXpsQUtRRTJ3SU1h?=
 =?utf-8?B?UzVlQzJVUVlZUFBnM2tHZzFNYzZhbTVLS3NZRmpzdTN6SXAzUlNtY0Z3T1V2?=
 =?utf-8?B?UWtpeGZtS2M4NmU1Z1Nocjc4RmhxR0ZBS2d4aTVGZFh5MnBHVDZSK0RuOE5s?=
 =?utf-8?B?NXlEUFg1a0tXOHJNeXVhMDR1ZE1UbGhwSXlJb016VnJMMWhXOEV1cmJyTjAv?=
 =?utf-8?B?OWZvNW5PT3VNMzM1dE5DQ00xN1NVcjhYZGgwUndOS1dUaWticmgxd0t4M1BC?=
 =?utf-8?B?aE1vRk5MTjdQREtPZm4zaWY1SlZKaVd3UDI3akVDMS80R2puQW9QWEpxWlY2?=
 =?utf-8?B?TnRYSEU3M1BSVVdjdFdXSWZMOUVXWWZYQ2xmYXBmek5LZTVZUlJkaEpaYWln?=
 =?utf-8?B?aVN4a3prR01EOW9XeEpWV1Rlcnc0eHZ0MGh1Zzlnak5Yb1ExSm1zSWdLTGxI?=
 =?utf-8?B?MEFXSGFGMVBBdUZORW1mckw2ZWlHWXNvdkRtbk1oZDg3U2R4eDBoaW1xTlly?=
 =?utf-8?B?bitOTFJQYkFMTzZzZkVZQndtM0VBNDNxemE1S2wwYmNKd2I3TVZ6UWdEVUZN?=
 =?utf-8?B?aFE3WElPblc5enMvaWZuSTZSZWR3a3F5MWNlOE83YytXYkd3Y2FVQVdlTHRt?=
 =?utf-8?B?c0pTd1BRV2I5aE1RVVIybmVCL2hKeGd6cWwwZ0ZBSXEvenVzUUlBVlBYRmht?=
 =?utf-8?B?RXJzbk1HL0dsQkd2WjdTeXFWdEpCb1hEYWNnVkVvdTdHcnJWSWIwYWk0MExm?=
 =?utf-8?B?WDB2RnpKRU9NU2hyVmZqd0p0YmYyQThXSklIWE1iMG1EaHkzM1BtV0tRUjI4?=
 =?utf-8?B?MU1OUFU5QWtCaFJzSlphT2V3T2NHYWU4NWpreG1JdnNrMjdIQ1BCSEpGTEtS?=
 =?utf-8?B?QnJhOWIrYWs1VkVsNHk2QlU0OHpnUDVJV2UvSC9Qb29hMzVwSXZuZGVSTFlD?=
 =?utf-8?B?SkhodmsyODV6N2dDdEtPeGpCak8vQ1hHTmp3SXVqZU1oRUc4OWZ1RURraVBJ?=
 =?utf-8?B?TXpuWTdINGJEaUNFWXlzNWNQL01sNkFqOHA3USswdFkvb2pvcEs1N0x5YUww?=
 =?utf-8?B?TUVaWGkzMURiMUFaYVh3T2pMU1RYcVJwbEVzRklPZlZ2RnBaYVVBOW5YV096?=
 =?utf-8?B?Y0tEMUlQTWlHSGpsdUUvRklRd2dxZmlNTGhjd2N4VGhPMkRGQ2QvODkxdkJU?=
 =?utf-8?B?UkRTNHU2djZMcDhKdWZ2U05RenNRU2QrWG1lY2NRbHlYbmFJMlpGOXBmbW8v?=
 =?utf-8?B?NTFhVnBrQjR5aW1KWVNMWHZ3TU13MU81REM1SEoxRjdrbGRoU1BZcklIcllZ?=
 =?utf-8?B?VDYvN1Q0ZEFSRTVudnBxd1Z2Mi9pTnp5NTljb3Z6bldFZVZLYnVvNlhTVXF2?=
 =?utf-8?Q?dp5JqtHv4i4LvaCXkl?=
X-Exchange-RoutingPolicyChecked:
	lvMat36KMveJWmxZQQVcfiIKXbOMibGdTAegpjKaK2PrGYY8Q42GkRV+7E+0DfhbXRGfyWUv+Qd2ckHofSubLKXh3nzu4L3nZlcJMzJLeo/YR920lX3t26JB1TDO/Z0aaOatGhWKv7NfBt3OZI3ch4ChGeR4jXeTbg8bGMZHAnZeKleYz5LuFnel4kWQU6Qv4DLma9cWmKmbRs8xwc7X/hBgKQ2p8OjJ3keNZORpnoTB33lOyA9JNC+X4HvVa982JYQQO1+UZPeKMgjDOM57b3crW2NQxwMUCCYd7RImNrTKlid12ItpPkAZ2tqvPHBoxDu5qFqLKzAE25u5nuOmRQ==
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: 2d0af335-2b92-442a-4b43-08de9a473094
X-MS-Exchange-CrossTenant-AuthSource: BY3PR06MB8195.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Apr 2026 16:59:28.8927
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nHWHWt30Q8cTFAvzV07udwj4BSecZ/QtboWl+wzlqZsBrLFM6R2qrFknQxmwdIlc
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR06MB6614
X-Authority-Analysis: v=2.4 cv=SZnHsPRu c=1 sm=1 tr=0 ts=69de7273 cx=c_pps
 a=u5eD0AXnJOl2BG6obV1kTA==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=A5OVakUREuEA:10 a=lre9DRYkaIEA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=ZyELlZqCvD1aXIDzc3I-:22 a=XiWqTFSM81oo9FNMAQdw:22
 a=DyznqomoAAAA:8 a=qV6qeoQ_AAAA:8 a=tWMDG4D0PuxNgj8AXnYA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=NFiIfuRHoi4Aw3BdIEuW:22
X-Proofpoint-ORIG-GUID: cZfszfXgs73qiG8sofr7RVNODfILksUR
X-Proofpoint-GUID: cZfszfXgs73qiG8sofr7RVNODfILksUR
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDE0MDE1OCBTYWx0ZWRfX7a9DDLcvOWDx
 6itrsML7pmnc+hn8X51k+J3LE9oex0GiDKo8RWw7Go+QfEDu3GlXpfCywuP9cKdLYnBcjR86dT/
 Dnw/AV/kY+iCRi+wR6c7W5ccG0OdLUSXOSPle1nsal7j2n7agxzdVARf4635mfpEg1LHqsmcGzn
 c7/8QSEDP7Dbsotu/HnGE04RwqOzLizCOVaVtMgoS0uaUypgDw1gIbPb9rxM15rhgv3eBIhEHbh
 qSGF092ANzGAeHxnDiuHm95vLkEC5jTfZlKtwCI6THnzeTOgOfQxLIJla3BmbYkXtFgIMH5IGZN
 g/5obitDe2Ujr5+7nmPIKkweIRQd8VeFoZtYJ417ioMSoTrzAOcAyy3LuAjWDo1FNwJhSfegBSW
 kI41+AwfO6V87CcxAlDZW29yZCEjigWoQR5X0nG94DGxcCduQmzmnwGCVpnh80nYrN4g1mycBwk
 TvOeoyRkrJhRnqiYO5w==
X-Wisc_ValidFrom: true
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-14_03,2026-04-13_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 bulkscore=0 suspectscore=0 malwarescore=0 spamscore=0
 impostorscore=0 adultscore=0 clxscore=1015 phishscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604070000 definitions=main-2604140158
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5
X-Spamd-Result: default: False [-1.89 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[math.wisc.edu,quarantine];
	R_DKIM_ALLOW(-0.20)[math.wisc.edu:s=selector1];
	MAILLIST(-0.18)[generic];
	RCVD_NO_TLS_LAST(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_ALL(0.00)[];
	DKIM_TRACE(0.00)[math.wisc.edu:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	TAGGED_FROM(0.00)[bounces-1590-lists,speakup=lfdr.de];
	R_SPF_NA(0.00)[no SPF record];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[urldefense.com:url];
	FROM_NEQ_ENVFROM(0.00)[jheim@math.wisc.edu,speakup@linux-speakup.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:5645, ipnet:206.248.128.0/18, country:CA];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[speakup];
	MID_RHS_MATCH_FROM(0.00)[];
	REDIRECTOR_URL(0.00)[urldefense.com];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: E60BC3FCD73
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Okay, I gave Devuan Minimal Live a try and  it seems pretty straight  
forward. So I rewrote the  section in the FAQ on  using Speakup  with 
live distros.  It now says most live distros should support Speakup and 
then it goes on to  talk about both Grml and Devuan Minimal Live.

The draft FAQ can be  accessed  here:

https://people.math.wisc.edu/~jheim/Speakup/faq.html


On 4/6/26 10:19 PM, Gregory Nowak wrote:
> I use speakup in minimal-live as well:
>
> <https://urldefense.com/v3/__https://www.devuan.org/get-devuan__;!!Mak6IKo!IoLXBYoT0yIX920ZndyUczpypWg3KwvKNIHuCsfZou4g_Yi7K5svSx0RevAf1iOtNvJtSzFnBDWyZQ$ >
>
> Greg
>
>
> On Mon, Apr 06, 2026 at 11:28:37AM -0500, John G. Heim wrote:
>> The Speakup FAQ used to have some stuff in it about using rawrite and boot
>> images. I cut all that out. But it occurs to me that I think I should
>> instead mention using live images like GRML.
>>
>> Does anybody use Speakup in some other live image other than GRML? If not,
>> I'm just going to write a few lines talking about GRML and directing the
>> reader to the docs for GRML itself. You don't want to rewrite somebody
>> else's docs in your FAQ. That's a good way to get obsolete/incorrect info in
>> your FAQ.
>>
>> Note: I would imagine some people use Ubuntu for their live image but then
>> you probably don't use Speakup -- so that's not relevant. That would belong
>> in the Orca FAQ.
>>
>>
>>

