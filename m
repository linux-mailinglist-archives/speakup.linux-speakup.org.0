Return-Path: <speakup+bounces-1553-lists+speakup=lfdr.de@linux-speakup.org>
Delivered-To: lists+speakup@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WASCJkwQimlrGAAAu9opvQ
	(envelope-from <speakup+bounces-1553-lists+speakup=lfdr.de@linux-speakup.org>)
	for <lists+speakup@lfdr.de>; Mon, 09 Feb 2026 17:50:20 +0100
X-Original-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 38947112AAB
	for <lists+speakup@lfdr.de>; Mon, 09 Feb 2026 17:50:19 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=math.wisc.edu header.i=@math.wisc.edu header.a=rsa-sha256 header.s=selector2 header.b=meLikNfP;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 8F02D3818B2; Mon, 09 Feb 2026 11:50:17 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 6CE963817E8
	for <lists+speakup@lfdr.de>; Mon, 09 Feb 2026 11:50:17 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 31A7E381879; Mon, 09 Feb 2026 11:50:11 -0500 (EST)
Received: from mx0b-007b0c01.pphosted.com (mx0b-007b0c01.pphosted.com [205.220.177.71])
	by befuddled.reisers.ca (Postfix) with ESMTPS id C824F3817E8
	for <speakup@linux-speakup.org>; Mon, 09 Feb 2026 11:50:10 -0500 (EST)
Received: from pps.filterd (m0316044.ppops.net [127.0.0.1])
	by mx0b-007b0c01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 619FZWYn2493686;
	Mon, 9 Feb 2026 10:50:02 -0600
