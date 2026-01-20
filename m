Return-Path: <speakup+bounces-1521-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 0E3E9D3BE19
	for <lists+speakup@lfdr.de>; Tue, 20 Jan 2026 04:59:19 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=math.wisc.edu header.i=@math.wisc.edu header.a=rsa-sha256 header.s=selector2 header.b=dQqd10EY;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 6DCBA3818F6; Mon, 19 Jan 2026 22:50:34 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 4C71B3818C7
	for <lists+speakup@lfdr.de>; Mon, 19 Jan 2026 22:50:34 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 44DC5381843; Mon, 19 Jan 2026 22:50:28 -0500 (EST)
Received: from mx0a-007b0c01.pphosted.com (mx0a-007b0c01.pphosted.com [205.220.165.71])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 78FB03817B5
	for <speakup@linux-speakup.org>; Mon, 19 Jan 2026 22:50:27 -0500 (EST)
Received: from pps.filterd (m0316036.ppops.net [127.0.0.1])
	by mx0a-007b0c01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60JKU5xH900231;
	Mon, 19 Jan 2026 21:50:22 -0600
Received: from co1pr03cu002.outbound.protection.outlook.com (mail-westus2azon11010045.outbound.protection.outlook.com [52.101.46.45])
	by mx0a-007b0c01.pphosted.com (PPS) with ESMTPS id 4bsupwhmjr-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Mon, 19 Jan 2026 21:50:21 -0600 (CST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Ebgcfz31vOGf7wMELc+nEInl681j6uGrWGC66nDTEdK+Pagl/bYQCgLj+JFTpA5HXBVaTXrLgkvT+25G/pI6Vr2CUTmQBZGVymdI8lWD8r2kcP2373F8ak5xMlFudnnHU5hs1mDhkSRreL3nQLJgZT7WRm1/eCyQTdDzPfsfd9+4oDkpwY1nrdHoXBoWpv3d9ebEmiP01Ouo5Wqaduq7TA90MtPuiBAtEnEgw8pyTNJPtlxwnFxRtYHurD7sm2zPtEl5SsZL8pkEhswLmutsL4CCGJsUwkU7qQA/plLlCPdIWQH7u5/cCw+OvxnLl9DlINhoN4PVo+iejjERrGfy5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gKb5Ok7+SQoNvEaysQohNNDQaY9csSR8bm+eGYIKzeI=;
 b=le08Cf0XzL/deLwH+sMa8klupL3lYbXsFGkcPfvbokWzO791LtAw/TaRmCexUBPNMHTsDIc7bnQ/zDDRaAb1LrpcKnm4g5c2KCE42JkscZRAFNH8JkgkBApfDm1517CzSFsu/uYDQN5AQeubizIoLbV0ztcp9myGnAU/ZlEacYOl8t06qsguUjvgRm33f1UOKJPtLwGxq7p1xW9/yuXflrCe7F4Fw4dk0U1hMACXN/+MwYZiF4j19d8QKtZzAiX0y/pzLOMUvqpSypQlW43p/GwJuIC7FZ/NajgmgKljdMGIzMXIxRDuxuyrL8VVvGDjiMI3TErfLW3Hezcx7s/UWQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none
 header.from=math.wisc.edu; dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=math.wisc.edu;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gKb5Ok7+SQoNvEaysQohNNDQaY9csSR8bm+eGYIKzeI=;
 b=dQqd10EYIJC2gbIku6NcwQrJzKO3o/XsmQeT1kccDfwSTnc/CSHhkw0uOdjWhB5GiwoO/oyIPv5TYJtD+Qa3NidUY+rlt+DcQiIVb9L5gjf198vNp9+zDiMsZpakTr9zniYFp8P/5+2o148oChYnZJ77fAnaeA1J14UmMBb2HMRRtf4KaMMBYCQLkFw4OCKmTKcHQUR2nvjN/KduJ/QeGcim9bFeQW9FML4ZtZDmUd2+bFYoDldl5+VltXU4GVJ49s7SWZyY0T+8OrGIwfODPrtjI06C2Jd0d5xJaY5Lo0csGNrTjGZBAJYgdJZIscRdzXZUw3CZhtRxEeHcaAGVKw==
Received: from BY3PR06MB8195.namprd06.prod.outlook.com (2603:10b6:a03:3ce::19)
 by DS1PR06MB10121.namprd06.prod.outlook.com (2603:10b6:8:20e::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9520.11; Tue, 20 Jan
 2026 03:50:20 +0000
Received: from BY3PR06MB8195.namprd06.prod.outlook.com
 ([fe80::a7ad:fb62:4389:fd8b]) by BY3PR06MB8195.namprd06.prod.outlook.com
 ([fe80::a7ad:fb62:4389:fd8b%5]) with mapi id 15.20.9520.006; Tue, 20 Jan 2026
 03:50:20 +0000
Message-ID: <f653c7a5-4a61-4414-b434-e27fe11e7c5f@math.wisc.edu>
Date: Mon, 19 Jan 2026 21:50:18 -0600
User-Agent: Mozilla Thunderbird
Subject: Re: Emulating a LiteTalk, full_time problem
To: Chime Hart <chime@hubert-humphrey.com>, Gregory Nowak <greg@gregn.net>
Cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <bbd7c5a2-ee29-48a9-b1d2-3d33e2fb8497@math.wisc.edu>
 <aW65n-zrysEL1_nq@gregn.net>
 <6460143b-3c25-a4fa-5c4f-4392aaff3b23@hubert-humphrey.com>
Content-Language: en-US
From: "John G. Heim" <jheim@math.wisc.edu>
In-Reply-To: <6460143b-3c25-a4fa-5c4f-4392aaff3b23@hubert-humphrey.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: CH0PR08CA0003.namprd08.prod.outlook.com
 (2603:10b6:610:33::8) To BY3PR06MB8195.namprd06.prod.outlook.com
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
X-MS-TrafficTypeDiagnostic: BY3PR06MB8195:EE_|DS1PR06MB10121:EE_
X-MS-Office365-Filtering-Correlation-Id: 079fe9ab-ad21-4f4d-be73-08de57d70821
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|786006|376014|366016|41320700013|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?NjR6cTBWdVBDbERuTmxSTE5ZdDJicjdYMGlCbG1ZRFNFOXRueVRRUmZyWTFQ?=
 =?utf-8?B?WlcxQmJuVWt1NG5qTXZlS1VCMjJQVzI2cS9nTkhGcUF0SHBhSWM0d2d4Ly82?=
 =?utf-8?B?SVBlS3BMSk9zUlFaRThwNUwrSTR3TTFXMUY4QkdmcTAvYWJEamVwcS9SQ2Fi?=
 =?utf-8?B?Nk1VUlRYOVpiNHFZRTE4aXc5TWZQYkw1bjUyT01IaU1BMkorUWJJYzlqVWQ2?=
 =?utf-8?B?VGxuMkNFZVpUNDIyWnN4Z2xSdEN0bDhQdUoxM0F0YjkrTDRhOS9ic1llR0tU?=
 =?utf-8?B?aGtZMU5yaFVESWZRMm80TFp1TnBxU09MUHhsdmdsaE5qUTE3cE11bVlUWHhp?=
 =?utf-8?B?WXA2ejR3ZDVVbXhVdUxkcGtRdXRObVEzaWdpUEFrdzdYd1hsTDV0Mk5OdVc3?=
 =?utf-8?B?c1lnWmxnT2RNNHFsMy9oRFVwcWNEZzNVZk1NMG5QSWF3UnZoa09QSUdWTHAx?=
 =?utf-8?B?cnFSc0RiUTFGdHdFRDJVbkJ5ZU9pTVl4YmRHenJIcW9ObTJOSkJtWGk1Zndp?=
 =?utf-8?B?V1Y1NnlySjh0S3dPeWZlWWVnUFh2elAxemg5M2kxbXNoQmMycTN0RWRLVU5O?=
 =?utf-8?B?dm5VNGY5dXVjQllNSWpmeXN6V2RER0w2VWdpMS9NKzh6SW5aRFozdjBPVTZ0?=
 =?utf-8?B?bWJwOHpkanFSbjFBZFVTdjh4Z0JMZEF4V05uT3pVY254VUFrZnR6SFRocjJN?=
 =?utf-8?B?RlpOV2hEZGNRK0doNjZYUTd2TWpWM0RlWXZDT0FNTDRKbDhwQXF3bk0yOXVW?=
 =?utf-8?B?RTRsSTZDWmVOdWpiTkd0c0U4Vjc3WStYZWZvbVpUbVhpNXFQa0lvQ2xtMUIx?=
 =?utf-8?B?clUwdmNseVkva2NvcTgyaU9DaHJtNlZ1YktuWFhzS0ZiemJINUw1elJkY1VH?=
 =?utf-8?B?USs3bVIzTi80SkFQK2ZHaHdPcDAyek5pSThlMXFlUFNPL0VOOGFhZFN5eDFw?=
 =?utf-8?B?cStrNmxCZU1yTUgxd2NtUTdJc1NFeFRRdHdsY2wxaWdBcm9rTmtpM1VHelBw?=
 =?utf-8?B?SmlOUHdKNWU5emlmVG5EQkxCY0pPeFU1S2FuT2FpZXZsZHMwK0ZmazFIWkp5?=
 =?utf-8?B?dHp0ekdlWDB3d2k3Y04xNlZqMWdzYnExUVY2TlNNVlJ3aE1yUU00RWI2M3cy?=
 =?utf-8?B?NjBJTmdzZTdqL3UxL3FGYURtMGFBK2FlbDJoak5INmtwT29mOVJ2cXpvVzN4?=
 =?utf-8?B?LzRFT3FMeEhnOHF6UENtK0ZLQTNoYlNDaVRHdmlHTmtuaDFWZ3JqN0xUcmsy?=
 =?utf-8?B?QnJUeVdOUURDYzVLeG0zQ2FLd290a25yaHZTUHJQcmVQUmRDVW1sQnlIMXdP?=
 =?utf-8?B?Y1BLWmg3RGs3clNycVRQaW4vc0Z0NWhmZ2I4SVB3ZGlqVlVtYS9DTkg2dGs4?=
 =?utf-8?B?eWpFdEc0S1dOck5lcjd1Y29ZdWpwMVdSRE8zZHJiSEVvSDZWSWltWTdkeVBK?=
 =?utf-8?B?OSs0TnRGZ0QrOGM5UWR6aFoxdjdxVVZNWlJnZW5DS2JmeXpLWGp3dG5GRU9V?=
 =?utf-8?B?MjB4WHAxWndZaFRSUmY2UGN1eEJCaGlHQkRldHZqWmY0NkZjTnc5b0xld0dP?=
 =?utf-8?B?Tjg2K0RQNjF3b1JSOHJFTnA1bmxza0kwOW5wdjZ4ZlFETVhLZWcwU0Z1c2Fv?=
 =?utf-8?B?MVAzeFBVYmVMVHRBY09HMVRCN0JGRGtHelpFM3FkU1pCY3R1ZXlzMWcvRnFa?=
 =?utf-8?B?bUFIVmN4R1ZudFVxRTZ5SU1rZFlxSzZCd1ZUTUpaRWNSV1htNTBhVytpR3pO?=
 =?utf-8?B?dUk2eGgzRnJMR0hxWEVINU1PcGw1c1JUSnp4cW9QKytadHpZQ1duME00T0lY?=
 =?utf-8?B?TXVOYSt5OGJ3aW04SWJDbWZDY1ZiR3U4U3gxa29sU29GQ2dIbUVtQjZxN3FV?=
 =?utf-8?B?SHo0NmZYWjlBbFM4b2d0RW5YQnRTeUczWVdIY29scWZ1eWJ6aEh1dE1qMVpo?=
 =?utf-8?B?dEEvY1VJcDc1VmxGZ1cwOFZnY0JIdUxvaWtCWnVqY09IZFJNT3RFZ0hUcHdn?=
 =?utf-8?B?U3ZiM3FaajBGTUdJWnlmM0hJcG1LenZRSTRZMHpJRjYxQ2FGelNEMkxsOXJJ?=
 =?utf-8?B?YWluVlNvN0VrSFQyMjBxSzhocm5nbnIySjdFdGExK3FoT2RBQ1ZOYnNrOU1t?=
 =?utf-8?Q?+rxo=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY3PR06MB8195.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(786006)(376014)(366016)(41320700013)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?dDNqWXVtWjJPSWlsb09yRTNCMTFYV2tHT0xqd1pMdEVzSWg3NE1xMk5YTzlQ?=
 =?utf-8?B?SE95NVNMWUlnOHh2b255d05zb2dnQWFmVkhzK2JId05WNTBpSnlPZFlpaXZ1?=
 =?utf-8?B?bENRMjBEdkNlSjBkMHV0eWp5MFBXaGV4ZTNrMXJ5ZCtPUm1LRXFCT1VxY3JM?=
 =?utf-8?B?WGFZYzVDd1BBZjc5R052SjlUdGNsZ2QzMFhqT1JkNnFzN2VFaFd1bHFLdmtr?=
 =?utf-8?B?UUtYOFBWSWswZ3R2VWJZUDdiMXNzZkNIRUMrbkxGbkZEc2ozYW1ydmtQU1ho?=
 =?utf-8?B?SklwN3BnbUp0NFJIQXFtV0swYkxUNjZTZldqRERSY0ZCQ1pqWkFERlRpczdm?=
 =?utf-8?B?b0ZBMG40UmpqUXpsMXhEMkVSQWFya09od09DMzg5SzFjZDZmbDdBZ0wrMUxj?=
 =?utf-8?B?TTFUcVdERm02cXNzMlkxRnBYaTZ4TVdrMXJtVjBpMWRvT1lYdGxrUlN4dEEv?=
 =?utf-8?B?bWhEWC9Nc2prMXM3Wmg4VzFYODFLeEQ1OFJrZG1qMm5ockJFdVJuTzVoRDZE?=
 =?utf-8?B?N2lINDdwS2F3bkwwaHpPdnpvOWFhTUlmYmsyN0FOZkFjR1NITm8valR0WjNS?=
 =?utf-8?B?aEtjVkduOFB3bFMwZVI4SE5tTEVMdmRYYXdKQWg1QlpoUXZvMHNsNWRvdHdm?=
 =?utf-8?B?K1RITnEvanA3WWZhdHdQSHlTaUM3RUduZ1daNUgzSVhjdEkxN1BRa3VxQnJ3?=
 =?utf-8?B?alBMT3ZiOUpWRVVyV2IrWVhZczFYRTRFc2ZsRkF5cVRFYTRncmlDYzJiV0Fh?=
 =?utf-8?B?NWh0VXhFd3prSlZZeVM3RmFCNlFsNVVGMVdoUUtYNEV0Um1rNSsvclloR2Z2?=
 =?utf-8?B?NGFZYzh6cGxsN3p1bHFkcmt5dm5oVk5VZGcwUXoxZjFHaEs4YkFOaDMzSjgx?=
 =?utf-8?B?V0Y4cVZmZDdKZ0xpRnkweStGNWlQQjlzOUZLRVhqWnRNOENKdDZvWmo2NERt?=
 =?utf-8?B?ZlczL2d2YWx2aWQvckxZWXp0RGNYZEZLaXlSazdRS3ora2lCVzA5WFZTdGda?=
 =?utf-8?B?TmxIK3JwSGVqL1RDMGJmZnk5TGwzUUM0OTl4N0FSNmhXU3N5MzUxVitLUVJQ?=
 =?utf-8?B?czZxT1BoZ0M1aXVmeU5QK0tPMGl4WGdXM2lFajIxYVI2VkxOVjROZkdVWVpZ?=
 =?utf-8?B?bzJuVmVXbmp3M0NMYWVOMUEwVkVMcFcvNGk5Rm9BY1VTNXdwNDNLc3RwL3pZ?=
 =?utf-8?B?amoyY0RKWUp4NTJUMXBzWk5taXJTc2QyNlZvMEYxbjJqYXYvRWFTNWM1L1hr?=
 =?utf-8?B?bjFmZWVITFZreU1GZyszSHpZcmpvVHNSSVR3QmtFbzNrKzh2OXRWU1hOTzBi?=
 =?utf-8?B?TkpjR2hValA0R0toT2xPZDJlWlY2UHVCNngrd0JobnlYd1JTTEFXQU12ekFy?=
 =?utf-8?B?ZkN0S3JVTmtHTVFaNHVSQXZXQVJxWmljMFpSeVlQZFJwdldSd0JrQUZMR1Vx?=
 =?utf-8?B?MjZheEFSbmk1SUZxaEh6L3VDb0UzaUVLNDVudXZCcGx3ZzZSVENoTnhVZGVJ?=
 =?utf-8?B?TzlWaUN5T2hOaE5CdjlESHpyRW04MUpuZ0xuUThTOU5vRjJTWVgzRlVQR0w0?=
 =?utf-8?B?bkZDamt1UW52ZEZESzBwcmQ2dWNuSlpXM3VNNHQ0VTJzenhFaFAySzBFVThp?=
 =?utf-8?B?QW0weTVVNGpkdk9lQ09GcjFsK2VWUW5NNjNrKzl1b29zc0xUYjNtR01YV1R5?=
 =?utf-8?B?ZVJXNERpNFZRSnVvdHBiWkNvMEUrMDlEZ3hqUHlKWWIyTVd5ZGtHeVdtUmw0?=
 =?utf-8?B?QXZHRlMyQWVpMG9DcTZrakkwVlJYREovRXFkaHJvRGYzeUQxUnVmWU4xR201?=
 =?utf-8?B?UHBUd01yUzBwZ0Zsc0xaUVR5dUZRMnJNSlpwVlpKcWg0L1hsaUd6c0d1dzBo?=
 =?utf-8?B?V295eW1oRkI1cmxoY0FRemsyb2tmbzFzYWkvZlVHaFlJUlJBRGRDbjJyUkF3?=
 =?utf-8?B?S0V0MytiRzJBMGoyeWthZHhuNEplVjVoOUtDRWI2bE4rdXZ5V0Y0U0pNSVBm?=
 =?utf-8?B?M2ZGYVY1Y0NKMVVFQTNWMGppekNyQjZPY3NvOGFkMTFmMXdNMUthUVgxM0lH?=
 =?utf-8?B?Z2FoY2IzcGpFdUtXeTBhQ0hoaWF5cDlFbmFjQlI0WW4xSktFTk9sWmlaMFB3?=
 =?utf-8?B?S2FoRlZ1MlgvSndianZ5NXFuSkwzc1JucEE5aGFYODI2SFl2VTVNeDN2WTBX?=
 =?utf-8?B?T0FQUDQwL3p1d21LMnd2MElPK2tiWDQ1SDRSRDd0NlVDeU5tNzVTN0pWVTRt?=
 =?utf-8?B?SEdYM25XeHhabEQxZmliMGw1UkhIWExoalpWblZkOUt0bXJJZmNCYjdXSSty?=
 =?utf-8?Q?E9A9y7m39eTH0tRWzR?=
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: 079fe9ab-ad21-4f4d-be73-08de57d70821
X-MS-Exchange-CrossTenant-AuthSource: BY3PR06MB8195.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Jan 2026 03:50:20.1128
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PEol3U8BoFFviyi6W8RRMzPgqoIKF1pEKsV2hfo0cqqVxABvmjcgy4f8kjF/8eHI
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS1PR06MB10121
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIwMDAyOSBTYWx0ZWRfX+MV5d+JBeciF
 KEvhmQPcbZL9BHG9mz+9ZNGhcoHxGxFSHq0SZySOr0q9/5kvUkKpTEezxRQsI75+oaJBJa49TmX
 hJz/Yt+lE1H9JykOcAs1H9RiqhRA3XiEYE767xHEODJpOggLKJJcm1lbKDhwIm+iqSmY0q4uZ4l
 RUhBXJC9DGtEgbXRKZEDsMG51FaAcaPdQ1HtmAUcygmO0wsB5K1I9iaivbDVxsxGc5lR2ojjx68
 9PkTCRKh4w0Snk02IcYi3PSOlS5EUCrpNrNpbevKzNA7M5pCfJ8FdQcDlQT/e9nKLj0C6iwpDyJ
 fCZiuJVRVWVqZpB0ALGdCPMDvq/x2TAS+fC/DQoL7P/JV92mbDU2V7GNbyAhHv9s/Yd8yegayP7
 QLpH5wgarVaa3P5ZDA+hh0RYV2iDjlSGrQzD16/ZUEPIiKAIgFr0UITCKHe8Nuw1nciInQbSehF
 cirYzbuBwFPdzshGc2A==
X-Authority-Analysis: v=2.4 cv=Zvbg6t7G c=1 sm=1 tr=0 ts=696efb7e cx=c_pps
 a=lEAAG6kgDLZw1ps4cEx4qA==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=lre9DRYkaIEA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=LI15MrAKT6bzBvaD2TMA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10
X-Proofpoint-GUID: g8r3fD2e06YsCAPBs-3w75FpVOw01eKT
X-Proofpoint-ORIG-GUID: g8r3fD2e06YsCAPBs-3w75FpVOw01eKT
X-Wisc_ValidFrom: true
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-20_01,2026-01-19_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 phishscore=0 lowpriorityscore=0 impostorscore=0
 priorityscore=1501 bulkscore=0 spamscore=0 suspectscore=0 malwarescore=0
 clxscore=1011 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601200029
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

It won't let me set it to 100 or less. But setting it to 200 results  in 
a nearly fully functional synth. This is so cool, I actually logged  
onto the  Raspberry Pi itself from the command line on my host machine. 
So I'm working on  the synth while using the synth.

Having to set a value on the host machine is probably not a deal killer. 
But I would  prefer to get it acting like a real synth whatever that takes.


On 1/19/26 5:14 PM, Chime Hart wrote:
> I would suggest maybe its time to alter that 40000 setting to either 0 or 10,
> considering a couple of us with 2 different synthesizers are running in to
> this. Thanks in advance
> Chime
>

