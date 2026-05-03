Return-Path: <speakup+bounces-1598-lists+speakup=lfdr.de@linux-speakup.org>
Delivered-To: lists+speakup@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qASUHoiZ92n0jQIAu9opvQ
	(envelope-from <speakup+bounces-1598-lists+speakup=lfdr.de@linux-speakup.org>)
	for <lists+speakup@lfdr.de>; Sun, 03 May 2026 20:52:56 +0200
X-Original-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 8CF244B70BF
	for <lists+speakup@lfdr.de>; Sun, 03 May 2026 20:52:55 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=math.wisc.edu header.i=@math.wisc.edu header.a=rsa-sha256 header.s=selector1 header.b=pNsXzd8N;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 9C34B382BA4; Sun, 03 May 2026 14:45:02 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 7A5633817DF
	for <lists+speakup@lfdr.de>; Sun, 03 May 2026 14:45:02 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 3E571382ADF; Sun, 03 May 2026 14:44:56 -0400 (EDT)
Received: from mx0a-007b0c01.pphosted.com (mx0a-007b0c01.pphosted.com [205.220.165.71])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 5E1983817DF
	for <speakup@linux-speakup.org>; Sun, 03 May 2026 14:44:54 -0400 (EDT)
Received: from pps.filterd (m0316038.ppops.net [127.0.0.1])
	by mx0a-007b0c01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 643He1qU1855128
	for <speakup@linux-speakup.org>; Sun, 3 May 2026 13:44:52 -0500
