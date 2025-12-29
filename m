Return-Path: <speakup+bounces-1490-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 520DFCE81B2
	for <lists+speakup@lfdr.de>; Mon, 29 Dec 2025 21:08:24 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=math.wisc.edu header.i=@math.wisc.edu header.a=rsa-sha256 header.s=selector2 header.b=jWQIAzNn;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id D4CB9381881; Mon, 29 Dec 2025 15:08:23 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id B1E7F3817CE
	for <lists+speakup@lfdr.de>; Mon, 29 Dec 2025 15:08:23 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 8E1823817D0; Mon, 29 Dec 2025 15:08:17 -0500 (EST)
Received: from mx0a-007b0c01.pphosted.com (mx0a-007b0c01.pphosted.com [205.220.165.71])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 301853817CC
	for <speakup@linux-speakup.org>; Mon, 29 Dec 2025 15:08:17 -0500 (EST)
Received: from pps.filterd (m0316041.ppops.net [127.0.0.1])
	by mx0a-007b0c01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BTJSpWk2616543
	for <speakup@linux-speakup.org>; Mon, 29 Dec 2025 14:08:15 -0600
Received: from bl2pr02cu003.outbound.protection.outlook.com (mail-eastusazon11011007.outbound.protection.outlook.com [52.101.52.7])
	by mx0a-007b0c01.pphosted.com (PPS) with ESMTPS id 4bbyua07x1-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT)
	for <speakup@linux-speakup.org>; Mon, 29 Dec 2025 14:08:15 -0600 (CST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CoTLlIOLKYXwfNqT7WsEgksiIIKZq1ymtPK+SX0Tjdi0R9KmbimWFrFvgpj3u68lt0c5jnqv2et1RK/b0WDE+qy/sKLKiGnESuvjnUa0pSsnKltC9BtHRPOOfdR1IvJ5GIIiFhPW7gjAVgHKd8ZhJszsyNj7ozHTjeAmH+9BAxduSQaHO2bL2bRj1igKDvk5ChWqaISbdCGzXWBBdwDbBMeWPMWmZkmR09jq+NTlyMLJSE0KNgNvF47GmsoA46MBwwPyhrveJntGe3sqbyPY8I30EX6u6KaqJuOzgBA7fx0sk9JQkibNP0FXvaMhKlFWnCKKR2TF7++iYaU6vcvIig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XuoQxZZyDi1GWRyuqEMcBliFVeKlsB71AlDbaDcvSdQ=;
 b=ZmHSb7d+jTG9CbFtO7a1zYbg7yknli3nipHAjifX/fSvmEHzGC/JZsiZkZqRCgfbUm/nEhMzehEHTWTN5YLKph74tiWOAyegaDoJF5k883aWU6Xmy0nUqeMTOHebGKpqb4mZOtxibAGc55QLaKYCmo+ADP3DhbTor1v18D2JAgxsdCnDqMaMA3DxXRM9j+keP+dzYXTyr1X2Al2yUBfvfesQDhVMplhXwB96YB/8o4bPRtG3GlFRHdj/GNACJTFlFfCW34PrKptwCDwbdIarWi3MTKAWw2DVyjmlmEbvrXNpFp87gTck5UZefk46FH+J4DzTn82ARJYY+zhMEtUu7w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none
 header.from=math.wisc.edu; dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=math.wisc.edu;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XuoQxZZyDi1GWRyuqEMcBliFVeKlsB71AlDbaDcvSdQ=;
 b=jWQIAzNn9tGg4zeuOa59Rpqk4xCniZwnE5/UmMYNInN5NFLWba8IJBnyJauNdiSN6mLU2BDidVKR9yhiHPhkQihoCeOgee87qsDXJMgueg0rUc6By4rqiu6j56GID9PwQiUm4qw7FtD9cbw1F6vLWw2NQSRQzlTMcQXGYLpQ3NdSd0zmxdE5sSRblikDGf+F2E8oHCMrhoa2ImECgbJhN7SzHU6YKQgkSAH13z0mGTY9E/R+yZvOG6xfw7TWbWB+hGxyLRS+UeYNMIIHekjclUCNSTB+fDYXAAd0ZJGLiSagZlfUKE1Ti/NROYk9hwGImrmpmR+jhGe5Kn4gcLKo6Q==
Received: from BY3PR06MB8195.namprd06.prod.outlook.com (2603:10b6:a03:3ce::19)
 by CH3PPFC9978ACE3.namprd06.prod.outlook.com (2603:10b6:61f:fc00::422) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9456.11; Mon, 29 Dec
 2025 20:08:14 +0000
Received: from BY3PR06MB8195.namprd06.prod.outlook.com
 ([fe80::a7ad:fb62:4389:fd8b]) by BY3PR06MB8195.namprd06.prod.outlook.com
 ([fe80::a7ad:fb62:4389:fd8b%5]) with mapi id 15.20.9456.013; Mon, 29 Dec 2025
 20:08:13 +0000
Message-ID: <b6cb65fd-04bf-4b5b-ad56-a7aa9c0afbf9@math.wisc.edu>
Date: Mon, 29 Dec 2025 14:08:12 -0600
User-Agent: Mozilla Thunderbird
Subject: Re: Building a hardware speech synth with a Raspberry Pi
From: "John G. Heim" <jheim@math.wisc.edu>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <4f9075a8-0252-46f9-8594-1dab9286474f@math.wisc.edu>
 <4946952f-7980-4979-bb63-745750da47dd@math.wisc.edu>
Content-Language: en-US
In-Reply-To: <4946952f-7980-4979-bb63-745750da47dd@math.wisc.edu>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: CH5PR05CA0021.namprd05.prod.outlook.com
 (2603:10b6:610:1f0::18) To BY3PR06MB8195.namprd06.prod.outlook.com
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
X-MS-TrafficTypeDiagnostic: BY3PR06MB8195:EE_|CH3PPFC9978ACE3:EE_
X-MS-Office365-Filtering-Correlation-Id: 0762912d-20b6-4c3f-b869-08de4715ff30
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|376014|786006|366016|41320700013;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?OUNkOVp1SDd6SEhjeW4zUFlWZVIyZWVEWFljMXlEOEdOWldYbjZmR0t0aGwr?=
 =?utf-8?B?SDM2WDZpWVN0V0d0S1M1WVJrVVIwWlhLajYwQXBaQTMwZHdTQmpzNUQ5VnV6?=
 =?utf-8?B?UTNIcmF1TG53Z0ZRWThoOWNMdlpmM3kvSG5uQzdjWTV4eFl4cTZSQzQ4Szl1?=
 =?utf-8?B?RllyaUJQZEdRRUVYSHgyb09Eb1IwNjFqTEhkK09mRXUvb245eENEUlVtR3Nh?=
 =?utf-8?B?Yk8yYTRUSkt4WkZCdVB0OE9xSktVTnFWUjlYd0xkQitmb3YvUWFCTWloNU1n?=
 =?utf-8?B?NWgzYXVjM3YzanJ0eTcyNXBlZDE4cVJEOEZTQ2xNZzdLTE54UXQvNGVxWUc2?=
 =?utf-8?B?OHVseDNucHI0UDNrYWYwdy96Mkh3Q2U2cEppcFVVeEFDTE5Za05PU2poejBt?=
 =?utf-8?B?TmN5VW5sZDZ0WHNDN1RGOEFLSGk4SDgwL1FnZis4dk5iRStRbVFxS2llK1Iz?=
 =?utf-8?B?cnoyR0lOeVcrdjB1a3VjMWRwTTArek9HckRzZXBaaXdxOEtzNlM3OVdqcjFx?=
 =?utf-8?B?endLMWUvbUw3ZWg1bEVDTVdHUGtqYnJlelVpMSs4eE16R3NBKzBPT2s5Yndr?=
 =?utf-8?B?Y3BncXYzclB5bFdpclg0b3lTK0RkRTZwUU5LL0xnL0haMXpJQjhOK0RhQlZ4?=
 =?utf-8?B?NVhRNmdUam5VN1hQLzFTNnRid2w5TzkxQjRSZ2gxSVk1ckNLc3d1Um5kQkZq?=
 =?utf-8?B?TzlCS3A5UCtJSndoUC8wbGV4REVOWUM4cGlXK2lIdVlrNTRLbEw1S1F5WFNj?=
 =?utf-8?B?K1VyTUVISmN3R0JsMjFEQnNpUjZ5ZHlucmsrM2FuVFpKRWlxRDRnZWlUdC9I?=
 =?utf-8?B?SlozcHkzMVUrVi93T0l5NDZyd240ZmhOU3U1ZFd3OGwvSUV4Wnc5QStXaVRL?=
 =?utf-8?B?YzRzdG1LNFU4aUNhRWdkbmhKTitKSDhjYmhsSFdMaHpDejFKSXZPakJialdz?=
 =?utf-8?B?OWZGRGZBRWdHd0hFWTJjQll3UUdrR3FCOE5Md2xwRVgwblFtSDBkRU1JS25h?=
 =?utf-8?B?Z3RnZGZFWklrcG9pL2pJMFRIZEVSWElXWmlGSW45WGlqNndMTnVXZGJIbEhw?=
 =?utf-8?B?Rkp5TmdaT3N1TGRObXlpcXg2dWZveUZxUWVHZTAyTTROM2tiejR4TDdlTnl3?=
 =?utf-8?B?MWVjNi82RjdQUGVCNnd6ZHVWOWVuNERxK3RhSDVFOHRtejZ5dEVNNTJuL3Bp?=
 =?utf-8?B?UktJaEtSTnhIYjdqcm05L1g1WHVQdFloUnRyejlwd2NoMUZaTFRWNmpIYmsx?=
 =?utf-8?B?OEFObFQvVGVxTmxuOUVZUnJnV0gwTDFPWHRXbzkyV1Q0UWxrS2NsNm9sOGNM?=
 =?utf-8?B?aGJMVlVLdVRsYVVBUk5Zc3p6TUkySTRBQmhRS2w3TnZkWUlWY1RqYVkza0R3?=
 =?utf-8?B?anFpV3BEbUF5bEIxeDc5dlM2TEN1OXpFTU8vNVd1ZGxaUWIrbEV0UDNPOERF?=
 =?utf-8?B?dHlrc01MNGMrTTl4cW9VR3lzU0RJSWF0K3RXanV3SEVzTHVnQSs4ZjgxUTBV?=
 =?utf-8?B?bW5zM1pUdFArbDk0SldyTDFnZVdmMmpNVEUrR3g5TlMySEpicjNRTzdCN1BY?=
 =?utf-8?B?TG5EQWRBYUVueUwxdFBlYmtKK1l2MUoyWjcxTlN3amM4Rm9WbWxZcEMrTzF1?=
 =?utf-8?B?NUJtc0hTOHB1ejFkOXZvTnlMQUxVMnNIWVgwS3ZnY3hVQ3hNTSsyU2QvTExK?=
 =?utf-8?B?VDJNUWRKQ2hQdFo4NzU0aFp6My9vSytDRVVZRDBwOW5ZSUd4TWJqU0dRQ1hX?=
 =?utf-8?B?N3I1ZnBHUmxrYTBWb3luWnlpcXd3VXhyUW1MNzhBUEtXWmZKSU1ZVVFqQmNl?=
 =?utf-8?B?cmFiUHpwV2lwWGRtcllvSzY1RGNNOENFbmphYVpvUVRHRGRtcjBmYkNlTmFN?=
 =?utf-8?B?U3JuQXNYSDcwZUl3NDRhU1llRVNnSnJEYU1VS1RrQ2Z4bTgraE54cDUyV3BU?=
 =?utf-8?Q?+a50izTFRwiCgEhFFVooSo567hdADg2e?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY3PR06MB8195.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(786006)(366016)(41320700013);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?Nlh1c0JrK0ZYZ3RCUmJHanhlcmlSTFpHeTlIMHpZS2l5dnUrU3VOUTdMcXN5?=
 =?utf-8?B?UytBSXhlWHlkNkJoUE91YjlMOURSSytwcmNGUW51Q21paEhpSHBaMTJtWnl3?=
 =?utf-8?B?ZHBNWjJQVWtpL3Voc041REd4dkJyT3pZYXhKL3I4OXU4Yzc4bGdzWWdYUm5x?=
 =?utf-8?B?dkJJTjdDTkFPZFBpd3ArMDhoelkydGZmRjNmMkQwaGcrbU80eThKaWJQMmJn?=
 =?utf-8?B?akZSaGVvdnAyOFpqSnZwL3lFTDFUbURSeTVuaGN4U2wrT1JrSUFJMiszejNZ?=
 =?utf-8?B?ai9VSkJpVFFLb3RiUk5ZaUFOT2hndzkxNURzN1dvU1hrSThUMnRreUl6c0RT?=
 =?utf-8?B?K2k2QjVHcWNtMDhuUXZmRzczTW5RQ29lVFdYZnczTWFGdmYxS2xZR205ZVBB?=
 =?utf-8?B?aGZyYXZ3dVMweElubHR0VHNRWGFic1NRZDZRZkI0cVVBc3dNV2FaOGFZR3R6?=
 =?utf-8?B?ZGp2ZmNRRkR5emt2Y095YTlvNXVtSTJYS0tlZE5EdFBmWnZ0NkgxeFFZaGY3?=
 =?utf-8?B?cTQ0UThwdURVY05EMXBNUUp2a2RIUm5ndXBiaHRLZTRsc0Jkdzc4L1VudVUx?=
 =?utf-8?B?UXNURzlXZTFwZ05tVnh6QXZGYUlHVDVBcFpnKzdvNWRnUU45Y0wwa3dEZGtG?=
 =?utf-8?B?WFVTRlF0ZUFOUjFEcWxsRkE4enphMytCRHQvbXdoeEU2M1J6eDFvMFJacXp0?=
 =?utf-8?B?S254aHQwa1JDWmk2OWl3bDdkY0F4MHFiUVdxdUlrSVQ1endhdmp4dXovSnhi?=
 =?utf-8?B?MEhyVzBHVVdzN2JDQ0NaYkZVdmJHSFgyckZmT0FkclVWR1JGMHFvRzJBOFd6?=
 =?utf-8?B?bitmcWhWYXkrd1FsY2JhaTJzRmlqckNxejc0Y0x2WUJIL0diWndFZk54Wlh6?=
 =?utf-8?B?WHl1Tjh5MGFSVHYyT202VkFPeFJvYnR1aGJhUTBybDJvaGRxcHpjOEdTQW9N?=
 =?utf-8?B?SXd6ZEdpaTJQQWhqazdxT0lEV2ZTdmJ6Q0F4YVlsK1Q0UjdzV1ZmZ1ZkcGhr?=
 =?utf-8?B?aFZ4ZXI4OWlsdHVsK1hSNXRSS0RRWitVVzcweGpLVXVacVdvS1UxQlZENEsv?=
 =?utf-8?B?YXBwRXZZem1vaDZpcWtwYklTa2hyKzFmQllLMGl3ajIzMWJWeXNtY3NnS0xr?=
 =?utf-8?B?aUZTblk2WEhDZVFUVlJlTjJta3lDaXkvK1A5MEFBbEE0cmlRc01EK28xcGJG?=
 =?utf-8?B?SkxVK016YzkvcTlNUXQ4Snk1aEhDR290L3M1eXRnMXI3TGVLeUxrQXZGV2Jm?=
 =?utf-8?B?ZVkyYmsrTHJycmgxdytrclp0VGVheWtHV1psdTRFV1BGRExUMnlFNVpESVVK?=
 =?utf-8?B?ai9heEtzeE5xVkl6cEQzUFF6eUVwb3crTElhcThmeG1jUUpsSDErOFdOWEVI?=
 =?utf-8?B?ck9hSEFSMDNSYUVxZHpjVnlxci9TamJublBrMkZwMHlEWSt2V29lMmhqZzhi?=
 =?utf-8?B?MS9SejlnNEcvYmVDQjJWMW5zbTR2eG5Za3VQQjltaHVtRGJrT1hkVGVyMlRj?=
 =?utf-8?B?c0dIeG9aVjNBQy9LN0theEdiUG5TSUpJWXN0U2NTbElHUmxVWkp2VmkxVXUw?=
 =?utf-8?B?MTd2SXlqSWVuS0RKR2lsTGhxdGV6bnNxaFJkYmJob2EzRHJMQ1FuTHFVSmlC?=
 =?utf-8?B?ZGt5YU5PdStXSmRtWWU0aG92SHF1YS8yR2srcGIybG9nWEgzNFg1bTczazIx?=
 =?utf-8?B?UTBHaEcrSzUvTi9OZGN6Rnp6ODhWZTVhVFhXWGJaTXEwNTRpYjBlY2ZOVklq?=
 =?utf-8?B?cnZPaGNQOU5TVDN0K3pPWXFQNDN6VlB1RStOd3lONCtMMmo0d2RUbGxPcWFp?=
 =?utf-8?B?dnArbFNKY1F5dnFsYWhLWHRqRUdpS2RLeW1hV0t4L0RKM1NMMGhHbVhydUJx?=
 =?utf-8?B?ejVmZks4ajhiVjVKM2RTY3RwN3orSHVuaFhNU05SdWtod3RSZEpxTlhmcmVi?=
 =?utf-8?B?cDNkQy92cUordGxvNmtIbkFqYWgxUXl2Z1pwYWh6b3QxdldkWUxBcmc2Rm9I?=
 =?utf-8?B?K05BTzJiVlNOcWllM0NITXZZVE1Pd2U0SXJ6VkpKZGh6RU5TUVU5bHRtNVFz?=
 =?utf-8?B?dkI4cmtHamRJUzUvOEM2WHUrNDhUYk5OamZPd296cE5OM0dtalNMZll4Sjdt?=
 =?utf-8?B?aVhJemwvN0FPNEZTbCtHMmcvdCtVTGpJYjdBeWN6a3NQNlY1QUhJdlBHeStK?=
 =?utf-8?B?MFJoMDhpZ0dodmR6YXpDY0dRU0JCSkFnQjJZdXROQUdVSkNac3h3MUJ4V2VK?=
 =?utf-8?B?ejNUWVljTVRMaW1MU0l5RVpJN1F1SUJLM2VyL3I4bEFOWW1NNXZTYlZPK0tI?=
 =?utf-8?B?RXRPazJrTVFGaVhWRFJOT0x5OTUxNmp6SUtkTGlXazhJK09ZSzNadz09?=
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: 0762912d-20b6-4c3f-b869-08de4715ff30
X-MS-Exchange-CrossTenant-AuthSource: BY3PR06MB8195.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Dec 2025 20:08:13.5777
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cr0e+UesFEd554+8k+6dFtTLHd5l5RsDx11KFIBmBRA4cqq3C5xFXINcTmdzp3H2
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PPFC9978ACE3
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI5MDE4NCBTYWx0ZWRfX0jLv9qLonsvj
 G5kBge/hiwZNVUWTPW4Dd543rOdT78/4t9GXN+/DGcTa9HZua4k/gcSYISxLz+DHGSC+2PrWP2i
 MbJtK56+rUn0oi8XdvrsOAL8Nttq3I7n/clGiVq+IKSpeenAB4wBE0l6TCv2t+k6x7ospzK/ImG
 xlOLC0E8iARHUy04saWx+h1312hNXPspF5WB/2oR3aqDR5LtBT36jRzAHEK1IXezF2ro8gy9Dgl
 gBp+laAl5niaSPuxH64LCqcx5k9RfYBVic9eXns9oPeCeag7uB2iubooL5IV688Gwb+Mm1usL2e
 dKXoJEJ0UM/uTmfg5/ZG2vmyHNa2PCL9a4x/i/jXXMqr2xK2bBf4G614Ssq7Z28CCypRu5D7qTU
 vwSlgY+1t1EE71yQP1Rur2PK59Mf9uS7FTZReFO//54+P6fBP5qdFp3kFMHcuwrQcUnQqR0aF91
 NNXetltJXXaPmoyEQWQ==
X-Proofpoint-ORIG-GUID: JpLPVrsjo8vgnSRttKkLBkeFnTArfCKF
X-Authority-Analysis: v=2.4 cv=Q7vfIo2a c=1 sm=1 tr=0 ts=6952dfaf cx=c_pps
 a=St7v3kIWLLX4ycmTPR678g==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=lre9DRYkaIEA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=DyznqomoAAAA:8 a=IUwsy2NxJwq17DmlX74A:9
 a=QEXdDO2ut3YA:10
X-Proofpoint-GUID: JpLPVrsjo8vgnSRttKkLBkeFnTArfCKF
X-Wisc_ValidFrom: true
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-29_06,2025-12-29_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 phishscore=0 bulkscore=0 adultscore=0
 spamscore=0 malwarescore=0 impostorscore=0 lowpriorityscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512290184
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Um, I should have mentioned that you're not going to get anything like a 
real hardware synth at this point. With my RPI and a bluetooth speaker, 
I was able to log into my desktop and ping another machine on my network 
but only with great difficulty. It works as a proof of concept but 
that's about it.


On 12/29/25 1:56 PM, John G. Heim wrote:
> I have to take a break from this project for a few days. For one 
> thing, I've been neglecting my real life responsibilities. But I also 
> think I am going to send for some audio hardware for the Raspberry Pi 
> instead of relying on the bluetooth speaker. I figure that was good 
> enough for the proof-of-concept phase of the project but I need real 
> audio hardware now. They have these things called HATs which can be 
> hooked onto an RPI via an edge connector. I'm going to order a sound 
> card and speaker HAT for my RPI. Also, I'm going to see if I can 
> figure out how to take advantage of speech-dispatcher so I don't have 
> to code for different TTS engines. But I had ChatGPT write up a howto 
> for the project so far so you can try it yourself if you want to. I 
> just had ChatGPt generate the howto because it would have taken me all 
> day. So I'm not 100% sure the directions are correct. Look pretty good 
> though. I posted it on my web space at the University Of Wisconsin. 
> The LiteTalk emulator python script (which is really the key to the 
> whole project) is there. So you might at least want to take a look at 
> that.
>
> https://people.math.wisc.edu/~jheim/RPITalk/
>
>

