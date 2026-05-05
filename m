Return-Path: <speakup+bounces-1604-lists+speakup=lfdr.de@linux-speakup.org>
Delivered-To: lists+speakup@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kI5+F+4h+mlvKAMAu9opvQ
	(envelope-from <speakup+bounces-1604-lists+speakup=lfdr.de@linux-speakup.org>)
	for <lists+speakup@lfdr.de>; Tue, 05 May 2026 18:59:26 +0200
X-Original-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id F0BA84D1B6C
	for <lists+speakup@lfdr.de>; Tue, 05 May 2026 18:59:23 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="key not found in DNS" header.d=math.wisc.edu header.i=@math.wisc.edu header.a=rsa-sha256 header.s=selector1 header.b=g5euFiXn;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 4AB28382A69; Tue, 05 May 2026 12:59:22 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 2570F382A5D
	for <lists+speakup@lfdr.de>; Tue, 05 May 2026 12:59:22 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 62696382A5E; Tue, 05 May 2026 12:58:29 -0400 (EDT)
Received: from mx0b-007b0c01.pphosted.com (mx0b-007b0c01.pphosted.com [205.220.177.71])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 3DFFB38184A
	for <speakup@linux-speakup.org>; Tue, 05 May 2026 12:58:24 -0400 (EDT)
Received: from pps.filterd (m0316047.ppops.net [127.0.0.1])
	by mx0b-007b0c01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6458tr6e2910440
	for <speakup@linux-speakup.org>; Tue, 5 May 2026 11:58:22 -0500
