Return-Path: <speakup+bounces-1485-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 47CFECE52AA
	for <lists+speakup@lfdr.de>; Sun, 28 Dec 2025 17:09:09 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=math.wisc.edu header.i=@math.wisc.edu header.a=rsa-sha256 header.s=selector2 header.b=BPUbmIYl;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id C7EEE381876; Sun, 28 Dec 2025 11:09:08 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id A53D03817D6
	for <lists+speakup@lfdr.de>; Sun, 28 Dec 2025 11:09:08 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 7EF87381812; Sun, 28 Dec 2025 11:09:02 -0500 (EST)
Received: from mx0a-007b0c01.pphosted.com (unknown [205.220.165.71])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 6A4FA380858
	for <speakup@linux-speakup.org>; Sun, 28 Dec 2025 11:09:01 -0500 (EST)
Received: from pps.filterd (m0316039.ppops.net [127.0.0.1])
	by mx0a-007b0c01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BSDk7oW3614635;
	Sun, 28 Dec 2025 10:08:58 -0600
Received: from dm1pr04cu001.outbound.protection.outlook.com (mail-centralusazon11010060.outbound.protection.outlook.com [52.101.61.60])
	by mx0a-007b0c01.pphosted.com (PPS) with ESMTPS id 4bb2dy8xua-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Sun, 28 Dec 2025 10:08:58 -0600 (CST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=W+kKLDhjGXk2w4kMKS/hZCXjjX5Dqg0evxwKpnIq3sv9HhqykL50ToH6aWnLFZge60R/KAzRK4YWMC0tzFkmgq9pdqvcEZH11xWYDwtomM9Wm8Wg01UWORluvEBFLNqT0L1UL1gXuRBd2p2QHyt58ONT/mCjKzy+LOqtMNcc9lWht3WAxGHpZNV9zyoVBzohA+UvTWsTnEGPQCZP8Er4OErvfeQgkcs8XiRfrscsSpRZWa3guywTOb3bkoiH7Tnp09rmeP1uWC1tw2d78M3XeTlv5cMohJCFdjLf/+pKDFIrSWjynKw0h4yYTHEQRpge+adSTF1yRfz7p7b2eDex5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eNu6cU1YQlgFWPOkRvLnduSXBne75NmIAVbHNoZZGDU=;
 b=C0ufoZHKFGID3oBup1ffAvSFV6liN1fKYFkDCykDLeraggJOB3M8pyGDVV3g+ggzsigZMEwhGob1tyt/I5HfsTuJ9BFMBLUg25N+FdX43t/WclG5AwliAQ++EXdeM3ZnHWhfaOam8J3GKAfBoM3AUzqlq9XQ096dxQLTzXUZWruBQBek0TJ9lRuOPQpXk5JLAgCx5WxdMt+D1fC7qgmcrV+FxJcUBhnyS8BhndxHowKhRq6tNwNOHfWwe/YdxRMSiXRO2kcW57GZOo71dijfvXUnb4DnrCPXreZbqnbaztHFB1LBb4EjHzmLP7r3ta11TM6+NcfXWtkhbOcqsG3ZGA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none
 header.from=math.wisc.edu; dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=math.wisc.edu;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eNu6cU1YQlgFWPOkRvLnduSXBne75NmIAVbHNoZZGDU=;
 b=BPUbmIYlI5zrel9CqfPiuCFvCpV5qETztd6H3+njrQMAELTfgn9G/sA8bbg4O/OTUtb4SfUeuV+433Qm8AHOc3wrzSCTe+PmOhTpLnd6LxMy+BNmsiFAnxu/z8ZqN1r/n9jLIhkfyzVys+DY26NVSaAPnoB7at/h5su1KyEUm4OKrvVu4TEnbLceuP/UhwnuJtOkgp5q/7/DwCWPp402G1ZR9pzQVlOJGezyhi99SuwswufFV+OU96q4WXl7IOCtVn//xR/iOu+0EKBWFBv6mfDV2wvfBI0drrRjM5P31pZDF16NDSX6AicDZO60b+/A03aD2Xf9PBhLRq+OLmQxFg==
Received: from BY3PR06MB8195.namprd06.prod.outlook.com (2603:10b6:a03:3ce::19)
 by SA2PR06MB7530.namprd06.prod.outlook.com (2603:10b6:806:140::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9456.14; Sun, 28 Dec
 2025 16:08:56 +0000
Received: from BY3PR06MB8195.namprd06.prod.outlook.com
 ([fe80::a7ad:fb62:4389:fd8b]) by BY3PR06MB8195.namprd06.prod.outlook.com
 ([fe80::a7ad:fb62:4389:fd8b%5]) with mapi id 15.20.9456.013; Sun, 28 Dec 2025
 16:08:16 +0000
Message-ID: <6b154ff0-fbfb-4eb7-9ca4-21ded53e7c22@math.wisc.edu>
Date: Sun, 28 Dec 2025 10:08:14 -0600
User-Agent: Mozilla Thunderbird
Subject: Re: Building a hardware speech synth with a Raspberry Pi
To: Cleverson Casarin Uliana <clul+speakup@posteo.com.br>,
        speakup@linux-speakup.org
References: <4f9075a8-0252-46f9-8594-1dab9286474f@math.wisc.edu>
 <01FF57A0-2383-4625-975C-944AE93F762D@speedpost.net>
 <eb7fcb31-4b34-4e31-a2db-67e41cc8a79c@posteo.com.br>
Content-Language: en-US
From: "John G. Heim" <jheim@math.wisc.edu>
In-Reply-To: <eb7fcb31-4b34-4e31-a2db-67e41cc8a79c@posteo.com.br>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: CH0PR03CA0331.namprd03.prod.outlook.com
 (2603:10b6:610:11a::22) To BY3PR06MB8195.namprd06.prod.outlook.com
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
X-MS-TrafficTypeDiagnostic: BY3PR06MB8195:EE_|SA2PR06MB7530:EE_
X-MS-Office365-Filtering-Correlation-Id: 9574d422-b62b-4a2a-88c7-08de462b4f2a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|366016|376014|786006|1800799024|41320700013;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?cklJbEErdlk1VDNJRUJxbENPZnpxZWhjbEdhR1ROOHVtOGhwSHVLMVdod1Av?=
 =?utf-8?B?TGladVF2UXNjeStPb0o1SUxOUTBwSUsxZG9aZURSTGtEVmhUcWZoZnRoeE1z?=
 =?utf-8?B?dUYrckUvU3NCQUc0OU5RRDJuVVNEV1RQOFhTQjkrL0Z4ZkcvRkc1cGlWYVVO?=
 =?utf-8?B?WmhVaitmbjdtcjV2Mjg1WnNIb0o0UE1LdElLcDRUV0cvbFZWYWo1MzVTN3Zv?=
 =?utf-8?B?K0huakh5RDlhYUNRaC82bEtqcDFxQ21FMFFBTHFkdkx5ajdaK0pEZ2JZTURK?=
 =?utf-8?B?TDJwa2NBUURPRS9ZU1JGaUt6VlFuekF1KzNVZUpXck90clpzdVUxY29ObEps?=
 =?utf-8?B?WUpQMldqbzdLOEZnaVJsL2NYRjVzL2FPU2F5eXlqTW5IYk1iL05uMHRIMG56?=
 =?utf-8?B?WUp1QTQ1bXJRYk9tR05WZWEwcE9ZZys2SlNsUzNMbi85ZTVjNlRFN3ZWTXhJ?=
 =?utf-8?B?cDN1MVdZdWNNYmlCMkRnQ01LQnpOeE9kOVZsenBVVGZLL0xOWDFaVmNjcE5a?=
 =?utf-8?B?dm9aMTUrTlREOWNkYm1XNEkvTDhTYTVMMjBuam1US0dKSkordFNKN2tMTWJy?=
 =?utf-8?B?UEliUWZzVzVFQnNRai85cWZhV0NQRnFjaXI1a3pKT2FxR0tOT2ZnQ3ZQYlNP?=
 =?utf-8?B?VEsrTjBCY1RSUTZJTEQ5Qk8zSkV6K1ZLUlFGcmE2Z1F6azJVUTAwN00zczVK?=
 =?utf-8?B?a1VUWk8vZkRyaGZjZHFBS1pMbFlDSjhrMXpReWxESjFjaFRxUG9NRmJtYk45?=
 =?utf-8?B?TTQ4L2R4TUNsR0FTai95ZVRtMkt4SWYyb1ZOdnRONkoxaXp6ZThHVnJScnZH?=
 =?utf-8?B?M01pbG5JcjZDSmVKK0I2dU1WcndsODdRb29oeWRmMUxETk9FZTBpbFRCZDZX?=
 =?utf-8?B?TktSdThucWhZaDZoYmFkME9vSEtUcmNCZTdLVWhwOGs2UEE3T3dmd0sxUGl2?=
 =?utf-8?B?RmtMMUZzZkdKMWxCQ3pLL3NjNGVxcUNDZG8vQngrWVB0UUF2aWZaNTU4S29k?=
 =?utf-8?B?Z25UOHl1V2xiYXlmeWgxNUlTcERZckhSbUwwUEZFeDV6Z0RkZTZTbVRUZWRL?=
 =?utf-8?B?S0MzVFREdU83eit1V3FsUEJaZUpIODlkYWJYb0VnVU41N0JOOW5SZUgvNER5?=
 =?utf-8?B?a0lDYmFLc0pCNzRiS2M3YTc3aUdUVEtVQ3p3MW5Ka2FpMDg1T1JlcnJPdG5K?=
 =?utf-8?B?ZVdWeGRLeXQ3M0t5cDgvUldRdXFUK2FhMFRrWHhmNHpQSVRLcEgrcEtXVmNa?=
 =?utf-8?B?VzBGNzJNNXE2WVdzaHdkSHFxdWQ4YXFjS3pFRnVIUDVQcFhkRmt4MExSV3pK?=
 =?utf-8?B?dGErUFE3Z3ZYRkY2QnJBRUJTblpSc2RPSG81OHF3WVJrTUJtZEtGamJ2STFx?=
 =?utf-8?B?Yk0ybmxKYkZrTElORFhaQ1lNbVNmcDNJaGtPQlRjdER1T0VjWWlKaTdvdm9o?=
 =?utf-8?B?cjArTzc2M05aMkJLNnhYZm03cXRvQzBpMDNzeExjQXQyQnA1Q3JPcWUrMGF6?=
 =?utf-8?B?U25mYW9wMm43ZXhsSmJoVktGNGpnc3ZvV2ZJeTdTOHRCK2lOK0kvK05Pd0Jk?=
 =?utf-8?B?SHBGUjUwVDNINTNPRmFzOUt2OGtrSGFkcnRMNEZTdHc2Y25pWWgvTTF6UkFu?=
 =?utf-8?B?MHVJejZrcENXelhnclFsR0FJSU1UdHZQOElEcm4zYll5eitZaytsbnA5WVcv?=
 =?utf-8?B?OUNZREJIUnBkbzg2QVJ6Wjl4UGFONnlhN0dnNDhFUG5SQU5uL3R5WExtUGFH?=
 =?utf-8?B?OVExRFYzZWlLVTN5MXc5K2V4cW9LTzhFRFRnYXZIa0dWRGNFZHJ6SzVqdUMy?=
 =?utf-8?B?TlFYVjBvUWRyMGVFNHB5aEFHMEdXTW85Q1I5dGk3MHhyNEFyejhjZGpTdEds?=
 =?utf-8?B?OHJhVkZPQzQraU11a2NnZGVwMlYwSGFBTE5ra0FkdzQzenRHSGZNaUpMWGkv?=
 =?utf-8?Q?JvmvbRg79PIGDPLe8XN2aQrhnm5mxiTe?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY3PR06MB8195.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(786006)(1800799024)(41320700013);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?WDBjZldtb2gxZ1p3T3BUMFFYeGE2YyttM0tyTWtsY245VGFFMUNvUG1CdTAz?=
 =?utf-8?B?NmRvbGZrdFRzazQrdUFqMkZjQmVpQklpNWRUT1NoQ2FmWTVwWkowNGp1c1c5?=
 =?utf-8?B?b3BuZ25FUi9LTVJMd0tsbDBTdkFuRmMrUC9nenBpRkJjUzhrY1daeG5kSXI0?=
 =?utf-8?B?Nit1cVNlbTdzV29TNHgyM0xYUXNOcEVSQ3VnK05oRWhaaXNkQ051WHpBUzlN?=
 =?utf-8?B?OWVWV1drbzBiUG94TjZYaFhxZU50Mkc4TlJscGNqUmtjVHUvL24xZDVzZlhz?=
 =?utf-8?B?ZjB3aDNPb0w1RmdpbUJ3NkJDY3gxTXo0L1FlcjFZbm5adEF1cFlFYmtGcUU2?=
 =?utf-8?B?VDVxTUl5eHZFWWdBNkdBOVovaXh0Wi9iREVRdS9IVnBSNFVLNSszOVVSemRI?=
 =?utf-8?B?RWcrcklsdjFOVUZ1ekVObE1ObWd5UVJvaTlMVDRPakdwZUJ6OFdSWFUvWnRj?=
 =?utf-8?B?UWZBOWJqU0ZEUHlHbm5URjArTVpENDBVeU8zL2E1SE13R0lBRGUrZThhR1BB?=
 =?utf-8?B?MEZ5UUdaSGdpWU9IV1JQZnFYZWtzd0ZvMFcvT0QrVUhTSUVsMnFmWFJPT0VR?=
 =?utf-8?B?QmFFbnZlZzdzN0QyQjc2RzFpUVhyM2VaendRKysrdkpMcXJ4bjNHckpld3RW?=
 =?utf-8?B?eWF3OGl6ZWR2YTZwZFRQNzF4UC8zUUNBNkliVDRBblVBZVhtcStkNzNPRVph?=
 =?utf-8?B?VGI2YkxrQ0RpU0ZBQ24yNVEzcEQwamdwN0xoeVRNUGdjYkxjNnBMZjFoWkNV?=
 =?utf-8?B?UEwyQW5zd1l1blFxRmpYMURxb1MyOFZkM3RKZWRBVTMyeXBuZlNWaFh2aE1y?=
 =?utf-8?B?N25TRzRaY2FIeHJkUS9Id0ZQdENTQnBWVjA3U1BCcGxjUlVlYk1yYmE5WlhL?=
 =?utf-8?B?TVZIS2RvcVNNVHpQU0cxUVNibElOSHFpNU5pZkhpYmZIaVZNNXZUczFsaE5X?=
 =?utf-8?B?UEJ2Um5HK3hJYVd6VThwdko1UlMyTTJkSFpoZkxPb3FUaHFEU3djdVBWaGpi?=
 =?utf-8?B?S0FMK2lUQ0RXNWh2SUZmMmpZditMUGlHamMrUDBzVlFGSUpBTGRhd3hVazQ2?=
 =?utf-8?B?cUhHc1J5Ylo1eDM0SEtXS0JNUC81cm9GUTR3ZmYrS3VsNk9uQ0pDL2hDSEtP?=
 =?utf-8?B?MzdWM1F1UmtLSytVeHFkMnpLWXRLK2d2dElBRzExT1hBSWxDOTk5L3BMTkdE?=
 =?utf-8?B?UVdaN1czQk9jbmwvV0RHc2V3QzlMTlBPRHVuZER6cEp6UUxhNXpPRjZNMWpK?=
 =?utf-8?B?WXRtMFhXbjF6TThYaTJoOHE5UlIway9OcG9JbjB3WGp4dUlZNjl0eDZMbkhM?=
 =?utf-8?B?S0xYTEJnM29HYUptd1NSSngrVnpaNVByT3hXZnc0Vm5DZ2swQU5JNzVuNVFI?=
 =?utf-8?B?RERLTUg0WjNPYWlnVnZDeFQvZTNERmtHeWVSbzN0cFZnQzdlVDdTSmxVRzBB?=
 =?utf-8?B?Y21iOUlmTTE2aWJUQmhuY1F4ajZ3aTlhZ1cvSGVrQkR3VFZWcFdwMkw2Zk1T?=
 =?utf-8?B?NVlMWHpZbFdERUpLL1NsS2R6eGtIM1pQTW1XTHR0YllkSGt0OSswaUphUUFF?=
 =?utf-8?B?V3pXS2hYVTM3NWZSbGY3dGtGakRodTVtckhDUkRNUGxuQjgzUkc0SWJHbFB2?=
 =?utf-8?B?QVRkUXpleU1LS21qV0hBMXBUcG1NR2ZjR2RmOEhEUVA2d1hyeHZsaGdlM2hr?=
 =?utf-8?B?NFhtNHhmbnV6d3NLdko3N1IwUVVNZ2hyUlE0aGhwbjlybE1WMUZLU0F0ckxk?=
 =?utf-8?B?c3JpUHFvUUhkaU5CYTVRampGZ2ozUWswaE1kTWRCc3VZRm1OVGsrbHdWWnFR?=
 =?utf-8?B?YUErQUF3MlM4NHRRNXBTRU9QYTlZcHdOS1cxYjRWTEdYUDcwcldlKzlRN2Zi?=
 =?utf-8?B?UTJTWkRwQkpYaVJEYmNsOXcxZmRRS0tqc0JWLzFUK3NLME9RZ1BMMVFUMzdo?=
 =?utf-8?B?UGxDT1Jjd0NZd1NseVc3MWU5UW9CdDhzUDVQNHFnZkNJRTd1L05zUzcrVkll?=
 =?utf-8?B?dE13SThqN1dPYWI3dHVzYzRRQ1dMMzcwdVhlbkRMWGZtOWt0NUFJSGM3c011?=
 =?utf-8?B?NVRiSURlcFJHZ3A0MEM1SXl2cEl2K25tTW50bWNvS3lsM29NYnBMbEo0U21u?=
 =?utf-8?B?TmMyR2VJVGxldVhFOXBTKzlUR2hFTnVXN1VMOENPVWFjeU96VDUzdDZXVUc3?=
 =?utf-8?B?Um4zakxqY2VhSzROQUU1RmlHOFRrc0dqanU4UTIvbG93UWlQVUxrc2RPZ3dx?=
 =?utf-8?B?R3o5Ri83RGRWOWZaQWIrd3dsb2I0Q3dHQURGL2ZONVdGRXJqcm5Hc1JVVkxw?=
 =?utf-8?Q?Vg1sfvlPYfOoR1oDq1?=
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: 9574d422-b62b-4a2a-88c7-08de462b4f2a
X-MS-Exchange-CrossTenant-AuthSource: BY3PR06MB8195.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Dec 2025 16:08:16.0547
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GszSMvHO/P2Y1q+KSW+ThpCOka+2CL1KO3pWD+VGLEoYcC4ns1E9Yjzto+4MRUU8
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR06MB7530
X-Proofpoint-ORIG-GUID: -bavajPupVFnosEvtI7AD-VTXty6ilux
X-Authority-Analysis: v=2.4 cv=PLMCOPqC c=1 sm=1 tr=0 ts=6951561a cx=c_pps
 a=p/cDci9/Gahjm/bBNnPm7Q==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=lre9DRYkaIEA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=hMIG6JFUi-7H2r6FWMsA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI4MDE0OCBTYWx0ZWRfX8rukCh/SxeV/
 EsqIvV82MfhFe2NRE8O0YLKcrFqA6UvcvCsH3D7rNPel8CP0Qh9OkmAAuUNaQwJ3outikBg57nL
 E0pxfKadyaShEa+hXUsYO7BodivOkMHqoV57E9rK8b7mPePSpb0zCgxGQbBnuVoN90dsWVsw7vH
 DX7djb1WII8mG4KjbRDiwUPdWhqEfl4VgOAsxzF3YLpZoF/IqKjSdLBzFEan3PMB/VVfRoe0FTs
 gKYSF97wRzlX6pSSPAdnAEqpNVr4DWB6hjm6p3JuVXSXFtuKWWKzioVYQl+jXsBMLf+hVMJeJoS
 ha9Yrv1yqf5CXlGeMDCOzZ+PlLpmI+Bg5WlIyORiv0CVl4AVZsSDODpM7eC/zPuv0rvWN+X3Xsy
 q0mU4js4Y5mItvP3JvzkHA60fvTuowK8V0XqgM1+hrL74IHguEdL/gq1GfYXioP194icydXSSow
 lNmSgBm0KkKHkL7N8ag==
X-Proofpoint-GUID: -bavajPupVFnosEvtI7AD-VTXty6ilux
X-Wisc_ValidFrom: true
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-28_06,2025-12-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 malwarescore=0 bulkscore=0 impostorscore=0
 adultscore=0 priorityscore=1501 clxscore=1011 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512280148
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

The synth emulation is independent of the speech itself. My python 
emulation script acts like a LiteTalk (for now) and speaks via espeak-ng 
(for now). A user will never care about which hardware synth it is 
emulating. They'll have to know which synth it is emulating but it won't 
effect their experience. They might care about the speech though. I 
intend to get the emulation working perfectly first and then add support 
for other TTS engines like voxim and festival.

The only reason the choice of which synth to emulate matters is in how 
difficult it will be to code the emulation. People have said there is 
already code out there for emulating a DecTalk but I can't find it.

PS: I was able to log in on my desktop and ping another machine on my 
network using my Raspberry Pi synth. It was a struggle though. I thought 
that once I got this far, I would be assured of success. But there's a 
huge latency problem. I figure that's because I am using a bluetooth 
speaker for sound. But if it is because of the USB hardware on the RPI 
that could be a problem. It could also be that my code is inefficient, 
forking a new espeak process each time it needs to say something.


On 12/28/25 4:51 AM, Cleverson Casarin Uliana wrote:
> I think that ESpeak-ng is more than enough as a synth, because it 
> supports tents of languages, and also because probably most users of 
> this project won't use it as a permanente synthesiser, but mostly as a 
> temporary solution for experimenting and installing new systems,
>  among other sysadmin tasks. AFAIC, Dektalk for example supports a 
> lesser number of languages than ESpeak.
>
> Regards,
> Cleverson
>

