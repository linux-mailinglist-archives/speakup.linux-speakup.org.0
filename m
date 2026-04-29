Return-Path: <speakup+bounces-1593-lists+speakup=lfdr.de@linux-speakup.org>
Delivered-To: lists+speakup@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eOllOCVZ8mmbpwEAu9opvQ
	(envelope-from <speakup+bounces-1593-lists+speakup=lfdr.de@linux-speakup.org>)
	for <lists+speakup@lfdr.de>; Wed, 29 Apr 2026 21:16:53 +0200
X-Original-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id D45FB499A3B
	for <lists+speakup@lfdr.de>; Wed, 29 Apr 2026 21:16:52 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=math.wisc.edu header.i=@math.wisc.edu header.a=rsa-sha256 header.s=selector1 header.b=oJ1Jyzos;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 81726382AE4; Wed, 29 Apr 2026 15:16:50 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 5DA24381902
	for <lists+speakup@lfdr.de>; Wed, 29 Apr 2026 15:16:50 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 104D2382A65; Wed, 29 Apr 2026 15:16:44 -0400 (EDT)
Received: from mx0b-007b0c01.pphosted.com (mx0b-007b0c01.pphosted.com [205.220.177.71])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 9809E381846
	for <speakup@linux-speakup.org>; Wed, 29 Apr 2026 15:16:43 -0400 (EDT)
Received: from pps.filterd (m0316044.ppops.net [127.0.0.1])
	by mx0b-007b0c01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 63TH4nEo3616868;
	Wed, 29 Apr 2026 14:16:37 -0500
