Return-Path: <speakup+bounces-1411-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 9362FB9ACE7
	for <lists+speakup@lfdr.de>; Wed, 24 Sep 2025 18:02:12 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=math.wisc.edu header.i=@math.wisc.edu header.a=rsa-sha256 header.s=selector1 header.b=ojdDB/Ut;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 3A2B53815F6; Wed, 24 Sep 2025 12:02:11 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 16FF138157B
	for <lists+speakup@lfdr.de>; Wed, 24 Sep 2025 12:02:11 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id CEC0238159E; Wed, 24 Sep 2025 12:02:03 -0400 (EDT)
Received: from mx0b-007b0c01.pphosted.com (mx0b-007b0c01.pphosted.com [205.220.177.71])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 82E4238157B
	for <speakup@linux-speakup.org>; Wed, 24 Sep 2025 12:02:03 -0400 (EDT)
Received: from pps.filterd (m0316042.ppops.net [127.0.0.1])
	by mx0b-007b0c01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58O9j22R006084;
	Wed, 24 Sep 2025 11:01:45 -0500
Received: from bl0pr03cu003.outbound.protection.outlook.com (mail-eastusazon11012006.outbound.protection.outlook.com [52.101.53.6])
	by mx0b-007b0c01.pphosted.com (PPS) with ESMTPS id 49c2pdwyda-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 24 Sep 2025 11:01:44 -0500 (CDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xaCXkAIlrgMLY9J6/FRIncfvcXNUohnThOod1wgWK9/tq8BVHKZ6JKFlA+gcBkaXK7bck4MMcPaDLPWE+nzRO0XpRqR7rzl2s/Cpy7HRYmPRhaTSLa/LILA1Bhsa6ZGtw6izQpscPDM9x6iTiN7N3uOSfhCF+owW3FDg9Z2maXJs4pbkUwBGB1S+JaEGrTs8wJd0hHVnFIHI1LPhJh6837AXDQRRx1dbVZ1QImqAx9nWLK7+7VjIT/wjY8aYRilZS4tT1PgnQMHw3XO4KAflQgR8EQG88EkowAwyWxD+5wrHYIx9gi9oQK8HDLCe5B39RLIPrLkRDZUhYEzNJGHMvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5kqncKsNMMju0HW70DXlGyonMsgjWRWyNCb/gPob9Qk=;
 b=m4QpvgVJB8AQ+uOPgV70x9cDaAXcU2v6yv7m2+jHwzCGf84+2QqceE6XQb8SzLWuyjrdWTB/B7ZiZyQYmZVDXjWmTjNItmpvPkR4qfj2sfXaotrMAsq+PZVl5n57F7izObY4c1v3aFDfXRRFqiSvLgfYNdcSiL8wuO6qAqRuM3O2Z67PiaFalxaa77PL2gbX8XdR34Wi7EMaDFDdnSL5VtsKRJS+43A9WmU3pnWATHtWGBif4guPlbUJ2dfjEtDBJ/WFmoAGAnI8x/B42KxXGv4jBXEJFsGAJB2T5meYwpifV6wWikgAhPbj3k/F3D3U5cdHlccWUcDVmz0L3Du92w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none
 header.from=math.wisc.edu; dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=math.wisc.edu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5kqncKsNMMju0HW70DXlGyonMsgjWRWyNCb/gPob9Qk=;
 b=ojdDB/UtVVrKb/4FBunMZLvwYYdAdyz7YKHPEuDzGVkLiJHdGRlGsOZtDEnZp2s2B9d+PIfN9hinmeNvMzXkfY+ojbhAMZLD5Kuzd1rgdShkA3rr58xq+wcTIn25ukoBjG3Ul4fE+qeSvSUfx+vWbj3RbS4Ni8D+KcKuTpe8ArAiCSiWtE7jeSpS5fd6OKmTXoqruMskxsBgGeYlRBAI77r+YQaWDgdpEKW8fIr4ab3eW8JoFUmAFopo8zD8GNtCHLCJMVMPmtzmzzEtR34Hw/6chJDrcy+tTINeviqS6XGmSmcRt2+rstV3B2zNVJ4mrUQiyhcC7mBD8nvTXZcWSg==
Received: from DS0PR06MB9877.namprd06.prod.outlook.com (2603:10b6:8:1d5::14)
 by PH7PR06MB9198.namprd06.prod.outlook.com (2603:10b6:510:24f::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9137.19; Wed, 24 Sep
 2025 16:01:41 +0000
Received: from DS0PR06MB9877.namprd06.prod.outlook.com
 ([fe80::a347:6162:9bfd:9b91]) by DS0PR06MB9877.namprd06.prod.outlook.com
 ([fe80::a347:6162:9bfd:9b91%4]) with mapi id 15.20.9137.016; Wed, 24 Sep 2025
 16:01:41 +0000
Message-ID: <01897751-ddc5-4bfe-be6f-0b751079597d@math.wisc.edu>
Date: Wed, 24 Sep 2025 11:01:39 -0500
User-Agent: Mozilla Thunderbird
Subject: Re: Question about blind CLI use (was Re: "your browser is not
 supported anymore" ...)
To: covici@ccs.covici.com
Cc: Jookia <contact@jookia.org>, Gregory Nowak <greg@gregn.net>,
        Karen Lewellen <klewellen@shellworld.net>,
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
 <m3h5wsu4py.wl-covici@ccs.covici.com>
Content-Language: en-US
From: "John G. Heim" <jheim@math.wisc.edu>
In-Reply-To: <m3h5wsu4py.wl-covici@ccs.covici.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: CH0P220CA0013.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:610:ef::9) To DS0PR06MB9877.namprd06.prod.outlook.com
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
X-MS-TrafficTypeDiagnostic: DS0PR06MB9877:EE_|PH7PR06MB9198:EE_
X-MS-Office365-Filtering-Correlation-Id: c4e99fc5-b252-4e14-f97d-08ddfb83a6b5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|41320700013|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?WjhSaDNrcTN4NEpzczVUdCthdUxIK2ExK2NTMUZ4MlBydmxLVW05dldTRTFH?=
 =?utf-8?B?QktmeW5UZm91cVl1SGd0Rnd3WUVrQUpoZHJjc1RIL0d2NXIvZUc0TCtkUlhQ?=
 =?utf-8?B?UDlZMG1mb1ZFMitaZGxvaExMd2trWEFkR3hTRW1EN1RTdWFSeW8reUpGNEVo?=
 =?utf-8?B?Sk5ydUNnUDJselRGMjRzVVRYWkx5dXJ0aElOR3pvdkp2SGZ6U3k0RVFscU9t?=
 =?utf-8?B?bGovT3JtZXZhWEl2Z1UzVmc5QURxY2VFVk1ycCtucXpmNzkrM2IyZHVQL3JV?=
 =?utf-8?B?emRlVlk1amJUSDF4YkZCZGVWK1MvcWNBNkdEbS9JVzZPY3NGUDBTZVRZWWxU?=
 =?utf-8?B?UmNaQ0NRMWF5SUhHaFNSZ2hFL0lTVjJrY1d5SUc0SmNJTk9qM21vMlVuWi9H?=
 =?utf-8?B?K0padGNVQ3hWNkFydUplVjEvQlZnMTNFRUI4R2VkSWZ1aVY3MFJFRWwreUx6?=
 =?utf-8?B?VlVCbWszWUwwQVNKeHFEWjN4bHZrVGUyTVpXemdaOC9jdzZaVGZCTGozVFNQ?=
 =?utf-8?B?Q0dzUFFTVGlMTFhoRys2TEtHQkwyYWFVNGlsRS8ycy9zSGJueVF4b3dnNTFl?=
 =?utf-8?B?Q3FCbjJqRkQ2bkpHcEFxb2RtKzVac3RtU3dPUU9aYnVhaFV0cDdqdWhtVDJp?=
 =?utf-8?B?UHFEUWphWlQyMW91YU50Z1h6aFBGNmZLaGpjczVXNmNXR2RGRDdHTlhlT2tC?=
 =?utf-8?B?Tzh0ZDJWZmp2Rk5yTElIM3hlRTRrNzR6cWdqVVAwVGtnOFNxdlYyVVRMMFJR?=
 =?utf-8?B?My9ZUDVia2l5dmdsS04vYjdBSCs3Zm1zUmdXYi9yS2k1OFg5ZmUxbGpvMDVm?=
 =?utf-8?B?RlRiRFUxMm05WS9GQVFEYzVKb1E2eDQwSlNiUXdVajg1dzB2Qi9odlF1bnRr?=
 =?utf-8?B?aVNWeFI2RTRabWI1T25rNGt0aURhaTVJN2RENnk3Y2ZNTFp1Q204TlExTWtV?=
 =?utf-8?B?alhzcDhCaWpXc0tIMlQ5RmU2NFVqTjU5SFpySzRUQmg2TCtNMUszYlBXTU9V?=
 =?utf-8?B?ZEFxY0tkM1ZpdjRrQm1RUVM3dFJnRS81Zi9zSnJDcWl4RTFJUlRBNWFqTTRj?=
 =?utf-8?B?WEF2VmNwV0IvQ2ZvczMwK0xIK1RaRjdteURtUVp6NkZpRVRMSDArbnYyQ3p4?=
 =?utf-8?B?TmZDL3N0RS9FUFpuYWthOW4yVjFabUVkZnBDU0I4R0VWaUJCd0V5eHRLVkZC?=
 =?utf-8?B?QXQ4ZWwwYnhyWEIwN3B6WlFkZlA1bXFvbnZ1Tk55UHQ4Yk9YNTJobGRCZ0JG?=
 =?utf-8?B?K3hkZnBqd2xSWitiVGNZeEd6Vm1rd2E0UFRvSWJPN293d1VjdmJicjByc0F4?=
 =?utf-8?B?eE1Sc09YNXFWK0pocS9BTUNudWNlWDNqQ1lsOERpMEl4UGVWeFl3a1B6bnUr?=
 =?utf-8?B?L1JHUGp0OHJvcGs5SUVVZ3EzS0NBUzM5MWttclVtM21odWxlSEQycDB4cERi?=
 =?utf-8?B?cmZNSEdmL2VTalpiMklDTFFjSmpDbHNKMjZRMnN2c3NmSGlYTXkveG1SUkli?=
 =?utf-8?B?TDdYaGFBKzlFaG5FY0lERG4ydkVobWtTeW5aTU9CS2ZITklUc0xjNUtSbXJp?=
 =?utf-8?B?VWFpQTZTa3hFR2c1eG9keTFVa3pscmpwQkZtWGh0OUlTTzkvNkJUaEplc1FG?=
 =?utf-8?B?czEvVnl6ZElCZksyK25qTkdoYS8wR2hYcUN0SlpOc05kbHI5elNDSmxkRDFn?=
 =?utf-8?B?RmFpY1gxLzFwbGdkUjgrVGVYZEM0VXVtZDU5WndUeWdmdFREMFY2amNib1o0?=
 =?utf-8?B?ZXJpekEvYzBTaGNDOVo1V3R5blp6bGQwanVScHh4OW1Sb1I1NUU5bmJTeFAy?=
 =?utf-8?Q?IYigkEaflJ6LwBqFIr/ru/HpYXjcxLPJ9HeYk=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS0PR06MB9877.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(41320700013)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?UHlWeHBQQTdRWE5MWWlCVytqS0hqN3Y5dzVjaDRqdzZGUkMvbDcxdUZ6aEFx?=
 =?utf-8?B?OFB1OXBzMTNFSHc1allFWlJLdjJpQllseVR2R3BDOVZ0N1VPUWRCWkRUL0Ez?=
 =?utf-8?B?dzY1UEJJVUhZRWtqTm81UlVpWnNGOTUrL0VGYVRydjJyTmNteGJkS1U1Vzc2?=
 =?utf-8?B?RURBazA3RjVXK3lwUE5GRGxWOW9rQ2VuNnM4ZXJEMXIwY2ozZ1BOSmhoYjV6?=
 =?utf-8?B?bE1CR3hrVXhZeVdoVWVSWGtiY09FR1Z6VFhCOUlJODY0MTdWaHNEalc2Zlh6?=
 =?utf-8?B?dzRwUmNjajhHZThFdXhmUXVLZlAvU05WK2dKRkdLUmt1Z1hIMiswclBrdllI?=
 =?utf-8?B?TUpNWFB3anFhSlR3M2k4WFV2WVhqMk1WVzJvSFZiY0Fja0FOYkVmbFRKY3Ji?=
 =?utf-8?B?cGZ0SW1YY01HdVJ3RmxNZklpeVkrU1F1MU5MWW9hR0hkQnYybHNrYnZQOXJ0?=
 =?utf-8?B?UUYwSGR3c2hoNUZydzhmZUhYdEV6U0JvZXNjZ2lOYVhaek1MUVo3Q1o5c2xp?=
 =?utf-8?B?MnRCMWluTkh3N1plZnlXNXpVOXFBeHdGMjlJaHVnSVhxOGVqWWRaNGIyZ1A4?=
 =?utf-8?B?eFE4a3I0OW5BRENaQkVKT3FmSHdySU1NSFpZTFJ2YmxnV0ZjY3NTSHRTY0Ez?=
 =?utf-8?B?blREclNTUStaWlFjYlNDMHBIRTYrZllpUTd4TUZXMFZFK2ZOZHQ3Ym01Y3pH?=
 =?utf-8?B?czlERDJqeExjNGtOZVNleVVaMVdpOUMvaWwyYXQ5d2hKSFNucWxOQUpITm43?=
 =?utf-8?B?Q2VwVXJmWUxaRjFHQkNITnF3N2wxaE90dlRrNk1QaGRoTXJQcGhVY0EySlIr?=
 =?utf-8?B?WW9UeEluNkZyN093d0tlbjRmOSs1Y1hrR0RIM1VuYVhmMWVnNnI2UUlQZVRG?=
 =?utf-8?B?TkhNOU1XTTduMlBoOWh5OWRaUXVTQXlrdWIxbzJzWXNTeEUrNmtSSWkvMmFp?=
 =?utf-8?B?Z3JYeFhrbDlRd2dQL3VaWjIydklvcGtkOGoxMExScGt6VDRYd3k0Z3N5dGxK?=
 =?utf-8?B?c2dXV1RvekE1S2I3QVZYbUp1MWx0RGg5aDdGU3pDd2dpS0U3eDNSUTRycWtB?=
 =?utf-8?B?SEJCSTlMWEthNlBzd0hYUTJRMm5GZGVrTWpiZTFia3hYV2FYKzdBUnJyMVNK?=
 =?utf-8?B?ek1uOWIwOEpOS0hSRjdXcUpXZUN4SnBqR3JRaXZSZjQ3Z2FWdUJob1VSZDYy?=
 =?utf-8?B?ZTNVZzNJYXMxR3pXdUt1enBPalZCMHo2UXhMU3gwU3Y3UEt0a0J4QmJtNk55?=
 =?utf-8?B?dEtpa2tFSWtFZXFqZEd2Y0xLRUtDZklmd3p0SGZUdUdNUE9tR2NKSjA4c0ZY?=
 =?utf-8?B?VURxNUpGZ1YvUFYxbmxsL0tXRGVEWmNva1BOTHFpcFlpSWd6ek8walJoeDdt?=
 =?utf-8?B?Zmp5QjdyeDAyZEhUN21ISWNObm03cWh1ZG5INmVPa3Zaa2NYMWpldnhLYi9O?=
 =?utf-8?B?QkpYckdHWTZ0Zm81ZGE5L0UyRDNtVVBUdm5uakFNa2R3MU42bDN6VTNXL2pU?=
 =?utf-8?B?b2daNjVqM0RMQlNGRkpEYmZHMW5pVC9WTTIycGdwUjIyNUlxMXAyU0Nyc3M1?=
 =?utf-8?B?SmdVZ3JRY0E5TGVlblFuYTArNFFieVlKZGtKWWV1K282anpMemtrZnFBb2lU?=
 =?utf-8?B?dUhUb3RiR3ZyeUlnTUVDY0Rrd0kyZ2dqbVVTVXlXTEQ0MVlaMkhxNThVdkFJ?=
 =?utf-8?B?WEVkWHlrZHI5Z2NKT0FQcXNiU3pFTTN0SlBPU2tCVkZPVjhNSHc5VURBdHE4?=
 =?utf-8?B?aHF5YU5Zdk51clhDMzdaeVh3eGR5dURlRHFwNnA5VDBMS2RER1VGeVY5WmJw?=
 =?utf-8?B?ZElQM3RCMzVZcnZYOGFKak1OTi8yNUswK1ZneUpUZ1ZSbFhyQTZwSXhrNktK?=
 =?utf-8?B?RVhsUEYrRE8zeTQ3QUFpNk5ueEEyNnM1YWxJSEd5MDQwQUtySzl0LzkxQmRt?=
 =?utf-8?B?R3FJOUN6RHhQUFpueW50MmU0R0xRcXpYWDVReS9UNGh0TDFYU1hYU2haS1dG?=
 =?utf-8?B?Mi9HbStGaEpJaUl3anRJc0ZicTFzS2pvT0hIdHNQZmxxZmdqZ2VGam5tcFE0?=
 =?utf-8?B?alZqQUE5R2ZYMXlrcGRSM0R2b3BWUUwrUFFWS2VXdVlsS2hhUkZNaFBPRGhD?=
 =?utf-8?Q?QiI7JvjKxFB5yQHRu8jSauLHY?=
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: c4e99fc5-b252-4e14-f97d-08ddfb83a6b5
X-MS-Exchange-CrossTenant-AuthSource: DS0PR06MB9877.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Sep 2025 16:01:41.6166
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LeD0kvUiK0mNy1vWPHuVljIJNBJ5BFGGuQOTUN+7vqvQLRUHfBVvhkM8+iX4Im6v
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR06MB9198
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIzMDE4NiBTYWx0ZWRfX8MqsiRVnMIDR
 BDG126pOReIpYSrXcW4K6UkagVKuLTIHImm9s5ryKWwi5w7rFqceqPshGwqnYV1u6A1LVsw6dan
 BjsNF2m3N959SMsAf/F5jC0HgZeReYhPIGT8D0lir2Z3a5lqmxhzs80XW3Da1p7y4Ba7Lkm1QXD
 7/xHYd7fmvXxsKe4CbOVB2RrbXPkmDp6FQqRNQyfeJAXm1t0rusPpG+83gRcPkHxVADuOu1MTl5
 kb+wmMv6pQYckLJnRBQZuq015TBtru0PWfmT4cPVeqrBkD2I2p7TVGmgFpvLnfuzExm1SF3Uu9D
 I7nDL7LhcCGzqSRB8hm5D9nfzwZh3yR3wZ9d36TkGtcVIU425PUC4n2aU6YShYWvP5kEueR4HBD
 FJ2zcIt8
X-Proofpoint-ORIG-GUID: ra3METVMOB8icep2RCYnnMB8YpBdEDtW
X-Authority-Analysis: v=2.4 cv=YMefyQGx c=1 sm=1 tr=0 ts=68d415e8 cx=c_pps
 a=gX39by8dV5dKUPXqjYrUqQ==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19
 a=R3fr6vWxGIgF0CYV:21 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10
 a=lre9DRYkaIEA:10 a=DyznqomoAAAA:8 a=hEK2XftRAAAA:8 a=LNhb960rAAAA:8
 a=q5txbtUnAAAA:8 a=gbTzYInYDgmamdeAL6gA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=pvvZm7_9ER1OwvpV3Ftp:22 a=duXMUGqUtLRgrHROm9qa:22 a=RsootnAUgZ_jVqzlXDew:22
X-Proofpoint-GUID: ra3METVMOB8icep2RCYnnMB8YpBdEDtW
X-Wisc_ValidFrom: true
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_04,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 spamscore=0 impostorscore=0 clxscore=1015
 priorityscore=1501 phishscore=0 bulkscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509230186
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

I personally own a DoubleTalk that is probably about 25 years old. My 
employer gave me a TripleTalk that is probably about 20 years old by now.

I don't believe there are any hardware synths being manufactured 
anywhere in the world any more.  So that's a problem. The best 
alternative for getting access to boot messages might be a braille 
display. I have the braille display from an old PacMate which is 
probably 30 years old. It's just the braille display, the PacMate itself 
gave up the ghost many years ago.

On a Debian based distro, getting speech during boot via a hardware 
synth is as easy as putting the speakup kernel module into the file 
/etc/initramfs-tools/modules. You then have to regenerate the initrd or 
you can wait until the next time the kernel is updated and it will do it 
for you.

I do not know how to enable software speech during boot but I'm pretty 
sure it's possible. In my grml4speakup script, I enable software speech 
during boot by putting a script into a folder GRML designates for that 
purpose.  The developers of this distro, GRML, specified a folder you 
can put scripts in if you want them executed during boot. So I wrote a 
script that puts a script to start speech in that folder. But of course 
it only works for GRML.

More info on my script can be found here:

https://people.math.wisc.edu/~jheim/GRML/



On 9/23/25 6:30 PM, John Covici wrote:
> What synth do you use -- I have been using speakouts, but they are
> dying, which one are you using -- I also want to keep using such a
> synth particularly during boot.
>
> On Tue, 23 Sep 2025 13:04:38 -0400,
> John G. Heim wrote:
>> BTW, the correct spelling for that early screen reader for Linux
>> is Gnopernicus. Googling shows me that Gnopernicus was the
>> default screen reader for Gnome from 2001 to 2006 when it was
>> replaced by Orca.
>>
>> The screen reader for Apple I was trying to think of was
>> OutSpoken by Berkley Systems. Wikipedia says development of
>> OutSpoken was dropped after Apple released VoiceOver in
>> 2005. While that is probably technically true, as a practical
>> matter, OutSpoken was no longer a practical option for some time
>> before VoiceOver came out. The libraries at the University Of
>> Wisconsin stopped buying Macs and got rid of the ones they had
>> because there was no screen reader.
>>
>> Speakup was released in 1999. So the era I'm talking about is
>> from 1999 through 2005. You could use Linux at the command line
>> or in the GUI for free. Windows had a good screen reader but it
>> cost $1000. There was no realistic alternative for the Mac.
>>
>> It seems to me that Linux has always been a step ahead when it
>> comes to accessibility. Well, at least since 1999. Before 1999, I
>> used Jaws For Windows and administered my Linux machines remotely
>> with tools like putty.
>>
>>
>>
>> On 9/23/25 12:27 AM, Jookia wrote:
>>> Interesting, thanks for sharing. I never knew about Gnopernicus.
>>>
>>> On Sat, Sep 13, 2025 at 10:35:51AM -0500, John G. Heim wrote:
>>>> One of the biggest impediments for a blind person using Windows is the cost.
>>>> It's less true today than it used to be. A Jaws license was over $1000 at
>>>> one time.
>>>>
>>>> For many years, it wasn't even possible for a blind person to install
>>>> Windows. Well, I used to do  it via Linux, no kidding. I booted into Linux
>>>> and ran the Windows installer in an emulator with an answer file. That
>>>> worked really well until it didn't. At some point, Microsoft changed the
>>>> installer so it had to be run in their pre boot environment (whatever).
>>>>
>>>> Even after the install, I had to install a dumbed down version of Jaws that
>>>> worked for only 40 minutes.
>>>>
>>>> Also, there was a period when there was no screen reader for Ma Cos. There
>>>> was some 3rd party screen reader for the Mac. The developer dropped support
>>>> for it and some time later, Apple released VoiceOver. I was lucky, at the
>>>> time my job did not require me to use a Mac. But the libraries at the
>>>> university where I worked had to get rid of their Macs because it is against
>>>> the law to have computers in a student lab that are not accessible to the
>>>> blind. BTW, that's why Apple so suddenly started caring about a screen
>>>> reader.
>>>>
>>>> IIRC, at the time of the above events, I was using both Speakup and a GUI
>>>> screen reader called Nupernicus. I remember walking out of a meeting with a
>>>> librarian to talk about screen reader options for his lab and thinking how
>>>> lucky I was to be a Linux user. I believe that particular library replaced
>>>> most of their Macs with Windows machines and paid like $1000  each to
>>>> Freedom Scientific for Jaws licenses. They put in one Linux machine just to
>>>> see how it would go.
>>>>
>>>> The computers in the student labs in the Math department where I worked were
>>>> alwys Linux.
>>>>
>>>>
>>>>
>>>>
>>>> On 9/13/25 7:14 AM, Jookia wrote:
>>>>> Hi Greg,
>>>>>
>>>>> Yeah this is unfortunately true. I'm glad FOSS is still appreciated by people.
>>>>>
>>>>> Jookia.
>>>>>
>>>>> On Fri, Sep 12, 2025 at 06:53:43PM -0700, Gregory Nowak wrote:
>>>>>> On Fri, Sep 12, 2025 at 03:31:55PM +1000, Jookia wrote:
>>>>>>> I know this is the speakup list and I'm talking to an extremely niche
>>>>>>> community here, but I'm genuinely interested to know: Why do you use
>>>>>>> computers this way instead of like Windows or macOS? They can do much
>>>>>>> more useful tasks.
>>>>>> They're both proprietary operating systems. Windows essentially
>>>>>> hijacks the PC these days, and dictates to the user how they should
>>>>>> use it (E.G. requiring the user to register an account with the
>>>>>> developer to set it up, dictating when and what updates the user
>>>>>> wishes to install, and so on). MacOS is tied to hardware from one company, and only works on
>>>>>> that company's hardware by design.
>>>>>>
>>>>>> Greg
>>>>>>
>>>>>>
>>>>>> -- 
>>>>>> web site: https://urldefense.com/v3/__http://www.gregn.net__;!!Mak6IKo!PJ5X0c86hX4IZtoBfv1kpLI0rcSQhBtXAThLGAI94dOL6KYPF7-9QJySUhuUeXnUO8FQFZp1QNEHanR6Yeo$
>>>>>> gpg public key: https://urldefense.com/v3/__http://www.gregn.net/pubkey.asc__;!!Mak6IKo!PJ5X0c86hX4IZtoBfv1kpLI0rcSQhBtXAThLGAI94dOL6KYPF7-9QJySUhuUeXnUO8FQFZp1QNEHOOMsI_E$
>>>>>>
>>>>>> --
>>>>>> Free domains: https://urldefense.com/v3/__http://www.eu.org/__;!!Mak6IKo!PJ5X0c86hX4IZtoBfv1kpLI0rcSQhBtXAThLGAI94dOL6KYPF7-9QJySUhuUeXnUO8FQFZp1QNEHcie2CdA$  or mail dns-manager@EU.org
>>>>>>

