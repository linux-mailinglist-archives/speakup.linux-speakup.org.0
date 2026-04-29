Return-Path: <speakup+bounces-1597-lists+speakup=lfdr.de@linux-speakup.org>
Delivered-To: lists+speakup@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2uARO9mW8mk5swEAu9opvQ
	(envelope-from <speakup+bounces-1597-lists+speakup=lfdr.de@linux-speakup.org>)
	for <lists+speakup@lfdr.de>; Thu, 30 Apr 2026 01:40:09 +0200
X-Original-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 0007249B644
	for <lists+speakup@lfdr.de>; Thu, 30 Apr 2026 01:40:08 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=math.wisc.edu header.i=@math.wisc.edu header.a=rsa-sha256 header.s=selector1 header.b=O/Rp7wid;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id A0922382AEF; Wed, 29 Apr 2026 19:40:07 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 73982382AE1
	for <lists+speakup@lfdr.de>; Wed, 29 Apr 2026 19:40:07 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 048FC382AE6; Wed, 29 Apr 2026 19:40:01 -0400 (EDT)
Received: from mx0a-007b0c01.pphosted.com (mx0a-007b0c01.pphosted.com [205.220.165.71])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 8B2DC382A65
	for <speakup@linux-speakup.org>; Wed, 29 Apr 2026 19:40:00 -0400 (EDT)
Received: from pps.filterd (m0316039.ppops.net [127.0.0.1])
	by mx0a-007b0c01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 63TFPbFk3513647;
	Wed, 29 Apr 2026 18:39:55 -0500
