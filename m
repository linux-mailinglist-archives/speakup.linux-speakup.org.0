Return-Path: <speakup+bounces-1554-lists+speakup=lfdr.de@linux-speakup.org>
Delivered-To: lists+speakup@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4LE5IKgejmnp/gAAu9opvQ
	(envelope-from <speakup+bounces-1554-lists+speakup=lfdr.de@linux-speakup.org>)
	for <lists+speakup@lfdr.de>; Thu, 12 Feb 2026 19:40:40 +0100
X-Original-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 8A6D6130592
	for <lists+speakup@lfdr.de>; Thu, 12 Feb 2026 19:40:39 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=math.wisc.edu header.i=@math.wisc.edu header.a=rsa-sha256 header.s=selector2 header.b=RUxKtoBp;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id A22F638239A; Thu, 12 Feb 2026 13:40:35 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 7D741381962
	for <lists+speakup@lfdr.de>; Thu, 12 Feb 2026 13:40:35 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 3011B381962; Thu, 12 Feb 2026 13:40:29 -0500 (EST)
Received: from mx0a-007b0c01.pphosted.com (mx0a-007b0c01.pphosted.com [205.220.165.71])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 6A47F380EB3
	for <speakup@linux-speakup.org>; Thu, 12 Feb 2026 13:40:28 -0500 (EST)
Received: from pps.filterd (m0316038.ppops.net [127.0.0.1])
	by mx0a-007b0c01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61CHHeOV1650998
	for <speakup@linux-speakup.org>; Thu, 12 Feb 2026 12:40:18 -0600
