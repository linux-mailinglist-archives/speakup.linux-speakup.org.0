Return-Path: <speakup+bounces-1603-lists+speakup=lfdr.de@linux-speakup.org>
Delivered-To: lists+speakup@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uDhlIqwF+mkEIgMAu9opvQ
	(envelope-from <speakup+bounces-1603-lists+speakup=lfdr.de@linux-speakup.org>)
	for <lists+speakup@lfdr.de>; Tue, 05 May 2026 16:58:52 +0200
X-Original-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 0C51F4CFD44
	for <lists+speakup@lfdr.de>; Tue, 05 May 2026 16:58:51 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=math.wisc.edu header.i=@math.wisc.edu header.a=rsa-sha256 header.s=selector1 header.b=FtkHXsuu;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 11B51382B1E; Tue, 05 May 2026 10:58:51 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id E1843382A5E
	for <lists+speakup@lfdr.de>; Tue, 05 May 2026 10:58:50 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id AA44F382A60; Tue, 05 May 2026 10:58:44 -0400 (EDT)
Received: from mx0a-007b0c01.pphosted.com (mx0a-007b0c01.pphosted.com [205.220.165.71])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 6EBA6382A5B
	for <speakup@linux-speakup.org>; Tue, 05 May 2026 10:58:44 -0400 (EDT)
Received: from pps.filterd (m0316038.ppops.net [127.0.0.1])
	by mx0a-007b0c01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 645AsI6b2373149;
	Tue, 5 May 2026 09:58:36 -0500
