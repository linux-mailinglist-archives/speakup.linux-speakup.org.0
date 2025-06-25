Return-Path: <speakup+bounces-1311-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 854E5AE8B7E
	for <lists+speakup@lfdr.de>; Wed, 25 Jun 2025 19:27:06 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=math.wisc.edu header.i=@math.wisc.edu header.a=rsa-sha256 header.s=selector1 header.b=K0tkeaZC;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id E573C3824CD; Wed, 25 Jun 2025 13:26:54 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id BC5BE381905
	for <lists+speakup@lfdr.de>; Wed, 25 Jun 2025 13:26:54 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id B0AA73820DD; Wed, 25 Jun 2025 13:26:45 -0400 (EDT)
Received: from mx0b-007b0c01.pphosted.com (mx0b-007b0c01.pphosted.com [205.220.177.71])
	by befuddled.reisers.ca (Postfix) with ESMTP id B79D6381905
	for <speakup@linux-speakup.org>; Wed, 25 Jun 2025 13:26:44 -0400 (EDT)
Received: from pps.filterd (m0316045.ppops.net [127.0.0.1])
	by mx0b-007b0c01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55P9lhPO003495;
	Wed, 25 Jun 2025 12:26:11 -0500
Received: from nam12-mw2-obe.outbound.protection.outlook.com (mail-mw2nam12on2063.outbound.protection.outlook.com [40.107.244.63])
	by mx0b-007b0c01.pphosted.com (PPS) with ESMTPS id 47eesqcun2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 25 Jun 2025 12:26:10 -0500 (CDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GiFt5JjpVCQFwpVGJlxKX1JVyiueS4FuJ5yUSGtWlWJ+61Q02SHUtwVFWraLw8WtWU6Guk3fbrEKo0cD15Mc8P2myw7mekbo6QGDORfk58KoUBel0U3DArBVnHWxm0IokG4klGX4Rk4qxOaSe0M8OopMWmkkZXnbgvlPPmFXGnURukfkXapHMSe2BpS+k1RB5FORk9P3YfgZoNAw/SSUrU7vf5GL93S2JRpyzlZ+Rpuns5zC8TzpOQTCiiglJpo86DLyWLVcNJhaYQ2PfE9ljunbext3E9KLyvahU0DJ5ZhS44ivfwwCWA5Ugo4Pw3O+A+LgdpU27hjSL8SCo5QG1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dBNWG6xaS2b+TUBOdd5Ww3/koR9qZfewHy6PRXw19/I=;
 b=zQmHKZXaBujaQruyCcVoTbpDvhLID4bcJAte3cj+6wJPLhqczlkR91S6V1OMiTEh8cYCqJjFV0ViJ23dd8lHTAzmgPP6dt8yp6rABr1Dn55h/vJhZsdoGkbrIJ1LCxAiyreIvKGg9hNBALzPoJttwXcKuFoNMKBZyrAPGeL/tAkTeFpVeuUIWl1U/ZmYnLMqEa10ErUESaC5kOcw8Dl1ZmF0J0KuqjxXw8Iteu9S0bkAFZlZ9aYlj+m/j2hygjJYJuRFie3PrnlkbbIV93fKvOk9Gu0EyI2KGqFM2B8mElkm5JX0B43slCB+eEWbcq/gFHyg4MN/FkoWAqNVzCgt1w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none
 header.from=math.wisc.edu; dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=math.wisc.edu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dBNWG6xaS2b+TUBOdd5Ww3/koR9qZfewHy6PRXw19/I=;
 b=K0tkeaZCBBqudsuBYhWbsPpYMtEohiMhgfH0kQfReXH1LwSBq4meuIk7UWxqlIx0oyZmapdeIDlyZnqiUDky0X3Jg68Moy5EdRFG1WGeiZzYuo4FrUTjg2mPw0NM4cqTCBz3tWV76AD9wQb5WhuhJFqKcTTAZT+s8VGTIkERvJCE30QynU7a8mRc/Fhlt2S4E3p52v7sTfst52eEXIg5Q2aeFuKkzE6bNd+eKuYAdZqXBHoXIsXc2gztG2+46NQREfdnELaR92o9FUYollZvVQG2nOGEi9XQQsYbImdmyDL+M989Y0/8lTZevKJ/OsS76WSsmFmBNjaL1f7/hU6C6g==
Received: from DS0PR06MB9877.namprd06.prod.outlook.com (2603:10b6:8:1d5::14)
 by DS0PR06MB9626.namprd06.prod.outlook.com (2603:10b6:8:1cd::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8835.28; Wed, 25 Jun
 2025 17:26:07 +0000
Received: from DS0PR06MB9877.namprd06.prod.outlook.com
 ([fe80::a347:6162:9bfd:9b91]) by DS0PR06MB9877.namprd06.prod.outlook.com
 ([fe80::a347:6162:9bfd:9b91%6]) with mapi id 15.20.8880.015; Wed, 25 Jun 2025
 17:26:07 +0000
Content-Type: multipart/alternative;
 boundary="------------x5L4Wkkal1q03n9huinPl5e4"
Message-ID: <974e94b9-4848-4a92-8b93-a4a5ef5dec0f@math.wisc.edu>
Date: Wed, 25 Jun 2025 12:26:05 -0500
User-Agent: Mozilla Thunderbird
Subject: Re: GRML for Speakup
To: covici@ccs.covici.com
Cc: "'Speakup is a screen review system for Linux.'"
 <speakup@linux-speakup.org>
References: <29a0419a-e54f-457d-9e8f-68a0c98d2dae@math.wisc.edu>
 <m3o6udb785.wl-covici@ccs.covici.com>
 <874ed182-9d75-4834-b630-a281f3ceb0f1@math.wisc.edu>
 <007601dbe538$4e734cb0$eb59e610$@ccs.covici.com>
Content-Language: en-US
From: "John G. Heim" <jheim@math.wisc.edu>
In-Reply-To: <007601dbe538$4e734cb0$eb59e610$@ccs.covici.com>
X-ClientProxiedBy: MN2PR16CA0021.namprd16.prod.outlook.com
 (2603:10b6:208:134::34) To DS0PR06MB9877.namprd06.prod.outlook.com
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
X-MS-TrafficTypeDiagnostic: DS0PR06MB9877:EE_|DS0PR06MB9626:EE_
X-MS-Office365-Filtering-Correlation-Id: 17fca390-bfc2-46fa-5e9f-08ddb40d5e58
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|41320700013|366016|1800799024|7053199007|8096899003|13003099007;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?SGtURTA4eUk4R2pYNm1kbGhWQUdzd1hMZGtZRFRreVF5cEpRSE5uTVh5aVJs?=
 =?utf-8?B?eWJoSWtDYjd4REowdWZ3elA2ekRGSnF5alhQbklFWXJBYjBEQ1R2Zm9XTGli?=
 =?utf-8?B?cGVqdm93aEJETjdhQ29PVzc4WHZ1RUpvay9LMkJzc1h3SVM5Q0ZxQ2dXdE5n?=
 =?utf-8?B?MXNUNjRHU0NSekU2NXBTUmZXR2JBS3N1VUtKN01nUWRQYUZXa204enJoOThF?=
 =?utf-8?B?bFA5UDg5eXpXKzhEQmZSWnRsL0J6THZxZmdpaCtpWmVKL3ZiQXVZYlpSNEJo?=
 =?utf-8?B?UlQrbDg4OFBzczNVTmZDaVlvUWpzcXQyTzd0WVhsRUQ5RThIN3NsY2ZxNVdZ?=
 =?utf-8?B?a3A2Qi9jZUZOTkl0TE44a29HcTlNalhleXd2b1NVUEpxMEc3Ym9zbGNXdmpP?=
 =?utf-8?B?QlBOUzNlYmN4NDlhNnZSQXlzUWhWMjlVY1Q2ZU92Q3FvYkZBaG5scUF4QU5L?=
 =?utf-8?B?TmtaSEk1am9QRm9CL0RSWmpnZE9qQlovaWtFbHptaU9LeW5hZmg1N2JRb1VG?=
 =?utf-8?B?WUxqSk54aDc3c2cvSHNieXlGczZOMHpIQzROaU5sM0YvbGZOaWNhZ3ppdVFD?=
 =?utf-8?B?STFhWEJLK3crUU14ZXZOR3dkWnpVdnIyTzJCcmJQaVUrUjhreTAyUVk2LzRs?=
 =?utf-8?B?QjdORXpyeHpsQWZIUlRId3pvN3dZd2lXMXBZK3lhYys5NFViNnBPbGxDakVp?=
 =?utf-8?B?VjJhZ2xQdUpxMlBOWUNlek9hQWFrTnlFVllLK2k1WCtCK0M2ZExUN1E0U0ZI?=
 =?utf-8?B?M0FxNUMzd2NEUGk4VHhzQUMwZ3JEeVlydnZFS3N5b2w5bFlmV2ZuREZwR213?=
 =?utf-8?B?d2V5UW9BdUJTbjFzQnBUbVlUU0s4ci8zVjYvM21OY1IxaVVRVHlzRklxdVNG?=
 =?utf-8?B?ODVLUkFjcEFpTjNpTFQxY2orWng0U0NvbFJZVFpsdFVobythMnZNY21kODZw?=
 =?utf-8?B?WW13d2o5MG83eGd3Uit5V3F1SVRRS05oMnNBK0FRUTJ0VEN5ejZINEt1ZFov?=
 =?utf-8?B?KzBmU3kyRGx5cm1TcFVRWVUyZzdrWm83ejhwZ0F2YzVIbVBYRVlxb25hMmxs?=
 =?utf-8?B?WjNrWVRzNFIvbTF2My9hVkJjWVFPVitRclc0U2kzTnk0enQ4eTMwOFdIUG1Q?=
 =?utf-8?B?d3Q4aDVSOC9HVWlRZkJnM0V2akFOalAvSzdLM3hpbnU3NjRFa1JEemROMFlS?=
 =?utf-8?B?UVVpMmtzR1BVcWhEQXVsb0tLdXl3bkY5MUFaUG00NlU3REpnRE9WSFEwNVJs?=
 =?utf-8?B?OTk5MXJpQUVtNktmYkw1UVJETlV0NnJoZi94RisvSU84ZUxsQmlDUUtqZmdG?=
 =?utf-8?B?ekkxaE5yVFZPczQwSnUzeUhPUWk2aVpmMzVTYTluM24wNkFmUXVEWVk4d0hW?=
 =?utf-8?B?RXF4RGFTeW8vazQ3OHBOamFXQVM2RE94cUhYK1JBRUw5ZkFVRjdyRDhwZUc3?=
 =?utf-8?B?MzRCSysyeHNKN3VnbjlJZHFWeExoUUNURUk1ckdjcUFRWmI5Z0l2TnB6N3ph?=
 =?utf-8?B?dWx3OHY5WW1oZU5rVW16SXRaekdGZXZPaWhYaFNIM1hHOFU5ZUFVWkJmb2xi?=
 =?utf-8?B?WGtnU2JPdVlGdFVXN0Rzdk9wd3NUZWUvUDdkN1R1a0x6c09UOExnUGVyTDJx?=
 =?utf-8?B?aVFnRXBVLytZdUEvTFFaS0JyL3Z0b045ME45UnNvVnRnTVFVaFEzMURiOHYx?=
 =?utf-8?B?dXIxQlNGVUNLQ2d6MFN3YnlSa2dyaFc4bU12WjgxMEs0OFA3RS9Yb1llODBi?=
 =?utf-8?B?dXpXZ0Z4TGJhTjlteExhQWxUc1IrOXRDM0NvNkovMUxyS2VUZEt1dnE4L0xE?=
 =?utf-8?Q?vzK75J2HwqLE1wXFJBGA9tnH7YukI/isdPAYo=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS0PR06MB9877.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(41320700013)(366016)(1800799024)(7053199007)(8096899003)(13003099007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?VHhOcVdzSERXaHVOaVdlMUtVVGpEOGdieHBXaXJPYWFUcTdSY2x3RU5SNGVq?=
 =?utf-8?B?ZHZGblRPSlM3NTlaK1NvcnVFMzhhNDNObDRsU1BBVHl4YVZBekIwYXZwMDRm?=
 =?utf-8?B?ODdxQmFQNk1VNlNNNVZ1cSsxZDh2SDF1UUNpVXVucVpVQXgrRHpxVWVCOGs0?=
 =?utf-8?B?UktSSDJ3eEg4NHVyOU9IQUhzRjJ2bE9WeUV1MWNFYkE0QjlvNzNyM05oMGFR?=
 =?utf-8?B?NzhqVldkaFFCQWk3cGZrVktvd1dXdUVOU3d2YlJjWW5IN3JBblVhcjlQQ3Zw?=
 =?utf-8?B?NXg0UEhhQVJrcEMxVjBSZWRENFFRaGhoSnVDUzNLT3pVYTVTOXdIUE1udkE1?=
 =?utf-8?B?MjVtTFQwdWNqQ1VPejJMOEFaZ29HNHRNM09IalNCelJjT0RZOGYyVEpQM2gz?=
 =?utf-8?B?QjVvTjErSW5Pc0RZQjEwanA4SndiZEhLNTU2SnBadjdQNXkwQWU4ZnNvQk44?=
 =?utf-8?B?anNqTkYrV1dIQklGdnZlWmV5ZWtnR1Z5K2gyNEY3OE5Qc1ViYzZJd3IrTy85?=
 =?utf-8?B?dWYrS1RjcHNGODFrdklHVThReW54QWNTdllzSmdqN09VTGJaNThpMXpjMGpk?=
 =?utf-8?B?MWI2L3ZseFJtTmZ6Uzc3MkVLbG8yMndkaGRud2laTUlSN3c1MTJpNUR4R3Vt?=
 =?utf-8?B?cUEzMzQ0Nmh0NTBJdC80M3YvRDNvVTlyV0dUK3U3QUdhUVgzdnZVTGpoQ1BD?=
 =?utf-8?B?eXk5a2xDM1p3ZXlGNTBiTzNWa09OeDMyMjQ2c1JGKzN2dHNPUUxSTkZ6UmNu?=
 =?utf-8?B?QS83UzBmSkxEWHNiQ1JrOTJNNHJneExRK2dRQjlUblNLdDZDVC9iRUJvcUJo?=
 =?utf-8?B?ekpXOHR0SXZCcXB0Q3hzMWUwQS9BL2U5YmYwbTdaLzV0bmtKckZUYmFsRTJF?=
 =?utf-8?B?Z3M4RExSQzdveEtYa2FTcTZzdXhkMm5HZU0xVVcwK2g3U29jMGcrWlNoaWI1?=
 =?utf-8?B?QXordWtlajllNkZPS0VvYi9mU1RzSWtNdndMekh2eGNNNElHTk02SlVYNGpt?=
 =?utf-8?B?MWM5b2YrRStpaUt4d1JzOW15ZTJyQWwyYjQ1VXR2cHR4aTU0Zm42b3JmUU00?=
 =?utf-8?B?N3g3cGVGVUxxTVFMNExFMWtqVzBndU9jMUZBTXlBdFRid0VGaXg3WVNLYmZh?=
 =?utf-8?B?S0xjR3p0VG1MY0hET0ZHS2plYnZ2cHJzSmVMWnpvMjNaa1IyenhoakdUVG5C?=
 =?utf-8?B?Y0NyYXUvRnphTENqQXNSTkVnejhTdWpQQW9aZzhub0FUTjE5MnFST0RYVnZM?=
 =?utf-8?B?K25PclZab28wbmFlK2RsWEd4aCt0TFptU0hReDZmZWxsVjJnMGZjbkJ6dHBi?=
 =?utf-8?B?TG02TytjUmVzYXF1R1loV3VYTVZlVDBWQXIyQzlXL21wMVJyc2cvOEppWUll?=
 =?utf-8?B?d011RWRINUZyZ1dvOUFnZndlTlRKRmIyY2VDSTNLT0xHbnY2Y2drZFlTRVdw?=
 =?utf-8?B?UEFPaTM0OW1peVdUd3l3OS9IVW0zbEpOZ29ZLzlNOVdlTGFNcnVkcWJtbUt2?=
 =?utf-8?B?aXFhZi9MdW51VG9zc3ExSmlvQ1lYaGRySnN2elFkNWsvSUVPQ3o4VkNSODho?=
 =?utf-8?B?RW8yenFnWDFkallYb1FVMEt2bjZva09LUEFnTVpmTktJWVNTZUVRQ2dsa2F3?=
 =?utf-8?B?c2M5VHRiczJ3U1NnL2R6THYyVWFCSGFPVDFqZTRkL0JjVTZRSFUwbGV0YWNU?=
 =?utf-8?B?NVFKdHc5NjZ0NWp0cVhmcm9FUm5iOEdkVjdRNGVIbEJuM2poMVlocVdyWVJt?=
 =?utf-8?B?YkJnbzd3UHZmSTl6UWVqREpTVGNvWWQrMXl0OWo1T3BhOHovcEtSRFdvQSs1?=
 =?utf-8?B?eUJwa1ptc1hnVHVKRHBtd21kRVpseHViRUw2U3ZyYkRKemFqSGVFMUFucDkz?=
 =?utf-8?B?SkNHU2VWSmRYSE5ONGtsb0JoVnVLb21uTkpkU3pIWTMrOCtndUZEUXhtS01v?=
 =?utf-8?B?QzdGTUxhNElpWXo5Z215VURkQ3J6ZnZqZks1RDc4bDRMdUJlZDhNVFYxWS82?=
 =?utf-8?B?SzNiaDFoTHBsbmJ3U3FQZFQ3RC91dGc5YWd1RVJpR3AvK1RjTVpiWW1COTM1?=
 =?utf-8?B?dTNySVJHRUhuT3UvMDFSTzV2U2VLQy9GQmsyVjd6cWhhMVQ4emJkRmtqbEdK?=
 =?utf-8?Q?AV60=3D?=
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: 17fca390-bfc2-46fa-5e9f-08ddb40d5e58
X-MS-Exchange-CrossTenant-AuthSource: DS0PR06MB9877.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Jun 2025 17:26:06.9166
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WpXo9n2tBt1Xy0eJvM2u8Z/GvtcHB9R/KAp/cQJJZMtk05SdMfZr1x+whTPm2P6g
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR06MB9626
X-Proofpoint-GUID: xZBWr8GRGRC_ES-T_q0bcMViapXz_bhL
X-Proofpoint-ORIG-GUID: xZBWr8GRGRC_ES-T_q0bcMViapXz_bhL
X-Authority-Analysis: v=2.4 cv=LcU86ifi c=1 sm=1 tr=0 ts=685c3132 cx=c_pps a=d3Zdq4q2+BwSKBEBY0tlvg==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19
 a=xqWC_Br6kY4A:10 a=6IFa9wvqVegA:10 a=lre9DRYkaIEA:10 a=DyznqomoAAAA:8 a=uJ_w1ttZAAAA:8 a=qPKtzgQbAAAA:8 a=AxlAYFWN1w0o_Wy-528A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=MxBBsALLuMDy5pMMIdoA:9 a=d9dly4INBrTyDphc:21 a=UiCQ7L4-1S4A:10 a=hTZeC7Yk6K0A:10
 a=6UIaq3Bcl8oA:10 a=_W_S_7VecoQA:10 a=lqcHg5cX4UMA:10 a=muQ5ErImgoUO71fbljk_:22 a=OTAqJWGB1laLS8RTg9aS:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI1MDEyOSBTYWx0ZWRfX0c9wHj7Jx+ve gAlJhsE4IJKDfxzfF97qgv2/kVRdHnClmc2u2j41DJm+Y2yS7cQfre4leDQ5FdbEwuYJnyk2gBT IIIDS5BkgWkhxC6PbzuvOqNL1+8lxnrOEHVcZ+bVUMKIpeXvoejLBcBAT0v+rt2Piu6AbL3DW2F
 7HcqtHcSQRhxyx+W4u9Opy1+D8YVa2RLdZ1Vpo8PW5y1GgPli9bKeHXuk2KFdfOlHYMecsEV+mm zZKKxUnS7RSkYcrWb5LdaryIuvvz1A7jDN2eru7o6jLtVoNmwSXYaPSwypocmhIaMLu5N9QZimK JOKaEz+Edu8Ueioh9Ss3za3TfxZxxAb8JqiDte0qag9RT+GmOB9wNpj3iL7M/OhL7q5dnw05B7j
 USUumKBmQAf0dirlx9rhL5AsG1tR45kOeTBhIXiuQReEff3o2Bw1e6vFwgVZWUOFtt/yHVfZ
X-Wisc_ValidFrom: true
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-25_05,2025-06-25_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 bulkscore=0
 mlxlogscore=999 malwarescore=0 adultscore=0 phishscore=0
 lowpriorityscore=0 clxscore=1015 mlxscore=0 priorityscore=1501
 suspectscore=0 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506250129
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

--------------x5L4Wkkal1q03n9huinPl5e4
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Okay, an iso image for the synth is available here: 
https://people.math.wisc.edu/~jheim/GRML/.

Scroll down the the Downloads section and click the link for the image 
named, grml-spkout-small-2025.05-amd64.iso 
<https://people.math.wisc.edu/~jheim/GRML/grml-spkout-small-2025.05-amd64.iso>. 
Then pick up the instructions at step 4 which explains how to write the 
image to a USB drive. This image is small enough that it can also be 
written to a CD-RW with a tool like wodim.


On 25 1:46 PM, John Covici wrote:
>
> Speakout is one of the original hardware synths – I think the speakup 
> code is spkout.It would be great if you were to build.
>
> Thanks lots.
>
> *From:*John G. Heim <jheim@math.wisc.edu>
> *Sent:* Tuesday, June 24, 2025 11:31 AM
> *To:* covici@ccs.covici.com
> *Cc:* Speakup is a screen review system for Linux. 
> <speakup@linux-speakup.org>
> *Subject:* Re: GRML for Speakup
>
> I don't know what speakout is. It does not seem to be one of the 
> synths supported by speakup. But as I said, if you need a version for 
> a particular hardware synth, you can download the script and build the 
> iso file yourself. Or you can email me, I'll build the iso image, and 
> I'll post it on my space at the Uni of Wisc.
>
> On 6/24/25 8:27 AM, John Covici wrote:
>
>     How would I get one for speakout?
>
>     On Mon, 09 Jun 2025 23:03:25 -0400,
>
>     John G. Heim wrote:
>
>         With the help of someone on the GRML list, I created a script
>
>         that can modify a standard GRML image for a particular hardware
>
>         synth. If you use this script, you can create a GRML image that
>
>         comes up talking via your hardware synth or via software speech
>
>         without having to type in the commands after it boots.
>
>         GRML is a Debian fork designed for use by people who like the
>
>         command line. It is useful as a rescue system. You can activate
>
>         speakup after it bootsbut with my script, you don't have to type
>
>         anything.
>
>         I pre-built images for the LiteTalk and for software
>
>         speech. These images and the script can be found here:
>
>         https://people.math.wisc.edu/~jheim/GRML/ 
>
--------------x5L4Wkkal1q03n9huinPl5e4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<!DOCTYPE html><html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <p>Okay, an iso image for the synth is available here:
      <a class="moz-txt-link-freetext" href="https://people.math.wisc.edu/~jheim/GRML/">https://people.math.wisc.edu/~jheim/GRML/</a>.</p>
    <p>Scroll down the the Downloads section and click the link for the
      image named, <a href="https://people.math.wisc.edu/~jheim/GRML/grml-spkout-small-2025.05-amd64.iso">grml-spkout-small-2025.05-amd64.iso</a>.
      Then pick up the instructions at step 4 which explains how to
      write the image to a USB drive. This image is small enough that it
      can also be written to a CD-RW with a tool like wodim. <br>
    </p>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 25 1:46 PM, John Covici wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:007601dbe538$4e734cb0$eb59e610$@ccs.covici.com">
      
      <meta name="ProgId" content="Word.Document">
      <meta name="Generator" content="Microsoft Word 15">
      <meta name="Originator" content="Microsoft Word 15">
      <link rel="File-List" href="cid:filelist.xml@01DBE516.C11F5960">
      <!--[if gte mso 9]><xml>
<o:OfficeDocumentSettings>
<o:AllowPNG/>
</o:OfficeDocumentSettings>
</xml><![endif]--><!--[if gte mso 9]><xml>
<w:WordDocument>
<w:DocumentKind>DocumentEmail</w:DocumentKind>
<w:TrackMoves/>
<w:TrackFormatting/>
<w:EnvelopeVis/>
<w:ValidateAgainstSchemas/>
<w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>
<w:IgnoreMixedContent>false</w:IgnoreMixedContent>
<w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>
<w:DoNotPromoteQF/>
<w:LidThemeOther>EN-US</w:LidThemeOther>
<w:LidThemeAsian>X-NONE</w:LidThemeAsian>
<w:LidThemeComplexScript>X-NONE</w:LidThemeComplexScript>
<w:Compatibility>
<w:DoNotExpandShiftReturn/>
<w:BreakWrappedTables/>
<w:SnapToGridInCell/>
<w:WrapTextWithPunct/>
<w:UseAsianBreakRules/>
<w:DontGrowAutofit/>
<w:SplitPgBreakAndParaMark/>
<w:EnableOpenTypeKerning/>
<w:DontFlipMirrorIndents/>
<w:OverrideTableStyleHps/>
</w:Compatibility>
<m:mathPr>
<m:mathFont m:val="Cambria Math"/>
<m:brkBin m:val="before"/>
<m:brkBinSub m:val="&#45;-"/>
<m:smallFrac m:val="off"/>
<m:dispDef/>
<m:lMargin m:val="0"/>
<m:rMargin m:val="0"/>
<m:defJc m:val="centerGroup"/>
<m:wrapIndent m:val="1440"/>
<m:intLim m:val="subSup"/>
<m:naryLim m:val="undOvr"/>
</m:mathPr></w:WordDocument>
</xml><![endif]--><!--[if gte mso 9]><xml>
<w:LatentStyles DefLockedState="false" DefUnhideWhenUsed="false" DefSemiHidden="false" DefQFormat="false" DefPriority="99" LatentStyleCount="376">
<w:LsdException Locked="false" Priority="0" QFormat="true" Name="Normal"/>
<w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 1"/>
<w:LsdException Locked="false" Priority="9" SemiHidden="true" UnhideWhenUsed="true" QFormat="true" Name="heading 2"/>
<w:LsdException Locked="false" Priority="9" SemiHidden="true" UnhideWhenUsed="true" QFormat="true" Name="heading 3"/>
<w:LsdException Locked="false" Priority="9" SemiHidden="true" UnhideWhenUsed="true" QFormat="true" Name="heading 4"/>
<w:LsdException Locked="false" Priority="9" SemiHidden="true" UnhideWhenUsed="true" QFormat="true" Name="heading 5"/>
<w:LsdException Locked="false" Priority="9" SemiHidden="true" UnhideWhenUsed="true" QFormat="true" Name="heading 6"/>
<w:LsdException Locked="false" Priority="9" SemiHidden="true" UnhideWhenUsed="true" QFormat="true" Name="heading 7"/>
<w:LsdException Locked="false" Priority="9" SemiHidden="true" UnhideWhenUsed="true" QFormat="true" Name="heading 8"/>
<w:LsdException Locked="false" Priority="9" SemiHidden="true" UnhideWhenUsed="true" QFormat="true" Name="heading 9"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="index 1"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="index 2"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="index 3"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="index 4"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="index 5"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="index 6"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="index 7"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="index 8"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="index 9"/>
<w:LsdException Locked="false" Priority="39" SemiHidden="true" UnhideWhenUsed="true" Name="toc 1"/>
<w:LsdException Locked="false" Priority="39" SemiHidden="true" UnhideWhenUsed="true" Name="toc 2"/>
<w:LsdException Locked="false" Priority="39" SemiHidden="true" UnhideWhenUsed="true" Name="toc 3"/>
<w:LsdException Locked="false" Priority="39" SemiHidden="true" UnhideWhenUsed="true" Name="toc 4"/>
<w:LsdException Locked="false" Priority="39" SemiHidden="true" UnhideWhenUsed="true" Name="toc 5"/>
<w:LsdException Locked="false" Priority="39" SemiHidden="true" UnhideWhenUsed="true" Name="toc 6"/>
<w:LsdException Locked="false" Priority="39" SemiHidden="true" UnhideWhenUsed="true" Name="toc 7"/>
<w:LsdException Locked="false" Priority="39" SemiHidden="true" UnhideWhenUsed="true" Name="toc 8"/>
<w:LsdException Locked="false" Priority="39" SemiHidden="true" UnhideWhenUsed="true" Name="toc 9"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="Normal Indent"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="footnote text"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="annotation text"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="header"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="footer"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="index heading"/>
<w:LsdException Locked="false" Priority="35" SemiHidden="true" UnhideWhenUsed="true" QFormat="true" Name="caption"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="table of figures"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="envelope address"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="envelope return"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="footnote reference"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="annotation reference"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="line number"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="page number"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="endnote reference"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="endnote text"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="table of authorities"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="macro"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="toa heading"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="List"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="List Bullet"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="List Number"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="List 2"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="List 3"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="List 4"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="List 5"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="List Bullet 2"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="List Bullet 3"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="List Bullet 4"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="List Bullet 5"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="List Number 2"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="List Number 3"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="List Number 4"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="List Number 5"/>
<w:LsdException Locked="false" Priority="10" QFormat="true" Name="Title"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="Closing"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="Signature"/>
<w:LsdException Locked="false" Priority="1" SemiHidden="true" UnhideWhenUsed="true" Name="Default Paragraph Font"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="Body Text"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="Body Text Indent"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="List Continue"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="List Continue 2"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="List Continue 3"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="List Continue 4"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="List Continue 5"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="Message Header"/>
<w:LsdException Locked="false" Priority="11" QFormat="true" Name="Subtitle"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="Salutation"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="Date"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="Body Text First Indent"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="Body Text First Indent 2"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="Note Heading"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="Body Text 2"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="Body Text 3"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="Body Text Indent 2"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="Body Text Indent 3"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="Block Text"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="Hyperlink"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="FollowedHyperlink"/>
<w:LsdException Locked="false" Priority="22" QFormat="true" Name="Strong"/>
<w:LsdException Locked="false" Priority="20" QFormat="true" Name="Emphasis"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="Document Map"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="Plain Text"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="E-mail Signature"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="HTML Top of Form"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="HTML Bottom of Form"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="Normal (Web)"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="HTML Acronym"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="HTML Address"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="HTML Cite"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="HTML Code"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="HTML Definition"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="HTML Keyboard"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="HTML Preformatted"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="HTML Sample"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="HTML Typewriter"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="HTML Variable"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="Normal Table"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="annotation subject"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="No List"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="Outline List 1"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="Outline List 2"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="Outline List 3"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="Table Simple 1"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="Table Simple 2"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="Table Simple 3"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="Table Classic 1"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="Table Classic 2"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="Table Classic 3"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="Table Classic 4"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="Table Colorful 1"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="Table Colorful 2"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="Table Colorful 3"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="Table Columns 1"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="Table Columns 2"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="Table Columns 3"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="Table Columns 4"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="Table Columns 5"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="Table Grid 1"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="Table Grid 2"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="Table Grid 3"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="Table Grid 4"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="Table Grid 5"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="Table Grid 6"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="Table Grid 7"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="Table Grid 8"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="Table List 1"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="Table List 2"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="Table List 3"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="Table List 4"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="Table List 5"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="Table List 6"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="Table List 7"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="Table List 8"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="Table 3D effects 1"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="Table 3D effects 2"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="Table 3D effects 3"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="Table Contemporary"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="Table Elegant"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="Table Professional"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="Table Subtle 1"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="Table Subtle 2"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="Table Web 1"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="Table Web 2"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="Table Web 3"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="Balloon Text"/>
<w:LsdException Locked="false" Priority="39" Name="Table Grid"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="Table Theme"/>
<w:LsdException Locked="false" SemiHidden="true" Name="Placeholder Text"/>
<w:LsdException Locked="false" Priority="1" QFormat="true" Name="No Spacing"/>
<w:LsdException Locked="false" Priority="60" Name="Light Shading"/>
<w:LsdException Locked="false" Priority="61" Name="Light List"/>
<w:LsdException Locked="false" Priority="62" Name="Light Grid"/>
<w:LsdException Locked="false" Priority="63" Name="Medium Shading 1"/>
<w:LsdException Locked="false" Priority="64" Name="Medium Shading 2"/>
<w:LsdException Locked="false" Priority="65" Name="Medium List 1"/>
<w:LsdException Locked="false" Priority="66" Name="Medium List 2"/>
<w:LsdException Locked="false" Priority="67" Name="Medium Grid 1"/>
<w:LsdException Locked="false" Priority="68" Name="Medium Grid 2"/>
<w:LsdException Locked="false" Priority="69" Name="Medium Grid 3"/>
<w:LsdException Locked="false" Priority="70" Name="Dark List"/>
<w:LsdException Locked="false" Priority="71" Name="Colorful Shading"/>
<w:LsdException Locked="false" Priority="72" Name="Colorful List"/>
<w:LsdException Locked="false" Priority="73" Name="Colorful Grid"/>
<w:LsdException Locked="false" Priority="60" Name="Light Shading Accent 1"/>
<w:LsdException Locked="false" Priority="61" Name="Light List Accent 1"/>
<w:LsdException Locked="false" Priority="62" Name="Light Grid Accent 1"/>
<w:LsdException Locked="false" Priority="63" Name="Medium Shading 1 Accent 1"/>
<w:LsdException Locked="false" Priority="64" Name="Medium Shading 2 Accent 1"/>
<w:LsdException Locked="false" Priority="65" Name="Medium List 1 Accent 1"/>
<w:LsdException Locked="false" SemiHidden="true" Name="Revision"/>
<w:LsdException Locked="false" Priority="34" QFormat="true" Name="List Paragraph"/>
<w:LsdException Locked="false" Priority="29" QFormat="true" Name="Quote"/>
<w:LsdException Locked="false" Priority="30" QFormat="true" Name="Intense Quote"/>
<w:LsdException Locked="false" Priority="66" Name="Medium List 2 Accent 1"/>
<w:LsdException Locked="false" Priority="67" Name="Medium Grid 1 Accent 1"/>
<w:LsdException Locked="false" Priority="68" Name="Medium Grid 2 Accent 1"/>
<w:LsdException Locked="false" Priority="69" Name="Medium Grid 3 Accent 1"/>
<w:LsdException Locked="false" Priority="70" Name="Dark List Accent 1"/>
<w:LsdException Locked="false" Priority="71" Name="Colorful Shading Accent 1"/>
<w:LsdException Locked="false" Priority="72" Name="Colorful List Accent 1"/>
<w:LsdException Locked="false" Priority="73" Name="Colorful Grid Accent 1"/>
<w:LsdException Locked="false" Priority="60" Name="Light Shading Accent 2"/>
<w:LsdException Locked="false" Priority="61" Name="Light List Accent 2"/>
<w:LsdException Locked="false" Priority="62" Name="Light Grid Accent 2"/>
<w:LsdException Locked="false" Priority="63" Name="Medium Shading 1 Accent 2"/>
<w:LsdException Locked="false" Priority="64" Name="Medium Shading 2 Accent 2"/>
<w:LsdException Locked="false" Priority="65" Name="Medium List 1 Accent 2"/>
<w:LsdException Locked="false" Priority="66" Name="Medium List 2 Accent 2"/>
<w:LsdException Locked="false" Priority="67" Name="Medium Grid 1 Accent 2"/>
<w:LsdException Locked="false" Priority="68" Name="Medium Grid 2 Accent 2"/>
<w:LsdException Locked="false" Priority="69" Name="Medium Grid 3 Accent 2"/>
<w:LsdException Locked="false" Priority="70" Name="Dark List Accent 2"/>
<w:LsdException Locked="false" Priority="71" Name="Colorful Shading Accent 2"/>
<w:LsdException Locked="false" Priority="72" Name="Colorful List Accent 2"/>
<w:LsdException Locked="false" Priority="73" Name="Colorful Grid Accent 2"/>
<w:LsdException Locked="false" Priority="60" Name="Light Shading Accent 3"/>
<w:LsdException Locked="false" Priority="61" Name="Light List Accent 3"/>
<w:LsdException Locked="false" Priority="62" Name="Light Grid Accent 3"/>
<w:LsdException Locked="false" Priority="63" Name="Medium Shading 1 Accent 3"/>
<w:LsdException Locked="false" Priority="64" Name="Medium Shading 2 Accent 3"/>
<w:LsdException Locked="false" Priority="65" Name="Medium List 1 Accent 3"/>
<w:LsdException Locked="false" Priority="66" Name="Medium List 2 Accent 3"/>
<w:LsdException Locked="false" Priority="67" Name="Medium Grid 1 Accent 3"/>
<w:LsdException Locked="false" Priority="68" Name="Medium Grid 2 Accent 3"/>
<w:LsdException Locked="false" Priority="69" Name="Medium Grid 3 Accent 3"/>
<w:LsdException Locked="false" Priority="70" Name="Dark List Accent 3"/>
<w:LsdException Locked="false" Priority="71" Name="Colorful Shading Accent 3"/>
<w:LsdException Locked="false" Priority="72" Name="Colorful List Accent 3"/>
<w:LsdException Locked="false" Priority="73" Name="Colorful Grid Accent 3"/>
<w:LsdException Locked="false" Priority="60" Name="Light Shading Accent 4"/>
<w:LsdException Locked="false" Priority="61" Name="Light List Accent 4"/>
<w:LsdException Locked="false" Priority="62" Name="Light Grid Accent 4"/>
<w:LsdException Locked="false" Priority="63" Name="Medium Shading 1 Accent 4"/>
<w:LsdException Locked="false" Priority="64" Name="Medium Shading 2 Accent 4"/>
<w:LsdException Locked="false" Priority="65" Name="Medium List 1 Accent 4"/>
<w:LsdException Locked="false" Priority="66" Name="Medium List 2 Accent 4"/>
<w:LsdException Locked="false" Priority="67" Name="Medium Grid 1 Accent 4"/>
<w:LsdException Locked="false" Priority="68" Name="Medium Grid 2 Accent 4"/>
<w:LsdException Locked="false" Priority="69" Name="Medium Grid 3 Accent 4"/>
<w:LsdException Locked="false" Priority="70" Name="Dark List Accent 4"/>
<w:LsdException Locked="false" Priority="71" Name="Colorful Shading Accent 4"/>
<w:LsdException Locked="false" Priority="72" Name="Colorful List Accent 4"/>
<w:LsdException Locked="false" Priority="73" Name="Colorful Grid Accent 4"/>
<w:LsdException Locked="false" Priority="60" Name="Light Shading Accent 5"/>
<w:LsdException Locked="false" Priority="61" Name="Light List Accent 5"/>
<w:LsdException Locked="false" Priority="62" Name="Light Grid Accent 5"/>
<w:LsdException Locked="false" Priority="63" Name="Medium Shading 1 Accent 5"/>
<w:LsdException Locked="false" Priority="64" Name="Medium Shading 2 Accent 5"/>
<w:LsdException Locked="false" Priority="65" Name="Medium List 1 Accent 5"/>
<w:LsdException Locked="false" Priority="66" Name="Medium List 2 Accent 5"/>
<w:LsdException Locked="false" Priority="67" Name="Medium Grid 1 Accent 5"/>
<w:LsdException Locked="false" Priority="68" Name="Medium Grid 2 Accent 5"/>
<w:LsdException Locked="false" Priority="69" Name="Medium Grid 3 Accent 5"/>
<w:LsdException Locked="false" Priority="70" Name="Dark List Accent 5"/>
<w:LsdException Locked="false" Priority="71" Name="Colorful Shading Accent 5"/>
<w:LsdException Locked="false" Priority="72" Name="Colorful List Accent 5"/>
<w:LsdException Locked="false" Priority="73" Name="Colorful Grid Accent 5"/>
<w:LsdException Locked="false" Priority="60" Name="Light Shading Accent 6"/>
<w:LsdException Locked="false" Priority="61" Name="Light List Accent 6"/>
<w:LsdException Locked="false" Priority="62" Name="Light Grid Accent 6"/>
<w:LsdException Locked="false" Priority="63" Name="Medium Shading 1 Accent 6"/>
<w:LsdException Locked="false" Priority="64" Name="Medium Shading 2 Accent 6"/>
<w:LsdException Locked="false" Priority="65" Name="Medium List 1 Accent 6"/>
<w:LsdException Locked="false" Priority="66" Name="Medium List 2 Accent 6"/>
<w:LsdException Locked="false" Priority="67" Name="Medium Grid 1 Accent 6"/>
<w:LsdException Locked="false" Priority="68" Name="Medium Grid 2 Accent 6"/>
<w:LsdException Locked="false" Priority="69" Name="Medium Grid 3 Accent 6"/>
<w:LsdException Locked="false" Priority="70" Name="Dark List Accent 6"/>
<w:LsdException Locked="false" Priority="71" Name="Colorful Shading Accent 6"/>
<w:LsdException Locked="false" Priority="72" Name="Colorful List Accent 6"/>
<w:LsdException Locked="false" Priority="73" Name="Colorful Grid Accent 6"/>
<w:LsdException Locked="false" Priority="19" QFormat="true" Name="Subtle Emphasis"/>
<w:LsdException Locked="false" Priority="21" QFormat="true" Name="Intense Emphasis"/>
<w:LsdException Locked="false" Priority="31" QFormat="true" Name="Subtle Reference"/>
<w:LsdException Locked="false" Priority="32" QFormat="true" Name="Intense Reference"/>
<w:LsdException Locked="false" Priority="33" QFormat="true" Name="Book Title"/>
<w:LsdException Locked="false" Priority="37" SemiHidden="true" UnhideWhenUsed="true" Name="Bibliography"/>
<w:LsdException Locked="false" Priority="39" SemiHidden="true" UnhideWhenUsed="true" QFormat="true" Name="TOC Heading"/>
<w:LsdException Locked="false" Priority="41" Name="Plain Table 1"/>
<w:LsdException Locked="false" Priority="42" Name="Plain Table 2"/>
<w:LsdException Locked="false" Priority="43" Name="Plain Table 3"/>
<w:LsdException Locked="false" Priority="44" Name="Plain Table 4"/>
<w:LsdException Locked="false" Priority="45" Name="Plain Table 5"/>
<w:LsdException Locked="false" Priority="40" Name="Grid Table Light"/>
<w:LsdException Locked="false" Priority="46" Name="Grid Table 1 Light"/>
<w:LsdException Locked="false" Priority="47" Name="Grid Table 2"/>
<w:LsdException Locked="false" Priority="48" Name="Grid Table 3"/>
<w:LsdException Locked="false" Priority="49" Name="Grid Table 4"/>
<w:LsdException Locked="false" Priority="50" Name="Grid Table 5 Dark"/>
<w:LsdException Locked="false" Priority="51" Name="Grid Table 6 Colorful"/>
<w:LsdException Locked="false" Priority="52" Name="Grid Table 7 Colorful"/>
<w:LsdException Locked="false" Priority="46" Name="Grid Table 1 Light Accent 1"/>
<w:LsdException Locked="false" Priority="47" Name="Grid Table 2 Accent 1"/>
<w:LsdException Locked="false" Priority="48" Name="Grid Table 3 Accent 1"/>
<w:LsdException Locked="false" Priority="49" Name="Grid Table 4 Accent 1"/>
<w:LsdException Locked="false" Priority="50" Name="Grid Table 5 Dark Accent 1"/>
<w:LsdException Locked="false" Priority="51" Name="Grid Table 6 Colorful Accent 1"/>
<w:LsdException Locked="false" Priority="52" Name="Grid Table 7 Colorful Accent 1"/>
<w:LsdException Locked="false" Priority="46" Name="Grid Table 1 Light Accent 2"/>
<w:LsdException Locked="false" Priority="47" Name="Grid Table 2 Accent 2"/>
<w:LsdException Locked="false" Priority="48" Name="Grid Table 3 Accent 2"/>
<w:LsdException Locked="false" Priority="49" Name="Grid Table 4 Accent 2"/>
<w:LsdException Locked="false" Priority="50" Name="Grid Table 5 Dark Accent 2"/>
<w:LsdException Locked="false" Priority="51" Name="Grid Table 6 Colorful Accent 2"/>
<w:LsdException Locked="false" Priority="52" Name="Grid Table 7 Colorful Accent 2"/>
<w:LsdException Locked="false" Priority="46" Name="Grid Table 1 Light Accent 3"/>
<w:LsdException Locked="false" Priority="47" Name="Grid Table 2 Accent 3"/>
<w:LsdException Locked="false" Priority="48" Name="Grid Table 3 Accent 3"/>
<w:LsdException Locked="false" Priority="49" Name="Grid Table 4 Accent 3"/>
<w:LsdException Locked="false" Priority="50" Name="Grid Table 5 Dark Accent 3"/>
<w:LsdException Locked="false" Priority="51" Name="Grid Table 6 Colorful Accent 3"/>
<w:LsdException Locked="false" Priority="52" Name="Grid Table 7 Colorful Accent 3"/>
<w:LsdException Locked="false" Priority="46" Name="Grid Table 1 Light Accent 4"/>
<w:LsdException Locked="false" Priority="47" Name="Grid Table 2 Accent 4"/>
<w:LsdException Locked="false" Priority="48" Name="Grid Table 3 Accent 4"/>
<w:LsdException Locked="false" Priority="49" Name="Grid Table 4 Accent 4"/>
<w:LsdException Locked="false" Priority="50" Name="Grid Table 5 Dark Accent 4"/>
<w:LsdException Locked="false" Priority="51" Name="Grid Table 6 Colorful Accent 4"/>
<w:LsdException Locked="false" Priority="52" Name="Grid Table 7 Colorful Accent 4"/>
<w:LsdException Locked="false" Priority="46" Name="Grid Table 1 Light Accent 5"/>
<w:LsdException Locked="false" Priority="47" Name="Grid Table 2 Accent 5"/>
<w:LsdException Locked="false" Priority="48" Name="Grid Table 3 Accent 5"/>
<w:LsdException Locked="false" Priority="49" Name="Grid Table 4 Accent 5"/>
<w:LsdException Locked="false" Priority="50" Name="Grid Table 5 Dark Accent 5"/>
<w:LsdException Locked="false" Priority="51" Name="Grid Table 6 Colorful Accent 5"/>
<w:LsdException Locked="false" Priority="52" Name="Grid Table 7 Colorful Accent 5"/>
<w:LsdException Locked="false" Priority="46" Name="Grid Table 1 Light Accent 6"/>
<w:LsdException Locked="false" Priority="47" Name="Grid Table 2 Accent 6"/>
<w:LsdException Locked="false" Priority="48" Name="Grid Table 3 Accent 6"/>
<w:LsdException Locked="false" Priority="49" Name="Grid Table 4 Accent 6"/>
<w:LsdException Locked="false" Priority="50" Name="Grid Table 5 Dark Accent 6"/>
<w:LsdException Locked="false" Priority="51" Name="Grid Table 6 Colorful Accent 6"/>
<w:LsdException Locked="false" Priority="52" Name="Grid Table 7 Colorful Accent 6"/>
<w:LsdException Locked="false" Priority="46" Name="List Table 1 Light"/>
<w:LsdException Locked="false" Priority="47" Name="List Table 2"/>
<w:LsdException Locked="false" Priority="48" Name="List Table 3"/>
<w:LsdException Locked="false" Priority="49" Name="List Table 4"/>
<w:LsdException Locked="false" Priority="50" Name="List Table 5 Dark"/>
<w:LsdException Locked="false" Priority="51" Name="List Table 6 Colorful"/>
<w:LsdException Locked="false" Priority="52" Name="List Table 7 Colorful"/>
<w:LsdException Locked="false" Priority="46" Name="List Table 1 Light Accent 1"/>
<w:LsdException Locked="false" Priority="47" Name="List Table 2 Accent 1"/>
<w:LsdException Locked="false" Priority="48" Name="List Table 3 Accent 1"/>
<w:LsdException Locked="false" Priority="49" Name="List Table 4 Accent 1"/>
<w:LsdException Locked="false" Priority="50" Name="List Table 5 Dark Accent 1"/>
<w:LsdException Locked="false" Priority="51" Name="List Table 6 Colorful Accent 1"/>
<w:LsdException Locked="false" Priority="52" Name="List Table 7 Colorful Accent 1"/>
<w:LsdException Locked="false" Priority="46" Name="List Table 1 Light Accent 2"/>
<w:LsdException Locked="false" Priority="47" Name="List Table 2 Accent 2"/>
<w:LsdException Locked="false" Priority="48" Name="List Table 3 Accent 2"/>
<w:LsdException Locked="false" Priority="49" Name="List Table 4 Accent 2"/>
<w:LsdException Locked="false" Priority="50" Name="List Table 5 Dark Accent 2"/>
<w:LsdException Locked="false" Priority="51" Name="List Table 6 Colorful Accent 2"/>
<w:LsdException Locked="false" Priority="52" Name="List Table 7 Colorful Accent 2"/>
<w:LsdException Locked="false" Priority="46" Name="List Table 1 Light Accent 3"/>
<w:LsdException Locked="false" Priority="47" Name="List Table 2 Accent 3"/>
<w:LsdException Locked="false" Priority="48" Name="List Table 3 Accent 3"/>
<w:LsdException Locked="false" Priority="49" Name="List Table 4 Accent 3"/>
<w:LsdException Locked="false" Priority="50" Name="List Table 5 Dark Accent 3"/>
<w:LsdException Locked="false" Priority="51" Name="List Table 6 Colorful Accent 3"/>
<w:LsdException Locked="false" Priority="52" Name="List Table 7 Colorful Accent 3"/>
<w:LsdException Locked="false" Priority="46" Name="List Table 1 Light Accent 4"/>
<w:LsdException Locked="false" Priority="47" Name="List Table 2 Accent 4"/>
<w:LsdException Locked="false" Priority="48" Name="List Table 3 Accent 4"/>
<w:LsdException Locked="false" Priority="49" Name="List Table 4 Accent 4"/>
<w:LsdException Locked="false" Priority="50" Name="List Table 5 Dark Accent 4"/>
<w:LsdException Locked="false" Priority="51" Name="List Table 6 Colorful Accent 4"/>
<w:LsdException Locked="false" Priority="52" Name="List Table 7 Colorful Accent 4"/>
<w:LsdException Locked="false" Priority="46" Name="List Table 1 Light Accent 5"/>
<w:LsdException Locked="false" Priority="47" Name="List Table 2 Accent 5"/>
<w:LsdException Locked="false" Priority="48" Name="List Table 3 Accent 5"/>
<w:LsdException Locked="false" Priority="49" Name="List Table 4 Accent 5"/>
<w:LsdException Locked="false" Priority="50" Name="List Table 5 Dark Accent 5"/>
<w:LsdException Locked="false" Priority="51" Name="List Table 6 Colorful Accent 5"/>
<w:LsdException Locked="false" Priority="52" Name="List Table 7 Colorful Accent 5"/>
<w:LsdException Locked="false" Priority="46" Name="List Table 1 Light Accent 6"/>
<w:LsdException Locked="false" Priority="47" Name="List Table 2 Accent 6"/>
<w:LsdException Locked="false" Priority="48" Name="List Table 3 Accent 6"/>
<w:LsdException Locked="false" Priority="49" Name="List Table 4 Accent 6"/>
<w:LsdException Locked="false" Priority="50" Name="List Table 5 Dark Accent 6"/>
<w:LsdException Locked="false" Priority="51" Name="List Table 6 Colorful Accent 6"/>
<w:LsdException Locked="false" Priority="52" Name="List Table 7 Colorful Accent 6"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="Mention"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="Smart Hyperlink"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="Hashtag"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="Unresolved Mention"/>
<w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true" Name="Smart Link"/>
</w:LatentStyles>
</xml><![endif]-->
      <style>@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;
	mso-font-charset:0;
	mso-generic-font-family:roman;
	mso-font-pitch:variable;
	mso-font-signature:-536869121 1107305727 33554432 0 415 0;}@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;
	mso-font-charset:0;
	mso-generic-font-family:swiss;
	mso-font-pitch:variable;
	mso-font-signature:-469750017 -1073732485 9 0 511 0;}@font-face
	{font-family:Aptos;
	mso-font-charset:0;
	mso-generic-font-family:swiss;
	mso-font-pitch:variable;
	mso-font-signature:536871559 3 0 0 415 0;}@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;
	mso-font-charset:0;
	mso-generic-font-family:modern;
	mso-font-pitch:fixed;
	mso-font-signature:-536869121 64767 1 0 415 0;}p.MsoNormal, li.MsoNormal, div.MsoNormal
	{mso-style-unhide:no;
	mso-style-qformat:yes;
	mso-style-parent:"";
	margin:0in;
	mso-pagination:widow-orphan;
	font-size:12.0pt;
	font-family:"Aptos",sans-serif;
	mso-fareast-font-family:Aptos;
	mso-bidi-font-family:Aptos;}a:link, span.MsoHyperlink
	{mso-style-noshow:yes;
	mso-style-priority:99;
	color:blue;
	text-decoration:underline;
	text-underline:single;}a:visited, span.MsoHyperlinkFollowed
	{mso-style-noshow:yes;
	mso-style-priority:99;
	color:purple;
	text-decoration:underline;
	text-underline:single;}pre
	{mso-style-noshow:yes;
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0in;
	mso-pagination:widow-orphan;
	tab-stops:45.8pt 91.6pt 137.4pt 183.2pt 229.0pt 274.8pt 320.6pt 366.4pt 412.2pt 458.0pt 503.8pt 549.6pt 595.4pt 641.2pt 687.0pt 732.8pt;
	font-size:10.0pt;
	font-family:"Courier New";
	mso-fareast-font-family:Aptos;}p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-style-unhide:no;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	mso-pagination:widow-orphan;
	font-size:12.0pt;
	font-family:"Aptos",sans-serif;
	mso-fareast-font-family:Aptos;
	mso-bidi-font-family:Aptos;}span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-noshow:yes;
	mso-style-priority:99;
	mso-style-unhide:no;
	mso-style-locked:yes;
	mso-style-link:"HTML Preformatted";
	font-family:Consolas;
	mso-ascii-font-family:Consolas;
	mso-fareast-font-family:Aptos;
	mso-hansi-font-family:Consolas;
	mso-bidi-font-family:Aptos;}span.EmailStyle21
	{mso-style-type:personal-reply;
	mso-style-noshow:yes;
	mso-style-unhide:no;
	mso-ansi-font-size:11.0pt;
	mso-bidi-font-size:11.0pt;
	font-family:"Aptos",sans-serif;
	mso-ascii-font-family:Aptos;
	mso-fareast-font-family:Aptos;
	mso-hansi-font-family:Aptos;
	mso-bidi-font-family:"Times New Roman";
	color:windowtext;}.MsoChpDefault
	{mso-style-type:export-only;
	mso-default-props:yes;
	font-size:10.0pt;
	mso-ansi-font-size:10.0pt;
	mso-bidi-font-size:10.0pt;
	mso-font-kerning:0pt;
	mso-ligatures:none;}div.WordSection1
	{page:WordSection1;}</style><!--[if gte mso 10]><style>/* Style Definitions */
