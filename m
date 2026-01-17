Return-Path: <speakup+bounces-1512-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id E9AD9D39039
	for <lists+speakup@lfdr.de>; Sat, 17 Jan 2026 18:58:02 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=math.wisc.edu header.i=@math.wisc.edu header.a=rsa-sha256 header.s=selector2 header.b=FCK/p/JA;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id C64F038193F; Sat, 17 Jan 2026 12:58:01 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id A18833817F7
	for <lists+speakup@lfdr.de>; Sat, 17 Jan 2026 12:58:01 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 9700338184E; Sat, 17 Jan 2026 12:57:55 -0500 (EST)
Received: from mx0a-007b0c01.pphosted.com (mx0a-007b0c01.pphosted.com [205.220.165.71])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 1AB053809F2
	for <speakup@linux-speakup.org>; Sat, 17 Jan 2026 12:57:54 -0500 (EST)
Received: from pps.filterd (m0316036.ppops.net [127.0.0.1])
	by mx0a-007b0c01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60HBNBLa3247985;
	Sat, 17 Jan 2026 11:57:50 -0600
Received: from cy3pr05cu001.outbound.protection.outlook.com (mail-westcentralusazon11013058.outbound.protection.outlook.com [40.93.201.58])
	by mx0a-007b0c01.pphosted.com (PPS) with ESMTPS id 4bqvfx49nb-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Sat, 17 Jan 2026 11:57:50 -0600 (CST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=p/XpjRRm1ZynqMzZ8DWjlB8dn3i8lDfxo7s9AzWtIlEc12ss+phZx16gUO31U0h+n/GDXiICNDik3VH4jLYXgt+Ec5lZl/oaZejbofq46QASSbCezcXGAkYoj5VpsLFJewADrvV23VEjHreAS6yY0WpXLQWZ8/+ZV+yKR2VzlAsUDS22RE5oWhp5DAkdmak5MefXsUGG9igBj1c9sBptvYmxTUG+Z6XVm0YaVzrFbbFvgD2dxlEjxyRFJEc3OQdvdJiDg+XaFQXmeH1ZZ3C+rPdHjCNZyyFZuvB3GVdQQN8bu/oL7qLgw59I4uBIQYViu0yxFLfFwFHPde3rlvmGtg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Lnz9hN/Jox2pKoip8KHgRmtqgTbjjLG7/YkfIF1DWkg=;
 b=tzVHjen3kyhHb5F/jTc3fzMl3Pl/x9hpQnhu9a4t2m7R9OOzintEApjTbOcCkKCdQBe0po9tO8ADRH1vHQZBaDdCk1cXlLp1XVpe6vE5AaZkPyK968A7WYOu3NPTYwgEGJKGvXhH4GdMUweYroUgqXM5gZgsa5ShN/DqiKtozmW+PEdFaGRiGD/iri+enz0e9m1IyYx6gQTJViaTptUrKplwvvHNbv3t/9PCKKDKVIQhnKUePkEM2x5mF+UwTiEoZtKb9Ql3qouYukiOkMyVeHuOPjZTmYhCt9DKHMefGIUBvfMfNB1xhCJAI+lrMs2DUZcK35czlVrHeC1gYWB+4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none
 header.from=math.wisc.edu; dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=math.wisc.edu;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Lnz9hN/Jox2pKoip8KHgRmtqgTbjjLG7/YkfIF1DWkg=;
 b=FCK/p/JAOxOdPPp3+qtE3Ih0jrzwA6U/ppD4TuGFdV7ONDBb1vvDYvTo+FPCbN+0zOp+1r1JVnIx/NyhfXZz/Yl89ThT0bBVXTixEjjlEzO3UiOIeUW9YTy1mRIzCBhC5A03jeWfif1PEW+Qxk4aP5fh+e3F0AQHyfIhgvmnMX0h/z1a6DlJdopVps+5TXCk7XZFgsquaUqjBuG2T4hcrEObp89d91zmvv47dIjqz9iQeGZwu9rSWDOfo2ErYpfquGNJOuqmpcl0qCrWvRV0axEFzb/cTc0un6Go+R5lS57EF+378H0Gbk5fmpGI5nPwcihhaeGSBOeoq5+yvZF0ew==
Received: from BY3PR06MB8195.namprd06.prod.outlook.com (2603:10b6:a03:3ce::19)
 by CH4PR06MB10704.namprd06.prod.outlook.com (2603:10b6:610:244::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9520.9; Sat, 17 Jan
 2026 17:57:48 +0000
Received: from BY3PR06MB8195.namprd06.prod.outlook.com
 ([fe80::a7ad:fb62:4389:fd8b]) by BY3PR06MB8195.namprd06.prod.outlook.com
 ([fe80::a7ad:fb62:4389:fd8b%5]) with mapi id 15.20.9520.006; Sat, 17 Jan 2026
 17:57:48 +0000
Message-ID: <32413f21-2f60-4582-8361-f9489d072da3@math.wisc.edu>
Date: Sat, 17 Jan 2026 11:57:46 -0600
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: "Speakup is a screen review system for Linux."
 <speakup@linux-speakup.org>,
        blinux@freelists.org, raspberry-vi@freelists.org
From: "John G. Heim" <jheim@math.wisc.edu>
Subject: Update: Hardware Speech Synth via Raspberry Pi
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: CH0PR03CA0292.namprd03.prod.outlook.com
 (2603:10b6:610:e6::27) To BY3PR06MB8195.namprd06.prod.outlook.com
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
X-MS-TrafficTypeDiagnostic: BY3PR06MB8195:EE_|CH4PR06MB10704:EE_
X-MS-Office365-Filtering-Correlation-Id: ac747f22-f70b-4cf1-c8f4-08de55f1eca7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|786006|1800799024|41320700013|376014|366016;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?STdrMngzT1FLSGkxM3RCV2x1SHJ5bTFmM0RzY3g4Smdja0VYb2xmVGIreTBE?=
 =?utf-8?B?MW5abkRHSkc1clY1bGx2Z1FVdk9may9SNmZUeUhxZFBvQm5kZGVHOUtNdFBx?=
 =?utf-8?B?RHdRblU1SG1qMWttRGJwWmNKVkhueUhpMVduZk9HQnpkM1FyMG1OK1g1dklZ?=
 =?utf-8?B?RmpwRm4vWXhXNU5RMlZGZXNLdS9DOXZWRUFaODRwYlZYZzQ5VC9RdTNDVXNK?=
 =?utf-8?B?SnJUdnd1RVR0ZHNJSVdHLzVzNmRuWmFsSUk3WW1VbW91ZzFlQ1dDeFhTcnor?=
 =?utf-8?B?aXIrTWpTUmtPamIvYlphZHYzYUczZGplMk9ZV2lwcUllamlqRVZqNXNMN1Ax?=
 =?utf-8?B?ckgySlhuRW5DUDJpU1hxQnR0M3ZWMzVESEQ3OU11WU9MWUdHbkgySmgvc20z?=
 =?utf-8?B?WFdvMkV6RzVSaU91RGtaU1Q5cVdyblFaelBRcVhabzlGNnJMWFIyaVlucFA4?=
 =?utf-8?B?WFNEVWNqY1pSWVEvbDg2ZmhRalNrNTFKalFSeWROczVVMHV0TlFsQXN5aEFm?=
 =?utf-8?B?TkJxUGNRRHpOaGo3bjd1QjJvT3ZPRThxdTN3eHJ3bXRnQi9iUkN0MFJqRzE2?=
 =?utf-8?B?QmVQaytYckpPYk9tYW1Qc2VmUHBMVTVJdVNjMlViTFFvSmZ1UFFFTXBySGdU?=
 =?utf-8?B?c1VLcTR6eEdQLy9zQSs1d3JLdXZYRXJmMWJhdmxyaG1QU1l6Rlo0MU9GcXI3?=
 =?utf-8?B?WUhoeUYwUXlrTmQ2d2FDZy9URXZnSXRpeEdIVDBnT2lTUy95c1QvbnpEamxG?=
 =?utf-8?B?c3czUVhZSkpseHp1V3FwMXMrR3hYMEExUHI5Tk53c21EWFVkTXlNZ3JaTktm?=
 =?utf-8?B?YWtGdXBETHlWMHpsdWNjSFdySkZPUTBHUnJEV1ZnVE9XV1F6SGJOaXIvSkpP?=
 =?utf-8?B?bXREK3ZaSlliTXJEa2toRG53UFJKYTY1QWpmM0tYWTJ0RUVhK1FvRWNweFM4?=
 =?utf-8?B?NG1xZ0wvNDhoZjlCbVhET1lJd2ZTOFRieU9PTWdVeVdrZjVhaWxDa2YrYWtL?=
 =?utf-8?B?ekl0RnhSQTBhK1dQaHdJSi95SzZEL3ZMUStNY203azZXTUVZTTZSQkdlandi?=
 =?utf-8?B?QjA5SldQcm1lOUlyVG5mYmNaUXFhUlRiN2lIY0V2NWVqUS9rWS9HTEc3VGpt?=
 =?utf-8?B?Y09lQlFyU1pvVDBNT2x0UlpkMVJUeTBzQU83TXlvQTR4QUdKWHM4NnRFSVRV?=
 =?utf-8?B?UTdsdzNlTVo2MlpJc2FwRzFFS2pobmNEMWh5L3lRRlVlZ0owWEcyNkZYV0R0?=
 =?utf-8?B?V0J0dFE0akxkeU5lM2RJWXF1R3BobTZIUXFldUQxZ1BWd3AyUDJDdFc5allY?=
 =?utf-8?B?aHpYM0RGcFBBMmVMbHBSNDhJM3BOVkpueGZoNm9SVVZ0NnBZTXRycW9XWFkw?=
 =?utf-8?B?elZPNCtVOU04RlZHNDFPNk0ybjZqZlc5QVBFMWhueGpIUXBaY09DK2JRTTNw?=
 =?utf-8?B?Tzhhd3NvVFNvMS8yV1I1elJtbjhKZElCSHBhc01tWG8yMEd5cnZLL3BiWXB6?=
 =?utf-8?B?eUp5R3lRRjE1SXp1aVBBZ3pIVCswWWI4RVhybHY5dWNTOVBxYk1CU0FBWkZH?=
 =?utf-8?B?RUJaTXVFYjRqT2JnRFV1dk1PaDlnRFkyRW1RaWJGNXlVbVI5Q3FSWWhOZll4?=
 =?utf-8?B?V1VuL3l0eEczNWlyYXRUMUt5ejJDT1M3V0hUeGFRUkl6dVl1WU1oUENVb1B6?=
 =?utf-8?B?b0lzcmRFSkJsc0N2cno0SkN6NVJCRUk5eTRJS3gyNjlnTXV6L1ZsZ0hwWDh1?=
 =?utf-8?B?M2puTWNkSU1PaUp5TkZzVlJOaWtpZFZYekE2aVFMRFZQVUFBQko0b1Avd0Np?=
 =?utf-8?B?TmFIWjZtbXJSQU9LcHZ4eFBxMDVwTzlWSk5YM1p4ZXo1eHltampmMUhCcnM0?=
 =?utf-8?B?RlJ1a3BwVkw5cG9paWdQSzA3MlBBcHA2WUd3ZHV1TWJDalBQbVJZK0d6Rmpv?=
 =?utf-8?B?dkZLTkhlbG1MNHdOZVc5R282dWROM0hnRnE5VDc2YVVkSDl0dmRYSlZHbXdE?=
 =?utf-8?B?eUY1UU8vdlBwMmRxWHMrMU01a0NONnhxRGJVQmdCdUppUEMrKzhHaGprYjNo?=
 =?utf-8?B?SFdzeWtVZmpSci8xNUlnTjJLT0hLOS9RSlpSVlR1OXZ4cm15NlUvdzZBYjJN?=
 =?utf-8?Q?z+vM=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY3PR06MB8195.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(786006)(1800799024)(41320700013)(376014)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?VFlleDN2dDlrZitqKzl1U1dyUWxRdTBid3J4WWcxbFFTd3hkUHYwUXJVZmw3?=
 =?utf-8?B?S0N5QTNTWHZ0YS9oZHR6R2ZLMGtxMjg3ZHNhYTBmY3MyenFmUDdTb3Z5TGs5?=
 =?utf-8?B?V2ZhSG5zL3EyY2VYdnJsd2diczRBNExFakRtY0tLZkIxTDZvMXBUZVhCMzZR?=
 =?utf-8?B?ZThYMVNPc1VqNkhIZ0YxekR5Y0Q3cHAxQzFQKzhHZ1R6aUpaVE1ROWZlNHRH?=
 =?utf-8?B?U21qbndkdFB1RkZJQ1kzV3NkZUVXTElDZmgrdTRiOHF2aDJxUGhtWStxM0lQ?=
 =?utf-8?B?c0ExU3FSZlFBQ3lreko4WGQreTRJcDArSUNLdHE1SG52QWxiQkQ1OXgyU3RK?=
 =?utf-8?B?Y0N0VWF5TVdsOVVLYjZxSTh1bFBCZHF3N2svb0VRV2xCaFlZdlR2NEFhbjNz?=
 =?utf-8?B?QWpqeW9CcVdla2hOc3oxeENLRWp0NUwwTDJKcDhEQTBYc0pYd1VhcWZGZ0Jq?=
 =?utf-8?B?WVZTYnJwQ09EWkYzWHBjenNwNUJ6dWNSRG85OWpWNXhKTU5YNXFGK3grakJn?=
 =?utf-8?B?ZTcyVUlxR2FybHRaZ2ZaNUlQMStVYm1aWTQ4TDVxTzAwRGVnSVMrUnc1V1Nj?=
 =?utf-8?B?ckIrVkg3MmtaQmJPWk83bEcwd1ozbDNaRjFLZHNCTGlRLzlxeExNMzZlTFNC?=
 =?utf-8?B?MWpCM3RNWDlUVkp3NXRYQzRRa2U1ZUEwWGljSW15Tmh3RzBhOFc4UlpOODFX?=
 =?utf-8?B?Ri9YTWdzSU91TitVWFBpSjFQTlF6US9ZckR2ZkdOMExDM1orUk5vWktNY29K?=
 =?utf-8?B?MGlTZGxGL0NGZ05vSGg5VnNPODJ4VWdSb0FpTkpTdkE1T2krMXNMNzl1OWFX?=
 =?utf-8?B?NFR6bDFFWG5kLzhrWGFDOCtWSm92VzcxWDgreFJ6Rk1qZ0x0VDNKdVhXQmVI?=
 =?utf-8?B?VTVJRURlRlVMUFBrOVBmMFZuYjlRMlcwVm5IZkdNaEp1Y1BRelMwOHk4YXhU?=
 =?utf-8?B?VXZabFdjVmJtZHVlMFZoM2ZEUSswbmxwTHUxRElsd2RLMVlzbU5rdHhMbHF6?=
 =?utf-8?B?eSsrNGVvUXZWb0EvZll2MWZIbWVuVkJTOUxXRnFFMmUwZUFRSVVvNjlzUE80?=
 =?utf-8?B?dzlMNk9BTmpnZkp3Szd1N0VmcVJuU2pZZWFvVmVHQ2ZXSUVLMkdGZUhNNURt?=
 =?utf-8?B?bzc0ZzJNWHM2ZWZsMWpQdkdXdzNiR0hIVGw0OVBSdVBnRkxiblMvVHUwaU0v?=
 =?utf-8?B?M2VSb09OYVVOOTN0VElDMzQwNnFJUVBjekZUOGx6bHV3ZmhjVlZsQjZrV1pR?=
 =?utf-8?B?SFI1aHpaL25LRDU2Yk5WK1RMWk1mVEdwVFJqR1pkR3htVitpRXZPaVZHWThM?=
 =?utf-8?B?WmJ3T2N4YytZZUlyMkwzek00SksrN2FqVXFJcjVKMUdxTkFFbnBpa002OHZ3?=
 =?utf-8?B?ZExVZk1VOGc3cDUyZndwTVFYeWpncnIrYUtxUkxMQ3F6dThoZTVwQTFoNVFL?=
 =?utf-8?B?WWgyUHd6V3U2Qm90R3Y5STEyQzBiVTlGY0d1NzRGaVoyVWdBK3JBRzZZYUlk?=
 =?utf-8?B?T0RaWUtnWGQrbGdickQ4b1BWaUtCMDB0K2xEZjMyMG9QUm9OODF0bTZ2TFJG?=
 =?utf-8?B?QXJSNDdxSWx5KzQwaXlzSjNVUGU3U0J0ZFVnN1NBdi91ZXFjdVNPYnZYNWFZ?=
 =?utf-8?B?c1ZLVEQ3eHlkN21MN282eW9Jb0J0cTN1Uml4K0VCMEtjbXN2K3laZ0Fmd2JY?=
 =?utf-8?B?VldFR2NaSjdRVlI4YnMvOWgrQzRGek5OcUZpVmlud0NnN2ZjSk4xOW1SVStt?=
 =?utf-8?B?K0ZDRXp1WHNKWmU3Z0YyMnQwbDRGWVcwWlBERGVvUFh5MWlQM1JMSitIVDJ2?=
 =?utf-8?B?bEFNWGpVNGpXa1ZrNk0yU2hFMTI3YVpKSEoxV2hJblJZUUgveWtBeTIvaXBZ?=
 =?utf-8?B?SzZyazBpYm05V2F5a2tuODVzT1VibGdEYXFwa1VVdXFyK1kzMkRmdkw0Mllm?=
 =?utf-8?B?b1JiRVNrTnBhSTh5TmhyWitQSkNMNVVlbUxUcXJOby9tRVhhWnpyelhMengv?=
 =?utf-8?B?N3c0RXRENzhTak56ZWhvWlBzT2dXNnpnNkNZR2NWK0dpemdPWngwMVJ5Mm9J?=
 =?utf-8?B?ZThtRGc5SXdCYUZZdnFkQW5NVXE1VlRxMUx6WTc5S092eElSY0J2SFhDSkZw?=
 =?utf-8?B?Y2xMRi9XMkdxeUtCUkdtYUl6OUJxR1hXSzBxUXVBMGtSMUNEQVlMelkwTmdC?=
 =?utf-8?B?cVdvbHRUOXd6Y2EzdytXcklBeXB5bkJCVWFQVGl6WG5vZU5CSFJwYkQrcnhQ?=
 =?utf-8?B?akIxMGpYSkx3YzdQRmFRc25ySFFBTWI2aUhndmJaaldjOE1Uc0VIcE84ak5U?=
 =?utf-8?Q?xq3zglJKs+vm0C+EJB?=
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: ac747f22-f70b-4cf1-c8f4-08de55f1eca7
X-MS-Exchange-CrossTenant-AuthSource: BY3PR06MB8195.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jan 2026 17:57:48.0516
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UA2tcuyoxARqdyV2FDBLckp1U1f1WypgZUltZ538TniLnvumOZ8Zf69n5QNMKW1e
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH4PR06MB10704
X-Authority-Analysis: v=2.4 cv=F5pat6hN c=1 sm=1 tr=0 ts=696bcd9e cx=c_pps
 a=+UayH2mdqs80qU9+PBkj6w==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=lre9DRYkaIEA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=DyznqomoAAAA:8 a=virc8Pomg6cw-PLBzIgA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
X-Proofpoint-GUID: YJFJhGQePFBSGyRKj9YLjfNev05b0tks
X-Proofpoint-ORIG-GUID: YJFJhGQePFBSGyRKj9YLjfNev05b0tks
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE3MDE1MCBTYWx0ZWRfX4Fa7kgXU99NO
 u7e40NlD235dgeBz0IkZImbXBJt+OUpZE1rYgLjG3InVVP1f0o+8iXPrdbkHcTI4lZLGIq6LuS0
 Ai6+PLhQKzfYXpqPI9qg27xolEbNrq6U9fC1JPdxTMtmQ3fZTbVHTX1c6wdkw5+HKhDvbWwlXMg
 Pov3dqUi7A5/JbmuxSY0dUze2gtYDOYo5sn48CwvLy8JvhgopW86jW3JhtRzMeu79Qg5bE600Kp
 q0/aQjM7iS5SpP1suSoH/y8axq0QEAU0RT/3+3f8F0ZbjWBgdfj7QaeFIQF1Mb3piHS6FJA9we/
 vvcK13eimp+ncOEPAkB7WKXhCwy0OG0GN/KOF/9zY1PoOTW3W+aw595hsVEhWjLZZo0z4LSF6BE
 gDA8zVH59ipd+U8oy2VpbCDrG1Q7QJzYCWdmk679C+G394dsWpL4ZMw1TlXNtVAwwvXO6ItZZQi
 6i9dcA3+zHDc56s/63Q==
X-Wisc_ValidFrom: true
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-17_02,2026-01-15_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 bulkscore=0 adultscore=0 impostorscore=0 phishscore=0
 clxscore=1015 suspectscore=0 malwarescore=0 spamscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601170150
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

First, I decided to go with RPITalk for the name of this project.  
Thanks to everyone for their imput on that. But I haven't posted 
anything to github yet. For now, you can access the code on my web site 
at he University Of Wisconsin, https://people.math.wisc.edu/~jheim/RPITalk/

The good news is that I got a Pimoroni audio HAT for my Pi and that 
solved the latency problem. Well, sort of, more on that later. The key 
echo keeps up with my typing and I am a very fast typer. So now it's 
pretty much a usable synth.

The next thing I want to do is make it so speech starts when you plug 
this thing in. I made a udev rules file for my desktop so it loads the 
speakup modules when you plug in the RPITalk. Next I want to set up the 
Pi so it runs everything it needs to at boot. So the idea is that you 
can plug this thing in, it runs the emulation software, the desktop sees 
it and loads speakup. Viola!

Lots of work still to be done on the emulation itself. There is a huge 
bug where there's a 30 second delay sometimes. You type "clear", it 
nicely echos each character, but it does not speak the new prompt for 
like 30 seconds. For some reason, the emulator script doesn't see any 
new bytes to speak for 30 seconds. If you wait, it sees the characters 
representing the prompt and speaks them. But obviously waiting like that 
is unacceptable.

There must be something wrong with the way I'm reading the OTG port. I 
put it in raw mode and disable every wait condition I know of but 
sometimes, it simply does not receive bytes from Speakup in a timely manner.

After that, I still have to code in the stuff for changing speed, pitch, 
volume, etc. I have it speaking through Speech Dispatcher which handles 
all that. So that part is easily doable.

The good news is that this thing is already a  useable (barely) hardware 
speech synth. I mean, I logged in, pinged another machine, got a 
directory listing, etc.

So my priorities are:

1. Make it so it works merely by plugging it in.

2. Figure out and fix the bug with latency.

3. Enable changing speech parameters.

4A. Continue to refine the emulator until it is perfect.

4B. Create Debian packages for both desktop and Pi.

5. Create packages for other packaging systems.


