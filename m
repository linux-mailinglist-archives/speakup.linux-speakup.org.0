Return-Path: <speakup+bounces-1250-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id BC467A9D736
	for <lists+speakup@lfdr.de>; Sat, 26 Apr 2025 04:18:15 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=math.wisc.edu header.i=@math.wisc.edu header.a=rsa-sha256 header.s=selector1 header.b=bGIYFsSL;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id D3F0D382985; Fri, 25 Apr 2025 22:18:12 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id B06F13818C6
	for <lists+speakup@lfdr.de>; Fri, 25 Apr 2025 22:18:12 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 80B073820D6; Fri, 25 Apr 2025 22:18:05 -0400 (EDT)
Received: from mx0a-007b0c01.pphosted.com (mx0a-007b0c01.pphosted.com [205.220.165.71])
	by befuddled.reisers.ca (Postfix) with ESMTP id 78B5B380B06
	for <speakup@linux-speakup.org>; Fri, 25 Apr 2025 22:18:04 -0400 (EDT)
Received: from pps.filterd (m0316040.ppops.net [127.0.0.1])
	by mx0a-007b0c01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53PLBUD1024215;
	Fri, 25 Apr 2025 21:17:58 -0500
Received: from cy3pr05cu001.outbound.protection.outlook.com (mail-westcentralusazlp17013078.outbound.protection.outlook.com [40.93.6.78])
	by mx0a-007b0c01.pphosted.com (PPS) with ESMTPS id 466jjrag11-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 25 Apr 2025 21:17:58 -0500 (CDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=V6Ir38LYQWFVn4eeVRMSdFf/YnDF6EDqgzA+k7QRzWMCpgsN322GB9ITgr5Ok5mG2XLIAiGMv08b4ZyZ3OiG/gMCmGlijaEswRxLr1fPxwQLs1RTZOZ4H2X/RevHm5thpsO6jVZU438e5i5e6xIngv+adfwnLAKxjASf+57pHVHER+K2HcirIcnLv5vtcKnfstCdPFKdvtJya6dhc/RMyVP6UQbJjK79jepAeXdoYRAoEYW4ve2yhA4zFkbem4JEs0Tqzi7vzPGVsWX45WRD58EfJ6r1zq1xpD1JIKxrfcdB5rqx2PmPc98TNLOvNs9advvB4RWk8iAcmgywSwh6Ng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nrk89ml16Nhq+AmtTEIoUcbOqvbdorJpUBXatWdW3hA=;
 b=APPH4CbcyYn7vgbYG5HbEQwBGZYzL+ZG0QsBNy1YYLz8fdwHLv7xbXAkZS5h8xRabK08t351KYif/n4vcx4dqOnVveake0qpQgfHiku6fMz/jKguPnRcmjDD69TpFLif4Y9dXwNB7N1wTYiMoCYmvv0Ig8E0nyzcvGAOb1uSlVZpus5ctBQughSYEIMO+73z0XWk9WAN3wdbOjOcvsG9ppZdhbCqIBrx5vyt6Zv2qHwbSIlVg6NhRHOvmNpEbZj7oDzozmAtPpAW6XJjHdE0j5leVT8I/9QTN+sfy1eVvqnPFDzHxcfSpU5By3FJPkV+AhOL9kddtrZeIlksmwQHlQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none
 header.from=math.wisc.edu; dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=math.wisc.edu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nrk89ml16Nhq+AmtTEIoUcbOqvbdorJpUBXatWdW3hA=;
 b=bGIYFsSLIe19lbvBoPQsOu0BRb30JnzRre7xCV9WH+a/SKxs6KDPbw9oBrS476jwMMXlW5CdkIPmM5+zPVcrxzkZFK+xFnPVyI7CaK7nRZRo72/DQMicjqzlpFvQ1Y76P0qk4qug1KK0J46Ygg8xVBlHoO0zzAuxWMMT78HhjuWUDItBnsm5QOAJI4tTJy137w0WNX4zqTxQaNte5ArQaJU3Vm04h82jFBf9oLJIZ5AdSHuonLt0qnRlM/gw3Szb5YV4/3G6MRiMiOALNg/spk8WUalys3I3t1hWPxFDXKxdTctFeNCvb1u6KFNx8mCJ953RI0nA60ioXnlCXTIHBg==
Received: from DS0PR06MB9877.namprd06.prod.outlook.com (2603:10b6:8:1d5::14)
 by PH0PR06MB8320.namprd06.prod.outlook.com (2603:10b6:510:b8::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8678.27; Sat, 26 Apr
 2025 02:17:56 +0000
Received: from DS0PR06MB9877.namprd06.prod.outlook.com
 ([fe80::a347:6162:9bfd:9b91]) by DS0PR06MB9877.namprd06.prod.outlook.com
 ([fe80::a347:6162:9bfd:9b91%3]) with mapi id 15.20.8678.025; Sat, 26 Apr 2025
 02:17:56 +0000
Message-ID: <ac1beeb6-7d05-47cd-8f4e-a10d8f627093@math.wisc.edu>
Date: Fri, 25 Apr 2025 21:17:54 -0500
User-Agent: Mozilla Thunderbird
Subject: Re: I break everything!
To: Cleverson Casarin Uliana <clul+speakup@posteo.com.br>,
        speakup@linux-speakup.org
References: <3b7d9a99-8314-77f0-62ce-e6ca3e6ee1e4@reisers.ca>
 <9677270c-1283-4624-8246-804e41ff3287@math.wisc.edu>
 <ca8ce1b0-dbd1-5fa7-8887-53522e29e8d4@reisers.ca>
 <8f3f523a-8621-4a55-bdcd-5072e5cb024c@posteo.com.br>
Content-Language: en-US
From: "John G. Heim" <jheim@math.wisc.edu>
In-Reply-To: <8f3f523a-8621-4a55-bdcd-5072e5cb024c@posteo.com.br>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: CH0P221CA0030.NAMP221.PROD.OUTLOOK.COM
 (2603:10b6:610:11d::18) To DS0PR06MB9877.namprd06.prod.outlook.com
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
X-MS-TrafficTypeDiagnostic: DS0PR06MB9877:EE_|PH0PR06MB8320:EE_
X-MS-Office365-Filtering-Correlation-Id: 133e97e5-e19c-4934-c2cf-08dd84688e76
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|41320700013|366016|376014;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?d0lCNjY2YWRadGd0a3I1NC9WOUVyM05aODZaQ1hDYmpNYTBWRUoyR0VJZFJL?=
 =?utf-8?B?Y1NPRVJzMzNmTlVoK1JVRTBLQ1o5VnN2R3RYUlFsV3RKVVpramNOSUdDQUw3?=
 =?utf-8?B?MDFGUkJCc2NobEhabVUzaUFmYk4rSldoVkJtM25VdXVLK2hNQjlGMHErRG82?=
 =?utf-8?B?enRBWERQUHlIdWI4ajlpUlRndzZJbXlTTVFqb21VakdDc3ZEU0Z4WVcvQTBR?=
 =?utf-8?B?K0NzYmhOTG1pbjNjb1UzNkRQTmR5RU8xQ3RiTWtJUThYQTFmY0FJQkhxNnhT?=
 =?utf-8?B?T2Q3Y0tIYW1uVytWeFQ3ZjhzN242cnlNZmcwc3hUbFV6a0xUL3NtQkZUSHZB?=
 =?utf-8?B?NTMxNmpOYmNHRUI2OGtsZC9nd2ZrQzVyZHdzdStja1IxaGxWbTZXcG1tV1lu?=
 =?utf-8?B?cy9BcGRiTmE4dGFSbnY1ZFJhVUM3NFB5OXAwMEljMk1DVjAzZytzZldoZHN4?=
 =?utf-8?B?SnBCMkV1VFRoLzdUd3pRUzA1c1ByUFUyN3NPK25QaVBTVGZOYWJVN3NodndI?=
 =?utf-8?B?MFVGSEs3cEt3SElrV1V2WG1ybkdLNEJBcm1Ua2gxTlRSc1J6cVFlSzRvOVFD?=
 =?utf-8?B?aCtHc3JXL3VxdHFDeFZ4SWlEbFl5TE5EMVBkVmFmc1ZxQlNBbksxRlF0bjZF?=
 =?utf-8?B?YzNTc3NDRkYyNHVnOGdFeW9WaklMWkhkUzZ2c09VRDEwRkMyRXFSQjRoWjNM?=
 =?utf-8?B?QUhxcWdFM3l6R1p2aDVRZU9USkZIcjlPNGk2UUZlUk1MWnhXV1MvUVJkQWY4?=
 =?utf-8?B?VGxnSnpmek94b1Q2dkVBNVdpUHptdDZlVHN0cDVodGhzYnFlblNtby84cElM?=
 =?utf-8?B?UjBSaVVUSmlEOU5GTThVMGxxMUl3ZmRTSjNoTjJYZXVyZG01cmhHVmdxbGd3?=
 =?utf-8?B?eGVrQWs4K0pudWlvQUQ4ekpnZDBUSEpRcUdLQUtQOUxYNkt6Y0tiTDdqY1ZL?=
 =?utf-8?B?TVlsRnp6NlRuVFpqZEdjSDV6RTZ0K1M2TldiaVptampHN2hvKzZQSmd6UG43?=
 =?utf-8?B?T3JvbS9GQ0Q2dWVhdVJkMzdUSXpVYVE2K0V3cUd5R1lIVmViK2ZJWlY4TjhI?=
 =?utf-8?B?MEpXMU9aYXIzUnl6eExOc0xtai9meWIzYlBUK2J2c3RsNmlKYStmeUlkU05V?=
 =?utf-8?B?Nnp4Rm9OdlhISGpuTU4wV3ZKS3RMc0s5YU9MLzNWc1lxeE9BR0pQMkpwSmRU?=
 =?utf-8?B?dXl0dmRWUHREVHdNTklPOVRLcTNRN0hHaU1MR052RTRFVmtPTDFpb0FYZy9K?=
 =?utf-8?B?dktWUHYrdklraXM2eFVOZHd0NFN5eWJrczVCaHA5QzVqZnJOQyt4ek5TaFZG?=
 =?utf-8?B?Z1FtNi8rY2MxYVVJbDJHbzZmbmNLSkVydHkydFVhczY2aVg0UlMzSTBweWt3?=
 =?utf-8?B?MGZTWEVsVG5vY21Ua2ltanp1bWxYNVdWbVR5N0E3STFIa20vVTNJTnNWMXdG?=
 =?utf-8?B?S0RSeThBL2VETzY2aXo4VVBEL2YrSnBCbGVzendQY0pqRUxuR1hBTmorNUJ4?=
 =?utf-8?B?OFFKYXdnejVTWnUxL2plTmErbjFWUytYTnptaG9KNHhweCtqYTZndWxmZWUx?=
 =?utf-8?B?b1JCRTlQbk80Y2dWNXdubWNoWkJDRHEyQlpKdHozV0xabnpKY3BldlBqS2NZ?=
 =?utf-8?B?Tm1KUkFtc3Z2eit6cUJ5Nk5ZVFlZdER2cEVPSmFXbFlIM2IzRFN0NnRSdXJH?=
 =?utf-8?B?UVpmT2lXZEV3U2I5a21LY3RBSGhnMlBiT2NjNzl1ZVVrYUxxQ3pzdGRUbHIz?=
 =?utf-8?B?STJ6THNldjVWemkycExzbnN0RktsTFZkNko0dFZMWnVPbFRpS1Y3c2dCQ2t1?=
 =?utf-8?B?S2MxZk85cHFPa0hnc1U3OHU0bFNYNm4wTjVqOXNYZEl0SjRMVHlQamhaajJI?=
 =?utf-8?B?RTVpNS8vMlkyN1F1aVlFVnpZWmlpRVRqaEsxUU4wbGZSTUhLbCtVYk9RdWdh?=
 =?utf-8?Q?QGZRKUmr6eM=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS0PR06MB9877.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(41320700013)(366016)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?RUVRWThTckNVbElLeXZTTGpRZWlnU0I3dlZaR2c5Tm9RcmtKWEszd1NyWGVh?=
 =?utf-8?B?dnpCdk5CdnRaK1NaU0h4WHd3S2hCSnBSUXJlcmhmYVMyY1IwSHR3NXdleFgz?=
 =?utf-8?B?RFF6aDQxRlB2cFB3TDlLNlF1bXd4SGY5MGFUUE1zajFwWW9FcnZWRXFwWHlq?=
 =?utf-8?B?d2tyQm8yOCtzWWdtbUJtY2d5eEpuakh3RnpDNFQxdUFkVElLMHA5S0FtRjZO?=
 =?utf-8?B?bnRoQ2VpdHRrMTREc2QvNmpiNmE1S2NpTWlnVmg4S1VSRlZ3ZGdvSncyQ0tK?=
 =?utf-8?B?S3picURNQTJuMmlKSVRHbUZCV05UWkVsRVdlVC84N1ladGc5eG9rVDJIbnJw?=
 =?utf-8?B?MjVEQWp5cStIUnh3TkZmcnNlRjlBOGY2MjRLb0EwMGRHMnpFL1ZNS2NKRXFj?=
 =?utf-8?B?eklRK3MydTd5aWo4MWp3UnMwTnZ2Z0tLM0UreEdLdHQwWU50KzluNkprdE5V?=
 =?utf-8?B?SkhRdEJxU09INy9Xb2NjUkZoVWhTc0FSRzVVY0JPMVM3TjhmcVl0U3BCSkJL?=
 =?utf-8?B?SVBxclNnZ0FGRzY3UklDTEJkN2NJWVVqWEQycStzckpMdkx3bWZyZnhqa1hY?=
 =?utf-8?B?MW9FakdZYm5TMkpRWDh4Smo3RklhNFdkRlFrcXZJckZlYXRRM092dk9aNmc2?=
 =?utf-8?B?MHJiUWhYMmt4SHM4MDRjWlAvbUF3WHBPUUF5d09lVG9xYVQrb1BNa0pVUWJR?=
 =?utf-8?B?L2k1WHZNYzhGN0FhWlVoRFBuK0l5cWZqSk1ydDFtNTBCekF0bktFOUJhVWJz?=
 =?utf-8?B?OHhnYm93L1hVY0ltWlF1cWNndmNqMFRpaXh0Ymg5OW5yNWpEMTkyYXE1UnBD?=
 =?utf-8?B?NmRiT1FkT1BHYXZwTmNYVTQwUkkrdk8wZmY1cjhlZ1IvcTZlMG5ibCtPR3Rk?=
 =?utf-8?B?TXh2QU56cU9obkZJSkFGTXIycHRmU0VLZEl4UFBvZ3VwSEp2Sk9Xb1NuYkFH?=
 =?utf-8?B?ZXBUL1lQaHNpQTdsS3ZNNTRoTkNnWWUxRFhxWmpieEo2Z0pKekNueTlaZy9X?=
 =?utf-8?B?OEdFOXQ4L2o2N1BDTlpMZzU2L1BIY2lveHFUaTRqTFRDWHdVZEJBV00zMUo0?=
 =?utf-8?B?TGtPS016WmhqQ3VyM055bnFIb3R5cGNOYzM1RVlrVkorZlRLS0dlNUpGdnNr?=
 =?utf-8?B?a0YxMHpHTVorR2M4aSswcDVKcmNlK1lWeThkREVaNHNzbGtKVGJLVCt3OHR6?=
 =?utf-8?B?bzdTRnlxMDZud2dLRFI2eGV6RGRaUlNrWFhkMXFjYmFEKzM2a2RJNHdoQWQy?=
 =?utf-8?B?aUFQRlBkb29sZjJrbGl0U1BsbHpMbm5meitRbHN3ckxTdnExQlVWMk1tOWVh?=
 =?utf-8?B?b0haWExiUml0R0tLa2hTL2doUUExTnBlT1dLRGNpcUlISnZjSHpBNnBzOENS?=
 =?utf-8?B?MXVMdElvbnQzMXdDQkFvbjFVc20zM0JXaGlkSDZ0eE9LNHA0bFBMb3g2SURL?=
 =?utf-8?B?WGx5MzZYdjV2S25WMHZHbGVKRW5xbkVpbmRNWEo5RkZHaFBtbWkvNkxaNjBk?=
 =?utf-8?B?VExqNG5vWXBUZzBwK3QyU2hWdXprc1hVejBUdHRzM2xLYkFTaHRZcVJNSTRO?=
 =?utf-8?B?SDZ0ZEJsOGFqVE1zOHl6OHdsRGxXc3lQZ09UdXU1NVViM1drT2hQdVJtME9w?=
 =?utf-8?B?S0pPeDJNeG1JWUNnQTQrZ3EwWXhoeFFTeGdXNGNRQXc1UC9wR0gvQm9iUzNZ?=
 =?utf-8?B?TUl2UWhYdFlwZ3NkOFg5YkdSc29pTU1FaTJ5dnB2YXBtQWt4enkxUTAxOXBL?=
 =?utf-8?B?L0dnTVVLTEdnbmdDcThmZFZBTHhHQjZrN0h0bmg2UDcxdy9DUjlpRnN0RU1a?=
 =?utf-8?B?VXBTcUNlRTRJY2JiMGhBTG9LQ1VIUUNOeFEzTGExY2xDQXZUWlduSmI4NW9N?=
 =?utf-8?B?S25lVG9VYWtvUVZ5SG00SlZNOEdPQjBwcWRDbjdhNjhyN3RjNTZ6YXFicXFO?=
 =?utf-8?B?Yk90MjF3UG5tWGQ2WE5ZSWdDRzJJNjJhaktzeWFsU3pUNVN0MSt4dGFtY3Vn?=
 =?utf-8?B?cjQ5bkxIYTh4SFlWQ1ZoUS9FTXJZangwTEk2OE9hbHJVaG8zUmxCTXN1WXpB?=
 =?utf-8?B?SDFkanBuTXF5Nzd2cjBXR2RRWmVjZ2lNWFJnUllrZ0JLTVR5RnN5OTkvUjd1?=
 =?utf-8?Q?Uls0=3D?=
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: 133e97e5-e19c-4934-c2cf-08dd84688e76
X-MS-Exchange-CrossTenant-AuthSource: DS0PR06MB9877.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Apr 2025 02:17:56.0196
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6sn2mzha2RR+8VqkKiPV2hzVQ9u2nNNi2mgKywKnNANPP0bT7exdxqz3vSZK0ZKw
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR06MB8320
X-Authority-Analysis: v=2.4 cv=O+M5vA9W c=1 sm=1 tr=0 ts=680c4256 cx=c_pps a=BALyy5icRfvvzfOMzojctg==:117 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=XR8D0OoHHMoA:10 a=lre9DRYkaIEA:10 a=WJ4SlBAwiXAvOvIo_KAA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
X-Proofpoint-ORIG-GUID: mN_77DMWbseuN7zgJDR7brLi72eYn7c-
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDI2MDAxNCBTYWx0ZWRfXyoVx/J/qIvNm S4emupYY5YeZ1KbDzYDmvigLqtbiEzQd1d4Fhejv021FYQuDKTDss8LjxzYkBGkkCbRUY3aq6h5 +xNZZU/MTShz3z5nzv3PyPbt+t4G7m6/1KCp8gjvQimMI436Q/Ct/t2pcXRK3A2NDIMHvTe9E/c
 dCrWnMd6+4s5t7Y4gXUFMKI4vNciE53HSJsq79AYnbNCf1WgsM/UKGoLEdzBl9Fh7n7TiEz7r6K gLjUA2PTRzwkMJc4G4sabjO4AqHrGtM9ftC6oLOFwoN4jn/OdG41vuZsc83X2b4gjaoS9UMeiFm 7XvikN9Bts6XP6lhYkamneSo/5lDU28OOa96XqJs20N8mv+HwDKnWFS4dmvYcsVoqqqGgju/lzk
 sAYVl52Zc68OqUVacEHujpTh/BUTd74CkZDSqBcQdu1+5YghRUadRFjjf+u3BD4NQCpUNa6f
X-Proofpoint-GUID: mN_77DMWbseuN7zgJDR7brLi72eYn7c-
X-Wisc_ValidFrom: true
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-04-25_07,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 malwarescore=0
 spamscore=0 impostorscore=0 lowpriorityscore=0 mlxscore=0 adultscore=0
 bulkscore=0 mlxlogscore=999 clxscore=1011 phishscore=0 priorityscore=1501
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504260014
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

I use Debian testing like a rolling release.  If you use Debian testing, 
you avoid the problems kirk had because you never have to do a full 
upgrade. You just do incremental upgrades daily or weekly, whatever you 
choose. Although they call it "testing", problems are rare and when they 
do arise, they are almost always fixed w/i a day. I'd say Debian testing 
is less buggy than Ubuntu STS.

When i was the Manager of high Performance Computing at the Math 
Department at the University Of Wisconsin, I pushed hard to put Debian 
testing on our beowulf cluster. The cluster was made up of 6 to 8 super 
computers and about 100 desktops. They all have to run the same 
operating system. But i couldn't get my boss to go with something called 
"testing". We went with Ubuntu STS, the version that is updated every 6 
months, and it was way more trouble than Debian testing.

I think Debian testing should be called stable and stable should be 
called something like "stodgy".




On 4/25/25 7:46 PM, Cleverson Casarin Uliana wrote:
> Hi, so Debian is quitting to be a good option? I was about to install 
> it for a try. Has your trouble happened on Debian stable, testing or 
> unstable? In any case, Void seems interesting too.
>
> Cheers,
> Cleverson
>
>

