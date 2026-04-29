Return-Path: <speakup+bounces-1595-lists+speakup=lfdr.de@linux-speakup.org>
Delivered-To: lists+speakup@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aNiRN4iE8mnLsAEAu9opvQ
	(envelope-from <speakup+bounces-1595-lists+speakup=lfdr.de@linux-speakup.org>)
	for <lists+speakup@lfdr.de>; Thu, 30 Apr 2026 00:22:00 +0200
X-Original-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 35FA449AE4B
	for <lists+speakup@lfdr.de>; Thu, 30 Apr 2026 00:21:58 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=math.wisc.edu header.i=@math.wisc.edu header.a=rsa-sha256 header.s=selector1 header.b=Da6ZVEmI;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 6CE66382B8C; Wed, 29 Apr 2026 18:21:57 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 499D4382A65
	for <lists+speakup@lfdr.de>; Wed, 29 Apr 2026 18:21:57 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id D5233382AE1; Wed, 29 Apr 2026 18:21:50 -0400 (EDT)
Received: from mx0a-007b0c01.pphosted.com (mx0a-007b0c01.pphosted.com [205.220.165.71])
	by befuddled.reisers.ca (Postfix) with ESMTPS id DC084382290
	for <speakup@linux-speakup.org>; Wed, 29 Apr 2026 18:21:49 -0400 (EDT)
Received: from pps.filterd (m0316038.ppops.net [127.0.0.1])
	by mx0a-007b0c01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 63TJKiGw3447162;
	Wed, 29 Apr 2026 17:21:44 -0500