Received: from ch5pr02cu005.outbound.protection.outlook.com (mail-northcentralusazon11012024.outbound.protection.outlook.com [40.107.200.24])
	by mx0a-007b0c01.pphosted.com (PPS) with ESMTPS id 4dy01h60aq-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Tue, 05 May 2026 09:58:35 -0500 (CDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HlVnvCK8Y/cx6FbC3n/cCsGTtEFPAZEHpsdsMwQAAtgJ0djmWFwx5zgxR8huvIx08lYGEQpFzQT7ZQZf9jUADzbKykuZu1WGT9gOKHfoqkIA0Zc56jFdSFGtmfkd7RZxF1VQy6iOttbe0Ws/OECJ93SbJFKYdQgDIZdcYspxYPKHLPnZPhp2Jtm8OhpC9R+ysWLhmD0bGKivCsUcfZyd60nFncQUDc/6CkGOpsWzhReA66SMsB55PT+ccUAxD3mFtLyIT55K8ZwPBT6YMVSdAq/Hg9LrwF0yg1CWLyN1bKAO6flmjTqyIls7mu/eaZuRdV2BCDtsvpHiFeR0JHvjwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NkiQR7OnkhhmBo0/jFFWN5M8n07g43rFM0n1HQKdaE0=;
 b=Kq2CNbOP3AY40Q/DqNM/IFJInG496Ng767O+tssGDqCsFcvWXXuwU+3y2/JDZ1+IbYvterov40YuHWQUvZbfbcd6FCldCcRMD9XwqbhTWbJN3dA2qb1erayB/wmLAj2tR0xin8HcqOc6r7kypTprvA87whYDL1Lu2cm1pQhZVwuvWxbEyRxg2YJPsvT+47Hj+1bJ4zmcr+BHZeiPLzLWQY2VUmVYz35LEACOuaQNLsgMKK67GLul6fdvG9ahmigKHRZUzQ40izXHMkz5flXtdEHvHjf940Ov2o4EEnNPBtgrdtloaYIr4yoZ5N5a0ipZXRXebXtXDuAeEBdPtkFGhw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none
 header.from=math.wisc.edu; dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=math.wisc.edu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NkiQR7OnkhhmBo0/jFFWN5M8n07g43rFM0n1HQKdaE0=;
 b=FtkHXsuuBIijPSQdOjKoFllLiT7y9MWkevKdEjdZyyFeyx/Fh3v5cj6+uYf6rHud2yfID/H+w7rn9uhonDXh8EbA8uHiJnSdZtIi135B33ynGLANdM7yUz7Se3AfcxkS42wME7j5I/4dBA4G5Ile3VzC7UPktJTItuOltYPz2CbrJvS/y/dX8RPzayGCZ4+WMEUFFUXHAUg6nn79T9dRpvXkEOR68qasgqWAyaiu8XeSY2t4dh+zjCG9Yb1Vbpyy/SqTdTvQs8opJPFj8506PaEtb4TaZwxpPS4kqf4D9CW4kX0yt0mj/7LM/xHxnx8XH+2i/GbFNMpfYsXTOR4e1A==
Received: from BY3PR06MB8195.namprd06.prod.outlook.com (2603:10b6:a03:3ce::19)
 by LV3PR06MB10371.namprd06.prod.outlook.com (2603:10b6:408:287::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.25; Tue, 5 May
 2026 14:58:34 +0000
Received: from BY3PR06MB8195.namprd06.prod.outlook.com
 ([fe80::a7ad:fb62:4389:fd8b]) by BY3PR06MB8195.namprd06.prod.outlook.com
 ([fe80::a7ad:fb62:4389:fd8b%4]) with mapi id 15.20.9870.023; Tue, 5 May 2026
 14:58:33 +0000
Message-ID: <3775b833-e54a-4ce4-ad47-854df5fae9ed@math.wisc.edu>
Date: Tue, 5 May 2026 09:58:31 -0500
User-Agent: Mozilla Thunderbird
Subject: Re: Voxin and Speech Dispatcher
To: K0LNY ?? <glenn@ervin.email>,
        "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <bf198396-b075-43f2-8e12-96bf7c1a3e11@math.wisc.edu>
 <0c3801dcdc38$6f0944f0$8d01f80a@nucwin10>
Content-Language: en-US
From: "John G. Heim" <jheim@math.wisc.edu>
In-Reply-To: <0c3801dcdc38$6f0944f0$8d01f80a@nucwin10>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: CH2PR05CA0013.namprd05.prod.outlook.com (2603:10b6:610::26)
 To BY3PR06MB8195.namprd06.prod.outlook.com (2603:10b6:a03:3ce::19)
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux." <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY3PR06MB8195:EE_|LV3PR06MB10371:EE_
X-MS-Office365-Filtering-Correlation-Id: dc6c157f-504a-4060-496e-08deaab6c68a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|786006|376014|41320700013|366016|1800799024|56012099003|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info:
	bbN3DnzuzkT/OmIhfv5oiFhgMpmlA/yfYn4AwEQsAtkcSxtzLvTNXomJoHqDlAAkK2srD4yYtRbIzlAhlh//ht+sC/nkOb9LnDu8kpSBjbK5JpiK3scT7j9lxesQrf8i3IWQ5jFvNjndO54I5MZTvKZXZIRwbeCnN0j6FYd0a2DW9l2FSOuTfDEMZcaLo2/JgwUZtLbp+Fou9YewO6zlMiwON1Rglhfie070Gp/6bfhK9DpPkcgeLl8dlyFJ/rEREVL0c/ZsHhQ49QkGcxgTFq8Ze9CEYBd7HgXJIEzQGBNj6KhHUImswHvWa6+r+UOqoVsg74D8JvWt1U2AAxFBA4gdmZX+VClnjMBoJXLw4DgeMymCA83hF9Ax25rpJIYf0aUBmB+PESKE/E8n+/9NY5RoiIUp3Q8PbPQ1/oqgmD8auBASN3DRF/fFwujV0xbFox8nsLv/BT0PVp7k0NmjfqxXuQZEKMGrlreFu9uPlLDDEN+TkFf0wXNoUFNU9D3vIQRYjy7JRP32JnS59i412VX8lmMEpGQgmnvyMEOksRoko3qsjwxI+TkihlDsksi85SXxSqOpe1eafFfnX5efmTXSigGmaeT9OjznjKfEIVZK2C87KQNMoSDQDCe1yitXFQbwkAWJ5rfCiIGz70H5p87CqzeNk9wpLQS2sJmW0afDcbN+q1UostlE/8A8cYTi
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY3PR06MB8195.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(786006)(376014)(41320700013)(366016)(1800799024)(56012099003)(18002099003)(22082099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?SU5RQ0d5VDRTbUdCVjNIYnFmNld5djR1SzVQV2xRbjVFVUtHYVZBNDNxRTdu?=
 =?utf-8?B?c2ZoYWpZRTBBQjRiR1N4VWJCNzlDeEV2MkkydytyNzZ2cEdGcnU0L3pIMEpB?=
 =?utf-8?B?T1Q0YVl4SzUrRXNaTUZjT2granB2Z1Bsa3gxV09YQWpGc1FJRUxPZFVPMjBq?=
 =?utf-8?B?dFdsNlprMzVEQVBvR1dETkRKSWhnM0dyZDE1OTBSMmZHZ25UckdzY2NseE9F?=
 =?utf-8?B?bmtwRFRyOEYzdkxqeDlReE9PQ1FYSFB2V05sbUxjWUdORWZsU095Ykt3dHRx?=
 =?utf-8?B?aEtEYWFHTEdyVEZ1UXE0Qm4rK3VadERpQThSNDJnS0ZTdHNraWVoa0hsTnA4?=
 =?utf-8?B?N0pXcG5kVSt2WEJCRE1jMWFPY0dKdk5vcTZrRTUrSnVPZnN4SjFHbmdpaHZm?=
 =?utf-8?B?OU41RERlQUJYN2NCdG9yVHVJVTYyeGlmWEZzZ3J0eGVrNSthNG9JWXRaSzd3?=
 =?utf-8?B?ZzJsQnBqamJKdDVJUTZZRGJnVC9lME5vL0hIcEhSQVBWdktiRVBoTm5CNklQ?=
 =?utf-8?B?Y0dLNnAwOHBSYjVUVXJCRmJFdEtrV1hmamp2bmNvWUxYN015aHRrVHJ4dFhk?=
 =?utf-8?B?OXNyY1FVNTRkRGxHOVkzUGpEUTNMdkM5UmhsV2NRNkFyaE5BWXR4YnU1elVL?=
 =?utf-8?B?Tnh6Ymw4ZzJwYTZhWGIvVkxCMk4zWVN2QVBPN0lJSmFGeWVRWHREOTAxOHJm?=
 =?utf-8?B?Y0hHbks1OHJyNTc1dVBWL1BYR3hpdG9lNG5YbGp1aDJXMThQcTBFcmVWN2FQ?=
 =?utf-8?B?WklKVnBKMnVtT1drdmY5ekVSSVAxVXRRSDNrM3l2TGlLS0htbS9oanFlUWth?=
 =?utf-8?B?THAyZmM4WUdkZmk1b2pkTG83RmM4SWRyaEF4WS9DK085dFBDd2oySjJMTE1J?=
 =?utf-8?B?NmltT1hIT3NUTE9NSUJJN2tHZDMvSjdianRVVWQvZmNnZ1pKYmxnTnVuTERj?=
 =?utf-8?B?YmRqTHNmWXRJb1Vybi9yamxkNlI5cHdDTTRzWFlLeHJScHp0M1hNMGNkSTJk?=
 =?utf-8?B?cnJ5WDlJb09QNnhpdGNBMEgyWmNIRHN0QlBaL0d1SVJMTmxXY2xVaUdnZFps?=
 =?utf-8?B?Q3EyZW5mMlFLbFRMTkhFelUyblhPQzNaS2g0WnBMaFJxT050bG9MZ3F3NmZX?=
 =?utf-8?B?dGZ5LzQ5dE93NGM0YzF2RTNCUVZuOHg2eWFVeXdjNW00RjhUUE9FNkppSHZP?=
 =?utf-8?B?MDV0NmNzRHdLNVFyNzNuT3hWVG9xQjJOMEhEUk94OVJFV3BYUmd1bGl6bnNP?=
 =?utf-8?B?Qk91ZDJ4dVczZkhFVWV1TzkwQ21KaDByUUdEcFJwb3RlRElmUStVaGdlREFy?=
 =?utf-8?B?UDVMUEdoaTNNdzNzM0JWdCtFOTNHcUQ0SW05LzZXaFYyQm1TY3M0eWJqeUpY?=
 =?utf-8?B?Q29Db0FVRjAzQWpoUzJEREhNR2RxYlFES2NmZ2RLWWppclpBQ09xeFpleGJF?=
 =?utf-8?B?S0RHcnhyNzE5YkZ6RDZwS3ZxWEViM0JZSy91c1hTWitodnlUUEFLVEMxM2dU?=
 =?utf-8?B?bktVOFZ2MXp2WXdjYlIyajBHcWp1OVB4Q08xSXM4czlUQUdZZVhCMjBtQmwz?=
 =?utf-8?B?V0tTb1ViTGk0OTh0Rlc5UGpYSFdJNmJtSE5uc25QK1UwUVhESG5taE5FL2tj?=
 =?utf-8?B?NmIvUjF5bE14ODNrNi9RVzdhZ2NXM0h2UWxsTThDMUV1NWd0N2pvblB3TGU4?=
 =?utf-8?B?NmMrc3RML1NGdjVLZ0hqUGl4eFdLMnJMZVVNa01Wdk00WHhYWUpYMGxVZEpV?=
 =?utf-8?B?L2ZTVUVEdER4OVd3bXBncndoSXRLaVdpUnQ1ZWlLT0RtOGc5KzNlNEdDOGJC?=
 =?utf-8?B?VjJEa3RTR3o4STRSblRkV3VFbEEvWDRBWU93SEcrWitWZmpMOUJtZUFkSkQ2?=
 =?utf-8?B?N01EbEVSQ0UycThIOTlKa2N2eE9PU3o1NTVZWFdQNVYrb256MlV1Ry9jMXNN?=
 =?utf-8?B?QkRjTHdjeWhJUGhGQllZZHRYQ2NNbEJxWXhCM2NZTk1nSk8rTmttWUduZUFZ?=
 =?utf-8?B?YlRjeFNiMjNNTytENTF6OW5NdVRod3ZzZmN4WjdkL21tMUpHNzNqMlFjcG9B?=
 =?utf-8?B?b2ZjUHFYVHRwODl3QVlNQWRRdlcvQ1ZnT1NwQWJkTGVqSkNRVjV5MmFtaVpa?=
 =?utf-8?B?SWkwcVJ6VDJLeXc5WlJPOWJUcFEvZVM2MitCMjUzNHdiTTBZaXMrRmpyK2pB?=
 =?utf-8?B?VzY0WFdMNUFhRHdCN3RkZlB3dzVhWGo3eUc0SXNXNHY0djBXN0dPOVhKT3Zy?=
 =?utf-8?B?NkJHWWQ3U2hvL3BxS2t2SU8xSTFIZllxQWc5d0Vac09Vei9CWHBUQUJQenUw?=
 =?utf-8?Q?EJvfkNeBc7txbb4Q/0?=
X-Exchange-RoutingPolicyChecked:
	bS8T4bSuHJ7qGRrc3rNf+l4oFYUqN0RSM868Bk0kbPNIdxbJ9E9T0hRDOSGOdtVEUWKQ857ScxGf9U/L5NVM5fhflxcwdv29Kd9uppGDwqmZZTZyZWl3mVXEDla7y19L7vmeC4vO+NeLqTOkIWJx0XI3Loug5ntK0OzidORNWPzfJdVGUiTSs06PtYb+Hk+P7QTOLpVEgPsUHvAWWjjir0t6RuQOZIvRPzgA076cG4YhcBSxJ7rwtaItqKslLd4q/KP/BMoxyZmSLuXU4aM9ib8gcVBLc1gfLAMw86kAZEp8zk52EotwRnyRrGc18jo3fBmz6S5IsE/55L53WBhClQ==
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: dc6c157f-504a-4060-496e-08deaab6c68a
X-MS-Exchange-CrossTenant-AuthSource: BY3PR06MB8195.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 May 2026 14:58:33.0804
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +k/kNy5ZzW9BTVXh0qDihE/uKfBbqp6CHdGweoHLMrsWHoLjKxkBmAWusq1nVsSV
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR06MB10371
X-Proofpoint-ORIG-GUID: VyHKKiA1Y5-OTNExDZth3QBBiYcADE6v
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTA1MDE0MyBTYWx0ZWRfXx6P9+5H7nrcb
 qwi5CvWMiZuSbJitR7MeQrOQb+ugt8USe6X10XkFeDJUDHz/px2YB0xzG2KbPc4CDAlaUfEfRg7
 Kf+tBu3DLGLRN5r5d4mcPBydkJGYRpkPbKPU2S1nghiswCQPykCcJrsqNEF+/LaNqFUefDJBT/j
 NQv5bczQ8PeEOUdlUqU8qCrZzR55fEc8loJeyn0yqeRks9cB01t1C2ztyQkEYNmhRLngaMUov+d
 e7ARksLaxtTOz6qR5jYgCS5DYOAqCOHL/qHd+0CRC1MWV99L13DGlwQTKYdKuZORK+QCbDI3B59
 ToKS8pUCUBHAV0XSDIA+onONUmdY5B9/N3wBOnh4JdW/GtrRS2g6pepqj9hrX8zW5rc7qH1J+SJ
 T3QWgIn/i2U06Uy+fzkD6L6YFM7ty4jGnEQ3kSFrZyQ3ghhATZ8BW7Jj8xgoPFqUiNeUUWeqPQd
 WDOoH2DcuoE4f2p2yBA==
X-Authority-Analysis: v=2.4 cv=B6+JFutM c=1 sm=1 tr=0 ts=69fa059b cx=c_pps
 a=sWRNDn+RSbH+kxTJv0thDg==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=lre9DRYkaIEA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=ZyELlZqCvD1aXIDzc3I-:22 a=8Xyu5n2RU-RuQlyQMiry:22
 a=qPKtzgQbAAAA:8 a=SJisZOTUImjpuEgECB8A:9 a=QEXdDO2ut3YA:10
 a=OTAqJWGB1laLS8RTg9aS:22
X-Proofpoint-GUID: VyHKKiA1Y5-OTNExDZth3QBBiYcADE6v
X-Wisc_ValidFrom: true
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-05_02,2026-04-30_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 malwarescore=0 lowpriorityscore=0 clxscore=1015
 priorityscore=1501 adultscore=0 impostorscore=0 spamscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604200000 definitions=main-2605050143
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5
X-Rspamd-Queue-Id: 0C51F4CFD44
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
	RCVD_COUNT_SEVEN(0.00)[8];
	TAGGED_RCPT(0.00)[speakup];
	ASN(0.00)[asn:5645, ipnet:206.248.128.0/18, country:CA];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[jheim@math.wisc.edu,speakup@linux-speakup.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	TAGGED_FROM(0.00)[bounces-1603-lists,speakup=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[math.wisc.edu:dkim,math.wisc.edu:mid,befuddled.reisers.ca:helo,befuddled.reisers.ca:rdns];
	TO_DN_ALL(0.00)[];
	DKIM_TRACE(0.00)[math.wisc.edu:+]

But that seems to use the default voice. I want it to use Samantha.


On 5/4/26 9:39 PM, K0LNY ?? wrote:
> Hi John,
> I have three of the Voxin voices that I regularly use via speech dispatcher.
> I type in voxin as the synth, and use alsa  in the speech-dispatcher setup.
> I do this with spd-conf.
> Glenn
> ----- Original Message -----
> From: "John G. Heim" <jheim@math.wisc.edu>
> To: "Speakup is a screen review system for Linux."
> <speakup@linux-speakup.org>
> Sent: Monday, May 4, 2026 9:36 PM
> Subject: Voxin and Speech Dispatcher
>
>
> Anybody know if it's possible to get Speecch Dispatcher to use one of
> the really nice voices you can get from Voxin? I have Samantha on a
> machine and I'd like to have Speech Dispatcher use it by default.
>
>
>

