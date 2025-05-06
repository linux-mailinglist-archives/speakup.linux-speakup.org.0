Return-Path: <speakup+bounces-1278-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 9C687AACBDC
	for <lists+speakup@lfdr.de>; Tue,  6 May 2025 19:06:39 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=math.wisc.edu header.i=@math.wisc.edu header.a=rsa-sha256 header.s=selector1 header.b=sd75kZ4+;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id EC5363829BA; Tue, 06 May 2025 13:06:38 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id C7BC2382941
	for <lists+speakup@lfdr.de>; Tue, 06 May 2025 13:06:38 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 9E5AD382941; Tue, 06 May 2025 13:06:31 -0400 (EDT)
Received: from mx0a-007b0c01.pphosted.com (mx0a-007b0c01.pphosted.com [205.220.165.71])
	by befuddled.reisers.ca (Postfix) with ESMTP id 1BD113821AA
	for <speakup@linux-speakup.org>; Tue, 06 May 2025 13:06:30 -0400 (EDT)
Received: from pps.filterd (m0316040.ppops.net [127.0.0.1])
	by mx0a-007b0c01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5469WMNT023052;
	Tue, 6 May 2025 12:06:24 -0500
Received: from bn8pr05cu002.outbound.protection.outlook.com (mail-eastus2azlp17011029.outbound.protection.outlook.com [40.93.12.29])
	by mx0a-007b0c01.pphosted.com (PPS) with ESMTPS id 46e603x6nd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 06 May 2025 12:06:23 -0500 (CDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uUQL78HqEil7H4jD9bz5OdK3FlgO2oRl3cHS94Bn5D3E82r/c6qBFpXd6qIQTYe5B0ya4G5ufnkP+bMEgOMgO6eFH7DkJjjDKQm6HcBeYiGhFyMeoPXVNXpOpRT+A6Ipu/10m2rd8BvlJRI5ou1Ntn6MLX2piGHjDpIGSKieql9v6sjEA9Ke0Y0WcqRW2yI/SNkhqEXb05Z3lQgYDo2Qkg8iltBzNbQio+8p7xdLOadY9F1fOAlgzkoGNMvNI9OLnD4Y51nGG1sdi/WBgPaxKWj6jX8hldb++Zz1kMWrikK2uTb8ej4pqa1JKpNnER2pFFH385lhLv7QT7Dud+ZLEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iIl9eJvpkYVdbzPY9A0aUbo4cH9SQynwrwuVEmJ5BCU=;
 b=d9ODYIr6UG2aDTP5k2JPqkD+eW41P2QbEiMN0RX0aGpYNv1bKTxKYGyDonMNjZ2t9Eq8ggfEX5uYQhhfGwnXA22tU1K1cMiCATTlRmmvQPzaaIJcvGmW1tfMcmaUPeEf4A/GWGwkjCbYsnoGu6exNGHdR4YnVn+eH1Y1PgQTs/qZPdjyEmMYYyFGVnewxKFWS1K5rM+mfhkbhJRIjovVHvCW1RWvfUuXxMDpUs8KPj0Wf4ETPbvFQ6aRHTD4X7sDmfvu2E8yItR4bsY+RKsdkJV1wdYyucjwRfAqaUTbYzgXrDWiAZn3rPMtfAy+zAb6P1yzX3gxi6sTd++HTnJJcA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none
 header.from=math.wisc.edu; dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=math.wisc.edu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iIl9eJvpkYVdbzPY9A0aUbo4cH9SQynwrwuVEmJ5BCU=;
 b=sd75kZ4+Ya94y+yZtveirSTODZSHyqoeHsRos+QPopXGcD1fg9wgy6/zs2z88pDweuxQ2o0VnVKp6sqSndCeKTdGx/50NZDdj5zZTeya0ppz2owHcYNv6sq52lIEpXRnUrYnKuqYK2P0xlNSX9dunDxfOkibRWaWQ6Cr7PQkGC6Yg2BxNnV6Lmdid2C7tXG4PLRrWYvJ03VKHDyfzTltIq8uB/Cl+NbhBb1IngvYWm0AyImKg+eiUajK5cP90R6NnVJsjsd/Y0mXtKJ1RzlFaPDtSn23JqUC6KSd4dvLGIylklwMhy+dz/b5GQ3NiUaAQVoREO3RQEuX+L/kCh1n/Q==
Received: from DS0PR06MB9877.namprd06.prod.outlook.com (2603:10b6:8:1d5::14)
 by CO6PR06MB7124.namprd06.prod.outlook.com (2603:10b6:5:34d::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.26; Tue, 6 May
 2025 17:06:15 +0000
Received: from DS0PR06MB9877.namprd06.prod.outlook.com
 ([fe80::a347:6162:9bfd:9b91]) by DS0PR06MB9877.namprd06.prod.outlook.com
 ([fe80::a347:6162:9bfd:9b91%3]) with mapi id 15.20.8699.019; Tue, 6 May 2025
 17:06:14 +0000
Message-ID: <e960a70d-b3a0-4502-95a3-82285031b153@math.wisc.edu>
Date: Tue, 6 May 2025 12:06:13 -0500
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
 <2cee115c-569e-4d91-8ce0-93a57c95c445@math.wisc.edu>
 <008c01dbbea4$6c522b80$01ffa8c0@nucwin10>
Content-Language: en-US
From: "John G. Heim" <jheim@math.wisc.edu>
In-Reply-To: <008c01dbbea4$6c522b80$01ffa8c0@nucwin10>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: CH2PR07CA0018.namprd07.prod.outlook.com
 (2603:10b6:610:20::31) To DS0PR06MB9877.namprd06.prod.outlook.com
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
X-MS-TrafficTypeDiagnostic: DS0PR06MB9877:EE_|CO6PR06MB7124:EE_
X-MS-Office365-Filtering-Correlation-Id: a763e7e2-1cb5-4fe1-07ce-08dd8cc04ed1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|366016|1800799024|41320700013|7053199007;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?VW1uemFIclRnc2tyK09zelJGK0RZSHR3K0xQSWgwK2lYT0xVK01JMjQ4Yzl3?=
 =?utf-8?B?cStjUFAwTmV2cGg5eWx4MmxqQjhTSFpJc25Za0VxQ05zTXUzdlIyWS9ZWnJK?=
 =?utf-8?B?bitLSWlnQmtqeDZKZU5SaE5hNVRjYytvMC9nL3kwZFQ1OHRyNUwzWFN0dFJC?=
 =?utf-8?B?WDAwMTh4UU5GbG9NcklTdWVybVZQci9Lc0p3MTRPWmY0Zjg5SlVQQVVOeW5C?=
 =?utf-8?B?QzQySlJaUjNNVy9Lejd5MkhFWUUrMW1LRzc4Vzgxek94a0RMS0VWVHYvWUoz?=
 =?utf-8?B?eEswdHd6NTkwdkVNcnRwOTVqSGY3ei9EYU15S2E1Y1E2aCtacm1nS0FFeFY3?=
 =?utf-8?B?Y1JPajNXMUd1NHQwOCtkQXVHbWdwbjRpbWU2Qm96aS9aUk5ETkVTTm03dlhY?=
 =?utf-8?B?eTdwd2hDY0F5SitYb2Zhd3VKbUY4WjJQYkQ0U0MvT3VhQXRJNTBGaWlXejRO?=
 =?utf-8?B?OTdQMlFhSElGNUlVUmJqTWtUTGhEMXhHbkZuMWJiV0FDTHcwK1dFNmdxVlZG?=
 =?utf-8?B?RzlwUDFua2FhUTViL3JjSi9kd2ZGbm5NVUhJOVNBWEI4Um1LVVFQZVN6M3Vk?=
 =?utf-8?B?TTltc3FVVi9kc1AvY3MxTVpPa3g0VE5HZVZkWjZ0V2pxL0MrZVJ6enhpVE1a?=
 =?utf-8?B?OC9DOFNLUGxBNm9JSDBuR0JLdEpray9WdlBvVTNkWmNCUlJPd2R6cjZ4WFNU?=
 =?utf-8?B?R3pkcXd1TXlTT211YnZkWUI2eE9DWUdhcDZDSmxQVkRQNWtwSVpIc0t3NlJQ?=
 =?utf-8?B?WVJUNWlFY0REbGhtczJBRDQ5bGt2QzAxT0Q4UEJpQVJhZ1UxWjQ2T2lDZGxo?=
 =?utf-8?B?dVRQbWQxUzZrN1pLVEdMdUphU2Q5RHFDdVdaQUdTWGxUUy90MDgxa0EzZElJ?=
 =?utf-8?B?dGpPbjBZcWhjWG9DODZWc0pmdzBrRVcvQkVTSUNMRzZvWEZxSmg1dldoQ0My?=
 =?utf-8?B?dS9QMjU2ai9IZ3N3dHhGZVVvYTk0UVJWYnJhQWZGSEQrUExWeHlGUVo4ZDRh?=
 =?utf-8?B?ZHRLY0syQ1RCSHNwUHdpTmUvNmUrSk1KWGZmNDU2VUYzQ0pMeGtrK1dIQkRY?=
 =?utf-8?B?SytoNHFoQWxIU0JGQUE4MGJyamUrR0dSc2M0ZnZIdDYyNG5mdWhoZFJBRW03?=
 =?utf-8?B?U2J4Wko5c00wcEp6RDBTdXRFNE5nZjU4SHE4ZEtDN3IwQlFpZ0lsRzAvcjcy?=
 =?utf-8?B?SXpYdklJUExVZkRnSHVzemFUTDZqeCtEQXlSQUsrakpqQzlHVTVSVnpqeEwr?=
 =?utf-8?B?WnpNL05aMHVSVFFXYTZSTUswSVE3OE91azlxTkNQaXJqZTlPMWMwTFFCeTlo?=
 =?utf-8?B?Q3ZFUzZBOG1pMUtlMFkxQnlxL3BjWlJTQ1ltSHVQcTdCWmpuVW5OWEFkbitY?=
 =?utf-8?B?b1kvOHBmN2M2d25aWXVhMjFJM0VsY2g3Z013RnlrVWNnVVlLMk92eEJNNHEy?=
 =?utf-8?B?ZVhHM0duTjJNWERva05TdHhTVXhNcDM2NWFtaFlMMEFwVVFTN0JJZU9YSDNo?=
 =?utf-8?B?SlRWN0NmT0NkTXlWQWRYdStCVUptaG9vRW1IMXdMTE03ZTR3SW1HUW1TOVlG?=
 =?utf-8?B?YU9TUVNjUDFJRHFEd0VQbTFsUVJlMnM2SnZOTTNtUmpQZUhZeVNHNnRuNDJB?=
 =?utf-8?B?ZzJPRU5PNWlsSXVFUm9nakgzcG5BaHJ4TUZUaWNEcVBlenpvQzVvbnV4YnhX?=
 =?utf-8?B?Tjg3ZlJXWWdJMDA3OWJZZDQyeGRzUGh5SmV3N2o0ZlhRdUF3WE5XN2xMMmF3?=
 =?utf-8?B?Q1lScmlmRmJ5TnUxMnBnWmFDemFYdWNZREoyR1cxaVgweS8rV21mQ1BDNmpz?=
 =?utf-8?B?dkt1NGRLeG5hZDljeFBoTHNHdVlUbWVxQXNTRHVMRGh1SVQrS0tZYUJZcmVY?=
 =?utf-8?B?TFBLOElDdi9NOUFxTEo3ZTg5UDViRXRtT0I2dFhzN2xMaisycit1WDZBdFFM?=
 =?utf-8?Q?HUa+1Tnyc0g=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS0PR06MB9877.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(41320700013)(7053199007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?VjlaNitvUGlDbFcwVk1pNjV5dExObWkzZVZ3bjF4V2RBWTI0cDc5cjdCcFp1?=
 =?utf-8?B?bWVqV0pUbE9FMTI1QkZkWTdaRy9YRUZBVGIxZUxsek5PS0JlZzR4WTZHWVNK?=
 =?utf-8?B?Q014T1V1SnhYYjhab3Q3SDdvU2RQVVByRzFERDBsR3Y5RDB1WHRYWEducGdG?=
 =?utf-8?B?Vi9aSkh1Ym5hYkFNdUhKeFlSMjRHbUlUenVaOFNSQk9MZjhHSzBFVEVuVGor?=
 =?utf-8?B?Y1RLSkhlbm5qU1RXMjVYMjhQNlFFSFZTaFpLamwxWVRaTHNnWENDTHhkcmhv?=
 =?utf-8?B?d2lPUnFYU0RCZUlHZWFyU2pSWSsyaFdJRkNKc095aVg3K3lRcXNyTWVBRGZE?=
 =?utf-8?B?NjZmbUU1M1N3V1ZtZmFqS2ErbEpiRnZHRkZyeVlwRi9DR0MvZEMrMGQyZllT?=
 =?utf-8?B?SjQ3cXR4K1hNZXVkNUlRa24yMGM3Rzl5dGRHU2pob3BzNGdQZ3hTS1YreGN2?=
 =?utf-8?B?cnI2cFNJYVlyMll5Qytqa2ZLUGRtQ0lhN3V6aWd3Q2tkczVGQmc0cmdqTUVX?=
 =?utf-8?B?ZU0zd2VQL0pETUt6aWNPMkRCWXMrRjM4eVBXWUtIbzM3R0VHbXZUSVJDRGV3?=
 =?utf-8?B?dUx6Z2h2bFVDOEUzUjBhTlIwWTMva2hiWGpHOXBxRXcwVGZKUXFDNmppMDBm?=
 =?utf-8?B?QTBGYkVBcUpWcSt0amlWOEF3NmhzTHNIVVFVTlNZaVpLVFcvVWtNMnJPWUYz?=
 =?utf-8?B?a3AzYVZoTXViSE1OSVFXN2VJcHZzSjdqZzBSb1lBRTJSRXRzSlJnYVprRnNq?=
 =?utf-8?B?a2M1bEZQcmFXQXpUTlJ2a0ZsUVJ0Q01KVHlhZlNPMWhPN1JSbDk3UW9nZ0Vj?=
 =?utf-8?B?OEorYlhOZmh3cDNrbHlrQndIL0c4RjNBWHJWSm42M2YyaDJhU0NPYmJYNXgz?=
 =?utf-8?B?TWREckJhSHRsZUxvWXFKa0I4WFBNSGtKVUVHMGlPK1FKcTZLOVArVURIUGd4?=
 =?utf-8?B?bGNlazJLK2RvdVJSZEJMeEp6dVc1SWtJR3dpaHVFTnNmSzJVVmF3QUdncUhz?=
 =?utf-8?B?NDJpV1RXU0tTdFJndlNsazUxTk80U3I3dnFTQVVwZm5KeVh4SVRLWmtya3RV?=
 =?utf-8?B?VUdmdUdETVZqZEllMFZpRUdDeFRZQmU5aTcza2hhRU90Q0JjQjRpT3FBYmZk?=
 =?utf-8?B?SnBXSzAydDRWdE9RZXVtTkdWcHJtSjgwVTlLVGxNclh1cm5NTG9PRDVpaUNM?=
 =?utf-8?B?ODZGUCtoQnZUaktQQU5aYm13MUVaTE9hY0JUdFpVcEpsL3hEWEVLOEtJL3Zj?=
 =?utf-8?B?OXZiaHdsM0dZN2lTRTRrZjVwTFM4VXh2a09IWDNkcXptM3BNcWdBNk9NdXBn?=
 =?utf-8?B?WUpwR1dVdFhSaEFVbEJISHFCVDVCY0M3dVRCRGN6SnA2ZkxXbUw4b3J2QjJx?=
 =?utf-8?B?dEhFQUc0WFE2M1Z3aEV4NG1yV2JreHNxSFdTTGk1TlY5endxKzBlZHg1bGc3?=
 =?utf-8?B?bmcvVUh6VlFIWUVCQ2VsVVpGem5WQVM3ZFlDZE44di9CMFpaN1RxQURybnhN?=
 =?utf-8?B?U1N5QWpYNTF5bU5FdVV1Z2I0bDF2anRCNDRkVlBFNjJOVFEwOWYzbW1rNld1?=
 =?utf-8?B?NWZENHFzWEVvSk5tMTdTWXV0OFduVm9GcnBvSlNqcmVIRGxMcVUwZkk1THdr?=
 =?utf-8?B?NXYvY21tWmQ4RTJaVVkzRnlaa1h1QWRiYjJ1amE1UWFLYm5GSW1ZeGVKMzIz?=
 =?utf-8?B?bjRmYWg0NUlwNWF5aHpmd3h3MzJOTVBVb3hCdnlxdG9BUEdqTTFRQmJHWEEz?=
 =?utf-8?B?d2pEVm9wZDJCOTlQN0UwNmhhbGM3YTBHcWFuMDZxZ2c1T2NpQ1NOQ2VPVEZx?=
 =?utf-8?B?NGwvV1VOQitiTzNkTGVCTTRCaS9iYmpCcU9rZmdQa1VTdmVxNktPcjdiTVRr?=
 =?utf-8?B?ODB6cmZiSkovVEo2ZGUyMTMrYWkwWHZPZzhTU2NDaDBXZ0lXaDRJM2w5REdW?=
 =?utf-8?B?R2E2SW8rcW93ZFJlSzBsczVDbkZBRDN6VjlpOWorMTBoNHZTd1ByVEd6Tmpr?=
 =?utf-8?B?cVhZcTUrWlJPMGZ4cVdvbXloQ25Pb2dnbGZmNzhLTmVjV2RMN2E0K3JoWmpB?=
 =?utf-8?B?UWRLb09oMGNTcHNZNmExZEpWRU1qajFkdHlHYkwrMURZR1p4R2tMK1pNWThF?=
 =?utf-8?Q?0ZLM=3D?=
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: a763e7e2-1cb5-4fe1-07ce-08dd8cc04ed1
X-MS-Exchange-CrossTenant-AuthSource: DS0PR06MB9877.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 May 2025 17:06:14.2222
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hVKKa+w8p8kp1CRq6FacsiNsKnnqMC6GeSAIlqbeTe45jdOEnaJ+NJjzmoxpRHDU
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR06MB7124
X-Proofpoint-ORIG-GUID: nMaisG9rj7-p01ye4mClQ9Bgwf3Qo_L7
X-Authority-Analysis: v=2.4 cv=LsOSymdc c=1 sm=1 tr=0 ts=681a418f cx=c_pps a=djVjp5eVWc/OO4qUaLGr8w==:117 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=dt9VzEwgFbYA:10 a=lre9DRYkaIEA:10 a=hEK2XftRAAAA:8 a=qPKtzgQbAAAA:8 a=JyhjuXrkAJMMCOVPQogA:9 a=QEXdDO2ut3YA:10 a=pvvZm7_9ER1OwvpV3Ftp:22 a=OTAqJWGB1laLS8RTg9aS:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTA2MDE2MSBTYWx0ZWRfX8lomxshERmNz DEs54WGPiM2TOAarRwfs/WBhEdWm7aHQkJx0PxOSYETHOqH5CsEV7F7yKVVImlqRvf/89Zt8Qy8 T8jt4rn8Oc2Fili90tSBJcRGApfFxAM90ny5/y9HxciwVEGEVw+77qF9HBaYsRwsTg+7kS6aOmd
 AQG1GRcUM2EC/7HtH71//eAIo83FJm7HDp12QZIczoPoFuCagduu6FtHu7fa4RBLybKbzUJABuJ hbBzMp5GQeo3TyU4RIKIdO58YGUbTchpa1Nhzq/q84jSaLQl6SkgTQ5s48pz0V3ryxaPmN0YEXm zU3oSKLPHKL9QeK2ZQ7bZC6gI6Le7eOFMZuzbvkzW7d2rStuqmtjm/pbg5X5D2cw/CWI/W0ugs+
 9+P2YkO551E9XgZkfHm0Hwk8os4Hkv8lqaRevJwuUU4vqT+NhiZqz7mvNxLYCAIxUiteUtc4
X-Proofpoint-GUID: nMaisG9rj7-p01ye4mClQ9Bgwf3Qo_L7
X-Wisc_ValidFrom: true
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-06_07,2025-05-05_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 priorityscore=1501 bulkscore=0 clxscore=1015 spamscore=0 phishscore=0
 mlxscore=0 impostorscore=0 suspectscore=0 malwarescore=0 adultscore=0
 mlxlogscore=999 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2505060161
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

If you booted a ubuntu on a CD-ROM, you can make all the changes you 
want to /etc/, /usr/bin, or whatever and the next time you boot from 
that CD, it will do exactly the same thing it did before. You can fix 
stuff on the hard drive of the computer you are booting on but that is 
not what I am working on. When you boot Ubuntu, you can press 
control+alt+s to start Orca. But GRML uses Speakup, not Orca. That's 
fine because it is designed to help you rescue a broken computer. I just 
want to start Speakup during boot on the live image. Like if Ubuntu came 
up talking instead of making you press control+alt+s.





On 5/6/25 11:32 AM, K0LNY ?? wrote:
> If you have the image on writable media, you can edit it.
> I was working with Raspbian on an SD card and I messed up the fstab file and
> it would not boot.
> So I plugged the card into another raspberry pi and used the cp command to
> copy my backup fstab file back in place.
> I could easily put a service file in /etc/systemd/system.
> You would have to wait until first boot to run
> sudo systemctl enable file.service
>
> Glenn
> ----- Original Message -----
> From: "John G. Heim" <jheim@math.wisc.edu>
> To: "K0LNY ??" <glenn@ervin.email>; "Gregory Nowak" <greg@gregn.net>
> Cc: "Samuel Thibault" <samuel.thibault@aquilenet.fr>; "Speakup is a screen
> review system for Linux." <speakup@linux-speakup.org>
> Sent: Tuesday, May 6, 2025 11:26 AM
> Subject: Re: Load speakup module as kernel parameter?
>
>
> Well, this is GRML, it is a distro designed to be run from a CD-ROM or
> USB thumb drive. If you change something in /etc/, you will lose it the
> next time you reboot. I don't know if it's even possible to change
> anything in /etc/ while running a live GRML image. It might be mounted
> read-only.
>
>
>
> On 5/6/25 11:22 AM, K0LNY ?? wrote:
>> One could use a startup script in systemd/system or maybe a line in
>> rc.local.
>> Glenn
>> ----- Original Message -----
>> From: "John G. Heim" <jheim@math.wisc.edu>
>> To: "Gregory Nowak" <greg@gregn.net>
>> Cc: "Samuel Thibault" <samuel.thibault@aquilenet.fr>; "Speakup is a screen
>> review system for Linux." <speakup@linux-speakup.org>
>> Sent: Tuesday, May 6, 2025 11:17 AM
>> Subject: Re: Load speakup module as kernel parameter?
>>
>>
>>
>>> If you want to start speakup by passing parameters to the kernel, the
>>> speakup modules you want to load have to be compiled into the kernel,
>>> unless grml does something nifty I don't know about. If the speakup
>>> modules are just modules, then the earliest stage to start speakup is
>>> inside the initramfs. That's still not as early as the kernel
>>> decompresses and loads, but it should still be enough for most
>>> purposes.
>>>
>> Hmm, I guess figuring out how to load hardware speech drivers isn't
>> worthwhile. It might be possible to install a custom kernel into a GRML
>> image but probably a more useful thing to try is to start speakup with
>> software speech automatically during boot. It is not too difficult to
>> start speakup after your machine is done booting but it would be better
>> to have it start automatically and during boot. I'll have to get back on
>> the GrML list to see if I can make this new approach work.
>>
>> Man, I should have asked here first instead of spending a week trying to
>> load the speakup modules at the kernel command line.
>>
>>
>>