Received: from ph8pr06cu001.outbound.protection.outlook.com (mail-westus3azon11012015.outbound.protection.outlook.com [40.107.209.15])
	by mx0a-007b0c01.pphosted.com (PPS) with ESMTPS id 4c9k4ugq22-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT)
	for <speakup@linux-speakup.org>; Thu, 12 Feb 2026 12:40:18 -0600 (CST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SMQMzMPiMxoU3BoHYEfN3MVicMz3Mt1AzmvGcSAnc5yRlPuGtLI/gwU3SzChNWrc/TQAfvFDSGs37hmrzb4krVlHTKcu1bDeJdDt5CcQmQ4XvW0nJOgzG7LS5JdrPQRenjF5VwCy5j/tmKhA2BTfiUYwYHgdoKEgVJsk7iAko+WP+z5sMPzUGI5bVNMK5/RlQQivihNqctGIO7e8Q4d9r3yHt+ZBiztl2QCSh2tHuoZ2yH2NRki8vg0SIv0usbEVG+qujIm+n8qzVKkdYkbmZRdPt9sUNDd57p04FQJbGylCzyTN5sBJE+uKpcREu9ritrNyhN3daB1bDresPZ7/Ow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gC1keSa7WUCMJNjOYpIPRZR5zBC6vvewjfmp1NSAcLY=;
 b=kJVK6WhXFdx8eUI8WcfM8MprXmkiU+foCqt6Ke6mZ99TqJ7cSPwUQUW0etptbqSWBNRYXVNucLgnqkWO3ux/hvaxDPD3UufpSjm98I3epqlTDtKHwka68esxn7fiwcyqQVvcMCdmmWLHiSIbk9a8uGApY/zQl2yjavY9y/KLuTH1k4xdYUXQIv5F5vT8KRBuLrJrLeeHeqQtOatln8+lnTWfUIcnVXyToqGJuDUQ+PHjYY6a182Sf+FxJwQHJIkBojmP17CGj69FzfHYsGDas9wOPsZFtDoOGc3AJnvLIuhPZcOAxwNXQ31vIQWosvLFObX+u6Euj6AZ6rsgvTve+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none
 header.from=math.wisc.edu; dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=math.wisc.edu;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gC1keSa7WUCMJNjOYpIPRZR5zBC6vvewjfmp1NSAcLY=;
 b=RUxKtoBp+na5hvSC6W7899dxOGUYAh/RT57E07x8NnSXzgu1bWm0328DjVUc1PKnW79xaAvvJVtuVh1PddkB4Xv3SxmU8hX0gLKSiTo5w4VESSurrdETJWeS64zW7asjux4/MqOn9DN5emujaYvrzV7BbylLZsSFOaKDOpf/LPBF16CLcFNO7jwiGQnrrvCbB3X10YKrvYXkUqdRVXAGyj5bVqMfteg0vNbCkBtguwI94D4kdCHrzvvd9MXxEKz9nmvP6LZ24qFfRKKBkgDW4DaTliBSVfwKc7Ua0r2rqNjbeToWG8TzpVPzraRz0C1ysUfEZNQHNtRXKOJ8TqQOBw==
Received: from BY3PR06MB8195.namprd06.prod.outlook.com (2603:10b6:a03:3ce::19)
 by PH0PR06MB7127.namprd06.prod.outlook.com (2603:10b6:510:1::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9611.11; Thu, 12 Feb
 2026 18:40:17 +0000
Received: from BY3PR06MB8195.namprd06.prod.outlook.com
 ([fe80::a7ad:fb62:4389:fd8b]) by BY3PR06MB8195.namprd06.prod.outlook.com
 ([fe80::a7ad:fb62:4389:fd8b%4]) with mapi id 15.20.9611.012; Thu, 12 Feb 2026
 18:40:17 +0000
Message-ID: <87423890-38b2-496e-a865-b9e7f4417452@math.wisc.edu>
Date: Thu, 12 Feb 2026 12:40:15 -0600
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
From: "John G. Heim" <jheim@math.wisc.edu>
Subject: Oh man! LiteTalk emulator progress
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: CH2PR15CA0021.namprd15.prod.outlook.com
 (2603:10b6:610:51::31) To BY3PR06MB8195.namprd06.prod.outlook.com
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
X-MS-TrafficTypeDiagnostic: BY3PR06MB8195:EE_|PH0PR06MB7127:EE_
X-MS-Office365-Filtering-Correlation-Id: af9e1f04-85bf-4531-2e52-08de6a662a6e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|41320700013|366016|376014|786006|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?alFiMEIyOFc2cy9NVTN6R1kzS0lKQzkvT3NRdHNzbW5UTXNDNGwwRUlaNlBY?=
 =?utf-8?B?UG9uOGxmL05MZ1FOd2hteHJFcmVzQnZDNytmVmNKeHdaL0pjeURLUE42d04r?=
 =?utf-8?B?VDJaTnhBZmpSMWNEZXpRRVcrTm4vbDRUbitmQlhXVmxrUktxYWZpcUZYdktK?=
 =?utf-8?B?WGdRbFE5R044NExLL1VIS21vQm5GNFFkTlU3Y1MybVY4bnJjOGU0T1NTd2wr?=
 =?utf-8?B?RlhxWGdOekZuU3lIRlQ0VEdWVkNxMU45bGhJYWpWNlg0Z1RWWFdJNFVoMFBx?=
 =?utf-8?B?eXI3Z3VGWkZlcmFJMHJLU05ieDlmZDluMFUraEw0Q1hoT2IwckhwajF0VmpR?=
 =?utf-8?B?L1ZpR0ZzWDF4MHVUSWNid1NFTUpiRzdaZFJmUDU1Sjk5WDRVRjR4RjFKOFdG?=
 =?utf-8?B?NlVud2I5bSt1NlBKVHNoMmFqVjQwWnAyRWY3N1I0blVrSXdqVktWTU1GOGFS?=
 =?utf-8?B?MEMrUUUvS2FEdWJKaHdOWVYwaWowMkFaRm1YRDZUdHNWUXU2QzVrU2Jra1dN?=
 =?utf-8?B?aWszL1p5YU1pV3JoRk16dEFyaC9VNU1TUWlNcTF6MzdVdWp6anpHZVVlTkFq?=
 =?utf-8?B?bzg0eG00a2k4a2wwVWdUZzJYSTRXZ1VYRTNOYW95WExzQ09DMEc4OVRhd0w1?=
 =?utf-8?B?QW0yb3BnMERzWGswdHRLQXhLMFlJbEpENDM3N0ZGZDhSTGRpYTJwOTBHbW1M?=
 =?utf-8?B?NDMvWmVuZUNoRlNQN0oxR3Eyc284TExjM0h3QnVnZmo1MzZ6NFRKTG1BU3pn?=
 =?utf-8?B?clYwa1doSm1WSFZPeHlaWUdYNE5USVJPNzltWW1IQ2lpMThZQ2ZTc1c1MlhC?=
 =?utf-8?B?Y3UwbG5JYnZ4cFVVdGNqOW9HQzJGWTM4NnNFVnhXZmJKT3lqbE5waWYrTDJJ?=
 =?utf-8?B?bzRtTmtIcWYwcjkvN2VsSCtPQ0pxUUlOSzNPVGRlTThScEFRMGlzaThMTk81?=
 =?utf-8?B?N05UYWtlbUY5aDB1Vmx0VmNnTzBKL3Ivcm5xN2pJeS9NYlhJRWdTR1kyZ3lr?=
 =?utf-8?B?K2xKTzh6Y0ZtaDBNSzNIUVNuU0MzbDFkczBsbDFlWVU4NytsUTBVTktodTF1?=
 =?utf-8?B?Si9YQnpRQXFCR2ovTGVHalh5RjlSUHppRzlMM0tQVGpZTTVpSmhlK2FqYVdk?=
 =?utf-8?B?L3lNTlk4NXZlcktDWDdXSGtVNVh2UzlWZDVHa2xpS0pZcFZLUHFMZ0dSTVZN?=
 =?utf-8?B?UTVzSENoUUwvejRyLytLZXp0NGVJOUtCN0pjTGYrZVNsUGwyUHhvSTBWOUdF?=
 =?utf-8?B?bU1mUXJEdFpvZ2VVNjVXMkkvVjA0cE5lMWpGNkZhc05LSlNvTEJESWt6RG5V?=
 =?utf-8?B?TUJIeWg4a3VETi9mOE5EeUlTK0o1aVMwMS9ML1plYWdGakJMU3FSV0djVk16?=
 =?utf-8?B?dG82VGZobENiblJWRWNiRlgvUkpORWtmUENtaTFNaHZVc1BoYXoxTWpJNkts?=
 =?utf-8?B?aU80QXNlS1oxbFRQTzZvaHFJYmUzR1BTQ2s1VkVWSXlqQnZ4QXRGZi9LMGpo?=
 =?utf-8?B?d09lWmx0WW1uOHpvMFBwaWdBRW9WelBKcW1NS21CcXJIUTNHdE1uUVV1THZD?=
 =?utf-8?B?RU9sdHBRSWNmZFNvdElnUjc4Mml2RXdUdDQ1T0FTaTdtNHlyaWRhMGFZZWFD?=
 =?utf-8?B?b3ltUkozMDVQQTlQaGtxVFFlaXo1Nmx3QmR3cGFwRW0wTnNYMGZXVXljTWhp?=
 =?utf-8?B?MHJycHJ6dGFoeDZtQWxPTXZrTWlZbzRvOGF1ejA4U3ZnbTkvVjdoVDFIc2c3?=
 =?utf-8?B?c1NnclUrQXlxNWNUZ3A3a1F4Z3NjZXlrTGpsQ25DekgrbWJzVE5WSG5kNTNu?=
 =?utf-8?B?YUN6Ny93ZHIyaVdrL0NCa0NSSmhvS1NLSm10WU9QYUQ5cVNQcVlGaWN1aERq?=
 =?utf-8?B?bVgzMDB0VDVvdUZIY1lYelBZT3pQd0tYMGtRTHRITm9nRkVlRGdDR2NyWWFy?=
 =?utf-8?B?YlRWOTA5SENmZUx3RkRaZ2NnenJneEdzdFBRblZYMUo5dVQ1cUY3SDJVMXBp?=
 =?utf-8?B?R1pPU2RsUzlrNXRjdmVaWE5UNzJ1UlBTOURleTJxZXVOcTlnZDZ5bmREYnRH?=
 =?utf-8?B?eDMzb2NhR1RxcVY2VGhkQ2dZUGNpWjF6cThRUlFWUElwVUVHZm9qcUVDZUkr?=
 =?utf-8?Q?gdMg=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY3PR06MB8195.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(41320700013)(366016)(376014)(786006)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?NVoxRm9LejJqTnVBdGU5b3NzckR0VjcraVJiNDduNXI4S1BLV2I4SHJ5ZWta?=
 =?utf-8?B?TGxBQkpkM2huWFoxSmU4NjFPT2hHckNib3JDTWtOTituNkRHVXFkWWFKSmYv?=
 =?utf-8?B?bzlWeGZNUE10ejIvdUk2L0RNVS8xZm1NOEpaV3dJaWc5bVdhOC9NY1hYVG1S?=
 =?utf-8?B?M0NXUm9iT0U3eDNpZUduMU1oSXpTU3BDcERQOUZFdW43Ri9Vekc2RHBZaEMv?=
 =?utf-8?B?RW5NWmZHNXNXQmhjSjlIUEFKYktIUnk1TkorOGRibVNCQk5CTldBa0pNU1hi?=
 =?utf-8?B?SGZEQjVGZVdNNGJsSWx3bjY3SlRNNkZZWGlkdGRjMFpiTGZYeWJwNVAyL2Jt?=
 =?utf-8?B?NFpLSm9HbmJWMmNSbGNLdmVsVHRtNnRLU0kvY21FTjl6RngzRFc4dGN5YnZX?=
 =?utf-8?B?c3lZWWwzc2svNUpneUFodE5BcHNwRTZBa21OSjllY3NKaENFd1dPZHRaSzBQ?=
 =?utf-8?B?cFRUTkpScDQvQitZZGRJeFNMQjFLTWJVZ29YdStsV0NXL1p5Q2k5dXVobzEx?=
 =?utf-8?B?a0tJa2JIRFhlSlhjYVlSVS9qNTdUS0tYTVVwd2VDOXVCdlBlaXFielA3WXJC?=
 =?utf-8?B?VGMwcGNHWXp4OU4wdWJQYXBaS2QvNW52dlZzWlhNL0tlbC96K01ESnUvYjBv?=
 =?utf-8?B?L3UvZStHaE55ejFqNlVLSXFITGdBOTltTXlIQW1Iam1BNVBVWkdSNkduY1Nm?=
 =?utf-8?B?b3hpMVBubVNJbFhDSXlRckIvaHhDRE9LTWRobWp4ekFoWVIzRUJ0bUh3OWtS?=
 =?utf-8?B?bnNHbkdTNmlaOFJLWno4Zjl4cG0zVTFJODZxMVMycEhoL2J2VW55N0xZbyth?=
 =?utf-8?B?LzlUcVpkR01jNnpVcnVHdWgwUkdMZ0d0MlNNSmpDc2IzbGNSK1VFRUhlUmtl?=
 =?utf-8?B?S2RnL3VBaE1LeThuK1pxaDAwOVd6NElVMENvdHVGd1lHdzgvWndWYUhYTkhU?=
 =?utf-8?B?dTJZbkM4QTZtdTZjc2wzL3lRbEhhVjh3eDBjYkl5cEp3OU9UNzJWZ2VsUWJx?=
 =?utf-8?B?U3NpWjBQY2oyR0l5QlphNUgvZGt6bVJRMTNDY3JwaytVY0luQ1BCWDFUWmFp?=
 =?utf-8?B?dUxlTzRpQmZoaGJ5NGllQm5uTnFkSG9jNkhxWUNKdXZCeEFWeURtN1ZBRTVs?=
 =?utf-8?B?c0s1c3haaWdOUnZjUGd3ZmhiZFQvUERqMlBKY2RyUEg4cFR5T1J0bWhtc2Uy?=
 =?utf-8?B?T0cvQjEvZGZIZUgzcWlVNmh4WDVjNU9aU3M4eHMvL3J2bGgydDQ5VXZCL1Y0?=
 =?utf-8?B?bFRRL0tFQWpKeVE5ZjFVOWdHRkRqL0c1NURPaFAvSjhvM2p4MHJPdi9NTFN1?=
 =?utf-8?B?K0s4SGJiQVN5UDl3TjlCdUE4VmJ0Z2drYytiYTR2Sit4aWVzcVM0TUhTZFJt?=
 =?utf-8?B?dWc1Z2FBRUZPNDRtVmhSQVdFRWU0TTFYNjlvYmJVdnUxc1c0ZXFTMHVLK3F6?=
 =?utf-8?B?bmF5aWZtYmdYSGs3TjVZbW1sYnJjN01Vdzg5aktKWm0yYytrSk5zbkhmS2h1?=
 =?utf-8?B?Qys2TzhxZkIwME01SEZBM0dMR0hJT2IvM2xYUEE3cWNpdzg1MC8rMVpYRWxv?=
 =?utf-8?B?YkpUOG5EbDNCekZ5R0xKRGowTnBrVExhWmxiY25OL0htZEJqUXhQL3p5Qnd4?=
 =?utf-8?B?bkdVUnhOOGJYSURHUzllWHgxM1QrcWI3ZmhJVkVzMkRLOGpGK0ExR09rOTQx?=
 =?utf-8?B?ZW5mV0s3a0NqbVFLV1E3TnJhWGlmeTZmN1I4SGVIT1cvd3hMSFdQSFMvdDJy?=
 =?utf-8?B?dUVJbndCNVVJNGVHb3BIWEd4YlpQMXJMUmd4VStPMmFKTkpmTWRhNENaaE9i?=
 =?utf-8?B?eEoxWlNaZGtNeUJYazRLMTJsejdoeVFiN2ZpT09OTjNTM3ExMmZyczJXN2NT?=
 =?utf-8?B?eTI5Qmdnb1dmTUg0U1M1K2RlSXlFWCtFakExYmNRYWNyN2hUczFqbytCL3Zv?=
 =?utf-8?B?alp2QWZTTHg0TXlvQjIwcGhObm1xTTJpTFNaTDhkMm16ejNlT0pjakVsU1VJ?=
 =?utf-8?B?SkIxT1RMMWhXN3ovR1E3VkM2YmVEL1lINUxPQ2FmZ2ZCenJzdUlQbjRibm5M?=
 =?utf-8?B?R3lHUTFNdVlRR0UxUUZaMnBlYUlTOW1mL3VWaU5rSENtTVVlVWVQMzA1Rkhj?=
 =?utf-8?B?eW8rbnR4RWpZVVYxUk9tN3dVdFhHZm1qbXZyLzBwdXJBUXF2aFVKU2FoUk9G?=
 =?utf-8?B?ZUdjaHRBK3VINm5UbXBWbGpqVUVLYlJvSHYyaDRTVFlRMVRwNmlyNDhNM2Mw?=
 =?utf-8?B?YjdKMHMwZVB1VHRjU0hOdVM0ZDN4aDhDUlN6a1A2Y0tQY3hFT1R6VXdpRFpW?=
 =?utf-8?Q?+ScGnYsAQnFwsrgBCE?=
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: af9e1f04-85bf-4531-2e52-08de6a662a6e
X-MS-Exchange-CrossTenant-AuthSource: BY3PR06MB8195.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Feb 2026 18:40:16.6907
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tS+Pdrv+VL/GyfoZL8E740uFZhDg2m+UYFEWK3+D7nc0bxdQ2EC/YXzkO0VmPAAr
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR06MB7127
X-Authority-Analysis: v=2.4 cv=A9lh/qWG c=1 sm=1 tr=0 ts=698e1e92 cx=c_pps
 a=YvmT30J82QCmV9938MlLOg==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=lre9DRYkaIEA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=Nhk9bJRFTWZIyR07G3YA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEyMDE0NCBTYWx0ZWRfX4UpEOQA2qo/N
 ak22jgR+KpywKafMAoOLFJHDkVnqRQ4eEesVp8t9pqT740MCZf6FZHs1bCudKe2wwIlcjD7lRs3
 3CLw36DRhJAbU15xOJI9kNQpI08az0o3l0xhyLyvH0K9szc5NZzQfE4KBuzc+dFZHuvMAdK6bKU
 uVs4jGCJXTuS8K+pXp9JONEn5aeyQfNiQYw1Hyy7OroIJfoXtt6KlwmtayvZJBZRbZWdf3jH/0S
 rW+cBBYHDc/qr5FwVUhuQ9aLAz1rV3s+iSpZUqd90sBVaw9/eUWP5Y+hNBMAhlgB86rVL6gKizZ
 lF5p740pw9tq6548/uz3Y6eRm0Yn1vbxzzQ6afI57fJtpDx+d6P4hDJEb7duMjXNSl+OHUgUorl
 Klb50nwHLJBlz0y9PofA/dk2B+jjdAQj3lA3jpsRxHW7XQorv6JpR/Cc2xJAFay8J/gqTP8t2az
 Sn/NdW5DNQgiv/ynQew==
X-Proofpoint-GUID: S0YK2T2gAW7ZZiegyuQopinI83IHL_a4
X-Proofpoint-ORIG-GUID: S0YK2T2gAW7ZZiegyuQopinI83IHL_a4
X-Wisc_ValidFrom: true
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-12_05,2026-02-12_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 impostorscore=0 adultscore=0 priorityscore=1501
 phishscore=0 bulkscore=0 malwarescore=0 clxscore=1015 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602120144
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
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_ONE(0.00)[1];
	TAGGED_RCPT(0.00)[speakup];
	ASN(0.00)[asn:5645, ipnet:206.248.128.0/18, country:CA];
	R_SPF_NA(0.00)[no SPF record];
	SUBJECT_HAS_EXCLAIM(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jheim@math.wisc.edu,speakup@linux-speakup.org];
	FROM_HAS_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[befuddled.reisers.ca:helo,befuddled.reisers.ca:rdns];
	DKIM_TRACE(0.00)[math.wisc.edu:+];
	TO_DN_ALL(0.00)[];
	TAGGED_FROM(0.00)[bounces-1554-lists,speakup=lfdr.de];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 8A6D6130592
X-Rspamd-Action: no action

This morning, I connected 2 desktops together with a  null-modem cable.  
Then  I  ran my  old LiteTalk  emulator script  on one of them and 
loaded  the Speakup LiteTalk  kernel  module on the other.  It works  
perfectly.   Remember that problem I posted about with Speakup pausing 
for 40 seconds between sending clumps of text when I was emulating a 
LiteTalk? Not happening. It works great.

So  this ought to work with a  serial-USB adapter which means you won't 
have to have a Raspberry  Pi with a  gadget port.

And it means the device should work with Jaws.

The next thing I intend  to  do  is to merge the 2 code bases. The code 
for emulating a  DECtalk is in a seperate python module from the code 
that communicates with Speakup. So essentially, I'll need 4 python 
modules, one for DECtalk, one for LiteTalk, one for gadget mode 
communication, and one for serial port communication.

You  ought to be able to use any combination  of the 4 modules together 
except LiteTalk with gadget mode. You can do DECtalk with gadget or 
serial and LiteTalk with serial.

I have to say  though, typing away on one desktop  and  hearing speech 
on another is pretty cool. I mean, I'm  changing the speech rate with 
the Speakup keys for that, changing the pitch,  hearing pitch changes 
for caps. It all works.





