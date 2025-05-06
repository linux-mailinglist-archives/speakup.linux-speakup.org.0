Return-Path: <speakup+bounces-1275-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 8B980AACAE0
	for <lists+speakup@lfdr.de>; Tue,  6 May 2025 18:26:42 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=math.wisc.edu header.i=@math.wisc.edu header.a=rsa-sha256 header.s=selector1 header.b=DqffPVmv;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 14E4C38299F; Tue, 06 May 2025 12:26:41 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id E4243382189
	for <lists+speakup@lfdr.de>; Tue, 06 May 2025 12:26:40 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id CB159382527; Tue, 06 May 2025 12:26:33 -0400 (EDT)
Received: from mx0a-007b0c01.pphosted.com (mx0a-007b0c01.pphosted.com [205.220.165.71])
	by befuddled.reisers.ca (Postfix) with ESMTP id 72CD9382165
	for <speakup@linux-speakup.org>; Tue, 06 May 2025 12:26:33 -0400 (EDT)
Received: from pps.filterd (m0316036.ppops.net [127.0.0.1])
	by mx0a-007b0c01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5469pRSH018028;
	Tue, 6 May 2025 11:26:21 -0500
Received: from dm1pr04cu001.outbound.protection.outlook.com (mail-centralusazlp17010003.outbound.protection.outlook.com [40.93.13.3])
	by mx0a-007b0c01.pphosted.com (PPS) with ESMTPS id 46e4qswyqx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 06 May 2025 11:26:21 -0500 (CDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=x1eCszyR/5dH9MpXiSrleahAZ6X1pvaqpDChz9hSGqUaZdeCpmauz8+8kZNbpqL+a2Cl64HI/hbkLNLFkpiH4NCFBmJ3YLS9ZTb/Y0NJTHf3RLVx3BvA0RdEV0QBENtZrV8GDu0OCsXwmZwk/zQT85cEIRywcDK8fEtyvsoE4vNM2nduddXX/AexdXB8ixjaTTXQJSqK6qB2XI/zhfyaP/pBxKroWmonzAxQIiLk4RzlCwkRdZoJrVijRgUbmY31jzK7CyzjU3i36xxhkOm82+N6ZoCfXjxPM3gXeI1RrLSUTLgTq1vlxr9SOzBg7qjXIsKY3VhWfpfvqsPrXDadzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Jyp5MsNy/PqTQiOQX9/L/vUmukYAnWMvpTK88z4RdjE=;
 b=R/R1Dyfe2jOXlbwBxtqbP2RParwdNWsbMhWF1VNarBP/ruFZ98T96mQdpgT9TpDDPqkY2vtFJjL8AoNaOJ7sfbl/f+MnBI2fVUiFQDtRON5wUCW06mxPAqa7fVOREb7HgNn17C5RHHOwLn2eJlOHPW8uXxZBg7sVYRZWueRxj8KuQPNviqMphwCVL8KxIoy8tBZSS/uzMyXHUZbEgk/D913S+XOvXZ6LmMcc0ojv8asKqVFDAR1o4zWb8ztJKhRWB80CJr4F5/HdrCVeJiH3zcJgD2O5Ygm95o3jsk0ZcgPMe9rHlGUsBEvVW2NCLjjaZuNgb5ycJ3walXQLNQHITw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none
 header.from=math.wisc.edu; dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=math.wisc.edu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Jyp5MsNy/PqTQiOQX9/L/vUmukYAnWMvpTK88z4RdjE=;
 b=DqffPVmvLxgX2El3cWv4ZWzK10FZvyoe+KgQQW6U/DFFXhKT+M2/xufci1cGmlPvF1SEBS0Ss1n6oXbHg1023vwmhu9FiKeISDOXladr7YLQyHNptXyfIatBog2wNOaIHPoEasC6Db8PhVW6c/CD2TLHxyQ3vjUSVhYYt5VVZHFuVC5YkwrRGNy2MLc1chqzTZxuhJWsyABHv+rfKQawInVdMqWS+nkGCYScrw15+joKkZfIpf+xpei7IhU2fKfP/SPrVtWRA++u2Xb2P/mWVEFRkVscKlEJ48HxFwdkEPjUrVSKi6T7r9y4+2Hn4nqiJxyLd/6R7facwwk2YPT02A==
Received: from DS0PR06MB9877.namprd06.prod.outlook.com (2603:10b6:8:1d5::14)
 by LV8PR06MB10077.namprd06.prod.outlook.com (2603:10b6:408:248::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8678.27; Tue, 6 May
 2025 16:26:14 +0000
Received: from DS0PR06MB9877.namprd06.prod.outlook.com
 ([fe80::a347:6162:9bfd:9b91]) by DS0PR06MB9877.namprd06.prod.outlook.com
 ([fe80::a347:6162:9bfd:9b91%3]) with mapi id 15.20.8699.019; Tue, 6 May 2025
 16:26:14 +0000
Message-ID: <2cee115c-569e-4d91-8ce0-93a57c95c445@math.wisc.edu>
Date: Tue, 6 May 2025 11:26:13 -0500
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
Content-Language: en-US
From: "John G. Heim" <jheim@math.wisc.edu>
In-Reply-To: <008801dbbea3$075d66f0$01ffa8c0@nucwin10>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: CH5P223CA0021.NAMP223.PROD.OUTLOOK.COM
 (2603:10b6:610:1f3::22) To DS0PR06MB9877.namprd06.prod.outlook.com
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
X-MS-TrafficTypeDiagnostic: DS0PR06MB9877:EE_|LV8PR06MB10077:EE_
X-MS-Office365-Filtering-Correlation-Id: 99aaa122-74c5-4b07-f619-08dd8cbab864
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016|41320700013;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?RXpSZ0pDVzNlNnZiZVIwY3duZVBlZVhBUHNvOXFweG1Sd3V4aDd0cWdpenVh?=
 =?utf-8?B?c0hhTjQ4UU5mVzlhcjQ5bG5OSVB2Wml5NENUOXR5eS9ycjhPemIzRTBWQjZj?=
 =?utf-8?B?VXl2WlZVM053bDN6WkJhdlNsbk5WWFRsdEVTYWxOWnRqSlcxNVVNUlQraG51?=
 =?utf-8?B?ek02SW1FZE55RStKbWNzR2U4MnR3Z0h3SjY0MXNpcjdxZklzc0NaR2x1M0lC?=
 =?utf-8?B?TXQ3bkt5Q05PUFBrWEhIR0dJejFYT01sL3BIbjAvL1Q3dFdHOUt5STRTVUR6?=
 =?utf-8?B?WE9jdFpXY1FmcnQrYXdSeEsyaGxlQ3lsM0U3bytVMXQ4bDAwRWdKUG5iK0FX?=
 =?utf-8?B?MkRYOU5EaWs5S1ZadC9pNUI3eUtiOHpuajdJM2h1KzA1bTBaQmk3VFpNSzVs?=
 =?utf-8?B?UjZSMlpKaFhDUCswU3pLYWlaaVYrYjJGbzRyakJWV1JZblVDelF2Mnl4d1lI?=
 =?utf-8?B?NTFhL1hDWFdwZWQ0V2R5aG1UOVVwRWNIK0V4ZVltTVgyenU5ZlBUWGplWC9v?=
 =?utf-8?B?NUM5ZGNLaHFnRThUSlIyT2hEUndzdC93M1VMYkhjT3ZYT05VN2VjdjVDdFQw?=
 =?utf-8?B?T0prNnk1ckF3VTZzeUlPSGREZ0xwTEJQcWNqeDJkMFlTdlZlaUM2WFlTRlFV?=
 =?utf-8?B?ek5qbUEvVEY4c01kZ3dzcG8vcXYxY0lKdmw5bTBKOFVOZllTZVRPaVdjMHZJ?=
 =?utf-8?B?MEZBemFNUlE3T3F2U24yNzhzWk5YRGVZSzVIdXNFaU9HOVEyd3VuWXozMS9O?=
 =?utf-8?B?bUw5dy9QNElBYkRwOG1RNEZQd2FTa2pRWkovYm1Ka3Axdk9qQjFrd3NWQ2Fl?=
 =?utf-8?B?QlpUcGZmdHpiKzBldVljZm95WUNHbWtiOCswdzdqaEh1ZEFrd1dvTTBRZ2FW?=
 =?utf-8?B?M0pORXNZQitMVjlXWm9Sb0J6MjV4K2NPNEtmRXRGazE2bmZhbDVEVEs1V2VK?=
 =?utf-8?B?SkZwR1B6SXRZS1BGLzRMNTFOR2Vtc1gvRjJLczg5R1V4RlRoUmdZRTFKbm1u?=
 =?utf-8?B?R1ZHQnhNZTdLVkF5UU5LNzZwOTdDSmJEQ1BndUc5aVdlMG5FUC9Id1oySk55?=
 =?utf-8?B?WHlyQ3h5UDNYRnpNMEVKZXRzU1ExNlhqeFJaMzl4MGRZRGVOZElnTTdPNllD?=
 =?utf-8?B?V1Z3QnNwcmxHdmZDTU91aStyVDJOTFo4eXFiWmN1MGZ6Sk82Y1I2dURDMkI0?=
 =?utf-8?B?bjdGVW81Sk02eWJrT0MybzlWNGh6d3FUTU5oUmVCWnROODFta0hWR0dJbmlk?=
 =?utf-8?B?Q2hobnBieE9WYmFsRC9VZG1FcjJQQTVqaXZaYWZGTjkyUk5Lc1BQbW5paUJa?=
 =?utf-8?B?T3cwU0JGTmVxNEdERktPZjQwZXVSdU5ybFdQNXl4b040NzdGK1EvSTl3M2lS?=
 =?utf-8?B?YjFrY1VNZFBUSjZVVmdJTVV4ckl5S3NVTzhEQ3RyaHB4TGthdlZyZWFmV2xQ?=
 =?utf-8?B?Q1ZieXB4d3Jaa1I2WEYvRFVLUHFBSkY2N0RZQUI3ekt3Vm9icjJtRnUyOGhT?=
 =?utf-8?B?MjdWbWd0OFFZRkZvZ0ZpemhacDJNeTFKaUNNUHVVQkF0YjA1Qjd5ZVdhd21V?=
 =?utf-8?B?di8zWW9tUDdXZmJDVTVodEdDczVSMHk2T1FadzZyTHBGVjUrT1Ixb2Q4Smdh?=
 =?utf-8?B?OTk3R3ZDYWxNeDlERXRpdExXYmpqUzJZWWhncjFuejBNUjNqVG9HMkxGZjUy?=
 =?utf-8?B?bjFFeHJjWFVWaUNFK0wvaENmWnYxd3FpY2s3VXo1Y2YwMVJ4ZXFaTTN3c0pC?=
 =?utf-8?B?NU5GRVc0a2VpSHZuakNkRmxxSU9ZRTY4bjU1aWhYdUF2d2h0MlVMUGZ5ZEU2?=
 =?utf-8?B?RmFQcnp6amM1Si9HeGlIL25FT1ZUYWJScG9hc3RTa2JBdUhYY2JDVGZzM2FQ?=
 =?utf-8?B?WnJlRjNSVWdvcEhGYTdqVllmOGhDQ1JSWGQzM2lLaHZXS1RZR0FJSUJ0UWky?=
 =?utf-8?Q?nWd6y3hGO4Q=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS0PR06MB9877.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(41320700013);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?b1RqMTNVU1FzTG0xa0pidE9wUXEybmczcHJ3NGpkYVgrMVErOEx5bmdVYnNE?=
 =?utf-8?B?QkYvcGVvZUZRUnl2RG4vTis3MTlsT1VwRWVBRkx5aTJwWllkNlU1SlZjM3h0?=
 =?utf-8?B?QktpSEx1K3JiV3B0THdZL0lRYXhBcGhhdlM2c2xheVIxd1owdXVrMzFpNys3?=
 =?utf-8?B?ckFnVStBSFNTaEY4WS9XRHVIWDJSdnlVY0wxYjU1ckRQTEZCb2VrS0V2VlBW?=
 =?utf-8?B?cSsyY1hLR2ttMVZ6TmNFb3kvdHRFN2NLSkxMUWFueUlVbE9BRHJCQnhZd3Bt?=
 =?utf-8?B?N05SU3NwblAxeVJZUUxzQzhOaENHOG1kQlFZZWYzNzNyVTV3RkVpMXlRcTU2?=
 =?utf-8?B?TEJmK2kwOUNEb1VnQ0ZIbGFnUnVjTnFGYUVNQm13UVltS2t6b1JMYThtU2Zk?=
 =?utf-8?B?TjNCTk84RXVrbXVHVVErWUkvT0VRbzFjSXR0aldVaHhkdFhDVTM3VDY4Unhj?=
 =?utf-8?B?Z1g1dWJ0WEIyclU3OThyendpZ3ZzWnZ6OERIa2NSVVBoS3Rhek9tY0V3R1hS?=
 =?utf-8?B?OUpYVk1idnhMU1JaTWFqMW1mMm1DUXFQWjBIcGw0Zk1NMXJMR2NJMUNzTVJx?=
 =?utf-8?B?S1E5TlBER0tSVXFBUFlQeDdRaitiMXBRTk9VNEhBMXhaTmhLSEFnZ3haV2ZE?=
 =?utf-8?B?WjNpVlNTRXZ4QjdxMW9meGxwUUxDTnQ5MlBQa0pHbi9VMW9DUkkyZGxjeGw4?=
 =?utf-8?B?SUJJYVI3NXEyWmU4eDd5azBlNlpidkZUWG85cHV6d3N0bitPcXRpVGJySlJ4?=
 =?utf-8?B?d014c0ZDWHNCMlZXMmNxa0hDNFVIQkRtNFYweU5qWCtZN2RPcDlIMm5QSW40?=
 =?utf-8?B?VVZuSFNKRkxZb01MSTg0Q0ZabnUrT0FBRmEvLzREcHh4ZDExUGZkTitZcUE1?=
 =?utf-8?B?Si93eWxsNi92WDc3TEdNRHNPSjlLK0ZUYjd4c2Nvb1RvWGtqY000UEVMTlZi?=
 =?utf-8?B?R0pSSjVkbVVOVnIwTEVjRUYyeUd6aTdVZUJzUWthczhNRDVac1k0YlFmbXhL?=
 =?utf-8?B?aUdIM2ZxaCtUNU5aejladFYrQkZqcTlnYXdhanhxNU9LaE9OR1hHUVF6N3ZH?=
 =?utf-8?B?bGxUN2RRb0dQU1NhZkRGVEtpb2ZYdVIxVStwbGl2WHk0SDdhRE9MRTd2K1Vu?=
 =?utf-8?B?UENRY2l6UFlwZ3M0RHJqcjFlYWR6Mk8vdGF5S0hSemROUmRUbG1jV0V3Um5j?=
 =?utf-8?B?eTA5V1NvL1F1WWE3Zy9GRFZLMDNMMTZlazZaT1dRUHV4SmU5dnlTSFVzU2xP?=
 =?utf-8?B?R1VZWmJlNVNZcjA1Rzk3Yk1zNzFnTnJiNzZtekxqaEVuQVYxeERySVlqVFZq?=
 =?utf-8?B?UTIwa2I1Mnloa3ZkZ0Q1a0JXVU15a2ZFMW1Ea3NMUVkrOUhRaytBNzN4NFYx?=
 =?utf-8?B?aGhqNjJYTWFiaXRac256eHdxbGQ3ZTFZSGtsdjhkRWVweE5wMVdQV1NyN1JR?=
 =?utf-8?B?dDR1V3kxbFdJbVZrNHY4NWRYSlBTUE5xMXMxTUxtUlVKdDl0QUFabVRhUkRs?=
 =?utf-8?B?SzRORUoveFVCRjJZOFZ6OGwyYnorYzNzbmN4Z2pYbDZSeXhHS0dyNkxuQTJ5?=
 =?utf-8?B?YUo1d05RZ2dDVjBDeUNuUGVYK09la242Q0NUN0tGR2F0MnBITXpZWVZsKytk?=
 =?utf-8?B?WjFab2M1dGhRaXhxYitkUXp3RDJ1ZmJTYWpMb2ZxdXpWdWJoVmpDOTd0R1ZI?=
 =?utf-8?B?TUIxNHI3RC92eUZWSkhtdzBNeEZvaGtNYThCRjJuSUEzNTM3WnJQZkt0Q2Nx?=
 =?utf-8?B?NWF5czNCU3p3U2xRME1EYVc1YmQxOWY1ZWhRVDFZQmY4RVI2cEFqazFSK09j?=
 =?utf-8?B?ZWtUcTBwV0c3Vktzcnd4TW0xcDV5WGlUak10bDV4OHg2SEhZakU0WkVKU2dM?=
 =?utf-8?B?S0FyRFpCNmJyK3lzU2ViZk5LZ1hzNkhjUmxxTjBJNlExM3lqS0dpdVo3YlNt?=
 =?utf-8?B?TkhvV2loZ1p6V2Q0UnVqczVWZGtxZFdRL2hvcWhOdFlPWGl4K2xCNnFmc0lN?=
 =?utf-8?B?b0NpTGRGME1wbGxiaW1MVHR5OFM0VVY0K214K0ovNUVWZ1VOMmFCajUvSTFN?=
 =?utf-8?B?OHFqSERpTk9CQzIrL09rUWk5OGJacmFBc0MxQWVqOFlObWlyTjlCUWhuK1o5?=
 =?utf-8?Q?4Tnw=3D?=
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: 99aaa122-74c5-4b07-f619-08dd8cbab864
X-MS-Exchange-CrossTenant-AuthSource: DS0PR06MB9877.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 May 2025 16:26:14.3628
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: iSvmcXuSy2jCEvx/VWxMCIh6dsgTYJigEHQe/rwljdpUIuyT3ghffpUA3TVZQ0uI
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR06MB10077
X-Proofpoint-GUID: 7UdEHajulVWde7N10P9DxRbl_8GWTppE
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTA2MDE1NyBTYWx0ZWRfXzeZ5ve04Q+dn MIS85owgVJGkQsM8yGeUkjDeLoNY5eWxYvwKICA+rCfsGYWIfFPRLBNHZkwWnfxjwL5hvk5U+US u+cYmCp22kb7PbAOKqwBM2HTPSfE2QKPboleWIDXLkJ1I+BWneqMSP14qiYGrAaqajmbhi3WWDq
 cZWmennNtjmvd1afdw4UyPCrYjWNShjjis+omNg65rYEykbf/m0OyfDoOHGhdFwpnJjjXyjvIkp VQxn+NnVgITH1lhykqFV/pNApHGq2UoGn1r21iHn41UIwhxP69iD9JpyL2usdLgyM+duzlk7xAj fC/iigrAfjeIp9ioYkYL43KAOMwV3b9ofsrPLOvkH9k7ZEZYAmwHdzjoCNBitTMPoBbsXnQHXR+
 CNfhwsRPQw8Awns67p++v2l1gRRxrwM4nxkehHimogIrHjX35wfgFkrAB9o80qr5QYkOs+R+
X-Proofpoint-ORIG-GUID: 7UdEHajulVWde7N10P9DxRbl_8GWTppE
X-Authority-Analysis: v=2.4 cv=Kb/SsRYD c=1 sm=1 tr=0 ts=681a382d cx=c_pps a=wModh8UEFt2TZzYV9Lvs5Q==:117 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=dt9VzEwgFbYA:10 a=lre9DRYkaIEA:10 a=hEK2XftRAAAA:8 a=qPKtzgQbAAAA:8 a=xFe27LELp3apMgGgTbMA:9 a=QEXdDO2ut3YA:10 a=pvvZm7_9ER1OwvpV3Ftp:22 a=OTAqJWGB1laLS8RTg9aS:22
X-Wisc_ValidFrom: true
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-06_07,2025-05-05_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 impostorscore=0
 bulkscore=0 suspectscore=0 priorityscore=1501 malwarescore=0 adultscore=0
 lowpriorityscore=0 mlxlogscore=999 mlxscore=0 phishscore=0 clxscore=1011
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2505060157
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Well, this is GRML, it is a distro designed to be run from a CD-ROM or 
USB thumb drive. If you change something in /etc/, you will lose it the 
next time you reboot. I don't know if it's even possible to change 
anything in /etc/ while running a live GRML image. It might be mounted 
read-only.



On 5/6/25 11:22 AM, K0LNY ?? wrote:
> One could use a startup script in systemd/system or maybe a line in
> rc.local.
> Glenn
> ----- Original Message -----
> From: "John G. Heim" <jheim@math.wisc.edu>
> To: "Gregory Nowak" <greg@gregn.net>
> Cc: "Samuel Thibault" <samuel.thibault@aquilenet.fr>; "Speakup is a screen
> review system for Linux." <speakup@linux-speakup.org>
> Sent: Tuesday, May 6, 2025 11:17 AM
> Subject: Re: Load speakup module as kernel parameter?
>
>
>
>> If you want to start speakup by passing parameters to the kernel, the
>> speakup modules you want to load have to be compiled into the kernel,
>> unless grml does something nifty I don't know about. If the speakup
>> modules are just modules, then the earliest stage to start speakup is
>> inside the initramfs. That's still not as early as the kernel
>> decompresses and loads, but it should still be enough for most
>> purposes.
>>
> Hmm, I guess figuring out how to load hardware speech drivers isn't
> worthwhile. It might be possible to install a custom kernel into a GRML
> image but probably a more useful thing to try is to start speakup with
> software speech automatically during boot. It is not too difficult to
> start speakup after your machine is done booting but it would be better
> to have it start automatically and during boot. I'll have to get back on
> the GrML list to see if I can make this new approach work.
>
> Man, I should have asked here first instead of spending a week trying to
> load the speakup modules at the kernel command line.
>
>
>

