Return-Path: <speakup+bounces-1542-lists+speakup=lfdr.de@linux-speakup.org>
Delivered-To: lists+speakup@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id HS/RAuPye2lnJgIAu9opvQ
	(envelope-from <speakup+bounces-1542-lists+speakup=lfdr.de@linux-speakup.org>)
	for <lists+speakup@lfdr.de>; Fri, 30 Jan 2026 00:53:07 +0100
X-Original-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 61FD9B5C59
	for <lists+speakup@lfdr.de>; Fri, 30 Jan 2026 00:53:05 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=math.wisc.edu header.i=@math.wisc.edu header.a=rsa-sha256 header.s=selector2 header.b=U6plLMzt;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 5120038158A; Thu, 29 Jan 2026 18:53:02 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 2E81D3818BE
	for <lists+speakup@lfdr.de>; Thu, 29 Jan 2026 18:53:02 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 37DA63818BE; Thu, 29 Jan 2026 18:52:56 -0500 (EST)
Received: from mx0b-007b0c01.pphosted.com (mx0b-007b0c01.pphosted.com [205.220.177.71])
	by befuddled.reisers.ca (Postfix) with ESMTPS id E081D38158A
	for <speakup@linux-speakup.org>; Thu, 29 Jan 2026 18:52:55 -0500 (EST)
Received: from pps.filterd (m0316046.ppops.net [127.0.0.1])
	by mx0b-007b0c01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60TLqgW31701710
	for <speakup@linux-speakup.org>; Thu, 29 Jan 2026 17:52:54 -0600
