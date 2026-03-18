Return-Path: <speakup+bounces-1566-lists+speakup=lfdr.de@linux-speakup.org>
Delivered-To: lists+speakup@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id HqSPEf4iu2lofgIAu9opvQ
	(envelope-from <speakup+bounces-1566-lists+speakup=lfdr.de@linux-speakup.org>)
	for <lists+speakup@lfdr.de>; Wed, 18 Mar 2026 23:11:10 +0100
X-Original-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 8772C2C3459
	for <lists+speakup@lfdr.de>; Wed, 18 Mar 2026 23:11:08 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=math.wisc.edu header.i=@math.wisc.edu header.a=rsa-sha256 header.s=selector2 header.b=LHZkvqOS;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 69E0B382731; Wed, 18 Mar 2026 18:11:07 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 473053823B0
	for <lists+speakup@lfdr.de>; Wed, 18 Mar 2026 18:11:07 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 12E6A38237C; Wed, 18 Mar 2026 18:11:01 -0400 (EDT)
Received: from mx0b-007b0c01.pphosted.com (mx0b-007b0c01.pphosted.com [205.220.177.71])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 6A7A63818E1
	for <speakup@linux-speakup.org>; Wed, 18 Mar 2026 18:11:00 -0400 (EDT)
Received: from pps.filterd (m0316042.ppops.net [127.0.0.1])
	by mx0b-007b0c01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62IM9677245851;
	Wed, 18 Mar 2026 17:10:58 -0500
