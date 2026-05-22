Return-Path: <speakup+bounces-1607-lists+speakup=lfdr.de@linux-speakup.org>
Delivered-To: lists+speakup@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4IH5K7q5EGqzcwYAu9opvQ
	(envelope-from <speakup+bounces-1607-lists+speakup=lfdr.de@linux-speakup.org>)
	for <lists+speakup@lfdr.de>; Fri, 22 May 2026 22:16:58 +0200
X-Original-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id B906B5B9F4C
	for <lists+speakup@lfdr.de>; Fri, 22 May 2026 22:16:56 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=math.wisc.edu header.i=@math.wisc.edu header.a=rsa-sha256 header.s=selector1 header.b=SwZctJ0+;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 07B9C38276C; Fri, 22 May 2026 16:16:55 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id D8198382601
	for <lists+speakup@lfdr.de>; Fri, 22 May 2026 16:16:54 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 8AFFB382601; Fri, 22 May 2026 16:16:48 -0400 (EDT)
Received: from mx0b-007b0c01.pphosted.com (mx0b-007b0c01.pphosted.com [205.220.177.71])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 263B8381853
	for <speakup@linux-speakup.org>; Fri, 22 May 2026 16:16:48 -0400 (EDT)
Received: from pps.filterd (m0316042.ppops.net [127.0.0.1])
	by mx0b-007b0c01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64MJOBJi1932544
	for <speakup@linux-speakup.org>; Fri, 22 May 2026 15:16:46 -0500
