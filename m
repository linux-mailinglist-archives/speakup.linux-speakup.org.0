Return-Path: <speakup+bounces-1579-lists+speakup=lfdr.de@linux-speakup.org>
Delivered-To: lists+speakup@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WHZXKgHV02nGmgcAu9opvQ
	(envelope-from <speakup+bounces-1579-lists+speakup=lfdr.de@linux-speakup.org>)
	for <lists+speakup@lfdr.de>; Mon, 06 Apr 2026 17:45:05 +0200
X-Original-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 5A9063A4DCF
	for <lists+speakup@lfdr.de>; Mon, 06 Apr 2026 17:45:04 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=math.wisc.edu header.i=@math.wisc.edu header.a=rsa-sha256 header.s=selector2 header.b=P2y8BnY2;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 4A60338272F; Mon, 06 Apr 2026 11:45:03 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 26187381854
	for <lists+speakup@lfdr.de>; Mon, 06 Apr 2026 11:45:03 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id CE386381854; Mon, 06 Apr 2026 11:44:56 -0400 (EDT)
Received: from mx0a-007b0c01.pphosted.com (mx0a-007b0c01.pphosted.com [205.220.165.71])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 66B72381832
	for <speakup@linux-speakup.org>; Mon, 06 Apr 2026 11:44:56 -0400 (EDT)
Received: from pps.filterd (m0316036.ppops.net [127.0.0.1])
	by mx0a-007b0c01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 636FU8Ag3892819
	for <speakup@linux-speakup.org>; Mon, 6 Apr 2026 10:44:52 -0500
