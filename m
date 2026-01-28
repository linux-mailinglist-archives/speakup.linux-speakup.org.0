Return-Path: <speakup+bounces-1533-lists+speakup=lfdr.de@linux-speakup.org>
Delivered-To: lists+speakup@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sGT2MGB2eWkSxQEAu9opvQ
	(envelope-from <speakup+bounces-1533-lists+speakup=lfdr.de@linux-speakup.org>)
	for <lists+speakup@lfdr.de>; Wed, 28 Jan 2026 03:37:20 +0100
X-Original-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 093249C517
	for <lists+speakup@lfdr.de>; Wed, 28 Jan 2026 03:37:20 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=math.wisc.edu header.i=@math.wisc.edu header.a=rsa-sha256 header.s=selector2 header.b=DOuMFgAW;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 5010E382121; Tue, 27 Jan 2026 21:37:19 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 2D3D6381918
	for <lists+speakup@lfdr.de>; Tue, 27 Jan 2026 21:37:19 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 22DFE381924; Tue, 27 Jan 2026 21:37:13 -0500 (EST)
Received: from mx0b-007b0c01.pphosted.com (mx0b-007b0c01.pphosted.com [205.220.177.71])
	by befuddled.reisers.ca (Postfix) with ESMTPS id C6092381914
	for <speakup@linux-speakup.org>; Tue, 27 Jan 2026 21:37:12 -0500 (EST)
Received: from pps.filterd (m0316043.ppops.net [127.0.0.1])
	by mx0b-007b0c01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60RKe6qu3949319;
	Tue, 27 Jan 2026 20:36:57 -0600