Received: from ch4pr04cu002.outbound.protection.outlook.com (mail-northcentralusazon11013010.outbound.protection.outlook.com [40.107.201.10])
	by mx0b-007b0c01.pphosted.com (PPS) with ESMTPS id 4dy026q1xd-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT)
	for <speakup@linux-speakup.org>; Tue, 05 May 2026 11:58:22 -0500 (CDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ByAYeU0A5xs29F5TKgTxF/LXElRsETL8fg+XGocODm56AtlZ88mIpaxPiwQiYttr//u1k75aa07Di3frGluuaSqopJwPtxQjeZtf3OwzfMcC3htHP8DL0HjIeit71wUK5mIQEBlfzMQsI9GOR62wWrpsedBYPRdWTUQ9VSeA292cSFmXXsyTsaEC2VwboJQrtnpCQ9yU3wR8iIpTh3HXGjXjttF+HZ4G12O2QJuA/WRcGghUGDlL89S58RW/OvKVeYAqsQ+Ma5Z+D1gLakeFnPl5gdid3s+nWzexKbzPDYZlAY5IuzcnhNfnhggvvtHx8LSbJ5CEclIsS2u9c8Jdcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=j0ItAKI3Z8B5ZH7OaTr/L6uRL1+ZUOfc8BVk+rZOZOg=;
 b=j4atmJf3X1TEWt5XsgDzB8skLQ/x8U0MtI+u3o6YRDUAdjldiBC+BSYMeGr+VtP/zwa2a0uziTzA2vX458cOwk9lYMsqm0n+j8cvaXdesMkpLT1tyzkvYl9yUJLqXsGi5RssPiHxSH76se/qG2pEDcUVB5v03/i6Dx9b0GwSoQSoJNr62mZooeQfpxFDvGOj953M5Wr3Gg1gk3vqIXNYqOctPbwF9/Zk98vUF/PLg5v9/WIzzQk5AJSbOc8x6Sw6dOKaU/UosPCO0jiY7NmhXJ7UH2DPfyD1tGlhful0UG8kA/rk1s5mTQrtdoQmJDMaUqw3AnzTO1pOV083QuBVWA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none
 header.from=math.wisc.edu; dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=math.wisc.edu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=j0ItAKI3Z8B5ZH7OaTr/L6uRL1+ZUOfc8BVk+rZOZOg=;
 b=g5euFiXn5iNn+T71qruIFsnTE6rVddthxcmBhflnu5pq9+AstAnoIA76YipJOCvEwVoTvKqvg6JyNHZNcfaiXKmgyfTUanvuHpeHf0xguc5sdthG/eCLs77j5G1nwjQhEkFuTYqI+e9MguDG13DGS9bKepbdMn6akQKiW7yRzRZZEviG1elk7vM7aphfVW76zy8u7aqAJBRXwVUBjRsjWce8RicB2ESEl5aj6KqDtuAfqF71GGSd/AgKco/yEWh9lv4JX4R/xUL7bBEwz4GbknSGLUECtY6MMkxGK0fSo6dtZd2DBApIbkebMe+LMZfTwW889P/jKPyFUZIKqij3MA==
Received: from BY3PR06MB8195.namprd06.prod.outlook.com (2603:10b6:a03:3ce::19)
 by SJ0PR06MB7259.namprd06.prod.outlook.com (2603:10b6:a03:2ec::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.27; Tue, 5 May
 2026 16:58:20 +0000
Received: from BY3PR06MB8195.namprd06.prod.outlook.com
 ([fe80::a7ad:fb62:4389:fd8b]) by BY3PR06MB8195.namprd06.prod.outlook.com
 ([fe80::a7ad:fb62:4389:fd8b%4]) with mapi id 15.20.9870.023; Tue, 5 May 2026
 16:58:20 +0000
Message-ID: <1bb2a55b-127f-49e2-8b45-8f7e9cdb5d47@math.wisc.edu>
Date: Tue, 5 May 2026 11:58:19 -0500
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
From: "John G. Heim" <jheim@math.wisc.edu>
Subject: Speech during boot with Grml
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: CH0P223CA0025.NAMP223.PROD.OUTLOOK.COM
 (2603:10b6:610:116::23) To BY3PR06MB8195.namprd06.prod.outlook.com
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
X-MS-TrafficTypeDiagnostic: BY3PR06MB8195:EE_|SJ0PR06MB7259:EE_
X-MS-Office365-Filtering-Correlation-Id: ea4dc7df-591f-4884-7a7c-08deaac782c7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|786006|366016|1800799024|376014|41320700013|18002099003|56012099003;
X-Microsoft-Antispam-Message-Info:
	uYgotG2cBfKQsgpJ44YPVBQ18VrYQ/XayT31Udoqgn3Cj4+vWX/8y/2t5QNUIp/QSMfRzoDor01uHzu8Ky7LTwCs2FyfGzUGiexwcwBE0Ic2sieXRmBU0PHeMNsrP05Qtg7y5YFLSB0OQIX+Sok7vi2gVwb2mjvrFmyIAdBAKf84onWy0tBL8W7dN1Lwzgx4b5i+MAcwLdZPU5XyTPV9IvsEjDI5UmNoQ6hJXJElkR1vhvCMDezKAlzYOI0czz9WCXlz/queF7LQB2rGTB+SXYGcW46vfd5i1QOBTHhMvw6UPyOrdUnHIVVC7IBaS+32oq9bLyH1B1QOKF5A9QKC1L8JFCKEBHdFTJu+2OoV28Tq8MfJQtA3DHK6yEbtkzEFYCd6WvR5RX+boxk/xXtfdym1T7JTLQJLMZdT+JN6kJMkkEOLsFqdcnJFtgZzRwJ+YyRmJg0Sjh+X9m8DZ1GPbatI06Cd+VOic/O466/63N2g1EcWIpykw4CjEKyo301ivV+ZJHpj7H2ci6qn2AZmgqzwhu/6GF1xAXnmwzVLWEA915EAG/06IMBDbnpu8r7bcjUnyXgJ7v5ybe1rxZq0sbCC4IPdTMsU1wQrW0YC7SPAhBavcG8do7448ZLNeHUgKgh2654DOAYc7r1m4RHwWYZmGaaylDFMv4NA8kGM4QDhDqjJ1s8b2iFkLskydo8s
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY3PR06MB8195.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(786006)(366016)(1800799024)(376014)(41320700013)(18002099003)(56012099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?SjMydFR2eDdUL2RCRlVhUnQrVVFrZ2NRV0xuZWg1WUlmdlYxN1NpNmYvaUxB?=
 =?utf-8?B?NHRadkFxZmlGMWYzNmliKytQREFUTmlpVjZEUDY1MDFGK2lhSmM2ZGxmb0tD?=
 =?utf-8?B?Zk91NTYzcktrQkdSK010UzNQdWtQUG1ZMWVuZjljb3lJUjRja0M4cDhrVlZv?=
 =?utf-8?B?aHM2akU5TDFzbThObDJWalU3M2FJZTZqQ01HT1pBRVQ5Znpzd3Y5M3hOc2Q5?=
 =?utf-8?B?eWhLaFRiUjA0STZiZ3hnN2F2VEtnK2JzcnZpZXA5U3ZvWk80ZDdlK0dLZVBa?=
 =?utf-8?B?WFFrMmJFVEZtYjRKZXpheVdGYm5sTmRjVXZZTVEzc0UxQlVxMEg5dFFHMzIz?=
 =?utf-8?B?aUNXSDZUamMzcTdGK2QzNlhlT1BYbFdkT1dpVWdlSTdWamMraThEK2xZZ0ZN?=
 =?utf-8?B?Q3FmNFkvbmNmSkYxMDJLMWR2MGdGSE04aEFpaGNoUTNRdDZpOE9wOW5CMlho?=
 =?utf-8?B?NXBLWnN6OWYzeXQ5aEJFRnFsWkY1cDV0K3l2Qk5uQmFsejRQM29rM1Y1SHhH?=
 =?utf-8?B?WElyZUZucVc0TzlRakVMNXNpRVM3TmU3V0oyL3FaNjJlVzNxQUVyNW9yaFhU?=
 =?utf-8?B?K3k5NDczZ1BCdE5qZlUrSGM0REdFZEVkZUgxS1pvWk5mVjJ2NjlUOUJoMVBh?=
 =?utf-8?B?amFxN1QzTkVMeDg4ZGIyUzl5K0lpcm9Kek8yaUJvZ2dWYk02c2NGN1B5djJu?=
 =?utf-8?B?VWhmMlVOa3UvZFhaWUQySnJyTmxMZG94Y2pmV0g4T0R0UTc1Nzh6Wkl1dEFh?=
 =?utf-8?B?anZpMlpXUG5IOWorMDFoU2NnQnRIVklSR2NpS29hTlEzaXRUNmJvQlJrRzVp?=
 =?utf-8?B?ZUNGVFNKZkFySWpWVVNxTjlFZ1NDWkZ5NVgvYkVPMUdTSkhTRk5GeldPSTFY?=
 =?utf-8?B?Yk9kS1M0am5QN3ZHbUpLVXB1N0I1djFjZ1lraEV3c0lwelV4NndXSWJqTm1E?=
 =?utf-8?B?Z3pGazZxR3IxUGJHOHUzVmp0RXNYRkhOdWx4cHV0Uis3TFlza256V0Z6cHRT?=
 =?utf-8?B?emlWRmdleDg5YXhYVlBmM05EU2R2Z1lwclFYd1JnYjU3bEpVODRDYnBiRno0?=
 =?utf-8?B?cnJMemg0ZHhNU0pzUHpVU2Iza25WTlRoYTFDQSszNHo5RDdBeFY0eEZVSG9j?=
 =?utf-8?B?djBRZktRQzhneGdlQ0VhUFVFVnJhZGUydDdFbjQ1ZG5EZng4dUlIbXZOV05X?=
 =?utf-8?B?UTQ2dk16dVVkRGpORGgwbnQwMzdzV1p5Y25xYnhKZHBUUDhMNHlweE4zam1i?=
 =?utf-8?B?Q2daanBpSFo4NFExTzE4WFNhaytkcEV1SkcwcFZoTWY5TFdYdUppZkJDOUs1?=
 =?utf-8?B?U1YxdmV5alNRNDNpV3NBWGwwS2tNUE14RmpVTnVKYTArQXlkS3JDeTFWcVRt?=
 =?utf-8?B?MVpOR25EVWo2c3NsdzRGQ1RPdGtTYWg2djd6NElMaFZMM1RSTnVKejA2TFpn?=
 =?utf-8?B?cFNlWW1VVUJGeGZoUWNNT1lCemNpMzUyUDZmbWFtTk4zcUlEZktKc0orUXRt?=
 =?utf-8?B?MXp6UE1WUzE1Q0lLakFKajBYdllYeWFLYUFxa3JKb3NYQmdUZzMyRFN3OWEz?=
 =?utf-8?B?VS9FaXluSEtZZE83YjhSNUVickt4cFh4U0FyZ3pSNmJybjdIS2QxNmN5bU9K?=
 =?utf-8?B?LzhMRUhPUUhiN2NtekduY0NMcHpHOERNdklxbjhvaCtSVE9YdnM3VytlOFp1?=
 =?utf-8?B?aGlDOW5GYTR0NkRNTlFYWEpMZnBvWkNXTTl2VzN4Y21ER3hXa0NGM1ZMTFlk?=
 =?utf-8?B?cHJpdkpwNzdWTXFuN0d2SDNNUmdpd05sT2FnTDNKNkUxOEZ3Z0FnbHphZzdJ?=
 =?utf-8?B?N09yaTB0MzhrbmUxVUdPOUVSMXJNTVJEd2MwWE9TU2NUdmxtN1VxN1E4Vnc5?=
 =?utf-8?B?MjQ3TUgrNXUzTHpwSkxRQmtjaUJXS0JCeDJ6L1Vzd1hZbDlUdTA3Wk5xYUNM?=
 =?utf-8?B?dHhSSjNldGNyc2liTDd5SnhIZXdwWWtJeFM0VmdNc3lzMXUyaWsrYkQ0WEs3?=
 =?utf-8?B?TjcyVTlVUDYvVWt2T0owWXZrTDhZNTRyOWZDblErYzgxazR5Zlp0MGdHMTFF?=
 =?utf-8?B?VlRHOHlENDdkVFBidThLNFdabGEzSDR4Z0tzQU5DclRscDRWUVdvZGZPbHpl?=
 =?utf-8?B?dUZTS2cyRm4rVGNUNnRKV2Z6S2NjUTdEa2svaWlXYkIyeldrL254RG1zdjRp?=
 =?utf-8?B?WHhKa2ZMYThFTmdZK2h4MWRtekRPR2V3VHV3R2QrRndyZDBKUHNxVng2ZE9M?=
 =?utf-8?B?c1grUWdQT3luZ3RNeVhKVk5tbG9SbjBTS0w5RUxPY1BJc09mN29tRC9oUm1T?=
 =?utf-8?Q?fEnGRiHQwEeeHuzt4h?=
X-Exchange-RoutingPolicyChecked:
	TaT7FXDsQsEDNY4NWFWU5tcUFVXibj/gQ5TkcL6ToVm+A3wlYt7BX6EB3uDmIjS/yGmhWZYfY05uxr/OesKCx9sas9wsSn9TOdeeWrCI3wS+nN4DU+PNlW9q4JxP3Zo7QRArePP+XUvK25M6antOte2tJMA2i3j2kiXCN3y0Xu2/PBerPdpjrD6p/GZTY6m81TRmKFh3IUkguDq7VngcZv2S43MeRKwYtHmXROwsVUQ3QHq4/HoiiSUN55wZdqwzdOubFQXuslFuH6kG3YygrP4HDbhlxjXZQL6ZcTl9jEG/yOeMCFZqhZbc/V/PkF/OzBHfD2dmRs1TZPse0uML6A==
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: ea4dc7df-591f-4884-7a7c-08deaac782c7
X-MS-Exchange-CrossTenant-AuthSource: BY3PR06MB8195.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 May 2026 16:58:20.3450
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PTos6/1fBzBv+ki5F0VfrR6+TjqElt/tG36T/L2QYuRahZvETjW1/flb5yvr1k7C
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR06MB7259
X-Proofpoint-GUID: OLyLKazbG4kKlot-_hNy04gXb2qfBxZa
X-Proofpoint-ORIG-GUID: OLyLKazbG4kKlot-_hNy04gXb2qfBxZa
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTA1MDE2NCBTYWx0ZWRfX0k3KHmvplAyF
 w4r7eSVmdxdqcX2z3mPDpqjXOZa+3Z8yVLmLqoVXBVV1RXFSmIErT2LynhWlkqnFICmAw4YWlG4
 x+sI9pE203bC3fLd22F9wuT/f0VjgUhmbPVUY6+BAo0n8RiW5LqUgkT6V2Uvm2fQB5oCgLkXnhb
 6+xfs452vLJ9L16zb51h4CI6f9APnQcbj/oepvOCRk6DagNbXpZIqmRGOngw8KE6I8ZmUq4uaut
 SzBdX7lVsvnrwbb6gc0TTh9Xhw2FnJBb/tcqastWM2nPvQB8oOLAN1h1Q0+sfOxbwG3oMrY+jJ3
 W+u3I7FytgMOvcTu+YPdQqbsoVA8MvrxOqLM7bWHHpA5oX/D4H0+XYh6R/kpuWIX8r6kiSdXD3m
 AJEtAa029ZUNykKiljV5MO2ZxCvpLl8hvbIC4aluX/5OjxWGR+z27BM99ZLWR5dhT9lNdd+Sya1
 QHRobOkJ6mKzOOlFo0w==
X-Authority-Analysis: v=2.4 cv=Y/vIdBeN c=1 sm=1 tr=0 ts=69fa21ae cx=c_pps
 a=lThAoe1QXFDAbPfud5g0Zw==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=lre9DRYkaIEA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=ZyELlZqCvD1aXIDzc3I-:22 a=CxpZxRQdNkMM_dZfZm55:22
 a=Vfw62G-WCTrKxiok98sA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
X-Wisc_ValidFrom: true
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-05_02,2026-04-30_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 lowpriorityscore=0 bulkscore=0 spamscore=0 clxscore=1015
 malwarescore=0 impostorscore=0 suspectscore=0 phishscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604200000 definitions=main-2605050164
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5
X-Rspamd-Queue-Id: F0BA84D1B6C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.89 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[math.wisc.edu,quarantine];
	R_DKIM_ALLOW(-0.20)[math.wisc.edu:s=selector1];
	MAILLIST(-0.18)[generic];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_NO_TLS_LAST(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_RCPT(0.00)[speakup];
	RCPT_COUNT_ONE(0.00)[1];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:5645, ipnet:206.248.128.0/18, country:CA];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[math.wisc.edu:+];
	TO_DN_ALL(0.00)[];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jheim@math.wisc.edu,speakup@linux-speakup.org];
	TAGGED_FROM(0.00)[bounces-1604-lists,speakup=lfdr.de];
	R_SPF_NA(0.00)[no SPF record];
	RCVD_COUNT_SEVEN(0.00)[8]

Sorry for the redundant posts, some of you may have seen this on the 
blinux list. I just think it is important enough to post here so 
everyone sees it. I've discovered that Grml already supports creating a 
bootable CD or flash drive that comes up talking with either a hardware 
synth or software synth. If you like to use Grml when rescuing a system, 
there's no reason not to set it up in advance to speak during boot. It's 
just as easy (easier) than typing in the commands to get speech after it 
boots. Here's how:


1. For software speech, pass "services=espeakup" to the boot options 
when running grml2usb or grml2iso.


For grml2usb:

grml2usb --bootoptions="services=espeakup" grml-full-2026.04-amd64.iso  
/dev/sdaX


For grml2iso:

grml2iso -b "services=espeakup" -o grml-full-speakup_soft.iso 
grml-full-2026.04-amd64.iso


Note: You must use a "full" Grml image for software speech.


2. For a hardware synth, pass modules-load=speakup_{synth name}" to the 
boot options when running grml2usb or grml2iso.


For grml2usb:

grml2usb --bootoptions="modules-load=speakup_ltlk" 
grml-small-2026.04-amd64.iso  /dev/sdaX


For grml2iso:

grml2iso -b "modules-load=speakup_ltlk" -o grml-small-ltlk.iso 
grml-small-2026.04-amd64.iso


Note: You can use either the small or full Grml image with a hardware 
speech synth.



