Return-Path: <speakup+bounces-1581-lists+speakup=lfdr.de@linux-speakup.org>
Delivered-To: lists+speakup@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sN/4DUbf02lxngcAu9opvQ
	(envelope-from <speakup+bounces-1581-lists+speakup=lfdr.de@linux-speakup.org>)
	for <lists+speakup@lfdr.de>; Mon, 06 Apr 2026 18:28:54 +0200
X-Original-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 4ECE93A54B3
	for <lists+speakup@lfdr.de>; Mon, 06 Apr 2026 18:28:53 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=math.wisc.edu header.i=@math.wisc.edu header.a=rsa-sha256 header.s=selector2 header.b=Wr+SQ3Fx;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 4E6A3382743; Mon, 06 Apr 2026 12:28:53 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 2A9E5381874
	for <lists+speakup@lfdr.de>; Mon, 06 Apr 2026 12:28:53 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id C9CC4381874; Mon, 06 Apr 2026 12:28:46 -0400 (EDT)
Received: from mx0a-007b0c01.pphosted.com (mx0a-007b0c01.pphosted.com [205.220.165.71])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 5EA75381833
	for <speakup@linux-speakup.org>; Mon, 06 Apr 2026 12:28:46 -0400 (EDT)
Received: from pps.filterd (m0316039.ppops.net [127.0.0.1])
	by mx0a-007b0c01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 636FTruX3730786
	for <speakup@linux-speakup.org>; Mon, 6 Apr 2026 11:28:41 -0500