Received: from co1pr03cu002.outbound.protection.outlook.com (mail-westus2azon11010030.outbound.protection.outlook.com [52.101.46.30])
	by mx0b-007b0c01.pphosted.com (PPS) with ESMTPS id 4by4kqa3y7-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Tue, 27 Jan 2026 20:36:57 -0600 (CST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pUSzglAx2kwnrvVLmDuWB+WvmHV89b0iqQ1drVEQCXT+E6Nct/Oc2VcolcuIIqKGy8VwP6c1Zd01/9qAPNoVxCpo5/EcpL1uFhTybMK6l/jac1pMQn0XjpCrRu4fYM6S4HuXX9DAyWEcNpftQzPE0OBBbt11GYcVdReEIEI0vQjtFy7rtUvJhFgwOFBTIlK5l6KbN8GnQMdGRzSoW45VylinmrkqV9gD+1+yfLohBmPap1Curd8cx2Edjrv2XlQQcJ3c5Virv0Hb73F3VZXArcNoayOfXhVeal20d5rzCAi8RJgIproGfJHBYM8AiAL6lKaOSM7rbrIB5FUMkuihvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pfJT6gya6DLxVm57vZU4SvvGOdTJZUMBEVJKy1E1icQ=;
 b=PkiK72dbIkxgS1zwITiBk6GUKUNduSgMplfvxscHtJi5RhQQvRDuS1EvqfQWk43SwXuNJVYFVtz6muOlBHXIPkmHOdykFLTWDHNoqDmKpWP2VA7jPNrM/Gl6rUpQw1ZPi+fXOSDTOt4jRttDKfUIDzDracuA9eQCsXGivVYM0DsIomIuYhfrUYCF1yUfAeIkO12aQb2XU+fUt/nAqHCqkVxSrfHX3ZweU58GLqQ7N/K31L/MkzDlwMmYQx7wQKfBK8FRVRZYM7nTQbTr9Mc7xXhLudNumeYYN95s3DztqsbJFf03aRZ9yQQK8S1Vl/qss3NY5eCXASYDWImyh810MQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none
 header.from=math.wisc.edu; dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=math.wisc.edu;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pfJT6gya6DLxVm57vZU4SvvGOdTJZUMBEVJKy1E1icQ=;
 b=DOuMFgAWSyBnQL4Jb5btF/4ppNyYb5ncPto1hRvDcz4y5yfICZgluWJYcJiajZXfUz44q2q5vXDTnnR2UhgB23ovzVfJHv85U/WZgRfJQwoJlTyXj+IR8lwF7gKKBlc//GiCVQxGl7BEVG9zlRppeUDacAAZvorQ20mCxh01HvGb7VzPpRZR1qRt0Y7j8gv0i5naC6pLZWiei65RBN5gvjp62Gnr5aujn+V4bnf1kvJ3nHiTrz6RE6qlCo1GHKD6GwHLVtFjlu4i0bNl1u2F9o1HJOhugN4FxBLwPpq6Bq/VyEAGZiMLgqu0JqLlYZFa3EMkxxbxRvMUZ08ZuFf8xQ==
Received: from BY3PR06MB8195.namprd06.prod.outlook.com (2603:10b6:a03:3ce::19)
 by MW4PR06MB9039.namprd06.prod.outlook.com (2603:10b6:303:1be::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.16; Wed, 28 Jan
 2026 02:36:55 +0000
Received: from BY3PR06MB8195.namprd06.prod.outlook.com
 ([fe80::a7ad:fb62:4389:fd8b]) by BY3PR06MB8195.namprd06.prod.outlook.com
 ([fe80::a7ad:fb62:4389:fd8b%5]) with mapi id 15.20.9542.015; Wed, 28 Jan 2026
 02:36:55 +0000
Message-ID: <60df655a-ac88-4a73-994c-3cbafaf94c2f@math.wisc.edu>
Date: Tue, 27 Jan 2026 20:36:54 -0600
User-Agent: Mozilla Thunderbird
Subject: Re: Cannot get indexing to work on my RPI hardware speech emulator
To: K0LNY ?? <glenn@ervin.email>, Brian Buhrow <buhrow@nfbcal.org>,
        Samuel Thibault <samuel.thibault@aquilenet.fr>
Cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <202601272220.60RMKBLE022931@nfbcal.org>
 <873ea9d1-ba70-48e7-9556-704f32a35dac@math.wisc.edu>
 <004201dc8ffe$63e48ca0$01ffa8c0@nucwin10>
Content-Language: en-US
From: "John G. Heim" <jheim@math.wisc.edu>
In-Reply-To: <004201dc8ffe$63e48ca0$01ffa8c0@nucwin10>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: CH5PR02CA0003.namprd02.prod.outlook.com
 (2603:10b6:610:1ed::23) To BY3PR06MB8195.namprd06.prod.outlook.com
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
X-MS-TrafficTypeDiagnostic: BY3PR06MB8195:EE_|MW4PR06MB9039:EE_
X-MS-Office365-Filtering-Correlation-Id: ee30fef1-b4e5-4876-cdf3-08de5e161a38
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|786006|41320700013|1800799024|366016;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?SXIwblIvYlFSYmljZTQzV083NkRQWlVOR1Fkdmsxa1VYRmw0bGlwZDJ4YXVI?=
 =?utf-8?B?WFdHZmtUamJTTlU5R3FDejdHNG9LRWFjVTRuaTREVjlMQVZpRFRaQkQxWE9u?=
 =?utf-8?B?V3UwM25MaEQ2ZTAwbVB3WFdpQVo1Vk43NkRrT1M4cnVDYlVveTVEV2ZmdGsv?=
 =?utf-8?B?dW9jS3dJRDRzdm5IR0p2V05URzBuVW1IWmZSelRzUmgvWmlUNExQS0k2Mld3?=
 =?utf-8?B?R1NSaVUyNGQvNFViaDNEdHlhQWErU1hiZTFwRWJhRE1HRUt0ZmJCaHpla05n?=
 =?utf-8?B?cGNzLzIvYWNiRVhHclNKRVREUzNQMmlxY2FNdmROQ1o4VWxBS1hUK2xLYzNu?=
 =?utf-8?B?Unlva3B4Z2ZYQnJrOFZHUW1jcVY0Y05lbDNJOXl3K0JVbjBWTzhEa1VrOXlw?=
 =?utf-8?B?UFNZWWQ5akVFSU42bHhvZzN5OENSYzJCRkkzTkYxdTlSaFhsdVVvT1p0aVlk?=
 =?utf-8?B?OW83b2MyOERyR25YMm45U1F0aUZnbWcyQmtnNDFZb1FVcDBocWwxOVl6Y09o?=
 =?utf-8?B?T0QyT3I2U0tndmdRMXBOcUhIS1kxRnViTko3OWFiTGVoSFhOU3VsL3ZhR3ZE?=
 =?utf-8?B?SUhGRVVMbXoyOHQwb3hVR3oyalRyV2NsUGFUdExwNTlHQWxUcDEvS2tLcjl4?=
 =?utf-8?B?S29oakdXOWFzVnN3SjBDRVlyU3IxWXpBNUxmUVF1emZ3a25CeVlOVnYxWjRY?=
 =?utf-8?B?V0NXNkQwRkFDQms0K0pqUWY1NXN6UGhHeVVGQlJWOHk5QXhXdXRoT0g2RFho?=
 =?utf-8?B?Nk9zNVM3c0ExOGZMTnhTVHdWWnAyY0ZjSkZaaVovNVpyWG9Mamt4RGhrOGtS?=
 =?utf-8?B?THhNRURkRzB0N1JwWWV4eUFVdnhHTWxjcVNXTEF4Y2Yxbmhsbzh2REcreEdt?=
 =?utf-8?B?eE9wc3BvWnhHdzh5ZG5zTzg5LzZkN0xYekVZaHEzZHJmRkxtWXdqcU51NGhM?=
 =?utf-8?B?dHlYN3ZlVkhVWjFQSUx3MG5RT0lkSUdTL2xveE5HSG1wdlRZaEZidnBkRjhp?=
 =?utf-8?B?WTVhNE02YlV1aUp1S2FieE5mSnVKTlJpaHBIRkIyNGVXcVFuOEcxTzI2NkNR?=
 =?utf-8?B?bEFhOFU0NGIwMm5zMXN4ZTFSQngxZjN3QnVSdTIzV2tUNk5vUTJFWW1XcFdF?=
 =?utf-8?B?SWlGZmFod1dKeWM0Ni9iODJTbVdJaUJ4QUdTdHl0R2NiOGx1RjVlN2RWZmtw?=
 =?utf-8?B?UU1IM1hLMDhiRXFjVVhKYVVDT09IRGhWd0pVbVp2NzNTak1iTHRKWExSaWN0?=
 =?utf-8?B?c0dKTjRvNnNoc2VvdUNuNDErWndhRlBYRVY4VHRCYzdzZ3RVWXphVnBKZmU0?=
 =?utf-8?B?QldKdlFDb1VPZHFKa2srSmZ4Ym5aSHFkeDF2dlRXa2R1QmpQc2VEWjI2S1By?=
 =?utf-8?B?aGE3QVZzUUk2dllsOEFtVnpFQWtFK1IvWWl4QjcxRUc1N1g4TkZZbGRRSnNX?=
 =?utf-8?B?emlja3Ira3VwU2JBRmx4L1Fvb3M1MW1DRXpUaS9qd3djSWd3N3Y5aVQ0Wjc1?=
 =?utf-8?B?S3lzamlFTVdpcW9xaVhVdWdYczdGNUdKMEMxdnZFaEh4Q2RRUnVsd1FKUkZC?=
 =?utf-8?B?Sk1oN2dlWlJsRCtpcVN6MG9YbmI5aWpUMHNvRVNLMnV0Yng1N0xLNzAwR3o2?=
 =?utf-8?B?WFBTVSttMUV5dFZ5MGpyR254OU4wS2ZXQ2JIakZSSGRtN01DaktTUXNFQ284?=
 =?utf-8?B?T3FobkVOQ2FmcUFiZ3JJT2ZEQWJCRTkzZWhpVnJiaWkrTER5aDVGK3hBejNj?=
 =?utf-8?B?QVRnL1V5aTV5bk5xS3RLUGcrWWpNQ2xvNXdkcFlGY3FQaXRKU3Z3MXFGN0lT?=
 =?utf-8?B?dzg0YTYyMGR4RnZENmJjek9QbjJubldzUjc5a1pPZnEvYU5HU0FqN2h5NzFR?=
 =?utf-8?B?Ty9xUmE2QU0xUVpSSlJVNC9DVHIvdFA4c2QvMEdBbTlwZ0ZKTk4zTkVtK0dM?=
 =?utf-8?B?M0hrNXo1eVpTMU5CRHQ3OHRXMnZYMmRHQ21NRXFISTRCK2dYTE9udHZGaGk5?=
 =?utf-8?B?anZvRGd6MmxxZ3FTU1VDaVdzYTNNSEJuZ2o5a0hJVktTUThDZVpsUkNKNFRK?=
 =?utf-8?B?TjJNMXpZNU1OOTZsN2JuZ1hBbnhvQytYcUIraGc5b0xKNWNEN0hKMzVGNjVa?=
 =?utf-8?Q?uMEg=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY3PR06MB8195.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(786006)(41320700013)(1800799024)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?RzBHV1NOVXoxdEU1L2RhWkp6aHZBdDA2OHVNUHd0cElFa1Bqb1JoNDlkN0xV?=
 =?utf-8?B?MnUrVllxR0Fia1Q3WitvSVVRUW1vWnE1MlRxVkJtN1hiKzRwNU1WTEJyZERk?=
 =?utf-8?B?RXBSY1dGSlhIWUxmSXIya2FhY0FPbXZDRFRXb3hwUG53d2JFNWNDaXBPMGh6?=
 =?utf-8?B?Y2ViNzdVT1kwN2tUWmYzcEVnZm04bHpNRnpvNVNmZGxFYWVWalkwQXIxeDRi?=
 =?utf-8?B?alNHTXJZQjhJcEpKN1N2dy9MY3dPVkp6M2szM2hKUDRHK3VzN3BSd1ZsWXJz?=
 =?utf-8?B?L25PRk5HNUpxajd4aG41R3hUc3BCMlVMb28xVVBWWnY2SXpKUUdXNEJ1a1p1?=
 =?utf-8?B?M05LYVk1T0Z6Vkszd1o0eFV0aVUvbTJwQVJqYkVJNlcvMGYvdm55T041ZERs?=
 =?utf-8?B?WXFLN3hzREEwZElmU3RQb3lYbWhvcWdnbEV6SnI4UUdVcHJnS1RJL0RxTE1z?=
 =?utf-8?B?NGY4aHBXUG1OSzBJUUYyMUliZ2NJc2NSNS95MjI5c3J1TDlFTmNRbzQydmk3?=
 =?utf-8?B?UHlFUWZWRjRMQXJzSDN1QW02R214ay9zUXZOY0FmSlhwZEVFTUVaTVJwWlJm?=
 =?utf-8?B?dFRHOXFZSnptbnVRMVp4VHh6a1FrSUVldGxxUTNVRDFCdndaZDVwVnBZRG4z?=
 =?utf-8?B?dElIQ0p6WlFLbHNQSXZuSkhTWnhmQjR1WHVJbksyclFDcXNFazI1WnhNNXdl?=
 =?utf-8?B?VHNnZ1lhNHNiendRR21mb1VtSVFRUWJ6VVZ1ckxHbnFGQzhLRC9FSzJZbDlO?=
 =?utf-8?B?QTgwR3N4VFFJb1R2SlNmbXBvUklrZ2NxWFdqSjRIT1FRWEp0a1lCc2ZkNDZp?=
 =?utf-8?B?VlZSb3BSQUZ3OFdnK0lDTXlDTm1Sd0xKWlpteTA4WFhIdGdHWi9Ra0p2UURF?=
 =?utf-8?B?NS8ydU50SjFVWW9qME1vVUNkTDdxcXhPWFRrTWltRXIvZ0ViQlZ4aXZVNXNn?=
 =?utf-8?B?SkJscmZrVG9uTFhMbXkvbXE4U2ZSaml3RTdaZEFkaVpNcnRCL0VVL3lLemIw?=
 =?utf-8?B?RWtXVnpQRmZVOVdTVWNHeCtsN3FSTW9tNnFmUGhUTmtMV2IxVzgwTUg4U2gv?=
 =?utf-8?B?WGlMbE51dFBTbEJUV1UvVkRwKzJTamt1REZpcitCUUluRHpZMVM1ZW1MRC9K?=
 =?utf-8?B?RkV1ZTA1Qmk0UmovMkJEU0RpMlN4ZEgzVGZCdWtuOUhFN0x0Uk1YMGw0b1RI?=
 =?utf-8?B?UGhHdkJlYUZHdUFDZHZmbEU0VnlUU0NVYVI3OEwxcDVleGo4OSt5OXhnTW56?=
 =?utf-8?B?T2RwNU5DNE1EejBJT3A2S2E0Vm9JdGVuVUFvOCtuMCtHalcwL3VmQmQxUExh?=
 =?utf-8?B?NmhrNlJWU2V0RnB2aGp1R041WXpvMlF2UmtiOElOckt5WkoyMElqZ1k1NWdV?=
 =?utf-8?B?cmNJVVBEd3A4NG9sVVd2QXNwekNoS1dUUUVCYmpzNnBxaDQ1cndmSEJ0VXZ4?=
 =?utf-8?B?Z241VkxsVUt4WEpaLzdyTm90d3FPNzdNTUdVTFpBT1hmaU9aQ0dCUmtWejNK?=
 =?utf-8?B?dW9Da2h0ZXFHNE9uQ1JDcWJkazFEcnR0eEhIUW9SQzRLdHhGV3EwVlFQWkNo?=
 =?utf-8?B?N29HOXYwcmJSZlFJdmplWEVNeEc5ZGlIYVNzWmRsalAyZVp0MGxmQlovK2FB?=
 =?utf-8?B?azVmakQreG9tWWVHNHdEN2JiVGljbytSZUowd0dRdk5RekRjdDNSQjBNeG9q?=
 =?utf-8?B?L1VuWjhYbHk3VGlTTGVVeUJ4QTlRQkhldnlCVXM5YmdPMldOREs3NTdoQlZM?=
 =?utf-8?B?SU5xUDEyMGJJeDhkVWlPN09QbE16UStZK0k1dkNZOUhvYnhLaVorZC9GUnFt?=
 =?utf-8?B?ZVNBcVNmd3JlWWFiQkN6c0ZiZG1CRUJhR1MwdmtBdkR3emI3bW0veGJqdlhl?=
 =?utf-8?B?V0tmbVZHdU1IQzJaOEpGcC96MExtQ2hBZ3praVYraCs2OUw5eVRZK3A0eTls?=
 =?utf-8?B?d2NBbWpOeFFSL0VDRXlNTW4vb2VmV01pQzlSR2RheW9DK3QzT0NNL3pBUllB?=
 =?utf-8?B?bjFhU2d3SWdLdmNZS29iQUtLemFDK3YwRzFESnVSOVNFanlmbmtmWXJwang1?=
 =?utf-8?B?eTU3Q3lYc3NjOEVENnJML1FZV3ROckhsZUR4TURYWHBadUxWdnFMREZCTUc3?=
 =?utf-8?B?a0ludEhYZW9nZkhKTzRWaGhrQWVUcEN1enhIZ1AwVzh6TmpVZGVpZ1F2Vys4?=
 =?utf-8?B?NnEyd21tVUlhbnBKdUJjQnQ0RGg4ZzhPc2QwdVdUdEYxRnhTQzZVZVNMRnB2?=
 =?utf-8?B?ekJuS2pwdElWZGtqbDZ2ZmhSSVJYeFFnOXU1bTMvYzZ6NHlwQ2MwZ1E2Y1dV?=
 =?utf-8?Q?RFjKME4yr9GDWmQk0p?=
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: ee30fef1-b4e5-4876-cdf3-08de5e161a38
X-MS-Exchange-CrossTenant-AuthSource: BY3PR06MB8195.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Jan 2026 02:36:55.6708
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gGhtwJ9iRNBsJt07+BijdsPb3JJzWIBKWBddrImHEuWy2Wih9NFtniqEzMlw8mbf
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR06MB9039
X-Authority-Analysis: v=2.4 cv=Z63h3XRA c=1 sm=1 tr=0 ts=69797649 cx=c_pps
 a=7sXfYZKWL/+VDStniiEWIQ==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=lre9DRYkaIEA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=NaBs41E1AAAA:8 a=qPKtzgQbAAAA:8
 a=YkQ53clBPmlVQV2k0WUA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=9L3PeBEvAxxnwxToPDKU:22 a=OTAqJWGB1laLS8RTg9aS:22
X-Proofpoint-ORIG-GUID: wt4KB5pVp6P8cUCFFmzvd7RfKJARGm_w
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI4MDAxOCBTYWx0ZWRfX+g7lZZ6a6RyO
 kg8bxQxoCkrqmRf/NDyxCRVCKlp0mfUeiGYS5qifFDjc4gkKOkAuPGOSdZj6G57PSVAEcfx4EoH
 V1orK+XbsxFFbcly/mxdbsg1TjW0KpYjIWsO3u+wNskRE/xQ9Vr5XepiSABZY0j0UdrJHPhXhiT
 /UPYqhNsoJF4PpjSOd0TVryKkuXwCpRcXjAFSJK2It3uW+qGlQFP9p/Y8Jv/kXV3JVFc/2QGOXZ
 rCBlE10618t/qJ5846JllWJHl7IesFCILo5CHtEMyAOqdUPxX1TITQEjzNLgniDVz/gAZvFxWdt
 Jr8aCDkit9FnaR4/Y5t2Dy9tfyj68AIbyoIuqPWGi2lOEwH1cmN52177B6tK0YXIcz7Fj5h5Ken
 HzL3nzjMNI9VfdEvUjd7aCl8CBad8xcL3TQZOcdBXYQx5Fvs9l4nbEhgsMGiF+wh1waRZkBINDG
 NGF1LilxOOFMeMBTgLA==
X-Proofpoint-GUID: wt4KB5pVp6P8cUCFFmzvd7RfKJARGm_w
X-Wisc_ValidFrom: true
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-27_05,2026-01-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 clxscore=1011 malwarescore=0 suspectscore=0
 priorityscore=1501 bulkscore=0 adultscore=0 lowpriorityscore=0 spamscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601280018
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.89 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[math.wisc.edu,quarantine];
	R_DKIM_ALLOW(-0.20)[math.wisc.edu:s=selector2];
	MAILLIST(-0.18)[generic];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_NO_TLS_LAST(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[speakup];
	RCVD_COUNT_SEVEN(0.00)[8];
	TO_DN_ALL(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jheim@math.wisc.edu,speakup@linux-speakup.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	R_SPF_NA(0.00)[no SPF record];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nfbcal.org:email,aquilenet.fr:email,befuddled.reisers.ca:helo,befuddled.reisers.ca:rdns,linux-speakup.org:email,math.wisc.edu:mid,math.wisc.edu:dkim,wisc.edu:email];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-1533-lists,speakup=lfdr.de];
	DKIM_TRACE(0.00)[math.wisc.edu:+]
X-Rspamd-Queue-Id: 093249C517
X-Rspamd-Action: no action

Yeah, I've seen plenty of posts about wiring that but I do not think 
that is practical for this project.  I, personally, am not willing to 
solder wires onto a Raspberry Pi in order to build a speech synthesizer. 
The thing to do might be to see if there are other single board 
computers with more amenable hardware.



On 1/27/26 8:32 PM, K0LNY ?? wrote:
> Isn't there serial inputs via the 40 pin header?
>
> ----- Original Message -----
> From: "John G. Heim" <jheim@math.wisc.edu>
> To: "Brian Buhrow" <buhrow@nfbcal.org>; "Samuel Thibault"
> <samuel.thibault@aquilenet.fr>
> Cc: "Speakup is a screen review system for Linux."
> <speakup@linux-speakup.org>
> Sent: Tuesday, January 27, 2026 8:30 PM
> Subject: Re: Cannot get indexing to work on my RPI hardware speech emulator
>
>
>
> Very helpful. But my research seems to indicate that the Raspberry Pi
> gadget port does not have 5 pins. It has only 3, (TX/RX/GND), no modem
> control lines.
> I take it that means my whole project is in trouble.
>
>
> On 1/27/26 4:20 PM, Brian Buhrow wrote:
>> hello John.  A quick romp through the speakup sources from the linux
>> kernel suggests your
>> issue with the lite-talk and delay is not related to indexing.  Instead,
>> it looks like Speakup
>> is expecting the synthesizer to signal its readiness for more data by
>> raising the DTR (Data
>> Terminal Ready) pin on the serial port.  If it doesn't have that, it uses
>> the full_time as an
>> absolute timeout to wait to send more data.  So, if your emulator can
>> raise the DTR pin and
>> your serial connection carries that pin back to the linux machine, I think
>> you'll find the
>> delay goes away.
>>
>> The differnce in delay behavior between the Ltlk and Apollo synthesizers
>> appears to be related
>> to the default size of the speech buffer for each driver rather than the
>> characteristics of the
>> synthesizer itself.  That is, if you run the Apollo long enough, I think
>> you'll run into a
>> similar delay.
>>
>> Conversely, when Speakup wants to send data to serial synthesizers, it
>> raises the RTS pin on
>> the serial line.  Consequently, it looks like in order to get the best
>> emulation, you need to
>> have a serial connection which has 5 pins connected: gnd, snd, rcv, dtr
>> and rts.
>>
>> Hope that helps.
>>
>> -Brian
>>