Received: from dm1pr04cu001.outbound.protection.outlook.com (mail-centralusazon11010043.outbound.protection.outlook.com [52.101.61.43])
	by mx0a-007b0c01.pphosted.com (PPS) with ESMTPS id 4dummburyc-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Wed, 29 Apr 2026 18:39:55 -0500 (CDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dJGpl1GXEkbHWTNVvDXUnRkTMYXlmSfaSOESaUtTEBIHU5HIei6TVCuGdieETW0f4QR+cob+WLS0uj+dVFsQjdkZ+gafh2DGYMJ6y2vWHjleFRMimE12G8t61QX8N3Xi2tvYPO16HIXsaqdjvegu1yGMGDPVhte4+7yQiOSNSLqZyllZDutNlF0tb0PfbRkmvxACz6RmPtl3IoGXjI7sgxYpD0h1mlC95NNt5fQWUdXjqDDkmc2K/o+LogGnQRnmCWlJRZOG/2xW2WVZ6R3SybkWfqKb84UgYqpfLLojRVfSMcVZVX+1iJW5wzth6Sb2SkpoSTcxLKapV8qVsm7FAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=16OyJBfYbhpz/tEpX+h2FeZ6Qy+/RJW4kOtpJHjAxZ0=;
 b=j4KO+3I0+N9+guwsj1Ep9Ph1vHXSmpWN9Q+5DpFrcxSaF3tq0sp118PJQfDZ/WeCMSlz5Dd2fyMK+PuwAB2LQ7EXEDlgN9eqQ/cUIyUnj5pkO3HRWorPYFucJmqrx/D5pE4oqX7DAUAwvk1h1o8VQaLcbsEksLOpr6HO3THBn+Q7VOyd+gGC7tFOP8rvGKeqRsx/XJZdB9jUPrrse1vaTPtdCk2Qqkzunqu/pgxXJ/IHZJYOWsL5HWn8MzuoiM4DgMEGSreSLPHNITcDgg2P0V/QK9jdvj6mx9Ma6+iPY+Rtq90ixWbExvClOil0OSQ0IEY8gbE+Wv3B+FoxExCcpg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none
 header.from=math.wisc.edu; dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=math.wisc.edu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=16OyJBfYbhpz/tEpX+h2FeZ6Qy+/RJW4kOtpJHjAxZ0=;
 b=O/Rp7widtUaiu2+dKd549ydx/bNRt5pdCORcGzIcNF1fhUZeE+mpxNNLGqUGQMyRHIR6c78zd6WuxjoFhfCfmNhwMlliwI3U1MXLuz/Phjkd2iuRnr0XZzVM1zLM0bU3otw/ER+KBZm6ZpL3GBZd3hzDu9+J4wunQYip1vao2MkMjH+uonap/o7WYZvOiTnyrEIb1GxggttRz393UUdfjc1ERrPuK77ejs1D3XmOa4/W45R3iM7V9pMaCj9WmJM1OWIN+FG7CHxRT3yME0EsG0iL4eW4PX6ruRxml0XLzAGgOpI4+pOzHe4Da9ob9x6Qwig22hPZiax4SE44rErcmw==
Received: from BY3PR06MB8195.namprd06.prod.outlook.com (2603:10b6:a03:3ce::19)
 by BY1PR06MB9143.namprd06.prod.outlook.com (2603:10b6:a03:526::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.19; Wed, 29 Apr
 2026 23:39:52 +0000
Received: from BY3PR06MB8195.namprd06.prod.outlook.com
 ([fe80::a7ad:fb62:4389:fd8b]) by BY3PR06MB8195.namprd06.prod.outlook.com
 ([fe80::a7ad:fb62:4389:fd8b%4]) with mapi id 15.20.9870.020; Wed, 29 Apr 2026
 23:38:57 +0000
Message-ID: <66f71610-2d47-4734-8468-f5ae91c7f0c7@math.wisc.edu>
Date: Wed, 29 Apr 2026 18:38:55 -0500
User-Agent: Mozilla Thunderbird
Subject: Re: Update: Rewriting docs plus RPItalk
To: Chime Hart <chime@hubert-humphrey.com>
Cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <9a2d720d-2a18-4fea-825e-c1f45e905e74@math.wisc.edu>
 <2ffccb83-11a8-9d01-4a9b-6e6615b916cb@hubert-humphrey.com>
 <4c2f88bf-bac9-483e-897d-f59a55cfee6c@math.wisc.edu>
 <41d516f7-9409-e123-89fa-aed5964ac8d0@hubert-humphrey.com>
Content-Language: en-US
From: "John G. Heim" <jheim@math.wisc.edu>
In-Reply-To: <41d516f7-9409-e123-89fa-aed5964ac8d0@hubert-humphrey.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: CH2PR04CA0015.namprd04.prod.outlook.com
 (2603:10b6:610:52::25) To BY3PR06MB8195.namprd06.prod.outlook.com
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
X-MS-TrafficTypeDiagnostic: BY3PR06MB8195:EE_|BY1PR06MB9143:EE_
X-MS-Office365-Filtering-Correlation-Id: 1d47f3bb-df22-4487-e22b-08dea6487b41
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|366016|786006|41320700013|376014|56012099003|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info:
	q98L76p1qiNlcr9OO4T4iz/d52N6XUZdGQUGorRRq7p6b+SRjCyzjEUFKq1Tn0c8AKwNDm37h/RABpcf3l5PTDq3Ih9XCXIcwb0kbHyPmayggs4kqWVKmo6lhOmWZLras2LwPIRq7k7we4ZNfNMpntjZWABaczmlOBIf2r0BYCLF2bZElmCbW9hd8thktposlZnvOvfDURKAai1zxGLIR+qM0KSBQQu2d1NXMNZT8pRMF49T0fh6MdfUMTqWVSR1YX2/ZyMAsf487/WNGXmafDG0JaKqZn/OA9CfDUWeEa251cerRlyP0jtN+HLpkZqowEYl1wKPBwf8/nIttcl+sunDa+cg4FTR6Js+D9ZVXdr1pL8coLHAwa5qkJ5KwXQI0rhV/JLDkpOnUVld9MOPwe3/u6KszDAB6UVTXCbiRRPW4epVOtDnIxt/ygpXxaBjYGQAEFCkf6TazPgWLxpDi0ONFghAyi/N2dAoXPgHzL8u5wrD27Z1nCRPb4NBFoRaezDtUUgWOB0d0Ry2Ili3vZGFbe+GLFrSA5fBM8IYu9F/DMaLqzlHo8puf+cwtm7BB+DNtukH00BISQT/zE+vNvvyXyoVu7kCRfRWeqJzyn/TCmi8UQtC2eNmMrHtfoiNsDqmovSl2TIBL9Cf2gewsQZUrGXYD4sueO/rCavvl6B6wQSLkaN90SnruZP1Y7GRhZFM0ezqEow+KO692t4yvjCcQTws4sNikNqjgXtbVpQ=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY3PR06MB8195.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(786006)(41320700013)(376014)(56012099003)(22082099003)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?NDlnSFVzeTFzbzZNTlhIZFdiSG4rOHZ0aE1zMEEzMS9lczluWVNHQlNWajFt?=
 =?utf-8?B?UGJWa2NJbTNMeGNVcE9wNStYNVB3V2Zrb2sxUUZwMC8rRXJlVFI0U24wSFdV?=
 =?utf-8?B?dDByY3pnOEo4b3ovWkRTVlVaRTdxV0xYTzdoeUoyakptdDQzcUk1OGo2Qk5D?=
 =?utf-8?B?WWtMeCsrL1BpRnhsRWs1c2t2OHR6QzZxZ0huL3c3bE9GZHpOYmtLeEN0dlNR?=
 =?utf-8?B?Wnk2TnU1am5BSng5b0hLV3ZXaDh1VmRMTENPdG1TYkYwOTQzSWhDZWtnV0cy?=
 =?utf-8?B?MEhIa0tMSW1pa1VtalVDT3F3TVRNSTBOemVaamxpZytkWnZlYVo2RnVzcEox?=
 =?utf-8?B?eDJZN0JKY3M2eER4M1hROFdhOXQra2J6bHFKdjVkbGxpMndId0NXblZOMVFM?=
 =?utf-8?B?enNmYWQxZTJ5K3lrVmw1TmtEWlZ4eDhhWXZTZ2kzWHRqVVBEcWFwL0l4d0RB?=
 =?utf-8?B?SmhyRkxHbDdYcFdnWmx0KzY2UW16eC9vWFdDbGN0d25SbDZkNWp5ZTYyVGZi?=
 =?utf-8?B?SkpGeVZFSlVXRGo3Y1hhWTZiK1B2YVhrMFhhUHdHZ2FDZWZTSXd1a1pDK3Nl?=
 =?utf-8?B?aEVSbzRmU0t2SUZ6eVovMTRJZXQxZjUwZ0JBUnducnBETmxObElkd0p5U2Zq?=
 =?utf-8?B?NkJKYlZsM09xc2FkaWloUzdQcURlTTRrQ1B3ZnFMZUtOMnpyS3doMEYwREs1?=
 =?utf-8?B?WHZaZ1NGMTcrMFA4WlBLaldNdnowaTRzQmVzZk9nbkttdi9aM2hVaTk1cHVT?=
 =?utf-8?B?SW1odEkwNVhVVVJ5SzlzOGZCakEvanVPYmpybDV3WnJIWFpnRXNlYnRvZkVI?=
 =?utf-8?B?NFo1OGF0Q0pQZ21wVjl1RElzS2U1MlBqemd4d2VuSFF3S1I1c1FGaHRmS2lU?=
 =?utf-8?B?aGV3ZjcwMmxMaHdKOFdCMHhWMGxjRzhTUG9lRUUzSEtUSGxsdEdmaWhEQ3lx?=
 =?utf-8?B?RkpuS0w3b3U0Z3BXaDBVUXdQVmZiaTZmbnlRamc4TnVLeWMzdXNnL1NNREoy?=
 =?utf-8?B?NnU2ZzhwRDROcmNjTkQxcUsxQ3BVT3U0UDlOS3NWaWdYb25rRWgzQVBGNTZ6?=
 =?utf-8?B?bTJxN2ppekNJNmRIVFZpajFQNy9RTmtNb1llOVdaNys2KzllbnBMSERvYnhV?=
 =?utf-8?B?SlkvSm5kL1RqZHIrMGZZbmxlU05NYkNCYVlLTzczYlBhRitvc3dGMVp4MjNy?=
 =?utf-8?B?eHlmclh4dDFUYU84Nk56SXlrR2J1cHNZSDNrNmYzSzBFeTZrakJkd1hCYldS?=
 =?utf-8?B?NHhubXA1cGxKNnZOYThBZ2lSL1JQdktTMWRoM2RUMUMydFlKWW9lbkJySGhx?=
 =?utf-8?B?d3dUd0JZWndDYUpwcktUc0FQaDVaRXdhOHorc04zMkZiMmJ3M1AwNTNubCtY?=
 =?utf-8?B?WnV3SUlPWElMLzYzQkVxT2RnYUx2YWFLV1JOSVBiMGpBNWpINUMrSWdmdUVl?=
 =?utf-8?B?VU5Hc0NwVTBaYTgrWFpZRFBhOU5yTDlhV0NTMGhlUlk0MWRQK1ptd3gvV0Vv?=
 =?utf-8?B?VjcrU3lUOVRmb0FTUFZjU1ppUlowNEVBNnVBS1BSZUVUdTJybk12UG1aeSsy?=
 =?utf-8?B?S1FzLzRia3FtYWJ5R2Z5WnFOQW1SeURCS01tbXprUUhZKytmdkttbW9BUldJ?=
 =?utf-8?B?Wm9iQlkvT0lCYldsRUVzZHRkcW9FbFBGN09MR3FOdTE0b3dFY2cvblJIR3VJ?=
 =?utf-8?B?K2lUa1Rubk9KUU10ZkdYd3laek1hRS94WXZSSDVTYVByc284L3FQZ3VVaWFW?=
 =?utf-8?B?Njh4d2tWWmdnaCtNbmVzbGhaKzMwOWxNR0xjdGdrbHhVSkZxUk9FVGNZcHNV?=
 =?utf-8?B?b3RmbUZ5ZU9yYkJyY3ZsK052TWo0MkVyczZQYzZYMCt2bkJNRjZiT1ZpQXRH?=
 =?utf-8?B?Yi9nZHptdEdlVVZsY0J2WHZQNlkzdFlHRDJBc3Fyb3NYd3RQdGdwc21tWnox?=
 =?utf-8?B?YVZLOWN0UDBoOUFNTW9PZWk1MXZwMTJJN3FXQnNZZnpJTFZXL21HVkRhVitQ?=
 =?utf-8?B?ZWZHNmFHV2txaGdNTVZteHl0cUs2bXFqakNTd3RIbDB1YXNoWWpSSlExSnZY?=
 =?utf-8?B?d3JxZDllWTU0UUlIdDJhaW1oRXVRZ3JSOWJTR3F4aS9FaG5ZeWREdHJFTnp0?=
 =?utf-8?B?Rjg3MHBZQXQrdG9PMzZTeXAvNDZqU2g2dGJ5dmF6cW5RKzZNcnhlWGtuUGZx?=
 =?utf-8?B?RXNiSVdEMTdjZ2YzeWlBaXk4Ukp5K2tYOGFOMGxhZVExajFKc1d5eTVvLzRO?=
 =?utf-8?B?OUZkRHppbWp2allkYWRyTXp1endRWEdJOVQzVEREMHl3ME9hM2pCVURUTnM2?=
 =?utf-8?Q?S16MzIt85QJBI4ES9A?=
X-Exchange-RoutingPolicyChecked:
	TIL+QrGqbvkjqZYVwdfGGn0eCltgIWvw/m6nPMEL86GBcAjTPpNUCBhLzpBIZ37HaUV5KePhOxbrcJ/rj1lriQQZQwKX/rKYeMrlWQG7Yt84/fNWREH+2ttIVvuv1J5ZjgKG71F9cF7xUZZ0exXFKB+K1dqdIaiIkuztrm17kxVM1wy4AVQuq7ZRkUBcGGlPs3KQ3ZaIGjzTo46OAYXA2spgnSq5s/iyQBvKOXqhZTIk1rQ/+cOAGNBqoihVvut9hEFBZy69Y9dYWvYVei3bykJdG6W1DyuoegCnWMUbl3Tgr949WSg6r1TB8URrWlCLnxkifaFvZ8MIZ1E6h9ifvQ==
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: 1d47f3bb-df22-4487-e22b-08dea6487b41
X-MS-Exchange-CrossTenant-AuthSource: BY3PR06MB8195.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Apr 2026 23:38:57.2626
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ioQdSwlJnwPO526uCZNkHaq2w/ay87wxYMxy2PRazUrTjvvhUJ6qarP5zSHcGLGi
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR06MB9143
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDI5MDIzOCBTYWx0ZWRfX2J42aDY0BPjc
 kmYYEJDVFjoOdKY/+Bmyc/8seMZDIY9bh4OLnLn6DRVpOd/tr8PVFkP9YrziQ5XwRe8OyNqxMhk
 g+XvwlttCcOtNhvAeS6UHE+L+sEdwCr3bcbtrX54V957edk+bXuLzF4IVMe1FFnAgHvw9kety/x
 0ZDf8MRY+R80cyvNz4htpPMECwcm5fpXcm/9I74zwvNPQ+FcQXYI3QDA2HxNgtd0lzll4ajzcf5
 X10rr+tAg67hcX518Y1BWUX8tyY9ARic0mO5/AVK9LraTGlHAcbN/YqCm5jBcBZfe3GD1LfayGW
 oo7/JLdaDSqCKtKMR+6NCB/bO9NzNCjTXd0ed6OI0S0rTMPZaVMrYCbQscfV1pfuZr5bugZ9vrL
 k+yfTDGxMnLmixxmIP1aetBd8h3oRlGq2cl1SPtfy/NioM0w4qezQ5yu3XfQw04m21isMGtzWzs
 AjtnqCcHxw/sURcXbYg==
X-Authority-Analysis: v=2.4 cv=EPg2FVZC c=1 sm=1 tr=0 ts=69f296cb cx=c_pps
 a=r4SLCykQvtwIPvheKTZvSw==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=A5OVakUREuEA:10 a=lre9DRYkaIEA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=ZyELlZqCvD1aXIDzc3I-:22 a=eq2kN7DOR4gdPMKheIxe:22
 a=h-4Cab1CydjrRG76EtkA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
X-Proofpoint-GUID: jcWJLSNx2flqcV6w4zFeuJNF0hrfFMuq
X-Proofpoint-ORIG-GUID: jcWJLSNx2flqcV6w4zFeuJNF0hrfFMuq
X-Wisc_ValidFrom: true
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-29_02,2026-04-28_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 priorityscore=1501 suspectscore=0 bulkscore=0 spamscore=0
 clxscore=1015 phishscore=0 adultscore=0 impostorscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604200000 definitions=main-2604290238
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5
X-Rspamd-Queue-Id: 0007249B644
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[befuddled.reisers.ca:helo,befuddled.reisers.ca:rdns];
	DKIM_TRACE(0.00)[math.wisc.edu:+];
	TO_DN_ALL(0.00)[];
	TAGGED_FROM(0.00)[bounces-1597-lists,speakup=lfdr.de];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_COUNT_SEVEN(0.00)[8]

I am not sure what you are trying to accomplish but my guess is that you 
are  probably going to want to uninstall. There is no point in running 
RPItalk on  a machine that you are already  using with a screen 
reader. If you need a hardware synth but don't already own one, you can 
make one out of a Raspberry Pi or just about any old piece of hardware 
that will run  Debian. But to make this work,  you have to have two 
computers plus some kind of cable between them. The whole point is to 
allow you to use some other computer as if it was a hardware synth for 
your server or workstation. But you don't install the software on your 
server or workstation.

So to uninstall, you ought to be able to just say:

apt-get --purge remove rpitalk

You may have to reboot after doing that.


On 4/29/26 5:39 PM, Chime Hart wrote:
> Well, thank you John, it was just
> sudo apt-get install rpitalk
> Immediately I heard Allison say "starting rpitalk version 1.2. That came out of
> my sound-card, but now just likke when I run Voxen, I cannot play mp3 files
> with mpv with an alias, but just typing mpv  it plays.  Here are both outputs
> which mpv
> /usr/bin/mpv
> chime 19:~> which mpv1
> mpv1:    aliased to mpv --really-quiet --no-video --audio-device=alsa/plughw:CARD=DGX,DEV=0
> Back again live, usually when this happens I must kill processes for
> speech-dispatcher-and-related.
> Chime
>