Received: from bn1pr04cu002.outbound.protection.outlook.com (mail-eastus2azon11010056.outbound.protection.outlook.com [52.101.56.56])
	by mx0b-007b0c01.pphosted.com (PPS) with ESMTPS id 4eatcx1tgh-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT)
	for <speakup@linux-speakup.org>; Fri, 22 May 2026 15:16:46 -0500 (CDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ONgGIaBwjRFbF8NJWBKS4m48yleuKIwysuBjc6NuTKtRjxln74rJDvfTPk25kW5tGRrsqTEUawbPYO7HWorDgaHvZwMCkrMNihBwkyRu76sBmuHZQBD7VammgdIHOlaVBAQyBIT2DRLPIksazot02Lxwea6Vqs0S+2OGvheNj4Rcf4lGlnvUAy+WFp4S8WOM4WC1UicnaIr11BROvcE1wjij82m940eJ7A+S2cpxyy20Fm9wAdkB8HyAKYydP6xekKEgmK536VyVVnFw6e1Q3yrn1mhBA3pd5S9WIJK3efK4hSxRjyJEc32o/Tg/pyhxbfPyEg5pYWOQHxBVXZrg2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uHgpR1nyj1OnFG4O8BGNESfa8L0pOevEu7Foe/l2hbQ=;
 b=SaMP2pjCpIRGlrDF6YZyr3yLJ2Ztty/aHN3WUoiBqyGbBbiWPq8ST63CscMOVd5ozjghuJDX9BwYBD0AISqVemnaEnSd33yZd8ypVz/mt9B0UZQZdsWT/rSH6qIt5GZPGXyAh5UZKp3KG/A3eh05hq8LeRjkTgsaedKsAAbRRpd3XHsLQKvOUKGHjnVP54PkKnH4bbEd2vG03uXlmvPQTgg1KFQTtr0DWJ5cIRkK7pu+UmNTfsK770etKW7n0Am51uwQqrRcIwJchtgnlkFkRjdykqB+gQbOSWxcFB89/wOMk8rhk6Ka8ZklGt0evZKpPReRB4GBllsaTnt9LM8MfQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none
 header.from=math.wisc.edu; dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=math.wisc.edu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uHgpR1nyj1OnFG4O8BGNESfa8L0pOevEu7Foe/l2hbQ=;
 b=SwZctJ0+ag9J8lCmcgdhDbMB18BiSiLfokBEf7UkLkJBOCtmgLZfhnXOZEAvI/OJBdeT9PuL40lndOrxRSUUJ983gk3nzioVvcIiYNXSt2bPUbSjtoNW8VPtpH9cvcJHmWNkePeuyszYLKeukh82NGevDFNUgGNs2qhAfXpEN9A9DOqSHqTUI4oT8IkAbQEBpY8hbjjdjkchITcOiGdCUVoXfMmIEun0lHCvcqNSQs1Q+/7GG/PV+yEgN05sigmSfB3VU9Jx35QqvtIcl8AZSoVVFQyaRf9FqqUqpj47sTMknBBrw8GFwXYq65xXqvu4Y5YJwhGvkQLwmfE3KBAMGw==
Received: from BY3PR06MB8195.namprd06.prod.outlook.com (2603:10b6:a03:3ce::19)
 by DS4PR06MB11205.namprd06.prod.outlook.com (2603:10b6:8:329::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.48.17; Fri, 22 May
 2026 20:16:43 +0000
Received: from BY3PR06MB8195.namprd06.prod.outlook.com
 ([fe80::a7ad:fb62:4389:fd8b]) by BY3PR06MB8195.namprd06.prod.outlook.com
 ([fe80::a7ad:fb62:4389:fd8b%4]) with mapi id 15.21.0048.016; Fri, 22 May 2026
 20:16:43 +0000
Message-ID: <fb65c199-a58d-4510-80de-eeea023a468e@math.wisc.edu>
Date: Fri, 22 May 2026 15:16:42 -0500
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
From: "John G. Heim" <jheim@math.wisc.edu>
Subject: Fedora and Espeakup
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: CH0PR03CA0300.namprd03.prod.outlook.com
 (2603:10b6:610:e6::35) To BY3PR06MB8195.namprd06.prod.outlook.com
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
X-MS-TrafficTypeDiagnostic: BY3PR06MB8195:EE_|DS4PR06MB11205:EE_
X-MS-Office365-Filtering-Correlation-Id: ddaa0d84-1c40-4dca-7a7a-08deb83f0aa2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|786006|1800799024|366016|376014|41320700013|56012099003|18002099003|5023799004;
X-Microsoft-Antispam-Message-Info:
	ajmyeHxYEddS9owRa2HMIzTzlw58I2IM/QWibR1GNMdlEkixRBlUtOuS/p9TRTNrVq4CzCiAaJwX00dvNyhzSBRcMmho8El0pGFr/7O6wQMZU+xoEeedhST6aRo+yuq6Vn8sxzJN2tQGoRZEXhcPJ1ytlDlp3ZvcJr0guleEGhJPz+uDEAyKrNOQDtOVpseK/R89hVpOPI5F64WvUghhId9B1pST+5NE9GwyVPCKBidMujToMsVonIJST92AF03BS1mgrlcFhjFMk7Cwl3jiWFCOd9rviXFFygm8TmfL6zZVv30+evD+WDAvKFAKijgn4Q7ETTxRA2PJgWISZTu+5nqV74PD+HIQxpsx0TwDhwC+x6mF4G8EWrCvM+SPoLGrasqPI6gELvPNirJZYnbaGFG8DQfvf4lwuuCXlNud1bZD1tN0+tqnpntdmfVM6pnd8Lxep9+PkQXHLiHy1vMCDPTTkYWBdIpMb00vZyPOEGAEhy9aStsnsdmrwMbWrhOl0hLsQ78NISfJrh+5OyMsRyyUjNK0zumyxEvrKu8ivqqXYcVutX+0GCdpMTgNcrQXCkU070jztEfomfDu49Kl/ZW7pXNfTBIapY1JO91RbdQFECMYBpWuuWCEdHnJgx8jE3OaOpblo3oE2DNJF2yAfBpUa7wCTyVhFy4qZhi08drvzbPPWloioxo33C7YWPlM
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY3PR06MB8195.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(786006)(1800799024)(366016)(376014)(41320700013)(56012099003)(18002099003)(5023799004);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?UUNHUW9GTFJnQ0ZFb3ltYzVidHpIWS9HWitvT0M0RWNpUmFWaVQxVzUzNTRm?=
 =?utf-8?B?bERFajM1U01HaHBESS9rZnVLVVIxNnZtSnRhMWdKU1dsVHV4YmJyVTcxWGxq?=
 =?utf-8?B?ZU11OHhiZGlzeUZSRUh5V0ZvM2d4STFRSHN2aWczM0hudTZXdDlwNG1mQWE3?=
 =?utf-8?B?NmNaRSs4NUs4Skd2YXZzcmhWYk5QblNCQlFOOXhhQUEzV2RrQ2tRQXhwTkwx?=
 =?utf-8?B?TFJTaW9uUUhaUFMyYmZDa2VzNFJ2UTlrUGt5aDVETFJJbk5xSkkwZFVEWWlT?=
 =?utf-8?B?Wkt0ODd6Z0JtTHdkY2FsVzBXVlVyVVM4QUNxY2plTEJBbEE4Y0RpakVnZ0xW?=
 =?utf-8?B?V1dGa3VNdnhnM0oyQm1VZE1vZTdMMDFKUm13NGJoUmpXdWc5cWF4eklSRHFS?=
 =?utf-8?B?aVZ1Z1R5NTRkdzZReXorZzVrcTdxT3lpcnhzbHNUQUg5R1QzMTBpMmlodWcz?=
 =?utf-8?B?bTM2STlhOWdpaFBsZWpGN2VjMlFia014cEZDODMxZHJ6N3kxSkU2SE1uSEdY?=
 =?utf-8?B?Q2N6TjBPbXp2TFdCUlIzclZkWW1UaVczUG9Xa3lJcUZKdE5EblMxWFE4aHpw?=
 =?utf-8?B?M0JvNlhQcm9FNlZBbklLRjZUdG5jVDFkNHhsb2NIS1VjZlVtc3RHZzZNU1FF?=
 =?utf-8?B?aTM3QlNqN0czOVFtVytNVVo2NytjZXBPVDJYMEliVUMrMTIwcjdwYi9QNGl4?=
 =?utf-8?B?cFZmUkNGN2IyU20yVCtCRVI3QzBRL1BmWFJtWTl5VGVNMmVjcVV0UG1OSzBp?=
 =?utf-8?B?MkJ1ajhpdTM1THk4dEhPTGhpa3VoVzBkcTZQUkFRKzJrVTJ2azU3WDNnZURs?=
 =?utf-8?B?YkFYVHRUM1lnRVVVWkpRT0RGRjBPN2MxVFRNMVhWVXd2VmhaTGU1dWFaVUNR?=
 =?utf-8?B?ZVFLSjlBUStGMDNIQTNKVzhLemdrZUN0MWRxWHdmcG81MVQwb0tSOGd2YUJJ?=
 =?utf-8?B?U3dEUmJUSWxnNEkvaVhtWEEwN1Fmd09jUkZlbXlMWmlhamt0MzQ4UlJqNVkx?=
 =?utf-8?B?alpaWDNvbTFmM1AzVVdHcDY2YWViUlVmcTQ0ZG9rUkM3THc2UCtzL2R1NXRV?=
 =?utf-8?B?d04wOER4VEtGeWdiTmt2YzRhQmlsTmxwWU1SVDNueG5VMkVybFQzMk8zNWNt?=
 =?utf-8?B?VDlCbnFYQWhlRHBLc3hINFBXSmc2ZUErcVhJdUNiWnUvQkQ4cjhVSEVmNHdI?=
 =?utf-8?B?aHBkVUlSRHV3ZmNJTnF0VHowS0VnUVRONzV0WEVXWURNRDlVU2FQcytHSHdz?=
 =?utf-8?B?SkJYV2wxVWpRbGhtK3BySmEyKzlwNUZTVHlXZnhTYkZmVDhNaTQySVY1QTQr?=
 =?utf-8?B?V0pYdk1qZFNvaXFXRzZzZ2dmNFZoNFVjUndHa1BUUGRoUXNybE9aM0Ixcm5W?=
 =?utf-8?B?RGZZM3ZxZFd1Q1VPZlcyOFpFbnN4RERKWWdlSHk5eFFweTlveU8xMm1zRWpC?=
 =?utf-8?B?NjdwUzBsR1pTemgzSVpQT3dHUVhtZDN3am5OMWRGbUYvVHV5dEdzY1I4cllN?=
 =?utf-8?B?bjg1UlBNdTlUM291b0JvN2I5Ym15RERxRHBueTdTY0M0T2tTNE1kTUdpN1Yz?=
 =?utf-8?B?NWNhallLN0RIbCtMMEVjZ1hZSU40NGR2TGQ0cy9CZHAyOE96VEFKV3hRcS9P?=
 =?utf-8?B?cThVNVZrZVFQajM4NjNIcWV0RWEzMFdhcmRKMmRyaHpwNEd6UDhJWSt0dHFC?=
 =?utf-8?B?cC9TcFJ5UElNblJwOFpyMXZ1UW5JWnlwNG13WGxtb1c4Y3NEWU9hU2s5dkJF?=
 =?utf-8?B?U3lUQkhyeTZ2cGgySENTNVNOZ2FtTmpoVHJ6d2dpL0E2M2N0YTFQQWxhVVY0?=
 =?utf-8?B?NHNlSmhpSDZsNjM2c00rcTg0cTlsRW0xbnlpblJ2Z2hGS1kvUVgyNnNSQkhQ?=
 =?utf-8?B?NVN5dGE3YWpoemxmc3g3NlUvZ1h4WlY1YUhwSWZKZGJNWkthNUF4U1IwL2Ft?=
 =?utf-8?B?c3RqT0xuK3ByVHlPd1JBR0xQNzdwR2JaWGk2amVZM2hwSCtRbTdoMktVa3c5?=
 =?utf-8?B?MW5GTDY0K0hDRUJMUnRmNm12K2kwU3krbWxyZmNXaC9PWmJZdU5JRWpEbFB6?=
 =?utf-8?B?Nzh1RlNKaXlGV3g4Q3A4OHRjNWhENjhkNi9URDRjcHdqZmlvdnA1Q0JpS3Zv?=
 =?utf-8?B?WmNaZ25hNVFTckx0QnRkd0VEWk42citVMlFETTFRU0g4QzB5YnJObys2VnVi?=
 =?utf-8?B?cmJsOHVvdjlHUjNXNHBYRlQ4dnRVOEVvWXR4ZmZUdUd5bWFPb25jdkZvV3Iz?=
 =?utf-8?B?R3BiTXY3anF4QklmcGNLWTI3QXVackZTYTRKbmE1T2NadlVCQkJ5cmxvK1Ey?=
 =?utf-8?Q?NgenvUJy+M3X34Z/U9?=
X-Exchange-RoutingPolicyChecked:
	dU6IE0zc42Z6bl8VEmayt5s0b7fU44xAxFCg1kEcaMIFVc79wUHvF5WEJEm5v64WIO7LaQUyHbpLyR9TiuldKJQCz04sQG2am5K41M+Wo9y9ALLE1HIOCfVvdKj1NFoQ17mwBrbS6Tu1l+XX6c1FOHLm6C2Ow6I0ryTGycA+QDc9SrMYmaLCEt1KA8FpRr9ugv7o9cY5A+tyHyTcI09nyIpH9fked+WS1rJUMGxQGH4h2RP7tmkHq4NX8adohcnXWHdgwUKFC9EBO9JaPc7pg3MJYhetI7LM7i9Fl8xP5MNXU2wsEh3c+fueggGS2JZVoQPuGkTU2KJtTHiI7jluiA==
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: ddaa0d84-1c40-4dca-7a7a-08deb83f0aa2
X-MS-Exchange-CrossTenant-AuthSource: BY3PR06MB8195.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 May 2026 20:16:43.5973
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xf30UnnBr+QdfZhfJUuJoaBdLvJbh/YjwH3d2zoN88FRooigSPyQegrVK9cEUwZ0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PR06MB11205
X-Proofpoint-GUID: 6UY06Pa9uaqPsjLZvpLLUdCSoqrUZB5e
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTIyMDIwMSBTYWx0ZWRfX8/q3xGGVvZcW
 XwV9JTOutVQGxmn4bfMiZ5YXlY0QxN8/uCNY+SuUUNI95Xpk/0jCBCEijGrCrCSBRwdkk7GnD0b
 YexKblz6X1+84TMFompyBBNzTposd3t5G7gtbFdTfLRLvxu8hePOQ0SiDaweqN6HLLHL6UkHSzE
 vET6RHxgSVVYVxZj9sD/DIN8+u0X1l4dRXYcQLKQrpq3DsNdOesQlsGujKW7AhqTDgy/wFxJrC/
 7Lo/4kjJmvqx2Sfr/q/4zYWzmCHhqQBjbd6O95aaBunFmh4RA3Djj0LntLetU6c0WV7uPpvK4PR
 Cic+bSfE4Cll22IYwtbJDcKz/qjIAFJAvPyEtZ74yIg25DQHFPdGyu5SIu9nf0TopBTrQWLG9U0
 AicmQzUjdiPpRlme/0iNCINcf2OcrsvOBX4BHTNPCoNKq6KgIlm2oCVYOqFb9Lv280fsTSw2c8b
 BfPFzrJHdkLUmmsA1dg==
X-Proofpoint-ORIG-GUID: 6UY06Pa9uaqPsjLZvpLLUdCSoqrUZB5e
X-Authority-Analysis: v=2.4 cv=EO82FVZC c=1 sm=1 tr=0 ts=6a10b9ae cx=c_pps
 a=T1Jff0mhgTaaoho+8HaPfw==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=lre9DRYkaIEA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=ZyELlZqCvD1aXIDzc3I-:22 a=88-R7LcPEwPXXGSWJaMA:22
 a=SPepHLpBw6rm_4MgFBkA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=zZCYzV9kfG8A:10
X-Wisc_ValidFrom: true
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-22_05,2026-05-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 phishscore=0 clxscore=1015 priorityscore=1501
 bulkscore=0 lowpriorityscore=0 suspectscore=0 adultscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605130000 definitions=main-2605220201
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5
X-Spamd-Result: default: False [0.11 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[math.wisc.edu,quarantine];
	R_DKIM_ALLOW(-0.20)[math.wisc.edu:s=selector1];
	MAILLIST(-0.18)[generic];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_NO_TLS_LAST(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_RCPT(0.00)[speakup];
	RCPT_COUNT_ONE(0.00)[1];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:5645, ipnet:206.248.128.0/18, country:CA];
	NEURAL_HAM(-0.00)[-1.000];
	R_SPF_NA(0.00)[no SPF record];
	TO_DN_ALL(0.00)[];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jheim@math.wisc.edu,speakup@linux-speakup.org];
	TAGGED_FROM(0.00)[bounces-1607-lists,speakup=lfdr.de];
	DKIM_TRACE(0.00)[math.wisc.edu:+];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: B906B5B9F4C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

I was about to write  the part of the Speakup  docs about installing and 
configuring Espeakup when I ran into trouble on Fedora. It looks as if 
there is no Espeakup package for Fedora. Can anyone confirm?

This would mean a Fedora user cannot use software speech -- which seems 
impossible to me. If  you  are a Fedora or Red Hat sys admin,  you 
cannot use software speech? That would  be bad. I guess you  could  get 
your job done via  a  combination of ssh, a hardware synth, and using 
Orca in  the GUI.



