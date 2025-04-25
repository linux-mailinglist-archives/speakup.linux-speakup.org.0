Return-Path: <speakup+bounces-1247-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id B46CEA9D2D9
	for <lists+speakup@lfdr.de>; Fri, 25 Apr 2025 22:21:27 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=math.wisc.edu header.i=@math.wisc.edu header.a=rsa-sha256 header.s=selector1 header.b=mwXq6g4f;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 131C2382595; Fri, 25 Apr 2025 16:21:27 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id E425F38208E
	for <lists+speakup@lfdr.de>; Fri, 25 Apr 2025 16:21:26 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id A551B3820F4; Fri, 25 Apr 2025 16:21:19 -0400 (EDT)
Received: from mx0b-007b0c01.pphosted.com (mx0b-007b0c01.pphosted.com [205.220.177.71])
	by befuddled.reisers.ca (Postfix) with ESMTP id 92D79380B06
	for <speakup@linux-speakup.org>; Fri, 25 Apr 2025 16:21:18 -0400 (EDT)
Received: from pps.filterd (m0316042.ppops.net [127.0.0.1])
	by mx0b-007b0c01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53PK5BAs015401;
	Fri, 25 Apr 2025 15:21:08 -0500
Received: from cy4pr02cu008.outbound.protection.outlook.com (mail-westcentralusazlp17011031.outbound.protection.outlook.com [40.93.6.31])
	by mx0b-007b0c01.pphosted.com (PPS) with ESMTPS id 466jjss07y-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 25 Apr 2025 15:21:08 -0500 (CDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DICYq5PWSCPUyiZFJDyjUkj/e4K7bkNBEaS5NMuClABkuvnuulZKO+p+OeIbQ0rp64yDb87zUtTfnqcvyWgm9gNpLTBNXItinB8gB3bXuTuulj5ixJ+Yxgg5tQscOwfE/GeltPzSFHrF3e5bo5996Ov/GYwjjt/3npX5IkH8fYZ7G2Y216TQpenhMWaws8r4dac7hpAFjUER3Anywt0tWr08wy+MkxKJeWwqbdzDH+TbEA5kVe/ZHal0HpZOCWIoJF0011/ehb4lPr0CqTgHVi5tULwbvitTZ1OGfEhczzwm9EWMmOgh9kbT3LJ/4Pa7EInq+t2/cwE6bpykf02FCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=giycyMAN74/PjKxFmO7U5UA9pMsb4+Ift3zDXV6BJW0=;
 b=ibYlWxGir/OssGfRpANmAVZ69aoltB1GnaPZh7ak9M1u+a3zQhawM7b65diWMghrIUV2LMitEQ3ktwLB+w0CjNQQEv2Aw205YVB0r5h2zyTFgyOoZtD8g/Fs4fXifC7cEoElVZwczsxlTM5Wnm9DnxHELi1NzPmIXKg//YKf0TvwYl/t7ztyCWLmcFdGh3AKOJTnfGnaPKoEyoXIiCHzVOehAnWW7YxY8JL3p0prDZ6GEanIfVscS+WoMt7vB+mAr6n3GEu2z6R1xYhAWh4OCmBCpY1f+jBJBtoqx8x1J6QwVKB1KH7ZvzuSSMS91dgTIQpmg2IkSTIuiEBjHXLeTg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none
 header.from=math.wisc.edu; dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=math.wisc.edu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=giycyMAN74/PjKxFmO7U5UA9pMsb4+Ift3zDXV6BJW0=;
 b=mwXq6g4fsRVz4HJwCpCGmyLZ41/DDsA3Lqb1RlSmfXN8oBWtkEFhA6HXcZU3anjKee1M04kdG8giafXSuhiUs34+nwLDTEZXvtGNxzXSB3k+ustY9JFWbxIV9SNrVl8qE+s0l136dI0Q8wJtRXuhfdmQZEN1oLzuMS4C3CLwHgTiEyWa2lbs5O1KiBHHoUnFPpZjLWS/wvGOw1Eog80khdvvp0n8oWyEZozBCHd/E0pa3gw7IMKMMclhkyyTdDIDh4KZRonpKUXVNWlEe56iugyKU+RMJKnr2whnK2diXTO4d1d95A41ofZP4ewXbh66qEjvJhZjVXWfcOGnNL+KbA==
Received: from DS0PR06MB9877.namprd06.prod.outlook.com (2603:10b6:8:1d5::14)
 by MW4PR06MB7867.namprd06.prod.outlook.com (2603:10b6:303:11e::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8678.27; Fri, 25 Apr
 2025 20:21:05 +0000
Received: from DS0PR06MB9877.namprd06.prod.outlook.com
 ([fe80::a347:6162:9bfd:9b91]) by DS0PR06MB9877.namprd06.prod.outlook.com
 ([fe80::a347:6162:9bfd:9b91%3]) with mapi id 15.20.8678.025; Fri, 25 Apr 2025
 20:20:14 +0000
Message-ID: <9677270c-1283-4624-8246-804e41ff3287@math.wisc.edu>
Date: Fri, 25 Apr 2025 15:20:13 -0500
User-Agent: Mozilla Thunderbird
Subject: Re: I break everything!
To: Kirk Reiser <kirk@reisers.ca>, speakup@linux-speakup.org
References: <3b7d9a99-8314-77f0-62ce-e6ca3e6ee1e4@reisers.ca>
Content-Language: en-US
From: "John G. Heim" <jheim@math.wisc.edu>
In-Reply-To: <3b7d9a99-8314-77f0-62ce-e6ca3e6ee1e4@reisers.ca>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: CH2PR16CA0018.namprd16.prod.outlook.com
 (2603:10b6:610:50::28) To DS0PR06MB9877.namprd06.prod.outlook.com
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
X-MS-TrafficTypeDiagnostic: DS0PR06MB9877:EE_|MW4PR06MB7867:EE_
X-MS-Office365-Filtering-Correlation-Id: dd3963e3-f23a-4761-6707-08dd8436966a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|41320700013|366016;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?dWN3bU11L0pSSE9LS2dGeWZtTnVndjlyL1c3SHFhdXJmZ0I3WnVpd1dST01Y?=
 =?utf-8?B?b1Nra2g1ekZOdzRqZTFJNEVRYWJYbUQrdkg5ZUtSSlc5ZTRQM1ZFU3dwSU9z?=
 =?utf-8?B?NHVWTVlaSVhNeXEvRkZWdHlMVzhKV1JaenNXcGxzSTUzTWRzTk5kMmFFeTIw?=
 =?utf-8?B?WEF4UmxHbzg2L1BQRmxJK3kzMXNwVFhCSS9MUERFOFZMWG8xclA4TFNiRXJU?=
 =?utf-8?B?N2ttQjBrVWkrSU9FTTZJQjFaYkNJZXA0djdrNjkxdWE5QkFJRjVEaElRSmdi?=
 =?utf-8?B?VDJaL2lXTW9OMFNuWkRYNXduN1N0eTZxQ3k5SjU3Q1RPWUdpTUQ2L3BqbDkw?=
 =?utf-8?B?R1IwcnM5MGlmUG00d3FPQ2U1RWJDWko3V2RsdXlmcUhSVlBDUGVrdUFxZ1Yr?=
 =?utf-8?B?L3V5RXN5V294dkJXTU5Jc3hkWWo3TXdidDlvbVNoVFltWE1kVG8xcFhwSlho?=
 =?utf-8?B?NXNHZW1nbjR5ZG5NZDJRWGZJNnhIVENrTkd3bm40M2VuM2lNaG1sUzdqNXRZ?=
 =?utf-8?B?SWtrWDVmbEwwQXJmUTl3VnVXN2xZOUU5OWR6Ync4N3B0Lys3RXdFZHNCcTgz?=
 =?utf-8?B?RDBWT2g0cytwbVZKbTZDcUZ4VitWT2t0cEw2aTZ0dFRlaFAxeFlieE9HZkFY?=
 =?utf-8?B?a3NsM3ZMSUc1US9vaEtzWXVzL2RWZDVwT2V2MFZMZHVLYzdGbEgwYkVSSW9L?=
 =?utf-8?B?cUJtQ0hlT2s5aDNYR09jZUFGTjZIUjB5RzdUd3BGOWxFbDlEKzVESjVaM0Nv?=
 =?utf-8?B?cEtMbFY5WWZqTVk0dHRFM1RZRWlXd1kvZW4vRUtGeDZRSGY2U3NoQmc1Q2ZQ?=
 =?utf-8?B?VXNybm0zd3dndE4rSGxpamNjNWNSQVBGV05MYTJkeFRYYldDdkdaUlVBZERs?=
 =?utf-8?B?TGpkZjhSVnJhaW8rMEdxbjBzS0xlR3o0enVlVDBlbmwxY0hXNVpxSVBydWRi?=
 =?utf-8?B?RExHK0hnQUYrVTFraHVOQ09QZUJaTlQ2NU1seitpZXgzVmJoTllTZml4MXdI?=
 =?utf-8?B?VUFrZ0trMFRoeEp1dDQ5aDFubVNCbWc3UmlRcHNza2s4SlNtNEZ3RXQ1dzh6?=
 =?utf-8?B?NlNaZkxDekZWUlBuc1Q4ZjJNRUJpVnFFeEtLNlY1TWV2TUtPTmJLRUFOQjVE?=
 =?utf-8?B?VTJveXh2cVRmOWl4bEtVdmpvamZSakRYL0dFdFMzWjJST1BSN2d1bEI0Yncr?=
 =?utf-8?B?RWJZMGpyemlDUHNCQWpuR3BnYXJmQ3pFcVdQZDJDL2FpNE9NRGZiRU5haDhP?=
 =?utf-8?B?QzR0anhudFEzY0syWm9FOW4rUWRVOExVVS91c3BueENJUEFlUVZHd3lmdDdT?=
 =?utf-8?B?aXZTK0NFcjhpZTIzRTc3ZjVPdkRjdE1rcUkvTUw2R1FwU2drYXJBOFB2dmVz?=
 =?utf-8?B?dngyemx3Tm9tMEU5RHY1bW5jbFFBMWtNOUc0b1RueW9VY3pkRXA2UVNrYVVD?=
 =?utf-8?B?RGRSYmZFSHcyV1FrZTNGZ3B4NFlYR1pjUGZZUW8wb1hGZmlkYy9QT2RBbzRB?=
 =?utf-8?B?aTRrOXlhd21CQ1NNWlh6Nk56VnFlQmxvcVlUNTJaYW5Qc05aMWtVMm9DY2xF?=
 =?utf-8?B?RFhUOExXR2l3RGhBSG5DTFFxdzNTR2xoWnF3YjhOVXNRQnp5aVZXeE1PQmFx?=
 =?utf-8?B?L1JzT2FhVDNNbUtoUmZFaHh2aDB0SWVnWDdZb2N1a0JwUi83V2c0OGk1UHRX?=
 =?utf-8?B?WnBTR0VYaWI3RGJ0WWR4eDd0TlhDdUhFdjY4WHMxbEZyYmZOM0ZwMHdKeVQ2?=
 =?utf-8?B?bGRZRXBxMFZZejcrTUFNckg2WXhmd1RmSVMwSkNvTmNTUkl1YSsvK3VnaCtE?=
 =?utf-8?B?SzQ4TjlpYmZyRmx5dzNmcFFBTG5BM3N0aUFCalVMODJFY29OOFViajhISVd4?=
 =?utf-8?B?ZUtDRlNoQUNIZ0xjVGl6K0l4dTFnVU9pYTA5VFJIa1ExYTU5K3g2YXNaczFT?=
 =?utf-8?Q?77zrjxEGGCA=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS0PR06MB9877.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(41320700013)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?dFM2U0o1eFRpdnFIUFh4bUZlS1RzNWdLYThYelhWR1p1YjZwa25TdzE4aENW?=
 =?utf-8?B?YmN1V0Nsd0l2aXhnKzBtc3VwSzZhbTdnS3dYY2xjdnRWeUM5ZmxyZGNQc0VW?=
 =?utf-8?B?TFV1a05PZGVFZitmUVdIODg4ektpdzRNRk55a1pYSEU4bGVOaDRMeWRGdjU0?=
 =?utf-8?B?Mk1sbmExUWlTek5RZGVUOHNLWHppT3dVbVV1NVBRMkhIczk0TEEyTGhQY2lB?=
 =?utf-8?B?bm92L2NxSTRqVlRUZGxYSzlJN09XYnBSQ1M4U1BxUWRtQmJYZmQyYlRyMU1k?=
 =?utf-8?B?OHlERGI1MUdBUk56ZHkvTnpEam1EZ25QVDNBczJBczNtWjRxbTQrR2JmUDZj?=
 =?utf-8?B?aUdyV2tuYW9sWDM5b1RxczJIZWpHOHd0cW1DZWY1ZTRWUzFEZWRJV25YaG5w?=
 =?utf-8?B?cVE0dXlHVk1FdDFnRVZrNm9WdjF6ckxOTzQxdWpGTS81dTI1OGtPVUtkZUR4?=
 =?utf-8?B?czNpb3FkY2IvZzBFV3djTTNHRmFxczFJZ0ZyaFpPczJ5OTVoa3MxTGlCaUla?=
 =?utf-8?B?UFJ1a1VVekROM1lsQ2ZBeWtmaFZNT0UzQ2JwZUV5VHRJQWZCTU9RSzhETFlo?=
 =?utf-8?B?dVBWWGxPdXFyTUN3Q3huMXN3NGVVVWNaRlRERTgxUEFVcXorZkpCQjZMenpq?=
 =?utf-8?B?NFZoaVAyb254NmZ0ZStEMUYydDA3MFo0dTV2cm5YeTBxcExQcUtmdDg0YU9B?=
 =?utf-8?B?K2xjbmp1Mm80YkdHUmFiWWdrbjVjbHpndU9lZ2txWlZjYU5NU1ExYW14QTYw?=
 =?utf-8?B?akFYQncvU2lXVmpBNExoN1RxOGxDdjZnUFd0WFY4NVlNQnBwNHljeW9JWkNh?=
 =?utf-8?B?NStiS3RRVm1pb2gyd0YrMlEzZS9rbGJUM0ZXaDdHeXRPSHljVlNWR1JaR2JE?=
 =?utf-8?B?WlA4OVZpV3dCQytOM0NXakl4Yno4eW9jWDVaL1NZNi9LRVJYU3BXbEFTb0lQ?=
 =?utf-8?B?SVlhYlkwYUxPWHc3SFB2cHJoMDVvKzcwam52MnlSZkNzd3BIcVBaVVZ5Um12?=
 =?utf-8?B?ZjRrVXlYS0ZETTFZUGo1UTArd3cwd1FjSE1ZOEhRTXRpRDRuY3JwUlkwczdF?=
 =?utf-8?B?YTA0UCtDMWtCSmwzSkNvWUNidUlvenNqSnhhWWJaMVZ0bG1nUlc2Wk9zMTBL?=
 =?utf-8?B?a3E1OHlzUEc4Z0R2Rlpjcm5KZ052UDNsbUxWeno3UnJoTHdWam5OeS90Q3lh?=
 =?utf-8?B?MGJpbVdidHQ0Zm5pbEk1anJ0Tk5ZNmw3UVlPV09oVFdQWTc3UGt3bjBrOUlW?=
 =?utf-8?B?SkFNajcyNTR0cVlGcnphcTkvUmJlN2VmdXEyU0hjb2s0VW45VGtFV3I3elI3?=
 =?utf-8?B?NUUwMU5aUDVMV3FZZnFDZTJXaldmQjFQWmFRamMwZUI4V2NVUFJlMlY5ZDZt?=
 =?utf-8?B?akZHTFlzQkI0RmpOMVNvMC96dllJc1Y5UEpOa2lnN0U2MGM1Yll4ckVRUnZ3?=
 =?utf-8?B?RDViUHlIbEhQUDhLUnBEQ2E0MVpLL29NVnNMcDluSFVrOFFzWTZGVkZZU0NG?=
 =?utf-8?B?YS9BMnoybmErbng4RjQwSTg5VHVPNmdRVW9acGpFckRKdlF1bFFtYkFybnFy?=
 =?utf-8?B?dDdidUNKS0E1cm5Tbk0rcDBvVnJMeFVCR3J3cDFwL0ZlempJZ2NQUXBlWHBT?=
 =?utf-8?B?NGdsMXlUK0t4Uk5lbVY3RXpJdVlEVk9Kc1lxVG1UQzlYekNVcUF6Qk5vNGFu?=
 =?utf-8?B?NkRPdUFVTTh2TGNXbDhqUy9WSWR3WWNWcC8yckVtNXUyTDJhTy90UjI4Q3JL?=
 =?utf-8?B?c0l1ZWdQelVaUldPWmJlZ1FGb2E3ZzZXZmR3Qnpua3A2ZnBsZjltL05NVFp4?=
 =?utf-8?B?OW91RHZYeGZUdUJ3VUs5L2VJcFJqcnNFMHluYkhYUUY3VitpaDJpRFhCSTFj?=
 =?utf-8?B?cW56Yi8xRDVDSENhNGo1L0tDWGl5Snc4anpnMVM1ajR2dGNvMWpRQWhvcnZW?=
 =?utf-8?B?YVFBTzdOeGJCcmtZWWZPRnJsbjRvM0NCY0xlc2JrUVB2VEx4TFpaZjVjOEdV?=
 =?utf-8?B?cVFhYVVRRmlWM0ZSNUJtT0VoNGt0MlhvZnJnOUs2ck9iUG9KaDBCb0lFR2Z2?=
 =?utf-8?B?YUptUkI2OFBVRHRERHlDNndIUWxJem5uQXk4MkxKcytiN2JwZHF1TnFBNkdh?=
 =?utf-8?Q?rmw4=3D?=
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: dd3963e3-f23a-4761-6707-08dd8436966a
X-MS-Exchange-CrossTenant-AuthSource: DS0PR06MB9877.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Apr 2025 20:20:14.5432
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 34cFbK1ED7CnecwjUKfNzPg6W0mmyNcLYPDqvYjeR1oullgGacrNu/MONC21Ji2p
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR06MB7867
X-Authority-Analysis: v=2.4 cv=bP8WIO+Z c=1 sm=1 tr=0 ts=680beeb4 cx=c_pps a=BzboTkwgGU/iU5aMRKiaVQ==:117 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=XR8D0OoHHMoA:10 a=lre9DRYkaIEA:10 a=R6gROWsbDshSZsEIA1EA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
X-Proofpoint-ORIG-GUID: qr6z5THz_SZuLC8hg7IFvTU4jdKEGxdy
X-Proofpoint-GUID: qr6z5THz_SZuLC8hg7IFvTU4jdKEGxdy
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDI1MDE0NSBTYWx0ZWRfX8jvp6o2KobCl 8nnxUjFVxxwfz0TZCl9BMpmvu5DW9rltVrlhp2vNycQKQnXY/cw+yjuOnWW1pzLgpt4A6p8i6g/ HR/q2o7q8zUij9LNL/VZt44HdtRFBAMRKR7rWSIl/dAl2U0G37w4juvVO+fJCg38PMhjVrrMFxb
 02yVrtYyAz14VX3cgQm8ee+fGlhIwIDsfBzE0UTlvnf9/gDWRw2lIKQ1OGbcShnK10vvQnxINiI k01ogrOj5BK3E4NOlP7vs7cjWIgInIRmeSTt2Ip3vf2Lk22l5Q+e5FIF78aW657hzNkXPVYYSma fYbkqbsY3qgGhoM7EyT9Gq79x0IhfdDQOw7dt8I2qvuRXMn63shgfCIjPljDoK0hZA33baMCioB
 RROT+67lrGVQ8eVL3+ljURoWr3oNQvvVH/9n1UEwWOTXgiLJiZGEBXKLmJRrfr1laWU992oB
X-Wisc_ValidFrom: true
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-04-25_06,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0
 mlxlogscore=831 spamscore=0 priorityscore=1501 suspectscore=0
 lowpriorityscore=0 impostorscore=0 mlxscore=0 phishscore=0 bulkscore=0
 clxscore=1011 adultscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504250145
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Well, you don't break everything. You are the reason Linux accessibility 
was not broken for a couple of decades.



On 4/25/25 1:53 PM, Kirk Reiser wrote:
> So, I did a apt full-upgrade the other day and everything blew up. I
> have everything mostly pieced back together except mastodon.el and I'm
> getting weird cron notifications about this list and thus, this is a,
> wonder if it'll work, post.
>
>   me
>
>

