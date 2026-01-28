Return-Path: <speakup+bounces-1531-lists+speakup=lfdr.de@linux-speakup.org>
Delivered-To: lists+speakup@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2Og3IOR0eWkSxQEAu9opvQ
	(envelope-from <speakup+bounces-1531-lists+speakup=lfdr.de@linux-speakup.org>)
	for <lists+speakup@lfdr.de>; Wed, 28 Jan 2026 03:31:00 +0100
X-Original-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 847099C46A
	for <lists+speakup@lfdr.de>; Wed, 28 Jan 2026 03:30:54 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=math.wisc.edu header.i=@math.wisc.edu header.a=rsa-sha256 header.s=selector2 header.b=FRx35AZp;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 7966038208A; Tue, 27 Jan 2026 21:30:52 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 553DB381907
	for <lists+speakup@lfdr.de>; Tue, 27 Jan 2026 21:30:52 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 40AE2381909; Tue, 27 Jan 2026 21:30:46 -0500 (EST)
Received: from mx0a-007b0c01.pphosted.com (mx0a-007b0c01.pphosted.com [205.220.165.71])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 22AD538158A
	for <speakup@linux-speakup.org>; Tue, 27 Jan 2026 21:30:45 -0500 (EST)
Received: from pps.filterd (m0316041.ppops.net [127.0.0.1])
	by mx0a-007b0c01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60RNZYgC2855747;
	Tue, 27 Jan 2026 20:30:34 -0600
