Return-Path: <speakup+bounces-1496-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 6DF16CF9D52
	for <lists+speakup@lfdr.de>; Tue, 06 Jan 2026 18:48:13 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=math.wisc.edu header.i=@math.wisc.edu header.a=rsa-sha256 header.s=selector2 header.b=illnRjAd;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id B6A8F3818AB; Tue, 06 Jan 2026 12:48:11 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 91C123818AB
	for <lists+speakup@lfdr.de>; Tue, 06 Jan 2026 12:48:11 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 76FCC38181C; Tue, 06 Jan 2026 12:48:05 -0500 (EST)
Received: from mx0a-007b0c01.pphosted.com (mx0a-007b0c01.pphosted.com [205.220.165.71])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 7BBDE3817BA
	for <speakup@linux-speakup.org>; Tue, 06 Jan 2026 12:48:04 -0500 (EST)
Received: from pps.filterd (m0316037.ppops.net [127.0.0.1])
	by mx0a-007b0c01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 606HKMvS2422534;
	Tue, 6 Jan 2026 11:48:00 -0600
Received: from co1pr03cu002.outbound.protection.outlook.com (mail-westus2azon11010048.outbound.protection.outlook.com [52.101.46.48])
	by mx0a-007b0c01.pphosted.com (PPS) with ESMTPS id 4bh6py05sf-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Tue, 06 Jan 2026 11:48:00 -0600 (CST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nKJSMp/Do0y73J5tGFe5WGgH60l5JxQTQRURj00j15mE18QcvpFC3iiME5brSjOnCFXIkDfBLX1I0K0Z1wwBOl3O5/lhskE9GGIQxD702U7cEIopTuUe+rNNG389h8PZ/PRoMnY6IRVVpFvxLFLbOhXbp3DMQ3Tz7PQ/9QpnwuD+honbR/tVnxByGDtNi1mZNnDrieWeDIFrJH9tDJiCp+efhiESqyNzw/ZaryLRkSwvGKpB3ICt79uW2p06eqXw1C+Ufqfn1IuE1PuFEaCAOQBygdgaFV5yHkSKsnLVKBw92ePDhF8Mskvm1WhtTigCVUVCcIniTOFAgQoA/WaFiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=W2gVSKOxAJNVihrTiNSOTk3KPcL6/FxmUjFnDQChkK8=;
 b=hZ/fYACPCLo0zReBYO52kWm2uqvMGY1q02dUe4ZLTAzHt+rt/kLatV0NHnrdf8ka0vKLxc3J/8SOC9OeP75aADuqdTUgzG5v7JNo/5Kvj+1EUmgwPyh6jABxdbSXT0jI15h8DDFTIq8kOKUuMtZVrw/Y1fBd2mkxGvTUzLkfsXrmGNlPyzNTm1qzpLPrrhAhUMLEkzGtKG/i1YCM3QFotqDW/IiD8m/B8qrFH9VxlTpLfLq91Y792KBD+Gh2H66Fm/iC4AfpotbSyHo0H+Hpfh8zB3HZRqFH/TxWASLgphTKsi1Bo0n3eRXQQcxKDyG+AOo6H05prTtwacMSqskTuA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none
 header.from=math.wisc.edu; dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=math.wisc.edu;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=W2gVSKOxAJNVihrTiNSOTk3KPcL6/FxmUjFnDQChkK8=;
 b=illnRjAds99u9cVbpBpT/GFAxRDZ1uvBFmnAnZeRbHEWXyhkpWXUvE3ZMFyf7B33VWtr9fbafDiocyu828hUI861XcS0kl2I5lpH9GP3ObnKsjv533+NzkUgbMdNHeVSnMeMZPPfp71OAIeZa31whSatt5iPc57zzgGtII/9vUKGtx52/1QxlcF773eN5KJnES0eHxuJKi8UECvZkn3NUeo4nZGYpaEKC48r75wI/YKZJUO5Er9u9UQF9GoxdwKg8qnPyRGqa6BGjZNLxWpQ49wrEn/Pdl+oCWt1Ye1dJLjipx5V00bT62Kd08od9a6HF3WvZzhdlj2G3FwZM5g+hQ==
Received: from BY3PR06MB8195.namprd06.prod.outlook.com (2603:10b6:a03:3ce::19)
 by DS7PR06MB6855.namprd06.prod.outlook.com (2603:10b6:5:2c6::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.2; Tue, 6 Jan
 2026 17:47:58 +0000
Received: from BY3PR06MB8195.namprd06.prod.outlook.com
 ([fe80::a7ad:fb62:4389:fd8b]) by BY3PR06MB8195.namprd06.prod.outlook.com
 ([fe80::a7ad:fb62:4389:fd8b%5]) with mapi id 15.20.9478.004; Tue, 6 Jan 2026
 17:47:58 +0000
Message-ID: <3aa08a4a-d309-4472-be93-61118eea32f6@math.wisc.edu>
Date: Tue, 6 Jan 2026 11:47:56 -0600
User-Agent: Mozilla Thunderbird
Subject: Re: Building a hardware speech synth with a Raspberry Pi
To: Gregory Nowak <greg@gregn.net>
Cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <4f9075a8-0252-46f9-8594-1dab9286474f@math.wisc.edu>
 <aVCr5A08QwOE2fi7@gregn.net>
Content-Language: en-US
From: "John G. Heim" <jheim@math.wisc.edu>
In-Reply-To: <aVCr5A08QwOE2fi7@gregn.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: CH2PR18CA0016.namprd18.prod.outlook.com
 (2603:10b6:610:4f::26) To BY3PR06MB8195.namprd06.prod.outlook.com
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
X-MS-TrafficTypeDiagnostic: BY3PR06MB8195:EE_|DS7PR06MB6855:EE_
X-MS-Office365-Filtering-Correlation-Id: 2abd3ec7-e69f-4677-dfbb-08de4d4bba51
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|366016|41320700013|786006|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?a3FQMkQ5WFk4Vm5GZk5Cd3FkUThENHR2V1pRZnQwR2k3ZFJnVjh2eDB2dGhw?=
 =?utf-8?B?cVNxd3krWDNHellVa0RrTHpUMjlvZld3ZHVOVytCTEg0YXhZNlpuOGVBRlAy?=
 =?utf-8?B?bHhqbmhZN3NYb0gwU0M5aHNNVklydXdhOFJFUHowV1hZd0Z3b0tHZmFwbm5U?=
 =?utf-8?B?TmJmVnU5bmY2NENUV1dxN2VIVXBOZ0UrekR5K1h2cVU5S0pySmJmdER5OVFq?=
 =?utf-8?B?dHJ1QmRSMitYYlpUUHRRWHZVZUUreVdySHJBQ1E5UEFlV2I0Z2twSTExYnNk?=
 =?utf-8?B?UXp2UnB5K0cxUDNTWmF4MHJ0bWx3THBHZ3pXSUtqakNhODRDb2g3WWlNY0xw?=
 =?utf-8?B?K1MrVGdDTVZXK0VQODU1Qko4S0NuQU9XUmZMV0UwY2RES3oxc2IycmNhRzZ2?=
 =?utf-8?B?RE1Mb044UzEwU1RCT091OFAvSVBoYVg2c2tDdWxuSHlVUVQzQVphaXYxYlNQ?=
 =?utf-8?B?c1I3eFl6Mm9WWGYxKytWVVlkWnp3NjBhQVRUOVV4NGpLTGdkUzI5Y3BjbHRY?=
 =?utf-8?B?TTZackIvanpZY2hCV2l1a2N2anF4a09TUGYxZmdSSEg5d1A2WUFQWVZzL25T?=
 =?utf-8?B?L0F6dStWYUpJMWlkeWFrckVkU3M0VXJYMFZQY0hCWW5DUDFVcThCKzRxMHJs?=
 =?utf-8?B?aklsQjE5QlExenJ4UFVzZm1kbXYrTmN1TU9qOW1QYWdJN3BoYzhtV25wRmdi?=
 =?utf-8?B?d3hYQmp4TkxHbHRzM21GQkZQVjRaY1JtYm9obWhDSmY2dTZ4Mi9BQkJkMEZG?=
 =?utf-8?B?RklwQUhEd1NlOXFOb2h2ekU4bkptNnZkYmtsc3lPQ0tRNEZ6UFdLY2NzKzZ4?=
 =?utf-8?B?cldONjVSQ2kwSnQ0dkFtenh4ZkpWRjNlY24xWlhST2U5Vkd1Y1d3L2t1QVZM?=
 =?utf-8?B?SU45aTZHTVQ3RjRUNlkxTFJnZk1ZUzJCVjlhTVlqQmVTdWpsbG45ZkZUcEVI?=
 =?utf-8?B?RDZkODBHYW9nU3pDMnpvcHpsL1BXd2hjeUpIdDJhdzI4Kzl5dWhWTjgra1NB?=
 =?utf-8?B?T1VOYStGaGNCeDF4ZHNJN0RsNDJKU1N3SE1ZQ3ZDY2Q4VmVFeXNPZ281Yk5h?=
 =?utf-8?B?OENPZFp5OGZDcFVaS0N0Vm05VnR4cExRcHppK3ZMSTFLOHJYUVcvRGNtQWRv?=
 =?utf-8?B?Z1l5czlJSFZHMDBiNGgxNWVyMU1lR2QzZGhzOVV3NE4vbDhRMzZVMVQ4VldZ?=
 =?utf-8?B?dnE1WXVuV1hzYXVEYVh3QjFmcTF4T0hZVjRNSWdoL1ZxUWw3cyszT0tjTWZ4?=
 =?utf-8?B?Y0gzcVVXQTAyZ0hiNmdHZ1o3RkdWRlVPbHFCcTlDY1JKd2Q2anNoS0gyWm9q?=
 =?utf-8?B?aVFGNU9DUjhUbGk3VUJpWnM2c01YL2V1ZDlMWWRKZktXbmJXZFcrVEp4cXVT?=
 =?utf-8?B?UzRKekZkancxdUk2REtWTGd2c1lseGgwWGxzSFBmWjVqV1Z1M2xNOWVNaFJZ?=
 =?utf-8?B?dFhEUHdIbW1rUG03U0h6T01VbjRNOE85TGE4N2FBanZGbUtmSEZMZnIrRi9S?=
 =?utf-8?B?SmlmUVo2c0l6dmpqc1hvMVN5UThQZTJETmtCVHZIYkxzN3NiK2kvS1drNk1l?=
 =?utf-8?B?bWh6bWY2cGFOOTZhenNkeXFMeTN3VkJNK0xNTHJoZ1lGc0ZXb0E4MTljRWF5?=
 =?utf-8?B?S3BrajlmbUJuYnRuQzYxRFJLdGxXaGhtSVJJRXdnMUdZek5PV3ZjRW1JRU9R?=
 =?utf-8?B?dmxvajZMZU9GQkljRWJwSmdtRC9GUEErMGhyU2VkMjlNUjR2RHNQVVkweUtP?=
 =?utf-8?B?Y3RER2MySjlaMmhqSFlFU2VSUGRQNTREVFRSY2lMUFk3S01QY0ZUSG1IVTAz?=
 =?utf-8?B?L0d6YkFRVVdFeC92YTliRTV6K0lwcVdEMldzeE9nTUVaMWZYZDJ3cFVDeGdN?=
 =?utf-8?B?TXhtTUdHZS9NVUJONEZab2w5QjZmUFk1dEUxOFFDa1hRa1E9PQ==?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY3PR06MB8195.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(41320700013)(786006)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?UFB5NVlDOXBFUzdpRVZvWW11eUZ6WlhQNWFHRzU0cnE5b1EwRjdZckpWZlpS?=
 =?utf-8?B?WFF1UE1PWC9sa1YyaWZlTm9UYjBJS1NSeUJlMDNMVnhQTG5vb2M2cDl2T0No?=
 =?utf-8?B?MGhJcDhEemZRYnlzbE50TXk1WDY2cXpOTXRDY0VBOXIvUXZPdXVzZ0JacDNQ?=
 =?utf-8?B?UlE0bHZ2dG95Zm9uWU9YUlRFRnRaV05Iam9mdnkyQW1rZ2NrMElPN1JHMGZy?=
 =?utf-8?B?cGFyTEo4eEVsTU4rVm5CU1lTSVFYMFZEQnpLV3NUNUt1NTZHbzA3Vk1ERThE?=
 =?utf-8?B?c0ZtOTFBQ0gvUjluaUFJV0UrRGZiSjBwMjFLc1ZES3hSRGhoNTBKNmZCRm1S?=
 =?utf-8?B?bHpGRTZuV2pwdHU1SXRJN2Q3M0FxUTNqbElRd21RK3VPRU41WmI2SUtqQzJX?=
 =?utf-8?B?Q2tSY2tlT1NWRmdiVkVpeW1CMnYzbjlSZ1IvOVJKNzhmcWhaWVFYYSt6SlF1?=
 =?utf-8?B?eCtwdUR4aWdrMUd3aVd4VzRLaitzV0tBakxxdTZzekRVZDFzWWJ4UzNIcnhF?=
 =?utf-8?B?UmU4b3FqbXVPVWpWNFo4THhFclhiNklleFREaFczdE1LcVRZUGdHaU45MGl4?=
 =?utf-8?B?MkdGRHFXVXJ4eVR1MkJXV0E2eENlYWtoMGVWdW1vNGg0RjR3TEh3aXF3ajQ0?=
 =?utf-8?B?dkNPT3QvZElmdkNIcG1mSThoSk9aQ0l0WEtwb0c3SmZ6eTFhMmN4Y2pWZEg5?=
 =?utf-8?B?ay96amd4YnlIWU1INGpzT3c2LzVZWXJxT2p3RlpSS1dwbVVaQkduNzRCblVE?=
 =?utf-8?B?VDdZU0dDcXNSQTZaemFTWDBiNUgzOFl1MFlmTnVWamhTaWpPeVk4ckh1YzYy?=
 =?utf-8?B?cnQwbXRJREF2TzArcjdzcXZhWDFLbkk4d2YySmhUVGdPM1E0dXVyRk9OVVk4?=
 =?utf-8?B?NERQdXhkSWduc1hPbU93YlFFRUlCc0crSWZOSFQyRTY3bENqcWlpMkpKbGY5?=
 =?utf-8?B?dGRjK041a2kvcUdIMTUwTk14a2xYTkJnMjBjejh3SXJqMUNNMUNkTkorTFp2?=
 =?utf-8?B?MG9BN2RqV2RBak10MUNBUlhHazRkUFdFUVNlL0xBS2Fsb0VQVWVoSGpOVzRP?=
 =?utf-8?B?YzJEa2xPdUhiK2xmZk53QjVoN3hwNWJXdVhCMlRUMkdNQzNOMHhmem9xa1Ix?=
 =?utf-8?B?bGsydVZ6VXc5L1psVjd0R1NoMFdUQmxmays0ais1Ly85bDBqQnRmVm5WdXZt?=
 =?utf-8?B?ZnRmTndsVWdDc1ZQTFBtVXFCSytRaVVDOVF0U3NhK011WVRHdkNKejQrUzQx?=
 =?utf-8?B?OVg2aVR4aEY2bUtQbWk2OXovLzFTbFJ0TnlSbnkyVEtPRGZidENsMTRyeG1F?=
 =?utf-8?B?SGVIOXB2OFZXRk1yTVlFSzFvQWNWeUFibWUwMFBvZUpyMjNTNU5zN3FxMmJi?=
 =?utf-8?B?MkpaQkRETUFaUlhnWWVPZ3lJZld1RW44Y3J2elhINklSblN3TjIyUmYrRzZq?=
 =?utf-8?B?dHFVVVRkQlF4TFBJVDFqczZXMXBJcEZWcW1WZllORzMyZkJUZTRVVGkrYkg4?=
 =?utf-8?B?NHYwZ3pjeFRKTEc0Z1FNVlJiVmhWUVhyOG9DWVlHc21mUGpGbTF3WUZ3MHV2?=
 =?utf-8?B?NkZOeEZZaTVvdTlMV0U3eTlVRE0ySkQraXFsYjNuMUtRWVkyU08yVlZRczlV?=
 =?utf-8?B?VG1WVTR1MWl6bUZOdlJTNUh3am04NlRqUSs4ZWV1K1ZPbXc2UC9lS1RydXgz?=
 =?utf-8?B?WmhKenBwWnNiSUlXaXlaREt3WHFiK1R4K0xobmd3dHpibnllVnVFRlNiNUY2?=
 =?utf-8?B?eUFQV05rRHBCZHNPN0dPOWVjNFdCN282R1ZSeVNVZC9waGxpWUdrMDhjQVZB?=
 =?utf-8?B?Q09MT3A2T09IaDZEMm1iL1hjTDJML2YwRXJuZGE0cFg2Q3FBaXFmUVNhZjdm?=
 =?utf-8?B?UnlGbUJFSzlDMjVoUE5EVmRxVTJDOTV0enoxZTEvSEVKNWNYelB5dmVyVzlC?=
 =?utf-8?B?TEFUQWI3TmdtclRBY3VhYnV1Z3ZTZkIrQnZOOTJCQWM2VGMwUmFCd0Q1a3Fz?=
 =?utf-8?B?bjA5cExlMDlnWi9jcDJydGxYS0x2cFhqM2pwLzJCLzl5Qk10cEFIdjV6NEw1?=
 =?utf-8?B?bEhrNHo4K0k0QlVybURCVi9tQ3MzK2pBK2huTG96V0RZMVFvVUhHNC9TdHBs?=
 =?utf-8?B?RHF1NlAwS1hUdUlmN1FJWWRFeTJ5VmhvMm1MdWoxSXNtYVNNZGw2Sno5N1Z1?=
 =?utf-8?B?cjQwSjF2YVR0TlVXRzM0T2orYS9jR1lRY1g3dU0yVGJqUlJ0RFRhZnQ1RE82?=
 =?utf-8?B?amxQNXl5bTlKRDJQdktLbzJUd2h0WUxvTFNzRWptUHVSNVRDUmFsc3ZaRGRu?=
 =?utf-8?Q?/PC0foX1Zuh/Cc3DVn?=
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: 2abd3ec7-e69f-4677-dfbb-08de4d4bba51
X-MS-Exchange-CrossTenant-AuthSource: BY3PR06MB8195.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jan 2026 17:47:57.8140
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9x41+BA96f/AhJLPJAuutnsSj/dD/o3foSt9EScI0sVLsVxzGoXl6R8I8uyRVoVr
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR06MB6855
X-Proofpoint-ORIG-GUID: NahutChz_AK4Ef5KgMRSZRYa5HTckBIa
X-Authority-Analysis: v=2.4 cv=Q/LfIo2a c=1 sm=1 tr=0 ts=695d4ad0 cx=c_pps
 a=8KrPlQlxEYnZEdstGaGrzw==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=lre9DRYkaIEA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=ix_EV-TaAAAA:8 a=SZjmrlTKED97CsHg30kA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=VY1Ei6JEupj6bCOvl4gK:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA2MDE1NCBTYWx0ZWRfX9l45YZxRmg2r
 Qu8c2lh3LKkXG4rdBQ6/YVFpSKTYSesevQ4xkbLhp4bvoJdKj1RJepYHtb5pF6h0pvNfGogc54B
 BzDf8p6+DyAyvQg2JgRUMtOGwV454ECQkkX6EAoYUMxM2WQv0IXAqR1w9eSVjmEXy8XXWg6Ls0G
 G8VntID3I91xjEca2fsyV1UGZE5g+DVoyySve841WV5QlDdYixlbApgApv6HNw1Jjv2eKKMa7Wq
 zITJqJ1eWlWvTdc6bbECMGbCxRv2OGBduFG97XvmnBlQ2xJCpOt9AO+XgdLUZLGpuObYTngx1Bl
 GlrEzNT87Ab+LPLchtwn01aOG/pNAybyEhVRnopNzUom3WzyAnmH/Zkovj5NDnjlQ0aaXwMpkhx
 /PCBcr8VmCIhkIIFaDhuGBTN891B9fzwbBIe0vSDx9vuNg9JxbJ3Io5MrRy7tGMhc+RN4yOEObE
 wGMq2Zq+Kk7vId/Dk1w==
X-Proofpoint-GUID: NahutChz_AK4Ef5KgMRSZRYa5HTckBIa
X-Wisc_ValidFrom: true
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-06_01,2026-01-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 bulkscore=0 impostorscore=0 clxscore=1011 malwarescore=0
 suspectscore=0 spamscore=0 adultscore=0 lowpriorityscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601060154
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Thanks. I think that cinches it, I'm going to emulate a 
DoubleTalkLiteTalk.  Those 2 synths use the same Speakup drivers, right?

And I think I already found the DecTalk emulator you were talking about. 
From looking at the code, it just does basic emulation, filtering out 
all on-printable characters and sending what's left to a TTS. Which is 
pretty much what I'm doing for now. Of course, you have to get a lot 
more sophisticated than that to have a decent emulator. So I think I'm 
going to stick with LiteTalk which seems to be the same as DoubleTalk.

There does seem to be a heckuva lot of extraneous characters in the data 
I'm getting from the host system. I haven't figure that out yet. Maybe 
there is something wrong with the way I'm configureing the USB port on 
the RPI side.




On 12/27/25 10:02 PM, Gregory Nowak wrote:
> The doubletalk pc/lt TTS synthesizer is documented in the manual:
>
> <https://urldefense.com/v3/__https://www.rcsys.com/Downloads/dtdoc.zip__;!!Mak6IKo!IwnmWFCT-pFoNVTAe8_ipeqNeqMgh5FPRRDsTpr9L7AzdsoJhcEASB3rQ0l6LUrIFFubu0Qp8jcHwQ$ >
>
> in the OPERATIONAL DESCRIPTION section. I haven't checked how close
> the doubletalk parameters are to espeak-ng, so don't know how much
> translation you would have to do between espeak-ng and doubletalk. It
> would at the worst be translating input from the USB port to espeak-ng
> equivalent, and sending that to espeak-ng to speak.
>
> I have also heard of a windows project emulating a hardware
> dectalk. If the dectalk synth source is available, and the emulation
> of the synth is portable to GNU/Linux, that might be the simplest
> option, provided the software dectalk is stable in operation.
>
> Greg
>
>
> On Sat, Dec 27, 2025 at 10:55:28AM -0600, John G. Heim wrote:
>> I am looking for suggestions on how best to write code to emulate a hardware
>> speech synthesizer.
>>
>> I am trying to build a hardware speech synth out of a Raspberry Pi. I got so
>> far that if I plug my Raspberry Pi into a USB port on my desktop and tell
>> the desktop that it as a LiteTalk synth on that port, I hear the login
>> prompt on my Raspberry Pi.
>>
>> But that's about all I can do with it right now because all the code on the
>> RPI does is to read from it's serial port and relay the text to espeak-ng.
>> Single characters aren't echoed, etc. It doesn't really behave like a
>> hardware speech synth.
>>
>> So I am going to have to write some code to emulate a hardware synth. I am
>> looking for suggestions for how best to go about that. Is there one synth or
>> another that would be best to emulate? Should I invent a new synth type? Can
>> speech-dispatcher help?
>>
>> All ideas welcome.
>>
>>
>>
>>

