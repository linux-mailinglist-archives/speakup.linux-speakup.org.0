Return-Path: <speakup+bounces-1568-lists+speakup=lfdr.de@linux-speakup.org>
Delivered-To: lists+speakup@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AO2ZFM4dvGlEsQIAu9opvQ
	(envelope-from <speakup+bounces-1568-lists+speakup=lfdr.de@linux-speakup.org>)
	for <lists+speakup@lfdr.de>; Thu, 19 Mar 2026 17:01:18 +0100
X-Original-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id B67D72CE30B
	for <lists+speakup@lfdr.de>; Thu, 19 Mar 2026 17:01:06 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=math.wisc.edu header.i=@math.wisc.edu header.a=rsa-sha256 header.s=selector2 header.b=N6+8Fo/e;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 27DCD3818A5; Thu, 19 Mar 2026 12:01:04 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 01F103817BD
	for <lists+speakup@lfdr.de>; Thu, 19 Mar 2026 12:01:04 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id BC9243817BB; Thu, 19 Mar 2026 12:00:57 -0400 (EDT)
Received: from mx0a-007b0c01.pphosted.com (mx0a-007b0c01.pphosted.com [205.220.165.71])
	by befuddled.reisers.ca (Postfix) with ESMTPS id A82E63817B2
	for <speakup@linux-speakup.org>; Thu, 19 Mar 2026 12:00:56 -0400 (EDT)
Received: from pps.filterd (m0316040.ppops.net [127.0.0.1])
	by mx0a-007b0c01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62J9lCvg3337975;
	Thu, 19 Mar 2026 11:00:46 -0500
