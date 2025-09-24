Return-Path: <speakup+bounces-1410-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id A1CE4B9AA2E
	for <lists+speakup@lfdr.de>; Wed, 24 Sep 2025 17:29:12 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=math.wisc.edu header.i=@math.wisc.edu header.a=rsa-sha256 header.s=selector1 header.b=GWbjIX2/;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 556333815F0; Wed, 24 Sep 2025 11:29:02 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 2F5B1381583
	for <lists+speakup@lfdr.de>; Wed, 24 Sep 2025 11:29:02 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id D33DD381581; Wed, 24 Sep 2025 11:28:54 -0400 (EDT)
Received: from mx0a-007b0c01.pphosted.com (mx0a-007b0c01.pphosted.com [205.220.165.71])
	by befuddled.reisers.ca (Postfix) with ESMTPS id A365438157C
	for <speakup@linux-speakup.org>; Wed, 24 Sep 2025 11:28:53 -0400 (EDT)
Received: from pps.filterd (m0316037.ppops.net [127.0.0.1])
	by mx0a-007b0c01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58OAtUG7026726;
	Wed, 24 Sep 2025 10:26:52 -0500
Received: from ch5pr02cu005.outbound.protection.outlook.com (mail-northcentralusazon11012058.outbound.protection.outlook.com [40.107.200.58])
	by mx0a-007b0c01.pphosted.com (PPS) with ESMTPS id 49bd3ux2c9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 24 Sep 2025 10:26:52 -0500 (CDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NET1oNQaVkvolB+vAEuCPaijmz8lYR1xUeWdsoY9a3yu/T6vE2CXVzehqjkRURDFKHh1HF1czM0uJqDuJ0x9Y8p0T9kBELe5Im9MfLKj95ekOeUifwrZh+P51qNJoPeLXdXSJVjaf0qsOdsOCyoMcimDsO2WuE/jcLKCAZeUsSeWIqSkRQPP4rcdDSApI0kpo4iJ/LzM6X4UhFWNb1QA/wweI2cmL1ZLLf10Tuv0pM4RPSqwRRQYTa/5oDaUAqQaagFVXCrlMb3mcsLOADLkCfS7ULhJrRcyq5R6kwQfLYuUAH7i6uglFTCfF3wh7cncl477UBNjlFT+1ZsAMnzX2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Jxx41HrVPF9kBcRUF6nzI9V+oawTPacYnQ9wV0v6ue0=;
 b=vmrWfI9fqVppPtwrUZiBPmCKeJtkthyV5F2GhKqE8ot9JgkzIVhL2Mx3OvErsgbPTdFa0dPz8jzwfBK6CWW2TC96VQKrrAWvx+6FP2GFRB9UrLUnt2m0eFGAM/QvICOGF1x2Gj373mLd/OuEqnCI73UL+SevpVuYdaOB/RH5KYU715/WVFEBAcHpSY46jFxWrX1z8Red+edvM9GCC1rze7i0FCzY1wxcPcx5xCxDXGAIuaxxXvcMvyuUZTknM+EUBAiyGePS6a3IT1yb1LAP3FoQnmpsLGuiQu45E+GoD7lK9w3jwZy379IcKFanDeBGWxWMKkcJi+t/yxkILgEmdA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none
 header.from=math.wisc.edu; dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=math.wisc.edu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Jxx41HrVPF9kBcRUF6nzI9V+oawTPacYnQ9wV0v6ue0=;
 b=GWbjIX2/lOD8Zt6Tlxb0YXSUJPc2L4T+dIpwhum4NdCJMWHcfzIGR9wcUeYE91EixqHT+wIzY/ZFrebkQnEOc2Iz4ohlRZ5ePcbISLXboSHmc5mCuH6hSQ3KUxRznn5HbUWzzd8AGk/8ObfBR0p/rQnu5/PPpGtt2gCQnO6kGxm41/3HVwUKa9NtA9tZwCDS6fMgALiLw7guopGNP2e/KMCoedb2Ny8qUpl6kxq3BI8OnuzoKrh0hUPAdNkKlwEph70R1RTYibQ4dczD1Gy2s3++TTUNB5xykmkMLCP0FPVkPy6O7m+UEReL6rbHCncJXN3UmtXstpz6Ly2iouJ1bg==
Received: from DS0PR06MB9877.namprd06.prod.outlook.com (2603:10b6:8:1d5::14)
 by PH7PR06MB9044.namprd06.prod.outlook.com (2603:10b6:510:15d::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9137.19; Wed, 24 Sep
 2025 15:26:50 +0000
Received: from DS0PR06MB9877.namprd06.prod.outlook.com
 ([fe80::a347:6162:9bfd:9b91]) by DS0PR06MB9877.namprd06.prod.outlook.com
 ([fe80::a347:6162:9bfd:9b91%4]) with mapi id 15.20.9137.016; Wed, 24 Sep 2025
 15:26:50 +0000
Message-ID: <d8d6dfa8-db72-43e9-80b6-9a0053e31b2c@math.wisc.edu>
Date: Wed, 24 Sep 2025 10:26:48 -0500
User-Agent: Mozilla Thunderbird
Subject: Re: Question about blind CLI use (was Re: "your browser is not
 supported anymore" ...)
To: Karen Lewellen <klewellen@shellworld.net>
Cc: Jookia <contact@jookia.org>, Gregory Nowak <greg@gregn.net>,
        Chime Hart <chime@hubert-humphrey.com>,
        Cleverson Casarin Uliana <clul+speakup@posteo.com.br>,
        speakup@linux-speakup.org
References: <202509111603.58BG3W3p018143@nfbcal.org>
 <7a04c6dd-c761-4445-b53a-3c4525cf2a87@crosslink.net>
 <579c5d9b-5ba1-4029-982a-01295fea3a61@posteo.com.br>
 <Pine.LNX.4.64.2509112223130.3830807@users.shellworld.net>
 <6d3f190e-733a-e5d5-a8f5-cc6eb2c05e65@hubert-humphrey.com>
 <Pine.LNX.4.64.2509120106350.3832376@users.shellworld.net>
 <aMOwSwrEWTBtFn60@titan> <aMTOpzhGX72PC_2S@gregn.net>
 <aMVgIfSRDN3Uewj3@titan> <242896ae-8567-4e97-a3e1-de09a8efecaa@math.wisc.edu>
 <aNIv2l1tKiR26V-R@titan> <fcf89a57-b683-4590-8d36-3a1a7b613bd1@math.wisc.edu>
 <Pine.LNX.4.64.2509231554180.4080399@users.shellworld.net>
Content-Language: en-US
From: "John G. Heim" <jheim@math.wisc.edu>
In-Reply-To: <Pine.LNX.4.64.2509231554180.4080399@users.shellworld.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: CH0PR13CA0019.namprd13.prod.outlook.com
 (2603:10b6:610:b1::24) To DS0PR06MB9877.namprd06.prod.outlook.com
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
X-MS-TrafficTypeDiagnostic: DS0PR06MB9877:EE_|PH7PR06MB9044:EE_
X-MS-Office365-Filtering-Correlation-Id: 26fc086f-ea4c-4017-3d6c-08ddfb7ec813
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|41320700013|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?SFQzU1Rpd25lU2p3N0ZnL0tGT21pU0FlVGI4Und1VWFuMUNMWHNIWVlZLzYy?=
 =?utf-8?B?Mms4SCtXM2lFa2tteloxb2RZMzM4QWJtb2hVcGROOFhwcHNNUW5EOEJ4RDdP?=
 =?utf-8?B?WHhmUmVNS05hdVJ2WkJwV2prNHdsZ1NpT1B6VFpISjd2RUFtQjlQQXNiUFpz?=
 =?utf-8?B?dlI4RjRBL01VUlN1MXdJOVpReDVTaDlwUlowMlFqWi9CZytyV1JsZkR0NXE0?=
 =?utf-8?B?a2VNdXYzTUh6VS9HdlBxNDZsdDllTnc2WWM0bFFjSE5vbzhXbUNiWnVscWkv?=
 =?utf-8?B?NXFvclJqc040TEpsZXBFMWtCaGhzZnVCbzkzeGY0RnM3RzYvZG1ZTkdFQlJa?=
 =?utf-8?B?ZWR6RVlTRXNuMC9JNEw4NElFYW5WY3VZM0JPTkFzUlczWnRkMzR6emtCVFJH?=
 =?utf-8?B?enNDbm9HWGZ3UVpwOE9JZWRBN2dwQUg0VWdpTGYrTUx6cnpJK0JCV056cWd5?=
 =?utf-8?B?ZjU1SDdtM0M5THFEMHh4Mi9ucm50c0hWbklFenpwYzRha2oxZzF3Q3EvMWtV?=
 =?utf-8?B?OURObVVsTi83RldNK1lNZUVEU0VycCs1MFFBQjYxVHR6SmtZU2xiNTRVM3FB?=
 =?utf-8?B?TVVBN2hveUhmZ1V1emhGV3JjTzRuRmljeVRya2JQTzBsd3RrRWZ0YU1kQmlM?=
 =?utf-8?B?WjZuQ2x0OWNQN3oxNWNWa2wwVTV5UCtDbnVoNVgvYTJSaU1qRWszQUIvTmpl?=
 =?utf-8?B?cE9hTGMyQ3ZVOU9TTFFYNVRidVlrN244S1A0T0Q5SWdaVk9lVUhubDZuWktp?=
 =?utf-8?B?MHZ4NzBXUkpGYlBDZG10MTFwUldSVkpGelpLZ2xObnF2OVJNbDFoNXJ3eVg3?=
 =?utf-8?B?WkE4TW5YRFlVTTFxcExBU3FzekxZZk1aQWYxV1V5NjNQdm9WTFAwb0kzbGM2?=
 =?utf-8?B?U24xcmUyZzRKUU1WT0RsVkorWktvcWpqTDBpZU9SdWU4RjIyVkx0VXdmUzE5?=
 =?utf-8?B?bE4rTmIrZWFwbGxvbEhNMi9qUGkxWkkzam1Wa1hocDMya3ZZMVY4b0RZVWEy?=
 =?utf-8?B?U1cyRHNFbzJBRjZEOXpCalcxdGFQTlpKdlU5eDdZc1M2Uzc4K1NqdDJrckJi?=
 =?utf-8?B?dXY5NlRSWWlnRnRSczNHazJ3Sm40ZmtHUWlZVStzcUxpaVAvbUxmZk5pTkZq?=
 =?utf-8?B?WTJEOVRWWWI3dHp0RS9BKzN2WUhrR3RVZXZvSGVSRHVyMXl3eGhUeTJqZ2l4?=
 =?utf-8?B?dFl6Q3JjVjlGUHdsbHNlMklJQ3RwT3d1YWdYSHNlV1pIbTRCdUZtZHV2YW9v?=
 =?utf-8?B?K1FPUm12dHV6aFRYTm14eHJqLzE5MVdGdXZUMnFmaHIxSlNvYWFYQXdzaDBD?=
 =?utf-8?B?VlIwYnduNXBScVF4VFZhS1hLTGxaWG1aUnF2RkorM2F5OTA4M2FwWG1tOHdT?=
 =?utf-8?B?UFZIbGFHNTI0K1Y2OWZPS25sV2VpNitoN3VValVrbVlMYUR4akZNa3JaVzZY?=
 =?utf-8?B?QThyWEtsc2NtY2ZsMUJqSDNBSnUrSXBJd2xSdGxQMUVndmkvcmdLZVFraXJF?=
 =?utf-8?B?b2Vyd2VLbnJXaGRMcFJYZmcxNElnOHlIU3hQaFc5T09lR0oyNW9IZXBxZHJx?=
 =?utf-8?B?d2ZGdHhvTHhvMUhYZ0d1QkhzUm1qUWxoTVp6d1BrZkpNODhiR2l0TUx3TVdi?=
 =?utf-8?B?K1hzWTJBVmRHazl3YzY4a0FvVVZWQy9iRzViTFUyL1g2MnpFWDVMNE1LL2lC?=
 =?utf-8?B?Tkk0TXZ2bk56RXhacmQ2NnpITlJNaWtDTENFVDBUTmRpcEdTWVRma3NHQ2NU?=
 =?utf-8?B?RkViQnN4aFA5Rlhtb3hSZFZYRXNMclJkUGpOVS95MGM3U1F2S3BkV0lHTG9Z?=
 =?utf-8?Q?OPVogZI0HVvlD9MflY/s5wZJmtX5kWqmQACgI=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS0PR06MB9877.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(41320700013)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?YmJ5NHZkZGtKdHNrNUMvdVlnbjBXTUdqd2x6V0tUSXRlWWpjUmlVOC9sYXpE?=
 =?utf-8?B?bmlZZGRkVmxPeU1uS3Y5bkN3WCt1ckYyRU9tOFhSZTBqTHBHanE3VzZ5dUEr?=
 =?utf-8?B?UzM3K0pnUzJSRGIwSVZKSEU5YmhDaml3MGRNVnJXMDhhTlNoOXVWZE10RG1x?=
 =?utf-8?B?S1N0V1kwVVVGTm1YS1ZEeWZEMm1rZzlyMzJWVEVzN05QNlNJWlpMVkJleEpR?=
 =?utf-8?B?NHd2S2swdDhpRDc0b3VuN0t2QmpudDRFejJWdU1HY1UvNVVteTNNR1RtY1F6?=
 =?utf-8?B?OWZETy9CWDZNZXdIZzdQSWZuRkRPRll1YnlManlKRFRBYzkwVkRKd1Y0RWd3?=
 =?utf-8?B?WFpscDdvMTByYUVlS2lwNFNBNWgxVUVDcU5kdXc3ckFEUnNFMHVaK1ZPLyt6?=
 =?utf-8?B?aURRalBYTnlxcWxoZGI5dGJjMTJNNngrZmdaL2NmalpmaGJxRGpQZWwxbUhE?=
 =?utf-8?B?MU52NExiOTdXYlMrYk9yMFRRdEkvMm9HaXpRcUhUVkQyUWFXdm1mU2ZyWThI?=
 =?utf-8?B?MzJsN0VLNWxKNDV0TUJ2YjBrekx0dVd6RGhTdlk3S0NXOEZyeUJnV05hSVU3?=
 =?utf-8?B?aWZMck9kSjFEdmp5c1NuVzlrL0RiMldNTUI4blpnMTVUc2tXenQ0N0dQT3Vu?=
 =?utf-8?B?bjFzU1liQWFoMlM3akZJN0k2UDZEZURqZ0xaYldoQVI1cDhHZ1E3R2pFNTk1?=
 =?utf-8?B?ZUV0U2RnckhFcldyOHJocU1XOEVhNnMzTUVSNUMySzhld1dDOStuYnRrMitz?=
 =?utf-8?B?NnZwNXA1R2wyWVpZSjRhUi9KeG5ESVVyZThaakt5ZXZ5UGpmZGExNlU2RG5K?=
 =?utf-8?B?Tzd2eWE4N1daMnhsdEJCZElEVHdVZE1xZ2hiZ1dBTFhjRXV1dDB0ZHFONFp0?=
 =?utf-8?B?NGtzTWVqZm5BWHhRQU9RMDFVd1dFZ01XZGZIeVFUbll0dXJMZVBtK1hTN2Fr?=
 =?utf-8?B?WWsxcm01ZDFEa1doTzByRjJUcDMxNzNibFppNFRoczB4eXBrYVNXNlg1RE1j?=
 =?utf-8?B?SlJpNnFYQmE4QlhCTk9DMkxsYmxEOHhBUGxrbW5GbkpsWWdPNTBnejBwVFBO?=
 =?utf-8?B?SUdsQyt1dEk5bmpQZTVTTEYxcUdwaXpBSXllWjJtc3hKUm4rUlloTHBRZnpI?=
 =?utf-8?B?aUl5c2Y3bmhxUCtQbnBZVFlMOTE3cXI1WXNtdDBJcFFSTkdvN051Q2paRnhB?=
 =?utf-8?B?MnVmSFRmblRuZUpxUFpzcGNLcDJSVzZ0Qk5QQ3lLRHhiMGZ0Z01XbFhOcXln?=
 =?utf-8?B?NXJ3VkdkcFBicnEzYlVnWHd2Sjh1QkQwZnAyWHRvajNXWFVDUm45YVdEVCtT?=
 =?utf-8?B?S3pxUzhqVnAxekEwNlRTaTFpWnI2bzJraG1ZczlGQ21qNDBVTEtYa043YW1I?=
 =?utf-8?B?QjVaenlqd0RDcmMwdmQwbEtQS1VESC9qZm5ReGhxREhLYnd4ZE1rTUxpaGt5?=
 =?utf-8?B?dkVUbXY1YVAwdlR5VTRZUXhIUkhWbVJQcm80VlNxOSswc0hKcW1HWVlXTFJy?=
 =?utf-8?B?UVhMcTltZ3RjWWVDUTFSRDFpNFVVRnFpbi9tTFEweXMrRjVQSTdiZWZRODlq?=
 =?utf-8?B?WVVxK3NROUh0NXE4VWFtWHJncWRXakpvQTJUTkpndERiZkE0UTZ0N1lDWTNZ?=
 =?utf-8?B?M1l1RjNEdUVNY1NGSndJYmxHTjRxYnhoamtaWFVpMmRvWnJIcmFsV0dvaDRx?=
 =?utf-8?B?TUJnZDB2MVVoUG9OdzdmdnIxalhubEpVL3cvdkxaMHpCMFJURFVURDR5ZlRn?=
 =?utf-8?B?OU1rdllUbXNWZ0N0enhESzJUUDhHdkxWN1JpcnVRY25mRDd4dmdVZnFmaUph?=
 =?utf-8?B?T2JWNDdTa2pwQzJrTlN4WmdLUVVwb1k3R2N2ZWJ0a055Ullac2Z3a3YzN0FF?=
 =?utf-8?B?RkR0ZGpjdGFLVkgxeisxZVdRRGtVT3V4NHVPeU9udUVIaUpubjNhdGxlMFo1?=
 =?utf-8?B?aDR5SFo5TzQybXJVY2FyeXJnaHRKTjcxN3lSdjVLVm5xQmw2b1I5VzlRL1lS?=
 =?utf-8?B?UHFTNlVZcEsvT21jKzZORWpZKy90VE9IK05Nc1Fodyt5eWFmSVdITmtMSitw?=
 =?utf-8?B?V0ZuOTdxZFBUMHQxWXZBZUx5Z21xWVFnU2NUQ01BOVp0SHg3eWwwdEFJdlVm?=
 =?utf-8?Q?fAyeqFnh4YSn7HHldY1ksk+ke?=
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: 26fc086f-ea4c-4017-3d6c-08ddfb7ec813
X-MS-Exchange-CrossTenant-AuthSource: DS0PR06MB9877.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Sep 2025 15:26:50.0324
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: eB7i8JvmzTzwsatzfX+hSzX7SLxIxqchfeJp1efBMq/YLLeSm9FbLPvSvfOkst1z
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR06MB9044
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIyMDE5NCBTYWx0ZWRfXys9JStAKCeCd
 Bt7w4KchnivFvHY9EfYB2o6c4UvTWH88+NUQTjCM16I41XzJTaeERDOD6e6oxvIIdfmtrh1Bbso
 pKbBvOheAPJ3nb8OdSepUA54YmxldfRhSW+RDByhZdHHpseFuGj4F5x90g2lXWH4AfJoid29nUB
 2Xu8B/YsgeNDor7G8/mjfoHAry5Ct4DRYYKB2czXBbc2oIPq6D6ohdRi+3jI+VZSEk+hhsm/vB/
 pInrI6545MTVX/VZ3/OdIJu/8UC6Q8MAmIdud0Ik0ltP524BMR6F4QTMFwViLtMU3asDwZcT/4a
 tOmzf6lLkOMjKPRE7iX/PRMTK8q4RybIGnytLlV8UrYqWe0CxbkLRtGJxpYPv0XiLy4W9pvuoed
 NCxVFifd
X-Authority-Analysis: v=2.4 cv=ZsntK87G c=1 sm=1 tr=0 ts=68d40dbc cx=c_pps
 a=UC1wTn8whqDYkpYF2DSMwg==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19
 a=R3fr6vWxGIgF0CYV:21 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10
 a=lre9DRYkaIEA:10 a=hEK2XftRAAAA:8 a=LNhb960rAAAA:8 a=q5txbtUnAAAA:8
 a=wmAwjkAB2_cX83g6sWgA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=pvvZm7_9ER1OwvpV3Ftp:22 a=duXMUGqUtLRgrHROm9qa:22 a=RsootnAUgZ_jVqzlXDew:22
X-Proofpoint-GUID: 5hDIq1qHxRXgzpKTtAqL4XjpeeSWAET0
X-Proofpoint-ORIG-GUID: 5hDIq1qHxRXgzpKTtAqL4XjpeeSWAET0
X-Wisc_ValidFrom: true
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_04,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 impostorscore=0 priorityscore=1501 suspectscore=0 malwarescore=0
 adultscore=0 clxscore=1015 spamscore=0 bulkscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509220194
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Well, you can still ride a horse from New York to Los Angeles. Most 
people would fly.




On 9/23/25 3:02 PM, Karen Lewellen wrote:
> Its truly interesting how different life experiences can be for 
> people, even if  sharing the same technical diagnosis.
> I currently have outspoken on one of the mac computers in my 
> production studio.
> Its tied to a specific edition of pro tools, and the for me, needful 
> control  surface I use professionally.
> I produce professional audio projects with this setup.  Speaking 
> personally, I could not work any other way.
> Actually, I did not even get this copy of outspoken until well after 
> 2005 too.
> Again speaking personally the more respect for keeping broad solutions 
> on the  table, no matter the motivations making them needful the better.
> Karen
>
>
> On Tue, 23 Sep 2025, John G. Heim wrote:
>
>> BTW, the correct spelling for that early screen reader for Linux is 
>> Gnopernicus. Googling shows me that Gnopernicus was the default 
>> screen reader for Gnome from 2001 to 2006 when it was replaced by Orca.
>>
>> The screen reader for Apple I was trying to think of was OutSpoken by 
>> Berkley Systems. Wikipedia says development of OutSpoken was dropped 
>> after Apple released VoiceOver in 2005. While that is probably 
>> technically true, as a practical matter, OutSpoken was no longer a 
>> practical option for some time before VoiceOver came out. The 
>> libraries at the University Of Wisconsin stopped buying Macs and got 
>> rid of the ones they had because there was no screen reader.
>>
>> Speakup was released in 1999. So the era I'm talking about is from 
>> 1999 through 2005. You could use Linux at the command line or in the 
>> GUI for free. Windows had a good screen reader but it cost $1000. 
>> There was no realistic alternative for the Mac.
>>
>> It seems to me that Linux has always been a step ahead when it comes 
>> to accessibility. Well, at least since 1999. Before 1999, I used Jaws 
>> For Windows and administered my Linux machines remotely with tools 
>> like putty.
>>
>>
>>
>> On 9/23/25 12:27 AM, Jookia wrote:
>>>  Interesting, thanks for sharing. I never knew about Gnopernicus.
>>>
>>>  On Sat, Sep 13, 2025 at 10:35:51AM -0500, John G. Heim wrote:
>>> >  One of the biggest impediments for a blind person using Windows 
>>> is the >  cost.
>>> >  It's less true today than it used to be. A Jaws license was over 
>>> $1000 >  at
>>> >  one time.
>>> > >  For many years, it wasn't even possible for a blind person to 
>>> install
>>> >  Windows. Well, I used to do  it via Linux, no kidding. I booted 
>>> into >  Linux
>>> >  and ran the Windows installer in an emulator with an answer file. 
>>> That
>>> >  worked really well until it didn't. At some point, Microsoft 
>>> changed the
>>> >  installer so it had to be run in their pre boot environment 
>>> (whatever).
>>> > >  Even after the install, I had to install a dumbed down version 
>>> of Jaws >  that
>>> >  worked for only 40 minutes.
>>> > >  Also, there was a period when there was no screen reader for Ma 
>>> Cos. >  There
>>> >  was some 3rd party screen reader for the Mac. The developer 
>>> dropped >  support
>>> >  for it and some time later, Apple released VoiceOver. I was 
>>> lucky, at >  the
>>> >  time my job did not require me to use a Mac. But the libraries at 
>>> the
>>> >  university where I worked had to get rid of their Macs because it 
>>> is >  against
>>> >  the law to have computers in a student lab that are not 
>>> accessible to >  the
>>> >  blind. BTW, that's why Apple so suddenly started caring about a 
>>> screen
>>> >  reader.
>>> > >  IIRC, at the time of the above events, I was using both Speakup 
>>> and a >  GUI
>>> >  screen reader called Nupernicus. I remember walking out of a 
>>> meeting >  with a
>>> >  librarian to talk about screen reader options for his lab and 
>>> thinking >  how
>>> >  lucky I was to be a Linux user. I believe that particular library 
>>> >  replaced
>>> >  most of their Macs with Windows machines and paid like $1000  
>>> each to
>>> >  Freedom Scientific for Jaws licenses. They put in one Linux 
>>> machine just >  to
>>> >  see how it would go.
>>> > >  The computers in the student labs in the Math department where 
>>> I worked >  were
>>> >  alwys Linux.
>>> > > > > >  On 9/13/25 7:14 AM, Jookia wrote:
>>> > >  Hi Greg,
>>> > > > >  Yeah this is unfortunately true. I'm glad FOSS is still 
>>> appreciated by > >  people.
>>> > > > >  Jookia.
>>> > > > >  On Fri, Sep 12, 2025 at 06:53:43PM -0700, Gregory Nowak wrote:
>>> > > >  On Fri, Sep 12, 2025 at 03:31:55PM +1000, Jookia wrote:
>>> > > > >  I know this is the speakup list and I'm talking to an 
>>> extremely > > > >  niche
>>> > > > >  community here, but I'm genuinely interested to know: Why 
>>> do you > > > >  use
>>> > > > >  computers this way instead of like Windows or macOS? They 
>>> can do > > > >  much
>>> > > > >  more useful tasks.
>>> > > >  They're both proprietary operating systems. Windows essentially
>>> > > >  hijacks the PC these days, and dictates to the user how they 
>>> should
>>> > > >  use it (E.G. requiring the user to register an account with the
>>> > > >  developer to set it up, dictating when and what updates the user
>>> > > >  wishes to install, and so on). MacOS is tied to hardware from 
>>> one > > >  company, and only works on
>>> > > >  that company's hardware by design.
>>> > > > > > >  Greg
>>> > > > > > > > > >  -- > > >  web site: > > > 
>>> https://urldefense.com/v3/__http://www.gregn.net__;!!Mak6IKo!PJ5X0c86hX4IZtoBfv1kpLI0rcSQhBtXAThLGAI94dOL6KYPF7-9QJySUhuUeXnUO8FQFZp1QNEHanR6Yeo$
>>> > > >  gpg public key: > > > 
>>> https://urldefense.com/v3/__http://www.gregn.net/pubkey.asc__;!!Mak6IKo!PJ5X0c86hX4IZtoBfv1kpLI0rcSQhBtXAThLGAI94dOL6KYPF7-9QJySUhuUeXnUO8FQFZp1QNEHOOMsI_E$
>>> > > > > > >  --
>>> > > >  Free domains: > > > 
>>> https://urldefense.com/v3/__http://www.eu.org/__;!!Mak6IKo!PJ5X0c86hX4IZtoBfv1kpLI0rcSQhBtXAThLGAI94dOL6KYPF7-9QJySUhuUeXnUO8FQFZp1QNEHcie2CdA$ 
>>> > > >  or mail dns-manager@EU.org
>>> > > > 
>>
>>
>>

