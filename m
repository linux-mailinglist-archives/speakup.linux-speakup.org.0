Return-Path: <speakup+bounces-1489-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 897E0CE8197
	for <lists+speakup@lfdr.de>; Mon, 29 Dec 2025 21:02:30 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=math.wisc.edu header.i=@math.wisc.edu header.a=rsa-sha256 header.s=selector2 header.b=SIUOwQpt;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 306FC3818AB; Mon, 29 Dec 2025 14:56:53 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 0DFF93817CF
	for <lists+speakup@lfdr.de>; Mon, 29 Dec 2025 14:56:53 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id DAF403817D0; Mon, 29 Dec 2025 14:56:46 -0500 (EST)
Received: from mx0b-007b0c01.pphosted.com (unknown [205.220.177.71])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 7076E3817CC
	for <speakup@linux-speakup.org>; Mon, 29 Dec 2025 14:56:45 -0500 (EST)
Received: from pps.filterd (m0316046.ppops.net [127.0.0.1])
	by mx0b-007b0c01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BTJu85s3487865
	for <speakup@linux-speakup.org>; Mon, 29 Dec 2025 13:56:40 -0600
Received: from bl2pr02cu003.outbound.protection.outlook.com (mail-eastusazon11011023.outbound.protection.outlook.com [52.101.52.23])
	by mx0b-007b0c01.pphosted.com (PPS) with ESMTPS id 4bc07v006h-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT)
	for <speakup@linux-speakup.org>; Mon, 29 Dec 2025 13:56:40 -0600 (CST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=e7usO7jl1dOQgP+BZaeefJC4IKtX/+H4tcs/ZrD/FjhaeumsK0/gxzLbgYoqy2X6Hl7vJgY89m3B84MWxAHqC3ZPYJ7tT5G/9NMFs3IZkyDXaAuERkHmnhC+bAG4joCYDWqNfrjYtBKsKaGLMaZ1yjmfd6hA2SEYC4zTxG5kRxZ5xY4Q6ae4bPWk5kRgemPw1Dy6Zsowy12IQYnbOKsV/5LDgP01v9QEikAxgGDaqDunUEArWyUZEtGM8VI77C+Z2MTfYXXUHWSx6TohQknp5siCIam/BJ78XZ0k8ykNjZHykYZeNjXlW9MoZ5atgVFKO1qRpG9j5fUMsx9O4xMCSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ha7Na6rcq3aUnz7rbAxO/hv1YGS87sHJbsO8mSO/GDM=;
 b=GTgM6BQ64ra627j/JRb7O6l3tJKk8jQL9VLJpOoy0T5YiJ8gBW1LcH8+8YStMtiEPWqQt3HVqpogNUob4UJZMlPzvngqSKyLHvAuH0c0RxgWMjtE7xIZv7+/KXJiE7ZcxrxxgE3Uv3zFWoDin+13O1yhQlAX3K2b29XRRuURcLyxEDx8MQ9tf5gYzmpQHHPO0uyfDXekCMNwEEfBDSOPPMhEgHxHuluUZ4CPRcek7bf3WFozN6ttl2zW6T6eKNbgtokp4Bfddzuv7LPClJD70SmE3/SdVF/5CuTbMOGA0xkgB91scNUHHH13Kj98jZ+3yoDQwGONxY6jeXQX3uG6oQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none
 header.from=math.wisc.edu; dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=math.wisc.edu;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ha7Na6rcq3aUnz7rbAxO/hv1YGS87sHJbsO8mSO/GDM=;
 b=SIUOwQptoxmlgObblkQmz+a4Gcl+uqNy2nMAbgEcMz3U7U3llq5X4Pa9BmepX4sntuC0DTCEg5y6SOYlpmNOyJY7TtuS5ngQatQ9I3LXAY5vxBORe2D1f4dn+rKEklhOEzPTkmfQpjcF+n99W/pSnrZuVkhxtxAQPs6fYrmy49LJsRLUpUL+zOU+BtPfF9LIpGp04VXWfK8eTYtaAaRcWgPG/qxZ9hULT93PmlgYjZJD/RjLJHjAciAyRGkwApwTrj/HhAPFx6r20DnVAa/hewwzKcL54dBPql8f1CLKJELxGAdM5MCwSIk8fJYfSwK+wkfulWtamwmg/oOyGougag==
Received: from BY3PR06MB8195.namprd06.prod.outlook.com (2603:10b6:a03:3ce::19)
 by BLAPR06MB6771.namprd06.prod.outlook.com (2603:10b6:208:290::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9456.14; Mon, 29 Dec
 2025 19:56:39 +0000
Received: from BY3PR06MB8195.namprd06.prod.outlook.com
 ([fe80::a7ad:fb62:4389:fd8b]) by BY3PR06MB8195.namprd06.prod.outlook.com
 ([fe80::a7ad:fb62:4389:fd8b%5]) with mapi id 15.20.9456.013; Mon, 29 Dec 2025
 19:56:38 +0000
Message-ID: <4946952f-7980-4979-bb63-745750da47dd@math.wisc.edu>
Date: Mon, 29 Dec 2025 13:56:37 -0600
User-Agent: Mozilla Thunderbird
Subject: Re: Building a hardware speech synth with a Raspberry Pi
From: "John G. Heim" <jheim@math.wisc.edu>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <4f9075a8-0252-46f9-8594-1dab9286474f@math.wisc.edu>
Content-Language: en-US
In-Reply-To: <4f9075a8-0252-46f9-8594-1dab9286474f@math.wisc.edu>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: CH0P221CA0006.NAMP221.PROD.OUTLOOK.COM
 (2603:10b6:610:11c::29) To BY3PR06MB8195.namprd06.prod.outlook.com
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
X-MS-TrafficTypeDiagnostic: BY3PR06MB8195:EE_|BLAPR06MB6771:EE_
X-MS-Office365-Filtering-Correlation-Id: 4ac537ba-d44c-4e0a-db1d-08de47146120
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|366016|1800799024|786006|41320700013;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?dzhzTDNSbnMyZXdhc3dyVnBYc2ZueGpFVlFPbVdFNkhSQUd3czN1eStsNUdY?=
 =?utf-8?B?MUxQRGFsaG1lY2tuVGFUbjk4NG1nUnBWYThucVVmQXFFVVRWWndkWXRtZzd5?=
 =?utf-8?B?T0pOWnF1TGlqT0U0US84cytSVTVyWkYrTHJJS05oaGovSHd2VThrVUsxd1FH?=
 =?utf-8?B?N2M2eXdva01uYStid0d4N3M3TnhSMXN0YmNHR0R4eGl0K1BaOFBoS1EzOHhJ?=
 =?utf-8?B?bVZCYTBlaTQ0UlRQVTY2MnQvOGpUOEEydmxIODlac3hBeUJ0VHFFcElpVTlT?=
 =?utf-8?B?NHFlc2pPdklhekdNNi9FRzBNNy9rSmlTSjdIR1RRRnAzU0xCNzN6SHMwMy81?=
 =?utf-8?B?V1FabFNoVFhVOUJGOTZYZUpVb1dHL2JUbjZKWjFNNEVLNmhUdjNOb3JQY3ZQ?=
 =?utf-8?B?eVNXZVQwQVhOcExBSWV0LzA5K3I3MUQxLy9lTlJJSEZiNnFVQ3VrSXZuZENP?=
 =?utf-8?B?aFhFODA1M2x4TEZocjZ3UG1EZXgvZTdvbzRUSkRCT3AvY2J3S1ZaY3BHRzVW?=
 =?utf-8?B?QmlES2dXRlBabjA4TS8wekNWWjVRNGRlMHhpd0NWVnh6K2ZqaU1yNm85elhi?=
 =?utf-8?B?czBxTFJBZVhybnVHV1huZU9DZS9rYjV4UXZkRFBjUUxRZEVjeDFhL1lvUktv?=
 =?utf-8?B?dzFMNm55WkpoNGUySWYwd2h2L05Ebm5XUzByZGoxeE1aWGJ1a1FVY1l5Q1Rr?=
 =?utf-8?B?cDQvekVaT2hRL0c5K1NYbU1jeDVJZ0tBVk5kQmdnRThHRDRhUjhOSnMrNE9F?=
 =?utf-8?B?MEdreGs2RXY2cHBpRFdNZ3F1eWU5OVkxanFtcDF4N2VkOUE0ZHZvb2JuT1RE?=
 =?utf-8?B?SzdjRU1LVE9UUmtPQnlXZmlwblZPa3ZsZXZCRXE3d3lGeW9EaTlKaVhnTGs5?=
 =?utf-8?B?Z1hGUm1lVlE2Y0FEMjBrZ2I1WkFmWXRMV1BXd0EwQ0Z4OXFab0UrOHlPNFR2?=
 =?utf-8?B?L2dKakFlM3N5dVJ5YmR6S1BKTkhsUmZ0OXo2NWpmR1JNTndvQjh4ckg5aEpV?=
 =?utf-8?B?K2xBdzYxeUdxNS9uckF4SjVhbXY3aytJNmhPZ0dQT2VUbUtrK2xxbkNmTG1Q?=
 =?utf-8?B?MTRXK0dvQ3llbzc3S01LNzJsSThiVU5vT2V2UDFmMVRFZU5YN2wva2FMeVpz?=
 =?utf-8?B?YTRSTFpJSFRhck0zOW9mQXJvWkhOTzc4Wmxld2pEbDFnZld6bWxzYjBTQVlX?=
 =?utf-8?B?dnhMQ3VRVVRtOGhZRCtNcTF6OUd1N0lNdzN4NFBYTXo0UUt3VXBLTzdDTEJH?=
 =?utf-8?B?MTBZekZCOEZFRk1qVkIwREM2bjJ2cU9MWGZQckp2WnR4N1hRK2FpZGtMQVFi?=
 =?utf-8?B?dXc4Kzd5ZkRaaUUwRk1OcXl2K1BoVFhnZlF2dHF4WDIyQVNpK3FsUHo2THBZ?=
 =?utf-8?B?M040UHM4Z0dsTkpKNVQwcGNKekM1aUo0d3dKTWJFUVYwTHN4NDJqZGpkNDB5?=
 =?utf-8?B?YnZTdDVWN3BpcWJHckZrendTLzV6Q3QxeEhxaE5TdEtKTk5OMGFoRGxJSmo5?=
 =?utf-8?B?Q2JXcG5KclAwbkpvYXFCVXZ3S2xoTW4ydlFsc083OEdRVE9vM01nZ3c0UkRS?=
 =?utf-8?B?ekVOWjUwak9ZUFY5Q09UOHNvZ292QjZVRlpmTHVsbUxtZSt4c3YvZWVhVGo1?=
 =?utf-8?B?UjRteDZKUm9mV1RUaVJTMEI4NkVMaHkycVBNNjc0c0lrQStCT3hJOHRSZXNL?=
 =?utf-8?B?ZnpZUWtwd2RnbTlGUzEzcExCb2lrUlZKeXVENWhVdm1nSElDV2VBSytBdERC?=
 =?utf-8?B?QUFuYjFob3VCY3BOZENXV0hSMzJObTFHeFJFZmRMV0xlSFRqblBweE9oalBC?=
 =?utf-8?B?bUhhMFpURjEvdCtvdlRqRkdTemZNeEd2N2s0Q0R1MldlUkFKWmZiZ1owV0Fw?=
 =?utf-8?B?ZkhwRXR1aUcvakU0WXJkR01yMTBVcFdPblBzeElBbzZqQlVENSs1amhTYzNm?=
 =?utf-8?Q?yrRlugem3O5otk70n+GX2P2CnFwMeVVg?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY3PR06MB8195.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(786006)(41320700013);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?UWZHKzNNUENERS82eWFOYW5haGRFSU1rZnZSVjU4K1FPWm1MMGdZVjZJZWpv?=
 =?utf-8?B?aWNJYzcxUlVDWnd5N0RNb3drZEFMaE9FNDZ3STVhMWNpZFMzcUV6N3Bmc2Uy?=
 =?utf-8?B?M0lkZm9Ec2RYNXNiOWsxaFlOdHV6VUxtcnZIOEt6cDVVdzQ5NzhxUitVM1l1?=
 =?utf-8?B?QkJhcG5iV1k3RzAybFdJamJLbWV0RHpuQ0lOb1YzdEo1cGVBK2JEUy8rRDFR?=
 =?utf-8?B?M3BNZ2JwSWd3d2VNemk1S3NIai80WGcvYzBsdDZlSlZRMHh0OXRUTW1aUWJa?=
 =?utf-8?B?dnh3NncxRDBlL1d6NlVVc3BiZFVNN25vVElQYlE4T3R6RFNiY0tYSDZBQ1FZ?=
 =?utf-8?B?M2I3SVd0T0JKOU5PYUpPSkUrZnN0cTRoL3R0ZUhmUGxaZlZvU1kwMks0S1Ru?=
 =?utf-8?B?clBqb1VabDl5eDMrOG0zY09zK2FxeHl2R0lZZFhpdEg2WlF5ai8xSE1pRHIx?=
 =?utf-8?B?UWFWZHNJUzZwRGtkOURtMTJKTXAxL2U3ZHNHVnAxVXcyMXpsdW00YStNUFpo?=
 =?utf-8?B?cEVLL2E4allpeVpXNy9tM0l0cEZEYmFGYm5UNUJ6eHlZVkVSQnpxZ09UMUNm?=
 =?utf-8?B?QjhwajhDSk1HVDEvMUZNRWhCbERNUElGYVhtSTZnaGZrSlhyZkZHWXVEWDFH?=
 =?utf-8?B?dzB0ejRJNEE2c3h2SmNxRVNHZnRMSzJ2dGtFMlFwbnRMK0ZtczNKeWQ3bDM3?=
 =?utf-8?B?NmlVTldUOTBCL0pIN0kyeFptTERGR1EzbzdiNHlFdS9HT1lXSmp2Tno0amxJ?=
 =?utf-8?B?R1RkdjhSUlJtenRNTlBzd1kySnFBcEMvaTNOR2Qxck5mU1NZVnRlQXdxWHhy?=
 =?utf-8?B?K2E0bVhSNTJpSytva3ZVbkhzb3l6L0V4eXFxOHkvUklEM3U4V0I2d2UxU2xK?=
 =?utf-8?B?YkhQbmxEV0hXbkhqNVVQTHBkL3c0KzlPNmFBZU43aHBLQkQ1eGNEVFlManoy?=
 =?utf-8?B?b3pNUU5zN3drdm0xMkMybUZuYmt4SzV0K0QyYXdnVlJ4MEZNN0Z0c0ZWWmR0?=
 =?utf-8?B?MFA4dHFJN3ppY3BwUENUR25jSU4yRDdvZjRrcEIwdEtIM1BnL3FycXljM2R2?=
 =?utf-8?B?QTZCaTFENjlsWHVHN1B5ZC9FLzdZVW9HNHF1TjJVZTNlOFFTeHVBazVueW1x?=
 =?utf-8?B?R0RiTWE5M3ZUQ1Zkck5xR0EvdXFjbXNENmNVdWE5UC9BOVczYmRRSFE1ZTZE?=
 =?utf-8?B?WDZ2ci9Bd3h6L1VtMHRpRGtGVVZ1MHpSL0tRVlhWeXp6L3Z4UUxwbXdRbDQ0?=
 =?utf-8?B?UDVkNDRUbTFGdXFybGRFN0lIREtvZXgrbXYvV2FtQkZsaUk2eEF0LzVOZWF2?=
 =?utf-8?B?TnhQN1c5OFk4cFlILzZoV3V2ekJPVnYxTFQ0ZlFjT2FoQjA4WTN6RUZvZWF0?=
 =?utf-8?B?NFhabVIvV1o5NFFWUmR0SDlJYlNZaHlnRkRUbG9XajZGbUtWMEFKZzhENVNa?=
 =?utf-8?B?eGgyQSs4bEhmV2RQc0ZsampuaDRqbGFJMnNVZHU3b0d1ME16U2tZMHNUcllK?=
 =?utf-8?B?ZUIwQm13WTRPRldzK2E1b0RhWGZVdmMvN1crOGpKOXhpZTBlcWpGclNMdVFV?=
 =?utf-8?B?WGcrVDE5SHY0Mk9Hc2NoNCtuQW1jMVBLN1p5MGVlNmpsL09UZ05mYm5lR29P?=
 =?utf-8?B?TGpsVENhRk9xckxhUEI1ZTVFRDdhN29qQXh3VnBKWjJWRnJKSXRhL0RIYXBK?=
 =?utf-8?B?eGdkb1hNY01XYXJ2MnptR2FnTWtlWkUxQ2MvekdJRmJjTnBiYVJkejNMbkE5?=
 =?utf-8?B?QUdkR0c5REtQTDBnK0VDWE9MUkVrTW1aK1RPVWhlUmZrR3diT0E0MlR1WmRO?=
 =?utf-8?B?TkpabnVoWHpHdHo5bUZjSnNpUlplbUNUY0F2bExYdVFMS0toeVp0YzJtU2hs?=
 =?utf-8?B?L0pRRlgyanZoK05INFdkRE9KRzR0enFxLzFjRzBORWxlL1pLVnNRczk5Q2Fs?=
 =?utf-8?B?VGdaWFA5OTVwWDdRSEZ3NzAzT2Q4eVdPdDNOb1RnMTgyeXIxZkVXRHE2RXhR?=
 =?utf-8?B?QXZ2ZW8rVjNFcUNKcHlyZERTYmRpWmhZR1N3U21OdE1VVGEyMVd2U2RHcnRP?=
 =?utf-8?B?cnE3aHVRUlZLUndPTERFbStqQklPZmIwNCtDZ1FGb1cxSVRNZ0tWVEczeWJv?=
 =?utf-8?B?clMweWFVQURvVTFQSVo1TnVuU1AreG54V0FROTRQZmZyUU5GcVJQTHdxeVFw?=
 =?utf-8?B?Qm1MdkVJWU16UVJRS3NqSDkwM1FsaDVPNnNESjRYSGFrKzUyS09yaHFFZ0pi?=
 =?utf-8?B?QWZFL2pSU3BpakRKV1FxUzVNNnBZVVdrbVdmdkRJUW1vSlpjMG12VXJUVXZ3?=
 =?utf-8?B?TjR2NG04VU5LS2d3NzVVMGtRYkFWK0RGTElFbU44L3FwVjF3bWc1QT09?=
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: 4ac537ba-d44c-4e0a-db1d-08de47146120
X-MS-Exchange-CrossTenant-AuthSource: BY3PR06MB8195.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Dec 2025 19:56:38.9311
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bXS0tr/jBtNVnHr/KOArVbJhd0l5nJBqkzy7mabRZ70o7yaFv9PPpODTB6LL8PZZ
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BLAPR06MB6771
X-Proofpoint-GUID: yGaz5P6yFEvos5YEyJo9eM1QOKzfnltA
X-Authority-Analysis: v=2.4 cv=YfiwJgRf c=1 sm=1 tr=0 ts=6952dcf8 cx=c_pps
 a=g4Zu/129bcKSj1q/f/8ScQ==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=lre9DRYkaIEA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=DyznqomoAAAA:8 a=NTvQTMsqhYDw6IdbLnUA:9
 a=QEXdDO2ut3YA:10
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI5MDE4MiBTYWx0ZWRfX10PtsjZVjgiW
 gWO8mMzR207I8mZ1JoULksU6gUTnJkiDGDcMF3Q2jREmAV46OnuvZlZ1TNd5DL7iSqM92eJYwhO
 moDSdB9WLZWFkkeJsf9mfJbxnidIYPzJopRsevP7qczLI4cb5Q/Wh2gTkYXl83yXjQ+ezAOxKdu
 +aYh21JOoj03IH7VqunRVxYGQ/14l6W+oXL9DnRf6S16s8mL4EaiIoe+p6LAWP5wVEMxVI9gksw
 2ATzOVCvTH31Qt2Ou+TuC1BTxkM+1FS8tgwUh7E52pHhfk6E9gdQhR8xkmiRxTkahQmQ5xKjBkF
 GFEICBuIruvEfjHSUSFYn2L3S6jXFJigzkmyfL3ha2U+IgjU0j0FNKyap/Br2nQeXjuD+fNkhQv
 YBuTt9lZHtJHUwEnSPWBmFHhzQ9yZ109ToQSJYgQ6CAmrcR/g8/XVMB8ilQr4knxZT2NyRila6S
 fy/Pxp6beE0rT/Q0Wtg==
X-Proofpoint-ORIG-GUID: yGaz5P6yFEvos5YEyJo9eM1QOKzfnltA
X-Wisc_ValidFrom: true
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-29_06,2025-12-29_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 lowpriorityscore=0 suspectscore=0 priorityscore=1501 spamscore=0
 bulkscore=0 clxscore=1015 impostorscore=0 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512290182
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

I have to take a break from this project for a few days. For one thing, 
I've been neglecting my real life responsibilities. But I also think I 
am going to send for some audio hardware for the Raspberry Pi instead of 
relying on the bluetooth speaker. I figure that was good enough for the 
proof-of-concept phase of the project but I need real audio hardware 
now. They have these things called HATs which can be hooked onto an RPI 
via an edge connector. I'm going to order a sound card and speaker HAT 
for my RPI. Also, I'm going to see if I can figure out how to take 
advantage of speech-dispatcher so I don't have to code for different TTS 
engines. But I had ChatGPT write up a howto for the project so far so 
you can try it yourself if you want to. I just had ChatGPt generate the 
howto because it would have taken me all day. So I'm not 100% sure the 
directions are correct. Look pretty good though. I posted it on my web 
space at the University Of Wisconsin. The LiteTalk emulator python 
script (which is really the key to the whole project) is there. So you 
might at least want to take a look at that.

https://people.math.wisc.edu/~jheim/RPITalk/