Received: from ch4pr04cu002.outbound.protection.outlook.com (mail-northcentralusazon11013023.outbound.protection.outlook.com [40.107.201.23])
	by mx0a-007b0c01.pphosted.com (PPS) with ESMTPS id 4by75v8vr8-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Tue, 27 Jan 2026 20:30:34 -0600 (CST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sAsU9kSf3iKljFedgnIq9SjySvn9HU5Yom+NEauXWpR/BXN7o3scc7km2X0PAD6k+gLJDGWxvDJBP2jsjraHAPf9i1kviOtjr856HLJ6hKtztGV+FcVSF54PNjO0LkGnNro6qxHCpb2KjNE71/3gI2csA2OCfKBUQetTYTrng0PEsmv6caE0Llt0DoMHCCk5jT/2YiyCqg/HXYxFk2Mh6m5HUPIPQZP3Y9zghV9KTHId9HA260O5JLEBfkX1TRJ7doHWV/wU/OK/tIeFK38cORoVXs6+ZIFOa/Ya/IeUmYX04A91RbEtTMrQvV+D3s40PYdHr4nakCfXWTxOuBnZCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4tI+YUAc+Uh8pcR+PH4hgW3TUg5dWr5FCsV2o4dYK0s=;
 b=f7b8b53HmlDi71CrvZsUR7xAsqFcHEag8J8IZCvZL/6gktkwxZJStDMM/Z3NiHiAE8FUEGy7Ek/3wF93MrjH9Aygvuda1yFgkeW8i/nCsPQKJEKCl0wSVz+K3Mx+CY5x2BGYmVEXFxkrdEHvoYgkT4eugrHeD7QHfd0nQ6x43rDxxiOf7yTSsGAPsPGIInDNKMqhp8njEH9hwvZBVjY7iHpDpjtIACm9oFP7BfUKErRtXYb3yrSqFT7kvp7NtEPg7/PLOw2n13qsnjbr+BouI7d1R2lUZjBfiF+cVjShk3Epu1sZMa+wG3/paHu7xc8Z90pJPq7ivP82/eGH59qjnQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none
 header.from=math.wisc.edu; dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=math.wisc.edu;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4tI+YUAc+Uh8pcR+PH4hgW3TUg5dWr5FCsV2o4dYK0s=;
 b=FRx35AZp6XZZBjBYheqWbKEExWdB4bsuiwDbQ+CSQbba6bV8JNRBoY8MyzgCDP27u/eiyQVTiv4nn/54XOP4ldplJeXiCqy7kiVxP+s43ZmekEslV/sCMGzPliuiE0qGJosy7cL0hW6mHd/7dQ2sRus9HBuG6OuLCL0mPSNRP9z77ieNiLoYF5/KQGzdiKB9DQtU8I+U+jkhLcZkYZbJYBEUKa8uVwzZjSX/gg2bD6kNHn5Rhd/X45eUe18leFvIUawkTJ9QNafEDEFFDJIeL9sBYczmzfcelhS1sBB1msqrlXcD6s6Ir2PxfKClU80LTErmiV9upBlplQsSwg/ngg==
Received: from BY3PR06MB8195.namprd06.prod.outlook.com (2603:10b6:a03:3ce::19)
 by PH7PR06MB9197.namprd06.prod.outlook.com (2603:10b6:510:24e::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.14; Wed, 28 Jan
 2026 02:30:32 +0000
Received: from BY3PR06MB8195.namprd06.prod.outlook.com
 ([fe80::a7ad:fb62:4389:fd8b]) by BY3PR06MB8195.namprd06.prod.outlook.com
 ([fe80::a7ad:fb62:4389:fd8b%5]) with mapi id 15.20.9542.015; Wed, 28 Jan 2026
 02:30:32 +0000
Message-ID: <873ea9d1-ba70-48e7-9556-704f32a35dac@math.wisc.edu>
Date: Tue, 27 Jan 2026 20:30:30 -0600
User-Agent: Mozilla Thunderbird
Subject: Re: Cannot get indexing to work on my RPI hardware speech emulator
To: Brian Buhrow <buhrow@nfbcal.org>,
        Samuel Thibault <samuel.thibault@aquilenet.fr>
Cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <202601272220.60RMKBLE022931@nfbcal.org>
Content-Language: en-US
From: "John G. Heim" <jheim@math.wisc.edu>
In-Reply-To: <202601272220.60RMKBLE022931@nfbcal.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: CH5P221CA0013.NAMP221.PROD.OUTLOOK.COM
 (2603:10b6:610:1f2::10) To BY3PR06MB8195.namprd06.prod.outlook.com
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
X-MS-TrafficTypeDiagnostic: BY3PR06MB8195:EE_|PH7PR06MB9197:EE_
X-MS-Office365-Filtering-Correlation-Id: 19296e79-0816-49fb-ba9b-08de5e1535b1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|41320700013|376014|786006|366016|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?MDNxSytqN25YTkJHeHNPYTg3NnlNNTJJd2ZpK1hNSTBRMlAzc0IvRUo5K1hF?=
 =?utf-8?B?M1JmV3oyTjV3TmovQmJoZm5nb1V5Zk9HTUtyZFR1NEU4MVRRSDlwSEMrL1I3?=
 =?utf-8?B?aE85SFYzb3VXV1UvcFBVd043TUpxK1Jldmc4WDhCdjBiaG04UC8vTTFCRzV6?=
 =?utf-8?B?VXFrUG14ZkxoMHNQVGs0VTE3SUNaRTFmbmZaUGhVTDVlZTErb1ZhSk0zdW5P?=
 =?utf-8?B?R1hXeHNJMndpTXFmamNWcERKRGFVTW83bmh6VlhWT0w1VUllWTZ1YjVYb0pt?=
 =?utf-8?B?emNUNXYvZHZpVGd0TDl3c3d1cXVjM2JTOXlmaHBubVZ3R0xIblNaeElZdWZG?=
 =?utf-8?B?NDJMeHB3RitERGQ5djlVcEhWdHY5QVZYa295NjVCVk0vQVc4eFg5QmxPSElu?=
 =?utf-8?B?Tjl1ZmQ4ZVBYS1R0V3h6M09qWFEvS200UmRBdjZLL2FBUndjUGlqcDF3bWV3?=
 =?utf-8?B?d3pZY001WkQ2VDNiYUcreExoV1pyMjJkaE13TURvbWxuMldBZUlWS3pZMzBs?=
 =?utf-8?B?cXorOE90d2NLb0dFdG95bk5JVWxBWlczaFVodUh3eGRISS9YTkI4SEhyNytY?=
 =?utf-8?B?eXNCTlM3REFHZGNSWGt2WFNQUStEaFpxcjExU3lVNUM3S2s4dW9QbU44aXdu?=
 =?utf-8?B?RlhPTU1NY2s2b3J4b2JwMGtUM1BTejh5R09NZ2NmcjZjVkF3SEtyQlB2UzJH?=
 =?utf-8?B?dmpnR09BZVVOSjF1VEdmRi90elNWNUFWdHJPaGZESjhGOGswelIvcG1KRTJD?=
 =?utf-8?B?MVAwaGptN0Y3N1IvRGZRUzRKSy8rZ0lkUGhGRjJFNGIrbUM3SjJmRmNvTC9z?=
 =?utf-8?B?WXcramNSNU5iTGU3RGJpek5ZYVdMdWpEV2dYT2x4WEFjTzFDYjI5bnN4MlY3?=
 =?utf-8?B?YlcvVWdVM0lvcGJuekZ6dEZKWEpZOEJzOVptUGR2YWhKdmxpcDNSWGJwVFVH?=
 =?utf-8?B?K3NqeEgxTldUKytuZkMyODd0bElSQ3hTNEZCNXdtMFFJNC9kVVdCYXBmOC9o?=
 =?utf-8?B?VjZVZmQydXNla3kxcmZiTlIzUkJ0elNhT2RGT3pySTVvb1kvb1ErWk5wRFJH?=
 =?utf-8?B?WUh4ZFk1N2ZwcGt3VzluUDk4MU14eHg0NjVwWVZMa3pvRERrZUpmODBmeFJS?=
 =?utf-8?B?WXZzY2w0TmpRS0RhVnNXWXFYK3NiOEJ0WHBtRFVkRzR0MlR2YlFCbURHcGk0?=
 =?utf-8?B?OW1TSjh4WDE2Zzc5MUllS2pXa1dSN1pFMktocmxwS3FKMTMySTRidWVERWVL?=
 =?utf-8?B?VS9DQ0JVYmlXNzhXWExnbHZaT0JJckpWdW1TQ0dwbG9KMkxPRi9rbEt2QWpZ?=
 =?utf-8?B?VWhFTCtmYXhjbkc5U014My9XSGZiTVo3YzZHbTczTnBJYkEzSUJIZU52elZq?=
 =?utf-8?B?Yk9ic0xvYTh3eHFqYTI3RXpoeTBxRWdVQkhQKzczT2lobE90VVpiR2tRalpv?=
 =?utf-8?B?TmNkc1lkWWNIMDM2TFduUVUwY01jRjl5RG1LMkFXdWdwV3lySTBTZE5BQTdW?=
 =?utf-8?B?UVNyS0hqbERCMU90eTVZamJNWkxOWXNPa1pIVVdrR2ZFeG9jeFYxSGwwcFNj?=
 =?utf-8?B?WHBKSXVITWJDTWFxZXk3TllTTkphaWZIbUlmenJBUFpQaWU3NTRPVzQ4Tzd5?=
 =?utf-8?B?SnU1VWNGSjYwVGp2dm8vaWY0amFXMzVRSFhKTVk4N2Rhd2pJak5GWDBUMGtu?=
 =?utf-8?B?Y3k0RW5uNGltcE1OSE1LQlFIU0I0UWJKU3NPaFZGMWc0cHRDQ05iT3J2dFdE?=
 =?utf-8?B?UDhSWFBnVVczTk1Sc250d2VES0xha080cldSaDVQNkNxRkgzZlJCYjVXclFV?=
 =?utf-8?B?aS9WM3VIMjZjeU11V1JZdmgrRDB5M3lrc3JDYytrTk9IeVBSL3hrMVVUWHFx?=
 =?utf-8?B?OGptVlJqMVZoT2lIQ0ZjYzVDaGpIdnpKdnNjemFYalNXWno2UzdCemc0U1dK?=
 =?utf-8?B?OWJxT0NYUmtTUnFLeGcxL0lYTVMwSmdpWGpSYTBrbklhSVdRc1pBNzdRYkZH?=
 =?utf-8?B?c3hybG9FZG81NmQzZEN6KzB5S1ZsVGhhS1hab0J3aXdPdnFOenFZdGM5RGph?=
 =?utf-8?B?VysrRlFZc09uRW1IWHk5WnVYcVpvSVBVVDIrRnQ0Z3VYWXJZNWNrTHFiUy85?=
 =?utf-8?Q?EXyM=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY3PR06MB8195.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(41320700013)(376014)(786006)(366016)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?dGRkM21IYW95a3ZzWXMwbVQxWGJiUlRPNWtLb2JITHZWbDdIUHF1MWY1ejhk?=
 =?utf-8?B?S25QSURBdmJQWC9Zejl4K0w0a05iamc3ZDZaMklJbTZzYWVheFoxeHdCS3Bu?=
 =?utf-8?B?V0M0dTFzNXdURnA5bHVPdTlwL2hlaHJzUG40d1BJRTF6OXZqVTJ0dEJ0Z3JU?=
 =?utf-8?B?RGU2SmRHRml5d05Md0QvRm5nTkN0RmVyV0Zjanl0eGFGNGF6Ulk4ZTh3Lzgw?=
 =?utf-8?B?NXZJRVJ0TFR6bnl2K3JnWnkxYmtIWkhkQ1plSTJjVlpJaTBBaSs5NjRNM0hT?=
 =?utf-8?B?aHlEY1YxdEE2SGFDaGxCV0poaUlvUm1UYlI3djR2Ny9OK0ZzRUYxS1Jacksr?=
 =?utf-8?B?c2ZzbTZFUHJtZ2VsVWI3M1RVRkFiREdnUTNYbU1SYjllajRBSDFhTXIvN2c4?=
 =?utf-8?B?UUdaUnFhUVFMTWNnTEVvYURLcWxmOFpGeGQ1L3loeHNsUDZ1N295NzlYRmJl?=
 =?utf-8?B?Qm0xZTN5dlhKcGFmVjVxUGI3OWtNZ2oxYXRqUE00bEVxcHZhMXZCWlZrZ3Iy?=
 =?utf-8?B?WndyUjRKQkxLdG5obEJGUjhXY1Z4TS90QWRYZzdJZXlVWFNNRERpclN2Rk9F?=
 =?utf-8?B?ckVucHY4dDF2WlhSTnhINnREakIvTmVEb2ZBM1A5Z1dTN1FPV3hvRmRpNmJN?=
 =?utf-8?B?T0xjS3hvN1ExckFBMTVSSGhYL3NCRjNlSU83TStRUkdERXRjMHBaZkxLelhU?=
 =?utf-8?B?TUpTdmxSZGZkYUdTTHVNTmRzNDZuK0FQQlU4VExlM3NmemtxdjU5RU9JdDg5?=
 =?utf-8?B?M2VaOWIrQzkxZXA1Vi9mS0dOUitaZHRLb25MMXVtaFEvWkNUN2hoUVBVbGVD?=
 =?utf-8?B?RDhBUXFQazdKdjF4NkpaRE9CL2FRK1QzYWVEdVNkUHc3K0U1cGVtZEc2TjVK?=
 =?utf-8?B?dmZ4Q2dWdFRzN3hjN0svOHRKWExRYlBraGhkNkF6WUthazdtVWduUHpMUFdl?=
 =?utf-8?B?WmNzbHplZy80cmtPSkF1WWNzOTVpb2RlTFkyVzJJaXJOT1RrQWtTWS8wOUhO?=
 =?utf-8?B?V2xWTWhrbGZIczRoNEdONkFSRVFVeTI4SFlpR21wODM2N09XajVDNmJyN0pS?=
 =?utf-8?B?VVRwSS9lZkFTN2cxYTgvNXhuMXlvYjZZeVpJRGpkMG1sVzAwS1pzNms1bldt?=
 =?utf-8?B?NzhyTTc1dUZyd1ZnRFhXTWRJeDJBRm9ORThRR25vdmFnRHpFLzQ4Z3hpck92?=
 =?utf-8?B?TTFYY0ZZUWR1Vy9uUVI0d0JRU2pYWFpCcWY3bVBHd1cvRkt0L3lkM016OFdC?=
 =?utf-8?B?b0VBL0RYZ25IMmVQS1ZncGZ3ZVg1NHMvUlF1RGNYNzdyd0NGN2tZTUZteUc1?=
 =?utf-8?B?NHNjc0lyYzdzTW9FUm9nV3gwa2xGWEt1anpudWJMdTlKaXNWbGRYTEIwNlNi?=
 =?utf-8?B?aVhoYzd3d3lGUEQ3Q21TY0p4WXZOZFp5ZFNLR2hINnJhRmhaUkVyOWIvUFFR?=
 =?utf-8?B?b3VQQTVRVzk0M1dkYk1IYk5xZGRwSnNBTWI5WjVFd3U3Y0d5Q1p5OEZKaVlT?=
 =?utf-8?B?S056eEpmVURFZXVmNUxYeTc0N3dySkFqNk10a3QwT3VCNlU4VjhyOGJRaWNj?=
 =?utf-8?B?aEVtLzhsQndzMW9kbmNlVWt6YU0xM3d1a0RVTEI4VXU1OHB3dDRtUTZVdUhT?=
 =?utf-8?B?dW9GeUd5eVJtTG1ZVFp2bmVkdjhjazFleFJRZUxNUGFOTHB0aGM0QklBLzdJ?=
 =?utf-8?B?V0U5aGNrQVZETlFONVZrZC9zS3J5dVJUQnBNSUg2Q1lWZVdWQm41NG9TMkxU?=
 =?utf-8?B?a3RkRTV0ZG5QWVMxY1RmYVQwUFpXNDdBYmw0dkpBeEpsWlpMampUUzNyU2JE?=
 =?utf-8?B?TENmak1mU2ZFYUtMSjczdXBrNHUrakNBWWxweVFHNXBQT21nUjAyWk9GMEpW?=
 =?utf-8?B?MHFvbWh4ZlNWdlgxSWFua2t1dlVNcGxDYjF4SFVQRWtjRGw5eVgvZUZ1VCty?=
 =?utf-8?B?WmprbkpoMzBZWjNPcXlicC82dHFQUng2Z2pobXBiZUl5TEhsQm1PVGF5NWc4?=
 =?utf-8?B?a1VzVVFmRzZjTWZleEp0cG1qNTVGek92Yit4QTA0am4wVVZmemV1KzZsaWtJ?=
 =?utf-8?B?cHJPR0dkZlRtYTdRTEd2dWRpVUM5UE5wWVZXZmcyVmR6UDYySVVkYVVUcVBy?=
 =?utf-8?B?MkJLaFllTjhROE80djY2d3hQSVFXck1BZkNKTXRkd1dBb0JFbkRyMGxrVDJr?=
 =?utf-8?B?ajUvak5OQmxhRDhwM015eFlqTnJqTEJweTRSVUhLUk56SWdiekRlWDlqSG1B?=
 =?utf-8?B?ckxYMk5ZOVFlY284UTFLZmhPQ0RGWFpUNlNpY0NYTGwwWWV0WG9MNThrUjJ4?=
 =?utf-8?Q?FZTdQI8hkrJHvC6FXC?=
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: 19296e79-0816-49fb-ba9b-08de5e1535b1
X-MS-Exchange-CrossTenant-AuthSource: BY3PR06MB8195.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Jan 2026 02:30:32.3500
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7cZZw8VBBxX/e/fNVZTwGklnlEdN2bUU7AN5jG4OSV7OC5HZWk/hV8cK3Ea/4IYb
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR06MB9197
X-Proofpoint-GUID: KFhZVv2QOOhHZBzl55Qa4obUa9VJFCV5
X-Proofpoint-ORIG-GUID: KFhZVv2QOOhHZBzl55Qa4obUa9VJFCV5
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI4MDAxNyBTYWx0ZWRfX+bbfrabyrklx
 qSYt2SGy/uZYKhIgn3TWfHk5MZep44BDTpXFQjM9RaxnDA1wx7sHYYEewZEoPprGB2lCbjuL5lB
 Nn+0c+0wHxe8jjiwv/n87iwIYTAzPF2DDNdCWcdvkDlg4YEBF8M/01iojj+ZB4cEL0e4Mf9ex9H
 /UBf2lVvL//x0lAqdURYM3JJR6N96+1CazTQTKbrMt+fhmdCtYZNbY9FtHL0t98FcnoXkoDVaBg
 6lgICehOFmmp2tGEJ47MKFxQ7XIrqFiU6VmpWYy9H2sR6LI5BSCJ/B/9za57cQmgDjdd4Oyvc+7
 hRnth0Ob+mJdf4jRyg9UdFqkFHLtqlgSN3suDyA3urNKbSv3VMygUHxa8hdYSHOAESz/SHhuL6C
 V5YvEXbbdJY+NczXORi9gohN/BekhCA0/kvWTWfhbdKBiJnEdDOOOM3O8ltEZZrkutBXHPLU0CY
 q9nTLix3ORZq6AnWbBw==
X-Authority-Analysis: v=2.4 cv=GNMF0+NK c=1 sm=1 tr=0 ts=697974ca cx=c_pps
 a=JigUrrSO7vm3KiUpdjzzBg==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=lre9DRYkaIEA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=8RaTqLmjIq_zBDlaJQAA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10
X-Wisc_ValidFrom: true
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-27_05,2026-01-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1011 bulkscore=0 malwarescore=0 impostorscore=0 spamscore=0
 phishscore=0 priorityscore=1501 adultscore=0 lowpriorityscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601280017
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[befuddled.reisers.ca:helo,befuddled.reisers.ca:rdns];
	NEURAL_HAM(-0.00)[-1.000];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[speakup];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	TO_DN_ALL(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jheim@math.wisc.edu,speakup@linux-speakup.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-1531-lists,speakup=lfdr.de];
	DKIM_TRACE(0.00)[math.wisc.edu:+];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 847099C46A
X-Rspamd-Action: no action


Very helpful. But  my research seems to indicate that the Raspberry Pi 
gadget port does not have 5 pins. It has only 3, (TX/RX/GND), no modem 
control lines.
I take it that means my whole project is in trouble.


On 1/27/26 4:20 PM, Brian Buhrow wrote:
> 	hello John.  A quick romp through the speakup sources from the linux kernel suggests your
> issue with the lite-talk and delay is not related to indexing.  Instead, it looks like Speakup
> is expecting the synthesizer to signal its readiness for more data by raising the DTR (Data
> Terminal Ready) pin on the serial port.  If it doesn't have that, it uses the full_time as an
> absolute timeout to wait to send more data.  So, if your emulator can raise the DTR pin and
> your serial connection carries that pin back to the linux machine, I think you'll find the
> delay goes away.
>
> The differnce in delay behavior between the Ltlk and Apollo synthesizers appears to be related
> to the default size of the speech buffer for each driver rather than the characteristics of the
> synthesizer itself.  That is, if you run the Apollo long enough, I think you'll run into a
> similar delay.
>
> Conversely, when Speakup wants to send data to serial synthesizers, it raises the RTS pin on
> the serial line.  Consequently, it looks like in order to get the best emulation, you need to
> have a serial connection which has 5 pins connected: gnd, snd, rcv, dtr and rts.
>
> Hope that helps.
>
> -Brian
>