Received: from byapr05cu005.outbound.protection.outlook.com (mail-westusazon11010001.outbound.protection.outlook.com [52.101.85.1])
	by mx0b-007b0c01.pphosted.com (PPS) with ESMTPS id 4dup2u156r-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Wed, 29 Apr 2026 14:16:37 -0500 (CDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=oNFzWD+6H9JKp3wzEHEZuXjESh8ZskrwwLBGhwryguk3e7RoP6gA0D2l8kF/RAlBqXc6osZiIWurOO2IoGf102+HRRdgB1//zlEZpxTdzBJU2UaJJpqV5TS/irflcx8JQ1bNkQoSehAWE+4RueUj6WokYkx4w11WUExeriBaqNclO4p/OJQDD1MKN+J7aTjGWWcKjoj9v+/rgO9zrDfndw/5dyfCJDWXa1DfYfDth934fOg1/f3TnE4kRUnUX5+pBV+AsS8GvCgSCPGAjRnqKV19XBgARHQGFWxWxukA+9xZQJ1HBRZwwMGm//fm/O4aEltrCZNLH2ZZH/fwalBJtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GggDTNPQC3k/5npLeAmAgD4oqTXwKlUfVHSK7Z3BDUA=;
 b=SItBqihmSflJnthucUIif7zFDbrXBSXRzHM7JbKJAJVzVSwk+5f9WkSH8e4x5TUXnL2NL1OyIGMsRPhNwqU/fFdvzaJfn2pJbno6/FI8GfvWJVZn94C8wtFubPh5G2FkVneZY8C84c+52GrdVrlot0ObgoXgRDknWN/aXkCbEtSbvKaYH1x1Cu21YDamkoaY7YONTtmIkwtZ9zJ7Ubazkxk8qqkCXGxp3eju/ccedS1D1fz92slHC4BJjGH3apXpDBFK1lBG29WnRWB71mxkH9uXEvlJrxAdnzTlbOc/iKAg4Az6sqmnWuXITo5S1eBsuMgKcvIIHtuPcaGflGzgcw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none
 header.from=math.wisc.edu; dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=math.wisc.edu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GggDTNPQC3k/5npLeAmAgD4oqTXwKlUfVHSK7Z3BDUA=;
 b=oJ1Jyzosn6E442utI5OPe6ISnKhDKsZVhp4RIbYuqRxU38rhfcVFaQ1B6/Ql63PA82cVyphGfGO/rca0MmUdjlcajfzCKnr6S3pD4bdFLI2kECspdAnT9JLiyTiD39GV9DVQCHiOiyOhL8OKPdVUOHcnwE/s3NR2hST5W5gtRjDnTqxQmtzSmS1gi5SAOesXx2AdN8felVstB2RPsCfQXbGN/xG1C2d84SzM7hF0l/WE/z33MgwQzkwzsgr+ELZyPlO1AMvf3EPUhDFQVSuXAVcA6WjaOK0dj+Mhpz1N72DL8izAC4AICQhZ7CtkJefYG8Wvu+TpY7PVM6cwWlra/g==
Received: from PH0PR06MB8206.namprd06.prod.outlook.com (2603:10b6:510:c2::22)
 by MN2PR06MB6541.namprd06.prod.outlook.com (2603:10b6:208:1f7::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.19; Wed, 29 Apr
 2026 19:16:35 +0000
Received: from PH0PR06MB8206.namprd06.prod.outlook.com
 ([fe80::9d74:8708:bfec:b7b9]) by PH0PR06MB8206.namprd06.prod.outlook.com
 ([fe80::9d74:8708:bfec:b7b9%6]) with mapi id 15.20.9870.016; Wed, 29 Apr 2026
 19:16:34 +0000
Message-ID: <e8fa3e29-8572-447d-83b9-e2930e34e1ee@math.wisc.edu>
Date: Wed, 29 Apr 2026 14:16:33 -0500
User-Agent: Mozilla Thunderbird
Subject: Re: Update: Rewriting docs plus RPItalk
To: Samuel Thibault <samuel.thibault@aquilenet.fr>
Cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <9a2d720d-2a18-4fea-825e-c1f45e905e74@math.wisc.edu>
 <afJJDL3DkO4D7PhM@end>
Content-Language: en-US
From: "John G. Heim" <jheim@math.wisc.edu>
In-Reply-To: <afJJDL3DkO4D7PhM@end>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: CH5PR02CA0019.namprd02.prod.outlook.com
 (2603:10b6:610:1ed::12) To PH0PR06MB8206.namprd06.prod.outlook.com
 (2603:10b6:510:c2::22)
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux." <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR06MB8206:EE_|MN2PR06MB6541:EE_
X-MS-Office365-Filtering-Correlation-Id: a1af5638-2a5b-4b18-1e36-08dea623d424
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|366016|786006|41320700013|376014|1800799024|18002099003|56012099003|22082099003;
X-Microsoft-Antispam-Message-Info:
	y5PPABUcB/uKGw2XkvsLVk4NIQH5S6FRVaXuX1RGiuqMnbI30aykvEHT12LB/IVc7xThOXYaJWrzAUP1Wle+eOVL70viH6w94eIStKIoD9X/2RUHn1Y4bsibFw91g4/W0xS4g0tdE+90ASS8360FT5xW8Ugdgk/iS89VnIHF6bY0zHyZTmjThKdpPwViU/uIts2c8r3y20VOyd03odd59ZkyT0g6f9OSfE65ULRB/nxt0fzzYRMp0AnVkA5or2jupxPSj8SvfTWZAbX31M7PXINfKrFkmtkf+Y3AeYK71XVgmLHwrAmlLsv43DJ6OKqBg0LzAfaMvG70kE55q6l1LlXVF7c3vSPh/YlJMazZlH8lZDvRFioz1rNbZ7VTfoBu/QNZCVRAUaXTcUaGK/YPIxezjPHo/LIvGeii0WjYSWnIGrdEk4UjbcUDMGBBs5wIHUT+KudQSxJBfPQUf9rk0K900MYBqCUD1ShyrGqHaj4+mK/7qGKE3gatUg/ewceb10dEgc2c/dt0eyEnEDL2wfWCZ6C2JUCybb5SNQ0tkEd9trSnaIodZjdvvphAiIhy3/oqOV5gNAcH6weS5AeJlPrDx5u78TiIXCP240mzG/1OH+kY/al2QihI2HFvRBC3udd2cHXcdzC6vEa2IX9Z8NIyBNvE3GNw95YrVWpn0VMBgcmcFnUdgmiXqv3QiWb0OxMlW27DvzF8LvH5TQO3PvP3tjIKztVrBOt42/cXsSU=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR06MB8206.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(786006)(41320700013)(376014)(1800799024)(18002099003)(56012099003)(22082099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?dXRBZHNqSS8rRlgxa3FrZFdJSDBrQUpqbm5JVTNodmJuOFVwMmY2OVZ3MGUr?=
 =?utf-8?B?dVF6UUVoQWtRSkhZUldKMzl4U1haa2lHNWh3cW9oYVZJYVJta3kxMGRybXQx?=
 =?utf-8?B?K0NMOGlNU2lFNXFKV2RuZC85NjhsWHoyQXlXZitvWTNHeHR6KzhOczZIc3hw?=
 =?utf-8?B?NzJlb2FQMHl6UHcxancrV2FBditwZXV5eC9pNmd4VHJWS1lmS3hOOWhYNU44?=
 =?utf-8?B?MWlrUTlsKzkvemJ6SWJmWUZXOGU1VjNYcVNrOFBEN0Q2WHhhNi8wYU0zVEhu?=
 =?utf-8?B?bG8zVmgyeUIyUjVFdjVZTXNITXJnUEdoWStQYnBLbnF3STFpNDczcEJ0N2dz?=
 =?utf-8?B?R25FWVI2OXdhSmF0SHFBSFdxYUxQaEZRRURhNkEwc2VCT2wvek1Tbm5ra2dI?=
 =?utf-8?B?RndLNE5uYXR3SHk1S0NNcEFUT0hIb1JPdTVTOEN6M2tEZmM0VGc4M3c5TUEv?=
 =?utf-8?B?bW9kcEMxYXlnOG5DVU9wVGdVWjRBZ0NBbnV6QTFEZ1dEOXVsOEJFVzdnWnpw?=
 =?utf-8?B?Q2xKNVZoNzFNOWpoSDhkTzVkbXB1TVd4cTYwalRHcEQ5ZXpsQnhnM0RqS3NS?=
 =?utf-8?B?bkk5Q2hvUFprakFGekxHbnNXY0hkQTduajdaeE5URXBxTURlR1p0dzZzYldn?=
 =?utf-8?B?R3JBd1ZWRTRhRlpxbUxrc1BkY0NqcEN4Q3ZobXNXbnRjQnpoQUlhM1FUTCtU?=
 =?utf-8?B?cXE0OXFvQW1zZngvdk05WkRPY2dJUXU1R2VHOExHaURrNW92azR2MFIybk96?=
 =?utf-8?B?cityTTNwS3lZcDVLTHMzWk1wNnROREdqZUV5REt4ZlJKSmNZdG9uTllaU3pJ?=
 =?utf-8?B?eFhYNWxOUkxkcXUyTGZxOGlkeC9vMWhVdVpPSnk2SUVOMHllYmZNODZUdXo2?=
 =?utf-8?B?QndGNHBLSXNDVndhSWZzSUxWdjlOQXN5SUFKdktiOEk0ckdheFVJcThRL3BH?=
 =?utf-8?B?VGQrbWRTVGF1U2c2MFJCb2lQbUowK0VKWnFxUjl1THF2TWpHbXpMREdaRnRZ?=
 =?utf-8?B?K3RQQzNROTdURGZ4N2hmWi9Yd3BxdGw0bHB5SVFwZ1BUTkFkZWtDNzdUdnlq?=
 =?utf-8?B?VnNIei91SGw1VWdDOUw3K3Z5NG1hcVhhZGxpZ2hQZWk3UHJQZTRQU0h5aE5y?=
 =?utf-8?B?R0QxNU5PUTNFaWpaajgvcEFBODVzUlhhQVFIT2drdTh4N0EyUTNjczdhZjla?=
 =?utf-8?B?U2k4ZERGUTgwQkExYlRxZlVrTE1xc2VlSU1DZU8rMlZEZVdWL2s5RUxMR3V2?=
 =?utf-8?B?Q1N3NnFMeFFnMDd0dUgrUHRlMkFob0U0OERUaFFPdVNwVjE5OGN6RFV4RGdl?=
 =?utf-8?B?aTBZVk9nYTdNdkw5aGJ6RnE1MWpYOUlZcm54dVZZZG1pUXVxekc2ejFZWXBn?=
 =?utf-8?B?cFNSQUE5VXN2eHhmNlc3by9iRXdhdGducUFzcGUrTEs5MEprNEZFeXJ5eGxn?=
 =?utf-8?B?QXluc3MrYTEzZEVqMG4rY3djMnp2QTZXZU1BMW1PMzI2dnVEOEI0VUR1d3px?=
 =?utf-8?B?TlJKODhIdVN4L1prVnZPRjJDU2dQUzVYQitmbHM3c3haTUw4T3pWUGJLVzlJ?=
 =?utf-8?B?d0UwRFpWdkQ0NlF5K002VkwwWHFCN1k1Y0VxL1NNSHFkT29GRlREenVjeU9z?=
 =?utf-8?B?UkRoV0pnUVNUUnJBd21ubHpUUmpUbVNFTDhFNVJ1WnNVeFFLOTI4cjF0ZXhR?=
 =?utf-8?B?QzZhWDc5MUI1UjJYU2xPQUJxL2lOMXFrVGVnM2tpcU9CQkhXc1JJcVE4MkNW?=
 =?utf-8?B?dUVON1EvR1FRR1dZQUUrd2NVNTBlYjNYWVhLdkNzY1JZREQ4aVQvbGZGT203?=
 =?utf-8?B?dFFOT2V0Vm1MY2NSNzQyYVJ5eW0rdFc2RVoxaVpZbjAzZEo3TW1CM2VPc3l0?=
 =?utf-8?B?QkZoaGk2UUxHT3dUZ3pTQkNJaDJIWG9BSjhnbUVVWnZ4QUVHYzJQSXBnT1Aw?=
 =?utf-8?B?OGxoVDFYQ0FmZlRQOW5taXVCMXIzbVh0WFg5VURTdy9sc2VSVXV3clJTNzVm?=
 =?utf-8?B?ZDB3YTRSZWxuamNFcDRwRGlPVzNTZzJsRHRNUGp2dklTbDBuRE1aRStLc1FG?=
 =?utf-8?B?a3ZtWTFXdndWVGRvQ3BYSmw3Y1ZDMWZYUHZIbmxYb01OeEVtbU9pZ1luc3hx?=
 =?utf-8?B?M3JnL2ovZFdwTGtuQjdMQ1FmWmVlSHJTVFBJN0VvYmp2T2xid0cyemU2eW8v?=
 =?utf-8?B?ak9oREwrVmptYmQrWG5xMFo0eVBMcTZaYUNzSzgrTFl2cnJPVjk4a3A2bFFZ?=
 =?utf-8?B?ZkhvVytBMGxVdHRRaDlOTjlVUHRUb0djNWI3aWJmdTFvUmZxZFFwc2h2aTRL?=
 =?utf-8?Q?jbg/GmCemwqPTktxDS?=
X-Exchange-RoutingPolicyChecked:
	h93zS8jVCDGAxHc+t1e/72JJ23orQaY4rsyGrkGkITBFg+EQK21c5zk4JFioc3peEXMG/FiiLl4qc27Svqbb9Blitumr6iDqz/kihyStNDeSN0PQj8xDBKCDq2eTj6yfP54kCVtY3ERjzNLn1ymY5EUl9zW4jfiZCdPvkAnl5nc2oRx6sNNijRPRw6Gn5jscQppe25pTm42JucRf3/y3VkBgGjx6XKfPnrIxQhXlEIUOXWkCnRsyoQwhrQkhiJBYOobWzMOEVCYqooe7g/nK06e+7lSw/hnrFItFmBqOrHeHP2/Gxd0kMci5KwOgBNzH5JNvKgHrhM6gnuPvULhJNQ==
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: a1af5638-2a5b-4b18-1e36-08dea623d424
X-MS-Exchange-CrossTenant-AuthSource: PH0PR06MB8206.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Apr 2026 19:16:34.8130
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: b810oxWvW029EesNMlapXFFXjLomKSuvHVRweHhShVa42SecfASwO3CBCx5id+2P
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR06MB6541
X-Proofpoint-GUID: 0OD84Q1wtcwc0s0hGi7vFYXpZkh2kFk9
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDI5MDE5MyBTYWx0ZWRfX8mMtIW7OJ5QU
 FY+65WCo/829CMka212pqdz3op1+ewKWB43TAVoqCDE2r4WbVn9z00gtwXeBgWjA1RUv7pgkLk+
 f2j+H3jZVnX7A840/IMSSXTOP5z6YhNkR7z4y7URZNoNC5MY1HKH0WpIWfEPS+pz6dyrjDANPmq
 LkU3K1sJHPVjY6cyS2fUMZqn5EOzRtLQ3SXJlCzuFambdKGJfykWyT4A7QNnyF+Cl9l3ZhRFOIO
 7lTkk37IyJeyV069NtnDfGKKpqYgVt2WhP6LgkbLaAfQQAkrhmlmo4rJ5aDC83lSJqKe1JTwKj8
 gpMA+NuXR9EQgArjCsyeXQ0f8ixHjjMXvlK9H46x3VdallgPntB0l1zc+sg/uFhOIlvEc9OOcoe
 P0LV32f52n0xounjrmcn/ab9LGKFkei1X07sVSi7O9mYr+dFNuUwPtMYiC+VU97ypSv6Ufa1b78
 z1vH9BhuojuQnDVcB0g==
X-Authority-Analysis: v=2.4 cv=FdYHAp+6 c=1 sm=1 tr=0 ts=69f25915 cx=c_pps
 a=BP8zQLqIaVEyLeHVCiSdtw==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=A5OVakUREuEA:10 a=lre9DRYkaIEA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=ZyELlZqCvD1aXIDzc3I-:22 a=PmXMWaiFgSq4GZTC792z:22
 a=TGqMBJbX4SiYUawz5_cA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
X-Proofpoint-ORIG-GUID: 0OD84Q1wtcwc0s0hGi7vFYXpZkh2kFk9
X-Wisc_ValidFrom: true
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-29_02,2026-04-28_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 impostorscore=0 phishscore=0 malwarescore=0
 adultscore=0 clxscore=1015 lowpriorityscore=0 suspectscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604200000 definitions=main-2604290193
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5
X-Rspamd-Queue-Id: D45FB499A3B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.89 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[math.wisc.edu,quarantine];
	R_DKIM_ALLOW(-0.20)[math.wisc.edu:s=selector1];
	MAILLIST(-0.18)[generic];
	RCVD_NO_TLS_LAST(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:5645, ipnet:206.248.128.0/18, country:CA];
	TAGGED_RCPT(0.00)[speakup];
	MIME_TRACE(0.00)[0:+];
	R_SPF_NA(0.00)[no SPF record];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jheim@math.wisc.edu,speakup@linux-speakup.org];
	FROM_HAS_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[math.wisc.edu:dkim,math.wisc.edu:mid];
	DKIM_TRACE(0.00)[math.wisc.edu:+];
	TO_DN_ALL(0.00)[];
	TAGGED_FROM(0.00)[bounces-1593-lists,speakup=lfdr.de];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_COUNT_SEVEN(0.00)[8]

I installed Fedora via the Mate "spin". Are you saying that if  I had 
used some other installer, I wouldn't have had Speakup modules?

As it is, I'm able to load Speakup drivers via a modprobe command, via 
udev rules,  or the initramfs. The initramfs configuration was a  little 
different  than it is in Debian but that's because Fedora uses dracut 
while Debian uses initramfs-tools.

I haven't had any trouble with Fedora so far except in terms of it being 
unfamiliar to me.


On 4/29/26 1:08 PM, Samuel Thibault wrote:
> Hello,
>
> John G. Heim, le mer. 29 avril 2026 13:04:07 -0500, a ecrit:
>> Yesterday, I compiled Speakup into a kernel for Fedora.
> Fedora doesn't provide the speakup modules by default?
>
> Samuel