Received: from ch4pr04cu002.outbound.protection.outlook.com (mail-northcentralusazon11013022.outbound.protection.outlook.com [40.107.201.22])
	by mx0b-007b0c01.pphosted.com (PPS) with ESMTPS id 4c7hw0s2dv-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Mon, 09 Feb 2026 10:50:02 -0600 (CST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rDhrQx5a0R7Ie0oZzRkwCubQ3qiZNL0MLyPjIjkdCxq4RAna5czrEY2OJmtTB/6cQiPk0gVvrm4YC2n29bs03K3mYzmJ8h7oxoPpNbfBSbFC+zmFdYR3fulwphqjZmPXnsufZ7xCH+BBetgKwyKwFRkYWrqPSyoeKeIZik4IJUgiu4Z6AdMVnndnwSMP82Ee8nkdo9Aa8dswBAu3lR3VnSU2UUbGOCM/uW7wQKhDAWpSc0BTeOYVZmXAt/jknVJ0C+z1En045ZOX5QpVffCEtRy+6IpIyLwCePsWZj0f9J5D6luZR1guGOM45ilkJP16NlljmJHzEThflgR4cTetdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=S44Otk5C90xe9SurOjLLOtHQogOUEVCLDHck4blqRWg=;
 b=qK1NJ+GGbcuYWI69W31Ow9HShueeqqaYkbyA78Po3vaBE+hK/LBVmT+/5I7zE+bNn71zd1Vd4zHw8n7hEYpqiZ542baypbsXaJ1TrSqtgY0gOy16BJwmZsYt+UmrQ1XWtRxlQKJ/IyY6zDRtOjdJZq9RtyimXZeKuXTH2gmy/jIDPdqfHvJGzP6dYD6yQzlciuAChctnWlPEHAH/xuKsAemTWLncM5H9KhvO/MXmj4bzGkPkkc91ah8txo67xxRQqcQPsq5ukN2MzQd0IaV+E+pmj9uropMfz/8WeFNDGuSfODcgNPH8R4sYo1fz7sfGs4kVJuudAUFqGZhKIcd9VA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none
 header.from=math.wisc.edu; dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=math.wisc.edu;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=S44Otk5C90xe9SurOjLLOtHQogOUEVCLDHck4blqRWg=;
 b=meLikNfPHBIJMBlVsdVaZj91QJQoYRezF2IZWOklJj8QrWMi7AEC2tg8h7SdQNxjIVpgHK34VBNhc8RYpUTwL2pWRni7TrimPsKlbI9NUvEf8Sdmz5qsl6Y6AkVJjsmcvHaq6SWsLN1e2HqZb0/aoRJL228BPqIHEuHSiMBJLD65Z9jPT/YVevfMlAOSWqfYgmqt8tTMRFAHrSOpdDHwIyCjLGO4i5cEDD863PJ/tRvG9JFNYiHbGgZtKwlNjxGN16BuSdK5UsaHBqIyTTwVpbiBPdmJFFoQIPwlveWGZDnrjW97T4kd9v8CFYRn5HWOTgMkdS2hp0wEvyHBZ/MucQ==
Received: from BY3PR06MB8195.namprd06.prod.outlook.com (2603:10b6:a03:3ce::19)
 by SA0PR06MB7020.namprd06.prod.outlook.com (2603:10b6:806:c2::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.17; Mon, 9 Feb
 2026 16:50:00 +0000
Received: from BY3PR06MB8195.namprd06.prod.outlook.com
 ([fe80::a7ad:fb62:4389:fd8b]) by BY3PR06MB8195.namprd06.prod.outlook.com
 ([fe80::a7ad:fb62:4389:fd8b%4]) with mapi id 15.20.9587.017; Mon, 9 Feb 2026
 16:50:00 +0000
Message-ID: <76d9bb49-58c7-44a4-9e64-2c0c221f6869@math.wisc.edu>
Date: Mon, 9 Feb 2026 10:49:58 -0600
User-Agent: Mozilla Thunderbird
Subject: Re: dectalk with Zabbly?
To: Chime Hart <chime@hubert-humphrey.com>, speakup@linux-speakup.org
Cc: debian-accessibility@lists.debian.org
References: <a94778ab-fb0a-c4dd-8560-5f0c13cf7ca2@hubert-humphrey.com>
 <aYhEef1ay3qawn1q@end>
 <7c04da49-6ed5-edd5-3fe0-2ca6fed279f2@hubert-humphrey.com>
 <aYjxf7H2_ir-ZIoq@end>
 <07e6a7ea-34dd-6a00-16c0-32f43b0bd138@hubert-humphrey.com>
 <aYj3QBxlYZvRZBjN@end>
 <302bf531-41b5-6335-f16e-0629a3a46515@hubert-humphrey.com>
 <aYj7xTzujBre3UvV@end>
 <5e14d114-7706-05e6-0d2e-89b1939ea7fd@hubert-humphrey.com>
Content-Language: en-US
From: "John G. Heim" <jheim@math.wisc.edu>
In-Reply-To: <5e14d114-7706-05e6-0d2e-89b1939ea7fd@hubert-humphrey.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: CH2PR16CA0008.namprd16.prod.outlook.com
 (2603:10b6:610:50::18) To BY3PR06MB8195.namprd06.prod.outlook.com
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
X-MS-TrafficTypeDiagnostic: BY3PR06MB8195:EE_|SA0PR06MB7020:EE_
X-MS-Office365-Filtering-Correlation-Id: d381bce5-e96e-4642-f03c-08de67fb4378
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|366016|41320700013|1800799024|786006;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?QXoxczVSdmVhR3ZnbmlRRmlTSE9rb0FIbndvb29OT0JzY2FiTzBFM01CaUNF?=
 =?utf-8?B?VmM2V2YrREV5U2R6dktBZmdNL3ZjUm9VWnNPTTZMU0ZUVU96Z3lIV3hMbUNI?=
 =?utf-8?B?eGdrOFBHY2VTb1B0UTZkZUQ3RndPV0tZOGswSElLNGx1NnQ5czdmUU9sNzNn?=
 =?utf-8?B?WmtLYXZVbGtyczJyN2NLYnU4eWRZc2dhQ3NCbm5IVHVFdS9OWlFSbHhmTmZs?=
 =?utf-8?B?UWwvUDlFbWtOL0xTdlBEWkRkRXBNMkYwQ1dUejU4MXlROWRYT1QvcHREZTV2?=
 =?utf-8?B?U0duTTJ6WU5SNmxacXV0NEdoSXhzOGttVmJPTytMVkdiK0krNUlSY05RSi92?=
 =?utf-8?B?MGlvNGgzR0haVWEybkhRd292TkpNU3FqaFpwd3dXam5hMnphVU8zREYwQXlJ?=
 =?utf-8?B?OG9RU25FeEVTTlFYVGkvcVM2aTlDNHFTTG9wa0IzT05OM3VDNHZ4QjVWVmVM?=
 =?utf-8?B?OUVMcGw2Qmx2RnNWYk9DWmFqNEZuQ1NKbVBaZXZ1NFQ3VmU4QzVMWTlVYlB0?=
 =?utf-8?B?TXZkMUdKaG5MWFFvZDdOT3V4YlZoM0h0UkhVT2V1MEQ1M21aVGljbDJENUh5?=
 =?utf-8?B?dnorYmRXVmlXU0dmT3NqWllRQzcxWDZZUE5JMms3MkhCUm9iTjJkaWkxd3p3?=
 =?utf-8?B?U0xBNkpKbm9Qa2xjSmhOQXlwLzJmUzlkS0lNUWlpdWZKUUxPQ0Q1bHVac1ZL?=
 =?utf-8?B?VDlnRThQaDc5VVorQkRpT3dRaFlhS2pyQjV6WTQwMFRzbmhmeG9QbndXbVRx?=
 =?utf-8?B?ZGtlcUdma2h1VzY3WWtya1BpTXdKcHdtTkMvbG5TRlJHK0lJcHlpMlZLMldN?=
 =?utf-8?B?dERrWnNVbXJ4VzFJbFFWMUNMcVhoTGNpdE1ldi8vTm9xdGJEc0IrRlFHcmU4?=
 =?utf-8?B?RkxSVWxUSjBMeGZ4MmtSTU02K0R5VHNmR2hJR1E4c2Q2a3NQaC9VUWN0MjQ0?=
 =?utf-8?B?WHdyUW5zUEREaUtKamdURTIrWjZqRE1JN3oyeFRTWDBMTDJrL29SNWdvckd6?=
 =?utf-8?B?K0NGNmdtWDQxYTBOZ0VQVVVocmNwYmNLNTduNDNjUTR2VFhjQi9tMFFaNnJT?=
 =?utf-8?B?K3Q0REJ3YzdjSTY5Y3VvRHk0cFo1bE1Lam9PdmNtcnBCbFd3MnMrYW5Wd0I5?=
 =?utf-8?B?TUdXUXh2SVBTamk5QWJZV2EvV1dmeHo5ZWluczNnRmVlQ3VTVTVkNTRMSUNB?=
 =?utf-8?B?cUhnK2FNQVJ4SFZnQTVNN2VrVFV2ZERYWVY2cm1JQWFRSWw5U2NsdktvMlhp?=
 =?utf-8?B?TTlyK0haNDBrcG5DeU5iWWk5cnZyVjVJdmtnY293Vm5kSlNUcVZwcXJnOUpw?=
 =?utf-8?B?czFBMHh6bXdvTGMxbHZzcG9hdW1OT2ZnUEZhdmJETkV6YXA3SzZHOStkZ0F0?=
 =?utf-8?B?c1poWGJoZFNkNVlOZFlmN0doVDZIZ1dodkU2UHQveXY4akNSVDJ0aGh1Y2pr?=
 =?utf-8?B?YWk1VDVDbHQvN3AyZ2VSeWwxM3grRUdwYVhxTExseGtoM08rVzFXUm5YTHdE?=
 =?utf-8?B?b0J3eEttQWt0ZVJUbXFGbXgzcjNML3YxcXZOVnpCTCtydFdIMzE4cEhZSThI?=
 =?utf-8?B?QXFjRGNJeUN3d3B2V1BYY29xa09GZ1VQTzRTWWt5N0pJajdFdlZYNXNIQ2Z3?=
 =?utf-8?B?VWVpczJRTUZ4L0pvbmhZTkFSMTFDcUhUOC9MenJZa1k5TmtYYkxGNGRLN1Fq?=
 =?utf-8?B?emh4bFdRYldsZXdqdG13V01GQ0RtRG9HR251dkMwYmxCNExyWjM5eUU5eDZx?=
 =?utf-8?B?eTZxRlcySVRKaVRBMnBiOVdSWEJTVXBRNkZVMnpneVN3aWxIZUZjV0RIbFZs?=
 =?utf-8?B?Wi9TdGJvdW44elpXWTFkUFkzUGJIOHU2d1Q5S3BGYjQxWUZrOGdWOWlMazJm?=
 =?utf-8?B?WkR2cEU3RzluTjdCZXI5YVpzWmF3V1hWT25jTU9LQ20yVkVXNFNTVG1ZVlRX?=
 =?utf-8?B?TTNQSXJMQ2dwbzRUOXJ4MWJLQTU2RkNoNEpndk82dTRFcUdSL3ZpT3AreVQ0?=
 =?utf-8?B?akplRnNwRGJjQ1dxcVNiMXpRMVBTNG85MU82Rjc3VHdpZnhvRkg4SGN0dkVk?=
 =?utf-8?B?N2hyVlNMWjJ3YWJlbDEvb0xWWTk0MHJpUE5JRVJiQ1BWeHNHblVoZW5XQkE1?=
 =?utf-8?Q?kM2Y=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY3PR06MB8195.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(41320700013)(1800799024)(786006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?aTBDZDV4eEk4RnVSOEtlMVNLS2NmSWRaZWJWd1F0VzkyaWVrbXVZbVFjTy9j?=
 =?utf-8?B?NXVEZlBmdUMybkZaRVMvckc5UHU5aHJGWFBOaHFBbUl2d1ZGZ3MyRkFmYUxW?=
 =?utf-8?B?ZXFFS09seVFlbXFxKzdOUUU5SmJRVWNLVzFCSWh6RUo3Yklob01SVnBpenlD?=
 =?utf-8?B?VjlGQnNzNTdzR05HZC9rUDVhOXI4dVh1RmU4THp6N0cvSGkzSFVNaTQ4eEdG?=
 =?utf-8?B?cHFSejdyVllTeVFvUXFEcGdxcDg3ZS8xQXRTdU80R3VyQmF6bXlkYk5jOU9j?=
 =?utf-8?B?Y3N2VjJ2YUZLSXBXWi9FaFQ5bVZMajZ6bnRlOFFoREhKU0E4VlZXNmRySlN6?=
 =?utf-8?B?angyYThUUmU1RWltakZYYnNkS0dvYUh2Mnl0T0Zab05pdWMrd3pKZHc3RGtP?=
 =?utf-8?B?L0tlVWlXNUFPanJaNEJBc0JJRGo2UVBGNEZpNzlTSDQray82YkU3V013WmRi?=
 =?utf-8?B?L3VabUx1SlEwVzFmQkkydDJoOEQvM0UxZisxZDVIamFzbCszSzlsQkZUSGkw?=
 =?utf-8?B?cmxxVXVualBGUU1MYmduSHpWNW1ZQk1xdEJrT3dta3FCQjUzR3pBR1RTT0U2?=
 =?utf-8?B?Q1lQZG5lckYyZENyR2VmeEZQbDU3VVo1WG92N1dJWEF1WjBTdGF4SjNzN1dW?=
 =?utf-8?B?RVBBK3lUM0t3YVlHL1VwNXBiYy83UWU0Ui9pLzVnU3BOYlJ0V3dPNTE1NGVE?=
 =?utf-8?B?RzFFbUJwcktSVXJ0Z3dNME5VQUFjNVp4Q1BZalkxcHdheXlDSnpRRGtSRUNk?=
 =?utf-8?B?OFY4bEpKeVB2TzVFeDNWYXBTZHRRRXFuOVR5bUtBZitUb0pqQzhyMzV4eTdT?=
 =?utf-8?B?R2kzcGFmc05MQy9lS05iWWFDV0dwR2F3d2lCK0JaVGY3WHJDY1VnQWs1UDNP?=
 =?utf-8?B?UVhLS3FDUTRHZkRQVHYzTEQzd2o0VUJFb2lCWVJJTjhYOGMyVDFGYm1iQ2lT?=
 =?utf-8?B?UEFTUUtiN2g1QzUyakxuLzlIcWFxU2JXRUJGaEV1dkduaVVGSFBOMjR3dmN1?=
 =?utf-8?B?ZUFOZThjM0U0dStrVjRIR2lUWVJIRkVoTXlVQ0pXNVBxWFB4cENsbHp3blJr?=
 =?utf-8?B?cHl1Mmt4OVFOUk5xZk5UaWI5aHhNdHZGSEJQWGIrSmpNVFRIcHhCRFR5ZHVh?=
 =?utf-8?B?SG9CK3g5V1Y3bm1KS3hBVE1NTnk2SW1DaWJWRWtPZ0dxUEk0M3FBaEhRNjYy?=
 =?utf-8?B?ZVRpcnQzdVdXTUlpKzRObVVHQTVkY0xCY2FkL2k0aTRnUit0Q0FyT3FvU2pO?=
 =?utf-8?B?L09MeEREK3MrcmpMY0wzaVpJWkE5dHQzcDBadXg5TG1CY2QyZTUvSlRyL2pm?=
 =?utf-8?B?TVpkSW9zeGlBODFKLzZlUmw4OStmNzFpaTVsYTlqdlF4d1JHSGRlUEJGeWRW?=
 =?utf-8?B?dU03Nk5tZkRGNHRJMDVFT1NVakNraHR2TnA3cnlCd0xYTU12MjBXNmVHRXNj?=
 =?utf-8?B?Vm9HanpXbzdZRkNJSEJFY2RBTmVqR1NyTlVrZ3NUcEZaSUY3UE9ZRHc4aEpp?=
 =?utf-8?B?Rk9FT21MWVBMWVNPRnUybzQ0SDBWL0xEMlh2M3dyZWJONGd6Vkc2MGJvMmJJ?=
 =?utf-8?B?YkorcWJiSkxHVjBCMm43dU91ZHJHNHJjKzIwY3VlckFLb2JOMXpJYlR5SCtV?=
 =?utf-8?B?Uk96L3pwQ1R2Wk1ESHdXNG9lZktETjROQVZqdWd1YTJhWlovTUx6emVSTjZa?=
 =?utf-8?B?WlZNdHJQbzhVOXpwOHJlQ2xPUjBSeE5acG9BQ2FjNStZaFFuUEZWclVGZW0x?=
 =?utf-8?B?aGNpOHR5Yjd6TTFOUmYvUFBHV0Y2cXZ5bjk5Q0FsRk9CN0NMb1hTSDdkMVda?=
 =?utf-8?B?RlBRcFRqZU5CckcwcXRoVjF4L0pDU0Z1YTVCV1FPR2UyRHdQNTdhY3hWTERk?=
 =?utf-8?B?UGp1NzBTaWhQdGNFWnFMcExXaXlXNUJrZitLL2wxY0NxZ1V2cWErc2lvOGdE?=
 =?utf-8?B?bm5JSUQ1VVNOSzJWeDNSa0dMdHR0UUI0ZDBEYmZmL1grcTBvV0Q2SGxFb0ZV?=
 =?utf-8?B?SWIwcTUrVEVQcTBGZ0JkSlN1L29MMmdUUHlQa01RV1JJSXo4R1B1em9uTUNo?=
 =?utf-8?B?VC9qTnUwRVBKTW5ZcEJ4SHlUMUFYVkJ1UTNYaGsraGMvbUhtMUtNM1JEM2Y1?=
 =?utf-8?B?M1pZb0J2WGE5UUJwN0FhRGFkV3NkeHc0eDAxcnpqQ05mcFVNb1IzR1BrcWhy?=
 =?utf-8?B?RE9Wd3dQdE1kMWlEekhiNEJadW4rUXFtOHZjREpOU2FBV0NhMWd6RU52NnVF?=
 =?utf-8?B?MTVUNE1sc1dycjF1cE1IS3g2Mlg0djc4K1ZUbGwzVVBjNjBSWENCcU1MenFC?=
 =?utf-8?Q?ZpCcBz53EIEKv49dWO?=
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: d381bce5-e96e-4642-f03c-08de67fb4378
X-MS-Exchange-CrossTenant-AuthSource: BY3PR06MB8195.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Feb 2026 16:50:00.2146
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UKryXyDB4DQl7XC4ZysjxPsMKHSmmzSy2CaplYE5hJv9F0sUuSfauW25CH4T6rib
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR06MB7020
X-Proofpoint-GUID: _mEgNZrMcKKSoBKnVAElOc2nwdjig2F-
X-Proofpoint-ORIG-GUID: _mEgNZrMcKKSoBKnVAElOc2nwdjig2F-
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA5MDE0MSBTYWx0ZWRfXw8clASrnULJj
 2LZMg6GVZLwXFlyE+0rSGyTMglVMUjJnMEtndCx43Dewjksekd3R6dYYNDz8bpUS4IlkBKSyVVR
 AoPGf6lP6n/Kb4Cc1aZyyE7iNSiES6UZUCPN8ut55DPSLgvLbJI94sUqwcc3GNjgWkq+Zboy3tV
 9zECNLtfXilHoRcUqY2q06AxVeh7UREwB7U3DZ/peCvyaEh7xq32w++DQ/6TflOne9gBkI/iaXa
 QwEGJ/lWUAfV//51paQx+o0ic4TH9gw5UCp/1L0+s9vCuNMMjpIbsLEJj4HRh60BBHZ8AoXagFo
 3WKOEtni9LVGgLOszfzHmJkxS3H3UW+Mj7YNuwe5tvOqHTa6uNyx0AxvqSDoa+kDPKVozGnKMG2
 0nP47S25LRzwumBmJuohGNDhcsu36HcpiZ3HEfX0RuVmpd8lL/lzczH655yH69tnpHplMFmK82B
 i9sjexaIJALo8rVTxJQ==
X-Authority-Analysis: v=2.4 cv=No7cssdJ c=1 sm=1 tr=0 ts=698a103a cx=c_pps
 a=KM6hcDErBpdSH7DPVcpu/A==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=lre9DRYkaIEA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=GUkfzgtcO7MriMfDvsUA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
X-Wisc_ValidFrom: true
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-09_01,2026-02-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 malwarescore=0 phishscore=0 priorityscore=1501 impostorscore=0
 adultscore=0 clxscore=1011 lowpriorityscore=0 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602090141
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
	ASN(0.00)[asn:5645, ipnet:206.248.128.0/18, country:CA];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[speakup];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	R_SPF_NA(0.00)[no SPF record];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_NEQ_ENVFROM(0.00)[jheim@math.wisc.edu,speakup@linux-speakup.org];
	FROM_HAS_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[befuddled.reisers.ca:helo,befuddled.reisers.ca:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-1553-lists,speakup=lfdr.de];
	DKIM_TRACE(0.00)[math.wisc.edu:+];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 38947112AAB
X-Rspamd-Action: no action

I am not sure what you guys are up to  but if it helps, here is a udev 
rule that I think will load the DECtalk module for your DECtalk USB when 
you plug it in. Note: It matches the tty subsystem instead of USB 
because that way you can use "%k" to point Speakup at the device. Also,  
it sets action = add so that the rule is triggered only once. I have 
similar rules for my TripleTalk and for my Raspberry Pi synths.

=== begin

ACTION=="add", \
SUBSYSTEM=="tty", \
ATTRS{idVendor}=="0dd0", \
ATTRS{idProduct}=="2001", \
RUN+="/sbin/modprobe speakup_dectlk tty=%k"
=== end


On 2/8/26 3:45 PM, Chime Hart wrote:
> OK Samuel, this is 90lines, hope it makes it through
> sudo lsusb -v -d 0dd0:2001
>
> Bus 005 Device 004: ID 0dd0:2001 Access Solutions DECtalk USB
> Negotiated speed: Full Speed (12Mbps)
> Device Descriptor:
>    bLength                18
>    bDescriptorType         1
>    bcdUSB               1.00
>    bDeviceClass            0 [unknown]
>    bDeviceSubClass         0 [unknown]
>    bDeviceProtocol         0
>    bMaxPacketSize0        64
>    idVendor           0x0dd0 Access Solutions
>    idProduct          0x2001 DECtalk USB
>    bcdDevice            2.06
>    iManufacturer           1 Access Solutions
>    iProduct                2 DECtalk USB
>    iSerial                 0
>    bNumConfigurations      1
>    Configuration Descriptor:
>      bLength                 9
>      bDescriptorType         2
>      wTotalLength       0x0035
>      bNumInterfaces          1
>      bConfigurationValue     1
>      iConfiguration          0
>      bmAttributes         0xa0
>        (Bus Powered)
>        Remote Wakeup
>      MaxPower              400mA
>      Interface Descriptor:
>        bLength                 9
>        bDescriptorType         4
>        bInterfaceNumber        0
>        bAlternateSetting       0
>        bNumEndpoints           5
>        bInterfaceClass       255 Vendor Specific Class
>        bInterfaceSubClass      0 [unknown]
>        bInterfaceProtocol      0
>        iInterface              0
>        Endpoint Descriptor:
>          bLength                 7
>          bDescriptorType         5
>          bEndpointAddress     0x02  EP 2 OUT
>          bmAttributes            3
>            Transfer Type            Interrupt
>            Synch Type               None
>            Usage Type               Data
>          wMaxPacketSize     0x0040  1x 64 bytes
>          bInterval               1
>        Endpoint Descriptor:
>          bLength                 7
>          bDescriptorType         5
>          bEndpointAddress     0x04  EP 4 OUT
>          bmAttributes            3
>            Transfer Type            Interrupt
>            Synch Type               None
>            Usage Type               Data
>          wMaxPacketSize     0x0040  1x 64 bytes
>          bInterval               1
>        Endpoint Descriptor:
>          bLength                 7
>          bDescriptorType         5
>          bEndpointAddress     0x06  EP 6 OUT
>          bmAttributes            3
>            Transfer Type            Interrupt
>            Synch Type               None
>            Usage Type               Data
>          wMaxPacketSize     0x0040  1x 64 bytes
>          bInterval               1
>        Endpoint Descriptor:
>          bLength                 7
>          bDescriptorType         5
>          bEndpointAddress     0x86  EP 6 IN
>          bmAttributes            3
>            Transfer Type            Interrupt
>            Synch Type               None
>            Usage Type               Data
>          wMaxPacketSize     0x0040  1x 64 bytes
>          bInterval               1
>        Endpoint Descriptor:
>          bLength                 7
>          bDescriptorType         5
>          bEndpointAddress     0x84  EP 4 IN
>          bmAttributes            3
>            Transfer Type            Interrupt
>            Synch Type               None
>            Usage Type               Data
>          wMaxPacketSize     0x0040  1x 64 bytes
>          bInterval               1
> Device Status:     0x0000
>    (Bus Powered)
> Chime
>
>

