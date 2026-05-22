Return-Path: <speakup+bounces-1606-lists+speakup=lfdr.de@linux-speakup.org>
Delivered-To: lists+speakup@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gCfjARN8EGrdXwYAu9opvQ
	(envelope-from <speakup+bounces-1606-lists+speakup=lfdr.de@linux-speakup.org>)
	for <lists+speakup@lfdr.de>; Fri, 22 May 2026 17:53:55 +0200
X-Original-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 186C25B7340
	for <lists+speakup@lfdr.de>; Fri, 22 May 2026 17:53:53 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=math.wisc.edu header.i=@math.wisc.edu header.a=rsa-sha256 header.s=selector1 header.b=enYiVAlP;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id CD00C382766; Fri, 22 May 2026 11:48:12 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id A93653825FD
	for <lists+speakup@lfdr.de>; Fri, 22 May 2026 11:48:12 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 602CE3825FD; Fri, 22 May 2026 11:48:06 -0400 (EDT)
Received: from mx0b-007b0c01.pphosted.com (mx0b-007b0c01.pphosted.com [205.220.177.71])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 2A4A03817B7
	for <speakup@linux-speakup.org>; Fri, 22 May 2026 11:48:05 -0400 (EDT)
Received: from pps.filterd (m0316042.ppops.net [127.0.0.1])
	by mx0b-007b0c01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64M90KwY666156;
	Fri, 22 May 2026 10:47:57 -0500
