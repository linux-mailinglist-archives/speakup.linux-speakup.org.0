Return-Path: <speakup+bounces-1285-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 199B5AAD276
	for <lists+speakup@lfdr.de>; Wed,  7 May 2025 02:53:36 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=math.wisc.edu header.i=@math.wisc.edu header.a=rsa-sha256 header.s=selector1 header.b=wSpyX0mY;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 4F16D3829BB; Tue, 06 May 2025 20:53:08 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 289A0382189
	for <lists+speakup@lfdr.de>; Tue, 06 May 2025 20:53:08 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id EC24A382527; Tue, 06 May 2025 20:53:00 -0400 (EDT)
Received: from mx0b-007b0c01.pphosted.com (mx0b-007b0c01.pphosted.com [205.220.177.71])
	by befuddled.reisers.ca (Postfix) with ESMTP id 9F4E0382163
	for <speakup@linux-speakup.org>; Tue, 06 May 2025 20:52:59 -0400 (EDT)
Received: from pps.filterd (m0316043.ppops.net [127.0.0.1])
	by mx0b-007b0c01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 546ICalE017512;
	Tue, 6 May 2025 19:52:44 -0500
Received: from sn4pr2101cu001.outbound.protection.outlook.com (mail-southcentralusazlp17012010.outbound.protection.outlook.com [40.93.14.10])
	by mx0b-007b0c01.pphosted.com (PPS) with ESMTPS id 46e3ftsmwf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 06 May 2025 19:52:44 -0500 (CDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pv5UcGYeG3sedYTIzRsJnqi0XO/hNZl6kqM9edHSZZ+/4ZjHeCq2dqupfM8z1LIVqbQTLs+zo/w3RRW9+Bsm3Jaq3B6PPhSZQIg7y1CEqsq70D8oJ3aq8mV9xUnoo3U1AI2CIA0cMI9OLcQ/tY0Ycj6mqXGR5oYQHxDH1nuzbSEmYDt0d3dJ6I/Tb7nZsheX/U95shhBTDZaxOEY2FZTSh+Bb/T8Txcn1G562KTBOdrwyG/WrFEdlikt9d6VZTqu65vF+iQ30OPMhjAtXlsS3jhK3PoK274LXk9uFM+BbQ6d3Br2mIDhXv/sMHCvKk1vrn+rR1DOsF+Kz7gW0VMdfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ct8YB4fFrHEMPIgynx+jAz3XNX1g1Uw/yKVUryEz/CI=;
 b=mjFcLC9jD2/6dShoShKWVDOgY0CO2UnAF/BaKEpKA0LNlNhJsumcV+n/TGJ0pDw1vC9L1dz9tch7TXO6Uh7dvDyBdrblRz1BhQbajsQfJ3qIrBPD0L5lz0eFjjs38NFog6t0/aIR1Mv1TAPgf6k3PcWNaoz/6Znzi6O4s0fd7agrkVyFAiV/v6igdvl+NzQ25BcgErPvlQgvbZ6QeRwu7IuLr49CbrOMF2QClmaznmg251tApuKUexoEml+bAuYpRn79gqy+oEbeBVheGii2FIarqKL/RNDTE6e+zj+NRu6dzH7SiMrPOzX4RxnAMAbNb3yUNPBRojsmhysAnC6rBg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none
 header.from=math.wisc.edu; dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=math.wisc.edu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ct8YB4fFrHEMPIgynx+jAz3XNX1g1Uw/yKVUryEz/CI=;
 b=wSpyX0mYuE6HEm4Vsmi8GzWZoMR2ghEGvOC7jbBEAswm+ziXO0fEvMY4oxn9+Nrc8ho4p7cVSIwgJFzKe3tyrAC3lf5GorYCa+m+SOq4Bwk2geRQfjSWGswm3UXwnGteI/DfxxfY6G4ha+DBLo0Ra5JBELYAGIrNETVrpyDsavhhUeck9jsUuEYWC76plufZ8U73GPeXtqBcXl/EnMEvWxcsZxmPZR3+PgPx64TMp23OdmrJiiplRTYtzVFFJ+rTeBw1zIs3MjFiq5CEjb4+dY0uBCK/w7IpDkQrXjMJOmp0pv2QQH4dTIMvlfMbOGZQqUIthjcwxevottfmk3lK+g==
Received: from DS0PR06MB9877.namprd06.prod.outlook.com (2603:10b6:8:1d5::14)
 by CO1PR06MB8059.namprd06.prod.outlook.com (2603:10b6:303:e6::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.26; Wed, 7 May
 2025 00:52:42 +0000
Received: from DS0PR06MB9877.namprd06.prod.outlook.com
 ([fe80::a347:6162:9bfd:9b91]) by DS0PR06MB9877.namprd06.prod.outlook.com
 ([fe80::a347:6162:9bfd:9b91%3]) with mapi id 15.20.8699.019; Wed, 7 May 2025
 00:52:41 +0000
Message-ID: <121680b1-4651-4c30-b652-71ea340c8a7c@math.wisc.edu>
Date: Tue, 6 May 2025 19:52:39 -0500
User-Agent: Mozilla Thunderbird
Subject: Re: Load speakup module as kernel parameter?
To: K0LNY ?? <glenn@ervin.email>, Gregory Nowak <greg@gregn.net>
Cc: Samuel Thibault <samuel.thibault@aquilenet.fr>,
        "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <55a2cd5c-4b26-4c77-a55b-cfaf59d74316@math.wisc.edu>
 <aBklhtM_CN4OmF3L@begin> <781e661c-7ee3-44ab-8da3-a69e7dd21d39@math.wisc.edu>
 <aBk1N295aRxq7LAP@begin> <d8af1f2a-eaa9-4f91-adb2-e2c3cdbf1ebd@math.wisc.edu>
 <aBlwpQWdLhedVVNx@gregn.net>
 <6c8093f9-e75e-442b-9d0c-570d066056a0@math.wisc.edu>
 <aBl-sbHNyN6NRrrs@gregn.net>
 <14db84c6-0360-44b0-beb2-54d7e5c424d9@math.wisc.edu>
 <008801dbbea3$075d66f0$01ffa8c0@nucwin10>
 <2cee115c-569e-4d91-8ce0-93a57c95c445@math.wisc.edu>
 <008c01dbbea4$6c522b80$01ffa8c0@nucwin10>
 <e960a70d-b3a0-4502-95a3-82285031b153@math.wisc.edu>
 <009a01dbbea9$feae2e20$01ffa8c0@nucwin10>
 <d8ee99cd-3883-413c-80a8-df492a861f5d@math.wisc.edu>
 <00b001dbbeb0$e03dce30$01ffa8c0@nucwin10>
 <2c890d5e-fbe9-43aa-bd71-041c34ae98b6@math.wisc.edu>
 <00ef01dbbeb4$c7bc51c0$01ffa8c0@nucwin10>
Content-Language: en-US
From: "John G. Heim" <jheim@math.wisc.edu>
In-Reply-To: <00ef01dbbeb4$c7bc51c0$01ffa8c0@nucwin10>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: CH0P223CA0023.NAMP223.PROD.OUTLOOK.COM
 (2603:10b6:610:116::22) To DS0PR06MB9877.namprd06.prod.outlook.com
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
X-MS-TrafficTypeDiagnostic: DS0PR06MB9877:EE_|CO1PR06MB8059:EE_
X-MS-Office365-Filtering-Correlation-Id: 97782c87-3b6e-4930-bf29-08dd8d017829
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|376014|366016|41320700013|7053199007;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?UUZmMW9vZmVyaDQweENQdnh2SkljamJnK2VsVWd3YlBpRlB1MUVNN3dPYjdw?=
 =?utf-8?B?QVpGakoraUIwQndqbWZURE5jbmVXY1lWTnNwMzMzeUNlRWxkd2c0blNKaTB1?=
 =?utf-8?B?VC9RTjdNZzdadzdYbGM3Qy9QNEVDSHNMdXN0UExtbnBSVUNSbndoLzRCWTJC?=
 =?utf-8?B?UHFHMDk2TmpWTVNsYkRjYXQxZUJBQk9taW5GTnZrbW11OVFRblhLL1hGQXpY?=
 =?utf-8?B?RlVNQk9ZQ2ZUOEFqbFdlK01xMjVFbEp6ajdGVWFuRVBia1FHNllOUEJLY3JG?=
 =?utf-8?B?Ti9xOUxmMGcybTBnYS9PSmpwblFudDNOZzRPZ0oyOE5TRVM3RFE4VENoSmcz?=
 =?utf-8?B?L0p1YWFIRGYxZEovaE0rcTVKakNJZzJJdTNUTDFFQW9hOG5YQ0xHZDlPcE95?=
 =?utf-8?B?Yjl6TmtwL1l0QVd0dzJERjJJN3RpeGFyRVFxUmtrWXBSS3Rqb3RmN1RlcUx3?=
 =?utf-8?B?eW0xUEowNHAzQy82cjRCTWNHZDI0Smp2NFNuNmFtcExidHk0cWRVNUhNMUlQ?=
 =?utf-8?B?NGh5UEh0eGRBNTA3Ui96OFprTXNqMExxUHdBYm1MS1BFeW1Wc1NqQzlYQUZ4?=
 =?utf-8?B?aE5ycGVQWVIyTC9qNjgwdFZEK3pMRTUrVUhxemxhWGxFVjBrSUt6YVZ6OHFt?=
 =?utf-8?B?Q0s1Snlrdzgwd1U5NGdwMjNnN2hrYVJnWTF4aGNJU0lvRWdCb1FVOWhlNGRm?=
 =?utf-8?B?c2o3OTYwOVJiN2NDS0l5MjE0SEdqaU5rbytscURkUUdKY3BwNTdmVFEwZm1m?=
 =?utf-8?B?OUJENnFDZzBWbGFIUGl5aWhPbVlPdzBYdkNBU1RNMnpxQmNXNjNRaUIweUlT?=
 =?utf-8?B?KzNsYmNVbTdHQWQxWVlJTVR0Q1RFS1NGL2VyNnNLRTRiN1d1UkVFc2pJZmpy?=
 =?utf-8?B?R1RDeXJLaHJOUm0zVW8vYU1zTjJuRzFIM2syRGI1V2FJdmFzcGp0WGlHaFJa?=
 =?utf-8?B?YmVyRU4wYVUwVjdmTk80L2FDT0RIZkV4TlovSE9Bb05FSllJZlRlNUJkb2RG?=
 =?utf-8?B?M0RoRy8vVHRSMFgrcUlvaWFTdXNlRVAzM2tEK1hKblBobWgrYVNMSVlYN3Vl?=
 =?utf-8?B?a3h1b05zUkpFQnpRU1hXOXlTTlNkLzdpUU5DUXorL1k5cHZaMFV2VHBpNWFC?=
 =?utf-8?B?YXdvWlk4R2RrTWl0YnhvK1pWTFh3UHlNNmtIMjN5bXgzU0NYUEhzZXZuWkwv?=
 =?utf-8?B?N2ZuU3pmRjNXMTB5dzM3VzFHelgzU3c5SG9QN3NSOVhOZHN6ZWQvQ25ESldE?=
 =?utf-8?B?VzkrbUd6dTZMMGt4L2FTSFRhNGhtNGtCenRXR1pyaWk1Y2txekdyby9tSVF5?=
 =?utf-8?B?ZUZ6K1ZmaVVwYW1INmYwTDcrbWFSbGF1clUySTl6OHVoMFJlYTRkZG5CUmFK?=
 =?utf-8?B?UzJwTlRCMXNoTjdKalQrcmpiMUZmTXE2bkJ2TFFXdlc2Z1ZxNzZtc29wS2pi?=
 =?utf-8?B?NS9Lb0RFb1RjUHljSDZLQ3QzalFoS2NZZTNwQlB3eURuNGZrRlI2YzNDaENI?=
 =?utf-8?B?UXZYdjhJRDAyaGdwZHMrZ0Z3RGdOa0NHa0pLWGtQSTluMFpiN3hnQnRrNkRU?=
 =?utf-8?B?eW9OUVRndURTWDJDazZ2Y01Eby9HR1ZwUGxkaWVBdUVhdlY4cVhhM1NCSUtq?=
 =?utf-8?B?QXBBZHgwTm5HL2JINXgyZHdDbEJKUDBMRzFoeEVyRDFXSzl0cHg3OTB0b3BK?=
 =?utf-8?B?bDVpMGVWSzdmTUxpNlVkMzVEQ3RrQ2h5RldRc2ZmdFZlaHJ1ZU8yUkNpN0Nl?=
 =?utf-8?B?NWZ4ckJyNnBURm5GZzloZGp2eStySzJMWXVLUCs1SWQ2NEJIOUdoMk4wWWk0?=
 =?utf-8?B?VW5FS2RodURyZ1MycS9vU0lTcFIwUjA3cWFSaWdoZjJML0ZQTkE0VFZCQTFP?=
 =?utf-8?B?NEJQU09qR2NjaE1UYkU2V3NnNlNVT2xBbHV4TWRMSnFUd1Z5dStOK3oyeGZL?=
 =?utf-8?Q?jwo5MmUupRs=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS0PR06MB9877.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016)(41320700013)(7053199007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?M1c1U0pzZDJKVVl2aXVqQ3FpNEF6a2FGT3JiUGpqK2RFbXlGZWlHekJIb2FN?=
 =?utf-8?B?WGl5RDhaQy9leHR4azRodDFTSnQvY0hRQ1lta1ExeXZFTWlxL2ZjMkdWMndG?=
 =?utf-8?B?N0Y5aU5uUXJPSmpIb25YMVd6Q0twenNhRmcvcmJ0cXlaRVV1TmJpSWJ1QXVh?=
 =?utf-8?B?Y1dPRTdXbkRvN0FVQkFVMTFmaEdaMEhrODUyTTJKc1Byb1VlaFRtSlAydlFV?=
 =?utf-8?B?M0tCSzVOWDM3WVNYMGZnR1JyYnM0YmZXOEVxSVJRWElVdmhzN3RSRjBkOFpm?=
 =?utf-8?B?Vlh4YlF1aHE0Z2lDYVFVbmhBRC9QeWV4aGk1eWF3Zy9CWnhYLzJzTE8vRitw?=
 =?utf-8?B?K20vNEJVV1g2TFEvM1k5STJGTGxqc0t2b3hpVzB0TGpyMEU1VFVlbEx2Rndr?=
 =?utf-8?B?VGcxVXBEdmc4VVJOZVZSYWdGaFEzb0ZiMGVOVU45TUdHUzJ6UGM2cHdFVmVa?=
 =?utf-8?B?QTNJWXM0d3YxY3g1eFNQVTFTR3BGdzEzdExJTUsrZGszWTREYitZSHo3VWJV?=
 =?utf-8?B?cHVGWjIwUkxlaEx0cXh2OTN2eEtrU2xvSzFnQk5QVjVvY3dYUkFIVW5MZFJh?=
 =?utf-8?B?NDdUQ1RKN3Z1QWZ2MmdzckplM2FIbmZFL0VySHgxczBJcFoxMDlmU21yWFhC?=
 =?utf-8?B?Q0hNeUpnOUZjZkZPVDlyK1NvMkwrZXI1cFpDbGpvUXNEa25kRnJWZjBQSU5B?=
 =?utf-8?B?Yi9CaklCU0IxNTZzUGwxaXQrNk1EK25QL3lOL0FNdTZuTXgzUEx6MWRtdGdx?=
 =?utf-8?B?WjBaMVNFbGNDaGh2amhaem9mQ2xlZlArRllLMkV6S1RjTThpSFVacGxMLy8y?=
 =?utf-8?B?NXJoT2RPSDVYOXlMV3dDaG1XQ1BMYmgvMWNzelVBdm9Wdk5IU3VyYkJVRXp3?=
 =?utf-8?B?MzhaalFhb0pIL0NLUzljekhXbi9wTndYVFNNMXZpMXZSdCtLMGtRVDl3WFlX?=
 =?utf-8?B?T3pFSHQ3UWEvclY3WmlhbzljQWZxemRMZlJlaUQ5NThMdkRIVHg2NkxxT09k?=
 =?utf-8?B?REJ5UkdxUkppaHB3bFhtVVdwaCtmaVJPUXl6TE5GcXZlRVd3UHROb01qckZq?=
 =?utf-8?B?eldHbTlQWUNCVGxUb25jaDhIVkZHYVhjd25wZmE5Q2NTdDFTOTNtbHdDT3k1?=
 =?utf-8?B?akEzc0FBSGViMkFkK1NFeGp0U1ZyTnhRZDl6RSs2QVdKeGlDSU5uMjRGSXJl?=
 =?utf-8?B?eUFCZzRld3crUUQrdEpUdGYxRlFwQlNvSi9EK09YcUdTWUN3SFVzNFJHRVln?=
 =?utf-8?B?end0UXRkOEF4RGhuc3VtV2hTcmVEdmVlYjJLdjgrVElsenppb0twTXNTaEFT?=
 =?utf-8?B?YzNzS0RILzF3TUJhRTFpRUZSTzVCUVdKcUJSMFh5Sjg0Z0d2cE45bEMvN01w?=
 =?utf-8?B?L043SEFQZUFqUHplRldFQWdHcm0xSnErOEE1d1BYZzZFdEQyd3RqaTR2TWtv?=
 =?utf-8?B?OWg5bnd6cHNEZU44cTNJWFhqYytFM0F1Mmk1cVE1YXJOQzUvM0x3RDBqbE5W?=
 =?utf-8?B?QUJpU0lVQnQyVzUrUHUyVW9GdC9LQzVsZ3NBNWpPVFo2STNOdkZqSGdVbEli?=
 =?utf-8?B?WEVzcDNvOHlzTHpBMGNSQzFCRmhGMUpsWFg3WmFLM1RIcmx0czVpWVFLRHpD?=
 =?utf-8?B?UVR3eG8rRURpL2dvc3NhMzB1SzRLY1Z1cnBPWEMvK05YT285RUFvd1YwUWxU?=
 =?utf-8?B?RHRvWXJkRWE5VHdYWnVjYnh6eGFFZzBFejBXSWhQWis4dGNlU0VGTU1EZGdX?=
 =?utf-8?B?eWtWOFBMQUNsTXI4dG1LQmZoZlJjRWMrcW9zbEtDMElFR3grVEhteldaZFAy?=
 =?utf-8?B?UlBHMzAyck1sYmxrT1B5WWVjZlRPMWVwc3MxSkFxYTFObGpVdEdqZnQ5Nm1o?=
 =?utf-8?B?UkpvTVV3aVB2MjMrVElScXp6UkFOL2l1cGNESDdFV2JJZjZnZW82M29YTjhx?=
 =?utf-8?B?d0VoV3NCK0VxaFBxWXVNa0FLMTM3SndBR1lMMFBpZVpKTFNWTytmeDhQUkUx?=
 =?utf-8?B?YmhaNUYrb2JoWGlXdndiRGswdzBrNmNGREZLOWhiS0xQS21rSER3cUMzRTZP?=
 =?utf-8?B?WWdKbGhkWVFyVi9Ucnd0OVFnKzhRTXRZNmJ1N2VrQmI2TFFINWRDamQ3ajcr?=
 =?utf-8?Q?1PDU=3D?=
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: 97782c87-3b6e-4930-bf29-08dd8d017829
X-MS-Exchange-CrossTenant-AuthSource: DS0PR06MB9877.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 May 2025 00:52:40.9389
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NhHBcZlM5i0VCZkDNOIvKN93z7j3REU6w7sH59PUtQOzg+IFVZwqZCrrE7SSLoQ7
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR06MB8059
X-Authority-Analysis: v=2.4 cv=NInV+16g c=1 sm=1 tr=0 ts=681aaedc cx=c_pps a=5L1ZokDb34JZJib1CqSWiA==:117 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=dt9VzEwgFbYA:10 a=lre9DRYkaIEA:10 a=hEK2XftRAAAA:8 a=qPKtzgQbAAAA:8 a=b8A860xY1FM3t6sF7S0A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=pvvZm7_9ER1OwvpV3Ftp:22 a=OTAqJWGB1laLS8RTg9aS:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTA3MDAwNSBTYWx0ZWRfXyxd91QS8zPHJ HqYl++hTxNBb/LrrHU+473in3CFYf0ry3HqlcYQfZJfx+L0ev1BnbAcCgEnevYn/IcCdByyoO+P 4RkXP4kIeiWR+PEyKodsLnSMDuiDIlai93+9p9xv/ReXSHbDNSxHxPuXPFiOnEYEibWxRjQjDjC
 waTr+vBcUkmwCxSThzIZEEmosn/LCX1PnzjkPdgRT678tof8NWsWjWTJZ4PdOPkYZemDCBIhfDX 6zyRO/t3Um5kqREfDQogknLkhsoz4XSuWP6bnlXxFzssnRiW9bY3XPrFo6RvLp92DfoHk6VnDJe 4kP0AE7hYBGGVhbkN3vhBWIn0YNdxNfsjx4DFUKio4KVr1zG2y95zXgmpZ977Cl/jN6rzahwyLF
 74CCJP9ZJKOBk13vD+eKeZZuN7vF2Q7X3ir6KDdHq4GxygNsEjehzUcvVe4OntEM6DrcS6Fm
X-Proofpoint-GUID: lMQebzMRV_yrWqqdO9rlB1-SDxuYWIG8
X-Proofpoint-ORIG-GUID: lMQebzMRV_yrWqqdO9rlB1-SDxuYWIG8
X-Wisc_ValidFrom: true
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-06_09,2025-05-06_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=999 mlxscore=0
 suspectscore=0 spamscore=0 impostorscore=0 phishscore=0 adultscore=0
 priorityscore=1501 malwarescore=0 bulkscore=0 clxscore=1015
 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2505070005
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Well, that doesn't mean it can modify a read-only file system w/i 
another read-only file system.  To do that, you have to copy the files 
to another file system.  It is conceivable that UUI recognizes the 
iso9660 file system in the GRML iso file, mounts it, copies it to a 
temporary file system, maybe even a ram disk, then mounts the squash 
file system w/i the iso9660 file system, copies that to a ram disk, 
modifies it, and then re-squashes the squash file system, puts it back 
into the copy of the iso9660 file system, and generates a new ISO file 
from it.

It's conceivable.


If you want to see what I'm talking about, you can try this:

1. Download a GRML image, for example grml-small-2024.12-amd64.iso.

2. Mount the ISO file on a loopback device:

    ```

    mkdir /media/loop1

    mount -o loop grml-small-2024.12-amd64.iso /media/loop1

```

3. Mount the squashfs GRML file system:

    ```

mkdir /media/loop2

    mount -o loop 
/media/loop1/live/grml-small-amd64/grml-small-amd64.squashfs /media/loop2

    ```

4. Copy the squashfs file system to disk:

    ```

    mkdir /tmp/squashfs

    rsync --archive  /media/loop2/ /tmp/squashfs/

    ````


At this point you could make whatever changes you wanted w/i 
/tmp/squashfs/.  Then you could use mksquashfs to recreate the squashfs 
file. Then you could make a copy of the iso9660 file system mounted on 
/media/loop1/ and copy the  new squashfs into it. Then use  mkisofs to 
recreate the GRML iso.


On 5/6/25 1:29 PM, K0LNY ?? wrote:
> Apparently it does, since it can put GRML on a live USB drive.
> I've used UUI to put systems on a hard drive plugged into a USB to SATA
> adapter, and then put that into the computer.
> Glenn
> ----- Original Message -----
> From: "John G. Heim" <jheim@math.wisc.edu>
> To: "K0LNY ??" <glenn@ervin.email>; "Gregory Nowak" <greg@gregn.net>
> Cc: "Samuel Thibault" <samuel.thibault@aquilenet.fr>; "Speakup is a screen
> review system for Linux." <speakup@linux-speakup.org>
> Sent: Tuesday, May 6, 2025 1:26 PM
> Subject: Re: Load speakup module as kernel parameter?
>
>
> Just to be clear -- you are saying this software has the ability to
> modify the squashed file system w/i a GRML iso file?
>
> I mean, GRML has it's own persistency options. Maybe it knows about them?
>
>
>
> On 5/6/25 1:01 PM, K0LNY ?? wrote:
>> If you download UUI the universal USB Installer I mentioned, they have an
>> installer that you run whenever you want a writable live image on a USB
>> drive, and GRML is in the list of operating systems that you can select,
>> and
>> it downloads the latest image ISO.
>> Then you can edit it all you want, and the changes will stay until you
>> change them.
>> Glenn
>> ----- Original Message -----
>> From: "John G. Heim" <jheim@math.wisc.edu>
>> To: "K0LNY ??" <glenn@ervin.email>; "Gregory Nowak" <greg@gregn.net>
>> Cc: "Samuel Thibault" <samuel.thibault@aquilenet.fr>; "Speakup is a screen
>> review system for Linux." <speakup@linux-speakup.org>
>> Sent: Tuesday, May 6, 2025 12:57 PM
>> Subject: Re: Load speakup module as kernel parameter?
>>
>>
>> An iso file contains a read-only file system. GR ML uses a squashed file
>> system w/i it's ISO file. So you'd have to mount the iso on a loopback
>> device, copy off the squashed file system, unsquash it, make your
>> changes, squash it, make a writable copy of the iso file system, copy
>> your new squashed file system into the iso file system, and then
>> recreate the iso file.
>>
>> As I said, GRML has it's own customization options. I'll use those.
>>
>>
>>
>> On 5/6/25 12:12 PM, K0LNY ?? wrote:
>>> Also, you don't have to write an ISO to read only media.
>>> You can do that after you have made your changes.
>>>
>>> ----- Original Message -----
>>> From: "John G. Heim" <jheim@math.wisc.edu>
>>> To: "K0LNY ??" <glenn@ervin.email>; "Gregory Nowak" <greg@gregn.net>
>>> Cc: "Samuel Thibault" <samuel.thibault@aquilenet.fr>; "Speakup is a
>>> screen
>>> review system for Linux." <speakup@linux-speakup.org>
>>> Sent: Tuesday, May 6, 2025 12:06 PM
>>> Subject: Re: Load speakup module as kernel parameter?
>>>
>>>
>>> If you booted a ubuntu on a CD-ROM, you can make all the changes you
>>> want to /etc/, /usr/bin, or whatever and the next time you boot from
>>> that CD, it will do exactly the same thing it did before. You can fix
>>> stuff on the hard drive of the computer you are booting on but that is
>>> not what I am working on. When you boot Ubuntu, you can press
>>> control+alt+s to start Orca. But GRML uses Speakup, not Orca. That's
>>> fine because it is designed to help you rescue a broken computer. I just
>>> want to start Speakup during boot on the live image. Like if Ubuntu came
>>> up talking instead of making you press control+alt+s.
>>>
>>>
>>>
>>>
>>>
>>> On 5/6/25 11:32 AM, K0LNY ?? wrote:
>>>> If you have the image on writable media, you can edit it.
>>>> I was working with Raspbian on an SD card and I messed up the fstab file
>>>> and
>>>> it would not boot.
>>>> So I plugged the card into another raspberry pi and used the cp command
>>>> to
>>>> copy my backup fstab file back in place.
>>>> I could easily put a service file in /etc/systemd/system.
>>>> You would have to wait until first boot to run
>>>> sudo systemctl enable file.service
>>>>
>>>> Glenn
>>>> ----- Original Message -----
>>>> From: "John G. Heim" <jheim@math.wisc.edu>
>>>> To: "K0LNY ??" <glenn@ervin.email>; "Gregory Nowak" <greg@gregn.net>
>>>> Cc: "Samuel Thibault" <samuel.thibault@aquilenet.fr>; "Speakup is a
>>>> screen
>>>> review system for Linux." <speakup@linux-speakup.org>
>>>> Sent: Tuesday, May 6, 2025 11:26 AM
>>>> Subject: Re: Load speakup module as kernel parameter?
>>>>
>>>>
>>>> Well, this is GRML, it is a distro designed to be run from a CD-ROM or
>>>> USB thumb drive. If you change something in /etc/, you will lose it the
>>>> next time you reboot. I don't know if it's even possible to change
>>>> anything in /etc/ while running a live GRML image. It might be mounted
>>>> read-only.
>>>>
>>>>
>>>>
>>>> On 5/6/25 11:22 AM, K0LNY ?? wrote:
>>>>> One could use a startup script in systemd/system or maybe a line in
>>>>> rc.local.
>>>>> Glenn
>>>>> ----- Original Message -----
>>>>> From: "John G. Heim" <jheim@math.wisc.edu>
>>>>> To: "Gregory Nowak" <greg@gregn.net>
>>>>> Cc: "Samuel Thibault" <samuel.thibault@aquilenet.fr>; "Speakup is a
>>>>> screen
>>>>> review system for Linux." <speakup@linux-speakup.org>
>>>>> Sent: Tuesday, May 6, 2025 11:17 AM
>>>>> Subject: Re: Load speakup module as kernel parameter?
>>>>>
>>>>>
>>>>>
>>>>>> If you want to start speakup by passing parameters to the kernel, the
>>>>>> speakup modules you want to load have to be compiled into the kernel,
>>>>>> unless grml does something nifty I don't know about. If the speakup
>>>>>> modules are just modules, then the earliest stage to start speakup is
>>>>>> inside the initramfs. That's still not as early as the kernel
>>>>>> decompresses and loads, but it should still be enough for most
>>>>>> purposes.
>>>>>>
>>>>> Hmm, I guess figuring out how to load hardware speech drivers isn't
>>>>> worthwhile. It might be possible to install a custom kernel into a GRML
>>>>> image but probably a more useful thing to try is to start speakup with
>>>>> software speech automatically during boot. It is not too difficult to
>>>>> start speakup after your machine is done booting but it would be better
>>>>> to have it start automatically and during boot. I'll have to get back
>>>>> on
>>>>> the GrML list to see if I can make this new approach work.
>>>>>
>>>>> Man, I should have asked here first instead of spending a week trying
>>>>> to
>>>>> load the speakup modules at the kernel command line.
>>>>>
>>>>>
>>>>>