Received: from bl0pr03cu003.outbound.protection.outlook.com (mail-eastusazon11012018.outbound.protection.outlook.com [52.101.53.18])
	by mx0b-007b0c01.pphosted.com (PPS) with ESMTPS id 4c0fup8p94-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT)
	for <speakup@linux-speakup.org>; Thu, 29 Jan 2026 17:52:54 -0600 (CST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tgBnIedCA6ZpXoX0GG+zuJ5qC2qoFanG5Gf/dik2IFYnSFtyVQARp3ny7+KHmjwmc2g+gRP1bciRi2+LQBewPyKcwxqPWYW2C0X03LKN36PcoB3LklqsRCm4KA5rDIVU2w3zBfuy+YOxUTdOTlipEa26CepVcwo3Cz09IhtxQknH4MrFMjvt85wS2Wih2FK5sJvg6Nfpi9PN6VHaAf3WngXVd9PiS4sy1iHEpGsHMi3gH4N8WBpsFoSozMeokOYpPuodXM9uwzqSaUnl8OnzhpSBeOADdwdmKX1GXgEnVi9Q+3f55+ePGw0XsdJYK3xr4lmRQsXrqFxGZeuwtkgXUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HbpEaHl2CU0giLtC5DbJ1DNsJeUnm3+M5X5nmGXoKIY=;
 b=wAj8sAOZAk+0V8CdASVLQnHIaF16QHXOf0xKLPdCc0sTIq5oSuN79sjunaElth6CXsaXyVi0LBvISf8DPWeWRHn1C6gk64HR2C48AXUZ1d6bZn1pl4o2QGLJZZ065herDDiv533FxQJ6H3sZCcq3JCdnI6J7JciT4RC0hsUMHF4hXD2rivFHCeNoaJ9nBZQpvoThQiEXTxfuFpG7BYvuKZ0EeGp28bZiYKOtruY1Dse2jbi2Wk/QZ7NcyfainFRRzYmf60BJwyDSQfTXxWzVoPW623+LkIcMMjZtEYA3y1/5qAe8WSgxzSuc7rAqP/cup2bnEbDX54XYwfAXCBLy9A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none
 header.from=math.wisc.edu; dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=math.wisc.edu;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HbpEaHl2CU0giLtC5DbJ1DNsJeUnm3+M5X5nmGXoKIY=;
 b=U6plLMztOYPzsavzkd410bRsumSSwAEDSAX/tsLjrtSww2OxV/0oLqinmC3UeOR6+TrIka0aXRmFsOOmHNLQipQRTbHML/MsseOgH7FO1r5NWSAA05s7V1qqI2Z0mD+ppdpKtYKmtD068vIYa+UshjTfEY+nht+jBXdfMk/r9j32p9dkQ0QhkJBAXWyYdLuREdPtT4qiUzfryRLLScNn+mCRUEU5XeG4GlhiC19cvNARln+uSqEBEy2MvqKJC0s2uwl+oR6YbbtsKHNnef8diqYHVPoJb6XWvFajK42vhqUgNei2AP/Ku5z4MCEIiepoJQNM5FfDZIBYzWpbyOInEQ==
Received: from BY3PR06MB8195.namprd06.prod.outlook.com (2603:10b6:a03:3ce::19)
 by SJ0PR06MB7323.namprd06.prod.outlook.com (2603:10b6:a03:2e0::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.10; Thu, 29 Jan
 2026 23:52:53 +0000
Received: from BY3PR06MB8195.namprd06.prod.outlook.com
 ([fe80::a7ad:fb62:4389:fd8b]) by BY3PR06MB8195.namprd06.prod.outlook.com
 ([fe80::a7ad:fb62:4389:fd8b%5]) with mapi id 15.20.9542.015; Thu, 29 Jan 2026
 23:52:53 +0000
Message-ID: <84b20d97-f12a-4e88-a108-c14c221a784f@math.wisc.edu>
Date: Thu, 29 Jan 2026 17:52:51 -0600
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
From: "John G. Heim" <jheim@math.wisc.edu>
Subject: Udev rules
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: CH0PR04CA0007.namprd04.prod.outlook.com
 (2603:10b6:610:76::12) To BY3PR06MB8195.namprd06.prod.outlook.com
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
X-MS-TrafficTypeDiagnostic: BY3PR06MB8195:EE_|SJ0PR06MB7323:EE_
X-MS-Office365-Filtering-Correlation-Id: 462ff76b-154e-47e9-7031-08de5f918479
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|786006|376014|366016|1800799024|41320700013;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?OWRxVFpUS1BaVzJvbnZkczhHNTVoZ0VTVUZCNnUwWkt6YmJ5MXMrVTRUYjR3?=
 =?utf-8?B?SzVIMDhtN2NGNjRZU3VVTlZFRHVybXF1YkFabU5IbDA5MDFvaXFUc3FJV1N4?=
 =?utf-8?B?N21haHNSSTJwSTcvMWJQTEl6WkNUSXN2RWdqUGJiM0hIVWRqUVVTVmVWdkVY?=
 =?utf-8?B?OEh5NjBGVUpXNUpTbWZKT29HbUJYRFdnRDVzT3NSSytudkpTb0lTeXdCbjRY?=
 =?utf-8?B?WkI0K1A3UXlmOXVVMjJQQ1BjZmZFR2QzdnBSMExSYURmckRCeDlKSkFabnJE?=
 =?utf-8?B?WTVCYWRXMmhjRkVjd2IrWk9nVzh4ZWZhL2xLNTdIQ293TEdIME5lKytnYUov?=
 =?utf-8?B?N1dzSE9nZ2pnQWdIRzk0bTNrNG5rc1pZd05xZng5dlNlOElpNGpUeVZLWkNi?=
 =?utf-8?B?aTZyZEpWbTFjMjhKMkhkZjNNM0d0c0pSOFh4WElCZ0h2T1dURHFIS215S1Mw?=
 =?utf-8?B?UlJnVWtZYjdaTW0wb1BRLzZidjUweEZOMS9TYSt2K3hPcjhDejltTVorR3Zy?=
 =?utf-8?B?b1Z6cURWbk53aEVnMlNmU1ZvY1o0UU94RmF5eXZYWFFYTEU5WjI4N3FHOHhS?=
 =?utf-8?B?bC9ndVc1K29UaENZTXN2Z2tLZGx6d0x0OW4yWnFwYStyM0xWN0Z1TmdKN3M1?=
 =?utf-8?B?MjZ4Z2pvSTlFa0JpZWlib1d6ZERvOXBNdkpsUVZtaUdoRGp5MzRBbVUvU2FY?=
 =?utf-8?B?YUU5SmJORy9tOUtKSi8wRnBFZzBOSVErNEg2NFdrMCs5R3ZvdGtTejBvQVRu?=
 =?utf-8?B?OFhoWCtUdTQwcWlRdThGVDRRVHF4ZzdMa0ViOUNaYjhYMG9NeFBNRmQ0S1pR?=
 =?utf-8?B?ZEhtN25DMjBHdW9rNDdNY1g5TnkzZHEzTmJ4L2N0dGQxUU1uV3dJTWFQTkgr?=
 =?utf-8?B?Mi9STjhETGR5VlUxMTM2WUEzTFRYU1lZVi96RStiTWxJck9PUXlDTnZuSWVl?=
 =?utf-8?B?NDFvUjNYNkVtOTR5UUdjSjNkbmprLzFJKzIxekd4K0U2VTRQNzhYb0JsVDRG?=
 =?utf-8?B?bDRvNUxKT1V3T1FOK0gvRElwV1o4SUxRdHVqNDY3clo0cWd0V2VPaXZtZXJu?=
 =?utf-8?B?QTRUQmNrWjNUeDNCcnlnYVplVmIzSE5hZkVIaTZWTVZpMHFabWIxRkcrUURh?=
 =?utf-8?B?VFg4eTZjeFZHSVZqMUIydG9tTEhnQmxJUEllWXRySGhDSlMrRXZqT09HTzBG?=
 =?utf-8?B?TlZpdy90blFUYTFNTUdzSG1POFd2YWljeGNnVEtGYjFKeUZpZ2RZMnpnVUYz?=
 =?utf-8?B?YUxzU0phQmpTN2k4eC9EZ1RyYTZzSElvR2I3WjJwa1B5THNhUkJETkJHb0Fv?=
 =?utf-8?B?dm1NbVNaYWcwcTcvaEV4RVpYUnVyYWo0YnRTTVhUODY0bUpJY05rdXc4cEN3?=
 =?utf-8?B?RWVWTDU2UmFCT1FXSU1MYWd2NStqWmtxSVYvaG8yTG1QSmtBM3gycWgwc1Ix?=
 =?utf-8?B?eTY5ZmdWYStOY3J0RXZEY2dxUlEzOW4xWjZOSnpvMCtua0RwUzNIWlNEdXRX?=
 =?utf-8?B?N2hsWG1waURLWm5TbHVRTWllOGdCUGs5cDMySGJDaEoxRVc5L2RUNTdqWkd5?=
 =?utf-8?B?UEg3Y2EyUWJLWWErSFUwOHFnM0ZKdXNEZXYvdlo5alVGUW0yMjVaUnUwS3kr?=
 =?utf-8?B?bEVURWJQKzlRWWJQMXRuK25BSDVCWjZuQktObnYrWVBhUkhFU0NrNjNESjBF?=
 =?utf-8?B?YUtJdWszUU53TUdDSVJTaVAwOU84aDRtb0JQakZONDJZNFpWRmNQeld4eUlV?=
 =?utf-8?B?N1VyTm8xZG1qNXZ1NkVQNi9DeHlVQXcxbGhmOUFubFc1SnFRVFl5NWtPTC9Q?=
 =?utf-8?B?TmZpam9GOGNGaWFIY3ZlaXVPT0Vxd2NZNWgyZnkrME9BL3V0Mm9ubE43VTZX?=
 =?utf-8?B?MGtwU3BnQ0hPcUl5bTJnM1lEcEtVa1ZLVjJKbEREMC9BQStQcU11L2RDKysr?=
 =?utf-8?B?TWVzWEladXY4ZHZ4QmFrM2UvVTFOcnp1YWErTXQ5VCtpb1creFRqd205dm1n?=
 =?utf-8?B?VkFNOHBLUHZ1UGRCTFBJTXZjQ0RwRzdrdk0xVy9iSkZEL2ZvcEcrTkoveWF0?=
 =?utf-8?B?anVwMG5seDMyYjhieXc0ODd6bmMzUnlEV0dLVGJPQjdGcVJ6Sjdjem1KZ1Vw?=
 =?utf-8?Q?hIT8=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY3PR06MB8195.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(786006)(376014)(366016)(1800799024)(41320700013);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?QzNWbzJNMEhjOENRa1pqU1k4RTkwZjVFN2ZZZlhnaXNyU1M3QnlQcDExVU1j?=
 =?utf-8?B?M1o4V3I4VWJlcmo1UStRQTIrenlvVEExTWRvS3RjemtzQTdtaEpRcHczKzBP?=
 =?utf-8?B?N1hZN2dHandDVEh1VVF3NWxYdmx4ak5HcnB2SzRyQnVqSXNQOTRiSkZBNWMz?=
 =?utf-8?B?Z0RmRWJHQmtxaERFWWJTVEFGcmZNelVKNW1nRXR4VXcvWnRVM00yb1BQSWVI?=
 =?utf-8?B?cXhsaU55NE4yT2VJV213Sy9MbU05VWV5YldaS2xXVzlkRFZVdzFjU09sN1E0?=
 =?utf-8?B?TEs5UXNOQXhaSE1hR1c0WVZIRmNJTG5pVlhmU0xtUnN5MzlHOTY0NzVsMk9D?=
 =?utf-8?B?NUlrNHl1Y0FzZzhxSStnNVdsMkM3UzVCOE16VENVNWtvZjZxSytxRGRKVk55?=
 =?utf-8?B?Z2RuK01iLzNtRWxQVm9KN2szVWtNbXVza2l1M1p0L0oxVHBXRlYwbzdQZ0JF?=
 =?utf-8?B?S0lQZVo2RFFORUVDWWpKQVF4eTRUT2hyb3NrT05aRmtHWXZtVmI2ZGhUaVB3?=
 =?utf-8?B?YTJLQVFUZkM4bS8xZW9OaXgxQm1tamVOeFQ4ZVViUDlOZlliR0NvbjRjREV5?=
 =?utf-8?B?NlVRZDJzeDJPR3YwVGhVZHArVHo3RVdZZE9hTTAyb2RUZ2dITFowWlZPdEtN?=
 =?utf-8?B?TkJVeHNrdUorOFF1QkJmazN3M0tpTUp5K2VYYmh4QkRpcE1LaldrRkZHL2E0?=
 =?utf-8?B?b2trMUtyUlZQNEUrNmc4WE1zQVJvUDVnTWYxd0FBaEdmeSs2ZitXZGFtbGJw?=
 =?utf-8?B?NG5UM054OU5qaXdiY0dWaWV5L2ozcmR4M3RFNnZoYUhpdU12SEk1a29IQjVF?=
 =?utf-8?B?a09ub3Z2TWRmUFVxWm40dU53Q1JyeG14STE3SjZicXBhNXRabEtIYmh2Z0J1?=
 =?utf-8?B?V0RXR3F6enM0cldXNExzY0tITG1Bb2paR2xwQ2swNUVTc1lGcmFYMWdXOEtR?=
 =?utf-8?B?NkJLWXdCKzU1SHVLemUrcVpZTlFJNzQrcnRBeHRYWlFyWlZGTzJNdnEzWGFG?=
 =?utf-8?B?YXlCUTE4NHpudHNsTHBWdCtiRjh4ZW9lcTNjakdEalpNeWxZZTlIMEhTNVZN?=
 =?utf-8?B?R28rUGpKQ3I3T29MZ213OWhDNW96enNZUkNBY2hJL1dDWGVYTzEzWFh1R0Fr?=
 =?utf-8?B?NXhTZUgvSlV3T05aNEFjWVFmaFBuMEU5SzZtdFRYYjY0cDRFOW5aMWdXTW80?=
 =?utf-8?B?eFhWOE42MjJONDZ5eE13NHFpcXM3SlZ1RDI2VUVXQm4wejk5NHNFWTNXUEJG?=
 =?utf-8?B?UEpnQVR2NjFCUmpGamRJQ1NKaVZ2TkI0eHVoalR4dm1hQlF0Z3NLSXloMUNR?=
 =?utf-8?B?QzNINCtQT0JOdkZEMFNhTnlCdTRkVndUdGhBRVl4SHAvdDlyQlp0L1JFazl3?=
 =?utf-8?B?b25kczM5bk5YSlBzS21DQ1M2cDc5M1lwUUhOTXl6dDEzRDRlU0oxS2FLKy80?=
 =?utf-8?B?eTNYb0xOaW5JOEpZczhBMk9rUVpWTVUvNFJ0SWszWm5JOXJKcy9oYm1oVkxH?=
 =?utf-8?B?UnVzbUgrLzM5VGhRb2FsemtPZU9pNWZEWWtPMklZSlhVV0NpRnEvWnFwT0tJ?=
 =?utf-8?B?bmNCMERRQ3VhN3RrRzlyTjA0UWhyUUhhL1JmSVVYVXk1ZnB6VzVhM0wrK1hy?=
 =?utf-8?B?dGpSNHJwTDFGbllMWCtjQ0JLK1hJaWRGYU42QlAxTzduQkZWUjhPSUhrSThK?=
 =?utf-8?B?aGVrNVl5R1A4NXhjL2c4TmM2NDZIYjMxMG52SFZpcTRmaUtWdW5jVUNiK3Iw?=
 =?utf-8?B?dUJxR1dnbDBBcUl4b1hNMHFRbHBMVDZ6THJCaVFuUFRrQm5PVFpUME9JeXEw?=
 =?utf-8?B?dzRUVExHR2hTaWVCejNzUjhuRlZIQzVwN2NYL0dkcUJFOHFydXAzaVNjcFRj?=
 =?utf-8?B?Y1RhdGRvSGsyL0NTYjJzSDRObG1XVDZNczBCdGZnVnRwYittdytXcXJ4TUd0?=
 =?utf-8?B?VDhSRk5nME9Ya0dBZHZxdmYrd1VLa3VVTlhCbllRWFZRaUhqbk9sMjNJMHBt?=
 =?utf-8?B?SDY5U285TjBrWDVPZFpEVzRYd0thaFFWQ2RneEMxdDBSdGpwWTBHK2w3SEhG?=
 =?utf-8?B?bmlZemFpOW9uZ1VEV1NJenhZaVQyTzQ5bGlwd25vUVRrbzlVTXpyblEwZEUw?=
 =?utf-8?B?U0o2a05XM3h6VU1xMnczSk1Qdnk5T0lJMkpSR0JMcm0wVkdQa1MzQ01SZmhj?=
 =?utf-8?B?dE9oN05MdnNsSDNTb095K0x4TUwzaVJCYXVtYU1DYmhjN0tMajhtU25ld01T?=
 =?utf-8?B?RHA4TGMrb3JmdVdCMG00cXJ0dHUvZlI4cVJhQmpBa3ZQb2J5bWJibDFUSUdB?=
 =?utf-8?Q?NoLQu0G4Nso6n+xsTv?=
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: 462ff76b-154e-47e9-7031-08de5f918479
X-MS-Exchange-CrossTenant-AuthSource: BY3PR06MB8195.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jan 2026 23:52:53.1680
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nBihfvKGSTETvel3Gr8E2PqvFoeZ2qPUh0jOpApgwEZxuwHYdK1b6blsbhA2kj9m
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR06MB7323
X-Proofpoint-GUID: urr4XdfASvNxpXTTz2LS1ovMD5GIJQ9a
X-Proofpoint-ORIG-GUID: urr4XdfASvNxpXTTz2LS1ovMD5GIJQ9a
X-Authority-Analysis: v=2.4 cv=CKUnnBrD c=1 sm=1 tr=0 ts=697bf2d6 cx=c_pps
 a=eZ5Ua+8tQ3RPWrQJUiaIvA==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=lre9DRYkaIEA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=LmX25Apk4y4huLQpDeMA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI5MDE3NiBTYWx0ZWRfX6wto30f/l2nu
 yZSagnS+Gmk5lXc5Qb4mnqQgSFEynYyirGv1cYVnLdP8qAPn7mWRaMt1pn0f92LnZE1OjYWC8qv
 VOlEMI0WB/wzyZqEXqfgLSdCA8cz4Ha3Iu2S7RN1H7azECP2SnwMm+rIFvLe9sIcmrMDEstjabc
 3jKAeSk5C/EDpSF1Eqbz2qghnUwR2eyt4XchypnedrA5OLtLhFDtN4fb3NHrik88nLgazZm5A+j
 X8pIa8jaaVdAdoRYZMI2JE8WK17118lvZJSP2EuHgImKgk0WkDvCktLKmP9W2K3ryznGzNQ66Ls
 yDzHTfK2bRqTWVWWnMMiLC+VL1eJgrYQ08XRfJ0t0AoVp5cVHlmRPckEtSDkk13wwByhfJa/Ob8
 2PmKhp9Nsyf0LCRih90cowI3ISCJ4p/wIz3YHYtyhXzclJVMmKwfKIbkDUC/dlRup76EnBRLBDc
 Chfmc+cmqNKy60n5fGw==
X-Wisc_ValidFrom: true
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-29_03,2026-01-29_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 spamscore=0 lowpriorityscore=0
 adultscore=0 suspectscore=0 clxscore=1015 bulkscore=0 phishscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601290176
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.89 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[math.wisc.edu,quarantine];
	R_DKIM_ALLOW(-0.20)[math.wisc.edu:s=selector2];
	MAILLIST(-0.18)[generic];
	RCVD_NO_TLS_LAST(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	NEURAL_HAM(-0.00)[-1.000];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[speakup];
	ASN(0.00)[asn:5645, ipnet:206.248.128.0/18, country:CA];
	RCPT_COUNT_ONE(0.00)[1];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[8];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jheim@math.wisc.edu,speakup@linux-speakup.org];
	FROM_HAS_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[math.wisc.edu:mid,math.wisc.edu:dkim];
	R_SPF_NA(0.00)[no SPF record];
	TO_DN_ALL(0.00)[];
	TAGGED_FROM(0.00)[bounces-1542-lists,speakup=lfdr.de];
	DKIM_TRACE(0.00)[math.wisc.edu:+]
X-Rspamd-Queue-Id: 61FD9B5C59
X-Rspamd-Action: no action

Does the Linux kernel automatically load Speakup drivers for hardware 
synths connected via USB? If I plug a USB headset or scanner into my 
Linux machine, Linux recognizes it and loads the appropriate modules. 
But it doesn't do that for Speakup modules, right?

I wrote a udev rule for my  TripleTalk USB synth. But it just sees the 
TripleTalk and loads the speakup module to talk via  the serial port. So 
that is kind of kludgy.

I also wrote a udev rule to recognize my fake DECtalk and load the 
speakup_dectlk module with the proper device setting. So when you plug 
in the synth or boot with it plugged in, Linux automatically loads the 
driver.




