Return-Path: <speakup+bounces-1404-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 73422B96ED6
	for <lists+speakup@lfdr.de>; Tue, 23 Sep 2025 19:06:32 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=math.wisc.edu header.i=@math.wisc.edu header.a=rsa-sha256 header.s=selector1 header.b=ZWBI8ozl;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 8A536381609; Tue, 23 Sep 2025 13:06:30 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 560EF3815C7
	for <lists+speakup@lfdr.de>; Tue, 23 Sep 2025 13:06:29 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 07EEA38159E; Tue, 23 Sep 2025 13:06:22 -0400 (EDT)
Received: from mx0b-007b0c01.pphosted.com (mx0b-007b0c01.pphosted.com [205.220.177.71])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 82B0338159A
	for <speakup@linux-speakup.org>; Tue, 23 Sep 2025 13:06:20 -0400 (EDT)
Received: from pps.filterd (m0316045.ppops.net [127.0.0.1])
	by mx0b-007b0c01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58NAIQ7L003899;
	Tue, 23 Sep 2025 12:05:56 -0500
Received: from mw6pr02cu001.outbound.protection.outlook.com (mail-westus2azon11012020.outbound.protection.outlook.com [52.101.48.20])
	by mx0b-007b0c01.pphosted.com (PPS) with ESMTPS id 49bc8e6ysx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 23 Sep 2025 12:05:56 -0500 (CDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YNhfua1ClYCgJAnthxmaW1KMmMuahrMnaz0Yzg8Nf6+uPGeV1m9wWPhzR4rwgreb/XIu2/GPqNmcOqCb56IGceMe336fxN1armJkv4kH5h6Y3Tc3+CuUpNEuaupvsGj08CcpL/Nl6IM/YN10wvBXORUlyDE3vOosD/XqqSdQNlcGReooH+auNHI7/uKeDH3vt2jKVUs+uEZKcztBh9YPE5FgnugGBzIa5Yv+HSvyaYYe3ht2PQ3gSHRIcRcK192SJYTVjw8PjoG3fniRzSGEup5BRIWDOiAT8RxIKzWQ4JbFXU6h2SLnUzwQMVkINplRGaCX9OQkIoC+mINyrku36w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yHUBM63JcpczXzOCHEkt/574dvLF/y8RhJSPDnlTjSU=;
 b=HZURpujJKUVeIUX/81S+NZdEez5+853XqAIGNfg7C7Dskwh/rsXVUX7zrzt0dRQMYIcMwyVpRddSfQOG3FIea4qGCEsPxZ/5mX+wol4dEPfxS1HH+d6fimTEjfY19a5Bfw7BZFq1ySS2gk6ycFAkEjOqGkzKwICxuP9zWV7Hb0RYxC1CryMb+LMVSfzm34EjBUuHYCWqNjEssSgL3HQGvXQdEsO6k+Vwo5DlGjB3aCy6mYcjI/ibBc4CXErTAp4/i54H1pfmsfCVrDp63fxZd6tA9AADzjXk3JDG0ZNe6wYg8vU/LAPqplWr/JpiIN8lGCX/ICWtkuLoHId/fShnqw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none
 header.from=math.wisc.edu; dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=math.wisc.edu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yHUBM63JcpczXzOCHEkt/574dvLF/y8RhJSPDnlTjSU=;
 b=ZWBI8ozl8GY6+WG06tqrK3XKe834QdFGqbGYvun6bieuL5qxwe9TSe18Cb+mq6X1r2o2FkIJUr9BbT2wd58YdCzAVjEbGn5igqR0O+3ExVhcJfo+2XDXTylsk1IqYfy48zlDa8x+b5PM/IP8BJUFx1acFvrdfMtBKO9dmcvuvMHgHlnoB1aT+RI/Q8qHO8zGSrgeQ0ZvOSIhRzKieE+DHSTBmvgZCHHhbJ0nj/TrBhA5/HtBDIR9AV/kMHlB4g609H7ols/gV8LP5vo/fL0dETg6FiW3GI+IOejApVBYt5t1X+pcrM1uAW0zyS+m3ni+kUjDOPT21Oeywgu+9lIm+A==
Received: from DM6PR06MB6748.namprd06.prod.outlook.com (2603:10b6:5:22c::12)
 by LV9PR06MB10846.namprd06.prod.outlook.com (2603:10b6:408:2e9::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9137.19; Tue, 23 Sep
 2025 17:05:52 +0000
Received: from DS0PR06MB9877.namprd06.prod.outlook.com
 ([fe80::5872:c6aa:5379:9470]) by DM6PR06MB6748.namprd06.prod.outlook.com
 ([fe80::5872:c6aa:5379:9470%7]) with mapi id 15.20.9137.018; Tue, 23 Sep 2025
 17:05:52 +0000
Message-ID: <fcf89a57-b683-4590-8d36-3a1a7b613bd1@math.wisc.edu>
Date: Tue, 23 Sep 2025 12:04:38 -0500
User-Agent: Mozilla Thunderbird
Subject: Re: Question about blind CLI use (was Re: "your browser is not
 supported anymore" ...)
To: Jookia <contact@jookia.org>
Cc: Gregory Nowak <greg@gregn.net>, Karen Lewellen
 <klewellen@shellworld.net>,
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
 <aNIv2l1tKiR26V-R@titan>
Content-Language: en-US
From: "John G. Heim" <jheim@math.wisc.edu>
In-Reply-To: <aNIv2l1tKiR26V-R@titan>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: CH0PR13CA0014.namprd13.prod.outlook.com
 (2603:10b6:610:b1::19) To DS0PR06MB9877.namprd06.prod.outlook.com
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
X-MS-TrafficTypeDiagnostic: DM6PR06MB6748:EE_|LV9PR06MB10846:EE_
X-MS-Office365-Filtering-Correlation-Id: afd7a4de-1e4e-4a02-8870-08ddfac34831
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016|41320700013;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?RDBTQVF4QVd1WG9SbVJFVE9RQTlhdU9NOXRYenZBQjJJbHZINW4zTE1kV1Z6?=
 =?utf-8?B?cEVQUllYYnRhYkZEa3l5WDIvTy9oTjQzVGgwN210Mlp1dWZhNTFTZ3NzMzBv?=
 =?utf-8?B?ZEJKVUhUTUN2MCswMVRpVGZOcW9uRjRtWWtLUHRFbjlvcUpFeXdFemdLL3FV?=
 =?utf-8?B?TUhOK3MzRUtMZWVzaWFPWXhWbWcwNDZoVDdDV1A1cm53Mnk2S2lqQkR5TkhG?=
 =?utf-8?B?UlJCSmxuRDVFY1dscHpOTG9ZWkdLV3JEWHlXSllHdDEzMHJlbVNlV3ZRN0pF?=
 =?utf-8?B?OTgxQk1aWVBaa1BvaEE3NEhSenJlN3VpMGpJZWhlUVdrbHRPNzRZWGZGa3pM?=
 =?utf-8?B?K3MrWDBDd25RN3QwQnYzdktFRlpua1R1S3Ryak1xcWZaUTdKY05vOHF6KzUx?=
 =?utf-8?B?TjMvTFpScmtYOFlkbEh3ZkkxTkRVbTBacm1qMjJGaHFHbXVGSGVaK0Q5Mmkr?=
 =?utf-8?B?M2Y0VTdyZThKQnEwc3RjL0lkY2dYY2hMblRURlJqRGZSR0E3dXl4VXE4dzFU?=
 =?utf-8?B?MnVrUFRjTTdTQkdSK3h2QnllV01IZjhKTjgydUtuVzhCTFNFbWZYREZ3bGNw?=
 =?utf-8?B?djhDakladC9NZnNheWRLVks1Kzh0b0tCRy9NSHQwUk9zUG9CR0hLNENtc29T?=
 =?utf-8?B?a2ZmUVQ3VnNjZGFqblg0ekRFT3N2VXdwS3pRdzR3SjZ4eUoyQ1hJVEVMb0Zj?=
 =?utf-8?B?TktoTVlTMEdzaWJpSmt0bDBHdmZlWjBlaUhsWnJHZC9vR3duMzlnY3JKR0hN?=
 =?utf-8?B?OThxZVByd0kybHBZVkpaWHNXamkwdk1iMWRMWElaMXg5bTF5ZThzb3JVeWg2?=
 =?utf-8?B?WHpqTWZZZUJocHgycmFnYm5ia0tQd3BrQ2p3Q29BVXRUaXNpc1B0Wk5zaXF4?=
 =?utf-8?B?WWZuM21KTzdwNzhvSDNDWXY5TlFHeTEvOUFYYTlHZjFkSC9lUFpwcFZzbzVV?=
 =?utf-8?B?SEUySEtrV00zd3VqbnhwL0w4Z2FRZGdCM0tGN2JEbExpZ2NzNkxrZUJCVCsr?=
 =?utf-8?B?RmNZQnRpT3ZHazNtSEpDaEhFdXR4N1gxdzBpeG1RaWlPU1dBZ2FoTjJZbnVQ?=
 =?utf-8?B?c2ZEcStUc091OEs4RnZOaENGOVpXVDM5NTZ2S1pGcVBkNHVtdEZQWjUzTy9a?=
 =?utf-8?B?OWF5bFZkTUJvMlp2YUVvNnZJK3phek0ybWhoeVNBbzV4akZuYUFDNHV3OEdH?=
 =?utf-8?B?b2dNdkEyMGx3eEhNRnZXaFpnbW5XeitJVmo4QnNRTUhTV29mUjVDblJKSlhz?=
 =?utf-8?B?MERtaktWQm02N3c4U0E5R0tmWTZmQUwxeGFraXNGcGhoc1BXR2Q0WHlnV09W?=
 =?utf-8?B?TzE0MzYvSlJFR1RidW40bUZaYUExYjJ5Wi9ZRjFqRHZLNTBienNqRS8yMVBI?=
 =?utf-8?B?aDBjK0YwWkRYdFM3eXd4ODJIRWFQWE9rUDVhRERpZjVaNzM1dXRrTW1ucFly?=
 =?utf-8?B?QXBwczRKbHZ1L2ZJdlJKYVlLZnNCNjMwcTBpWW05VnZJSm9TUWpyWEwyRzdB?=
 =?utf-8?B?WUkzRmp0N3pVSVNrVmVlQ3RYSmlrTk0rMFhoYThXYUZuT1pRVTVxUlJOMUNm?=
 =?utf-8?B?cDdjNzdXU2hCV09PejFZd1N6NlpGaTYvMG0yNE9LcFZNT2VTRUVwcDZTaVFQ?=
 =?utf-8?B?c2V1Q2NrNmt6bG1nM2swdW1kdG1IRG5NaS9ScFNyT1lYcGV0NnBwOTVhZS8r?=
 =?utf-8?B?ZjV2MkQzeldWWFRHV2FPMTZoTmZMU0M5MDFWei92UFZoeGVQZlZCbTFnZHU2?=
 =?utf-8?B?S2t3U2hmZ2lpSVdFbVo4bXBOOUJ4dUVvbnpOZ0l4R1JQajUxMDdoVUJpaHBE?=
 =?utf-8?Q?6CZelPG6TeukdZm1BRdiK+S1FvqgmFCZIRyos=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR06MB6748.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016)(41320700013);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?ZjhEU3dnN0pTbk9JN0dXc1RUNG5DQnlvWTB2QWdwdkpVTGhoOHV0SytLNXJ6?=
 =?utf-8?B?WkVQdkM3M1FQbWlRUmdwNmc0Uzl0VjIxRWRmRFk0dWU0UDRPQS8yVkVTVlVv?=
 =?utf-8?B?aE5oaUVGaWQvZGdTRGxJVEVjcG4vd3Y4ckhIbkFjeHRaaTdST2pJNDh2anN6?=
 =?utf-8?B?RVFWMENkeGlwRFVmaFNzRS9qM3daZHAwQ2QwV2xuQXRpUzB2VWlobWxlK2d1?=
 =?utf-8?B?aDJJOXZ5b2p0dHdOdXkvQ1VteUJWRmhTYzhEMXFHV1JXcGZHQUc1OTNjMnMr?=
 =?utf-8?B?VGdIV2xpZGliTGpybW1jOEZuMEtYQmFuOWtKU2NuaGd4N3IwYnNSSVVESHB2?=
 =?utf-8?B?eUtsOFY0UTJaMnYzWmNkVGoray9UQUYrYm56YjV6dzB0UEdvM3VlK1dQak1r?=
 =?utf-8?B?QmNzeSs5cWNWNXg5ZTU5eWlHQXZWa09JelFVRFUvUnd6V1NqSG1mYXdsbEsv?=
 =?utf-8?B?UlZYYmlXVXlNRFk4enhBenNsQUlyRjFJS3FqL1dFcjBsZWZwcm81WHRIcjNL?=
 =?utf-8?B?MHVLdHlHUHViWGZheTFaTjllWGZkTXBFQnZKZmpwMGJnNW9HM2lCRHd5N2JT?=
 =?utf-8?B?M0N5ZW1OaEJjSk1kL0FyQ3lSR09YVXY2N1ZhelV6SjFvbmtnb3NXamp1TzQ3?=
 =?utf-8?B?bzFpTXB1ZVp3WC9SL3k2TXZ0bzU1N1JGSXVmRUtZbUtwTUUwSmJkd0tTdEJ0?=
 =?utf-8?B?YUxic2ZsTDE4T0VRQ2JKMllOL2FseVBleFhRaS9MZ01ucGd4ZTIwVERRRGlT?=
 =?utf-8?B?ME53c0YwL0tGM2hBQVVZUGJTZkJLUHlPbWhQS085RFNmUk9WR2RLKzZFTm54?=
 =?utf-8?B?ZllsSDBpMjF4akswTXNHTFB6QW9VN25JQ0h1a0pUbThyT3JXOVRkODlGVmYz?=
 =?utf-8?B?OCtFa21oQ3J2YmY2cTYrbVFFZEdUNDcvQ2tJbGxqV3hiUjVncFBWT0xkUHRO?=
 =?utf-8?B?MmdlRExnR0M1cG1yMVF2bFRXSHIzM3M0Qi9ZZHIrYlRlaVRvczMySEpJeGVD?=
 =?utf-8?B?bjZiQmZRZEM4NVNLZmorUGpDRlBKOXpSZ2M3ZUNHdDV6ZjNMWDdtcEtqbzRI?=
 =?utf-8?B?RnlTbDcvRVlnTXFsVXlNUDNzNEU1cWVZQmx3UTQ4UnlTMDBpaktnbVB1eXhN?=
 =?utf-8?B?dzhML3VmRU1yWG9WZ2dxWWtxZTdTbmN5UUZwNWhFSGowWHhEMlF3bG9nSHBW?=
 =?utf-8?B?Z3FtTXVraDc2NlJlM0FOb0J0TEw5ckZRb21hNGt0U1d2ZTF4V3VZQmhqR20v?=
 =?utf-8?B?VXRDc21MNlV5TmdSaTQ2MXY5VE54T3ZQUHE3MDVSU0VpNnJFWTR2QW9PNU1Z?=
 =?utf-8?B?R3dtWU82Ym1CSjIyM3hGeFgwbEdSVzVNRjF0cHRiMWtxYThnbmg2Y1BvZlFK?=
 =?utf-8?B?dFlVWEp1RTJEZEJFT2FING82L1NlRmtlMUJwTGdzTVFZWHdnci9tZVRkM3l6?=
 =?utf-8?B?R2hleGtaaVZ3ZjdxYTluSmV4cXpIMHhmVzU0WDJzdnRGYktBbHFJNlJ3TDVh?=
 =?utf-8?B?T0F5Q2NSa2Q0L0YxdmZ3bTdEdExINVljT2V6eGFZUkdyWWh1anlHOTRVeXEy?=
 =?utf-8?B?VjNaWE5ZWVVtS1FVMENZVFR3Rjh1bjRvZVc1S3lOdmdGa25IR1JlVzlYVDBx?=
 =?utf-8?B?d2NUZVpzSnNvVnFFN0RlWlZqdE1WWHZML3JvZlhyUmFnSlNsWENIWnovK0Y4?=
 =?utf-8?B?MVhMU0hzdUs2M1RVSWhUV0NhNjVZVjhGTEQrQW5WWUdRV0tPcndsc043SUwr?=
 =?utf-8?B?MTI0dlJjSGlYOExEeTVsMjAxUWF4dUlESlVMTjRmSTRTUm1WRU1DRTlEUGtZ?=
 =?utf-8?B?Nmc4eHk4d1BhSExTSFBJOTY5N3JaS3pqNUY3K1pPUzNQZzRMR0JwWGRvclF3?=
 =?utf-8?B?WGd4ZlplZWprZWp4enZ4NlNPZlAyUW12SGlnSCtuTjArQ2JrcExjTlpRdk01?=
 =?utf-8?B?b3dLUnBRZ0Y2RTlWcFVMYlRmNG1QQ0FWUGdHbXBZdGZTUTNKRzBVWTY5NkFm?=
 =?utf-8?B?R1dsUitFOEVjcE45MDlZNFd5UC81NWN0eXlNaDNJbTQ5KzR5OFJXWEtLN285?=
 =?utf-8?B?NUJTb1U1cjQ4bjBJeWtsSzdTL1RUQnYzQ0J4Vi84WkhoM0dGcFJFZms1a1Q4?=
 =?utf-8?Q?5ZGKYNb8xsa5E2VxghvXIlPRK?=
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: afd7a4de-1e4e-4a02-8870-08ddfac34831
X-MS-Exchange-CrossTenant-AuthSource: DS0PR06MB9877.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Sep 2025 17:04:39.5561
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: goBR/KfirIPJHykNq4BdhFmlPp/vLkrZLJr2KQ6wOqJHKC2GkdFoqZNae/3EIWKm
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV9PR06MB10846
X-Proofpoint-GUID: O2muf4bOzCZ7L8kRj_-m6xj9iwPu6I0P
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIyMDE4NSBTYWx0ZWRfX4ra4UF5DzRFH
 50EJd2Hn5KvTUAmevYhzVfNn40Y+Z2sG5EVHL+8O7yvDniQ73SkrKUtxhdF4V7Y4wycsyLbpIGD
 0PUOxCq97IVAOWuQEFhMtUqkdoUhNQscOBohgEALFqNHEc4npsHS5HeqFHFNxKDu5TpSm26Pvg2
 2JiGU5RjDpGZFeFPZuEpcVLIRmNi/Z0h1NSs1ur1e8DwZW/me1b/zFrK7wUPlt177BL+8JmxgKk
 Edn7H/DoArIvn3HlK0ZGRs1bz4/cmOc2T8y8wZiR+BhX2akDk81p8loIy1F2C19akS3hox3CpPR
 L8rMsdoJVysmr3DrrX9TRps8wc/8q+G9/34I8oGdxEkrVwbbeJWN5Y9wVgS5WWY5kFOrvzr2lH1
 8Aa+1kqP
X-Authority-Analysis: v=2.4 cv=Q/XS452a c=1 sm=1 tr=0 ts=68d2d374 cx=c_pps
 a=wPn5mG08gX1eKnPfDThLSw==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19
 a=R3fr6vWxGIgF0CYV:21 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10
 a=lre9DRYkaIEA:10 a=hEK2XftRAAAA:8 a=LNhb960rAAAA:8 a=q5txbtUnAAAA:8
 a=JgcdyyM_btBormUPhrwA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=pvvZm7_9ER1OwvpV3Ftp:22 a=duXMUGqUtLRgrHROm9qa:22 a=RsootnAUgZ_jVqzlXDew:22
X-Proofpoint-ORIG-GUID: O2muf4bOzCZ7L8kRj_-m6xj9iwPu6I0P
X-Wisc_ValidFrom: true
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-23_04,2025-09-22_05,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 malwarescore=0 phishscore=0 clxscore=1015 bulkscore=0
 suspectscore=0 priorityscore=1501 impostorscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509220185
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

BTW, the correct spelling for that early screen reader for Linux is 
Gnopernicus. Googling shows me that Gnopernicus was the default screen 
reader for Gnome from 2001 to 2006 when it was replaced by Orca.

The screen reader for Apple I was trying to think of was OutSpoken by 
Berkley Systems. Wikipedia says development of OutSpoken was dropped 
after Apple released VoiceOver in 2005. While that is probably 
technically true, as a practical matter, OutSpoken was no longer a 
practical option for some time before VoiceOver came out. The libraries 
at the University Of Wisconsin stopped buying Macs and got rid of the 
ones they had because there was no screen reader.

Speakup was released in 1999. So the era I'm talking about is from 1999 
through 2005. You could use Linux at the command line or in the GUI for 
free. Windows had a good screen reader but it cost $1000. There was no 
realistic alternative for the Mac.

It seems to me that Linux has always been a step ahead when it comes to 
accessibility. Well, at least since 1999. Before 1999, I used Jaws For 
Windows and administered my Linux machines remotely with tools like putty.



On 9/23/25 12:27 AM, Jookia wrote:
> Interesting, thanks for sharing. I never knew about Gnopernicus.
>
> On Sat, Sep 13, 2025 at 10:35:51AM -0500, John G. Heim wrote:
>> One of the biggest impediments for a blind person using Windows is the cost.
>> It's less true today than it used to be. A Jaws license was over $1000 at
>> one time.
>>
>> For many years, it wasn't even possible for a blind person to install
>> Windows. Well, I used to do  it via Linux, no kidding. I booted into Linux
>> and ran the Windows installer in an emulator with an answer file. That
>> worked really well until it didn't. At some point, Microsoft changed the
>> installer so it had to be run in their pre boot environment (whatever).
>>
>> Even after the install, I had to install a dumbed down version of Jaws that
>> worked for only 40 minutes.
>>
>> Also, there was a period when there was no screen reader for Ma Cos. There
>> was some 3rd party screen reader for the Mac. The developer dropped support
>> for it and some time later, Apple released VoiceOver. I was lucky, at the
>> time my job did not require me to use a Mac. But the libraries at the
>> university where I worked had to get rid of their Macs because it is against
>> the law to have computers in a student lab that are not accessible to the
>> blind. BTW, that's why Apple so suddenly started caring about a screen
>> reader.
>>
>> IIRC, at the time of the above events, I was using both Speakup and a GUI
>> screen reader called Nupernicus. I remember walking out of a meeting with a
>> librarian to talk about screen reader options for his lab and thinking how
>> lucky I was to be a Linux user. I believe that particular library replaced
>> most of their Macs with Windows machines and paid like $1000  each to
>> Freedom Scientific for Jaws licenses. They put in one Linux machine just to
>> see how it would go.
>>
>> The computers in the student labs in the Math department where I worked were
>> alwys Linux.
>>
>>
>>
>>
>> On 9/13/25 7:14 AM, Jookia wrote:
>>> Hi Greg,
>>>
>>> Yeah this is unfortunately true. I'm glad FOSS is still appreciated by people.
>>>
>>> Jookia.
>>>
>>> On Fri, Sep 12, 2025 at 06:53:43PM -0700, Gregory Nowak wrote:
>>>> On Fri, Sep 12, 2025 at 03:31:55PM +1000, Jookia wrote:
>>>>> I know this is the speakup list and I'm talking to an extremely niche
>>>>> community here, but I'm genuinely interested to know: Why do you use
>>>>> computers this way instead of like Windows or macOS? They can do much
>>>>> more useful tasks.
>>>> They're both proprietary operating systems. Windows essentially
>>>> hijacks the PC these days, and dictates to the user how they should
>>>> use it (E.G. requiring the user to register an account with the
>>>> developer to set it up, dictating when and what updates the user
>>>> wishes to install, and so on). MacOS is tied to hardware from one company, and only works on
>>>> that company's hardware by design.
>>>>
>>>> Greg
>>>>
>>>>
>>>> -- 
>>>> web site: https://urldefense.com/v3/__http://www.gregn.net__;!!Mak6IKo!PJ5X0c86hX4IZtoBfv1kpLI0rcSQhBtXAThLGAI94dOL6KYPF7-9QJySUhuUeXnUO8FQFZp1QNEHanR6Yeo$
>>>> gpg public key: https://urldefense.com/v3/__http://www.gregn.net/pubkey.asc__;!!Mak6IKo!PJ5X0c86hX4IZtoBfv1kpLI0rcSQhBtXAThLGAI94dOL6KYPF7-9QJySUhuUeXnUO8FQFZp1QNEHOOMsI_E$
>>>>
>>>> --
>>>> Free domains: https://urldefense.com/v3/__http://www.eu.org/__;!!Mak6IKo!PJ5X0c86hX4IZtoBfv1kpLI0rcSQhBtXAThLGAI94dOL6KYPF7-9QJySUhuUeXnUO8FQFZp1QNEHcie2CdA$  or mail dns-manager@EU.org
>>>>

