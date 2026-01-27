Return-Path: <speakup+bounces-1526-lists+speakup=lfdr.de@linux-speakup.org>
Delivered-To: lists+speakup@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0AU6Jw8YeWn9vAEAu9opvQ
	(envelope-from <speakup+bounces-1526-lists+speakup=lfdr.de@linux-speakup.org>)
	for <lists+speakup@lfdr.de>; Tue, 27 Jan 2026 20:54:55 +0100
X-Original-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 9B0049A231
	for <lists+speakup@lfdr.de>; Tue, 27 Jan 2026 20:54:53 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=math.wisc.edu header.i=@math.wisc.edu header.a=rsa-sha256 header.s=selector2 header.b=Ay4T2dUR;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 67962381918; Tue, 27 Jan 2026 14:54:50 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 47799381907
	for <lists+speakup@lfdr.de>; Tue, 27 Jan 2026 14:54:50 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 4887438190A; Tue, 27 Jan 2026 14:54:44 -0500 (EST)
Received: from mx0b-007b0c01.pphosted.com (mx0b-007b0c01.pphosted.com [205.220.177.71])
	by befuddled.reisers.ca (Postfix) with ESMTPS id E82F038158A
	for <speakup@linux-speakup.org>; Tue, 27 Jan 2026 14:54:43 -0500 (EST)
Received: from pps.filterd (m0316043.ppops.net [127.0.0.1])
	by mx0b-007b0c01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60RGIMr23284997
	for <speakup@linux-speakup.org>; Tue, 27 Jan 2026 13:54:42 -0600