Received: from dm1pr04cu001.outbound.protection.outlook.com (mail-centralusazon11010001.outbound.protection.outlook.com [52.101.61.1])
	by mx0a-007b0c01.pphosted.com (PPS) with ESMTPS id 4dcfha8kjp-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT)
	for <speakup@linux-speakup.org>; Mon, 06 Apr 2026 11:28:41 -0500 (CDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=o7EZ2HqVpBYNUnGcOSFSQ0j7pbXVjyEEAzZ/a3nII23b9Ap04v6KdE/8xchOfFesHiwPwHaolxhyzXedZC8geS2DI7T44r0fCQCnmdDIyZVmzZttqN1UtNBUhNdIaElJf1Ghj1ELHNsjMZJ3QbL2SHQJBAvycRquwcS89b1bQlnx1GUNJbiQ7Yt+INv/X8eT0TRTVcVsmCOMwu2OrXdyEPOZPwzGBTsMr/lUnYldBWsha9xEkprH2I/GuAttSYBNFUyaDL4sY8WdiIcejdqFhOat4R985/sQwkbuU2Hf0CQtYaZxqtSzufRjWYP2FrJXh32a+tFoTJrM/iIHLuIvng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IJ6uDMMELbL8KeZe8/Gt8gbTitnrzMm1c/upxHjAWoY=;
 b=Ty+yq3PLQj/Mni2FqaVt89K/8TFjVdvGBpbRDZuYugMYUTHyHEyOWra4yme6mIa2xmoyUnM2wAPYAq5t08okRDhLuhQVBaLmjedTQbSEoxUyu2TiUI0MnCglb+0tmFcrf5EShUpvF9I9C6Ws764CcKmWb7XVdFMfvPcaABzTf2ImJzf/ks746ahY2rHNitZPRyZ6Bh6ftODJaYOtG0AN9ofIypHEC+DW7HzgINmgFC2FHkFZ+ZusO+taBG17twB5PcM4aNEM7WVua37RhpoFpVaREy6N7dLXlyKRd0mNMjPkOOJMqvAqHve98hf1MgO6UMr+ne8/IM4693AEIyRBsg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none
 header.from=math.wisc.edu; dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=math.wisc.edu;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IJ6uDMMELbL8KeZe8/Gt8gbTitnrzMm1c/upxHjAWoY=;
 b=Wr+SQ3Fxc2pfVPDBM8hHSMEIBzTNWkU/AugZo0S7c/YFtKYHGo06nEYPDkbFaBfLH+i/8Ddn++JB8iM6RH4Kh5P6kSHxzZnOMyIvGAuOM4yLH2MrKGc9iPwX4S8Gp2pOwWv57UmsONv7US7FkKk5W05+80MsW3Vkwn9x/XPyjUAeMWDKCgP09EzJcrcyaITML7CUAPzf6hwBJx83F2JpGVmbW80SvhZopf1hlHdED3k/8CwT3+cWZbxA1FYHXsaBe99ZkSOUPp/oNHz+I0ETm/a1Kf7RtIPnh7IJf4mDsD+zwaaduC0LWXrOCIHrm7MpPFNCsSZuri43qlen0zSAgw==
Received: from BY3PR06MB8195.namprd06.prod.outlook.com (2603:10b6:a03:3ce::19)
 by SA3PR06MB11157.namprd06.prod.outlook.com (2603:10b6:806:45d::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.17; Mon, 6 Apr
 2026 16:28:39 +0000
Received: from BY3PR06MB8195.namprd06.prod.outlook.com
 ([fe80::a7ad:fb62:4389:fd8b]) by BY3PR06MB8195.namprd06.prod.outlook.com
 ([fe80::a7ad:fb62:4389:fd8b%4]) with mapi id 15.20.9769.017; Mon, 6 Apr 2026
 16:28:39 +0000
Message-ID: <0b15c93b-1af7-4046-ace8-5a6057f22dd3@math.wisc.edu>
Date: Mon, 6 Apr 2026 11:28:37 -0500
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
From: "John G. Heim" <jheim@math.wisc.edu>
Subject: Rewriting docs: Live distros in the FAQ
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: CH2PR18CA0047.namprd18.prod.outlook.com
 (2603:10b6:610:55::27) To BY3PR06MB8195.namprd06.prod.outlook.com
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
X-MS-TrafficTypeDiagnostic: BY3PR06MB8195:EE_|SA3PR06MB11157:EE_
X-MS-Office365-Filtering-Correlation-Id: bfbf6b2f-c4e4-42e3-a868-08de93f98f6d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|366016|376014|41320700013|786006|18002099003|56012099003;
X-Microsoft-Antispam-Message-Info:
	QTlTvooYrguWHUr0s0jBXFCVeatXFwb+bP93eH0XrRoMIHllqwO9Lko6JMIMRhFLBDsxXlsw+pTaZMibZsqnSk0T7Uk1CBXOjt6Zidnf+Pjt2fh3jQTRJqQXLwEyGm8ZI9tg7CLwfOmYck4tytO3xgWhBSscGv0hAwhsIMecQCZOsGkrtqLdAPRvQNGY+JqB0AUXpAzRX2SuOwkLMrut1EZRpGozjIbo6DLqbsh5/519rNkdJczPGL+10d1JskRkXYoWg8BU/+yREJ2GXCstMYX3/i76oaxMzAWlamsR1NiHY3YDAqYv+woCLWQ9Wvadh7bkdRAuzWPEf3bB9qC44d3odGfX2e6oJHsnEHFFjx52w1qU19Eq+/yiLBcVM+nAeY0sGVM6qZBTqmrZKvkkKjBYkrYK10x7C41YTK846NfKblq1J6ZTIs36vBkDKq/mAARMxG5sBrrzLAL0xWR/mo3RnBTe2uZ2J0gWdJDWLW5UR/6gyLv+4/1SQiLWAbtjYbLHE1PA/fGVbA9mH9M3nSxHp+ip+5jObf7Va4xUktkrC1ZrYQdBLdJdaGACS2mXnXJ7TPuaw6i+2osenDiuU8wagpaMMSx+216axOxYvhIrXKVaOfolRevw4Nfv5+9jCEa8aREDoJjiLIOsCcsqPRlA0Fi5BZH5xWjXMfJTyzoJTHWeGbENP4TbjVpnADFjKwPob2Lew0m+kpvYr7PGz5A3sYNT5wqClRwdgEkILlc=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY3PR06MB8195.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(41320700013)(786006)(18002099003)(56012099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?N25HN2FTMWt5SUJmQ1k0K29mMXJwOVlzTmJLUzgwTW5DbUlFNzVVdlhGZnJm?=
 =?utf-8?B?eXY3MVdIcko2ejhsc3poVSt1MzJDYzdoZTZzRzBkSVFjcHgwRkZLOXJISEVB?=
 =?utf-8?B?NXlnTjg4Q2l4RkE3SmxSSnQrOW8vbzRHRWQzZVRKeFRZdmFMREVsbmNIN2dD?=
 =?utf-8?B?bGwxTEF1TkRLeXc1cHdkei9wZ1BjbWptemZ0d0cwUFJEMldpcHp4cXdjUHN4?=
 =?utf-8?B?OVc0V3RROGlEVmk2RGZUUnZjM1Z3MWRxWlk3MHdiZFIrQkRzZ0tZY0hVTEJp?=
 =?utf-8?B?dDFyWk9IUE9VYUlwTEI4RGl0ZUIwc0l6bzJXWStpUGJvSmduQlpqTXROdTA2?=
 =?utf-8?B?d2ZQNWF6TTJpZGdrRDRhVkNsOVNEZkpiMTN2OUZkdHAxT2IzN1Noa254cGdM?=
 =?utf-8?B?UStESlg2TlF4RWdvejZSVm41RVlBNE9SRDNqSkQ5c1owSXcvVjl1NW1OU2xq?=
 =?utf-8?B?OVF2VkdjOWNMU3dKbG02UThQdDVVd29oQSttSU9PQzZUSlUzbC9OV1lJblE3?=
 =?utf-8?B?Z3VwU1FkcTlaUm5xUkJIQnBsZ280YXg3TEQrdHY3VjgzMHVCbjV2MmdnTGU1?=
 =?utf-8?B?MWtUNnpORkc3WTNQdS9veWYwV2pham94YmpaRWxrNUFRRXN0clB6dVg2UEI4?=
 =?utf-8?B?endrQjg5UnZUbnJxU3NsamszVm53NkprOGdqQzh3WktBa2ZZdVJPR1J1NDk5?=
 =?utf-8?B?Nm5EUXB5SDhYSEpRb0dIaERUbWhGdmNBT1l3QVJ2Q3ZZbXAvRUVOSzRlRmx5?=
 =?utf-8?B?WGV4bkFCWkZYQU9nOFpWcnAyT3QzK3N0cERMY01iMm85MXcvTitmU2JOZ1JT?=
 =?utf-8?B?QVA5N1ppdG5lckpMSTlyL00wQmVtZllBajVDeThvdk1NN1NUTStWN0NCSGpv?=
 =?utf-8?B?cWF3ZzZCU1dHS1RBZHEvMlBtdGtHM1dGbzF4SVlhczFMemdFSWNPcE9XdVVP?=
 =?utf-8?B?S0ZYY2VDWW4yK1hxM3o5SktTQVhDTjB1ZW9QWDlUeU9pUTh2TEkydjRSUkF6?=
 =?utf-8?B?MzdwaEhmYlFUSHV0WVpianJGRFE2TWlyVXQ3YVZMc1NaZjZnUTZyb29GZkU4?=
 =?utf-8?B?MU1keVAyTUtKRkZ0Uko0Z1dpQ3N0N3VXNVYrT0RBeEdaQ0gxVXJMQWk3S0Ji?=
 =?utf-8?B?amI2RmRtRzJHUVJtdlhORzVKK2JQRUZLbDRUNXk5eTk0Zk5SRS83UGdyay9w?=
 =?utf-8?B?NXAwaitUQzB3aDNnY2VRUnUvdlFjT01zdHFJYWtXeFRUZHY0Q0hSV2tTWEJ1?=
 =?utf-8?B?RklEZlk5YnF1d1VIakxBTzRHeVNwK05RNW00WDF1aGIxV1ZzRHRwMHNObmtY?=
 =?utf-8?B?UWd6dGRqeExESUlmVG80dElWc2t1cHhDdTZiR3R0N2I5RDNXbWRyVk1Pam9p?=
 =?utf-8?B?eTkzc2tWdEt1SUgzbHV3MUl1RVp4d1JaUGF2TjJLQkVGZ0NkMHNZWkhSSjhk?=
 =?utf-8?B?RVpGVDNDZEZmMWpiRk5ZaVJaUXNiRDRTQ1RSQUlLTzFGc2FUQktmRVdjdVpN?=
 =?utf-8?B?bVFOa2QxelRrWll6VVRsUEJWd3Z5amw2UXIyak40Wlk4WW11SUNDRS9ONGlz?=
 =?utf-8?B?VFBKUWR4ejZYbXNiK3J5MlBDaFIzdk01M1FqNXhXOGpSMHg3ekMxQllIbDk5?=
 =?utf-8?B?NDZiWlFGaXd3MHlET3prRzJkZFZlWFNHUXM4aG1QVHk1ZysvQWE2WHIwcmM3?=
 =?utf-8?B?ZXlaQnZLQVFUTmxwOG5TWFNLZEttaGdWRmZ2dkdhV0tNcS92WkNuZ0N0cklK?=
 =?utf-8?B?VENDd2xEbVg4ZXNzSURnbHU1OWh4UEpvaDBTZm1ZODhOc043eGkwTlU2Rm9a?=
 =?utf-8?B?dXYzZCtKM1RFdXMrekRPc0kyM3pJdTB6Z05XTmd5Uk43UzJzNnc1cjYxMGV5?=
 =?utf-8?B?VVFSZXBGUHVsdDY4TVFPaVVqVHRaT0tVcG1URnFlVkVMUHBGdFlJUzJHOUxE?=
 =?utf-8?B?TGttdU9FSEJlOEUyZjM3SWZkY0I2SnFtQ1dxTjQ0M21xVkV1RGdUVDNFdEc4?=
 =?utf-8?B?dWQrSW1kVEw5WFl1eGIxY0ZtZUlNZ1kzdkNsT08waDRzU1BqL0d4OWpvU3NV?=
 =?utf-8?B?UHRRM2tzYmxMUTB0NG5KZjF0dkdHOC9SL3ZuTHBMTysvbEMrMGpLVHhvNUl2?=
 =?utf-8?B?SWVQWVEvaVhINkdnQ1dydmNsamhIQmxDSzFxZWl0NmpXSDFvZWZpV25PaXlK?=
 =?utf-8?B?aVU5TmVTZjZZL1JjbzA5Q0t5OXdGOEFzcHV1aDBzRHYza1JUb1dvRVJ4anZt?=
 =?utf-8?B?d2Q5WlE4MkN0QmsvYTNLV2E3TmhoR21RbGEra1BNMUNFdlBKRUs4ZW9ETDJ3?=
 =?utf-8?Q?fQvBremoZ0LhsRLWR9?=
X-Exchange-RoutingPolicyChecked:
	ZY6Wksph3i0Rf0j2b/TIqYVI4n5AeMj0Xo1wcvZ8j5FeYizT9b0q4aerkXqJnFlV25ukAGDKvKiGYCJVmwGfCPFcsvX8ZBl5McTkZuFasybFpBKXyPetB6eKnKGFvHPy4AHD0/zfWu/cBr8tnfzJUdXI5IU3K4S5ZDqF9bCz2yygw5TQ9wHqVyvY91Duryz5u8950+/rgHge2juEfdmx6O5zNADijmp4sQjTsxYRMKAQcQ/+9KCkYrJp7fzuNQ8puguIQndTBvOCMPMv9APhOOwaQ5jnmkpQTbqWTTOcGqSuLDP0Nwu/didKZmzvzJ8EhYSgzuV0jwr0EPwSq4nJbw==
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: bfbf6b2f-c4e4-42e3-a868-08de93f98f6d
X-MS-Exchange-CrossTenant-AuthSource: BY3PR06MB8195.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Apr 2026 16:28:39.7918
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9Ej+m6RRkozPE8iWw59wszUk1icSuvMyDAgFRML8KexoIEXclux90ifrBeWpOGUU
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR06MB11157
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDA2MDE2MSBTYWx0ZWRfXyYJ5B12vJo1Y
 UH7CzySVcXE3f9sWx6CuPr818MaWWAsU3HkQeANrEV5v1/qJte70WIK24QVmzDl2oSZJFrd6Fgr
 MVY44tLUTdDI+fkVqdDMPgkzeQ9phVBfXiALHGdvscL4qoyv2np/rGRVOk/a5z8R1rZ7CdRf5XC
 cOx4U4kgBJWOTe7FFeBhWPO89mvukwY4S0eN9rxTYuyMtw+x3+uVRcksR4iFvKJKo0rsSnbhivt
 5zjBHXE7gla5ZQ0mbVtlKIJWn/b5aeYtiYO+sDY99PXzf+q7qhMttMULO99DHy8Qf4pi++y63uD
 n4tKgk5DZ7VXOn+uBvCMugW+ajI34NslcCN8FhuEIsGg8nQUBjbNqoe7o/CPjkJaiOgvzuJtmU9
 VEK42Unld2/KoZqJWbmEHNZWuOJiHeFjWOkOBVP4R82+8cmGvr0GoDvjlUwqeom+V7owgMSYBFn
 F7fNf6I//or7ZEyYmaA==
X-Proofpoint-ORIG-GUID: v9usZ2_ZHHXJfDlkJNETiC4pekdkNRjv
X-Authority-Analysis: v=2.4 cv=fLs0HJae c=1 sm=1 tr=0 ts=69d3df39 cx=c_pps
 a=j7tsCyGgeYHcZD8MHzM6Gw==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=A5OVakUREuEA:10 a=lre9DRYkaIEA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=ZyELlZqCvD1aXIDzc3I-:22 a=eq2kN7DOR4gdPMKheIxe:22
 a=CtBGVXZjVgl-w1EsbfkA:9 a=QEXdDO2ut3YA:10
X-Proofpoint-GUID: v9usZ2_ZHHXJfDlkJNETiC4pekdkNRjv
X-Wisc_ValidFrom: true
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-06_03,2026-04-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 lowpriorityscore=0 malwarescore=0
 suspectscore=0 phishscore=0 impostorscore=0 clxscore=1015 adultscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2603050001
 definitions=main-2604060161
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5
X-Spamd-Result: default: False [-1.89 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[math.wisc.edu,quarantine];
	R_DKIM_ALLOW(-0.20)[math.wisc.edu:s=selector2];
	MAILLIST(-0.18)[generic];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_NO_TLS_LAST(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_RCPT(0.00)[speakup];
	ASN(0.00)[asn:5645, ipnet:206.248.128.0/18, country:CA];
	RCPT_COUNT_ONE(0.00)[1];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_SEVEN(0.00)[8];
	TO_DN_ALL(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jheim@math.wisc.edu,speakup@linux-speakup.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	TAGGED_FROM(0.00)[bounces-1581-lists,speakup=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[math.wisc.edu:dkim,math.wisc.edu:mid];
	DKIM_TRACE(0.00)[math.wisc.edu:+]
X-Rspamd-Queue-Id: 4ECE93A54B3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The Speakup FAQ used to have some stuff in it about using rawrite and 
boot images. I cut all that out. But it occurs to me that I think I 
should instead mention using live images like GRML.

Does anybody use Speakup in some other live image other than GRML? If 
not, I'm just going to write a few lines talking about GRML and 
directing the reader to the docs for GRML itself. You don't want to 
rewrite somebody else's docs in your FAQ. That's a good way to get 
obsolete/incorrect info in your FAQ.

Note: I would imagine some people use Ubuntu for their live image but 
then you probably don't use Speakup -- so that's not relevant. That 
would belong in the Orca FAQ.



