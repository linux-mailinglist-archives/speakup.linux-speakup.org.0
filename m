Return-Path: <speakup+bounces-1467-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id EF481C3E1C7
	for <lists+speakup@lfdr.de>; Fri, 07 Nov 2025 02:19:43 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=math.wisc.edu header.i=@math.wisc.edu header.a=rsa-sha256 header.s=selector2 header.b=QbEvxvhg;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 3E8E33821E4; Thu, 06 Nov 2025 20:19:43 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 1BA5F381986
	for <lists+speakup@lfdr.de>; Thu, 06 Nov 2025 20:19:43 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id B667B381990; Thu, 06 Nov 2025 20:19:35 -0500 (EST)
Received: from mx0a-007b0c01.pphosted.com (mx0a-007b0c01.pphosted.com [205.220.165.71])
	by befuddled.reisers.ca (Postfix) with ESMTPS id E04A2381981
	for <speakup@linux-speakup.org>; Thu, 06 Nov 2025 20:19:33 -0500 (EST)
Received: from pps.filterd (m0316039.ppops.net [127.0.0.1])
	by mx0a-007b0c01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5A6KecML010402;
	Thu, 6 Nov 2025 19:19:27 -0600
Received: from dm5pr21cu001.outbound.protection.outlook.com (mail-centralusazon11011065.outbound.protection.outlook.com [52.101.62.65])
	by mx0a-007b0c01.pphosted.com (PPS) with ESMTPS id 4a7pqna42u-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 06 Nov 2025 19:19:26 -0600 (CST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DAQhdVOcxuCdR8BsMl5t483RPwKqUQSMsk5RO9oaW+6fMorFCd2mX7cbyuvVVDS4SQ7MuDgPTL7nxEp4POmNQ/b2xwTbz77IGXDf5GxqOo5tC5Vatb24l0u0MVbQVBKqc3uSWUPOg3hoE1MIzvIZ+B0GQt+l9X3elqI46/23cooKQSHx3Ix/hjYWf8xMdaYG06Ue0O/54O3J9SqKggB9be2M+kHq826wVAy6K8zQG0qaPZy8KuIEiQCuxjGa2zHgi/NWQ9EhFNwn1BQs6XzaChbnfmDKTZEXV2n2Ut+9fY1ysloOQtAcsf5x0Tzfim+1V5o7/U3fosxgaB3+qG3rsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9nfT7/MtieHTL4Dh/LAoUIx4yQE/4VutngiQRtnibjA=;
 b=MLjuyf5MPyIdDgtI6edZ9mQ1nemgdsViAjfLIpfwVtyoin1FY9CVkSnXUUN3OpAs82lklNu7s+7IUmWW88vLghQlDTx7nlm4n1qSXxDxxRf82nAxTVSyDHer+ROtVRHVDca0BDJ9/KwLV2zB+bDb7kGvDBTUfMtGRP+tjjmKVGWdHA/BQ9HDL8DgV+dgFRwIRc8j/7li+iZtwzwacgrZlXnXiSR6PhbOy2Zi/fUBy7O1enajxGgSjkQnttGVkluOUC8joQ4JuvPD5106j3jp5oMTNntCxr+yyFpY7TFLgtEhuc/dj8B4Y0LYSWx+tszqWmgf5heQg7Df1BgeScez5A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none
 header.from=math.wisc.edu; dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=math.wisc.edu;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9nfT7/MtieHTL4Dh/LAoUIx4yQE/4VutngiQRtnibjA=;
 b=QbEvxvhgP56EtSXIRb99709B8TEeA9DMLhskoqEfstuDzVimt8mHelyAqGNQiPW30T1S0k/ajge4scfQT3DsbyQhabthdjwkSRnEhjS/CfrB0Wovi1HoiORXg8VpZTdaY8QxaAWKAajT4CLcygCBysG7JcIpeBF8eE+9pwHUhkQkiExv18n+dHKfQQ8A0h1oRvyWiFndY0402GELBKiGU0W/PWJ/9pKvuK0JZK9DOaKYto5nmP7/Sxhyw1ZynwfuBvukQ8HU0eriJxN/8vVPt9Lc2YFhsQUDR5fkXxOswfjXlFs5UixGUh7NJ/S0Q6PMtd0xPViK9J1a5iq0CpJcTg==
Received: from DS0PR06MB9877.namprd06.prod.outlook.com (2603:10b6:8:1d5::14)
 by SA3PR06MB9513.namprd06.prod.outlook.com (2603:10b6:806:39a::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.12; Fri, 7 Nov
 2025 01:19:24 +0000
Received: from DS0PR06MB9877.namprd06.prod.outlook.com
 ([fe80::a347:6162:9bfd:9b91]) by DS0PR06MB9877.namprd06.prod.outlook.com
 ([fe80::a347:6162:9bfd:9b91%4]) with mapi id 15.20.9298.010; Fri, 7 Nov 2025
 01:19:24 +0000
Message-ID: <94d5d380-1123-493b-8744-08df2ebfaf63@math.wisc.edu>
Date: Thu, 6 Nov 2025 19:19:23 -0600
User-Agent: Mozilla Thunderbird
Subject: Re: enable espeakup for debian
To: crisspro <crisspro@hotmail.com>, speakup@linux-speakup.org
References: <IA2PR84MB3952FFF80EE8FFE8B416E285DAC2A@IA2PR84MB3952.NAMPRD84.PROD.OUTLOOK.COM>
Content-Language: en-US
From: "John G. Heim" <jheim@math.wisc.edu>
In-Reply-To: <IA2PR84MB3952FFF80EE8FFE8B416E285DAC2A@IA2PR84MB3952.NAMPRD84.PROD.OUTLOOK.COM>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: CH2PR14CA0023.namprd14.prod.outlook.com
 (2603:10b6:610:60::33) To DS0PR06MB9877.namprd06.prod.outlook.com
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
X-MS-TrafficTypeDiagnostic: DS0PR06MB9877:EE_|SA3PR06MB9513:EE_
X-MS-Office365-Filtering-Correlation-Id: 420d9073-8060-44d8-aa65-08de1d9bafe8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016|41320700013;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?bVFLcEFYdmxsOUcrcW5YRGgyVjlicXhDRHQ1UUFFSHV2QWRXZVg0cndlWmlj?=
 =?utf-8?B?UTlJUUtCUTVkMXBKeEV2TWkwSzNBV1BmVnI5bmJPWW1jR1NESFhaeTFDd0xw?=
 =?utf-8?B?TU9rRm9DdkcyMnNrZG9JWGxOVU55T0NnMXJRK2h6cFdvOHJocnVEYlg1YStK?=
 =?utf-8?B?ajlvdEorRU03RW5MZjRVRE1CUEpPaFYvbTY2TUlxc0s5VnpsNXZmeGdxQk5U?=
 =?utf-8?B?d1pNbHlEenpSRy9rekl6WWJzTTY2WVAveWdjTU5Fa0hOUmdPQWxHWm8yamVL?=
 =?utf-8?B?S2dJNkdPMWhZWkRmcUdmV2JTbGUxR3VGS1BpWDluR3ZqdEpERUVsSmYwdks2?=
 =?utf-8?B?bmdGbmxZdVEwUG53RmRqYW5OblpwKzVQZS84MUdDRFpvMzIwOXp4NEo4QVJM?=
 =?utf-8?B?a21XRStmNEpDZ0tmY2ZaMjA2bGYzK0NTL2VsSVpWVDdFeC9EMkM3aW9VR2Rh?=
 =?utf-8?B?ZkFSRVlyckZUWktKWnNnbWdoUWJOc0FKclJ5TlcrMkRpTlB5NmFhV2FMdy93?=
 =?utf-8?B?RHJZNUZVMXVCMjhNYzNBY0pOWnlxUUdFejkwanpCZVNYNVRaWGN4dTBtUU4y?=
 =?utf-8?B?TmRiQmNXY1lOWTRGVVNpM05OZ2tpcWYzV1psQU1wNU80RnpyTVpKK3hsTDJ1?=
 =?utf-8?B?eTVLeHd4QkErNGdUMXhBVDk5a2U4d0NRR1pGdGVGUmxuNUp2TkYzK1ViLytN?=
 =?utf-8?B?V0hJTEZiTVRjL3Uzc0xVTXRCZjVsSXFLbi9taFJzbHBwY01BQ29JWDZXemdn?=
 =?utf-8?B?cmh6VzBBSU82d1JwampXbHRxUVBhbjA5eVYwbkh2N29QeGJsOERuWlFMc2t0?=
 =?utf-8?B?WVllVktKUTMwNmJORFcyZzN4QThnNjNEQ2lFOVNwMHR5SFpGTktsNGx5a3BB?=
 =?utf-8?B?NUducitSeXByZm9nQURERVA0ZHBXVWl1QUVuUXYxRTRNYm8raE1ubWRQR1g5?=
 =?utf-8?B?ejFtOUU0TDVGNFBFZ201L2wyOGJ4NnpFRnNwbXhTUC9EVDc0N0xMS3FlL1cw?=
 =?utf-8?B?TXBjczg0eFB1eklIK290SThYeVA5SlJTcnpoT01UREdyU1Ivc01rdFZYV2da?=
 =?utf-8?B?aTJzVnZBMk8yQWxyTmxsbUpMR0xCOForVDdQc25CazlzaDc3ZHBTM2svYmQv?=
 =?utf-8?B?ditoUnRFcGp5Wm80Ui91UVRDaG92Z0MrNmNhclY3T2psaExEbWhreTNjMjBq?=
 =?utf-8?B?L1pwNjF5L21URDU4ZmVDdm51aGlhZmZxMFNzY2ovZlNCdDhLMDVOWFlQOGU1?=
 =?utf-8?B?Kzc2ODZMTEpxRENIVEJYSzc4QWxWK3A4L3RJN09jNDJDbVlMMjFGTFVyN3RQ?=
 =?utf-8?B?ckJ6M0U3Q1pEMmk2aUxMODliejFPNjVtZ1Z2SmZscXg1citvS1IzekczcHA3?=
 =?utf-8?B?NDFLbGNJVUs0ZWl6VUd0RGdlOEg0cUJ4aGY1SnVTcWZKd0Y4OUhFbkh5cUV6?=
 =?utf-8?B?b1V1Y3lLNW54QUt5RTY1aFc3bExpRXUzcFdkalFOd1BpcVR3VEtCV3N6MjZB?=
 =?utf-8?B?dFZ5c3Btbi81WVF1MDlnRHpkMEJwdzJEZWRyTzZxYUhnWnIrN1dwQnhEYjhG?=
 =?utf-8?B?eEVxOGlkNDA3bmlHU3huaDdpSnVTanM4TDZhYkJxYStBZGFFVFlVb2ZmMWZS?=
 =?utf-8?B?VzZ3cWp6cTlVTnArNld4ZUFCMzVkazl1NDltcW1aWUpIdVFlSU9Za1NnM3lr?=
 =?utf-8?B?Y2J2SUs4bldWbHlRZXQ3cnJ3VEIvbG4yQWhjUFlHOWZpMmFHdDdqU2Vnb3VJ?=
 =?utf-8?B?VU5hektodXBoQTdNUXBLZnpJNVE1RUZKZDNVNXI1eW81YkFVZHJrQmhXM1Qr?=
 =?utf-8?B?QTJoQU0ya2Q1dy9hUFJSejZyTjdMMFhuMU1kNUVjeUpXTzBlQ3VBR09iTlor?=
 =?utf-8?B?N2kwM2tmcFgxSUJ1YmxmUkJ0TWs4cVhsd0FzR0dhWFFUeVlBQ3hwZUJkRUY3?=
 =?utf-8?Q?UFDhpy5UFeheRsI5HDwLjfeCg90O1UWJ?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS0PR06MB9877.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016)(41320700013);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?RkpuM3ZkZndieU9ZZ09EQzBNdFE5djdpcXRHb2xPaGF5MkVzUGQ3RUJXMU5a?=
 =?utf-8?B?Y0hNd3BoTWJKNDRocmJmcXdvM0ZzeUFhMkU0dEc1VEIxeXUvS3R5ZWpFN3ZS?=
 =?utf-8?B?MFNaMXF2cTd5aVpKWThMZUl0Z0RnV1hweGJPRHVyaXN6VnlmNG9OTC9PUk5j?=
 =?utf-8?B?akNSUEZ4UTF1MWVJaWZLYkg1NjdXSzVYamdXblR4Uml1Rk91YXdCNXdsQlAw?=
 =?utf-8?B?VldlZDR5cDBkdU1kc0t4cENmT3dDa3NmWVo3ck9jTnY3Sk42Ykk4TktRdnd1?=
 =?utf-8?B?Q2JGTXEzTXpLZStuRUduOTV4MWNXTkVUWG5uVXBmRTlWUFk5RTY3MlVRMW5B?=
 =?utf-8?B?QmIva2t6Mkd4UnZ6SVYwaXcwWU5VSFlEYVVUd3JjRmloaUZqUkk4Z2xiOUdm?=
 =?utf-8?B?N0N0U04vTnZuYXZMdllqTXdWeE1Yb3JvWVh1S0RXUWYrRUhOU2UxanQ3UGx3?=
 =?utf-8?B?R0RWSXl6aG5RcS9yd1JyN3RoaUNqUnpCMlIxa3Q5Qll1SllOQmxVL1lnSG9G?=
 =?utf-8?B?bkNpZExpWDN6T2kxN0wyUlBsejJFd0puRE0xY2NaYUYrVWMzTkZ1WmVHcnd4?=
 =?utf-8?B?SmtqUlB0QW9FcUc0eEkwUEl5bldQZHQ5Z3ZXMlplT1BvcElFWVBoMEM4RHlm?=
 =?utf-8?B?TmlwT2s3Qkc2UEtETWZ2Q1RVMml5dnZPdHdNK3J1czZUeWdSdTZCSkNEYU0y?=
 =?utf-8?B?RUkyb0p5ZTBuVzdSZE9mQkRIUSt4cDE2c3FpQUVONzNmNm5tenYrVldGaU1o?=
 =?utf-8?B?RTF1M0RWRlpyS3pUWnlQWmJMNWwwTkpuOVczSDZ6b3c4MThQbXpvWG9uUjdF?=
 =?utf-8?B?YkNIT05JVlgwVExWWnlLU3piSDNwNndtdkdRL3R6Vkd1RHVDbXFGd21vMVZo?=
 =?utf-8?B?bnZoTGVsV2xGeWpJRERRLzh0VkVISUJUTktsQjA2S2VVS3diRGFHa1lPRWZN?=
 =?utf-8?B?cUsxSzhLRytHY0xmdWJraWs0OWU3QWdQditKSXh6bVJWVW5QZ2RCWFpFeVY1?=
 =?utf-8?B?L2V1bit2b2pMS1kzVkVXdnM0eHJiSHNXaWhUcElKT1UvNGpHWE4rUU5xcHBv?=
 =?utf-8?B?OTBSMGpmcTEyanZvNzdTV2VPU2lxWGFFTDFEY0MyRnRCMXNxSkxjRjBzUXBP?=
 =?utf-8?B?eFNDSGVjNUdXeVJ6bFlYWlIvM2IwQmgreXRiWk0wT1diNTdLd1YzWDhTR1VQ?=
 =?utf-8?B?eENhR25BaGsrY2RqMloyaUJiaFRmdW9meU9nakpMaFRkZUZVNmEvZjRUTzhD?=
 =?utf-8?B?cXc4eGF1LzJpTWRaLzB2dGVOTVJKNlB2UFVZejBpdW9lbG5MSmpwTWRDUTVF?=
 =?utf-8?B?VDEwOEgxVVM5Ym9KeXA0c1puUExoemJXdlFvZEJuNDkwOWdFOXVMb0VaaHJ6?=
 =?utf-8?B?cEJmK3BiZGdkVzRkajhyaWgyaS9teU9RVTk1ZDBheGZoWVNXV3ZhZnZYai9w?=
 =?utf-8?B?Uy9MVjlQVkZFYnlQWWtpT09zd0dtblZjb2RWeHlyMUdMV1FtUFBXQU1hM2RZ?=
 =?utf-8?B?bmhyTk4rdTZKcUpkcTR6eEV4ZHRONGxOOWNobXAwM1BMSWRrbHAraTdoNmVF?=
 =?utf-8?B?d09Cc1MzRGg5cHNzR0RGaUNFbGR4bDZ2dWdjRll2bG5pMWNNYTQ5YzIrdXBC?=
 =?utf-8?B?dWQva3ZZaWpWNVNtWExXL1kvaTFxMVZxMmxXU0Y2bVdTMVZZQmhtZjNuTUoz?=
 =?utf-8?B?amU1bnVtZi9pakk5TFg3amFsNVpVNGxyaGhmelZqOU1nejBCWXB1czdnVzNJ?=
 =?utf-8?B?QlN1TmIzWEhtaXhLK01aaFpQaG5HSkU3blhrZ3NjZ1MxMXZDbDlYZEJIZ0FU?=
 =?utf-8?B?ZmRXMGo0STYrbXZIbC83cHFodkJmT3pMcmlhK050Y0pMbFN2c2xoWk9pOWgz?=
 =?utf-8?B?WkpvaVpMNUl1ckpPSVNkVWlpVkpLUDE4MGQzNDlFbjRiMXZBeG5pRzBsV3dV?=
 =?utf-8?B?ckppWE1sMEx0czUwYmV4WTBKSWxJb0tkMksxdXU3R004KzlqdmlSRnhhSjAv?=
 =?utf-8?B?SXJZZ285K0tsSXRUNmd3WmxUVzNKb2xEbm1vRVBBTTkxaVp0U2hZQ2NoaXN3?=
 =?utf-8?B?UUFjL0hBbWZBdzNDZUFuWGNsUnk0UmNCL2tNV3AwdjFzcndoL0RYcDVTUTJJ?=
 =?utf-8?Q?n3W9zu1bGXnsOtPO7voTH7aby?=
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: 420d9073-8060-44d8-aa65-08de1d9bafe8
X-MS-Exchange-CrossTenant-AuthSource: DS0PR06MB9877.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Nov 2025 01:19:24.3806
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: N4roPWFlAUrWLof30ScgeddBKgKO+ieOHBgi1CJhcjngAs5MdwniTJUJXR/L5Nvg
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR06MB9513
X-Proofpoint-ORIG-GUID: Di--j4llRr4A2iYBa6WgnQCVMVBjrka9
X-Authority-Analysis: v=2.4 cv=d634CBjE c=1 sm=1 tr=0 ts=690d491e cx=c_pps
 a=BToDjy1G2hQwEUS1Uhc31g==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=lre9DRYkaIEA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Vcls6Hhrdduh2KGrzRsA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA0MDE1NCBTYWx0ZWRfX3bsjjz4Q8Arq
 3bbAjFJAnMbXZKE6Jo0kUU/vGCl/MkgI+S2VhE16AigGxVMBDAQ9R5uZ0nVsKWhJAIJwhlujMnL
 U7+0xyRewR64fArkPOk77Tim41s26rJonqoyXpUenK5k2O97p9G2J7bJ4P1k74Cfa/nnbJDXxst
 cvpp8GqXJNGQKM8DjoXL8cmknhVO/iHvy9FG+qU4AQiTobbSl/RNsHEeQzKABUTIYRMeGklm0zI
 2Yma7Z1CeptbGT+28n+zrQjqn2zV0rUpqhR3r7twXBaxrkl5gENsRd5BsqJzzETqxSo+Vz4EdjO
 63FQZ5YL4Lw3boPt0htoHpH897AvTmyUJXHyKeEUk+A5Wwc3LA1oUKZ44oBpLzlfhnEkuOqYz4w
 Oy4BHYLf6FabpXv/xAgd85BZb0rNrQ==
X-Proofpoint-GUID: Di--j4llRr4A2iYBa6WgnQCVMVBjrka9
X-Wisc_ValidFrom: true
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-06_05,2025-11-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0 impostorscore=0 clxscore=1011 priorityscore=1501
 lowpriorityscore=0 suspectscore=0 spamscore=0 malwarescore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510240000 definitions=main-2511040154
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Second question:

No, it is not possible to get espeakup or any speech engine working with 
GRUB. The best solution I have found is to use my iPhone and an app 
called SeeingAI. You can mount your phone on something like a selfie 
arm, point it at the computer screen, and run SeeingAI. GRUB also can 
send it's output to  a serial tty. If your computer has a serial port, 
you can configure GRUB to send it's output there, connect it to another 
computer with a null-modem cable, and listen to the GRUB menus with 
speech on the other computer. I can explain how to do this in greater 
detail if you are interested.

The main accessibility feature of GRUB is that it can play a series of 
tones right before it displays the menu. So at least you know when to 
press the keys to navigate the menu.


On 11/6/25 11:45 AM, crisspro wrote:
> Hello.
>
>
> I enabled espeakup service with systemctl enable espeakup, butn 
> doesn’t announce anything., espeakup is runing.
>
> How enable espeakup correctly?. I have a second question, is possible 
> get espeakup for grub menu? I need this to load other OS or load 
> snapshot.
>
>