Received: from ph8pr06cu001.outbound.protection.outlook.com (mail-westus3azon11012044.outbound.protection.outlook.com [40.107.209.44])
	by mx0b-007b0c01.pphosted.com (PPS) with ESMTPS id 4by0s1j5j6-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT)
	for <speakup@linux-speakup.org>; Tue, 27 Jan 2026 13:54:42 -0600 (CST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TsPTiCTBjAQqWO2K0m0s3CfwU7YDfEPmhKwjx+vvorF95YqRGVlu/NpCzfZClUO1W7ouQn+SXmG6jh/8+Gzt6Dc0V9gP7xbDif4NrG6SzrWWYbPV2cgx026X39NdTqJv8m3gs+FvWBLfJA6f3wNUx9Sil8WB0wOEWwYn1HN8JLVlYYw3dES62ktK0CUF8SQu5pPGDG4w8XJVO9EH5hkz57+vS31+j142mmeSOtip05LFMqQst3jEyQePja3f0lz7ulk4fTEvEdkbnhfDuWx3svzNI+8QrOCnf8LThY/5PUwGchKkJJT9C0Bn8ChxBy1HqkPaIyx5cO+4zwkgA3LFAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=x6Awr6QVmAF55KTbm1/GPVBIXxPqhmEQTFdyhgJHEug=;
 b=BoHOgNEjF3G6po/Z0O50BjIh6eiYwRTfbVTzZCmTqqRqoRR8ra8/So2huWdfo80InmQKB5wyZTZfy2BIT2MoaP84JNe5aG6MUONwtgWCbKny3GvFOVycPlSjaPenCba5z7SNYKHo3iN/SBf9FsUOCKaGSZ2pvsTFSh3VNy0zDGDif0BGhFPCSX2BW57pENFUYgaRSRWx534H4MwMcxXOGgOnHy2wxV0iaXILkpfQPaJ6Pdr9RUWHTSxCjfSmIYDe5KCEOI0X79AdSWwsTtJIkWuBfUvp8tpph9r8TJ9r8jdPACrxiAu42og9fIQIAn2hVh6dm0r/niM0Hz/eu7oH2g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none
 header.from=math.wisc.edu; dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=math.wisc.edu;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=x6Awr6QVmAF55KTbm1/GPVBIXxPqhmEQTFdyhgJHEug=;
 b=Ay4T2dURa6/6HgvAsWg6bkQo/Q0eOoaLsai41bnVw9T6FxUw9Z6Mc37FQT3npqoKqPHwYMUyfCaX4PgLsUAS4iW5cWBiIOROvPWpSumVEq7swJlPA34Mj2Qv3T1VTaGfqJV34RckGga5efO538sRbcw5ow1TmpAirObc9Tzw8PZTpdzR11Vpp/9h/hSQhH43hsrAnjddT2TL7llXvmSrtasOhES4fzBBMEzTELZRI49Lxsu/dKC9e8d/mYyBpev6XUefz2/Lev8OgWBzLZerEn5ST5HoCY+YryV6a4LfFCXSktZs3kNtPUbxyNjZuyXOSN7Yx9FNLENqKLONQcmLcw==
Received: from BY3PR06MB8195.namprd06.prod.outlook.com (2603:10b6:a03:3ce::19)
 by DM4PR06MB8934.namprd06.prod.outlook.com (2603:10b6:8:46::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.16; Tue, 27 Jan
 2026 19:54:41 +0000
Received: from BY3PR06MB8195.namprd06.prod.outlook.com
 ([fe80::a7ad:fb62:4389:fd8b]) by BY3PR06MB8195.namprd06.prod.outlook.com
 ([fe80::a7ad:fb62:4389:fd8b%5]) with mapi id 15.20.9542.015; Tue, 27 Jan 2026
 19:54:41 +0000
Message-ID: <6c2e05b6-6cc6-434a-96a4-3a7476b18110@math.wisc.edu>
Date: Tue, 27 Jan 2026 13:54:39 -0600
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
From: "John G. Heim" <jheim@math.wisc.edu>
Subject: TripleTalk USB via USB?
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: CH0PR03CA0369.namprd03.prod.outlook.com
 (2603:10b6:610:119::22) To BY3PR06MB8195.namprd06.prod.outlook.com
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
X-MS-TrafficTypeDiagnostic: BY3PR06MB8195:EE_|DM4PR06MB8934:EE_
X-MS-Office365-Filtering-Correlation-Id: b58e58b2-241b-4067-c4dd-08de5ddde8cf
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|1800799024|786006|41320700013|366016;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?VGJqL3RmS0dsUjIxV3FXRmRWdU83WlpmQjRLZlF6b1RTQStRNndEdHlDbmpa?=
 =?utf-8?B?eTh5MzBYM2Z6SVUwL2FFMmd3WllMTkRRZTYrY2VJT0xnbFFwa3Z5R1UrTy81?=
 =?utf-8?B?VXByaXptYU1WbGtDaUQ1NlM0OGFOR0VCYVd2T3h3Z2w1QXdER280Z2MxSzNn?=
 =?utf-8?B?M1JSZnRROVFjN1I5WThxTllhcnRkRStkMUhNVXJ3RjhxMHpkbjRWVXZlbWN2?=
 =?utf-8?B?clhvRDZTZ0NJTy9ZL3pXOTBuL1FJcnpmVmo3RUFoYk54UU82enY4UWdCNHRq?=
 =?utf-8?B?cUdiUGZrUE9JYWo2ZlpiUk5VMWF2c1VYRWVkMGt5dFNJZlQybzVWMTBQWFFz?=
 =?utf-8?B?a3o3KzYzLzBUazVEYk9HTytCZ3NlSjJvZ1FZcU5IMXlsWUFkSjVwZ0tQMGxK?=
 =?utf-8?B?OXU4Q1p3K01IWVV1TTRmZGhwRGE3aFBhZDZKQUhYNVJHUndKT0N6azlWVHVq?=
 =?utf-8?B?Q2tsdzQ5M0QzdW90SVpFN2toWFliQ0h2UXkycjcrazJpbEVHMjBHeFY5VFBh?=
 =?utf-8?B?cTRTL0trdzdkZitlbGhTM05XY1BhNWdaQ1JTa2xKZFFqb21wNFBzT25UWGFD?=
 =?utf-8?B?RWJKa1R6YlBUMHdMWEhSODU3d3B2THNKVk9iV0xEbVdXVFBlNW9GeHlUWEZD?=
 =?utf-8?B?QTlvenUreWRMTzZTYVZpTE5RbDA2RG1RMHBvNzdoaEhTM2VkUTZoTTFnc2xk?=
 =?utf-8?B?eHFFWXpjOFhpeldvalhoNEpHQmFIOWZwVzRmYzM5dW5GdGFseHh2bGFNZ0ZF?=
 =?utf-8?B?Wjl6bVJoaUQva2MrdS9oWWN1UEo0blpLeTY0dUYxVWU0RWFNTEc2T1FObTZL?=
 =?utf-8?B?K0dSSjc0cHpJOTc3ZTNhNDR0ekFkZ0s1ZmtLQXBhOUJVdXRlWEp1NFczVlY4?=
 =?utf-8?B?QXY0Qm54bDFtbEZvRmxEbU9HRWVpZlY4amV6bi9GRnJoSk9pUGVKWEc4UUNO?=
 =?utf-8?B?TTJ5UlpWelJDQWsyZ3lPWHVxRDVMcEgvSmdwYVJPNVdYR3Fzcm9JcVJJU0NO?=
 =?utf-8?B?bFdrcHhRV3NGMTh4Zks0dW82N25iWlN0WHdoeFFncHFLWkE5c0RwN1J6dEdU?=
 =?utf-8?B?ZEh3Y1RWeWZ0bUpZSnVIbjh5SU1XbG0ySnozQ25yRVgwN2Zka0lTSFJDZ1pM?=
 =?utf-8?B?VDBJWHhrWXA4M3dHbTkzUmY3RE95VG9KRXRFM0IrRE8xTHl0ZlVtYWRwY0dy?=
 =?utf-8?B?VUUzbkI1b1J3STlRNHhOMkxubXpNaG9mNUlHV1JDRkdsWS9jUTZCNWJKcmxC?=
 =?utf-8?B?cEpIQ1AyZ1pHMGN2RmFEMG50YVBUeWlPd21DaXpCQm1mTEx1ajhTM2lNczlC?=
 =?utf-8?B?OFN2ek5DbkppSFBJZ2tmRDh4dm9DZ3lQb0k5YS9nWS82QTFFOG9ROXNOVXIr?=
 =?utf-8?B?aG15ZC9Ua1BIN0R5cmZjSU55ZHlZazFKSzRoQWJZOUk5aWUwRm1yNGlNYWpz?=
 =?utf-8?B?RTNYN200akRJcWJHU1lXYTBKaHVyL3ViUE4ya3d6UGFncXJQVFR6bjJLS3Vi?=
 =?utf-8?B?cm9SSUlLZU9vN04wZmZCTjNnc09aWHdSNndDWnBST2xoYnZHd2dmUXF0eW9K?=
 =?utf-8?B?NUhsMEQ2OW80N0FSUUl2UzFrUWw1R2V1cjY3ZmtEQUZwVTNEUkcvWjJaUVM4?=
 =?utf-8?B?Qm5qM0V6bVIwY3M1Sm5hRlU4M0xtZzFGLzc2bmRMOHAzOEI5VTlwTHlOZVFV?=
 =?utf-8?B?bVp0OGE1WTMvOUQ1L2xIWFBQalZVSThCSGFxNjdsbm1zcEEyaTVzVnZKd01F?=
 =?utf-8?B?dXNqU21jWGUwWG5sNUIxbGpLa0txL1NmeXo2L0liV0Z3d25yWHhndUNjdm94?=
 =?utf-8?B?WisvMHVCMFhDaGVMZWw4RHhPdGI2Z2wrZ2tLS3JTZnhOc1RJV3lVTFZUS01k?=
 =?utf-8?B?a1RZdHB6R0ZOaDJhblJCN2xSNGpsb1hLeHBXSmR4QWR4T2pXU00yNE5ZVmRl?=
 =?utf-8?B?OHZDSkxLU2RVdkJFVURXWlFuWUpCWnBnUjAyK2NvMkVkYldzRDBKeXlwSW50?=
 =?utf-8?B?bDBVbFlROFFpWEdkRzJLZklXcXpoVWwxRVdnUTN4bjQrQW5BVUo5OEpSanRE?=
 =?utf-8?B?M293WVVLZS9rZXBjQjIzTDRzYU1zeXQ2MFBYQS9OdzIrQWMvbGluTjFPVHIw?=
 =?utf-8?Q?ID6Y=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY3PR06MB8195.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(786006)(41320700013)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?dE5VRUxyZkRMV2wvbGZ5azdlR1N5Sng2bzB6QWt0Z01lalhnTW04QnE2Y1lh?=
 =?utf-8?B?ZTZMY29BR1BiODNpbUkzdDlXcjNBU3lnc3F1NGpBUmJJK2J3d1NQNk5RYVVV?=
 =?utf-8?B?UXk5VFJqbVc3NUhxUEc2SkV6VHZXL0swTVBNclRSd09Way9HM1l6NE9GbjNG?=
 =?utf-8?B?bzRSeno5WjJQR0pFbkVaNUFweHNUay9VQ25XeGdnMkpvQnlVODkzNnNxSGVM?=
 =?utf-8?B?M29LWDlPQmloVzRlMm9pQmYvT0E3S3YweTBEZmhzRWZOYTlmRk12aGt1QWkr?=
 =?utf-8?B?UEpiUm9HY3lDTm84RVFocHJ6eitId0VCc2F4K2dQYyswc2pBQzBPNmI1TFdK?=
 =?utf-8?B?bkRkV29HT0lsejNqd1hMV3dwSWVlUDJjekgzZDRYdGhtNnNhVEFlbDFzTDQx?=
 =?utf-8?B?c0ZBSkZKT0dRcysxMWRVZTUzSUFJL0JiVUZzOTcyd0lEQm1Hcjd3cGZlTEF1?=
 =?utf-8?B?MEI2L2gxa0YzejMvdnpsZmc4OVN4a1FjdTVxd24wQW1FSStBVm9GUmttcmFM?=
 =?utf-8?B?RmIycVdXOEtySWZWalVqKzVzbldoNlUxa3pXaFg0UW9tcW9MdE5JRkd2YzBw?=
 =?utf-8?B?NkoxZ2h2TWVzMzRVSUdBd3U3NUN1aGk3TTNVYXF2dnRsMXo5b0d5aDVOcmEv?=
 =?utf-8?B?QlhtamJhWjk1elo5MVR0b1FmN1BWSXZkSU5pKzN6ZDl3cGF3T2JOUXJmSTVV?=
 =?utf-8?B?aFlGbENNcUJDS1ZERHVtaU91WVBQTGlKVUxYbzJFT3RNYU1lcmEwU3VzVjhS?=
 =?utf-8?B?MHhWTzNIdFUxdXMrcUNRbnR6MytrSDd2TXZnNTFHY1FrbmJKNkQweFJjdTk3?=
 =?utf-8?B?d2ZGSG5iUk16SGNYT0g1NE9PNitJY2ducVRCajdUZGp4a2NaK2pFVG5tdytp?=
 =?utf-8?B?ekpJcGJVb2pRN2RQQWhNUTV0cjhIei9VOTFyczhwZVhpS2lSR0JjR2VpQ1hh?=
 =?utf-8?B?MzM5bkNHeWpaSFZPbUZXNk9rUlhLWGJ1SkVXbWZCajA3VkVsMWtqOGYrNFBt?=
 =?utf-8?B?bUdpTjVjSUxFRFFHT1BDMHBlcjNWdDBCYUVsbXhVeWFXaEE5YXFSQzY2R3VF?=
 =?utf-8?B?ZWRhT3ErSFE3YW4zUWw0blFiZjF5NlpvUDRoN1pPcjZ5amxjU0VnSk9lRVBn?=
 =?utf-8?B?OU1Nc0duQkVLeE54TTRQNHUyMVduN3JDaUpQVlY4UnNEdUlNK0xxVHBkQllx?=
 =?utf-8?B?OUtxY3YrZEtKUHN3dkNRaWFxRTc5V1pNS3VhMitHR29SNiswOG1ZTkxIVEJi?=
 =?utf-8?B?Mm5sT0RxMEh0dDF1VzBxTnpBbFYrenNjMVpwaXE1bzJJYkZWd3pnVWtRME9X?=
 =?utf-8?B?RU8xbDlvRnVtV1RKakFEeWVORXdUS21FMnRwQ0pqQkVLNG9NQmFaVHhqTWJw?=
 =?utf-8?B?WWxDZ2loUGJvUGpwVzlmSCtIMXNYeEpxVEpWR3VuQ0x3ZGFQaHF1ZUJPUVZ4?=
 =?utf-8?B?aUxmeEx5WTZra0lPTG5ld1lrcTVyb3ZQTEh4bmhMeU95Z2djeEljTlR5ai9L?=
 =?utf-8?B?WFVkbUlscmZsekdxSkdzeVlGbXhYWkFZTklYWE1lTFYyVEV2WTVkVU42TGhD?=
 =?utf-8?B?WEVsR2NXQ2JuU3R4czEvY1dwQ3Y4TXl2OERMWmxqYWx6dlNkY2JiQ3QrcEdU?=
 =?utf-8?B?cDc3d3lWRDFsR2RFcyt0TUhmSFMreHpSOTlVbDZGa2xHa3A3ZmJWcmhqbjFZ?=
 =?utf-8?B?a00vUzVOTzM2SCtzbDErZHY5R1ZwcUttK3BaL1BBcVdnV1VTY3BoeHVvcVFk?=
 =?utf-8?B?ZWJFZ2JSOS9wSDBsQ29wUWZWc3AvRkJONFJWZ20xTHZnc0ExYm9yODBxdDhR?=
 =?utf-8?B?UmtZTUJEOG9ldGpYeGpSMEJCY2lzK2ZhT3dwdkhQZ1h6eVkzNnVIdXViZU1y?=
 =?utf-8?B?Q29IdVRQSVlpZjFIamVRb2JkdEw4TWNOYmp4Zm1FOHlaRWkrRWg1aVdpSmx4?=
 =?utf-8?B?YzhiVWdvdHJjcDNlQzA3WGgrbVZuR3dkT2ZEUThFTVM1dHgzZFh2YXVXZy9J?=
 =?utf-8?B?YzkvT3JEYjdYNUZ0NXJsU3NoNDhjWXcwUUdXUlZtdHdHZ1hucjVDZERaWGl2?=
 =?utf-8?B?ZjgxbGxNcGZpRDEzMy9yTXQzRXNubjhPRlA5S1B1VTkzK1Y2bzRUZ0JUaStZ?=
 =?utf-8?B?Q09kUUt5bGVVTUVTZk51d1ZuS2J1Yk5RcXdXaEhNZnJ5VlRYU0xSTkw2bVlK?=
 =?utf-8?B?cmZXUkJkWWJMTlhuTC9kNEFybGtMWVNWc1dYOUVQY2EydTM1dDc4bEJJNVNW?=
 =?utf-8?B?dFZQVTB2akJHSDJVS3pLb0FEUElTSXRlaVhYT1lNdWlUUUMwclkrWVZIRjN0?=
 =?utf-8?Q?Svra9/PCDxSuMSV/dr?=
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: b58e58b2-241b-4067-c4dd-08de5ddde8cf
X-MS-Exchange-CrossTenant-AuthSource: BY3PR06MB8195.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jan 2026 19:54:40.9494
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: l4fN37hPiglmdz6OF+p5lWVOhX1NwyXQ0PcCYKd3e+tjFSqtr1Piii+xfFL1XMoq
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR06MB8934
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI3MDE2MiBTYWx0ZWRfX/xiVJTmRwi/a
 AAJaXGHhlgNkB+G9M6x56ZPihXOWeiNND1WI+NA+yWeGYmszIEHCmEjR48zo1/E0cKR1RKFmKmR
 r48FhH3HtYc4y5cTX7rAoZK8H4r8P0CMVP9308evWkuaG/8vOCmGdYermbDuVnmBlEEdNQh6hR9
 TMB2ZNTe80GoIr/W1QGivyIRoxZHWCkhUpbZHSWHlQ3It9wNDl+FhPH7ebWc9sqyLowBQG1Uj2v
 S+m6Gufb635cn1NoQBLdLCxE5xyVSDM+ZahhWtPEucZcJUL0K1uwpUDYkRuUvK8Y0Iv6hE+8cX2
 C5D1lW1+rsbPa+8ChxczInPFtgY8SBueMHgByur7kqE9ieEu7NgoHutisngXdioV/9qsdoOVak9
 /3629IE0VKrsha4+nyefyO2LVuFyiWJy5P2Ad998JeiezycpnAYmG5WadT2/WIq+8ympaycRG4D
 84IJ/GsqvBgIKfZFmNA==
X-Proofpoint-ORIG-GUID: PcBCHHnV7tnNOHe6_oeB8zmb0fPb1FC5
X-Proofpoint-GUID: PcBCHHnV7tnNOHe6_oeB8zmb0fPb1FC5
X-Authority-Analysis: v=2.4 cv=O8E0fR9W c=1 sm=1 tr=0 ts=69791802 cx=c_pps
 a=rlKp08D5gBKtwCtLUzcdEg==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=lre9DRYkaIEA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=ryYw5b1FwAn2aXBqbfwA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10
X-Wisc_ValidFrom: true
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-27_04,2026-01-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 priorityscore=1501 malwarescore=0 spamscore=0
 clxscore=1015 adultscore=0 phishscore=0 lowpriorityscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601270162
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.89 / 15.00];
	SUBJECT_ENDS_QUESTION(1.00)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[math.wisc.edu,quarantine];
	R_DKIM_ALLOW(-0.20)[math.wisc.edu:s=selector2];
	MAILLIST(-0.18)[generic];
	RCVD_NO_TLS_LAST(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_ONE(0.00)[1];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:5645, ipnet:206.248.128.0/18, country:CA];
	TAGGED_RCPT(0.00)[speakup];
	RCVD_COUNT_SEVEN(0.00)[8];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jheim@math.wisc.edu,speakup@linux-speakup.org];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	R_SPF_NA(0.00)[no SPF record];
	TO_DN_ALL(0.00)[];
	TAGGED_FROM(0.00)[bounces-1526-lists,speakup=lfdr.de];
	DKIM_TRACE(0.00)[math.wisc.edu:+]
X-Rspamd-Queue-Id: 9B0049A231
X-Rspamd-Action: no action

Can  Speakup  talk to a TripleTalk USB via the USB cable? I have always 
used my TripleTalk USB via the DB-9 RS-232 serial cable for data and the 
USB cable for power only.

You can use the LiteTalk kernel module for a Triple talk. By default it 
is going to talk via ttyS0. To get it to talk via the USB cable,  you 
need to specifiy the device, like "modprobe speakup_ltlk 
dev=/dev/ttyUSB0"/ Problem  is, when I plug my TripleTalk into my 
desktop, it does not create a USB device. No /dev/ttyUSB0 or 
/dev/ttyACM0 is created. I dug down into lsusb output until I saw it 
says no device is created.

Is there some way to get it to create the device? How can anyone use the 
TripleTalk USB via the USB calbe  if it doesn't create a device? 
Wouldn't Windows users have the same problem?