Received: from ch1pr05cu001.outbound.protection.outlook.com (mail-northcentralusazon11010066.outbound.protection.outlook.com [52.101.193.66])
	by mx0a-007b0c01.pphosted.com (PPS) with ESMTPS id 4dur2h99y2-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Wed, 29 Apr 2026 17:21:44 -0500 (CDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sAi+ZJuMzMb7kQs/Ui1NjqcqNztrsHPROHNRwM0PB4ZExrUNvZYOR6VdKCV4N9mM01FtydPNpfthglnETYv3glrtHnGaD8Yej54gfW2aVLadbh5Y7Vq2D2C92rmos3vT+Qq3h94SbHaSoIoAZx2HM0QdBHHDulOdg5Z5YuIepsnoWpP+XeJrQQZxvz0CrIRQ++G2xkggpn0FsQL5nwkaXU+teY+P58yIgmHBcsu+egGbTxC5zQ77Osvjom8TMw05PHsa0DnBhlO3VrMa6eWJIk48iZZo/9RKZ7U7PfW7f/qo3TtEvNkX6NKbYg+DHDVRvAqyksEuAc4eaS/5g6um+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UxA0wU630QMm2lbj0uMizT/olv6GgLP2DZsuYyTWVeU=;
 b=KAssxwOO4xpHP3tDZ45UzdyOnzJ5MWAu9RGiILotsAJAiQIKyvp76+KLsl7OaW7zfQ5AEwNLdkgeewXSDZA5GzbGNlsSqWwLhNTGl5yGZhCor7F48IJFiYGu4pauoOA++SCwP+LMQFTZ9nA8ZaDRMgfp80GoNGxe/mPvjrQiEF4+ryd3GdaUs3vAapCG2/5i4CED+0+NlErmHOo0ApQNBGZHn6DyJIP4yeNPZNAT7Uz90pqPLa0nZaYmN4w8wQW6OaeKlhH5YcE+C2pTmalH78cgRaO0sxhsCzRWeJl/qlgz1MM45/1VztMBRNEhjPAraBH/jeAlQmOgKQ2FoFGlQg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none
 header.from=math.wisc.edu; dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=math.wisc.edu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UxA0wU630QMm2lbj0uMizT/olv6GgLP2DZsuYyTWVeU=;
 b=Da6ZVEmICBtdsbZY6hYC3+92tZHqncswUursv99f17KMn9SZhzomApYBe5DRy40fM3av2FtKeqTSdlYFULCR7ABAcojLcuXNhhCI6R5P8gXypnbjCC/irGeo/MJHAdoLxgyfIauIPOxBXmu9X5+SAMyOXkwfgfE27ar6vvvbgnHfwJgr0jFNS3FpQVy+ThD9mJ19070yBPWyTCE4ImmbNufCwheTxY2DJ+JA+gaLC41kd2CCS416Slwknf3okBtlW0Q7JO7GbD3PjvCVVuhH92Y65mOBu/yxowAyKJj1rmyIydVCTiYiLY7vr+fMCjJE4Agkw1V4H7I08RlPRf86Fg==
Received: from PH0PR06MB8206.namprd06.prod.outlook.com (2603:10b6:510:c2::22)
 by CH2PR06MB6645.namprd06.prod.outlook.com (2603:10b6:610:88::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.19; Wed, 29 Apr
 2026 22:21:42 +0000
Received: from PH0PR06MB8206.namprd06.prod.outlook.com
 ([fe80::9d74:8708:bfec:b7b9]) by PH0PR06MB8206.namprd06.prod.outlook.com
 ([fe80::9d74:8708:bfec:b7b9%6]) with mapi id 15.20.9870.016; Wed, 29 Apr 2026
 22:21:41 +0000
Message-ID: <4c2f88bf-bac9-483e-897d-f59a55cfee6c@math.wisc.edu>
Date: Wed, 29 Apr 2026 17:21:39 -0500
User-Agent: Mozilla Thunderbird
Subject: Re: Update: Rewriting docs plus RPItalk
To: Chime Hart <chime@hubert-humphrey.com>
Cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <9a2d720d-2a18-4fea-825e-c1f45e905e74@math.wisc.edu>
 <2ffccb83-11a8-9d01-4a9b-6e6615b916cb@hubert-humphrey.com>
Content-Language: en-US
From: "John G. Heim" <jheim@math.wisc.edu>
In-Reply-To: <2ffccb83-11a8-9d01-4a9b-6e6615b916cb@hubert-humphrey.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: CH2PR16CA0030.namprd16.prod.outlook.com
 (2603:10b6:610:50::40) To PH0PR06MB8206.namprd06.prod.outlook.com
 (2603:10b6:510:c2::22)
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux." <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR06MB8206:EE_|CH2PR06MB6645:EE_
X-MS-Office365-Filtering-Correlation-Id: 205e00ed-1788-4b25-8419-08dea63db01f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|366016|1800799024|41320700013|786006|376014|22082099003|18002099003|56012099003;
X-Microsoft-Antispam-Message-Info:
	e3SodD6AA+ge6cBJlW1HWGYGvZaJ5wCaEDr5fG3kGrvyc/xW6OTw6wcFxKe2blEspnlRV8h/baLr3uZXsHwinR8UDZxdk2VDVW/x3NTnqJQT48m+icRxNPGKn0J2ZfD7DbmnCfaDBlmRGvpyeUhSYhyOATH0eB1zl2TAPNHl6zlUZEC/qVNcKqJ8iAzZ2w6elTMpeTqjCRpX9FjHPyhXtWwPSx7qMtZYG9pkyvmCq7mrm0HzK5lB9cRGWeXW4HKZYQt+yGGzmE6sQeCf9DBU21u74UE84xgArJ1yfl11FpU9OdsV/k6a665h+bDRowj1rZ6ymDXk72bnRE+KinEpL7B7UyxBpiQ4EyiViLas4fSThSrfArA2JvtHmXVq543zK1mwZd4SyAq4Jtb5aSq0lcDok5hOG01zRQk9yUwtzPclpL7EaBycPAnj7N2AnxKwfJjbmKTVHwkffsSrMcnuIvFY/mcqp438qXmj0al9TGZZuA/PCYtLKOPqBQUlWZvJGACnSaIsm/xrFU0L+wSXFdEtLEdUAoOFMg5ijTBSbo4mP+0aGIO9t7U/1CX2lFSvCpZkUsfRbgxMilaL2tDzJZSa9fRPJ2clNNLCJn7H+WP89cocjRFLuURluKjDga3JnZPDIsAJUNYJcBlR/UkV8Seri45/cV2o8X9b2ROJdvFcYb0cvY8IUXsHRpUdSr4nDAlb/UWzIgvdGjWySF3uaW6WXtrCMKxf5KV8wY4LWqs=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR06MB8206.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(41320700013)(786006)(376014)(22082099003)(18002099003)(56012099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?NzY3Rkx3NmhlVmpOeEp6THJHR2tobGV2Sk1EQnZDcU9yQU9RRDVLdlQ4LzE3?=
 =?utf-8?B?a0U0a3NLZTIraDBRcjFuRWVQd3h0b1pmczBDMlVxZ2wvdlF0TTNZcnh0QnN2?=
 =?utf-8?B?Sm5oY1FXZ090TXFQR2J4dm5jYW4vVzVqK1duTWFEZFU3QWR6NlNTWjBEOHpq?=
 =?utf-8?B?cktqb21tNlFsQlN6ZDRtNi9peGVSVi9GMTdCOXp2UnNoMmZ4WHNUMEZrNjBQ?=
 =?utf-8?B?T2w3YmQ4WFpIa1NlSFZTWDlVbjVERW1YT0pjMmU5cGhFYkljcUJUaFNiQkZ5?=
 =?utf-8?B?VDkrcUhVMjEva3daZnk5UVd1eGppZ3BtS21Wemplb1l6NEhjWi9VL0pkVElz?=
 =?utf-8?B?dGpBdkIxVXhoK3lNKzdYb00vUlFqZ2E5QjRTREVqWkMxOXFaY2pTeUNKRzd3?=
 =?utf-8?B?aFlRVElhRytjVnFFaGM3VmlvZ0tYQkUyQXBBWTI5STRhSWxMSnFxTmF6dSt5?=
 =?utf-8?B?K0ltbFk2N2kwMER2d1VUaVNJVnhycVlsZXdQcWJha3U3RS9MK0d6TFpndE5q?=
 =?utf-8?B?cnV0TnQxK21mSkpBZ0dvcFVKQ0l2NnpnbjgxaGZFbDU2anlwOHJiOG9rUHJt?=
 =?utf-8?B?aFJrWmd0QUZRc1JROXN1NURvQzlFbG1kUGs1UE9zZjRDQmZPb3ZmKzM3aUR5?=
 =?utf-8?B?d1UvMlo2S0FqRDR4NGxDa2xWVWJiVXhVR3pvYkJzSDZ1M2lXWXdaM1VJb29E?=
 =?utf-8?B?cVlkS253bnNhZGVmTjVKVWgyUnFERkNTOXZMVlZGR1RnODhzQ0tVQTJNbWl1?=
 =?utf-8?B?VTFOdFRZaUlvMmRlenhyTDRWK2xlU3hGem83Y1BHNkR5ZmVPMG5BTCtqOUNx?=
 =?utf-8?B?OW5PMk1oaWVzMHY1TEc2NmhqdW1hRGw4SVlMUDAveWp4SnpLaFR1cFJPVExh?=
 =?utf-8?B?V2w2Ump5N0VRV1NxQmRqcEt0NC8vRWFBWEo0eXN4VUxrQllJOGIwNVJjb3Mx?=
 =?utf-8?B?REJNdTRFQzJHaExGWXdKT1lHcWJQY2xhdHQxaU9QdkFWSzVDR2llRG14bkRY?=
 =?utf-8?B?dnpqeE9pZTFGZWJQTUVrU3dIM3RBUGVYWWs1QzVWQ21UaGdaM0RrMVJVVzFO?=
 =?utf-8?B?aUFTN3pHTU95S0pIYjFFVzRhSUk0YUROcDVEcjMremVvQ0RGWUx4OUg5MlFw?=
 =?utf-8?B?WTZQMWloRlcvZFV6eXV2dGRSNjVqV3EvMWYxNlNhUmFpZUpubVM5WU1KWisx?=
 =?utf-8?B?WE1QNVlQcExiQUZtQlExWjJwNDJrSGNOQmxCWGRvMWE3R0kxQTl3VENqbmFI?=
 =?utf-8?B?RWN2MHZTNU8zRHlIbU1VdXA4Q1pQK1NiNFBDUmxKM2tTYWYvL3hhRExMM2NE?=
 =?utf-8?B?dXhGeDFwc0hMWVV1THZFUjc3NGRHQUxMa2hNR2ZzYTRGQ1V4Q1QxY3lqWWlS?=
 =?utf-8?B?NGNiNHQwY0MrN25yalU2VGp6WDc3bzhmNzVhVHh5VEFnZGRwU3crbC9HMHpx?=
 =?utf-8?B?cXFZVjdTVjhJUk5jcmNLZnpzRWpqTzdRYmpLSmlUTW51ekpnMTIvVC9LY2Mz?=
 =?utf-8?B?U3Q0VkNadEpDVGhkUTNWUkI1QS9PMUxlWW41ekEvTHVMUGp3VUNjUUpLMFgy?=
 =?utf-8?B?MnJQSk4zZ1Z2a3BjdzBTNjhmQ0s1QUFEbmM2SlNKcGt3bTBVYWFCRU9sV0lT?=
 =?utf-8?B?TWduVGUzOFhrYmZHNURWZ1YxWUlqM3ptNTBWcDJ1bVFVVG9ma21QMUZ5MGpG?=
 =?utf-8?B?REd0QmJVN0psblFacG5hVTB1ZXdTZW5PejVGaVZvQlpSOEhmRkd1SnVzM2Nv?=
 =?utf-8?B?WjcrdnZ3RWE0WnZrZCsrQjkyQjN2R21YWmh4dkRKSFV0NW55RFM3U0toRlgr?=
 =?utf-8?B?NmZjT0l2YlZGU2hTNUpZdGdqandKUmRtOG1hcER3L2hPQzNnM204dVV1OCtj?=
 =?utf-8?B?T1l4ZVpzTFZ0d2xrcXpqQWo1UDZhMTgyN0J1NHlGdlhYSFdINmprbkRGU3JK?=
 =?utf-8?B?eEw2QkErU2JiZWU4L1pDWkR6RG9LcVA4YVFWdDdudmNRUUh6OE1LdjVXazBO?=
 =?utf-8?B?ajdQUHo3b0JNb2N3RWdleU5jandMNDFnY2tMbWs1L3NMb1F2Q09LMHhIaU9K?=
 =?utf-8?B?Ylh3YlZTb3IyL28zVk15QU5qTkhYTlNHN1BXaGdvM2xyV253ZGlDeWoveEdO?=
 =?utf-8?B?WCtyek81bzVCNW5ITXRpVmFWUGowVS83TEJpU3RnN0xVbXhwd1hpK21Oc0lr?=
 =?utf-8?B?R21jZjdmVjNvVVQrOWRtTDNab1VpR2RXWmlaQ3RSTHA1T05tVmlsN1RmNGxy?=
 =?utf-8?B?eEZzSXlzQU9tYTdjRmxsd3oxTm1OQm9ydXQvSXphZkFrSlZJc00ydWJtN2FC?=
 =?utf-8?Q?4gvN+g5OyHqTMDRbmE?=
X-Exchange-RoutingPolicyChecked:
	NWUsixoK9I5KLMzDPBnzJupXGUoMRTP7JndLrvpNsuPvwu96IA6txMEwFaXH7OWqrbo3ZJX2dCgGCXr5zT1GFVEqV4FqnL2FAR9XIIvDpVJQCEUVx+qTGCt+0w6jBXOSJNEGjCDUMxQveO4E+bTkZx6gtdPSEPGb8rd7an3aUieOoC7GmXXYCirFHDgImyDVWHnqyZCZtcoigV+eSYpFQBtZALJw2CYpAyHGGz/d6kizRt2FUB5PWGPFTxIBuyal62Ea0euqLbO9GLp6XhODtl2FYBhgnN4ZZD+/PLBEeRh6qtdzKHnxOKFQ2SuS/7N2poN1uDDe/Nan3rJ1QQNX5A==
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: 205e00ed-1788-4b25-8419-08dea63db01f
X-MS-Exchange-CrossTenant-AuthSource: PH0PR06MB8206.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Apr 2026 22:21:41.3211
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VpleWeqdwhNMpo6c9F9MNbBri7bViSmDBFH+F+ubjjizCAFqzTqfMnZJ491LXg+U
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR06MB6645
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDI5MDIyNSBTYWx0ZWRfXwVfKHJN9eHxh
 ZI/s75i8rZJ6acJYv4F3oEdrQUwSc8M4JIBLdV+VqN/Rw0ZICL8TVjqqaUhoJEV43ffEPutb2k1
 jMitqvfkZvfNM4tGiZ+Ee5aZOUcxsTAJH5A0ps+gti6F1bVFUg8pQGUiunR69ZZU+/T7iPXOb4o
 OENQBs4AVJkSnZMsBl7cnrO3qfLLEMhHu2yAlsPga3IVAIw6AcBPu0mzvkLVNMuFAfm38sEJXv3
 +4JDjIk1sWUIFaVdkjAOvATkL591iITQqgXYuKglgeJEyF2iS1LYhQ7yt86KgupZnriXdb6IifO
 hmxc08+9n8+1bqkUjiDtHlEZQ7YvKSGDwmdLO02WwK3PmSHYlaDkY270o9rvpPkWbKKXaLgkfFQ
 s+I6UWBbT8Kwhy/P0vqe25Jg5GPSiJ61qvDL5nma12By9d0Ogyir1xVfEYDTLxdu8AKOaSsKxSK
 apPgEQGq4oyhPsO7Q4w==
X-Proofpoint-ORIG-GUID: CbV79C9sSltQlqVnK2WB08qRT8dNC4UX
X-Authority-Analysis: v=2.4 cv=Ya+NIQRf c=1 sm=1 tr=0 ts=69f28478 cx=c_pps
 a=bMdnqNz3r98bn56uXvEeDQ==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=A5OVakUREuEA:10 a=lre9DRYkaIEA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=ZyELlZqCvD1aXIDzc3I-:22 a=8Xyu5n2RU-RuQlyQMiry:22
 a=BX2ZXuUpUlH1yhsMdt0A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
X-Proofpoint-GUID: CbV79C9sSltQlqVnK2WB08qRT8dNC4UX
X-Wisc_ValidFrom: true
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-29_02,2026-04-28_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 impostorscore=0 clxscore=1011 priorityscore=1501
 phishscore=0 malwarescore=0 lowpriorityscore=0 suspectscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604200000 definitions=main-2604290225
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5
X-Rspamd-Queue-Id: 35FA449AE4B
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
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:5645, ipnet:206.248.128.0/18, country:CA];
	TAGGED_RCPT(0.00)[speakup];
	MIME_TRACE(0.00)[0:+];
	R_SPF_NA(0.00)[no SPF record];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jheim@math.wisc.edu,speakup@linux-speakup.org];
	FROM_HAS_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[math.wisc.edu:dkim,math.wisc.edu:mid];
	DKIM_TRACE(0.00)[math.wisc.edu:+];
	TO_DN_ALL(0.00)[];
	TAGGED_FROM(0.00)[bounces-1595-lists,speakup=lfdr.de];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_COUNT_SEVEN(0.00)[8]

I am not so sure about sid but you ought to be  able to say "apt-cache 
search rpitalk" in Debian testing/forky.



On 4/29/26 2:39 PM, Chime Hart wrote:
> Hi John: I looked for your package in SID but at first aptitude said the
> closest would be
> tzdata-forky
> But I don't think thats the same package. While I don't have a pie, I certainly
> would like to improve my DecTalk experience. Thanks in advance
> Chime

