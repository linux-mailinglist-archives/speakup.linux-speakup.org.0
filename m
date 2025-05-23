Return-Path: <speakup+bounces-1296-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 8227DAC293C
	for <lists+speakup@lfdr.de>; Fri, 23 May 2025 20:02:17 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=math.wisc.edu header.i=@math.wisc.edu header.a=rsa-sha256 header.s=selector1 header.b=uL+jBwpO;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id E81143821D4; Fri, 23 May 2025 14:02:16 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id C31DF3821AF
	for <lists+speakup@lfdr.de>; Fri, 23 May 2025 14:02:16 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 5202B3821B4; Fri, 23 May 2025 14:02:09 -0400 (EDT)
Received: from mx0a-007b0c01.pphosted.com (mx0a-007b0c01.pphosted.com [205.220.165.71])
	by befuddled.reisers.ca (Postfix) with ESMTP id D2A9C381897
	for <speakup@linux-speakup.org>; Fri, 23 May 2025 14:02:08 -0400 (EDT)
Received: from pps.filterd (m0316036.ppops.net [127.0.0.1])
	by mx0a-007b0c01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54N9xVdk024680
	for <speakup@linux-speakup.org>; Fri, 23 May 2025 13:02:03 -0500
Received: from bn8pr05cu002.outbound.protection.outlook.com (mail-eastus2azon11011029.outbound.protection.outlook.com [52.101.57.29])
	by mx0a-007b0c01.pphosted.com (PPS) with ESMTPS id 46rwfaqr8y-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <speakup@linux-speakup.org>; Fri, 23 May 2025 13:02:02 -0500 (CDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=E1WNBHE5qVpPVgarU5IwJtaBAJTNJOEi/RvvmrEfq06G5l9UiRd3eVUM0So4obNfxTm0TsBgXTL0trjy6rlqbihXJbnoX+UG+wwxgzD9xAHmKOJHefKdZ7Nikh+eIK3vCuexPx6MT2fs6HjJPgf3N94OsznsYOWeqHjrdZHJ7T+rSIrw1D0Y6DPcgBElonltuReOqHmvyWzB19KrwnemV/0jbg6Jd59Oi/1W09wpqd/2IjQ/ErQfNh7XFdPkLWFjr9sqGAu/zHXM/97ZRPGPUMFs2ajKN9gxPqyQMCd3pIWrI1kGhO61/GmSZbYObv/WTze/Ke9j8+QnB7Y/P+Yjqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9S57/c6xlcpLzpkKxaIBEAFRxduZRk+/8G7xnMiqT74=;
 b=D5f3vKYhXIVeO5pfpA1gqJZJ8R9WWdHHtpBQtpoW9kqYIDmW9Ca6q9AMdxlp+Uf5Xmt8QHmP/Zpai9WClcRmWmF7Mge179O3lbcS3Sf5GBia2YmQioaBjCv5LBLBHqoyGP4DtLjR8tJ+7O6Nk5W4oSnqmJGmWN/S7/pfkyKvVJS0IpQVva76hOJGOWGRT/yzrk6Oz1bsbhSNUiO7RKY8qnHPU8JhRsfTm4LubFe3iE9Z1yDlg3bIP6a4piNmEh1Aa8RCFfUPJP8/e5ksASM+YkvWbUgtdoOcVnpVEs1nkRYkTpE8g9f+tYjruWXlkJqkUFwAUKf6QGm7Wi7FBlG7Kg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none
 header.from=math.wisc.edu; dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=math.wisc.edu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9S57/c6xlcpLzpkKxaIBEAFRxduZRk+/8G7xnMiqT74=;
 b=uL+jBwpOJoOxTkl9uCqUmjBtaf9TfouA2zgKuxZD2QyCu7ncw14SQHWHaxyx5VlgVzmHWd79VUOTp1egyp7nEUJ+HnGZb5vrkzYGQmvJG8zP1DwOwFjV7QAE7lhOwYkEi3iGI2XVvT4qGG47EAIzTwKfePiIxeYfXvPVIrDZn8SOByHl4jpE8E3Ud0lV1Nl9IXrPkCLVBJgSYf4yfmcxM+MY1sSoaj0Jyw2rwNtNKR+riBJlFYTtZtzB/VbzUYOu8Rj8g0+9BxnSe3tgae8wg0KbLXAcgct1ioTK5gc07iqJbMRRvtqIOwneC2sDDOy4tAY9bOnx4gmFc312WVPiHg==
Received: from DS0PR06MB9877.namprd06.prod.outlook.com (2603:10b6:8:1d5::14)
 by SJ0PR06MB8476.namprd06.prod.outlook.com (2603:10b6:a03:391::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8769.24; Fri, 23 May
 2025 18:02:00 +0000
Received: from DS0PR06MB9877.namprd06.prod.outlook.com
 ([fe80::a347:6162:9bfd:9b91]) by DS0PR06MB9877.namprd06.prod.outlook.com
 ([fe80::a347:6162:9bfd:9b91%3]) with mapi id 15.20.8722.031; Fri, 23 May 2025
 18:02:00 +0000
Message-ID: <1d017a68-54e2-423c-b8fb-e266e71c8689@math.wisc.edu>
Date: Fri, 23 May 2025 13:01:59 -0500
User-Agent: Mozilla Thunderbird
Subject: Re: Talking GRML
From: "John G. Heim" <jheim@math.wisc.edu>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <12d35e3f-57de-4c57-8e07-d0aded6924e9@math.wisc.edu>
Content-Language: en-US
In-Reply-To: <12d35e3f-57de-4c57-8e07-d0aded6924e9@math.wisc.edu>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: CH0PR03CA0208.namprd03.prod.outlook.com
 (2603:10b6:610:e4::33) To DS0PR06MB9877.namprd06.prod.outlook.com
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
X-MS-TrafficTypeDiagnostic: DS0PR06MB9877:EE_|SJ0PR06MB8476:EE_
X-MS-Office365-Filtering-Correlation-Id: 2220ddf3-1878-409b-37aa-08dd9a23ea7b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|41320700013|376014;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?S3lsZTRqYkNYYVFBeHpabUVVNVRCMGFmMEZENXd4QUExaTc5TUJSS2oxckR0?=
 =?utf-8?B?ME5EQlJJYVJTQnpXQ0d4alFHT0gvMTFRQnZhLzFSQjdlcjljOGxORlAyeDlP?=
 =?utf-8?B?V3pKRGpNamJ3VjM0aUlQazB5Y09xSlVyMG1INFNDd21DVUtBL3BSTTIzRno1?=
 =?utf-8?B?YlluU0JsdDlNWGNhWUJDcm1iQnpHM1lmYW0yZ0ZvUEx3ZTJkZ2kvMjZuVHVM?=
 =?utf-8?B?ZjAzZjdtV2dueDArcWl5WG80MzNLRnhKUUpwL2xoZWJ1YjVaQnZYWTVnKzBC?=
 =?utf-8?B?V0w5dEhrcmd3M3FkQzZCUFBEdkw0aFJZTWM2OTVMcTc3WEcyNGgxS0RiKzgx?=
 =?utf-8?B?UXJXb3BTanVvTnBPbE1XRk5McTltZnhtT0JPL2d4QXVldVJETkFoRmNrRHU3?=
 =?utf-8?B?c0t1QVZkSlVYQWNrL3Mycng1MEFiYzh6c2Y5WkxGMDNhOXJYekdBVVJKZTVO?=
 =?utf-8?B?WjYzWTdBRDgwS1djc3U5a050OTBLYzFOL2ZOdDdTbysveVZHd0pRalhpL1Ew?=
 =?utf-8?B?UlIrWkNyUktTTVJkYjVXbWFudGZmQWswWStUclZSMmJuRmJlYmpPclI1UHRM?=
 =?utf-8?B?YjRLRXlaTThxa2Uzejc0TXJoR3Z2QUlUVVlFL1NHcXcydHBrK2o4MEZ4N2xv?=
 =?utf-8?B?TFRJM3RaU0FJMC9vSjBic3pYaDhUTkpJbEozc3g1Y2tTdWZRYWdtWVpyQmhv?=
 =?utf-8?B?ZURDbkZrRjlaS3BLOERGeGxCUldYLzAxbUY0SHVTMEVuNUtqcmx3N1paNWtV?=
 =?utf-8?B?cUtoSy9FNFZ3OUFaUzZlUXF5ZkczY2ZEWTFrLytCVE9tLzl6V2pHaDBOREpt?=
 =?utf-8?B?UE13Ti9lU3VwY2lOTFA0S0V2TlZaY0tBVU4rWE9ucHUwWGdqMThOVkJlcEtx?=
 =?utf-8?B?MEV0K3Axck4xMG4xRGdrNmRkeTNSYmcvSU5URDU2cC9iaWwzVVNKWlg1dGZT?=
 =?utf-8?B?WkJHV3M2UDEwczhUR0h0L290Q3VkT2daWjdjb1hvb05vWEJaSHRrai96THNy?=
 =?utf-8?B?NkQ1WFBQb1NOVVB3SXZiZ1BFMzBWa0I5OEdhNmZJR25pN1NXWURYa01QOTNo?=
 =?utf-8?B?dW0rcjc2eDN6OGZ1MWZwWEZ0Uk1pNThsTzZZclRLU3JlQ25ESjFURUFESTds?=
 =?utf-8?B?REFzR1Q3SjBZTGNiVndaT1hDQ0NEbEVVZWNwUkdyKy9LNThOQytXbVd6dFY3?=
 =?utf-8?B?L1Fxc29Sd05LWjZPbTBOZFNvTTNlVTRlRHFYMExQNi8wVUNQcWxGMDZYai9z?=
 =?utf-8?B?TGdYdmRscDdDU2ZTNjZKWWg4L0hQQ1ZTdlhGYS9CaFhJNUpWb2QrVTh3R1M4?=
 =?utf-8?B?TTRmZVhTVklTdFdYenFVcVNUSGlRV2FQUm53UjNSSFZWYzVxdjN1MWYwanRH?=
 =?utf-8?B?UjFqYk5ma3RhRTVzeUpOZGdkbDB0Q1B2cEVWZXVDNXFpYzh2eVVydEh5N1FN?=
 =?utf-8?B?bG9DdVhBektkSE1sR0NzS1RTem9iS2htZHpFNFdhaDZjRVJEUVNBd1RDaUs3?=
 =?utf-8?B?VW11bTJFSWhxS1A2OGZ6VXRFY3gyWkN1SXFIVHd0UUpoNDd1S2RQTmt4R2t3?=
 =?utf-8?B?REREeiszUGpwRFJlREt1cEFMd0ZxZGVHRW9WbmVLTjRVNkRtVGI2Y0RvVUZr?=
 =?utf-8?B?QjlPTDlLSlV3b1R4d01UZmdTZzVPeWlOYVFYVXY4RWhXMnlKdHY5WmptSU9K?=
 =?utf-8?B?VnlTNUkydTBKdU40RktXMlgwdWd4RFF0VnVzNWpINDNraVo3eWVOZG9wa2hB?=
 =?utf-8?B?NkU4N1RSUDJLakZXSkJDSURLSEdJMU1DY1dWS3ZCdWpTZVVzbTF5bVNHQXdi?=
 =?utf-8?Q?lju3owjb7Ft75HXur3Vs08z5CGuinUgbBzJO8=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS0PR06MB9877.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(41320700013)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?VUd1SEpUZ3k1aThlMXZpYWt1dWkybGlNRTVSSkZBY3lRekllTEdPWXJSaU9t?=
 =?utf-8?B?emh3MllidlVCMDJHTkNHb1NCRTJzYk13TGhEdmFaeDErRlEvODF3Y01XZXNp?=
 =?utf-8?B?ZGQ1SVVMSHJvTmFyRFIrMEphOUhodnpZV1Q5dk54Wm1DY2x1UnFFS0M4dkpn?=
 =?utf-8?B?UmVNYXZpSW5HQnJ5aU53WXdjTmMrRWs2bmhjYVcwQ3FPb2l3V1l1d0tFNUpV?=
 =?utf-8?B?RGlVVm5RYWNJZFlPZE1FMm5ZMU1VSVVzU3hLU25zS3ZtbUcydzVsN1Q3UDg1?=
 =?utf-8?B?anBNWG5mS3RSMTJzTmk1WW4vQ0RYS3BUOHNOQ1I1YitFcHJFNHRUZVcvajZ4?=
 =?utf-8?B?T1cvbFM1WTQ3S0NOOGM1UXJxWWFiZnZzUEVZaW1JT3dnbnlNY2R4blRwbU8y?=
 =?utf-8?B?dHFtVDlBSTNoT0U5bk53b0pVd29PbWpydkh0SUUxSWhwVk5qM0ZxV2ppQVhI?=
 =?utf-8?B?cUxMb2dOeS9rcUVNYUxnVGR1TjNRRTdpSEpVMlBIaUE3TTRkaFZoZEtUSmlq?=
 =?utf-8?B?V3V4Z0JqdEc0bVhxVkdPMUorVHE4dVVlK2M3cThnRC9jNHBMNkk5VzFGc1VX?=
 =?utf-8?B?VkhsMUx4UW9RUmw4bHE3NXExMjlqNldmV0ptZGo3U0FOVFpDellqbm16c0hu?=
 =?utf-8?B?MEhFdnE3djBrSUFmN1NiV0VYTVIyZmlIeGpUSi9sWld0aCtpenZkblRCcVM1?=
 =?utf-8?B?MVpQWFZHNy9BNFhNSTJJaTBPTjZrSGRYc2xGUkFTTVBIOWozUnZMSWM0QzNa?=
 =?utf-8?B?enVFN0hmOFB3bXRha0xoTjhBa0RGQVhLOXJQelhIUG5lVWttM1p5MENCc3Uv?=
 =?utf-8?B?ZlBzREJFbFo2OER3VUsyc2xyTkNiVk02bldCZXkxdmxmOGVPRnFMUmZKb0JV?=
 =?utf-8?B?eUVxUE51Vjd2RzNSbFNaVHBJWEhDK0czQ1YyWUlaME9tQzlUY2tKS0F0czZy?=
 =?utf-8?B?MEkrVlg5b0hBTUFSOWZ2NUoxaXd1Q2ZzcHU4TmFkV1BMRlo1QkxNNkU1bHNJ?=
 =?utf-8?B?MzFDa0dzQ0tFZWlKT1JCbUtkUEQ4U21FWlNkdFBHUnMrV2xaeXczWFdtYnFr?=
 =?utf-8?B?Z3J2eXVyTHhJK0RXQWNudTNHcDdjVmUwVncwcHhPZHAzVWkwV00xTzlWY1l5?=
 =?utf-8?B?b3RNU2JWZFN1Ti9XY3ZaemxKYXhLd0dSSUxzK1NQRVN5MjRDZ2pBTURvVURI?=
 =?utf-8?B?QzV5SUNTNXRGUGxQR3Z0eHZXRWdmQ0RjNjRIcVoxMWE4SUJ2UkpzcFhNNkJs?=
 =?utf-8?B?UEFod3NjQm56VEtWTEdxNFE5dGlVUitBYjRYYVBvNUgwaVVFVG1vTTlGMkJL?=
 =?utf-8?B?UW5ZN3hpby9ZSU45dEdhbDlES1hVQjJTWC8ySUZ6OWtJSXRNRXNaOVdmamJ0?=
 =?utf-8?B?YndwRU5OTlc1S1llek9aTW5oTFJQb245bXNnWWxJQnBjVGlVc3FEK1Q4a3Y4?=
 =?utf-8?B?Z0pTeWJoZndINHZRczRoOE1Ndi9UYThzLzRqdGNrcUVSZiswaWxGSFdTdDQw?=
 =?utf-8?B?VHc2QTRydzlabFRhZTdQaFROaHRhOVlnaFBrU05lT2hnOWRwck5PS2MzeXRl?=
 =?utf-8?B?Qk9GVGNrWUIvQTlaVXdNMVFxRGFLbnNJbzdqb1FxMU1rdnd6UDJNTTBMZmVQ?=
 =?utf-8?B?Qzlmb09Pb05vN3NHUmFxbXlranVqMWZwVzhwdjdocnA3YlBzT0YrZDR1bkhS?=
 =?utf-8?B?MlJxcVlsNEpXU25OM0JyV0lFK0FMYlp5d2llWlFQR2FsT2dFdnkvOFpDVlVk?=
 =?utf-8?B?eWRMS2NVYnZRT1N5d3RDOWFpQ09jVllRM3VIalZaeGVGSmNhemtsT2ZaMW1D?=
 =?utf-8?B?c3dkTTFSTEp6VFJzME94TngycGVWWkVacHZPdDdCWlJNR0xWQW1mMmsvaGNp?=
 =?utf-8?B?Nm5FZGFybWg0dFZPYVEvcGVFdFpPZ2c1cEVCMFBpeHZoaGQ0WHB6anFLVkZx?=
 =?utf-8?B?dDlvcy81Q1FaQlE5b0JpbFNTdm03aTZmSmNUK2V2eFFQcHpPMSsvMURDayth?=
 =?utf-8?B?Q1F2bUhDckVEOFVDY2dPUFJXU21hNk5iNCtlUUtKL0pRY2NENUc2dlpteTRI?=
 =?utf-8?B?eVZDR1FFV21PekF1L3M5ZjhMb2lud2dZUkY3T2JaZFV2RGNFaFdweTNlODJ5?=
 =?utf-8?Q?q8a0=3D?=
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: 2220ddf3-1878-409b-37aa-08dd9a23ea7b
X-MS-Exchange-CrossTenant-AuthSource: DS0PR06MB9877.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 May 2025 18:02:00.7089
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: W0VKwPf9++IdDmifRpbgVUxJUJx8e/Pe7tf5CMeIHlp/+bjWWOCwcXCd2cGX7+N6
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR06MB8476
X-Authority-Analysis: v=2.4 cv=A8xsP7WG c=1 sm=1 tr=0 ts=6830b81b cx=c_pps a=rDMf0xV6zgmXoNUq+bKLQg==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=lre9DRYkaIEA:10 a=DyznqomoAAAA:8 a=lOzdwwzSAAAA:8 a=a70oX4DH6qK_LQybMwoA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=YEaCSb5KSSEdzGS4HzBj:22
X-Proofpoint-ORIG-GUID: fR11tvola4GBvAAVbKvqAbwnSxRKn1Xe
X-Proofpoint-GUID: fR11tvola4GBvAAVbKvqAbwnSxRKn1Xe
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTIzMDE2MyBTYWx0ZWRfXzeRUdBIylAGd AbypUGxzjmCvuQQCSORODc4mtj+iHM3MMcDb30zLJytN8oAB4s9Vgl5LIARIiaj1qY2yV7KwS/K GV9+R1VpRI7J0ldm+z06uosVwVpoFa7RCa7V+IsdpJUO0gyQxJfjeZYoitf+daE9E3zwNdlJKdN
 WCM/ziOuV+prH+jRJ/gT9QInUZt1dV2i3VhS+3xNDRCqJq6r1Wtk4AS649oltCkw3kCNkJponYx 1wHnaKGcCVKfTEdilyTFbYXNpLqTx+Q9vRaU7ZpQslQemZMMJ9QfNfyw/1S6CMYpUlhl903aZaP dDCtK9T1rLKQ4ItY6AXEP2e9UJmwjxikmgfrsaYT9WJDrRY0dkSFw2tweoHUPwpOdVS1p4H41+T
 +isXmpF3qZxXYrLxNuS9G6hluwxm7poFgvjKY26kThfASV7j38m25Ty2AT/NnI9bFQ9E89QD
X-Wisc_ValidFrom: true
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-23_06,2025-05-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 spamscore=0
 lowpriorityscore=0 mlxlogscore=999 phishscore=0 malwarescore=0
 clxscore=1015 suspectscore=0 mlxscore=0 priorityscore=1501 adultscore=0
 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505230163
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Oh, I forgot to say that the script (grml2speak) has to be run as root.


On 5/23/25 12:58 PM, John G. Heim wrote:
> GRML is a Linux distribution based on Debian, designed to run from a 
> live CD or USB flash drive. If you are a Linux systems administrator, 
> it's smart to have a bootable GRML thumb drive on hand in case you 
> have to rescue a server. You can always start speech after you boot 
> into GRML but here is a link to a script that will allow you to make a 
> version of GRML that starts speaking early in the boot process without 
> you having to do anything.  This is valuable for 2 reasons. First, if 
> the machine won't boot at all, you might be able to tell why since you 
> get access to the boot messages. Second, you don't have to do anything 
> to get speech so there is no chance of your making a typo trying to 
> get speech.
>
> We are still working on a version that comes up talking via software 
> speech (more on that below). But to make a bootable thumb drive  that 
> comes up speaking, do the following:
>
> 1. Download the grml2speak script and make it executable:
>
>
>   wget https://people.math.wisc.edu/~jheim/GRML/grml2speak
>   chmod 0755 grml2speak
>
>
> 2. Download a GRML iso file from the GRML web site. The current 
> version is 2025.05.
>
>
>   wget 
> https://urldefense.com/v3/__https://download.grml.org/grml-full-2025.05-amd64.iso__;!!Mak6IKo!P7i-x-G1qQQXuB4G3ED_8eZjbJc--1LoPgA5BZ9UTbBVn2EEzF-HGmtfIg08MXqxP-i1K-ew7RY_3gPnm1fcxA$ 
>
>
> 3. Run the script specifying the iso file and the type of hardware 
> synth you have. For example, for a Litetalk, you'd say 'ltlk'.
>
>
>   grml2speak grml-full-2025.05-amd64.iso ltlk
>
>
> The above command will generate an iso file called 
> ltlk-full-2025.05-amd64.iso. Write that to a flash drive or to a DVD, 
> boot from it, and it should start talking early in the boot process, 
> right after the initramfs is loaded.
>
> I'm working with someone on the GRML list on a version that uses 
> software speech. Theoretically, the current script should work. But I 
> got speech only on some of the systems I tried it on. Even so, you can 
> give it a try. You can either generate your own iso file by 
> substituting 'soft' for 'ltlk' in the example above. Or you can try 
> the iso file I created:
>
>
>   wget 
> https://people.math.wisc.edu/~jheim/GRML/soft-full-2025.05-amd64.iso
>
> This image is supposed to start talking via software speech shortly 
> after the initramfs is loaded. But it worked only on 1 out of 3 
> machines I tried it on. Who knows? It might work for you.
>
> If anyone wants me to create an iso file for a particular hardware 
> synth, let me know. I intend to put the iso file I created for the 
> ltlk up there soonighh.
>
>
>
>
>