table.MsoNormalTable
	{mso-style-name:"Table Normal";
	mso-tstyle-rowband-size:0;
	mso-tstyle-colband-size:0;
	mso-style-noshow:yes;
	mso-style-priority:99;
	mso-style-parent:"";
	mso-padding-alt:0in 5.4pt 0in 5.4pt;
	mso-para-margin:0in;
	mso-pagination:widow-orphan;
	font-size:10.0pt;
	font-family:"Times New Roman",serif;}
</style><![endif]--><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext="edit" spidmax="1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext="edit">
<o:idmap v:ext="edit" data="1" />
</o:shapelayout></xml><![endif]-->
      <div class="WordSection1">
        <p class="MsoNormal"><span style="font-size:11.0pt;mso-ascii-font-family:Aptos;mso-hansi-font-family:Aptos;mso-bidi-font-family:&quot;Times New Roman&quot;">Speakout
            is one of the original hardware synths – I think the speakup
            code is spkout.<span style="mso-spacerun:yes">&nbsp; </span>It
            would be great if you were to build.<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="font-size:11.0pt;mso-ascii-font-family:Aptos;mso-hansi-font-family:Aptos;mso-bidi-font-family:&quot;Times New Roman&quot;"><o:p>&nbsp;</o:p></span></p>
        <p class="MsoNormal"><span style="font-size:11.0pt;mso-ascii-font-family:Aptos;mso-hansi-font-family:Aptos;mso-bidi-font-family:&quot;Times New Roman&quot;">Thanks
            lots.<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="font-size:11.0pt;mso-ascii-font-family:Aptos;mso-hansi-font-family:Aptos;mso-bidi-font-family:&quot;Times New Roman&quot;"><o:p>&nbsp;</o:p></span></p>
        <p class="MsoNormal"><span style="font-size:11.0pt;mso-ascii-font-family:Aptos;mso-hansi-font-family:Aptos;mso-bidi-font-family:&quot;Times New Roman&quot;"><o:p>&nbsp;</o:p></span></p>
        <p class="MsoNormal"><span style="font-size:11.0pt;mso-ascii-font-family:Aptos;mso-hansi-font-family:Aptos;mso-bidi-font-family:&quot;Times New Roman&quot;"><o:p>&nbsp;</o:p></span></p>
        <p class="MsoNormal"><span style="font-size:11.0pt;mso-ascii-font-family:Aptos;mso-hansi-font-family:Aptos;mso-bidi-font-family:&quot;Times New Roman&quot;"><o:p>&nbsp;</o:p></span></p>
        <div>
          <div style="border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in 0in 0in">
            <p class="MsoNormal"><b><span style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;mso-fareast-font-family:&quot;Times New Roman&quot;">From:</span></b><span style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;mso-fareast-font-family:&quot;Times New Roman&quot;">
                John G. Heim <a class="moz-txt-link-rfc2396E" href="mailto:jheim@math.wisc.edu">&lt;jheim@math.wisc.edu&gt;</a> <br>
                <b>Sent:</b> Tuesday, June 24, 2025 11:31 AM<br>
                <b>To:</b> <a class="moz-txt-link-abbreviated" href="mailto:covici@ccs.covici.com">covici@ccs.covici.com</a><br>
                <b>Cc:</b> Speakup is a screen review system for Linux.
                <a class="moz-txt-link-rfc2396E" href="mailto:speakup@linux-speakup.org">&lt;speakup@linux-speakup.org&gt;</a><br>
                <b>Subject:</b> Re: GRML for Speakup<o:p></o:p></span></p>
          </div>
        </div>
        <p class="MsoNormal"><o:p>&nbsp;</o:p></p>
        <p>I don't know what speakout is. It does not seem to be one of
          the synths supported by speakup. But as I said, if you need a
          version for a particular hardware synth, you can download the
          script and build the iso file yourself. Or you can email me,
          I'll build the iso image, and I'll post it on my space at the
          Uni of Wisc. <o:p></o:p></p>
        <p><o:p>&nbsp;</o:p></p>
        <p><o:p>&nbsp;</o:p></p>
        <div>
          <p class="MsoNormal"><span style="mso-fareast-font-family:&quot;Times New Roman&quot;">On 6/24/25
              8:27 AM, John Covici wrote:<o:p></o:p></span></p>
        </div>
        <blockquote style="margin-top:5.0pt;margin-bottom:5.0pt">
          <pre>How would I get one for speakout?<o:p></o:p></pre>
          <pre><o:p>&nbsp;</o:p></pre>
          <pre>On Mon, 09 Jun 2025 23:03:25 -0400,<o:p></o:p></pre>
          <pre>John G. Heim wrote:<o:p></o:p></pre>
          <blockquote style="margin-top:5.0pt;margin-bottom:5.0pt">
            <pre><o:p>&nbsp;</o:p></pre>
            <pre>With the help of someone on the GRML list, I created a script<o:p></o:p></pre>
            <pre>that can modify a standard GRML image for a particular hardware<o:p></o:p></pre>
            <pre>synth. If you use this script, you can create a GRML image that<o:p></o:p></pre>
            <pre>comes up talking via your hardware synth or via software speech<o:p></o:p></pre>
            <pre>without having to type in the commands after it boots.<o:p></o:p></pre>
            <pre><o:p>&nbsp;</o:p></pre>
            <pre>GRML is a Debian fork designed for use by people who like the<o:p></o:p></pre>
            <pre>command line. It is useful as a rescue system. You can activate<o:p></o:p></pre>
            <pre>speakup after it bootsbut with my script, you don't have to type<o:p></o:p></pre>
            <pre>anything.<o:p></o:p></pre>
            <pre><o:p>&nbsp;</o:p></pre>
            <pre>I pre-built images for the LiteTalk and for software<o:p></o:p></pre>
            <pre>speech. These images and the script can be found here:<o:p></o:p></pre>
            <pre><o:p>&nbsp;</o:p></pre>
            <pre><a href="https://people.math.wisc.edu/~jheim/GRML/" moz-do-not-send="true" class="moz-txt-link-freetext">https://people.math.wisc.edu/~jheim/GRML/</a> <o:p></o:p></pre>
            <pre><o:p>&nbsp;</o:p></pre>
            <pre><o:p>&nbsp;</o:p></pre>
          </blockquote>
          <pre><o:p>&nbsp;</o:p></pre>
        </blockquote>
      </div>
    </blockquote>
  </body>
</html>

--------------x5L4Wkkal1q03n9huinPl5e4--