Received: from bn1pr04cu002.outbound.protection.outlook.com (mail-eastus2azon11010049.outbound.protection.outlook.com [52.101.56.49])
	by mx0b-007b0c01.pphosted.com (PPS) with ESMTPS id 4ea6fnf6ah-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Fri, 22 May 2026 10:47:57 -0500 (CDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=N060YWni5QLjYv394uORwQxOUC206q+oUf9tfS/Wb6daJc9v1p80FsylbatWH4BLglfFImJy+4OGRVqjer9tAxJJ6Q0Go20EZEiznPIyN8sS/e9kKnE8xGLkRl8lgeKih7H3EoNOB3Udk2b/x5ODbivsv3bSGGwLRSqNdkwH+f8tRHnc1vIzNMcKYoiobwQ0VWgiZeyNtN+n1xGSJYpBa7SPr8wJlP8ZrJEl3Q6Y4CBh4RcBDEsydJs1Mo9mcKPi6DIYJXnyqSU6525JOLaVn4yFWgzrblzAnE4E4wB29g3UNSs6WVk8O7ghj8ylLUBLRLx7fJpmZDQTZvpVVVUu6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oD4v/65A2ud9qrAzUgYhGvNXDH1uIMwpafXIQskA+uY=;
 b=jzo1eyes6ksG2SxDrIRpOCnTNHuK6MTj2uGT3n3/4Lmgirzf+sbN/gz8KUgS00NdYxE2lN7PNBhkPalgVU8we7WItNBzyBO1z+1Pe5gjvYzariBNYsid1Ewn6RVNc6yLbYTwyGpkbIfghgNSsPdJ+ASmZ5+fUXQz910iZ+LYhbVUfYcLUyYCASObaz3cYaW3KvuV8pwiG8MmNfxcHLKmaWqncK7Xu/vwZwyLeGgXfDmZCRuzfxxZOnkka6wZC+WH2iAzsZ12k0sjJkENbp88orDXICEEG1ZPcFnznNs4fYIHp7vItzWwCC3qPurpP/pm04KDQRqqhiTT/s88B3cQXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none
 header.from=math.wisc.edu; dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=math.wisc.edu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oD4v/65A2ud9qrAzUgYhGvNXDH1uIMwpafXIQskA+uY=;
 b=enYiVAlPf4wXi9KLoX5OPzJsOtst2Kzz+QF3oYr986WdhZD8VT79u+wAzSec99n+4dekNDvFF4sOqQp6p/KBPMBja/c5FsL59kONP+/KIQdC/7zDyZiuufxFB/0ZE4rkp9gJ+azOTqFEpanrBfPTMXQdaE5GVNYBZwm6KzSGzrtT9/h/dKPk1L6bkdYJG8ZjRoNYiwHRLBF+HAMWUfpwz20MGMeVPVMceJm3EuHTTTmsSiclSTDQ+jL486KgZ3OIPb/jn0aCBj5LDrq4GLNxWsCJaixPR39Yhw26B4PEcWQG5E6M4vnMgMW0SVU/FdoyE2leFsTHLIb6QXy08iMowA==
Received: from BY3PR06MB8195.namprd06.prod.outlook.com (2603:10b6:a03:3ce::19)
 by DS1PR06MB10314.namprd06.prod.outlook.com (2603:10b6:8:20b::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.25.23; Fri, 22 May
 2026 15:47:56 +0000
Received: from BY3PR06MB8195.namprd06.prod.outlook.com
 ([fe80::a7ad:fb62:4389:fd8b]) by BY3PR06MB8195.namprd06.prod.outlook.com
 ([fe80::a7ad:fb62:4389:fd8b%4]) with mapi id 15.21.0048.016; Fri, 22 May 2026
 15:47:54 +0000
Message-ID: <f2303e15-9e88-40ed-b1c8-164e8b1119d0@math.wisc.edu>
Date: Fri, 22 May 2026 10:47:52 -0500
User-Agent: Mozilla Thunderbird
Subject: Re: Kernel parm modules-load
To: Samuel Thibault <samuel.thibault@aquilenet.fr>
Cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <4a3acf6a-66dd-4aec-a22c-ece3e2664dc7@math.wisc.edu>
 <ahAgc09FRRuDi-8w@end>
Content-Language: en-US
From: "John G. Heim" <jheim@math.wisc.edu>
In-Reply-To: <ahAgc09FRRuDi-8w@end>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: CH2PR20CA0028.namprd20.prod.outlook.com
 (2603:10b6:610:58::38) To BY3PR06MB8195.namprd06.prod.outlook.com
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
X-MS-TrafficTypeDiagnostic: BY3PR06MB8195:EE_|DS1PR06MB10314:EE_
X-MS-Office365-Filtering-Correlation-Id: 9dc8baa4-c348-4f37-f623-08deb8197cb2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|41320700013|366016|376014|786006|22082099003|56012099003|18002099003|4143699003;
X-Microsoft-Antispam-Message-Info:
	CfzwKxGL+bKaL1WxnR7xFixmH0tkNeNEokPesfhDQU8ttnE0oNUZa3OUvKjj77n5cubKhDKJWGUVUA955qlGWzeuwML3b3XxANT5I3WfI5nsdIGuYAL1sYNwemCvo4Ss/MuEO9IUxSH8ZfPQyYt5fVb/UoHL1mZ3FjINyD1r1N0RUKhe1DFiNOE+RbGWscrckmBvR9srbffqeSLZefRVpncKMtW3hqs3XccmH05jZGjBdKPKrv/x59FREsaz+Q3q5V+aEsfXE0CL7omhKjIdM67SiZVie50GoCBNOr99wA9eAEYsYef3/bFAfP6ctk4HWzBaujzXDQTMXgWXBtSDAzG6emtDjLzZdSQJfVen6ZBNAu0gEhQGJNQtLdcajK+QwvcbrLzteQD/tDJBCLYDvp+WyxdzpVmFQ4mgWblCzEPlNbfOscfsbzV++KyDBPlnCZheqx4aR5KPkYJv91KhavlBbg+0cCTk5G/GyJABYBESjWDzOrSNP0M5ZE/7sT46puJ1NGTu7UgBSWWezDdh5nWRidNCgjRNSNLycZGXTRkFOTPTjHO/M0T44bLH7Itq3H0X6zBU2HcZLbTEUOvMPSKKSvuipKmLqX/I9LSVG0/Uc7y1ixN7ElxSaxjPTnnT59PlcT9ujWgSROWAZl/cIR2Cz9NC3HlG24FPsxYS+VmMuURuLUCVu4cYa0V/WMd1
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY3PR06MB8195.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(41320700013)(366016)(376014)(786006)(22082099003)(56012099003)(18002099003)(4143699003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?RDYvTFZYMDVWQXZlcEVhNDMzcng5SkpGUWo0ZkI0TFNOVlJOczFKcy9wOFBp?=
 =?utf-8?B?WHhjR3dTazlnZTA5cTRXNW5vN0NxTFNKRDdYNEltZW5VRE0rRXZMTjNoSjMw?=
 =?utf-8?B?V1NIaWQvSHFXMEpreURBKzV0K0pBeE1oRlV2SE16VjBUNCtrdUVaMEZJVkla?=
 =?utf-8?B?cXpMekdTYXpaMmFFZ2JldXViTVlGRUloTnAwcnROVzBWSUQvYlIzUDNCNWJ0?=
 =?utf-8?B?NHY4WlAyQ3drQkRaem1OZ3NqcWFPc09neDhaY1BqUUtVRHUzYnZsYklvbUhY?=
 =?utf-8?B?d3hIQWcxQTBlVkJLcmZpWHh5MEFvVWVkUnc4UVYzd0JISFZEOTB1RW92aWdI?=
 =?utf-8?B?WDZ6c0pHQlVRUE45NnpoZThGUTN5cGpVbUl0R1hjaThKYmplU0FRMnZZclpC?=
 =?utf-8?B?L1lWandEUk5KZHdtaVg1NTVFa3BwWk13emhVSWxFQmpLMlBUNUZmbnpzaXp0?=
 =?utf-8?B?ME1SUk5nZkZhVnc0bXpmVnZhQWNFYnA3RjlCbS9CK1o4K25Yc0k1WUtYcXo1?=
 =?utf-8?B?cm9jVWVabkNLM0tJb25hTlY3MjBIZWFRaUhlSE1ocXExSE5hL3hXdXZxUVBp?=
 =?utf-8?B?Z1RQcVZwdmM5TEtaWENEeSt6Y2tRZUx5dXIwVElNRHYvWXhqemEwbUxzcmlZ?=
 =?utf-8?B?cFM4TXJrNVBmMVZicjdBTWdIb0dpaXVpT3NNOXY5N2FrdTNLZzU2Wlk1eU5m?=
 =?utf-8?B?S3dHRDVYVVAzL0dxRksxTk5XdDJUSi9jWFNRclF5S091OTdGa3ZNcmZDZEdo?=
 =?utf-8?B?bVNrdW92TUVvem1hWnNiZS9NMXhSZ0NLZXRoOXJyMUYvSEVTNG1BRHQ2azYy?=
 =?utf-8?B?SG5sWlk1MjhyK1pZZmU0UmpIZzc3VzIzd0tWU1V4SEpIK2lFMlF5N0FZQ2NX?=
 =?utf-8?B?K0xxTzU3UHRrQ2dEcm9pTzNZZkdUaHE5d3M3YURYZ1ZUcmhEeFlEZDdmUGRj?=
 =?utf-8?B?RFBzcTM1Q21hWE5rbUR1SmJtS0lBYjZYU2grNFo0T0I3SGM2WVpoNDFaRks3?=
 =?utf-8?B?S3J2ZWZRQ21XN2t2SXhpcng3d3JTYnlwcmdCaXVWdDNFelRYaWZ2OU00U3dF?=
 =?utf-8?B?U3FUS2VxNHBoK2Z3Q2dNdk9RNEFmaEVMYkRXWGlyaEFMU1Z4MWM1SDJiaUdF?=
 =?utf-8?B?eE5LekRzYzlvZXowdmFudUVvSGNMUkErcUdBTWZVMGE2a0JpZk45cHEzL3RZ?=
 =?utf-8?B?bnMxS1E2Z0dxcjZTMVJIbFNZa3BLWDNVMTIyNktpdERnY0FQVG1McWtmODJU?=
 =?utf-8?B?dmdrTTYwTVdHTmpnc2JaVXY5N0V6YU5sdXVmVUVIa3FmSjY5ZFZUc2NPRnVC?=
 =?utf-8?B?ZzduK0lZMTRwaEEvZUpzdzZzSmlvQXBjWS8zV3dIdHVJVjh4bGVNU05FOHp2?=
 =?utf-8?B?cm9rSmcySlNWMTZyN1Yxc3p2NG9wMUczcktNOWpHeFJQd0RUZUZIaXBmWS9N?=
 =?utf-8?B?YkRSenJKYnVpbms1Vm9Hc3Z4NUVrdFEyT1RGMnluYzhDQUR3OWV1dnhRMndB?=
 =?utf-8?B?UFFWMFBOK1dmTWlOaFRNUDZhOHMzZUdzOFJyNlZMSnN3V0MyVGRTekNNOHZB?=
 =?utf-8?B?S214WWt6SmtDRkwrRFh4VEdQZ3BubkVQSGdzeVlHM1ZMSDY4d3pic3ZRRUxT?=
 =?utf-8?B?NUpsOEtlUll6OWt6eVk2QUp0Ui92RXBveTB5cTVwb3FEQzBLSUgwcE5KWWtJ?=
 =?utf-8?B?aXlHalhhSkp1Mnp5ZWlLb0x5VEFWaEtVbjBteVVrVWl5THk5K3RWQ0dqS2RR?=
 =?utf-8?B?akV6dW9EakYwTVBaWFpsczNvVEVDRWpHdUlEbmltSEJsRGZqWC9rY0VxU0dC?=
 =?utf-8?B?Ky9SNURWT1ViU3BnaG1NRnFyU3FXQ1c5NEpYOTUwS0dZdFVtaERBSXhGaUZJ?=
 =?utf-8?B?WTFQMEZoVlU4alB2eTRrVGJtaWQ0T01ZU0J1cjRTVWY5UmVCSDN1VCt1clox?=
 =?utf-8?B?Tnk2ZVlMWkszdnBjTUsyRlpaamY1bk9sc1dLei9vSUR0WURjNjE1a2Ywa2Jh?=
 =?utf-8?B?MVJXeDlwV29CUk0yK1h4TmV0MysrUXJqcHFQb3VJL1VLT29oNXRvVXprM2hO?=
 =?utf-8?B?dVlRcGdnVGNEZSs3NWZtVGllMDdKZ1EzUzd6bXlXWWNRN3VJWFpLNHJ2eUlh?=
 =?utf-8?B?d2N2MEZIeDl4djlVOFB0K1VjbjVFKzZxUWUwaTF5WkpzaTlWeVVHY0V1K0lp?=
 =?utf-8?B?ZXI2N2VtbXkxcE8rWjJ4cTZRTXBBcFFGaGhLN3loTGV1Q3BTZDFsazZXd1E3?=
 =?utf-8?B?Q2xoV3FVK01qWUhQWDZHb1pNOHlxUG4yeFlLS1k4ZWtPZnB6OFFSaW5EcGY2?=
 =?utf-8?Q?6sSVyyOCJBi7gZrnVb?=
X-Exchange-RoutingPolicyChecked:
	oi1oC8mhpMZxvdfRyZIaJim0E9xtVENdfm6G4iE3ckIWv3ZOn3LCH+w7DUJB0FWgXSrW4WE9qcO6b174zXC9/6hY9YYZr6O/YwsMkrMFb+QrftpBfrfJfbwAC6InE+zz7tpunsOwfJvUpFFHQW+9ZcqDqkmv/Ke1yh3oOy6EJiThYC4FRmuEfxS2SPT3yozncsHDq91k7QTQo5FfqcYpRT2P9MOcp/rgJ0Vo7jI34+etku0sPnkI8n4ONwejf5hBRbirpkO8C4lg2uJJdzfOFehPdaSA2IMupVNEE4mesOqLfnKR1vHJ0jYvslDwERpHDZ6qjjPHkf1+we5sgvjGvQ==
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: 9dc8baa4-c348-4f37-f623-08deb8197cb2
X-MS-Exchange-CrossTenant-AuthSource: BY3PR06MB8195.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 May 2026 15:47:54.2899
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Bm9pjp3TK+8pluSFImbEeoAYePN7XcBGTV7X5rRVtn/7aV7+Mxgec1UFCbbwPbY+
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS1PR06MB10314
X-Proofpoint-ORIG-GUID: qJlux5DhRxHrqkiQz206cY01yE0GEJyg
X-Authority-Analysis: v=2.4 cv=btJ8wkai c=1 sm=1 tr=0 ts=6a107aad cx=c_pps
 a=gJeMUiwA5g2xtJW4k6eMww==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=lre9DRYkaIEA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=ZyELlZqCvD1aXIDzc3I-:22 a=88-R7LcPEwPXXGSWJaMA:22
 a=lnTdNS7WdMPmqTlt0QgA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
X-Proofpoint-GUID: qJlux5DhRxHrqkiQz206cY01yE0GEJyg
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTIyMDE1NiBTYWx0ZWRfX0x8uN+xPMiRv
 Zm4BtJttqaajfNXJQjg24v7W+KDFiNdrtIBtuUFKdXZ6QUuG3yHdweZy5jmYlDdcHODNM881VrT
 u4XXllwFbTRVvx727e9n/SADQn4ECdD57tK8dAlQvrJ2IF2kxMqKe73yC8Zs0prbpQ+pevVcS2g
 XZxKj2ZZj3Z9E2jWQeCv2uut1Cf9Yw48AP+Hdm+q0ZMnp55QUYRpj76rk2L++065xrxpenlMc+J
 OugmM/NTUXOYMYbg140rNkauxxODlOSXP+teTheN0wURl4KjG7//fA7LpbxJzvTOCJkKEFWwhe3
 geNYTArKD896FuWyV1shpP9Esq9Tbv1cStdcAA7VKwpYYUO3QjuanRxkkJOidWmr9VzWDio3vsX
 aeLopBpPnr2jXbIGoblzMCFMmxYAxwtC0Oes51MGHMpmQw+ZDZnpD5bTOdpjnNAz/BzeG4+C7Qy
 72JEqMOgk84Bn7UTGow==
X-Wisc_ValidFrom: true
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-22_04,2026-05-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 adultscore=0 suspectscore=0 bulkscore=0
 clxscore=1011 spamscore=0 impostorscore=0 malwarescore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605130000 definitions=main-2605220156
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[math.wisc.edu:mid,math.wisc.edu:dkim];
	DKIM_TRACE(0.00)[math.wisc.edu:+];
	TO_DN_ALL(0.00)[];
	TAGGED_FROM(0.00)[bounces-1606-lists,speakup=lfdr.de];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 186C25B7340
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 5/22/26 4:22 AM, Samuel Thibault wrote:
> Hello,
>
> John G. Heim, le mer. 20 mai 2026 20:30:20 -0500, a ecrit:
>> I have confirmed my earlier guess that you can configure grub to start
>> speakup during boot. On Debian, you would edit the /etc/defaults/grub
>> GRUB_CMDLINE_LINUX="modules-load=speakup_ltlk"
> Wouldn't putting
>
> speakup_ltlk
>
> in /etc/modules do the same? That is what the debian installer does to
> enable hardware synths.



Yes, this is just one more way to enable speakup at boot. If you add 
your module to the initrd, you get speech sooner than if you configure 
it as a kernel parameter. I would say the biggest advantage of enabling 
speakup via a kernel parameter is that you can use it with a live distro 
like Grml.

So there at least 4 ways to enable speakup:

1. Compile it into the kernel. This gives you speech at the earliest 
possible time.

2. Add  it to the initrd. This is easy and gives you speech fairly early.

3. Add it as a kernel parameter. Also very easy. Most useful for live 
distros.

4. Type in a modprobe command after booting is finished.

I intend to document all of this in my rewrite of the speakup docs. I 
just thought I'd mention it here for people who don't read docs.



> Samuel

