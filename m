Return-Path: <speakup+bounces-1472-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 2CC9ACDF4CD
	for <lists+speakup@lfdr.de>; Sat, 27 Dec 2025 07:56:44 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=math.wisc.edu header.i=@math.wisc.edu header.a=rsa-sha256 header.s=selector2 header.b=i6co9V/u;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 9DE4B381591; Sat, 27 Dec 2025 01:56:43 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 7A760380C6A
	for <lists+speakup@lfdr.de>; Sat, 27 Dec 2025 01:56:43 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id CE9FF381932; Tue, 23 Dec 2025 10:23:53 -0500 (EST)
Received: from mx0b-007b0c01.pphosted.com (mx0b-007b0c01.pphosted.com [205.220.177.71])
	by befuddled.reisers.ca (Postfix) with ESMTPS id C9CCF3817EC
	for <speakup@linux-speakup.org>; Tue, 23 Dec 2025 10:23:51 -0500 (EST)
Received: from pps.filterd (m0316044.ppops.net [127.0.0.1])
	by mx0b-007b0c01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BNEjL4s4040543
	for <speakup@linux-speakup.org>; Tue, 23 Dec 2025 09:23:46 -0600
Received: from bn1pr04cu002.outbound.protection.outlook.com (mail-eastus2azon11010000.outbound.protection.outlook.com [52.101.56.0])
	by mx0b-007b0c01.pphosted.com (PPS) with ESMTPS id 4b7w4a08rd-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT)
	for <speakup@linux-speakup.org>; Tue, 23 Dec 2025 09:23:46 -0600 (CST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=I5M5q8yKBibRIChbRdqARmsrRErAs1WCOysa0t5gVMYiejzJCSWqT+PEvauKXtf6ZmewVVxhXxHtFKys3GdYiRGpmyDH0qSu5MZrQ0HtSDsN7H2n/jqDg00jh81thrAYxykYHu3n2U0yGsN9Idl4yPphzzbnTm8BddNXrxoIB3WdfczPnDxaJZCyRfb6YX3tgpnhhpfIiD6mM2KtaQSrNeYXk/FZMyrZZ0hZZK/gWrNMpLF9pFwp7VN35oPfxKLw17PE2hTtZqdinsHGZsmsXHugE1xUXUg7awzUOm68CfLmCKUj5dWo0tlZXslMDCpWM8fBATVxWYervD6A1Mihzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cbZF8+Vtxw9z5GQKf+wDSJiJhUwI5xFH6CfL8WZInCo=;
 b=AftQHjRxM3JwvpjibBk/071n+rcXUdMvPLLMLCcLCtZrJ64DVcN+027ju3pHz4soDj/WZlrMEUzbjMq5boqVIpHC1+aL4dz0313jUe3rHa5RoXwgBsDG2fR+e5z22N4m7UxrT1CYmrin3p/55ePZAxnfq50sdZzckk6oiU0QZJnlf2BH0eD07acUp3WhYwNwcdLuQmnVsdnzaIi5NyXosGZjs65fIaM++NfDQX1PQ17XTzu3v54oehye6xbKQkGa/dKY+72Qw6mxw48UYtQ/BmM398KSpBhSuB1S8aORG7zqeWNVJmG8JpOdLiuAjCGu6CnTsg0gBVl4nihYdNmnQQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none
 header.from=math.wisc.edu; dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=math.wisc.edu;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cbZF8+Vtxw9z5GQKf+wDSJiJhUwI5xFH6CfL8WZInCo=;
 b=i6co9V/uH47O0mgRJWUT0wpBEPw45T4YOdjBhoMCT3FcJJBC/A2Wm+OOuxwuEU6AAyQQOx++ZqMOtkotc9UwjF61ZVS/Aye4MHRq4p8/+0QSSxNjQFBcpKgvBTg02ZAAP6PCbYmDvsacaGEm0hCmESPmQ63Tx+EaULrthuBP7WjSYaJM5aV6cUAodwYMGKzbmlCdzoVVFMmUWEFMsoMWyzW8vMXaX4aT/rDUOkhHCR3zZWFxiE4ku96HKv/9LCd2MW5JvuKsTUikJjIn+2sVeLBBSfgOqMJ/zZz0T08zz+2esbalLKT/Vo7w718THHJ3ZZft6vbq/zIt/YPFlfSBzw==
Received: from BY3PR06MB8195.namprd06.prod.outlook.com (2603:10b6:a03:3ce::19)
 by BY1PR06MB10683.namprd06.prod.outlook.com (2603:10b6:a03:5b3::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9456.11; Tue, 23 Dec
 2025 15:23:44 +0000
Received: from BY3PR06MB8195.namprd06.prod.outlook.com
 ([fe80::a7ad:fb62:4389:fd8b]) by BY3PR06MB8195.namprd06.prod.outlook.com
 ([fe80::a7ad:fb62:4389:fd8b%5]) with mapi id 15.20.9434.009; Tue, 23 Dec 2025
 15:23:44 +0000
Message-ID: <d1476802-003f-4971-bb3e-ace29be88839@math.wisc.edu>
Date: Tue, 23 Dec 2025 09:23:42 -0600
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
From: "John G. Heim" <jheim@math.wisc.edu>
Subject: Connecting a synth via USB port
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: CH2PR18CA0054.namprd18.prod.outlook.com
 (2603:10b6:610:55::34) To BY3PR06MB8195.namprd06.prod.outlook.com
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
X-MS-TrafficTypeDiagnostic: BY3PR06MB8195:EE_|BY1PR06MB10683:EE_
X-MS-Office365-Filtering-Correlation-Id: 46a0d202-6387-462b-e21e-08de42374276
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|41320700013|786006|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?ZDBidms5eFA2TGpNOEVKWlBiV3JFRzlXYjNLakRNWEZvTXRGZTB0NEVndTFL?=
 =?utf-8?B?ZU1MVkh1STM1c2wyaHV3a2thRndxejYrSndNU2owcVdFMlVtaVI2S2srRks2?=
 =?utf-8?B?M2lSYlAyOXhlak14aWVwQ25Ld3NmTjVsNDE2dWFzQXVwVTVLd3h6dnBYUklN?=
 =?utf-8?B?WStRY2QyRlV2SHRYQUZpRWt6RENCNVh6bFRyLzJ5dTdMNVAzWCtKdHlFckZY?=
 =?utf-8?B?d2xGdmF6MDBIVHRtSnlRa2tINDJxcjJxWGkvWGFJdnRPYlBmc1d0aVM3MXQv?=
 =?utf-8?B?YXJDMGV4SDk1VGl1SE0zVEtkblo1TmxVUXN3OHdjb20zbVpMRjVYbHpud09p?=
 =?utf-8?B?aVg2K1lJR09vOUl6dExWWEVTUWg1U0tuQytnYzg5U0xqb0tCcEVyYnpqRDhW?=
 =?utf-8?B?YVJZa2pnSjN2aDlTNjk5Rlo0WndGeUdUbS9jY3pveFIyTkovYTVGQmtQNUR0?=
 =?utf-8?B?V2p5ajFZdXp6SzVCN2Y0bTRIYk9Tc1BuR1FyeUorcTNkd2xuT0JOakZsQzhM?=
 =?utf-8?B?NW1TZDBITVJnWnhTSC9yelBmeGxFL3d2MUtQRmtEY0I2Z2xnREE5OGJPYk5O?=
 =?utf-8?B?eFg5eG9UdmZHRWIzd1VjNElpdXBrUGU4MmhZcnltSzhHckFNS09KM0dRUnQx?=
 =?utf-8?B?OUQ1NXB6VmZkNm1QQWFpYXNTQmVzMnNIK2VaSWQrMjE5RlFkZ3VHclh3bm9s?=
 =?utf-8?B?TittSDFhN2JzMTloc09LLzNnaUo3Vy9sQUtHZk53UW4vWHR4Zm5jbHBDV2pZ?=
 =?utf-8?B?WHN1NTk4RklJUkg0WTBYVjJzaUV5RGhFRlEwSXU0bCtpdElaMFcxaExhQXlh?=
 =?utf-8?B?Y1NFQ21iZWg0SVVMemNPWnA2ekhKeTVtWkVYci9BWHYzVGQ4UjM0U25EOE1l?=
 =?utf-8?B?QnQvZm5ENzV5bkNXT1pjWjBLSHA5bDlIK3pVSTBOZHdJRGVxNTFnNlVzTnhT?=
 =?utf-8?B?a2hKS2cxMWFqaU5nQldGTlJnUTVxeVg1bUUya1FiUE1lbEc2dWlnZHJjL0VF?=
 =?utf-8?B?ZHh1blFEdFNQOW56TDRoeitqR2x1TDNhSm9vaTYxNklob2FMTEk4ZEQvUnVB?=
 =?utf-8?B?UGdxeHUzWXMvNkorbFZRejFUaGVTeHZxVmxwZzYvRDBGZGE0RFVVVFdya2dm?=
 =?utf-8?B?RklYVWxyL1Q1T2wzMmxWNkl2S1BhdTJZQ2UwQUFIeTl2M25IK01DUlIxUmVW?=
 =?utf-8?B?YXZEYktENXNDNzlRNWkxOGtTUVU4WEVCQ1E0SmdjbE8xSWR5Tkh1VE9oWm11?=
 =?utf-8?B?OTRCNy9DTzRvMEVjYVJvYnVxbjNoMWE2aUJpSS93ZXNNVUcxelhQL1lxLzJM?=
 =?utf-8?B?TkJjZ21KeGJyNVkraU55S0lndWUrdVRjRWZWOFlTcnE3OVU5elVmdFRGbUtq?=
 =?utf-8?B?b2hGbXUzKy9Pc25VMllIM2dEbkIzb0VwUHQxSnNuZ09kQUlLNVIveUVUL1BP?=
 =?utf-8?B?MSs1dEplRlRRbmxxTkQxS1E1UmgzRGcveVFFc0JDWkw1QW1zTndBZDJCV0Nx?=
 =?utf-8?B?QTFtVXdZejd4bnBicHNOYmtpalV3c09kNnNoMXJyZVFpZDc0TWZEVnZ6OVFv?=
 =?utf-8?B?OWY1L3p6VStsRzlsbFRBT21RNHUvV3MybzFLM1k3MnkwTG5MK2IvMXdsdzZp?=
 =?utf-8?B?SEMzd0ZxaXFiT3U3VWNEa3lEeUtxV0hXNktkUThNenRNNTBaY0ZUbVovWHU0?=
 =?utf-8?B?ZWE3NlNUWEhncm93dksxL1llelg3Yng2a2FGenZxTjdOczVQeEZKY0hrNFRS?=
 =?utf-8?B?R0Z1dy9ad1QvWVluVjIxMUtOMS9wZmtWWmwvL3B6VFZxTmRvc3RoVnNMRFdU?=
 =?utf-8?B?d1V6UnZBZmQxM2hJS2tnS0VMTmZjNkRpQWE0NFZGUU5iNnFXUXlVUjRSZWV2?=
 =?utf-8?B?WEsxN0dvQytkZWx4SXB3NE5hT2xBc3VqZGRXcWNlMlpBVUhmSStZQi94Zlg4?=
 =?utf-8?Q?MPI+l/r7h2j3paywQtyXrntIJYZxb9l2?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY3PR06MB8195.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(41320700013)(786006)(1800799024)(376014)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?YU5ZQmtiRk5yREt1bG5CUFkyVXdUWHlNdFNzWW9WOS9NZ1h4cHkvclQ4YXYv?=
 =?utf-8?B?ZTRBYmkzZE9UeVptTGovL3cyMlhaZHRFNW40WEhDYlR3RE4rai92M3dRSXFp?=
 =?utf-8?B?cEZiQ2tjc1NoUzZ0R1dUZ0o3dzdxRVJzMjAxZEk5V2h4RDRvNzFYWG9ITWJj?=
 =?utf-8?B?Z2I2ZXlFcTNGYkhXdEZmN2s2L3gzREMwa2RuSjVuSWpiTE5QRG1aT2tESCtK?=
 =?utf-8?B?KzV2WE53RWZiNERtWDJ1QitlWFQxMWdzQmZCT1pLM0VYV0YzVFQrZlREMTlL?=
 =?utf-8?B?V3poUzh2RTk5cVg2bEc0NkdaR2tLQjJsNHFoYStjaTRnRnlwNEMvQW9VdElD?=
 =?utf-8?B?UHlVQXUzZkNWM25nU0UwcS8wSytUU3JBd1JSSkM5ZjdsS3NjR3I4L0tQWW9a?=
 =?utf-8?B?MnkySFltZWpzMFJwd0JCUkhmZjB0UjFtNlAweGJmTnB0QjVWKzh2eHB2UkpZ?=
 =?utf-8?B?TndzdGxBVENiVk40RlBFLzdKbGppYWZEYndKQm04TEFMSGhIYWkyVTNKZ21p?=
 =?utf-8?B?UGtkdXhjcGtyOG5naXJkbVlNdGdHeVNST0xpamFsR3lqcCtyNGVPcHJZMUJ2?=
 =?utf-8?B?NHU1RE9tTG51a2tjSWYvajRZVVBGSTBQby9TemZmSFZiNjU5Z2JMVjFYSlhZ?=
 =?utf-8?B?SHR1dGVBemduK0VzYXRLa3Q2U0hUbjlBMnppdWpZNERyU0E4RmJ2d1V1RTFW?=
 =?utf-8?B?a0lQM0R2V0xDM3dvelExZDhKSGFkdGEzbGNwQlJrVkU3UGpBZ1EwaEw1R1R2?=
 =?utf-8?B?L2l5d0N2WGFtVittbHp2NExvbW9WeGZ5Q3djWkVtVCthbVFDMFpSdGhXODJH?=
 =?utf-8?B?Z25CLzFzTW1sMkZTSzJFbEx3YTg4dndDMDZGS21OaVNDd0JSYkl2alQzS3pT?=
 =?utf-8?B?Rm1velUzS054T3ZVaUxhQkFSbnZUMDcxRjRIYVhPZUIrN2R0VkRCSEhlWVRN?=
 =?utf-8?B?R0ZPOXR0NmQzS0FJbzFqMEcxUFF1R0tvNFJlMHFYZTBCcDA5bE8yZzcwSHBG?=
 =?utf-8?B?L29qMHBSWmxLQm9zRkQrc2tOZmVucld3QUt4NFFtWDMzUzliZXJGNmY2d0xq?=
 =?utf-8?B?MTVFZnN5ZE9rNVEzT1BQem80dDI2eFRPS2lPam1ZQ0NyaVZVWFZiMlNHNk5I?=
 =?utf-8?B?SUVQYkxZWWZhSnUza2ZHaG8xcjZZTmxzU2UzNWRLR2J3eUk0K0tjOHJnc25u?=
 =?utf-8?B?aDl6M25lWE95SElmMUtpczNPT0V5eFFzUlplVUxaU1Nxd21LV0JDL0t1M1ZU?=
 =?utf-8?B?VW5oUGdHM3dvNTZLcVhhd05INmtKUkVDMThYSlJudSt5TjViNTNic3MyZUhK?=
 =?utf-8?B?NkJTWUlOWjVjU2kzMHBqcXZZcTI0ZGxIbGUrSkQ1aUtiZTE0OUl4WEN1Nk1G?=
 =?utf-8?B?b1hhY0tiTXhBNEdQZnFVczk1WDZNZ0lYSjlXeGxBd1lsR0xzekRkOVVKMG8w?=
 =?utf-8?B?OHpzOEk5SEZXSGpQSHVKbEV3U0lSOFZzTHVsOFV1UmMvRElDMENJZEVDcThr?=
 =?utf-8?B?WmhkTnJpWjBUM0R0TjYxbTJtaVRQbXJSTUxpWlVjUlhsZHUxMThGZkRuMnVr?=
 =?utf-8?B?dmtCMEVycXdjSnNiSStaM0x0NnI5ZG1qKzB2eG1lRXJobVIzVHhzeEZWNHAw?=
 =?utf-8?B?bTdFZVI0L0xZeThIKzBGekFsTi9uTUtDRG42UjU3SW00RHZpMTJRYk8vMCto?=
 =?utf-8?B?UlE5ek1wMU9MUCtralQvRkZxR1NYcDN0Q3poSWNKM0Q5a3loL0FvN0dxRUpO?=
 =?utf-8?B?dTZhSTRGVG5wZmgycmhabDVvR1ljUUNTSm55TG8rQVY2cVUrYzBheTBuRWE1?=
 =?utf-8?B?UFcrMmpCVnNGWE05NTJsZ1BlSmNITHFtbVdBcW1qNVhFc1lvVUVOakxlQWMz?=
 =?utf-8?B?TkJOaHF5UldieElhR04yOUdzRHlRZGpyVUZ5bmJHaWJPcm9UdlZuaFIybTNz?=
 =?utf-8?B?cHovZm9pNzgwRjFUcHBUUVkxbytIc1pNcDhTZGVwOGdhRktvSFlKMGxQcEdh?=
 =?utf-8?B?T2l1U2NqSFQyR05kYnhBRVJJM1Z3YlROU1V5NnEvOUhubWJaWkxod2xSOVhX?=
 =?utf-8?B?bTM4V2RRcVhsd2UvN1ZXcC9YeUt4cHR4Q2tqYjRVTEFhMS93NGNQZTQ4T1l6?=
 =?utf-8?B?N0RVSkdtWFFHZXF0V1RkcFljL2pjV0NhbHowallQSm9jaFJxSXRaSzM4TTZL?=
 =?utf-8?B?c0NJM0h0Q0NIcUduVWk0dzNwdUZNdUZzeEtvUkt2SktocGp4bnUveWQvQU9Y?=
 =?utf-8?B?bkRlSDF0QmNNbkhKYTYzbWNFNFNzeEZwK1ZxVGhCYlBDc3dJdmF5SXVRNXVa?=
 =?utf-8?Q?AiR0Dv9gwrpWMfD3Sc?=
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: 46a0d202-6387-462b-e21e-08de42374276
X-MS-Exchange-CrossTenant-AuthSource: BY3PR06MB8195.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Dec 2025 15:23:44.1000
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qtOTnW7IJSs06ODe2L2jzwhNQkV4kc/m6wvBS5Rohic2m59tCl7ooDgo8cXVSPbm
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR06MB10683
X-Proofpoint-GUID: BjQu8UdjPAsM9_a-0hEf3N2eJte4amTz
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIzMDEyNyBTYWx0ZWRfX8F+yEae+h5in
 WPS9kXepY154R1VuiJH31rSt+yK/Cl0tYbJ4hHOXN1+1v9a7TbMjMmHLpLeedjOpVaeq91QfJwh
 A/m6MH1QbnRB4Y53BlxleLhNAh5zE9re1+WoLHcv02/6BHTV/vCnPJNeWVtj00lVpIm+J9VLrkC
 XgCip3pXqXHXXB/nwrKN4Z7wAZ7vchH4I1Z6FexeJMLMTEAbR5MZsBtY2v6TzOGNfM3otxQYlD8
 vSNtcsyjwbzz/usFzx0CGl9w/h1KrFBaiD+mMSNEHrA9Z6fo0JfDvjIgyMrL1IyxBpZVD72PXYu
 FZRYMEpHOFb5TrIdGGLcBgVuo1q1M9r6jQpcXYsyS7iuPs2YxNbvArR06H7IxVYnpekETXYTVrM
 hwtdhXVj1ynIqUtPgwxb5xQpCh0igEyvT6eA1HryOpiZfzaGehgCUOtyK7U0o6/K17F6kES7w3V
 dFi0a1PyXkz5Sl9Rv/g==
X-Authority-Analysis: v=2.4 cv=WqAm8Nfv c=1 sm=1 tr=0 ts=694ab402 cx=c_pps
 a=EtrKi/+kAVY73poqiPL3VQ==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=lre9DRYkaIEA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=wG2VRV0UQa6qcX6Wiz8A:9 a=QEXdDO2ut3YA:10
X-Proofpoint-ORIG-GUID: BjQu8UdjPAsM9_a-0hEf3N2eJte4amTz
X-Wisc_ValidFrom: true
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-23_03,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 clxscore=1015 bulkscore=0 suspectscore=0 adultscore=0
 phishscore=0 malwarescore=0 spamscore=0 priorityscore=1501 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512230127
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

I have heard that speakup can operate via a USB port. But I can't find 
instructions for setting that up. Any pointers?


