Return-Path: <speakup+bounces-1405-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 7C14EB96EDC
	for <lists+speakup@lfdr.de>; Tue, 23 Sep 2025 19:06:38 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=math.wisc.edu header.i=@math.wisc.edu header.a=rsa-sha256 header.s=selector1 header.b=ZWBI8ozl;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id D49BE3815E5; Tue, 23 Sep 2025 13:06:35 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id AF6863815A3
	for <lists+speakup@lfdr.de>; Tue, 23 Sep 2025 13:06:35 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 38D433815B1; Tue, 23 Sep 2025 13:06:28 -0400 (EDT)
Received: from mx0a-007b0c01.pphosted.com (mx0a-007b0c01.pphosted.com [205.220.165.71])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 800D13815A5
	for <speakup@linux-speakup.org>; Tue, 23 Sep 2025 13:06:27 -0400 (EDT)
Received: from pps.filterd (m0316036.ppops.net [127.0.0.1])
	by mx0a-007b0c01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58N9gXx5032282;
	Tue, 23 Sep 2025 12:06:13 -0500
Received: from bn1pr04cu002.outbound.protection.outlook.com (mail-eastus2azon11010058.outbound.protection.outlook.com [52.101.56.58])
	by mx0a-007b0c01.pphosted.com (PPS) with ESMTPS id 49adupgd9c-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 23 Sep 2025 12:06:12 -0500 (CDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CAK3uOAnKFfQChxn1WgQcQpXzTSL8ZG+EBMVz4b+RZpi+05uYXGU4pHS7n3GFmagXkbwCiiFe0HdfHzC1OnCG/+dBYnxyzNjrgb3GK6f4Pe2TI6urwnZkUQlHPUolYcTHD3IYKz0NzK/HBkQyF/aNqmxW85XZlM3h4dPRHlLMnO/yZTIOERle5B+rjlSt+vQ2mZSFpgAIclZOWfE73MeicJxjhU6auHc47TlyIvEYoh5YjDrbfHlyIgkpVSaPzel9sSQT2ncDfTAp3wjI+fTnlQ3jyqEx9uOu+bEuyMX9rPzApnkZfH//4MvdCLgMj5EYpZR8YFaTbw+Oo5o3FLP8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yHUBM63JcpczXzOCHEkt/574dvLF/y8RhJSPDnlTjSU=;
 b=tUc4+TPFAQ11bkcGAA7UfVPAxjopR/6HNSWOAEAxT1VKFb0VK0lU8ZK1EoGnrFJN7WQrt3Fc8ki/2Xb76S7VVr/vSoYxeoeSgzIYAmue6xU9uzqAqCRFZ4vHNW+Q1k4lX28IJjOXg2/dZhk689uXTtKskBuROLe0FOcE8t0sQ0EEdhEhHEBMv5luAz6RkC9+tQT4sQi/bSx0VSgZOwUeBWeyl+YKnFDD9mc/AyYdHJBQjymzas1SzSUHVmCjX8uxzPEpg3KGztp1O9n/TM/YxJ2O0XEk/ACsE7rCZdNV+9dubg8u/EMgpNgLG3vxT4Za9KBSo3GksG6jy2Ptzz4akA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none
 header.from=math.wisc.edu; dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=math.wisc.edu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yHUBM63JcpczXzOCHEkt/574dvLF/y8RhJSPDnlTjSU=;
 b=ZWBI8ozl8GY6+WG06tqrK3XKe834QdFGqbGYvun6bieuL5qxwe9TSe18Cb+mq6X1r2o2FkIJUr9BbT2wd58YdCzAVjEbGn5igqR0O+3ExVhcJfo+2XDXTylsk1IqYfy48zlDa8x+b5PM/IP8BJUFx1acFvrdfMtBKO9dmcvuvMHgHlnoB1aT+RI/Q8qHO8zGSrgeQ0ZvOSIhRzKieE+DHSTBmvgZCHHhbJ0nj/TrBhA5/HtBDIR9AV/kMHlB4g609H7ols/gV8LP5vo/fL0dETg6FiW3GI+IOejApVBYt5t1X+pcrM1uAW0zyS+m3ni+kUjDOPT21Oeywgu+9lIm+A==
Received: from DS0PR06MB9877.namprd06.prod.outlook.com (2603:10b6:8:1d5::14)
 by PH7PR06MB9098.namprd06.prod.outlook.com (2603:10b6:510:245::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9137.20; Tue, 23 Sep
 2025 17:06:10 +0000
Received: from DS0PR06MB9877.namprd06.prod.outlook.com
 ([fe80::a347:6162:9bfd:9b91]) by DS0PR06MB9877.namprd06.prod.outlook.com
 ([fe80::a347:6162:9bfd:9b91%4]) with mapi id 15.20.9137.016; Tue, 23 Sep 2025
 17:04:40 +0000
Message-ID: <fcf89a57-b683-4590-8d36-3a1a7b613bd1@math.wisc.edu>
Date: Tue, 23 Sep 2025 12:04:38 -0500
User-Agent: Mozilla Thunderbird
Subject: Re: Question about blind CLI use (was Re: "your browser is not
 supported anymore" ...)
To: Jookia <contact@jookia.org>
Cc: Gregory Nowak <greg@gregn.net>, Karen Lewellen
 <klewellen@shellworld.net>,
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
 <aNIv2l1tKiR26V-R@titan>
Content-Language: en-US
From: "John G. Heim" <jheim@math.wisc.edu>
In-Reply-To: <aNIv2l1tKiR26V-R@titan>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: CH0PR13CA0014.namprd13.prod.outlook.com
 (2603:10b6:610:b1::19) To DS0PR06MB9877.namprd06.prod.outlook.com
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
X-MS-TrafficTypeDiagnostic: DS0PR06MB9877:EE_|PH7PR06MB9098:EE_
X-MS-Office365-Filtering-Correlation-Id: afd7a4de-1e4e-4a02-8870-08ddfac34831
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|41320700013|366016;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?eDk4SFBrVVIrUWFrYmxrTnE2ZW9IaTQxYnNHQkZyalMyQ3dqVGpSSGtlZUdo?=
 =?utf-8?B?Wk1iemk1NWlPelZoRFNZNHVwalpIaFYwejNLWEZ2SlJiSFZEdjczS2FhQmhS?=
 =?utf-8?B?NjdoNlM1R3NPWG9tc2VmVGVZNXArZytLNGJsSm8wSENmemIwVmcyWHJ5RVBY?=
 =?utf-8?B?NTFhTzdNRk9sV0xyY0RWcDk5NHJYb3RzZytmc3N6Vjd6WWZNYm5lSDZDbnZj?=
 =?utf-8?B?QkNzRDdtLzJOMm1rblJSOXdRZ093MUtzVkRQQWVwRHJRbUlrZW9nUm4yT1M0?=
 =?utf-8?B?SVVicHhBS2MvVlFacWZyKzdTUFR3TVZaTHZvVTZ4aW5tZ05DRHhCdnRGOFE0?=
 =?utf-8?B?NVJFb3hmM0N1N3YxNDM1bnVGVWhyQklPcDhaVGs0ZnpXZ1JTemR4OERQclEx?=
 =?utf-8?B?cXBiQzJzL3NNWGxXR0Y1Mlc2bDdKemdTeS9VKzU0UUxlUFM3ZzFNYWIrUitz?=
 =?utf-8?B?MnZJSEszK2FOYUNmYXZDUkQ1b1c1T0xNMi9OVFJQYUkxZ1lsK3FZNjJuZ0R1?=
 =?utf-8?B?K0xSOGhUQTFmR2d6ZkFOSzhiYkhCM3dTYkI4aVo0WWhaY0JXMnZKZHlvbGR2?=
 =?utf-8?B?V3R2NXNKdjlwc3Y1ZDQySzgweEJ0RlZ2cFRwSytUZGJKZWd1U1ZCdWhUTTJn?=
 =?utf-8?B?UDZuYlFER3pwNlloaFY3TDE5VEhyVTNzK1gvb09jZXlJaHdaSzh1bUgzb2VU?=
 =?utf-8?B?b1BzUDhrek4vUzdLL2FsOFdLMStsS0xWVk13RDN1VWRGczFDN0Z5UnJ4Tm1i?=
 =?utf-8?B?eDlLQmgvZXBMT1pFZGNNckJNZU9LNzBKMW41UTBNcjE0aDE0RUd5MGVxNmw2?=
 =?utf-8?B?UVNmR0NmT3V3UW5FTVlRajNuYTY2QVdKaW5vL3IyQ1hPZWFTcC9DYkNDVWhy?=
 =?utf-8?B?citSTzhueXU2TVNPVFZUcU4xaktENUEySWxVRzNCMVUvYzNKWjM0ejNEWlVS?=
 =?utf-8?B?bzRxMENIT3pLOFJnQ01pcFVPczVhd0JSdWlHVHRIaXd5djZwcWhBM2ZIbWt5?=
 =?utf-8?B?OFRxRGdpZFNXaFZXZlJDTFNWR2puL1FZL2hQajU1NGJwTXVCcUhsNnpzclVY?=
 =?utf-8?B?L3NsL1dXWjhITmIyWTRMWlNQSTFXTWdjeStianF1N0l5SWZOUit5UmtKRGNJ?=
 =?utf-8?B?S3Y3UUV3RUFUOCtTVXhTbmRVM0FJWW1Za1c2WDBFTDk4emNNcU85aHNHRk5Z?=
 =?utf-8?B?bjRoaCtReHVPdFpDVlYwMXhjeUFidTRFdGxabVMyN2NuWSt5Qm9XaXdFUWUz?=
 =?utf-8?B?MllTZHMzOW1uWjRoTWVlZ3owdWRsRWV4ODVXaS9QbmRPWnRWaWVFaFNPbklW?=
 =?utf-8?B?Sy9hWW94Q2JOSVlUL2ptMll4T2huOE9jbm9OSTk0bE9hTWM0Z2NRbE5BV1Nz?=
 =?utf-8?B?dHJIY3RFUGkxdSs4R21uMHI0a0owWmszdnB0TVRTOFgzSGdTdXVWbkk0WWFp?=
 =?utf-8?B?QkxMZnJXTGJwbTdiZnpETGxWaDVGRDZYamNDUG5pd2JOeFM4NkNDalhNU1lw?=
 =?utf-8?B?d3FEd3hyc3VzRnFGVzN2TWpnTndQNnVuZVNsbHlIMUlzM3hPTVNDZmtvOUxG?=
 =?utf-8?B?WXBWTUJPbUpuZ0NOc3hPODNNZmN2SW9Od0ViVlJ1U0VDVzdoQ2JLTkV3ZTdF?=
 =?utf-8?B?OHBQd0Q3eE9MT0s1UnlpUnpwWktreXV3eEoySXNJT0FjQ2hVSFVFVEFCbm9G?=
 =?utf-8?B?azZUN1ArellpNTBYMFIwbThrNUh6Z1o4NGs3TTgzdUIrRVh0UUdwVXp6czNh?=
 =?utf-8?B?SnB4RVo4aTNweU93K3pBMkJJM0ZSVTZNbTB1UEY5UVVzQkFNQ1dzSE01T0wy?=
 =?utf-8?Q?csVTj87NKHhJZ2Hp5nqX64EsJjmjkxaTBYh7Y=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS0PR06MB9877.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(41320700013)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?OThNVWxvUmZxRldTRCtHWnNlNnVMNGtXRjNHVElyOUxrVDY4UnpHUmE5SkpX?=
 =?utf-8?B?dzZmNnJZWlNNRzBObWxrUldEY0RHUUkvUHR4c3phbUoyaklIdTJpWnE3SzBp?=
 =?utf-8?B?WE14SWg5MkZjRnJkTkExbys5RHFkRDZ1SXVRbG5TeW0zSCtvNFFJZGdrRGdk?=
 =?utf-8?B?TEV5bitHaUNPQVBSLzFCTmRIQmlueG9waXNUTnl6KzU0M3dTd1NCb3pyVEc5?=
 =?utf-8?B?bGp2MVRtMU1mcnB1VFRlUUM1d2JDUW1qWm5RaDRZVXFWS1JEb0NnQm12N1dT?=
 =?utf-8?B?S3pRMjl3OTJ0U0tkeHVrR1VvaXNIbzEzT0EwMmVNZEtqZzQyQ2FZeHkxWmxK?=
 =?utf-8?B?Ujc1UGR0ZXVaUi9UNE9WQmxuaVlDajNOZ3dVS1c2OUxHQkQ3YlZTZHprblNF?=
 =?utf-8?B?ME5oeEgwRVFQYm95U3FiVVJKUTBHZGRST0pYSlhCaFFUU3pOWUVrWm9PKzBU?=
 =?utf-8?B?a2pwQlZaZTQ3VzJWczVqVEhma1loVFNGMUpnWG1GN2ZGSVh4RGRoRzNLZlBy?=
 =?utf-8?B?dURIL2l3WEp0MkdmeDhrdzFyZmswa3BOTVlzOVhrWUx3MURLTlVYVEVJek10?=
 =?utf-8?B?MHR6dDhEbHpSaS9manZKYnBHYUFxS0dQY0JzUzNYc0FuNW16QkJrZG5kejRB?=
 =?utf-8?B?dVZuaHhkWGFWU0pURHhqZlVMbkx5VnlxOC9NSmtnMDdocHJ1aHlLUGpEdjBB?=
 =?utf-8?B?S2hBL1BMOFovYkVZaEkwdDJEV2R1RlhkZmJrN2lReklDeHg2ckJ4Y0FmRGxH?=
 =?utf-8?B?anhDRjBQMWY3dmtSZkFWcElKd1BiZ1c1MVJZejAxQjJySm1FZlRyRmwvZ2l0?=
 =?utf-8?B?R1VMc0xRYW5vblozMzQ1WURMUGJkTzlhaDlSUGJISGJyUm1IYk05TjUxaWNT?=
 =?utf-8?B?Yjg0dUxja05vMzZ0YVV5aWgzd1NtMkxLbTYrb3VBK1MraVMvdHhBYVB2K2x6?=
 =?utf-8?B?WGppNnBuK0ZCN2g0ZDNwT1l5VXUwYXdKTXU5TFd6amxvNThoNHNIMGlYS2Vw?=
 =?utf-8?B?V2Jud3VWUENxNVAvWHNnRWlaMm5BKzVYQlpsRXZiZSs5K2dpREVsOFlJYWlF?=
 =?utf-8?B?QWN4TXlCRjlQSzNiQVNRWXZIcHFoanNnQnBDS0pvUXR4eU1PZ1lVeGxyWTY0?=
 =?utf-8?B?Q0U1ejRuWTV3MGdGMVVqZHY3dFB3S2d3K0RpM0Z5dzlNQXFGVlJFZVlhVUhp?=
 =?utf-8?B?MHQ3UCtHcnErNSs0MmJybEw4eFVWUlc3TFhReDBYelgxOTZiYmtCenI1bnpv?=
 =?utf-8?B?QkxaalU3UXVTYWppclVmMHgzNE9TZ1h6ZmU3L25oTkNnL0tQOFN2K3VoVk5Z?=
 =?utf-8?B?bUNCM1MzNmZWaWdCZnhSdHRNcGVkcDJwVUprVnJ5dklVSlJzdmFLTnE3Ujkw?=
 =?utf-8?B?S2pORlpCdVhIcDluOHdBdmQ5VE01NVExajhHWFg0WlBFclNIWjhQaW5Vdkxj?=
 =?utf-8?B?K0drRk1iRU5VZDA3dnpUd2RicmttV0tRM0tQOUlNQVVDakpjYU85bFZRVE41?=
 =?utf-8?B?WkVpU0t0THp4aHFvaVd1czFodGlvOTF6MU4xU3VITkVMQmJNWDF3WC9jMXcr?=
 =?utf-8?B?OVRwTW1aaTN3RmNOSVdyODRtWTloNGN2RzZMbDFRMzVJbTdOZ2Q1c2U2aXQ2?=
 =?utf-8?B?SkU2Q24zaTVOd0hnRUtib2VOZHY5SVdYbDcvcG1WWUVUaDA5SlRVQTZRSTFq?=
 =?utf-8?B?RnFDd2ljTWRMYmZRcFY1YUZRRkU2ZDdIRUtlcjVRSitUWndNYis5WVhPdm1a?=
 =?utf-8?B?dG1FYXNUVEZKa3VkTE5oQk9FZEQvU0pETmtleEZ3bnllLzlBZXNSMWoydWhF?=
 =?utf-8?B?QjU0cTJIays4bGRnK0RjNUl5Qk1vTVdnVXV6QW9XQVltYUNhUExxT2pJU0Vo?=
 =?utf-8?B?VDg0VVh1S2Y2c1lkamNHQ0VwS2pyRThBRlpYSjFWMUFrVnNrVTlrUEpCZGYz?=
 =?utf-8?B?ZE0zUFRRTk1mSHRYYUt3ZW1DZHVlV1hhNlc5bGxxUWo2Z3YwTG12c0FrM0ZY?=
 =?utf-8?B?Smx3WkZJSTBHRm5qZkhsSllmUUxCamtRVkJLcWdpZUhFajlaUDVWb0VzQlFx?=
 =?utf-8?B?aW9nbnBiOExHMWxydXJDY2dlR2NqR0U0NnFIYnBhRXFEWEcvbE9JbWhnR3Vr?=
 =?utf-8?Q?hCJk7+N/3l5rCkCrmSYGFWoSR?=
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: afd7a4de-1e4e-4a02-8870-08ddfac34831
X-MS-Exchange-CrossTenant-AuthSource: DS0PR06MB9877.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Sep 2025 17:04:39.5561
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YwLpjEfrIWpO/MEsjw0Tc76L5GJ4u0Q2TCM5XIthSAybcwqJHSyhueYSBAzTtyNn
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR06MB9098
X-Proofpoint-GUID: Ph0vZT2ScCZPezKcLzqnTfnVeRdAMpU4
X-Authority-Analysis: v=2.4 cv=ZfAdNtVA c=1 sm=1 tr=0 ts=68d2d384 cx=c_pps
 a=0NiyxO+pn7gKe2yT6URb/w==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19
 a=R3fr6vWxGIgF0CYV:21 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10
 a=lre9DRYkaIEA:10 a=hEK2XftRAAAA:8 a=LNhb960rAAAA:8 a=q5txbtUnAAAA:8
 a=JgcdyyM_btBormUPhrwA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=pvvZm7_9ER1OwvpV3Ftp:22 a=duXMUGqUtLRgrHROm9qa:22 a=RsootnAUgZ_jVqzlXDew:22
X-Proofpoint-ORIG-GUID: Ph0vZT2ScCZPezKcLzqnTfnVeRdAMpU4
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIxMDA4NSBTYWx0ZWRfX/w/Dk2quf7pF
 y4O8GDWEmnK18KGG4fK+QNoxAJbZy8rCrWrfxrA/D0VtwLLe4+BQL4iPEcpgGQQ5N1WQXNEYFj/
 74CTuVki8+Tp7RN3mZ7i+UyuMnsPiBHLzny4S8Ne82Wn/L91XrJnUPSE7ULGOD9GjMIU+Sm0AOu
 +l318wfjdzRUUrIXcqDXJ4kL8udgNUGBF0Dvww7L08y7KUYC6vEwdJD+shqnoPh+zzHXwv663oM
 z1PDqsuRBlfZwUwBuU3yqP88VybCvqqbxl4ih5cC5pKswrahU3W/JxNtDXC4M+DtaLwuVZhXRc/
 40HGM+vZSB5ABh50FyEeYRhMl0jIXZ0RkUVxXKfx3dv6AoOGifS6e9X94EY2jxCXo/Ji38Z1SVe
 w3uzBVsl
X-Wisc_ValidFrom: true
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-23_04,2025-09-22_05,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 impostorscore=0 adultscore=0 spamscore=0
 malwarescore=0 priorityscore=1501 bulkscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509210085
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

BTW, the correct spelling for that early screen reader for Linux is 
Gnopernicus. Googling shows me that Gnopernicus was the default screen 
reader for Gnome from 2001 to 2006 when it was replaced by Orca.

The screen reader for Apple I was trying to think of was OutSpoken by 
Berkley Systems. Wikipedia says development of OutSpoken was dropped 
after Apple released VoiceOver in 2005. While that is probably 
technically true, as a practical matter, OutSpoken was no longer a 
practical option for some time before VoiceOver came out. The libraries 
at the University Of Wisconsin stopped buying Macs and got rid of the 
ones they had because there was no screen reader.

Speakup was released in 1999. So the era I'm talking about is from 1999 
through 2005. You could use Linux at the command line or in the GUI for 
free. Windows had a good screen reader but it cost $1000. There was no 
realistic alternative for the Mac.

It seems to me that Linux has always been a step ahead when it comes to 
accessibility. Well, at least since 1999. Before 1999, I used Jaws For 
Windows and administered my Linux machines remotely with tools like putty.



On 9/23/25 12:27 AM, Jookia wrote:
> Interesting, thanks for sharing. I never knew about Gnopernicus.
>
> On Sat, Sep 13, 2025 at 10:35:51AM -0500, John G. Heim wrote:
>> One of the biggest impediments for a blind person using Windows is the cost.
>> It's less true today than it used to be. A Jaws license was over $1000 at
>> one time.
>>
>> For many years, it wasn't even possible for a blind person to install
>> Windows. Well, I used to do  it via Linux, no kidding. I booted into Linux
>> and ran the Windows installer in an emulator with an answer file. That
>> worked really well until it didn't. At some point, Microsoft changed the
>> installer so it had to be run in their pre boot environment (whatever).
>>
>> Even after the install, I had to install a dumbed down version of Jaws that
>> worked for only 40 minutes.
>>
>> Also, there was a period when there was no screen reader for Ma Cos. There
>> was some 3rd party screen reader for the Mac. The developer dropped support
>> for it and some time later, Apple released VoiceOver. I was lucky, at the
>> time my job did not require me to use a Mac. But the libraries at the
>> university where I worked had to get rid of their Macs because it is against
>> the law to have computers in a student lab that are not accessible to the
>> blind. BTW, that's why Apple so suddenly started caring about a screen
>> reader.
>>
>> IIRC, at the time of the above events, I was using both Speakup and a GUI
>> screen reader called Nupernicus. I remember walking out of a meeting with a
>> librarian to talk about screen reader options for his lab and thinking how
>> lucky I was to be a Linux user. I believe that particular library replaced
>> most of their Macs with Windows machines and paid like $1000  each to
>> Freedom Scientific for Jaws licenses. They put in one Linux machine just to
>> see how it would go.
>>
>> The computers in the student labs in the Math department where I worked were
>> alwys Linux.
>>
>>
>>
>>
>> On 9/13/25 7:14 AM, Jookia wrote:
>>> Hi Greg,
>>>
>>> Yeah this is unfortunately true. I'm glad FOSS is still appreciated by people.
>>>
>>> Jookia.
>>>
>>> On Fri, Sep 12, 2025 at 06:53:43PM -0700, Gregory Nowak wrote:
>>>> On Fri, Sep 12, 2025 at 03:31:55PM +1000, Jookia wrote:
>>>>> I know this is the speakup list and I'm talking to an extremely niche
>>>>> community here, but I'm genuinely interested to know: Why do you use
>>>>> computers this way instead of like Windows or macOS? They can do much
>>>>> more useful tasks.
>>>> They're both proprietary operating systems. Windows essentially
>>>> hijacks the PC these days, and dictates to the user how they should
>>>> use it (E.G. requiring the user to register an account with the
>>>> developer to set it up, dictating when and what updates the user
>>>> wishes to install, and so on). MacOS is tied to hardware from one company, and only works on
>>>> that company's hardware by design.
>>>>
>>>> Greg
>>>>
>>>>
>>>> -- 
>>>> web site: https://urldefense.com/v3/__http://www.gregn.net__;!!Mak6IKo!PJ5X0c86hX4IZtoBfv1kpLI0rcSQhBtXAThLGAI94dOL6KYPF7-9QJySUhuUeXnUO8FQFZp1QNEHanR6Yeo$
>>>> gpg public key: https://urldefense.com/v3/__http://www.gregn.net/pubkey.asc__;!!Mak6IKo!PJ5X0c86hX4IZtoBfv1kpLI0rcSQhBtXAThLGAI94dOL6KYPF7-9QJySUhuUeXnUO8FQFZp1QNEHOOMsI_E$
>>>>
>>>> --
>>>> Free domains: https://urldefense.com/v3/__http://www.eu.org/__;!!Mak6IKo!PJ5X0c86hX4IZtoBfv1kpLI0rcSQhBtXAThLGAI94dOL6KYPF7-9QJySUhuUeXnUO8FQFZp1QNEHcie2CdA$  or mail dns-manager@EU.org
>>>>

