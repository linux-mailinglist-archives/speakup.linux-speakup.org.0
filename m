Return-Path: <speakup+bounces-1263-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 71003AA9D8A
	for <lists+speakup@lfdr.de>; Mon,  5 May 2025 22:49:39 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=math.wisc.edu header.i=@math.wisc.edu header.a=rsa-sha256 header.s=selector1 header.b=ehOKKSIS;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 00D9738298C; Mon, 05 May 2025 16:49:30 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id D3914382008
	for <lists+speakup@lfdr.de>; Mon, 05 May 2025 16:49:30 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id A992D382042; Mon, 05 May 2025 16:49:23 -0400 (EDT)
Received: from mx0a-007b0c01.pphosted.com (mx0a-007b0c01.pphosted.com [205.220.165.71])
	by befuddled.reisers.ca (Postfix) with ESMTP id 779B7381947
	for <speakup@linux-speakup.org>; Mon, 05 May 2025 16:49:22 -0400 (EDT)
Received: from pps.filterd (m0316041.ppops.net [127.0.0.1])
	by mx0a-007b0c01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 545Jj9jU003912
	for <speakup@linux-speakup.org>; Mon, 5 May 2025 15:49:14 -0500
Received: from sn4pr2101cu001.outbound.protection.outlook.com (mail-southcentralusazlp17012012.outbound.protection.outlook.com [40.93.14.12])
	by mx0a-007b0c01.pphosted.com (PPS) with ESMTPS id 46e2fmgjbn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <speakup@linux-speakup.org>; Mon, 05 May 2025 15:49:13 -0500 (CDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=zO6+SeJIWG525UMtePh/0mfpVqpTbyfA5yLaRwpNDk54hvxcbQd1HjVw6jSCt51X+ckvyizs35GBXNBB8SrLKsqyD5Oz3txLHqDGiPGtQihj3exrtpSR3GOof/eoed+1z5gydxgtyE4+0qilM7CHEUatczYB5po5tnR2AUXDTH0LHFymnOrw0+s3TbL7OXtServqo1iKxJdjGpfv2aazo+82uA3hGqgDPos2mFYurStZ2ZjpxnGfvho8tE8FSR17pAb4N+QcDjtWbTXsRg68fWPGvx+ikElq3DH/oSIJoRnp53SJb3esy2H6+JJTzAUPQWYU/4Blduuz6k8o1mQbpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=91L+usX4ZWX7WhT8Ir76G8GsePFSMLLhrOxKuURXcrU=;
 b=mgc6s729am3It5bJsc4idDsWqjuhX5Y+6uWnee84TSWRSq29ciwKUs1d2igtjXdYwzw/1uiJdWQrE82HJMieIDAtpIGRbKbqJtQxedXTZa62Z0LVL2CQ2AokVHq/BpKFQP+83OYl0MJVSp4AXHYlNY108jTsw6nlyk0WtqRB42n+pZblSUSgcI68MDJjX7XIAo/og2XPh3Ihcsm/mf81H8ZBM3D6+o48CnqbwbjaLtA1nFkO8oteoynV/J88N0dItHBTcBwd35PPGSVW3SPKhuxQgrHvi4g51tnhv3vSdvghjSCgBJbMROEnj9mSXdte/qp1Covc8tUylAZ16u1cUw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none
 header.from=math.wisc.edu; dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=math.wisc.edu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=91L+usX4ZWX7WhT8Ir76G8GsePFSMLLhrOxKuURXcrU=;
 b=ehOKKSISRSb8FLxN9YTrdYchW+EdES2Hr0OiHqkgkUW3R+yOiig2NW8jkDj5QB2RRe13p/aQr4L6uNkCAfxvV9DP5Xzn9dYoQUg159+qWbcXGACFW9lrQrgOuNufECCOLaswe84FllVceohHoSaomshoWWpyJUWfgkdAcx85ExOjw+0FlU/xf+BzekMoMo0zXW1zPo3w/NCi9zKoM3atFOwkVCaUCNd2fAWyA2wI5HjXPMJbvwOezvl+Vs5qe4f13isE1EHdWQitf2ajj5Hoo3U47q6xe8XQffxzISEUquuHE9mWqEqwcIbf6P+mLNV/vX8SsJTgtqaL4CbttOm9Mg==
Received: from DS0PR06MB9877.namprd06.prod.outlook.com (2603:10b6:8:1d5::14)
 by BY5PR06MB6721.namprd06.prod.outlook.com (2603:10b6:a03:237::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.26; Mon, 5 May
 2025 20:49:11 +0000
Received: from DS0PR06MB9877.namprd06.prod.outlook.com
 ([fe80::a347:6162:9bfd:9b91]) by DS0PR06MB9877.namprd06.prod.outlook.com
 ([fe80::a347:6162:9bfd:9b91%3]) with mapi id 15.20.8699.019; Mon, 5 May 2025
 20:48:22 +0000
Message-ID: <55a2cd5c-4b26-4c77-a55b-cfaf59d74316@math.wisc.edu>
Date: Mon, 5 May 2025 15:48:21 -0500
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
From: "John G. Heim" <jheim@math.wisc.edu>
Subject: Load speakup module as kernel parameter?
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: CH0PR03CA0048.namprd03.prod.outlook.com
 (2603:10b6:610:b3::23) To DS0PR06MB9877.namprd06.prod.outlook.com
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
X-MS-TrafficTypeDiagnostic: DS0PR06MB9877:EE_|BY5PR06MB6721:EE_
X-MS-Office365-Filtering-Correlation-Id: f4fb7657-ab3f-41de-eb8b-08dd8c162ca3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|41320700013|366016|376014;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?V0pLMWlqRTg4U3NOZGEzRDhMZTRtaWlRM1ZEbnRKdFhPUEpXQ1hwUjIvV1Er?=
 =?utf-8?B?aEduWGs0VDNDZ1VhTXFjK2NjQThHRXEzK3RGQnJHc2V0Ly9BZ2VIQkxieGR6?=
 =?utf-8?B?UmVtK2swamZVVm9NQzBucHZkMlQvQzhibW0rMHZpbUVEZ1Z0N3RJaFRDSlo2?=
 =?utf-8?B?dlZhbjJLcUVnQWZnWTEyRHUyRTJMTlFkSFNia0xxcXJ4ZVhNRFlrblIyRmZx?=
 =?utf-8?B?N0J1NzRxd2Zvc2RlejRYbkdSSHlZclJjWlovSVE1a3RDS2lNd2JwUTlYM3pK?=
 =?utf-8?B?RzMvV2IyQkJzb0tURkJrRWE0UjlrN205bTNHMXZRQno3WXN6TVZ5QnMzRFhv?=
 =?utf-8?B?Q2g2OGVhY1hSRUJHakNJeitjcm54VFBmZzRCLzdNNGdabjRSVy9IeHlEdTBh?=
 =?utf-8?B?MnpQVTBIRmljQnliSlAxVDNSWDVMRmFZNHo2Y2VWdkNkdjdUSGR4bTV5TkZW?=
 =?utf-8?B?M29nT3RYa1lqa2FadGhuaU5KL3ZIUTc5UlBTdk1EaDBuV0VPK2FzMkI3ckU4?=
 =?utf-8?B?OGxTaXJWUThubURaTzFRNmRZYmRZdFZ5UUZvRDFWZ3JYbkM5OXJQRUE5RG1B?=
 =?utf-8?B?RXBJd2V5WTRzbWJWTEdsbXg3VnhnRnI1Um9MZGRvM0MrUmRDZDJqcUtwdDRj?=
 =?utf-8?B?NTJkMithTnJIVlhpTXF0K3JWNDFXOFJCS2YxQlFnZndGdlo1YkxHK084aU9U?=
 =?utf-8?B?UGlENjZNK2N4eUsyMVgwbE1YSlNNMnMwWk9hanNHMlB6WWs2VzM5aWN5Q0x5?=
 =?utf-8?B?UXhRQUdjTW5tRE1KZ0lFRmdJSHFSKyticnRlWjc5cG5lLzVBNVNBajJsL3Uv?=
 =?utf-8?B?L2ZFbWJoQk4xUUhzRzlHL1BoUEV2azZPSGVyUUNLQzRpK2E3bXFqaWVlSlhO?=
 =?utf-8?B?anF6SDhhaW1FbHpaaVozbEV6WnlxNGg3ZXBmWnE2YTRuMDlMd2YzTWQ1Zm5x?=
 =?utf-8?B?WkJQbDBXRDlHL1ZYQVpqcW9IZWdtSCtVeXp6RytTRWF4WEVKRkxUZ3FwVVdN?=
 =?utf-8?B?TWMvRkZXNEg3SVZBN1dDaDk5SXNBc1dVa1lOQmRZNlZ2U0ZBVlVpMFdNSU95?=
 =?utf-8?B?UEg0UmRlRytjRlFBSitpVHNqVjdJU2FoazJORSs2dWRkMlRlYnM2bHAzVVgy?=
 =?utf-8?B?aUxSUEphNU5tN2p5dzZYa25PQ3hsVjlMTDV0YUlXQlFFb0w0U3dEWFpIQU9o?=
 =?utf-8?B?aTVrRVVXdmJmdnFON0lOazA2Q1VyYmY3Q2FxYmJtTEJhSU91TDZtUUVlblBx?=
 =?utf-8?B?ZlpyUGlaOW9iWFc4NHBoQkZ5R0J3c3lTa2xvazFUMzBuT0F4WlBQSVcvN1pk?=
 =?utf-8?B?Si94RlVtVXBYQStLSURIaVBENFVMTUNSMElXNWpxMW5zcElMZ0Qzek1ZWG9r?=
 =?utf-8?B?WkVOS3JMTTZTeUJJRDhXbkdtdy9qcTZ2cFR5NEhhZjBtWURBNk10ajF1VWtI?=
 =?utf-8?B?aGdLeGRmL2hqNDVFUkNsOWhDQUwzbGpjWE1BaCtxNVlNNmJWVUFHYU9uMk5k?=
 =?utf-8?B?ZGhjTGp6R09sdWluOFRqNGUwVjdJTHNYTVNtVXI4Vy9BNXk5WTIxSDZVUlJo?=
 =?utf-8?B?aU0zYzRqU2gzazlzaWE5VTVLN3cxUUpPblB0enpUNVRjMGNEUC85cmRqWVZX?=
 =?utf-8?B?ek0yM3NLWVd6OGYrNTZETVBaMXJaQ3lLbG9tWHBTVGFTK1l1U1liSVhFRWU3?=
 =?utf-8?B?bUtpSldyZ0o5MEV2OVhuTXNlVFpiU0Nlbmh6VnFIcDdYNjVqTVBrV3dhTjJS?=
 =?utf-8?B?TVRydHdUL3NqeFFNZHVnd210TElnbndmU2hzRjByN0pCaGJkK3pucURmekZC?=
 =?utf-8?B?OC9OQVNrWWtBVDR2elFhR01tNHl5cWZIKzkzdXhCdXE3bElyc0ZGZDE1Sk92?=
 =?utf-8?B?bEJUc1c4Z1puWjQyMHRvS1llN1ZTNjJUMU1YaXJwQldZdHVGUWxyOHZNMURq?=
 =?utf-8?Q?yhmk+WHCp6w=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS0PR06MB9877.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(41320700013)(366016)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?NDNiVU15MDNmdVd5RCs3NnRRdElwZ2tKQkU0ZGZ4YldFSWZ6QzBzNXVmYm5s?=
 =?utf-8?B?NGZmRGp3K2lqcjVMZDlwR2NjNVhnKy8wMnFIenE5OE4rdXc4b3R2OHA3clo0?=
 =?utf-8?B?dFNPTzFkZlZIVUYwaGtmZGJNNzBIVUlzNUkrQmdpczgxNk80RUt0Q0ZvNzQ4?=
 =?utf-8?B?bVFQUjB1MG14TW5SOVNEUFBmdVBhRVFaY2RFMG5uMEF3UEo4SnNvV1FHb056?=
 =?utf-8?B?WVMrd0RVSk03QU5DTGQyaGdvS2xuZWxwbC9mb0FpZGxrZDVUSUtRQkl1OHd5?=
 =?utf-8?B?SmJab0dnTndnYWJWQW1HdWwwanI0WW90N0hEanNNVCtMN0FEWWY2RElhSmU1?=
 =?utf-8?B?enR0SFRFU2FxUGpKQWxhMU1FdTVOeEFZbXF1VmlaaUpVblRyN2k2RWMyaGZz?=
 =?utf-8?B?eUNLbmptbU9ybUcrd1UvcDErN2Rld3pNbkgwVDRLTWdXZTUzS2habnRmUGls?=
 =?utf-8?B?NkNxR24ycGFMc1owbWNHK0N0SEpYQ0plTDBGN2lkZ1hnMGZGTHJwbWFSWFk0?=
 =?utf-8?B?T2VWR1ZWeGFIaEorWWNkanBRdE83YXB5RkM0S0VsYVJyTGFGdGNtdklxblZ6?=
 =?utf-8?B?eHlnTXVtVlVpb0JCek4ySUFiWndKcHlWbHpnOVBObWljbFhWN3cvdmJobDdN?=
 =?utf-8?B?SFNOTTk1RlBUZFJoRnZib3ptazZrL1FhdnQvaUoyVXpaUTFQNU5RbGM1Y3Q5?=
 =?utf-8?B?M1VXcExncVhBZzhyQWVnWG1zbkJXM3hzR2ZWandyUmtVS2hlL1lUYjNXSnF5?=
 =?utf-8?B?S0t4SXBYTVNIWG94cFlPMUJaQWZHUThPdkZMbG95cnpBeUU5YjZBRXpOWjN2?=
 =?utf-8?B?ZE1lR2JlU3prUnM5NmVEdjNQd2l1ZHFFTUdzLzlKMVZ4M3hxb0lGNVJxWWE4?=
 =?utf-8?B?SnpjYlc0SXFIdVo3TzNYRENJNWxENytXUHNYVGtXV2ZPZk52RmhjenNCOFJm?=
 =?utf-8?B?Q1krTUUxNGJhYWdqZzROY2UxM3FNbjFJM0h5bGprK01Kd2NtbHYreXdoRENs?=
 =?utf-8?B?NThMTHpVRFBrOXFaYWh1dFN3MUdTcHNVUWE1c1lvTk93M0R1UEdEN3V4Vml4?=
 =?utf-8?B?dVg2Y2k4a0pGbmYvb2xjeVlTOU4zY05SZytwY05lN0FuSlJDR2tQdEs3cE9t?=
 =?utf-8?B?d3BwK213WmpFd2swbTZPOFZSL3AreGNnMmxjWlQ0MmJtcHhhMHo3NVpsc1Yz?=
 =?utf-8?B?UnlOOGZOMXNFVjI0RWY2V1hIZzFPQ2plYkJMeXlpNUFZSGxxb0FVTFFLbkd3?=
 =?utf-8?B?SjIwV2JUbE9XQ25LMnFyVGdRSDhHWFdacENidHF6dVFyM0lQc1ZFRjJrK3M1?=
 =?utf-8?B?R3dtaHZ6bnZHNFB3M0dkcksxTC92UXQ4dS90T0Jtb3hmNjFyTTB4eVNGRVdn?=
 =?utf-8?B?UHp3OUF6cXNxWFY2VnM2R1p5aEdCSEZ0WDVPUTZrQ25GRXM0bllVMzhmYm41?=
 =?utf-8?B?TmJDUDVSeDNicDVMSnZSRllrUzBrQk54Qy9YTnRIclNQWUtua05VQUJ5L1lq?=
 =?utf-8?B?dEpsdTlySXVYenA4eTNXSExiaTF4RUppYzRCZDRhc1J4NXR1SVpLaFEweEFT?=
 =?utf-8?B?ZUhWRjI4U2Z6TWs4YWdOaUg5Tm1rRjhDcnRFVXp0WURHeXBYVzI3d2d2VzJV?=
 =?utf-8?B?ODZ1ZUNMam9KZTVLV1NUY2Q0MjlDUElINGVKYzlHL0Fjby9Zc3Nqazk2U3JE?=
 =?utf-8?B?MlVXcWtWdVlKSWdSTjdmUUxwZXFzR0lLYVk4TWE1cHA3WmQvOEhWMkREeFNs?=
 =?utf-8?B?M2VmcDBSQldTa1VhOFZON0JzeWppNUovU1ZIaTFSRFQxd3l2KzNBb3grUTh0?=
 =?utf-8?B?M2xGcVhoQ1R0cm9XT0NMQVdIZE5lcSs0YmlWQlVwMFJCNkxTS1NrTWowc2wv?=
 =?utf-8?B?a2J3TlRaUGtSa1BURDBjcXNzS2FLRmxxUjJwY2FUREpRbzdvY3lPa0hnaG9C?=
 =?utf-8?B?Q0dQQVJZYnNYdlBvaUh6SkxWWldpOHhmM0pHMUY0SjQ0WDY5b1ppNlhNZXBG?=
 =?utf-8?B?TmJkZkRlbnFxMEtRQTNZa2o4UzNFbDRqdWFpUVRNM1NaTmRSMURWMnRtVXV2?=
 =?utf-8?B?OVduSURNdHVyaGRMMGd6SU5QbVpBT25wdXRSSGFHRXhFTmNQNEZnajBxOFU4?=
 =?utf-8?Q?f/5A=3D?=
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: f4fb7657-ab3f-41de-eb8b-08dd8c162ca3
X-MS-Exchange-CrossTenant-AuthSource: DS0PR06MB9877.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 May 2025 20:48:22.4615
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Jb0e3vBxJ8SHpT9PTRieCE98stnC9M874Ck2o8zWVxAC6NqEzP5hZoU7FQ/3Qsjd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR06MB6721
X-Proofpoint-ORIG-GUID: bmZiBD7SUJEsb3iS-hYgNZwBl-_6B0Tg
X-Proofpoint-GUID: bmZiBD7SUJEsb3iS-hYgNZwBl-_6B0Tg
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTA1MDE5NyBTYWx0ZWRfX3KZmh6bwmb8Z NMl+3PeqUfE+nnZXg2b3i6+breZioTeG1hJ/pTzfnc2fGpVJaF0rbxMs6exVmCsV2mnQxM5r9vg 0juWf00p11ejoEyyqlNc/dO3GYCBuZWQWuMsVxe8dzZlxh6MFnS0/fgR6z/81W22u4SdNtIFW1v
 DgiuMV76hme6FLPRAzgdr//cBK0cfbTxZkXj6KEB8go2+ACylsXYe72P0YHCWPqBvGx7AoncS5W 7E3z4w8haAL80IQTTK0t49I45mVTQ/ZrDJWmPPMa14Qi8frubagaS2PItKCklrZgPNvald8lghi jzeE9k0ssE7WG3ZLAk0n6X1Lu3Fs0wR2yKI6eQvpRsA35oVYv+W+v7FyGx8uQLvpSQfq8aXYxWF
 WgCwqoYYL75GIYfgpkXajMdDRh9kb6jRoBoeMAhL5494/Lo+DOl9RAkN6gy/idkSINy4xLij
X-Authority-Analysis: v=2.4 cv=B+u50PtM c=1 sm=1 tr=0 ts=68192449 cx=c_pps a=rJOuE113HAlAKDwVaFkQAw==:117 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=dt9VzEwgFbYA:10 a=lre9DRYkaIEA:10 a=Wj-kWuxfk3ljSBJe51AA:9 a=QEXdDO2ut3YA:10
X-Wisc_ValidFrom: true
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-05_09,2025-05-05_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501 mlxscore=0
 bulkscore=0 adultscore=0 lowpriorityscore=0 mlxlogscore=834 suspectscore=0
 phishscore=0 spamscore=0 impostorscore=0 clxscore=1015 malwarescore=0
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2505050197
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Anybody know if it is still possible to load a speakup module as a 
kernel parameter? The reason i want to do this is that I've been playing 
around with GRML, the Linux distro designed to be booted from a USB 
stick, and I want to tell it to load a speakup module during boot. If I 
could do that, then I could make a custom GRML image that would come up 
talking via my hardware synth.




