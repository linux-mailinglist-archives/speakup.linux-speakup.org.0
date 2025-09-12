Return-Path: <speakup+bounces-1346-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 57FC6B5549D
	for <lists+speakup@lfdr.de>; Fri, 12 Sep 2025 18:26:07 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=math.wisc.edu header.i=@math.wisc.edu header.a=rsa-sha256 header.s=selector1 header.b=dEotpGO2;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 8E237382C4D; Fri, 12 Sep 2025 12:26:06 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 68117382BFC
	for <lists+speakup@lfdr.de>; Fri, 12 Sep 2025 12:26:06 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 1799F382BF4; Fri, 12 Sep 2025 12:25:59 -0400 (EDT)
Received: from mx0a-007b0c01.pphosted.com (mx0a-007b0c01.pphosted.com [205.220.165.71])
	by befuddled.reisers.ca (Postfix) with ESMTPS id D33DC382BE6
	for <speakup@linux-speakup.org>; Fri, 12 Sep 2025 12:25:57 -0400 (EDT)
Received: from pps.filterd (m0316041.ppops.net [127.0.0.1])
	by mx0a-007b0c01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58CGL0gp005466
	for <speakup@linux-speakup.org>; Fri, 12 Sep 2025 11:25:54 -0500
Received: from ch1pr05cu001.outbound.protection.outlook.com (mail-northcentralusazon11010048.outbound.protection.outlook.com [52.101.193.48])
	by mx0a-007b0c01.pphosted.com (PPS) with ESMTPS id 49404918kb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <speakup@linux-speakup.org>; Fri, 12 Sep 2025 11:25:53 -0500 (CDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mFYTaK5wLZDoVm6mLjUlH5ztv0UJmRZNW6WM4JV8bI/41tG/X7sf9H3/D62bPkx4baar/1OkGtqlFi8MA53lR8Piqj/lfjUvuBzjqQNAAmqgpjRXF3uHsLiDzUn6uCbC1HvvQ56+1i1OgfwoBM6sU6WZJ86Jcii3zxhNffck+ZoNJQIp3mUnzEHzSJSX9aa7JZGSAgYuAwyi3UzZ8h3dzp4Umhn9wUzkIywjIqdwRFmTjdyNCANUrhqjEcZr40Y1qFmihVAJNrk8uOb9Pyo1IqEXVpbOJVE4kKGj8Yh/391n977dQfR5jcNpGBhbxYCE3horlNwjy7rVRk9qpVf+3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XiyrUhbipYOJJayPaWEEswQ6tpM5F3nq9QKc7e/Xa9c=;
 b=xEuV6DpoVZTEGDaqEqmKtArTOC8YObM3lts2tKw56NBRK04s9WJWjJ+E8w7tf1qfNOy/SJUkLtKymi98zyR0JWes3UV6j4zgi3VuWHXKYdTcev/Mrag6Tg+8MKf+5JCMP3yVFaQSARQCRcktxneE5ezhaZNa8B5tJvZPzv99hj1d5qDSArLb0gCbt/tIL2TLLJYKkfmQMxwyu56zM8XTxncYX5/9zACb2a+hvuXkugGvwlCDrpPfjJEUGGgIeAUUlZtjGjBKcIJj+iCW0QHGgdGjPka+88q2ybWo4PGNf97zW1radUOKD920MmoqinsPTVIJzkeEKeoe94rEXkAZMw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none
 header.from=math.wisc.edu; dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=math.wisc.edu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XiyrUhbipYOJJayPaWEEswQ6tpM5F3nq9QKc7e/Xa9c=;
 b=dEotpGO205bS0lVRzhXKmVXxvdSiFZPRSDet5wCyMc8+ASSzyAiIru6N/bxsmIbk+oER0CEicmAEJdxkhJcNKWqx2DBUjnbCe4XgkAC693TjNBX/r/wDKf9R5GvRrqhNA7tkMOtHI469AoODU/gVnbtNHWqjQ9/EftCymPbOcCGFfXNaZ8SDzc6jmMRGkA4AxXgMAl4dz1uBj9hV24jgnODTxmdF0vHb+LAx8/o3Sv9/6L0V1/FtyJ7aD1qNg9Swxoe2FMY9CxpwpUFgTfIptnXRDNGwTZanJWBFD2Tz/nH9jyXa5BsJia0mZiWDQf5G9TSMDITjFtDQpHy2g76ayg==
Received: from DS0PR06MB9877.namprd06.prod.outlook.com (2603:10b6:8:1d5::14)
 by CH3PPFCAD350F94.namprd06.prod.outlook.com (2603:10b6:61f:fc00::28b) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9115.18; Fri, 12 Sep
 2025 16:25:52 +0000
Received: from DS0PR06MB9877.namprd06.prod.outlook.com
 ([fe80::a347:6162:9bfd:9b91]) by DS0PR06MB9877.namprd06.prod.outlook.com
 ([fe80::a347:6162:9bfd:9b91%4]) with mapi id 15.20.9094.021; Fri, 12 Sep 2025
 16:25:51 +0000
Message-ID: <f8b9b65e-3ad3-4af2-968a-2e57cf6c8a01@math.wisc.edu>
Date: Fri, 12 Sep 2025 11:25:50 -0500
User-Agent: Mozilla Thunderbird
Subject: Re: Question about blind CLI use (was Re: "your browser is not
 supported anymore" ...)
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <202509111603.58BG3W3p018143@nfbcal.org>
 <7a04c6dd-c761-4445-b53a-3c4525cf2a87@crosslink.net>
 <579c5d9b-5ba1-4029-982a-01295fea3a61@posteo.com.br>
 <Pine.LNX.4.64.2509112223130.3830807@users.shellworld.net>
 <6d3f190e-733a-e5d5-a8f5-cc6eb2c05e65@hubert-humphrey.com>
 <Pine.LNX.4.64.2509120106350.3832376@users.shellworld.net>
 <aMOwSwrEWTBtFn60@titan>
Content-Language: en-US
From: "John G. Heim" <jheim@math.wisc.edu>
In-Reply-To: <aMOwSwrEWTBtFn60@titan>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: CH0PR03CA0190.namprd03.prod.outlook.com
 (2603:10b6:610:e4::15) To DS0PR06MB9877.namprd06.prod.outlook.com
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
X-MS-TrafficTypeDiagnostic: DS0PR06MB9877:EE_|CH3PPFCAD350F94:EE_
X-MS-Office365-Filtering-Correlation-Id: 87756f37-f80c-41c6-ab7b-08ddf21909e4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|41320700013|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?TU9PU2orR2c0ajlnV3dHTEFONmg4WlE1NnY4c2ZCMlgvSG5iZ1hLeXd5NkpW?=
 =?utf-8?B?Lzg3a0NTREx3TGtueDlqSXU0cVJ1MlNDSE5xM3JDN1I4c09idU1rQjFZelZY?=
 =?utf-8?B?NEVLS0tUUjZ2Ymh1bEJkZmtnV0RXVGRibk1JbjZVWExyWWp6WFRMMlgrNFdo?=
 =?utf-8?B?YXJtMGNsL0JJN2szVDZEaWFSbjVDczI5SzdPRzVHOHJyOUNzTytlcDM1WndQ?=
 =?utf-8?B?OWhTZXRSV1p2ZDVkSlRGTk1HUXJUSy8yVEdHQ2JENkEzdU80c1gxOWVhOGYx?=
 =?utf-8?B?WStEdnB3WjVtZ2xjcXpwMmVKcXFXeHp3eFA3ODZSdTFpWTMyazZvM2hEbkxa?=
 =?utf-8?B?TnU1cnhOSlUwUC84eWJ2WSszOFZncFk4em1xM3NuR1hRUlg0WkJMdGQwVjMy?=
 =?utf-8?B?VXRRQ2U1REhTbUMzbFlXMHJoR2h3MDdrbXdOb3IwUXBuWFVYN3hYTHltM3Er?=
 =?utf-8?B?MytZakxhNUR3Ly9yckJMdGJVdXE3d1MvV25ucGZMcXRINm42aG95N2RScThE?=
 =?utf-8?B?cDRCL1NEY3dlUUQrbEpjWGRsMXNZUzlVZi9KYUlyb2JKQXcvaHJWR2ZhSi9x?=
 =?utf-8?B?Ri9kVkZZVXhZS3lrN1U3a01xT0J6QmJEVS9SWjRCSmgwbDE3QkJqSG5yZ2Fh?=
 =?utf-8?B?SjFaZE1mUHJxVDQveUtpT3ZkVk1sTUV2VVlsdkI3K1VxdVRETGRZT3BQVFpy?=
 =?utf-8?B?NWwxSXVpbTF0bytLZ3RqTXZ2QkR6MmU5djY2VEFlSHo2a0RrOTkyZEY1RU84?=
 =?utf-8?B?aHVrckorVGoyekcwWTZXSGtqbDVYS0I3UUY0K3V3SUxxcnduVlRleWp5OHpj?=
 =?utf-8?B?MDJKb0t5dUdxZ2NlZDNKYmViUWI1VkxtQWpORG1QYWhiKzNVdUFDa05Zdjcw?=
 =?utf-8?B?WXRKOFFoRldKd3hyQUllZGViYmJmSlR5QnNMU0JpaHFtWGdGYjlGRzBBWnNn?=
 =?utf-8?B?ZnF3djdpS2lKU0xNVTJ5NFBkNDNxaVZnSTQ5cTB5VUFpN2Z1U01oVFhuM2dB?=
 =?utf-8?B?NHh2Y0NzRnNra1YzbTNFVmhZS20rR3JPcC9Wd1VZVHpsTHJLSWF6bnFBK3Z2?=
 =?utf-8?B?WjlHbnM2WFFNOVJXTU9CQ1d5Zml1ZkhCMldKNWcvcFpWbWFHeWVaUmw5bEIw?=
 =?utf-8?B?OVJLOHJxWDZheHhQS3Vtd21XbjNiTC9nOGJjWXZ2SFBLN29OQkl3SE5EaDY5?=
 =?utf-8?B?OWg2MVNJQnM5OGNFb2RMKzltdkxQMGtDeEVLT1o3eEM2NUx1TGNySmo2UFg0?=
 =?utf-8?B?Y2dRK1lZSTR0Q2JEQUQ2QnlBcGdWR25JWnB4U3J5dE15eFBWQ1NPRCtta2Ri?=
 =?utf-8?B?ejBFNTYwNU9hU0xPUXNIMUhuUDNUclhnMWJKS1RZWFlhWXFXbWZKdERRK1hu?=
 =?utf-8?B?WTRlWmtyRCtPSFRzT0tyZDZ4M1JDaldWeUFndkhsY2lLN05KQk1YM3pEMy9v?=
 =?utf-8?B?SUhwMG5JaVJVMFhaT0ZEOUxMdHdEeVRUWlBXSktjaDl4RUpWMko5ZmcwTDlX?=
 =?utf-8?B?VTlGSHl3OHFKRWRLQ1lkRVJNNXMreEVYKzhhU0tCcFhnK09YdktMbXdCMDJh?=
 =?utf-8?B?eFh6UGJ1UnJncFN4bmIrWnBTNmhlaGFSMEc3TTU4SWJoNTNvZjdIdno5djJ3?=
 =?utf-8?B?aEVURlhyR3l0Q1ozUDJxSlJvd3I3NndISkc1WWFBcWdqSjB6U1puS0Voc0Zk?=
 =?utf-8?B?aXRwdisyL1k3U1VFN0RYakNwMERHdmFaQ0JBMkVyZkl6U3B0cFgvYitNOENr?=
 =?utf-8?B?b0ZJWEFlaldLaDFxS0lhdFRpeURybzZPSjBqTXlYU2pxcXJPb28ycmphQXZu?=
 =?utf-8?B?ZXlaMG5oSDZSdzBqUElyOE1LdGFJL3BZREhUVmU2U2txN21oMHExdGdsL1U5?=
 =?utf-8?B?SFVyaVFwZjhMU3NoRjFHWUx0NU5CWXhCZ2F3QzFmQU9PKzI3N2VDaHpqcU1C?=
 =?utf-8?Q?pFDIKsV0Tdg=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS0PR06MB9877.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(41320700013)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?TWcwa0dtcmpuOXJkMXB3TkhRZWd4VHdBOGJ4ZjU3Wld5dVRXKzEzanNXUmg4?=
 =?utf-8?B?NUlXMHVWQUJ5bXBXTFhJZ3JvV1o1anQxVFNWMy9OMHRhVGpTbjNIdkVNNm1t?=
 =?utf-8?B?TU54RGZUUmhBa0FLZW5zMkhsYUZsSjBBM2RKSE9PcEFCdHRmSDVNanFMTkwy?=
 =?utf-8?B?cGZoR2JaN0k2ZjF5aVZOZm90K3BlTlhXWnk5Z2pLdlNqT2Zna2tYTzJ5SENY?=
 =?utf-8?B?VWxzZFpRbWhtRGxZczVuUHdzZ25CUW9vdTlPK0ZPOTl6c3Y1c1VlQk9vaUM5?=
 =?utf-8?B?OW9ZWmNZaVJkR25CSUgxL2Y2eVhqNlIvNm1FMWsweDZEc0xZbjFmRTRuMXBt?=
 =?utf-8?B?elBhdTRvcUQ3MTUvNWY5NU9xNktlTTlXSzhiaU9FTkNObEt6Wm9jQjhDT3FM?=
 =?utf-8?B?UnNBdWpKRUdDeStBeUoxZnRuaGNscDNnVS9QaWswMWdmVkMvZ1VMSEdDOXFi?=
 =?utf-8?B?K0RaQ2U4ZVN4TUZIQ1RCN2NQVHRudDJRdWoxOXhNejBFZjVRYW5Ca3dZZUZY?=
 =?utf-8?B?TWtscFUyWmVtSnNPaUs5ODVyMEdFSHVpTEpKRDhyTDNCWFphcnNBa29FNkdD?=
 =?utf-8?B?cmppeVlBcHFtMTVtKzFKUHZSd2ZiT0VmVFRVcTV2eFoySTYyTzlnZ2tkTVpW?=
 =?utf-8?B?TFdrek0xdmVMQlhFdGhRdVVFOTVVVStnR3c0dFJtRElZdnkycVUrSVVudnhK?=
 =?utf-8?B?R2Y2Q2NDWGxIcGFGVW92OW9VMVh4UHNSeFBFWS9ZdmYrVzdDWTAzZ3ZaUnY0?=
 =?utf-8?B?QzJEbFlFOFdlQlk5dlA0UnY0dFV3MW1jVFdBc3hjaWtlU2M3OHd2RlcvQzNa?=
 =?utf-8?B?VmF5aVRuNXk3c0ZCbVF0MEUzOGJGcXVLMlI3Q2JWa3B3ejJWdWlFRTJydjJP?=
 =?utf-8?B?ckJVbTAvanpZL0t2OUw2N1MyNG5WdE43Q3JwZ091K0xUYmNscWY2czlURkxo?=
 =?utf-8?B?NzFKUlZHTW5BNXU5V2kyaTArdFVuWnN6OEc1aDJSMldFVnhOcU5tUE5HMkVj?=
 =?utf-8?B?VklCbWpDeXlqakVkdENmYncrdXBzMUhtTWxRMGNvZ1FRR0F3NHN6NlFwUTV0?=
 =?utf-8?B?M3JGbS94VnBlaUNRVW5nS1V0SVZ5VFVFYWxMZHQ3NFo1LzN4NmU0d1RRV0VV?=
 =?utf-8?B?Snh4TTd4c1JvanRGdkRNN3NOSHlOb0RUaFJxQnNNZGVRWGFzU3lhY25HKytH?=
 =?utf-8?B?WXFxL2ltc2xzaGFaS3NJMjVkRGNQWmtRdlkvZlo1M0JVYUNYREl5aUM1d2V1?=
 =?utf-8?B?Smgwc0w2K0k0RGJXRFc5elArL1ZFcno0UHpzYjAyS3lycWNPd3g0c1Awd3dM?=
 =?utf-8?B?bFBBVGI0OVFhU25GOTBSM3JBUWVkZkhZM1AxWmZSRy92Rm5DRit4czRWVVRu?=
 =?utf-8?B?bGFPNjBpSFUwZ0FhUUxJWDN5S1czNjAvQldFaS9UZ1RyTmsyMXZ3K3AyR1FK?=
 =?utf-8?B?OU1RQndOR0JBSmlyTkZhdXY0OFM2djFTQkppMkZEOXNmcUY1aW9WVFRHb2Vz?=
 =?utf-8?B?SVpOclkvL0sxNHBpV1A4VXZjRGFvZ0J6b09ab2V6eVVZMmNvSlBNR2dJcEt0?=
 =?utf-8?B?NXNveVhXUk9jUEQ0Wm1hM25QbFcxUCtTWERVbTl5UFM1bEx2YlFQdUZveUdz?=
 =?utf-8?B?cEJwRkFrMWYwNHlLQXBTMmdFVXdQbWNDQWMxakduRU5EOUZwTEVKcHdsazdu?=
 =?utf-8?B?ai81OURrU1Y4SEw2aVlaRXNYM1pPcGx0Vnl4Um1RVVJwa3FGRUZDTkpOcGhQ?=
 =?utf-8?B?cVV3cHdDMklPbmhlaG4xTFRORzJuN3lNQWZkVzZORy90b0ZCeFB2K2diZEhp?=
 =?utf-8?B?eEJtdFU2SkZmbzY1S1c5MkJBVnBmWWR1YzN4SnZqMWJTSHZQS2JidDhXL0Mr?=
 =?utf-8?B?bFEyTCt0SHYrTzc1bGtOZVl4d3NYWllySHd5TzdTWmUwQ1g4NTBnU0pKdlVz?=
 =?utf-8?B?Vms1UGlhWXE5VExtbTNjdjVEYnVRV2Zaa2RnVnBWRFVtWXo3ajFGUnRUUThw?=
 =?utf-8?B?U1VRalBSRWV6TUo3VkZqWkNXMUtPRElCR2Y4RmdISnFpRzNRMEdtejZCdW5S?=
 =?utf-8?B?SnB3MzdYT0pVRzAyZHNUajI2d2Y1eXJwOVVRc045WVYwdnhqd2dpdnVFL3hI?=
 =?utf-8?Q?sAPZCDJIdgErjxVRjFISxTkA5?=
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: 87756f37-f80c-41c6-ab7b-08ddf21909e4
X-MS-Exchange-CrossTenant-AuthSource: DS0PR06MB9877.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Sep 2025 16:25:51.4977
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: j+I9Ojhqm7AgcebX59+LE98K5CzlcYlRnYPDohOGq60IrBrHKNZUq4jSUWsgit30
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PPFCAD350F94
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTExMDEyNiBTYWx0ZWRfX+ug7QByx5fTt
 GD6cbmpJ7dD2nbzHBv6kU9oT/KE1Qop1DZ0mGu7TChjANsHjZDi6chisyofwJSje3Bt//pgG7RU
 hU20VCcigt4AraVF45kdfCfyQ+AeFZqL3oZEwN25M8dBFiGDut0Sp9sr+c4cWIzaoiMoWNMNQ6m
 E8P1LAekPXOBkd1DqcZmsOqUhj6KYkdBGLK1WshaLKoTYTXzF3UIC+fHrHPtqXEtGaCItFYZGJn
 VP2eisiq//waSFyGSh19ghozPStfXkF9901gyMQVdGWI5XW3yYbPsQqAXtajnlmOAWVmNoY4XJ/
 vtkM6fq9pO6UH8BQ62U/L9ddPgEhjPxGeZMF/+PDmnZkZV/bPWY+GV+nyQU5w68oQSg5IyCBWJa
 lv9GkBqO
X-Authority-Analysis: v=2.4 cv=WtsrMcfv c=1 sm=1 tr=0 ts=68c44991 cx=c_pps
 a=lZTGddAnKZ6AR5Pw1xQKMQ==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19
 a=R3fr6vWxGIgF0CYV:21 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10
 a=lre9DRYkaIEA:10 a=D_VmOLqjAAAA:8 a=zYO_4Z_pJugQH5HzHCgA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=d_xflH664_jzgZDB7q-c:22
X-Proofpoint-GUID: AybY9QwN1mRbHPtRh5EjG-epH37_swgE
X-Proofpoint-ORIG-GUID: AybY9QwN1mRbHPtRh5EjG-epH37_swgE
X-Wisc_ValidFrom: true
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-12_05,2025-09-12_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 malwarescore=0 spamscore=0 clxscore=1015
 suspectscore=0 bulkscore=0 phishscore=0 adultscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509110126
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

IMO, you are asking in the wrong place. You should ask these questions 
on the     blinux@freelists.org list.

On this list, you are going to get a lot of answers from people who are 
not typical blind Linux users. There is a very good screen reader called 
Orca for the Linux GUI. The vast majority of blind Linux users use Orca, 
not Speakup.

The main reason I use Linux is that until I retired recently, I managed 
the supercomputer cluster for the Math Department at the University Of 
Wisconsin. As you may know, every supercomputer in the world runs Linux. 
Often, to manage a large group of computers, you have to rely on the 
character interface. In fact, because the character interface is so 
accessible, for a blind systems administrator, Linux is far friendlier 
than Windows or MacOS.  I was lucky Linux is so dominant in the world of 
high performance computing, it kept me employed in a fascinating job for 
my whole life. I always said I'd work for nothing if that was possible. 
Like in Star Trek, nobody ever talks about getting paid, everything they 
need just seems to be supplied. That's how much I loved my job.

I liked my job so much I am still sort of doing it. I recently published 
a script that allows a blind systems admin to set up a thumb drive so 
that if you boot from it, your machine will come up talking in the 
character interface. Then you can fix whatever problem the operating 
system has.






On 9/12/25 12:31 AM, Jookia wrote:
> Hi everyone,
>
> I don't meant to hijack this thread but I'm a sighted person who's been
> struggling to try and make the world a bit better with accessibility
> stuff. I haven't really done anything useful yet, but I've spent a lot
> of time talking to sighted people who scoff at the idea of people using
> 'old' technology or being left behind because of their workflows.
>
> I know this is the speakup list and I'm talking to an extremely niche
> community here, but I'm genuinely interested to know: Why do you use
> computers this way instead of like Windows or macOS? They can do much
> more useful tasks.
>
> I've thought for a while that this is simply because Linux has dropped
> the ball hard with GUI accessibility, but I'm starting to wonder if it's
> really just because GUIs suck for blind people altogether. I know that
> screen readers themselves are kind of a nightmare for me to use with
> having to remember a ton of buttons, but having to tab through a GUI
> just to do things I could type is a headache. Maybe text is just a
> better interface if you're blind? It's certainly more precise and
> quicker. But I'm also aware there are things like hardware limitations
> like systems not supporting hardware synths any more.
> So I'm genuinely curious as to why you work the way you do.
>
> ---
>
> As a kind of side note, my current project is making an emulated
> serial to speech synth API for the DOSBox-X emulator. I aim to implement
> just enough of the DECTalk protocol to work with DOS screen readers and
> speakup, then pass that to SAPI/NVDA or speech-dispatcher/espeak. I do
> have pipe dream plans of turning this in to a USB espeak synth that
> could be used to read early boot messages and panics on Linux.
>
> But more widely I've just been thinking about how to make an application
> like DOSBox-X accessible that relies on a little fake GUI for its
> configuration menu. At first I thought of adding support for AccessKit
> and Orca/NVDA. But that only works on some systems, and it's hard to
> test and convince developers to test. They won't notice when it breaks.
> It also kind of sucks to use as you have to tab through everything.
>
> So I've kind of been more interested in adding a new interface a bit
> like a command line or menu-based system, with output by TTS or Braille.
> It would live in the application, be usable by sighted people too and be
> easy for developers to test and reason about.
>
> So if you have any feedback about any of this please tell me.
> Jookia.
>