Received: from bl2pr02cu003.outbound.protection.outlook.com (mail-eastusazon11011018.outbound.protection.outlook.com [52.101.52.18])
	by mx0b-007b0c01.pphosted.com (PPS) with ESMTPS id 4d04ker0c2-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Wed, 18 Mar 2026 17:10:58 -0500 (CDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uDa8oMPFyh4TjbCuUTotG0/VoLcshzk2u/p4n7v5NK6SDcFYNfo2p5jCurU6ucdkgMv6d1mfC1v5G5JHoSsQXz7y88Llg/R0hEWKZlJ/v5y5NHxd5vKDjG4j0oFG5fnWw+mNQ0omedyD4eM/t6pQBKA8C6J/k7Y4GHG+95VGesOLIzqFN4y/ug7pBPvjVLfzOuel07hJlne4rE06FJPPd0GeVHxItqY2RZjfOzW2/pAyMdTD2TKHJavWmyggwdlkvwguJudIcpN1IRkX97CmDC1o0uE+itIWDdV9MzZotyFqL0V2Cchh5i6e7oCkVzAbXAfvqosZSeXNIPvwEoSQrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/10vniCoJrG3G/JIG9Hl0DSD7a7K1wP6BC6a5FNm2mM=;
 b=GmXqgxaLuZV0EY/ktNdsRyuGQHxJTtMcpVcP9/EhnbXoSl/Wms15yGPb/ia6PZDXJmI3pKgT1hxkY7A85idjRDOeUIfgA4FhXU8o0zJTjVSsPY6iGPKNNMKF+33lpc7moSNWXt9sCqIG7nFoCxM+QWrIiC5ROrSLevlEoezrAjzjR56/7ateZ/KXSb8l5j9jjFmqj9gm+x05GXl+R/kiXkqzP3WaYTPXJVBjyC3W8+tdgHSqg/0Psoakf+vREPoR+n8To/m5ugQjv08i3h4y5InhE1rrR2C1KitACPzxfo8pUIjU2+wdWl7hhh6j2+godgN+tROLxaqOJ3Qy85G8Aw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none
 header.from=math.wisc.edu; dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=math.wisc.edu;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/10vniCoJrG3G/JIG9Hl0DSD7a7K1wP6BC6a5FNm2mM=;
 b=LHZkvqOSicDo12t8IF74jVRzwD7tGcyeqo5VZC/bQPsP1x8SF/F2Tnl08zEmKzj8Sj8FbPAmBJEjUte2qFSIx7DUkXIuYAHhbqYDi+0+fpstfp/YERi85XJNBvaNN8W2Ww8556wsT99S5NnJaow2cyhMTHPUgPE1KBv5pAzWzY3hd2qQy3Zxgag9mHgECCsoHzxxMuId8+vkUjTDso2bpeKkDc5aAo2uPRce/vUqr+EWbAY+GKry3kFRhC2vehgP424o0/6VMLwQUBqVEmPP6q8JmXzOYeRm5B8xDFWQmzocfzfgHLvgnMVSfBxRrZpL+gwmHnkT/FAFCKjA4NHlRg==
Received: from BY3PR06MB8195.namprd06.prod.outlook.com (2603:10b6:a03:3ce::19)
 by MW5PR06MB8955.namprd06.prod.outlook.com (2603:10b6:303:1ce::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.19; Wed, 18 Mar
 2026 22:10:57 +0000
Received: from BY3PR06MB8195.namprd06.prod.outlook.com
 ([fe80::a7ad:fb62:4389:fd8b]) by BY3PR06MB8195.namprd06.prod.outlook.com
 ([fe80::a7ad:fb62:4389:fd8b%4]) with mapi id 15.20.9723.018; Wed, 18 Mar 2026
 22:10:57 +0000
Message-ID: <36174ec4-fd0a-413e-96c7-13d6a5db1ffd@math.wisc.edu>
Date: Wed, 18 Mar 2026 17:10:55 -0500
User-Agent: Mozilla Thunderbird
Subject: Re: RPItalk hardware speech synth project
To: mike@raspberryvi.org,
        "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <f58445bf-9bef-466a-8c0d-2707001c9c84@math.wisc.edu>
 <65660797-d85c-488b-ae64-fdba06f3e5d4@raspberryvi.org>
Content-Language: en-US
From: "John G. Heim" <jheim@math.wisc.edu>
In-Reply-To: <65660797-d85c-488b-ae64-fdba06f3e5d4@raspberryvi.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: CH2PR07CA0023.namprd07.prod.outlook.com
 (2603:10b6:610:20::36) To BY3PR06MB8195.namprd06.prod.outlook.com
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
X-MS-TrafficTypeDiagnostic: BY3PR06MB8195:EE_|MW5PR06MB8955:EE_
X-MS-Office365-Filtering-Correlation-Id: ada4cbf2-1b4c-4124-93fc-08de853b3abd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|366016|41320700013|786006|1800799024|56012099003|18002099003|22082099003|13003099007;
X-Microsoft-Antispam-Message-Info:
	QRDyXo1F2do1/vTjk5HFKvfy7D9bYbid0Yb+V13xyFZX9BvKvumGsBIV4+Jt2vr6/DOb2qkqp3EuLhROu33rQUr5qRorjqgJMF1oWhQtUzeXv0Y1qMIgQeZYae9NdieoXVTQXIndezI9hDieGvACaOczFbcp8D8092EGMfGVFUikpC/awbOCrN4p3BX4fQhnevsA9zT7XJP3uBblCvSvyjmj/uDlx/YDmC7C3+fXFR9ajIe5ZxolYwaUwC9JgQIjXjQjVwVlkvq/dZdZfV8xddijchTlr79qZRw8wqlEEOmcxxq92ITHo4yHEeu/ldQ21hNPe2Hdzr+RmmY2EdddbPSguNUeHMYaeFRlV1bjN7X80N6bFnd+yHwqHiNYFl6M9vZBFzmCA6O0C7n1PwZQf5COoLQGJYf4OkAKFtZbWLv6vmuNgX6zvQTwNqySLYe2bXNuvHrb4tJ+N8bPrwjCWy2nXA+7uGUQEmk0b3N+GolML+6M7hfTFTWEadt1RhpPcvDhdLRfo2+LwVn4/Iiv8nil0ugV3ukf4n6hpcVbVbMsdXllp/4JqPFVuFR/hGanVwpI1LtZhRiFwRcpCNtLbVTHN3h8O3jlzdfxpInBCq6Tk/oMdJ6gRdZtqyEgcqRRd+iP0CRpCTdIS1AqhVADxNK/wrV6IbdM/mzvXglRtxKCRrLNgkKV9jR8usFMk4lLVoFVWDtcrbtUlQf6eh6UNCAz38i4UTggGmGGnJ+fSa0=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY3PR06MB8195.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(41320700013)(786006)(1800799024)(56012099003)(18002099003)(22082099003)(13003099007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?cURTY1p5TDFKWnFvTEdPMEJiTXRzVnZGMHF5KyttMjk5Z0NScnlUV3p5eWdh?=
 =?utf-8?B?cjRGaFhRTHZxWXlmK25XNkdvN2xSYy9xemV3MEdNZkVrSVQyRjBDdklLL1Ex?=
 =?utf-8?B?ajJBMHhRZGNDdDU4aGQ3NWRSeHRNMHZVbTlabjFGUldRNE1VZ3hXazdWWmdh?=
 =?utf-8?B?aFhYbHMwM0NsY05JcDJYWUpCYitKZDcydWlHTjJ2RS9xa3NFNkR2Q0pjalVI?=
 =?utf-8?B?MjZKTHVQK1ZpQUdyVUlicThCRnNiQ09weWFHdm94Nlo4ODZHTnlZOHVKRDlC?=
 =?utf-8?B?bDVpRGFndkNKNHVqdDAwWlYyT3NrUStBRkZsWG8wRWhEbzJsWWJYMFZYSXg0?=
 =?utf-8?B?bUlSODh1ZjdXZ3V1NWJvYzY2YnVjajFWMm1HRjhZaVBadVBrVHlZejl0NHJz?=
 =?utf-8?B?T0RxMmo4NWxmMHRwWVRjUXRFaVIzM2lyNzdyS2F4dUQ3dERZY2xPTHZwMXFZ?=
 =?utf-8?B?S3lUdGpONHdpS25TOEIyZ0Vod1RiVW5jcGhBbFFiMHVsVGxaMzhYQ09xUm9W?=
 =?utf-8?B?UW5ObjhDQWdsNkhhbmZyTHBjRFNIYnd4UWJSeVVYWnFHTTIycVVkQWEvM2NN?=
 =?utf-8?B?d3JrYmVMcnhmbmRyeU5oejlTNWhSNG9ZQzZERWpXU0lxV3ZMYXZYMTY1bFFr?=
 =?utf-8?B?NjF5NTBHaWRnRHd5RldvUldJaytjQUtLWmdyS1JsSHc3SGFwVDdHa3pueDhX?=
 =?utf-8?B?TTBMb3BOM2pwMVF6WURncGhhR0UxUlZ5bFRRdVJVbFFOZ056VzFBWkJSTFY2?=
 =?utf-8?B?M2hEOUtRSnlDWDJSd0Q2dFF4Si94WGpIKzVITE5obDB6QWF0U3o3djdFdUFF?=
 =?utf-8?B?c08yYWxpaFphM1FnVlhkSmxVZDZTNmVSejU5OVJPZThuSWl3MVRhblVnWWxO?=
 =?utf-8?B?U1hmMGVsUDdYZS9aS3NDdTN4RVhiNFgvcjYvNTB3VWpMcndtUHVYTlNyRGdl?=
 =?utf-8?B?dFdOckFRanRQcEM0a21OalpsODhkUmlNRFZKcFRGekJZTjNZNVgzemoxSkpQ?=
 =?utf-8?B?V1RuNE83bDEyRzlSUHZCbU5QQ09jNk9ka3dEOXdkNXI2cEdVVWR4RDA0ODd3?=
 =?utf-8?B?MnlsRTN3cXJNeDlnVkpxMGNLM1luVzBFcDFKZkxBTFVPVUU1bjNQUGx4alVO?=
 =?utf-8?B?RGJkWE9sNjYrc1YzNm9TblY5RFNabVQrbm1yZ2gvY2VnRCtvNk1qQngyUlBt?=
 =?utf-8?B?NWdpV2VJMnI2a0U0WjFPUWNEMEo0dUR2SlQzbTI4UExSWlhQMHh3TjNGZk9O?=
 =?utf-8?B?TG5KNTJSVUZacWlNN3RlWERXVlhma3BYUktIMTdOZHpQRWdxb2lIUGQ4aTJq?=
 =?utf-8?B?N20ySXVWOGUwQjdKNGFERGdZdEMwUk5TMFVCNWRzME8wU2J2c09mb0Z2cVZD?=
 =?utf-8?B?NzgzdmRvU2JadXlLS0dpZU9VNFhteDZldzA1Vlc2azJEMnBweUZ6WnN3OFQy?=
 =?utf-8?B?ZjhOTlFVbllBaEY4VWVBd2Z6YVhKYUcvOHJFcUYxNHM2aU1TOGNGQnoweWkx?=
 =?utf-8?B?ajJyMHVudHFWSElQZzdpTEN3WTJMZGxyaW43czdKb3BjV01MRDZnTUNuTHl1?=
 =?utf-8?B?VTJXUVRxdkdBV053SitabUJOdGFaOXFuNnVJT0FLR3puWllUdHZuL0M3QUUy?=
 =?utf-8?B?V3FBNzlBeW1BWUFEcEs2M09jZGxCL1pFNHpMMjhVYXVEVUxnK2JFaHpIS0R5?=
 =?utf-8?B?R1FWakZiRDYraFA3RUhjeUZ1V3dldDM5cUNOdTltSlcwVzVudW9HdnBQZlgv?=
 =?utf-8?B?RUFRdE80RS9CbnBXWGsrRFJZcGFQbWZGcGtNNGhhd1UxOVJGV2c5STN6WkdX?=
 =?utf-8?B?ZzJ5UjcwenZrQ1gzakJpKzI5V005SVhsMjQ3akJHQ3NkaG9CanBvL3lML1Zn?=
 =?utf-8?B?a3NoSUZ6R2VXZHRTd1RVdmEvNFR3Z0JaZjNIamJNOHdxV05pWStHNkxydDVD?=
 =?utf-8?B?MTlmRkl3L3ZHZFREOVh0YkhzeklnWmZFVjlPRGdMTFVGS3N1SE1rQjYyRnZ5?=
 =?utf-8?B?Zlg2QTE0REF4L0J1VXFCYWc4ZlFtWGxndDYrT2NSVVRvQXVGcDYvR2U1dkhC?=
 =?utf-8?B?ZnJxMjh6bENoVlI0Wjd4VVZQTUNEQ3JjYWxCTjVDbit0aCsxdlB4Mm9XTkti?=
 =?utf-8?B?YktxRzFka1ZRcTRCbHFaQ3hrYStNSVRiZXNLd1EvWEZhVG1RL0VvLzh0aUVq?=
 =?utf-8?B?a0lraUN3OU95ZmZUMFE2QWRBWEdyZ3M5NnRZeTQrWlArYWhSSEdMWW1yaTVu?=
 =?utf-8?B?MkZiM1hXYStaQ08vd1lXdE9PWWE5WEdWeVdjS0NLck5DSTllZkVxNXk0K3Ey?=
 =?utf-8?Q?ESPAslQiHzoDYrZfRa?=
X-Exchange-RoutingPolicyChecked:
	gLckJkTRr5XyS/jRKPJpO+pHkDQTrtgm+eaxgSTiHSxVlG7qv1+CxcWrNe6iKK6HRAG8TwrmNdHi0xxSBe0J5242Pjd7rbMTvgHBCC5TxAXrK5/MXM+FjEAXrkiTGO7f9BtDyr1xyou+/WfmarT9luZItVKe2MuDwVGHxwmKYsi4nQ01zBjZO18Iq5J9+RYAYmmGW1hy4NJUYVGFigmYALlpn5Ikf9p3Jml2Rj0vMV52bkgfzR7Y671aIBmkvz4wlcdxKGr9a0XWWO9ui9mIwMGjsBTWQxKogpsfVnq6lHv9SrcvPQLra+fYh++CAwEWfKFIH9Icoc1RUcHp8m/S7Q==
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: ada4cbf2-1b4c-4124-93fc-08de853b3abd
X-MS-Exchange-CrossTenant-AuthSource: BY3PR06MB8195.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Mar 2026 22:10:56.9583
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1usfdt7091zMH9QXo17ZficA+77RPDmJXXBq01wBNK9rtHOsMOzWt24rkWN9Rh2P
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR06MB8955
X-Proofpoint-ORIG-GUID: 8Y_3K-BjmWl0c-0tkvoRCl-phuYhauVP
X-Proofpoint-GUID: 8Y_3K-BjmWl0c-0tkvoRCl-phuYhauVP
X-Authority-Analysis: v=2.4 cv=bblmkePB c=1 sm=1 tr=0 ts=69bb22f2 cx=c_pps
 a=gE6CMw9pMCRGQsgsFAL45Q==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=lre9DRYkaIEA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=ZyELlZqCvD1aXIDzc3I-:22 a=88-R7LcPEwPXXGSWJaMA:22
 a=DyznqomoAAAA:8 a=Ig4kr18IZQ3OA-takJEA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE4MDE5MSBTYWx0ZWRfX5VQsvmT3wciU
 M/2jdTc9GKJo2LKZN+tCO1hz3/gCdPVu1vIWeMof6UW23twNuxt8P5NfOP8CzVfX91gHZzkLBjN
 XBc18kjMKmZ9yOh1Pc50dY+xXELwYyU0nwRNl6fXtqSOJVXJVtwPSPKj20oHSNXK++n1LzjblKN
 rFGTEW7AZBzI0J18c+tV7Kf/EqX27u2PtIv8L1jDBTc1D26r64zQ7LrnRkrcBfQRR8uLc89H24u
 n4D1HksKBXSNSvv3OjyWOsuDmzwq4FnG90ObqlIwXIziHm+3V8pNPm5uBDz6Vo1Z9sevoSaNqYa
 06q3PmLPISJjt7lWjs4KnK4QaOVGMm2ACywHuOayaYR+tUsxcSOkFOWpOHeqEK255AZBRgwPJKp
 vn1+cjYjJ9gYlkvVDXuI50AiXmnaKZcYuckovw5MLlzdjxLgt2OY+Aok3kn/5JZ/vX4I0zzOjKa
 z1OpSZ3XsjPtmlcvhyQ==
X-Wisc_ValidFrom: true
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-18_01,2026-03-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 adultscore=0 suspectscore=0 malwarescore=0
 lowpriorityscore=0 spamscore=0 phishscore=0 bulkscore=0 clxscore=1011
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2603050001
 definitions=main-2603180191
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5
X-Spamd-Result: default: False [-1.89 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[math.wisc.edu,quarantine];
	R_DKIM_ALLOW(-0.20)[math.wisc.edu:s=selector2];
	MAILLIST(-0.18)[generic];
	RCVD_NO_TLS_LAST(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:5645, ipnet:206.248.128.0/18, country:CA];
	R_SPF_NA(0.00)[no SPF record];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[speakup];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jheim@math.wisc.edu,speakup@linux-speakup.org];
	FROM_HAS_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[math.wisc.edu:dkim,math.wisc.edu:mid];
	DKIM_TRACE(0.00)[math.wisc.edu:+];
	RCPT_COUNT_TWO(0.00)[2];
	TAGGED_FROM(0.00)[bounces-1566-lists,speakup=lfdr.de];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 8772C2C3459
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

It's all on the page on my web site:

https://people.math.wisc.edu/~jheim/RPITalk/



On 3/18/26 2:32 PM, Mike Ray wrote:
>
>
> John
>
> Is it interruptible? And is there a speech-dispatcher driver for it? 
> Does it simulate an existing hardware synth such as the DECTalk, or 
> another one?
>
> Mike
>
>
>
>
> On 18/03/2026 18:29, John G. Heim wrote:
>> Okay, I've mostly wrapped up development of my Raspberry Pi hardware 
>> speech synth project. From now on, it will be upgrades or maintenance 
>> releases. Instructions for building a device can be found here:
>>
>> https://people.math.wisc.edu/~jheim/RPITalk/
>> The biggest thing yet to be done is to get my  package into the 
>> Debian archive so it will get into Raspberry Pi OS. That doesn't 
>> depend on me though. I've already taken the steps I need to take to 
>> get my package into Debian but I haven't heard back from Debian yet. 
>> In the mean time, I set up  a Debian  repository on my own space at 
>> the University Of Wisconsin. Installation can be done easily via 
>> aptif you add my repository to your system.
>>
>> I've tested this  on  a Raspberry Pi Zero, a Pi 4, and even on a 
>> Linux laptop. I've used both an OTG (gadget) port with a plain USB 
>> cable and a regular USB port with a USB-serial converter. In other 
>> words, with this package, you can use any machine running Linux as a 
>> hardware speech synth. You could take an old Windows laptop, install 
>> Debian on it, and use that as a hardware speech synth. But I am 
>> guessing most people are going to want to use a Raspberry Pi or 
>> similar device.
>>
>>
>>
>>
>
>

