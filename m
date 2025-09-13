Return-Path: <speakup+bounces-1357-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 0030EB5621A
	for <lists+speakup@lfdr.de>; Sat, 13 Sep 2025 17:56:46 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=math.wisc.edu header.i=@math.wisc.edu header.a=rsa-sha256 header.s=selector1 header.b=NOdsCLaB;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 56C7F3830C4; Sat, 13 Sep 2025 11:56:46 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 3162B382722
	for <lists+speakup@lfdr.de>; Sat, 13 Sep 2025 11:56:46 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id AE28C382809; Sat, 13 Sep 2025 11:56:38 -0400 (EDT)
Received: from mx0a-007b0c01.pphosted.com (mx0a-007b0c01.pphosted.com [205.220.165.71])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 3D70D382722
	for <speakup@linux-speakup.org>; Sat, 13 Sep 2025 11:56:38 -0400 (EDT)
Received: from pps.filterd (m0316037.ppops.net [127.0.0.1])
	by mx0a-007b0c01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58DE0MUb012704;
	Sat, 13 Sep 2025 10:56:19 -0500
Received: from sa9pr02cu001.outbound.protection.outlook.com (mail-southcentralusazon11013025.outbound.protection.outlook.com [40.93.196.25])
	by mx0a-007b0c01.pphosted.com (PPS) with ESMTPS id 4945yac1x6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sat, 13 Sep 2025 10:56:18 -0500 (CDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Gv7QD4xjJTIijYBxPqkOYpqp6EyeO/F9CLOzju0OvwSOPPTZcf0IWHvqhgnenFpgV9abPoQuBHrZOHL/LA/HIKJ71wmUul8sV2j2RlaG3PMAepAb6A6vkNFVhhCT2Dszdldm5MzYnJz7l0v52YJaNLNh0pgvdDh4viUXYdbBDtednT7/uuAWEmA8WsxvjkvaQqs51/hZlV3TCdr+Buan5MGe9OG3wYYFLPkK47LirVdqIjhMElPLnPQtAvBxNUcVZgryGVayd1Zqv9Twtia3ng4BoUM3uZob1n85m4DA8SVIhj1z5wMMzEwZwwCrpE5T+CPRUACFMyvzDueUnsfFlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YlYVyIDBFhn+syWEqZpcjSkNMcvyO0h9jJLMfiCMlWA=;
 b=I7gw/To3y4Yd3OOoEQHqZBIt0dNPi/tPng+hXEhsEnrVFrZB/0AcdkmU3iHTKCvC01a3PQYigALeCK1QV2A8eEBUVHiG1L93oRY8Xd9qempgh0BD6sV9iPhC6pWsnvx9T1Vr+il771af7TrfW4egV2cEvhbOHuJt5YRXSXSxvvGnLvz0gmjV76i4Hh65kbEdRLxDo3UnXmJoQRJhRXx6j83wintqL1i7n2PE4TzoQPL0PYo1W9c8Hy1izFh4yAsVAbWGEGBVtoigx0nVnMcLLIeH+BUxlAoIJeGZnGbJCDQzSwrkroWwxNEMx/jsIuHmtsytkhUdiOpSkItud1wyhQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none
 header.from=math.wisc.edu; dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=math.wisc.edu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YlYVyIDBFhn+syWEqZpcjSkNMcvyO0h9jJLMfiCMlWA=;
 b=NOdsCLaBKLZLD2l9O45rZhdncHFCY/CfpO8opnxHLqyt8xtBFGDww0aXkfKEtPi34A6ewQ8m9ugbJFLNK+znk+9gYaVtbAaOVvaLAo6+GdwOpoR4kZDjOB4oGVOF+Zze1EA9OadIqpHujGsF7JLB2awr4VeleR1qFpT0cnn55qg6pqGe+bU+N0g01uaiuhgOikBEDsaCgfmcOxLT3rdKRefPpuz6kg/kpYRNq8v8YHX33gN1BUxecswMxisuxMKMZM+6VJINWQKDfRBYsAJ/KItPlam0J5bK5gX2qcU43tc1Wf1hhoeplKMoHBXW86UwZl7ykenpW44pIvI+JMiEnA==
Received: from DS0PR06MB9877.namprd06.prod.outlook.com (2603:10b6:8:1d5::14)
 by PH0PR06MB8415.namprd06.prod.outlook.com (2603:10b6:510:bd::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9115.19; Sat, 13 Sep
 2025 15:56:16 +0000
Received: from DS0PR06MB9877.namprd06.prod.outlook.com
 ([fe80::a347:6162:9bfd:9b91]) by DS0PR06MB9877.namprd06.prod.outlook.com
 ([fe80::a347:6162:9bfd:9b91%4]) with mapi id 15.20.9115.018; Sat, 13 Sep 2025
 15:56:16 +0000
Message-ID: <6bbda48f-d452-456b-88b7-33e8f10a9775@math.wisc.edu>
Date: Sat, 13 Sep 2025 10:56:15 -0500
User-Agent: Mozilla Thunderbird
Subject: Re: Question about blind CLI use (was Re: "your browser is not
 supported anymore" ...)
From: "John G. Heim" <jheim@math.wisc.edu>
To: Jookia <contact@jookia.org>, Gregory Nowak <greg@gregn.net>
Cc: Karen Lewellen <klewellen@shellworld.net>,
        Chime Hart <chime@hubert-humphrey.com>,
        Cleverson Casarin Uliana <clul+speakup@posteo.com.br>,
        speakup@linux-speakup.org
References: <202509111603.58BG3W3p018143@nfbcal.org>
 <7a04c6dd-c761-4445-b53a-3c4525cf2a87@crosslink.net>
 <579c5d9b-5ba1-4029-982a-01295fea3a61@posteo.com.br>
 <Pine.LNX.4.64.2509112223130.3830807@users.shellworld.net>
 <6d3f190e-733a-e5d5-a8f5-cc6eb2c05e65@hubert-humphrey.com>
 <Pine.LNX.4.64.2509120106350.3832376@users.shellworld.net>
 <aMOwSwrEWTBtFn60@titan> <aMTOpzhGX72PC_2S@gregn.net>
 <aMVgIfSRDN3Uewj3@titan> <242896ae-8567-4e97-a3e1-de09a8efecaa@math.wisc.edu>
Content-Language: en-US
In-Reply-To: <242896ae-8567-4e97-a3e1-de09a8efecaa@math.wisc.edu>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: CH3P220CA0011.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:610:1e8::26) To DS0PR06MB9877.namprd06.prod.outlook.com
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
X-MS-TrafficTypeDiagnostic: DS0PR06MB9877:EE_|PH0PR06MB8415:EE_
X-MS-Office365-Filtering-Correlation-Id: 2c97a199-c992-48cc-7b80-08ddf2de1266
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|41320700013|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?d3IzL29KU09Od052UDJzM3lDZ0FFQkV1Vy9LOUNweFI2NU53M0Q3Y043MjJK?=
 =?utf-8?B?bXExeWRRWU1MSENMeDhDZmxwbHVTOHdWOEZpQWp2a0p1VlBvV29GbFcwWmd6?=
 =?utf-8?B?VkUxT0ErSXlYRitjTzcyYlV4dW1kN1VMUkdXcXlDRThlYlRMekNWZ3BDUHZX?=
 =?utf-8?B?aG5HZTBqdzdYOGU1bGNhM2tyaHdZTmZDWk4wU25uVHcva2psWG5iM3MyNERi?=
 =?utf-8?B?ZGx0TTY3K2pOK2NiMitwK04xWTY2ZTZDMW5CVExEMHdRalR3Sjh0NlRDZ0hY?=
 =?utf-8?B?Q2VoK09qaFdDUTdaOVhVa1RDOWhCWEZ6enZvYmdMdjBlaG9UWG8yWUZqKzZK?=
 =?utf-8?B?ZjE4a1M5dWVRc0QvK3djNUNZaHI5OWl0UGZvN3VWNVg4MEk1T1RsU3llMTY2?=
 =?utf-8?B?S3VnSVo4dTJnc3JpTkhrSVdTVkVzMHRZa21NNytRRG9qS1FhR0xCcldRLzRy?=
 =?utf-8?B?RzVDYTJRaWc0Y2ZuOWhpbDF0NFYwMWtubjc0MnAxK0FDdEZjREhSbWZmdW5Z?=
 =?utf-8?B?RndOU0M5TURWR3NvNUpycGhqRXpKR01wWHdmWjBaaFY4UFYxWHBzTEFsSFo4?=
 =?utf-8?B?U2ViYzVzN3h1S2t0b0lIQVAwYlJTR09iaDRZMjJOdUxUbWw3QlNoeE4xNXhy?=
 =?utf-8?B?TUhnQWxYbHFZZHR3RzFYVGRiRUZrR29VdXY2SGJzRUFDUTB0Q0NVc3RZdjVr?=
 =?utf-8?B?ckN5M0wvcDBwczJaL0czVWo4d21oOTdROXFiV290a2NKQzBSWWxBZmNlb1dn?=
 =?utf-8?B?Rk52bHBtNG5VUXY5bWhtdUdwaC9rcktsYUU5cS95aGgxNXBCTk1sVTJVcnZa?=
 =?utf-8?B?NkFrSzc2QjZ3MU11M0o1cDJKaUNyUlF5UG80ekw0UUJYN2hQczhlZ0kvOXR5?=
 =?utf-8?B?b1NwY1d2b1p1bEgzTjBxbXFHYThHTmxqNGFXZjNZclp3NGZaOGhzM2Z6TExs?=
 =?utf-8?B?MlE1QmVUQUxSdDdLVXdZdGtObmIvTGJHNGR0TVNINWJxd2U1L1Rjb3dtWmxi?=
 =?utf-8?B?VHU2ZGJLZHhFVmhHa1ZVeVpoYTh6clpTdGxxcy9zN1lmaE5xa01SVkVmWnZq?=
 =?utf-8?B?bTQyZTNSa21HNGhtNy95aVFjSFRnT3FnY0tiOUJiRFV6bDZCM1FkMkUrcytp?=
 =?utf-8?B?b0JrclZBQ1MrRFZXV2JUdW85MzFldkNja1I2WUxNK0RzNmZNNVUrNk0vTVND?=
 =?utf-8?B?cjl0aWV4bFJHY2ZyeVVxYVlJY2VQYXE3OEdQMmJsWXlqRHd0eXdvY2FOYndu?=
 =?utf-8?B?ZGp1Z3A1NVJjaENZcmE1VzVxT05KZ0xoaTBXbjJKQnZ1RmFJclVzSVN4Ylgx?=
 =?utf-8?B?R3NuVnUxQVR2aE9EZlB1VXFhUmxrTHRkT1Fza2czMFR5Q0lVTHBwaXBTZWZ5?=
 =?utf-8?B?V1hHQzZvK29USFlvQkRWWVpKOVh3Qk80b3ZtU1lVZ21wamtQRFpzK0prWXhj?=
 =?utf-8?B?ZitBUlZ0bTVjSE5zUzVMckNMRG9wc0szVVNwTGxmNFNlNXJjbG1Wc2VDanp0?=
 =?utf-8?B?ZmJCYndiY3ZKUitoQzBkczRvcmVweThkZkNQQXVRTVE5cVErVWR4MFE3cCta?=
 =?utf-8?B?UlUybnNmZExIT1ZPb1hHdUFSU0JCUDRYZGo5a0oybHhZTzNWRHRNcU1sSUJF?=
 =?utf-8?B?U1FpbURUWDUwSy9SS2JySWlnY21tOFdTV1EweVR1bFUxRXpwaUF2QlNETUo3?=
 =?utf-8?B?V1NTRWxZMEIyY1dMTjllRU1vY2pyd2FSaTdNdUlFOXBmVDVRNDN1SSt6T2I1?=
 =?utf-8?B?dUdEM082dTJaN2t4bXlTNGdWcjVjRWJXTG5ZUklFRWY4Y0FocVJ3dHZISlVO?=
 =?utf-8?Q?M7dMndtw4sHadwzWNX1CX0Ew87DefKmdstugk=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS0PR06MB9877.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(41320700013)(1800799024)(366016)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?cUFWZjRZbExqSEpadVFyTEdXbGFzazRjYm5GTy9Xc3lveUVQelpuZEMyQlI1?=
 =?utf-8?B?YkRzSzJmZUtoMElsOWxPNkIwOW9POC94RFhUOWkvRjVpOXZZOEQyY0tYMWwv?=
 =?utf-8?B?bE1XWVJWdy9SOXkzcjY5RlJmd2k3cDEwOUVNSUdDM2NyNDJ5ZHZuNGJmTmtW?=
 =?utf-8?B?U1F5aXBYNDBLVm5pR3JSOGNPUXZMUVYrdnNldkNKd3VZVWt4d3d6TWJxSXpq?=
 =?utf-8?B?R3lsR01CUm9wSmlEdHJ5WlRhVjR4QW5PU3g5RE9HTXUwUEZBb3VyT0V2Wmh0?=
 =?utf-8?B?ZllLTFNIRitsVHFnTXIrbW1mNjRzWWlJV0d4aVdwRnJOckNGUnJqbHlZRlJF?=
 =?utf-8?B?U01SYTVFM0QxdjN1aWg4Rjc2WHBDYXk2b1p6Sm15dnk4b2tTanJ3U2JKdDc5?=
 =?utf-8?B?U2pucUpYZmE3YUU1REJ4RUo3Ryt0NTF1bmxUSUNzeHErUkZ1WGxuc2ZRb1hh?=
 =?utf-8?B?ME0zankwRThZNHE5c0I3WVhvR1hrazRzazVhM0I2ZUZRS0RORXZLZU5uTEZV?=
 =?utf-8?B?MGR2TFdDaXp5K2RWRmRCRjJJKzQvQUVvZU9pVi93cnBUOTF5RU1LREVmM3Jl?=
 =?utf-8?B?RFNWZUdVV3VLY0g3VUQ4NTlhZElpVVluOU9ObHZwMnFIbzF4amNxb1dzOERl?=
 =?utf-8?B?bCtWSjNYOUhpRW84ejBsZ1NwalJWU2VSZm01VUxROVFEcTZhUlJLaHZIVVdG?=
 =?utf-8?B?Zm1OcHRiSWMzMFpOSk40a2FtSDhoM3VoTFlOMjE2bDJJNFl3MSt2R2VPMTl1?=
 =?utf-8?B?QVI2blpMMU1XcTFxN1ltOTc4NGVsaWRzSURhaUlPTXdmY2VJbGE2VlRZYWkz?=
 =?utf-8?B?MHc5b0taVnM1MVBmcWU0MzZ6Q1YxWHpwYVRSd2tqZFFMMDVvOVRWQlNRR0Jj?=
 =?utf-8?B?ZHdSRThZdzZRVTFOKzIyZGIzaTE3bWFIMkRRVHNpUk0xM2pFZTlJQk5iVEZw?=
 =?utf-8?B?cmJUMG16Rlg2R1ljMm1rWWRFT0cxYy9UdlROZllUSmE5a0lQWDlyM2JOWUlm?=
 =?utf-8?B?R2R0Z1AzYTV6Z2lyenJJQlJLUzlGZWt2VGI0VHhCVFVZYjBqUVV3dy9kWTBT?=
 =?utf-8?B?UnBHY3BYMGJrV2xsUG9OOEJ3aS9ZaW1venJ5NnFaeE1WNTJoMW1UNGVoRHRM?=
 =?utf-8?B?eTVqNGQ1SDF1Tjk5ejZpc1RGdGxPRTVJTXpOdVZFZ1lKS0taMSthUGtBdTVz?=
 =?utf-8?B?NTBOK3F3dVpYTzQzd1NIWDM3aHh4NG5Vck5yaUN5d3FpaVZtUXlVYjE1STdP?=
 =?utf-8?B?TGhmeGZCZWpKN2pXeWhPQlY1WitjbTYrSDBpMEN1cXJsMWJwdkpPR09wV2t3?=
 =?utf-8?B?SjZzOXR6U2Fxb2VCVzJIb0RscE51eU8wTnd5a1NQZFZXVFlOOWpQeWRicURU?=
 =?utf-8?B?eUJva25RN3lMdFBDY2E4TC9DdTBVWiswMGdZcExpbnB1MU5IU2lqR04vejVT?=
 =?utf-8?B?MW9qREpaUTRuOWNWbDJ6R1ZWT09tZHh6d1VleXZxSUpGdGR4N2o1MU5SK3Jw?=
 =?utf-8?B?WVI3UTdMSHkrTVg3NjNGMlNkcXB1dVlBeWVqay9GYzZJcWpTZi93WW0vZkVT?=
 =?utf-8?B?d0ljYmlKVTc3OXR1M1hISXpRcHpkRFJxZWNDN0lBcjJrT2wzK0paUEtxQmVK?=
 =?utf-8?B?ZFJGWTZEVlk0dTJVMkp4Z3EzYkd2ZjFTVWJCMy9WcW5XeE9CbzlmRG01NXNl?=
 =?utf-8?B?NlNCbEJoM3Z6M0l2U1VNQUM2cFNqLzJLaml5bkxHY1cyQlVBTCtmSUV5ekZC?=
 =?utf-8?B?TFJ6K00vMGRzQnJhNkVLcUZ1Z05BOWUxbDJDdTZvSEtFWDdreUtoRUF0dndy?=
 =?utf-8?B?R2w0bTc5RTBVRmtiUDZuc1M3Wm1Gd2gyTlpPaFBJUnR3UHNIb1FvNEdzNWxD?=
 =?utf-8?B?NkRoSmNnZXNJbGcycExub01xZXNiZEtXQ0xGeGF5VGtaelFUdjZoNmdSZWdI?=
 =?utf-8?B?T1RULzhqMWJac3BtV1l2ZzBhWERSbFh6UHc4WGhUNjFjb0hCaVV6a1VRQ0to?=
 =?utf-8?B?TXg2NGVVWlVxV296VWpqTW56QTVLakdoeHpuYXlGV1BuMTRSTU1uUnRTeVpy?=
 =?utf-8?B?eFRoMUUvK3ZzVWJEdi9rZGs5V3k4UGpIVXd2Qk1CMUlCcTlNRGZzNEdEUHFM?=
 =?utf-8?Q?B7z9l8lZfkMGhv2XIFRn40BGs?=
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: 2c97a199-c992-48cc-7b80-08ddf2de1266
X-MS-Exchange-CrossTenant-AuthSource: DS0PR06MB9877.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Sep 2025 15:56:16.3460
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4mc+lk5FYGcHxaL9hZdaPjMar68cDRfvCvqS8RmNCqyOw+G0ep13x+D94rCfkeMI
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR06MB8415
X-Authority-Analysis: v=2.4 cv=VKbdn8PX c=1 sm=1 tr=0 ts=68c59422 cx=c_pps
 a=XslAgrSL5Auaid5C2fKBmA==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19
 a=R3fr6vWxGIgF0CYV:21 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10
 a=lre9DRYkaIEA:10 a=hEK2XftRAAAA:8 a=LNhb960rAAAA:8 a=q5txbtUnAAAA:8
 a=sUCyV3MoaFHil6bDv8EA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=pvvZm7_9ER1OwvpV3Ftp:22 a=duXMUGqUtLRgrHROm9qa:22 a=RsootnAUgZ_jVqzlXDew:22
X-Proofpoint-ORIG-GUID: 83Vs8l3YyIobGaZehPYaaI-vD14vIvpD
X-Proofpoint-GUID: 83Vs8l3YyIobGaZehPYaaI-vD14vIvpD
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTExMDE4NyBTYWx0ZWRfX4liymaB+1dIZ
 fP8Wn6rSo2cnh2uY7r7Qx7GxY7BwGAazLSpGS6zO4HfqEJmxDzEFpvPypSgv+5ieFm5CZTuP/MQ
 g11XyJy5NEkhW230z8iMvakrYpfaTfR5L+6Apu7EwooDFLdxGUoXTpC0ZdCvY+nw2D9eO98uGkD
 8E+QkVGxR9LhCnPqmdcxaacrvxwC99MvDiw95p7aRnYqDR5EIUj2J+X/9r5BtjHDedfchEKp3u8
 edQc1L7ONhIRX4F4IcPg1EwkZVFhFx1WZVFOFS/Rnd/+n5T1jKyXDRG+1Bhh86Ntw46hRLFfdl+
 SnM9ZwNlTn/fNDNynZyv7RQQPFao5rskprwHS+8UPiz58sl+xUjUg8RSqZuLwmWi6j+MH8BJh6r
 g1JSFyaM
X-Wisc_ValidFrom: true
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-13_05,2025-09-12_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 priorityscore=1501 spamscore=0 clxscore=1015 impostorscore=0
 adultscore=0 phishscore=0 malwarescore=0 bulkscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509110187
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Oh, here's another point ... At one time, I had this really ancient 
laptop. Linux runs on hardware that would choke Windows. That is true 
even today. As the people on this list will attest, you can run Linux in 
character mode on a 20 year old PC. I had my music on this old laptop, 
listened to books from Bookshare, read my email.  Did everything.

Anyway, my laptop had this old proprietary backplane and at some point, 
the Linux kernel developers dropped support for it. I got on the kernel 
developers group on Usenet and asked that the driver be restored. Linux 
Torvals himself responded to my message and had the driver added back 
into the kernel.

Maybe it's not quite like Bill Gates responding to a technical support 
request on the internet but it's pretty close.

Two points here. First, Linux runs on everything. Second, the support 
community is great. Admittedly, you have to be pretty knowledgable to 
fix a lot of things but there literally is always a way to get it done. 
After all, in the worst case scenario, you can always edit the source code.


On 9/13/25 10:35 AM, John G. Heim wrote:
> One of the biggest impediments for a blind person using Windows is the 
> cost. It's less true today than it used to be. A Jaws license was over 
> $1000 at one time.
>
> For many years, it wasn't even possible for a blind person to install 
> Windows. Well, I used to do  it via Linux, no kidding. I booted into 
> Linux and ran the Windows installer in an emulator with an answer 
> file. That worked really well until it didn't. At some point, 
> Microsoft changed the installer so it had to be run in their pre boot 
> environment (whatever).
>
> Even after the install, I had to install a dumbed down version of Jaws 
> that worked for only 40 minutes.
>
> Also, there was a period when there was no screen reader for Ma Cos. 
> There was some 3rd party screen reader for the Mac. The developer 
> dropped support for it and some time later, Apple released VoiceOver. 
> I was lucky, at the time my job did not require me to use a Mac. But 
> the libraries at the university where I worked had to get rid of their 
> Macs because it is against the law to have computers in a student lab 
> that are not accessible to the blind. BTW, that's why Apple so 
> suddenly started caring about a screen reader.
>
> IIRC, at the time of the above events, I was using both Speakup and a 
> GUI screen reader called Nupernicus. I remember walking out of a 
> meeting with a librarian to talk about screen reader options for his 
> lab and thinking how lucky I was to be a Linux user. I believe that 
> particular library replaced most of their Macs with Windows machines 
> and paid like $1000  each to Freedom Scientific for Jaws licenses. 
> They put in one Linux machine just to see how it would go.
>
> The computers in the student labs in the Math department where I 
> worked were alwys Linux.
>
>
>
>
> On 9/13/25 7:14 AM, Jookia wrote:
>> Hi Greg,
>>
>> Yeah this is unfortunately true. I'm glad FOSS is still appreciated 
>> by people.
>>
>> Jookia.
>>
>> On Fri, Sep 12, 2025 at 06:53:43PM -0700, Gregory Nowak wrote:
>>> On Fri, Sep 12, 2025 at 03:31:55PM +1000, Jookia wrote:
>>>> I know this is the speakup list and I'm talking to an extremely niche
>>>> community here, but I'm genuinely interested to know: Why do you use
>>>> computers this way instead of like Windows or macOS? They can do much
>>>> more useful tasks.
>>> They're both proprietary operating systems. Windows essentially
>>> hijacks the PC these days, and dictates to the user how they should
>>> use it (E.G. requiring the user to register an account with the
>>> developer to set it up, dictating when and what updates the user
>>> wishes to install, and so on). MacOS is tied to hardware from one 
>>> company, and only works on
>>> that company's hardware by design.
>>>
>>> Greg
>>>
>>>
>>> -- 
>>> web site: 
>>> https://urldefense.com/v3/__http://www.gregn.net__;!!Mak6IKo!PJ5X0c86hX4IZtoBfv1kpLI0rcSQhBtXAThLGAI94dOL6KYPF7-9QJySUhuUeXnUO8FQFZp1QNEHanR6Yeo$
>>> gpg public key: 
>>> https://urldefense.com/v3/__http://www.gregn.net/pubkey.asc__;!!Mak6IKo!PJ5X0c86hX4IZtoBfv1kpLI0rcSQhBtXAThLGAI94dOL6KYPF7-9QJySUhuUeXnUO8FQFZp1QNEHOOMsI_E$
>>>
>>> -- 
>>> Free domains: 
>>> https://urldefense.com/v3/__http://www.eu.org/__;!!Mak6IKo!PJ5X0c86hX4IZtoBfv1kpLI0rcSQhBtXAThLGAI94dOL6KYPF7-9QJySUhuUeXnUO8FQFZp1QNEHcie2CdA$ 
>>> or mail dns-manager@EU.org
>>>
>