Received: from ch5pr02cu005.outbound.protection.outlook.com (mail-northcentralusazon11012015.outbound.protection.outlook.com [40.107.200.15])
	by mx0a-007b0c01.pphosted.com (PPS) with ESMTPS id 4dcfhdg58d-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT)
	for <speakup@linux-speakup.org>; Mon, 06 Apr 2026 10:44:52 -0500 (CDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=myvL3yCWz6pX/UJ3bX7f3UaWz/3N6sgDLnFbEKClqlBdrv3dY+xcaJlVYCfGSuVc9u4+EmfzkwIevNnpb/kUilLwfc4tulFXBnWoJJs0QyKVXubwrS3HLGzASOWweQqd6Tj0QWS4Fey4OncPYyyHgjeLWiam5AY87BI4TbZlG9g/Xe2RLFa3kPATxBCWEBljmulbiSoUVsPWyU1aivsB2nlIA6mAgrhkqhyIzLJCss++NITNN3uLl5nsIz2TvHtjzr7mKvf4wEs2kfopIew9UOqfLgmeCWibjmOKnozrciUB2w9DV+a+4eC6nIVtWZdINTbcAs/Zk+yog3Sx1hHhsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bJVJZqKQeRCahsFRCJUt+swC6Isg7mKglHlEtE7fcDE=;
 b=clF/cZfjM3mUNj9hWR0BqVKQIHjplOzRbsnL7xPjve5IaNjyDi7aZgXxz5Jzo/W8ColXuTr26vs+VY4hWOW/seK2tVsYO+Ji3f41qP+FNBfPnLI+OiXZ/K1bXnYs4vDaOXNtM0z73Y1xsKbMdDE16sf5jB9HWk+CJcBVK9On88F/pzHPjwG/l8uKtsWtB6faU+bHnbaW41uwfhuYSTzV0HF7ePe1ePjKYnqUJ0wDXF8Caor+PovwVX8jKrT8U3SmD0btx3Se80BuhYRQzV6dOuGWZta0caOo/0+uvgE6sPr4EBwi/ZoBeUy6uBCbanRv5nuRfNScCUkCQIjG0Qh51g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none
 header.from=math.wisc.edu; dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=math.wisc.edu;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bJVJZqKQeRCahsFRCJUt+swC6Isg7mKglHlEtE7fcDE=;
 b=P2y8BnY2hR8PEihRRPTR2A93CZsUaiNTHzrWCOIl/SJfz2Ce9JlabQHdqardOfVw4HF1wxjX24AVSBfFcqRtDVHLZ8duLYI0Nu/241cyUhGWXrqx8BujJGPycnqMiDIwoLQXEpQP0SZ1jM7YW8HreZ8bw4K8bmkouGB4HGGrI0Sdgx4iH5u7g0wYLSJgsIAZEaPE5vUw9N9jMKYydbAaSbmLeSQIg7nmX+/uROussHUu32gZISxMxRHjoaaph2NMeEqz7Njg1WP2TiqXkpKePFCB1noxvK11Xzjmxk4Bovky3+cSdZut/aQHMyHzaH26nDOJ9gnB1Z0g45XxWKMakw==
Received: from BY3PR06MB8195.namprd06.prod.outlook.com (2603:10b6:a03:3ce::19)
 by BY1PR06MB10284.namprd06.prod.outlook.com (2603:10b6:a03:5bf::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.17; Mon, 6 Apr
 2026 15:44:50 +0000
Received: from BY3PR06MB8195.namprd06.prod.outlook.com
 ([fe80::a7ad:fb62:4389:fd8b]) by BY3PR06MB8195.namprd06.prod.outlook.com
 ([fe80::a7ad:fb62:4389:fd8b%4]) with mapi id 15.20.9769.017; Mon, 6 Apr 2026
 15:44:50 +0000
Message-ID: <6cfbf1a1-34d0-47cb-99e7-d1797005d7d9@math.wisc.edu>
Date: Mon, 6 Apr 2026 10:44:48 -0500
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
From: "John G. Heim" <jheim@math.wisc.edu>
Subject: Rewriting docs: Configuration howto
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: CH0P220CA0006.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:610:ef::27) To BY3PR06MB8195.namprd06.prod.outlook.com
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
X-MS-TrafficTypeDiagnostic: BY3PR06MB8195:EE_|BY1PR06MB10284:EE_
X-MS-Office365-Filtering-Correlation-Id: 1079de06-52b3-4729-38c6-08de93f37001
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|366016|41320700013|376014|1800799024|786006|56012099003|18002099003;
X-Microsoft-Antispam-Message-Info:
	hiQzVkNBdSHQWP4B8HWgBNLqTQvGN7V55jXQIKMwdaMVhz8zocFCOQjZbebvSm48Wk2f1khKWU2d7ECjMHDqVGp4YGVSVO/hgPr8NlrVFWW8fshKaBgIC7Zidi1iln9pY+jA10xIGr4JADnXYfLaCb77c0pGwpjhKCAugRR8WX4M8DeCq/P5rDqpWAbJKtdvd9HY4mcshzl1eEJlGmxmxmJVS4NxJwleNdW0wzkUlMV0LadE1GATNofNMuUMTdKAyZww2PYoeRJzXuA9sY/cXWxjGcEJofAMnjl6GVDvsJ4KxdKtVsl7cb1P5gu4MwlJqGGDO63PnWDALaM5Koa2GT0EXP9E+2ln6mbFGIShemwCxI/+pUZ6QJjfH2LqCHHYPg2ktk6il3lSbEDS0g5V3bVbhR4s3pi68GmHggzhovBxQe8A+nXpNbosRFGn/CDqcyv0Bt+978wO4FQg/wh99b7Sf0KwDUCG/2ecSctXiwlpJA/nuvvLZSYeTSX3pUnL0HIAEToYDDvWJaTx3J/i7urxuwonvWJAiaYAVZRQlgDWHiVRiJZmkBTMjShee0oDvTQSPXD1UBQjlFjxJT27M/vfqlo61oN9oK29mxuA74V+ONhpsaoJu5DVIc3ylEK9HXmZfwJD0vggLGeT4NTSwll+DFIXI1UbFcxjLy2rxje8DjOXEMKwRmSz8HPe3i2UAMm4VjzrjaFBLXCGKus/58l99kOgPWaJbdhhvn/PHt8=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY3PR06MB8195.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(41320700013)(376014)(1800799024)(786006)(56012099003)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?RFpGYWlXdkwrMFdLeVYyeGNSR0pOckMrcExjWDVTdUNJWGpGbkRBcGgrT1hw?=
 =?utf-8?B?VnBRdUJJQXYwRTRGeGx5NWJVWWllcWY0RG5xWWROSlRRaFR3M3FFMUE3d1Yw?=
 =?utf-8?B?VDJnb1lnYzM3ajZYenhEYndBZE9WZndRV0hQS08vcTA4ZzNKQUIvZ29UMEov?=
 =?utf-8?B?Y0g3b3lhZWZsRUN4NjdQaDNZeHMxWWFUYWdzUThUSHk1QWpxUDU4Z0ZwRTVy?=
 =?utf-8?B?eHQ4bzZJcmRjMmFhVGZMNGxpRG80M0lLWEJWZXJnS2ZwSjdGQVBhOUhjaytR?=
 =?utf-8?B?dkdKME1jUEZoSGJBQkhJTFZuSlFkZ1VVZndaSG5SVFdBSWVVenBoeWp0ZzRB?=
 =?utf-8?B?VWVsZUlLY1ltakdlbzdqNFVBZWRueENEUFduSDlzQXA2anBBQnBJOHdDNzVI?=
 =?utf-8?B?ZkNvajVOUHc0V0JldWZsVUt5K25Xd0NqTmRUcUtlMnVrTzgxcEowQmRlZ1pm?=
 =?utf-8?B?WFJkSkNyWmhTZ3p3Q0RkclVpSXc3aVhTb3IrSVFPSldRTy9oOWg3R1dZSXVn?=
 =?utf-8?B?RG9qcWdoalVINFJDYmlZRTZVZkJ6alFYT3FTYlFaaWJaUlRrVzVyZHhJSmNT?=
 =?utf-8?B?WkNVbUFnejQ1aXh1OXR3U0gxTmJzeXhXaFJBT1ZMTWNsVlRuRGFwSVNjS0Jq?=
 =?utf-8?B?c3pHeEpjaTNLT0hPTkFZcnFCZ2FCN1ZJcENNdndlNHVVelo5KzNsaEFvZ1ls?=
 =?utf-8?B?REJaZFB0c0hBbTVFRjZ0S1d0Qno5Vm9oOVYzVThQeWFBcndiZHJmVkQwaVdB?=
 =?utf-8?B?bDZXbmVMNyt3SzdoUU1RbUpCeno2UU5iWDNiYlpQZ3BuTnMxRHhmSFZKWlpx?=
 =?utf-8?B?eVJkdU5DYitIcXplYVNGdUFiSzhWbnorSWRwZlRGcWNPUHlvU3dFa2J5Sm9S?=
 =?utf-8?B?U1oyQWJiMnVxNTRUVEdBVjAvRkVURjdZeXRidXJ3RmRJcjJpak1CdVZ5a3Yv?=
 =?utf-8?B?L1gyWjRGRy9xMXlzMXptNEtxdmFyR3JibXN5ZThLbjcwV1piZjdTNUs3anFG?=
 =?utf-8?B?Sm9hVU15cSthdnFjd3NBbW15Qm9HL1dqbkR5VGU5SDRsMTdlWUNoQVdLR0Zo?=
 =?utf-8?B?RjNDRXhyeWg0NlE4UnVmMy9EN1pFb09mdEMzb093c0F3bDFMVXpvVk5VVWFh?=
 =?utf-8?B?a2xxbFVzWWh0ejlPYmp5eHNyRVlwbkFHalFzYjB0aWVmRTZpNzdhMyttbU5F?=
 =?utf-8?B?UXBHUUsxcjdHUUVkcUhabmp2dVlBb28yMjVGQ3hWaEFua1luekRjWWhkbEtm?=
 =?utf-8?B?dGcrRWhibzdtb0tqdVhYVzJkdSt3Vmcwc1VveG1Kdmdsb050dXhaN3I4VWxp?=
 =?utf-8?B?cTEyVEZYSi9QV3YrdmR3WXlxeFVBS2JHU210STR6RVhTN2pqL3NacnBtN1Fj?=
 =?utf-8?B?Vmd2Y0F5SG5FbURmRUNMWWhiS2dIQTVaTWtEaERHL0ZKbWp3aVVnMUVHRXpx?=
 =?utf-8?B?UFU5VDlXcUxWdURlTDVXRHdlMUQ5aXAyQkJNTFhkUEt5eFJTbmo2YmxOWmlQ?=
 =?utf-8?B?d1FqNFRPb0VXUnRqOU9BdWxYNVd4VmlyLzlpc0VwdDBPQnhSTGJmVEx6OGEy?=
 =?utf-8?B?UDZ1cUFyaDI3NVVWeVBpZEVpTDczSGdoM2dSMmNJWk5qSUczNkRSSkxBZnFW?=
 =?utf-8?B?YUplVXZaYVk3RlF6eFUySDdBaG9jaHYva1F4U1I1b3kvR1hweVM3ZFJFTk8y?=
 =?utf-8?B?bzVpQVRzYzNJS2o1OWNXVGNOdjdTSG12L3hwVStSMzdkSWxBbUhpTDFxVGwv?=
 =?utf-8?B?dVE4RDVRcy9uaTNSL2FpanVzR1VDL283RER4bXVwRFNPZGtFS3hCNWJoYjI3?=
 =?utf-8?B?RlkvNWdNeHVJb0ZGUHVOcWJoZVlVaU1rQVFXWlNzQlhsc0hTWGxTamlUc2RS?=
 =?utf-8?B?by9FRmppcXVSNGYyVUsrekNiY1JWTzJUOHVsazlUaGVyYktZS1RzbmpGK1pI?=
 =?utf-8?B?ZHZVK29rUllWeWQ0VmNmY0h5dkxET04rKzB5Q0t5cWh5WkZqUDdXNWF0NXFV?=
 =?utf-8?B?RFpJbUlSbjEwMWFaNXZwTTVVbjJxT2tCMjBYTVF3dmJBV1pCSTExS015eUhS?=
 =?utf-8?B?Y3NhNG4vY3pHZm1YcUZjVXJsRnRjL2lUTS9kL1RxMzdjYzFXMFpRRFY0bzJ0?=
 =?utf-8?B?Z052b0ZMblUyZTI5aGszaVFZMlVrbHh3MFM2Sk43V1RFMmlDMGFTMndoOG1R?=
 =?utf-8?B?VDlwRGhoaXh0cmdoek9hSkVxSlRYMnlUL2V0bHREMmx2YkJ4VnJhQVUrTjFu?=
 =?utf-8?B?d3ZJYXhqaE5DNWV5UFg1RlVKWlMxUThJamlGWUlBVzRlNGlCRXBqMVVCbWQ4?=
 =?utf-8?Q?UoHr5AxYEbFlcc1Xx6?=
X-Exchange-RoutingPolicyChecked:
	h0Ld5qUka+lcBGiz2trCqEDglZTdpPUAyY/d2a8xsFjCd8SfZmLygND9xd1QJSk3KX1BeeIGNU+ipcTasNMprwhGDQfqotNrK0g3gXB6FAV0u6hqworbiDYNEuc95nYjJBii4cFz1pm8jpgnEI8bfx+bQNRY+ZLUAWikeXlFxbKV7gJjC41JBifKqigwIjM7v1zYrKYK+XM0CdP9z40KVI8m+a9sMvBbNIYJ/QwSRaM8qZZ5VGNVkh0h8Fg0qbUmQaXiyoL6TjbnfBDT4eQfYRaDbQXHVScnHJiAbgP09D/6ztrBAbPVl47YYrcDhGLSA4w5Kw7EaXLEKrHu8RvdFQ==
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: 1079de06-52b3-4729-38c6-08de93f37001
X-MS-Exchange-CrossTenant-AuthSource: BY3PR06MB8195.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Apr 2026 15:44:50.3773
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ddoYJgAz/iwOvoHzxAt0necAmUAXOvAdWzQdjd3lWYU2Od0QMLbW6JRJnFx8MvUs
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR06MB10284
X-Proofpoint-GUID: ef6S1J-6EckyH5rQxvE6_JXce0EblDIi
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDA2MDE1NSBTYWx0ZWRfX5yEk0yAhPwJs
 IJQyzH095gZ2TzU2U4gzFLUuzN91NM/yINrsgNdrbpbDukhMGECCilB7vQSbnyjTZ79MHEhKt/y
 eOl8k5vVslscL+VCqWZ79r32X5Wq1G72VPwtVXt2Pcevidm2O8B/PvT5sBv7AvNKdjofayCo523
 KRDGOVfYPn1CeKK/7VpIaePlpKzMm7cecQSgJVgk8Qe9CkitzwBCbbAnh0G1Z3Q7vE2u/6WB6hY
 WKouOmTLPVCLG4nKQFy0QRnZXPjcavCGW8yS7R3w3W/OzFsdZLQguHI0ZprmXTph9PaX6qJosbp
 nfftZHQPjcaiN3aP/aEu1Au6q3mCaxAIgua3vifCEraEuvtn2cdBPKbzfJpKA+Jkrh9wBiXZuU2
 H+FHPO5i4xgqbM1vaKea3Ds8YFh/6wLgv+fX3aSEZGxOJY7TTEyL2VGm7pLvfLPGIOc+M8pEP21
 grZ7XU0iYdETNC7fFXQ==
X-Authority-Analysis: v=2.4 cv=FJgWBuos c=1 sm=1 tr=0 ts=69d3d4f4 cx=c_pps
 a=CD2IJdD5qp8L8UJuiUkm2w==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=A5OVakUREuEA:10 a=lre9DRYkaIEA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=ZyELlZqCvD1aXIDzc3I-:22 a=zWdwx1QEt1O6EIhiA0sP:22
 a=4EzaGfiJVA3tpngjorwA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
X-Proofpoint-ORIG-GUID: ef6S1J-6EckyH5rQxvE6_JXce0EblDIi
X-Wisc_ValidFrom: true
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-06_03,2026-04-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 adultscore=0 malwarescore=0 impostorscore=0
 spamscore=0 priorityscore=1501 bulkscore=0 suspectscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2604060155
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
	RCPT_COUNT_ONE(0.00)[1];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[speakup];
	R_SPF_NA(0.00)[no SPF record];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jheim@math.wisc.edu,speakup@linux-speakup.org];
	FROM_HAS_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[math.wisc.edu:dkim,math.wisc.edu:mid];
	DKIM_TRACE(0.00)[math.wisc.edu:+];
	TO_DN_ALL(0.00)[];
	TAGGED_FROM(0.00)[bounces-1579-lists,speakup=lfdr.de];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 5A9063A4DCF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

I figure I'll write one document on how to setup and/or configure 
Speakup (a howto) and another on how to use it (user's guide). Below is 
the outline I put together for the configuration  howto:


1. Configure Speakup with a software speech synthesizer
1.1 espeakup
1.2  speechd-up
2. Configure Speakup with a hardware speech synthesizer
2.1 Using modprobe
2.1.1 List of supported hardware synths
2.1.2 Kernel module parameters
2.2 Using initramfs (serial synths only)
2.3 Using udev rules (USB synths only)
2.4 Via custom kernel (serial synths only)
3. Changing settings on the fly


Anything else I need to cover in the configuration guide?