Received: from dm1pr04cu001.outbound.protection.outlook.com (mail-centralusazon11010053.outbound.protection.outlook.com [52.101.61.53])
	by mx0a-007b0c01.pphosted.com (PPS) with ESMTPS id 4d04khd165-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Thu, 19 Mar 2026 11:00:45 -0500 (CDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hbVuPDK4BFL6VCcBEyrW3dr0Ng6zKrwE4Xldmef3awxIAIavUzg6zdJIaos65qE5u07NgAUfOMzYdcaOrZDnbzo+dJoZ59zU+ABxVcn1bxJ8smmncuwxhFV5FLqyEHGEutlMMfBKs2R/96AAi9ViV5307VvqvPnL49IRM6yj+jYdWOs9qcYrq6f6q2GYj81ejKIdT0wOm3+0gT28ikSCi97q4h/c+/0Q4E/K5TwaboIDZiKf22QJ9sBVCaMfmI9PyYoJM5Zm7bgHHtNFwCsgDRGE3DOkJ8p5MyTPDnVU9oxNAsMhQSXWQ3PdrtgCwwIwXTzZ5Gy+xp8AymaA0IAy4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ybHJSDj8v+EMG+vI9gfq9vpjjexC4p248rS7z7PVnK4=;
 b=Zxg0zd2xRoHG1uj5XQhqbkSwi2TIJS/mou/JBt8T7b8rj37kLdCLB+75bj9DoCgYENld88nTPt1eEiuOtGqOtuTqrRDRbdrf595HfVuXesY9ahmMBVduvVHWmoEff4EGzseLWl/UH3WVzqdq6Upq0+ggQ0Nr4IDgcNsoGgJBBrY+rMOaGWUJkqeLZ6dIb2v5sGz0kT14xbTivGd79MaAGuTQVQtuPDrBUx8uKd6AOzVzMcdDJ2axonTWL5U5LryHN7W3g5+RteuJjkEzc7A7gVwP7f3OL5gmJSSq45mGPvqYnDkSsxoSIfYsUPYdlvjdJz5uK0LVKzYt4zjY88EgNw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none
 header.from=math.wisc.edu; dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=math.wisc.edu;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ybHJSDj8v+EMG+vI9gfq9vpjjexC4p248rS7z7PVnK4=;
 b=N6+8Fo/esenXAbm69hSCaZM1HS/Fdox8qxEzZAfg027rHUimYpjzp5XraE/Lw+pUOQKYP7RvXK4SdQguZNHJl+JPyYZPknvtyyaUY2B4t6alBS15pSZfLK85sT6n42EVDwITRdslDxw6WsandYB/5q274irJxgwHbnhWHkNVdAZ6OnPJ1oWu+jEZKjARqaLvHR+EfMddfMQ4bfAQldjkTUoMlLG4XM51dOFK0Iwk4D2eizm0JoNq2Je7vsXc/Kbl2GIAVF7hG8Hzbk93EpEx04W0fpWhudR60gu9mctOeFAm+vRj7G4qvTbFH+eHtt7CmDU4tgPoLCkAneQ8nLN6sg==
Received: from PH0PR06MB8206.namprd06.prod.outlook.com (2603:10b6:510:c2::22)
 by DS1PR06MB10171.namprd06.prod.outlook.com (2603:10b6:8:20b::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.20; Thu, 19 Mar
 2026 16:00:44 +0000
Received: from PH0PR06MB8206.namprd06.prod.outlook.com
 ([fe80::9d74:8708:bfec:b7b9]) by PH0PR06MB8206.namprd06.prod.outlook.com
 ([fe80::9d74:8708:bfec:b7b9%6]) with mapi id 15.20.9723.019; Thu, 19 Mar 2026
 16:00:43 +0000
Message-ID: <3f6ad7ad-7801-47d5-ac88-42b07de3dccd@math.wisc.edu>
Date: Thu, 19 Mar 2026 11:00:41 -0500
User-Agent: Mozilla Thunderbird
Subject: Re: RPItalk hardware speech synth project
To: Frank Carmickle <frank@carmickle.com>
Cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <f58445bf-9bef-466a-8c0d-2707001c9c84@math.wisc.edu>
 <65660797-d85c-488b-ae64-fdba06f3e5d4@raspberryvi.org>
 <36174ec4-fd0a-413e-96c7-13d6a5db1ffd@math.wisc.edu>
 <132CCCEE-C79E-4A3D-A040-A10C942CE1CF@carmickle.com>
Content-Language: en-US
From: "John G. Heim" <jheim@math.wisc.edu>
In-Reply-To: <132CCCEE-C79E-4A3D-A040-A10C942CE1CF@carmickle.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: CH2PR08CA0001.namprd08.prod.outlook.com
 (2603:10b6:610:5a::11) To PH0PR06MB8206.namprd06.prod.outlook.com
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
X-MS-TrafficTypeDiagnostic: PH0PR06MB8206:EE_|DS1PR06MB10171:EE_
X-MS-Office365-Filtering-Correlation-Id: ef385cfb-20d5-4d07-0d6b-08de85d0ac7b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|786006|366016|41320700013|376014|1800799024|13003099007|18002099003|56012099003|22082099003;
X-Microsoft-Antispam-Message-Info:
	mw6W4FblvWRCxaUEbMoWD6SHNpfAAzy0sEEwsyM/1Jg0Z9/XsLEpxKfA4N83XjgQG2z2A0G/UFkdmswFfO0kadoFF2sJoEConw7CTMVVvsiFgijl4azkcwKlj4WztitY/+IlMbki7ztI0+tnHpxF9+pdncZQYc4pJYigG0JLS6b6xHqxdym2Bcde4GtugAdnjub2+bNpy1zD0jwxjasDJfRyrZW1+Rh5A+yPCZXMh8fzQcBt5DE9x1nCAGIfyT7I4aqKAWlayzqp4wVOy6W2XATkNmhsU3XUyvUffmxLgxIHZD7agCI6UaeGz/L8zib5OKZRm5OdJtUHo4xctoNiXkNCPDo/zYAhEWwquvdq7cAj0m3W9Ai41tefDo8pfpN0POOPhO2XHQjsxIN/NBWf6Sdgc2qlk74mkdtZi5SAz+UN2shq718dGJTv2YzqptQmSj4oHPyqCbwV+gncAS8H+51XNV1Vhp2hbUj1r5PdPeJLzMC+Y+aXUnNCA6CzFzbPC0Uz5JazIIY13inn8r2v3NCZ5PslzW0nq/b9rqrf76T6HoM8OhehmCXkWguLuNO2T5nSpH3wbD3NZ2nyLqc9OsXGDZoGAP/3pAx8nM1QFsVcsOEviNkI7ZbvG+OsI1KEUApnsmYfeLQyd/ExZ4vJadXCn27HBVu8VR0iUTVqCWmaALkhYXqGp/M2LIwWOswT
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR06MB8206.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(786006)(366016)(41320700013)(376014)(1800799024)(13003099007)(18002099003)(56012099003)(22082099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?aysrWWgzM1prQS9CaUpYemNpY1F2OW1VZ0puTlZEaGZwS05jcStKd3gyTzRi?=
 =?utf-8?B?RnpISmtKT2NEdGFGVnoxdEpkK2dzWXVnZUR1NDdzSjAwS1MyU0Nma0tCSGhN?=
 =?utf-8?B?WEZhOGovbnA4VWJTQXNMTTBpeFJSMW1Ta1ZVc1lKaldPMTlJS3gzK282dVNC?=
 =?utf-8?B?MmVKYnpVWm5ic3pFazEyRUN4UCthaDRrVXRJOTRlZGEzeXl5N1JIN2ZsRFJp?=
 =?utf-8?B?WitkcVJHVGkzSXdxMXppSWlPV1BKV0NhUHpvV1daNk5wWklreGVaa3IzUGkv?=
 =?utf-8?B?enh3RTJJeU1wOGJieUFPT20yckpJcnNaL1Z6SWZSZFFJQVY4QmpGRGlTaHhF?=
 =?utf-8?B?T2EzcDQ5VVR1ZEVFUDV5bGZwc0QvZlN6WFYzL0VsT0xIV1JWMnFHays4bU50?=
 =?utf-8?B?QjhrU0JhVkZua2VNYkVicDFJZTZwdWM0aDdZd3BLMGNQTkdxUlZYSUNNcmZn?=
 =?utf-8?B?R1ZKZEZOVUNBWmZKYUxVQUVRSG5CNy94YjRLK0t5VWo5NkQySWJIKzMxSVox?=
 =?utf-8?B?U2NMRTY2a1liTENyOERrMGEvbDB5b0lEU1Z6S25EYkdMTmY3YWM0ckFlTmtJ?=
 =?utf-8?B?WmlMWW5nUk9RNCtaUnQ2SkdvNTFlSm5QeVFFUkc2WThWcDRBQ0VCRGRmYWZJ?=
 =?utf-8?B?RTJuNWJ3MmdsWmc0TWRWdmROM1U5QUtJRGhqa0NVKzl3aUdCQ1ZyMDIrTnNR?=
 =?utf-8?B?UFY0cHV6ayttZnl0M3hHc2c1ajQ2ZXlYa1ZOYlVVUGZwSG9aRThkSEl0cWtQ?=
 =?utf-8?B?a0luc0ZHU2xoZ212TFhwS1MvbDhXNHB0QXZ5em0xYlcyVjdxbjJ1THpPbUgz?=
 =?utf-8?B?OTlIL0RxY0RhWndpQjNYZUpXQkljL1BLVVFnMlFwMG9ZMEFpK3FxOHMxRGls?=
 =?utf-8?B?WExwdmRiZHlCWGRMaGo1bmJjdy9KamV5cHA0YjV4dmlFT0N1dE1Qc1VQMGtj?=
 =?utf-8?B?b000aHh3WDVBOFNPS2lwOUVOb2tmWU5PcmloTjE5ZnJkYkhESzFmdTMrMTRX?=
 =?utf-8?B?NVNnYWc4aTZOczNsbWU0OXYwcmp1WE92LzBSVDF3ckN1Tit1TGl1WnFhUkR5?=
 =?utf-8?B?RWlEUFI2d3p1azNyOHk1amk2N25DWUlJTlcvd05DVXo1M1RaYVVRK1FVdU8w?=
 =?utf-8?B?Vm14MEVOY2tpUDhJOXRGMDU0NkVFR3JIWE5lSDBTRGlBc0VTVEdPVG5YNFJk?=
 =?utf-8?B?K3lSWmNXRkVraXlDRHdtVTFQR21FTk1ib2ZLaGV3NG1MOTBLMm5xV1gwTzJt?=
 =?utf-8?B?ZmlqN2RSeDdEd3hlaC9BdHpteVFDSDk0clVRdDQ2OFBZbHpzWDIvV0ord0Zs?=
 =?utf-8?B?Z0dpM1E5WDhjOG9CSWZwRTVyN3VVQjNoNURqb2k3dzlZdW93a1UyVFBSRnlJ?=
 =?utf-8?B?ZTJCLzRxSDN2eUlNRDEzY3lnK0ZKK1Z2bjUvNlZCUGt3SFVTdFpZcTBTeUJn?=
 =?utf-8?B?bWl2a2phaGQ1b1BjNk00UmJ3amdsY1pROWpHWWRlTjFkN09uaGZJUXFQRXhr?=
 =?utf-8?B?Wm52bktXTWJvMFovOHRhUTZFQzBlQTdsWTh5Y2pYTmpGa09tZWdyUFI3dzNT?=
 =?utf-8?B?anVyOXQ2MnlDOWh3UDBRSkpFMTFkL2lvc1hUbzlOMWZ3SXRPRUI5Y2JTeW9S?=
 =?utf-8?B?d2NaQVhkU2lBN2E5dGh0L0dGYjdnZFkrbjdkSEExS2kvN0dweXJLOWhkcUhD?=
 =?utf-8?B?VWdFdTRMT0JzSnpkaVdySDhudlk0WEdEalJCRVdOWjlqUWI0Y0dLZUU5ZHd4?=
 =?utf-8?B?b0tDV1VqZlF6SzdWSFN3MWxjNitxRGhtZTQvRzhkMXN1cEFJOGNHMW1YR3lu?=
 =?utf-8?B?TWI1Q3VXbTI5QktUVC8zSDhyUXF0bHFhTHN3U0xvaWZWa1YzSmdKOVZQODFk?=
 =?utf-8?B?Z1kvQ1pMeHc4ekt4eHYzWFRLdFo4aEVyNmNnODlBTVc5dmdTVXR1V0hEaTQ3?=
 =?utf-8?B?cWErNklnaW91SkhoT2VETXZ0OFJFRkdmTVY0NkVzeWtxZlNOQlBWSE9hdlVC?=
 =?utf-8?B?SW9PM3UwazcxbGUvRlp1TDR1ZUg2ZEdwbjMvekZxZU8zV3VqUXIwV2YzMHRn?=
 =?utf-8?B?emFPWlM2TUp0MmZPMDRsMVJTZmxMckYyY3NQaFVvaFlEVWY1cUZvT0dEaWsz?=
 =?utf-8?B?dUhDUmE4M2phbUl0WTBScEtFVGFJckw3dWozRDZ5MGQ1OUxGbzhzMHd6RXE3?=
 =?utf-8?B?dk42VzdUNmd3VE1EZEVPNlVUV254dE9yRjZ1Y0x3SWFQL0FVanMzbXNvY0Zo?=
 =?utf-8?B?S3gwM2ZPVUJoZGQxQ00xdGo1TktMSnl0Qi93ZzFKVmJ4d2dML2kyd01aSWZZ?=
 =?utf-8?Q?rznKqgwuJSP3MUHnrR?=
X-Exchange-RoutingPolicyChecked:
	fVhS1gZVfM//Jgho8it8kaJE7uoac7dDEVMpx7+Jfkwlk+h/MKZQhHVk904IPd9mLYHwfiBhgmwLuIWg7rwPbGmoyzMYxoiBDcUrI6pyOjq1AimcyrdStsVxxzvjFRWWXSaTZuc71LmbdvuHjrWpvYtCTixVUFNG3pTv2J4YlobbwT5UZDNG7TsgWRZ4OY6zcQJoZbfoyQOW+9EQmpdIBYsATWj7b6FNhA7agUDsSdTeXOCPoaulClnvGewBK94xKtBxtw1jQwzBjEKvOG/VrvVxHbeBM6cUcmaQliQ/NXUdUMgtwlchseYj8NxlzNw5OYVP6ibkQT4FhnlAIqpHjg==
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: ef385cfb-20d5-4d07-0d6b-08de85d0ac7b
X-MS-Exchange-CrossTenant-AuthSource: PH0PR06MB8206.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Mar 2026 16:00:42.9030
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EG9nW5GxKT3mVT2EdFxBvhlS2d5LqVTbskCkcv4QHC6g40drSVxo4upFcTgknvJS
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS1PR06MB10171
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE5MDEyNyBTYWx0ZWRfXzQBFsnSiolnz
 Wr3eZJW6GHKE6GnetLr/K3g1GvjTddqBsqpYjV526sa+TahXasDwjq2qZ7ZLbMZnInTdt+4EK7R
 uxA2H0i99ZzYl5TqPJ4HJmO2XnbLmNJXAluA3MkeCP4xsiFsKfeeB3Dd1AtzZQiWgw3UUHz+MIM
 jZgtGZtzoKMfjceycD+QRyR+oKzWg0rlYTx3Ab3Ue+k8PzWWDes3vboOVPMzxRrLKoL4CorxKGo
 Bi4usNfPJejey+D+Lp532y5/kWyppbs2hvqZ+bqtdUa6HlfSN7ABp8UXVXRFsq1i/bdGDZg/eUP
 rwntRfdD0/MeRlkYjpPNpaOE1sFmddYfIDRwcm0X1NSr6gcerRd4/zFc3Sl+VQY32RTpeS2JeBV
 01bu5khf1qYfk82eMFoBc7A5U19PgZ7vMSrGG1h/ia95XqiIkYmtp/e8EVgeKHL3QZcBk104Bx2
 Z75Bea7KFPqyIRY57bw==
X-Authority-Analysis: v=2.4 cv=D4NK6/Rj c=1 sm=1 tr=0 ts=69bc1dad cx=c_pps
 a=ynjcjXHaqbEn4NYQb+mZsg==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=lre9DRYkaIEA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=ZyELlZqCvD1aXIDzc3I-:22 a=-L2uzytrI8BeDALVFixt:22
 a=DyznqomoAAAA:8 a=JU0TjpSoiCpGlpNBzhQA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
X-Proofpoint-GUID: Zepsei5ddsyfqwa4o4cxSoLoyb3hePCr
X-Proofpoint-ORIG-GUID: Zepsei5ddsyfqwa4o4cxSoLoyb3hePCr
X-Wisc_ValidFrom: true
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-19_02,2026-03-19_05,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 clxscore=1011 malwarescore=0 impostorscore=0 adultscore=0
 phishscore=0 bulkscore=0 priorityscore=1501 lowpriorityscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603190127
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5
X-Spamd-Result: default: False [-1.89 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[math.wisc.edu,quarantine];
	R_DKIM_ALLOW(-0.20)[math.wisc.edu:s=selector2];
	MAILLIST(-0.18)[generic];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_NO_TLS_LAST(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-1568-lists,speakup=lfdr.de];
	TO_DN_ALL(0.00)[];
	RSPAMD_URIBL_FAIL(0.00)[math.wisc.edu:query timed out];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[math.wisc.edu:+];
	R_SPF_NA(0.00)[no SPF record];
	ASN_FAIL(0.00)[127.184.248.206.asn.rspamd.com:query timed out];
	FROM_NEQ_ENVFROM(0.00)[jheim@math.wisc.edu,speakup@linux-speakup.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[speakup];
	MID_RHS_MATCH_FROM(0.00)[];
	RSPAMD_EMAILBL_FAIL(0.00)[jheim.math.wisc.edu:query timed out];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: B67D72CE30B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Darn! Nice catch. Man, I cannot believe there was a mistake in the docs 
after all the work I put into it.

Anyway, if you use the OTG port on your Raspberry Pi, then you must use 
DECtalk emulation. Well, technically you can use LiteTalk but you'll 
have to change settings on the Linux host.

If you use a USB-serial converter, then yes, LiteTalk is preferred.

I personally am using a Zero 2 W with the OTG port and DECtalk 
emulation. But I put together a Pi 4 with a serial cable and LiteTalk 
emulation for somebody else. I have to say the Pi 4 with LiteTalk was 
slightly better.  The Zero 2 W was a teensy bit less responsive. It's 
still very usable. It's only when I was switching back and forth between 
the 2 builds that I really noticed a difference. It's not just that the 
Pi 4 has a faster CPU. The LiteTalk protocol is better for the reason 
you mention and because it's just cleaner and easier to code for.

The build with the Zero 2 W is nicer in that it is cheap, makes a nice 
physical package, and does not require a separate power supply. You can 
easily walk around with your hardware  synth in your pocket and just 
plug it into a USB port when you need it. But the USB-serial build is 
nicer in that you can configure it in the initramfs and get speech 
during boot just like any other hardware synth.

My desktop actually crashed during development and I used the LiteTalk 
emulator to fix it. The crash was not related to my work on this 
project, it was caused by VirtualBox kernel module screwup. Anyway, I 
used a boot disk from my other project, grml4speakup to boot my down 
desktop. With grml4speakup, you can create a bootable image with your 
choice of hardware synth enabled. So I already had my LiteTalk emulator 
connected to my desktop when it went down. And I already had a thumb 
drive with the LiteTalk version of grml4speakup handy. I just put the 
thumb drive in, rebooted, and it came up talking.  Nice.

Nice.

On 3/19/26 9:38 AM, Frank Carmickle wrote:
> John,
>
> Thank you for this.
>
> One question. The web site says that dectalk should be selected if you have a usb to serial adapter. Then in the trouble shooting section it says that lighttalk can be used only with a usb to serial connection. Does this mean that dectalk is preferred in both cases?
>
> Remembering a bit of the dectalk and lighttalk command sets, I would think that lighttalk would be preferred when it can be used, actual hardware flow control being the benefit of lighttalk.
>
> Best,
> --FC
>
>
> On Mar 18, 2026, at 18:10, John G. Heim <jheim@math.wisc.edu> wrote:
>> It's all on the page on my web site:
>>
>> https://people.math.wisc.edu/~jheim/RPITalk/
>>
>>
>>
>> On 3/18/26 2:32 PM, Mike Ray wrote:
>>>
>>> John
>>>
>>> Is it interruptible? And is there a speech-dispatcher driver for it? Does it simulate an existing hardware synth such as the DECTalk, or another one?
>>>
>>> Mike
>>>
>>>
>>>
>>>
>>> On 18/03/2026 18:29, John G. Heim wrote:
>>>> Okay, I've mostly wrapped up development of my Raspberry Pi hardware speech synth project. From now on, it will be upgrades or maintenance releases. Instructions for building a device can be found here:
>>>>
>>>> https://people.math.wisc.edu/~jheim/RPITalk/
>>>> The biggest thing yet to be done is to get my  package into the Debian archive so it will get into Raspberry Pi OS. That doesn't depend on me though. I've already taken the steps I need to take to get my package into Debian but I haven't heard back from Debian yet. In the mean time, I set up  a Debian  repository on my own space at the University Of Wisconsin. Installation can be done easily via aptif you add my repository to your system.
>>>>
>>>> I've tested this  on  a Raspberry Pi Zero, a Pi 4, and even on a Linux laptop. I've used both an OTG (gadget) port with a plain USB cable and a regular USB port with a USB-serial converter. In other words, with this package, you can use any machine running Linux as a hardware speech synth. You could take an old Windows laptop, install Debian on it, and use that as a hardware speech synth. But I am guessing most people are going to want to use a Raspberry Pi or similar device.
>>>>
>>>>
>>>>
>>>>
>>>