Received: from ph0pr06cu001.outbound.protection.outlook.com (mail-westus3azon11011065.outbound.protection.outlook.com [40.107.208.65])
	by mx0a-007b0c01.pphosted.com (PPS) with ESMTPS id 4dx3s29vse-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT)
	for <speakup@linux-speakup.org>; Sun, 03 May 2026 13:44:52 -0500 (CDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xM6DNJtNxSMaT83v2TYNhriZM+4IGPr2poKleaQftGiGpdmmqU029/gwz8Qv62/WpV47LuDiXkLW26DFoTsEpasfQTNnh/79YHxc4L7hBTxtcl5Uv9+QxQGkOdTXNzqQcyuMyAfeIVQTA0SzGGfxlSyrtHIemHpsKdINeFhcR2Pm8tUB+sBNTSC7sIuC8X3Yhl630tE9D0nWlsFkwukARKHpKV02vW3ztHy58X4fgXfac96GoG6dr8j0uJg0MLakRuuhkddUtCmy1FWdizMKnoE0PO0EQqMvbEiE1Na1blGLHQtGMKiEfKS7bi39omrcieA8/Jtdgs6cvOu+6uJdvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pp3NVuJVCH7GlW7cTIjY+hzfaOKRtHsEndt37s9+xTM=;
 b=xaQ6jB6I4V/P5K6u7afAPFuvL8GfVWD4KVS+YqVTOvlk6EcRGgfOqhRI/Xg5A1BL6s89XzRXO/c/0r9NUnHi16gyqAJRECLJdhAJlSFfay2A70Nk50aRrmbfcCCLh0+tVYUegTrSnRiYilr0qSdK1VxOQ60QPPTmQ7RYCAjJBHenil5cvC6kx29ZhNhSmkInUP6dtC+pCXIJ8fhVo4LdOQ3taq3c2hyC/V/b1W87+pLwRWwyOHsYKqA46ycbZ25LrJSQxMbQzr9DxCTz1mx0H68S08yMYOC4OD7ZIY7IOE3LIlN8V/uAOPHa4ob9OdI2AlNeIU746ha3sm7kKFlo4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none
 header.from=math.wisc.edu; dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=math.wisc.edu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pp3NVuJVCH7GlW7cTIjY+hzfaOKRtHsEndt37s9+xTM=;
 b=pNsXzd8NmNn0o4mVKKYPlWPR/fPWRL3HtiqgTr9XwohVPwO4vatHX1yGd1ItlqjqlTNg4h9bcIijDMAa2BEQIE1jC6Rh3t3aoiKcULFOiO4bc0TmJxrZAXHMqQw9a41K0/kwrkjg/dMfZBZeDs2WNL70ZAQMMzu5Hu1P/XALZzb0L6yXJZ1asus6n9ymp6ptSlinb8pn7xQ0DtzMXckyiy5rEzeFGngPV2HZ0v9fo9vOaR1kIKvLH1tWHywgGRRoP0sIlr1+9MJCGNPuh+8E1+aM/uZF76LEod+GQX0gRAqoLMxqkvwi0c5e3uhAQN+A+nKp4u57VqQARlFr9ZSElQ==
Received: from BY3PR06MB8195.namprd06.prod.outlook.com (2603:10b6:a03:3ce::19)
 by CO6PR06MB7106.namprd06.prod.outlook.com (2603:10b6:5:34f::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.25; Sun, 3 May
 2026 18:44:51 +0000
Received: from BY3PR06MB8195.namprd06.prod.outlook.com
 ([fe80::a7ad:fb62:4389:fd8b]) by BY3PR06MB8195.namprd06.prod.outlook.com
 ([fe80::a7ad:fb62:4389:fd8b%4]) with mapi id 15.20.9870.023; Sun, 3 May 2026
 18:44:50 +0000
Message-ID: <7af7d343-7a09-48f5-9865-5697409a98e1@math.wisc.edu>
Date: Sun, 3 May 2026 13:44:47 -0500
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
From: "John G. Heim" <jheim@math.wisc.edu>
Subject: Creating a bootable CD that automatically loads/runs Speakup
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: CH2PR04CA0007.namprd04.prod.outlook.com
 (2603:10b6:610:52::17) To BY3PR06MB8195.namprd06.prod.outlook.com
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
X-MS-TrafficTypeDiagnostic: BY3PR06MB8195:EE_|CO6PR06MB7106:EE_
X-MS-Office365-Filtering-Correlation-Id: 0cf014e1-bbf8-4485-5161-08dea9440dc3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|366016|1800799024|786006|41320700013|376014|56012099003|18002099003;
X-Microsoft-Antispam-Message-Info:
	7raABH72joGbKpAOo4M+DiDKXg32z9jfeW/K9hnKS8Q/Pma6fBuP+oJWNn7+kgDzG4zjmXf85/QeKMQA2ckAHqEhfg7I2gyOR7iTA2VmyTmDmVD/jNM+CZ/WyUGIA0umACTN3PoigpBtZBa/7Orf7UoYpk3cjhFgMyqc1sWr2Jl+E4Std3CVFvVOjX4fklpfduOla8VhJdxyrXtBBIQ4HeGNpxdpB/Fy8Ea+Bq7DuSmVrMh6JWUMJtWxt26MpB69ODvyRBEV2zHLQPDEg1mIz+Uzy9RVQPYccE/53oU+2hJTeKafaUPSmDBnIsk/xfnVyfxyTstuNCf5hoTc3qr7Mk3hQKffDNtS/mrzBXLaBVQD9YZeYR3ve6gyigDV7ccR9s/9W9Ve1EmOhWejLie5ljgHwFMW4oYE8+TWnAvht7GmhkMhirBnQC7fzsaXpSLp3sABebveCkdi3dmBTKIC4XpszjDM6JcOkFi4eoG+pW1g/55mFQUjx6/A9KHiEVvl9kK9kfNCU0p/WjLRk/ps77pf5Sp4Klm448fwoUQZwQ20IO1z01R5ulE3cfBZXZZ3PlIBMBzUipBibzYKuanMAMie+s2q566yo4b9jiDix+I+HQSjFe+AeHD+QvS9r8NKm3Hzmzw0eyLAcRzIatDMa6qn0DpfR6WhL+cQHMZbXyb2d2sFDn3vEAiQaIyss05x
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY3PR06MB8195.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(786006)(41320700013)(376014)(56012099003)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?bHBmT1QrZkcwRmdUR0JmUnViOFNNcFQzbmZ1dzBCRDVLaitsVXRyV2dIdVB6?=
 =?utf-8?B?NWllVkNjS2JJdVVXaDVhTUg3T05BUHdQWS9TRWo0Nm1SY3M1bFpMTFBKNVVa?=
 =?utf-8?B?U0ZsTzZORXdqbzEzUGUvOEcvZDZwOG1XUVJkZXYxRFpYSHpCblZvWmdpYjR6?=
 =?utf-8?B?bkZEbi9BaTlNcWVwTStjdWFwc0prUnJxL3JJaW44WVlSc3lWdGNPRTJGNFBG?=
 =?utf-8?B?cXFqbzV5VjAxdmRtaUZlVjNveWlZOWlRektPTStMMDJKL0FvOWlJZWtOUTE4?=
 =?utf-8?B?R3BXMjlwYk5SQTBSNlFqbzFlbi94T3ZtMFpJWVU1cmZLZjZjOGJ0MWRJUTJa?=
 =?utf-8?B?K3VCK0RQZTBQUFNpMEJEcEt5SU9WeHhYVDUrSEZYTmF6RUVNQkdLVVp6L3p4?=
 =?utf-8?B?Z09GaTV0WFRuOVFheURIdURuK0xnVmRBNzEwY0NBYlVEYVdtdVI1N0gxcE04?=
 =?utf-8?B?YnVkL0tmRDRyOWFVbjRVRFBNNStkMzdCb0dHNklwaTBnb3BPTUR3SzlLd000?=
 =?utf-8?B?ZDJ4SmU2NXlPazBOWmFQbisrWVlLMzQ4T3ptMHd4R01yMkZiNEVHL2dETlYx?=
 =?utf-8?B?WUxWQ1BRbTEyMjRIamNPbjlCR1JhbHFIcGZhcjJ3eFp2RXFEbjZuVVpPVU5U?=
 =?utf-8?B?dlJUaU5jMmp4VUFoWnRQcWxmSklIc2w1WlZmanhwVk44ZEFKaW9UMW80cU4r?=
 =?utf-8?B?eFFjMXc4bzR4WUdQbGRjaE9QNnQ0YS9ieFpxT3VOTFBXSktSdnljWW5Db1BV?=
 =?utf-8?B?c0NtdXdPZW9xQjdjQ1JBL3hDczVrcitXVTQ0QVpjZHB6bURJQ2RWc1BaZ0Yv?=
 =?utf-8?B?QmxEMnJIdEt6em1NbnJqakR6cFNxc1JxSm5VYTQ4eGJKbEtTUnd4TnBkcFE4?=
 =?utf-8?B?NW1lMEhWRVpGSnhMak5OdW42eWk3K0VGK3NBMEdQZ3FBakdaS3pxNWJSRjhC?=
 =?utf-8?B?OXhST3YyUHBJVkVpckl0RkdLa2FraHpvQlBTMmJac25SVHlGT2V2bXFEQmxL?=
 =?utf-8?B?WVFvZkRrdEY3VUdpUTdUWWUzcVQ0VFlBanN3RGcweGc4RHQwZytOT2FSRUJ5?=
 =?utf-8?B?UGNmMmw3Si96QVBndGdEQ2JYY2RzQnJHU092eW96eFJLYXRkK2hBNnNaWndZ?=
 =?utf-8?B?ZVdQUXdHU2dZN0RvaGh6dHJwQ25aeXN3Mnlja3Vjb0ZsSHNsQ3dHR3MrQUhU?=
 =?utf-8?B?QzEzVlYyWU1GMUxGcnNqVmtOVk05SzIvSkxpZGh1dk1YSXMrVm91Z1ozaHlo?=
 =?utf-8?B?UVo4Y0xWOGNkTlNValY3cnl0d3hzQ3AzUnFkNThhWk9rSG5sdlJDcWR1Nis3?=
 =?utf-8?B?NUpYaUVXSjEwVS9uaDlzWkdoTm9XdTYrREU1Z0kyZmUzcHdqKy9xRHYwZzk2?=
 =?utf-8?B?WXRXNnJGdVhjTklKS0MxNm5GK2ovb3dUMml2K1NSWGRvVThJb0FVOXNWRVIr?=
 =?utf-8?B?N3pZYXRqUnFuZytWR2p3dm5oLzBvV3RieUE2dkU5b0hYWThwODNKUHhJcFJz?=
 =?utf-8?B?TjB4K3hCVHAyVGtCMDE4Ri9nQ0l4THVOd3I5ZnJqR3FMdkNTbmdHMzZkRnYy?=
 =?utf-8?B?WGQvVTlFRGNTTVg2S214UXQxQm8zQTVIZDVXVE1aQzN4NHlFVWI5UDVlWHpJ?=
 =?utf-8?B?OUR6eFRveFBYNU96Z1FndXN0azdXOUxLdFdaWDh6dUliUVE1RElYMVVhS3RV?=
 =?utf-8?B?MU5MQ1Q2aUJzWDdWTm1ReDFlVTFMWUhxaUl3SG42N1U1Ky9UM1pFR2hjUmxt?=
 =?utf-8?B?R2x5YmFrRldGZWhqaXVFb09yMUtpY0dTZWlGeVovVDVObzlDVVZGQTRqU3pJ?=
 =?utf-8?B?VGo4Tks1Rzc1VjQrY1BJUDJGT0Y2TFBqeTRpR2JBT292QmlXQ1dReXhwYld4?=
 =?utf-8?B?a1E1SitCdGJ0WFNudVliYXcwRG9MNXVFUDlKc2VzY3YySlUrYnJUdHhvd3l3?=
 =?utf-8?B?RWpGMUlRbkJhWStyVWhIakFFTXlsWTd4SVZWb0tUS2xxcHBkUVBLMW1CM1RM?=
 =?utf-8?B?UUNob0RwVVJYZzVqNWIyL2FKUTNpb1kxeDgzOGZCWXRJcDVtL2JzWTQ2N3pk?=
 =?utf-8?B?R0ZNSDVLN2c5WGQrUnVCdFVIZGxjOGY3cGRWb1N1Ky9YMVU1S0hXT3l0MnVZ?=
 =?utf-8?B?Zll2MzJMUFBsWEQ0MkRVazJDZmdyYzhhUkZFVjR6dDZPMytsZDZrZ1NyLzN4?=
 =?utf-8?B?L2FFSzRmN3FLZHRwQ2VRYmwyVmV0TDN0QURZZmNzY0UwZDU1cnRWM3NIQitL?=
 =?utf-8?B?enNtU1JkNXRwR0dHWWsrRC9XdWNoSjhXM1dnbnZIaTR4RWN6ZFlxa2NKUWMw?=
 =?utf-8?Q?NPP3uO3voDF59SDB1I?=
X-Exchange-RoutingPolicyChecked:
	bXgSBKgHMEiJ3GnpOq8H55Bp+1WRRJ8IvnkZDNyz/rEuztXm8ihiEWy2yZ4yXQfX3Lk5EcH4pfp78NkvU05OnZVzSKd8ArNH+rgLrPB9SRxsnFXe91NxuOAdXE8WANP5MAhOrQHxtdaRrgQ8Nwj42ZKMBt1+fs+t54Q/Q19edN2TywZAf3FJjFajNVrva5RILg2JBakVl6MpSBdCoMyRhCQ0ihVUOBs1Pj10Jgiux4dM4Xejhrj6qC6dOavzumNIIu2xhfadKJneY3x4SSS/It8cfWq4N/z6nvnvl2xotE8RgSvTiU+ScOC82CIzbIv9ayhZSM603mDyigfTbooWUQ==
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: 0cf014e1-bbf8-4485-5161-08dea9440dc3
X-MS-Exchange-CrossTenant-AuthSource: BY3PR06MB8195.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 May 2026 18:44:50.4835
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ADnKX6yWtt34HuJ2Co34KTJKxT+AnaWWrXpI36IBgx+Ab6AzjYa+lkWemF78o6pa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR06MB7106
X-Proofpoint-GUID: CbKU1tUUDSEtOBnTjcON0ueSg8nHaodp
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTAzMDIxMSBTYWx0ZWRfX9uXyDlBUUG0F
 dToYdFhKyeZnZlVXs7s2KFb1sHVqjU/u68aLokgeeea+7GcMSM+T4ZfLl0FmzE484kaTeq4x/Vm
 zHBK5iAQgYxvC/XWF99hp5OQ1j0HYH5TSfv2PlrWForlT3vEt59IEhnwiRr/zn1rn6OP/weyjmQ
 cWsVt/CW/AKiFk2wLH5RsMSH+ucL1DyCxJrgIBldRV5qzybsogjb0gJCMOPYi/AuUUJEOX87Xvd
 KIi6c7mA398rZpezIN3eRpyrp294dSa1PwUQvMQa6dtKiD6EZjS+LIvOvZ061Xh7y3u0HmRhgmw
 u/bwSsQUJFCeBh2zcB5KMlTn2rygTZFPMAKOgIg67WnvE4H3yZfZqWZkw286f12rlwLTUXRYwGm
 HUV0naiYosq7qaCHWWQbEYciX540/IpCMJbvWAYe2EI6npMWRhlqIxEN8TxmKE3fY5EDePLxAEW
 PI5wvEkm9T4KFwuqkcA==
X-Authority-Analysis: v=2.4 cv=XrHK/1F9 c=1 sm=1 tr=0 ts=69f797a4 cx=c_pps
 a=qx7sgmNqCaiUqJuMW1Xodg==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=lre9DRYkaIEA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=ZyELlZqCvD1aXIDzc3I-:22 a=8Xyu5n2RU-RuQlyQMiry:22
 a=pY9oCOvvTdRx0uTr8fgA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
X-Proofpoint-ORIG-GUID: CbKU1tUUDSEtOBnTjcON0ueSg8nHaodp
X-Wisc_ValidFrom: true
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-03_06,2026-04-30_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 bulkscore=0 adultscore=0 lowpriorityscore=0 malwarescore=0
 spamscore=0 clxscore=1015 phishscore=0 impostorscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604200000 definitions=main-2605030211
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5
X-Rspamd-Queue-Id: 8CF244B70BF
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
	NEURAL_HAM(-0.00)[-0.998];
	ASN(0.00)[asn:5645, ipnet:206.248.128.0/18, country:CA];
	RCPT_COUNT_ONE(0.00)[1];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[speakup];
	R_SPF_NA(0.00)[no SPF record];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jheim@math.wisc.edu,speakup@linux-speakup.org];
	FROM_HAS_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[befuddled.reisers.ca:helo,befuddled.reisers.ca:rdns];
	DKIM_TRACE(0.00)[math.wisc.edu:+];
	TO_DN_ALL(0.00)[];
	TAGGED_FROM(0.00)[bounces-1598-lists,speakup=lfdr.de];
	RCVD_COUNT_SEVEN(0.00)[8]

About a year ago, I posted on my web site at the University Of Wisconsin 
some Grml images that would start speech during boot. Turns out you  
don't need me to do this for you. It's easy to create a bootable ISO 
image that automatically  loads the Speakup module for your choice of 
hardware synth. All you need to  do is use the kernel parameter, 
modules-load,  that tells it to load a module and put that in your 
grml2usb or grml2iso command.

For example, to  create an ISO file  that will  load the Speakup driver 
for a LiteTalk synth, do this:

# grml2iso -b "modules-load=speakup_ltlk" -o 
grml-sml-ltlk-2026.04-amd64.iso grml-small-2026.04-amd64.iso
To create a bootable USB flash drive do this:

grml2usb --bootoptions="modules-load=speakup_ltlk" 
grml-full-2026.04-amd64.iso /dev/sdaX

In other words, if you have  a hardware synth (and  there is no reason 
you can't have one now), you can easily create a rescue image that gives 
you speech during boot. You  don't need  to guess when it's done booting 
or type in the  commands to start speech w/o feedback.

I haven't tried  it yet but I'll bet this  trick will also work if you  
configure it in your grub menu.  Change the /etc/default/grub file so 
the kernel parameters include modules-load=speakup_ltlk and it will boot 
with speech. I'm guessing. As I said,  I haven't tried  that yet. But 
the Grml stuff works. I have both  a USB drive and  a CD that start 
talking during boot via my RPItalk emulator.



