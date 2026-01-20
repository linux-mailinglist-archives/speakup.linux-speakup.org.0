Return-Path: <speakup+bounces-1523-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 42464D3BE23
	for <lists+speakup@lfdr.de>; Tue, 20 Jan 2026 05:11:21 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=math.wisc.edu header.i=@math.wisc.edu header.a=rsa-sha256 header.s=selector2 header.b=RlrqRWeL;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id BBEAE38190A; Mon, 19 Jan 2026 23:11:20 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 95C5B38183C
	for <lists+speakup@lfdr.de>; Mon, 19 Jan 2026 23:11:20 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 77F28381843; Mon, 19 Jan 2026 23:11:14 -0500 (EST)
Received: from mx0a-007b0c01.pphosted.com (mx0a-007b0c01.pphosted.com [205.220.165.71])
	by befuddled.reisers.ca (Postfix) with ESMTPS id E580A38183B
	for <speakup@linux-speakup.org>; Mon, 19 Jan 2026 23:11:13 -0500 (EST)
Received: from pps.filterd (m0316037.ppops.net [127.0.0.1])
	by mx0a-007b0c01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60JIF7qJ321513;
	Mon, 19 Jan 2026 22:11:11 -0600
Received: from ph8pr06cu001.outbound.protection.outlook.com (mail-westus3azon11012050.outbound.protection.outlook.com [40.107.209.50])
	by mx0a-007b0c01.pphosted.com (PPS) with ESMTPS id 4bssqgjc4p-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Mon, 19 Jan 2026 22:11:10 -0600 (CST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gVHpaehwBtEeGIiqxaIoEGnhfBOYx5XVUAEYONjE3Mka9OyKXVt5ygxrFqWmB82GKSVf5CEhIV26LtY13UnF+oo1ZmZQAC35681bbj2eZo4z2kc9eB3STee7qGaJ/NBOt4/8pYhvcXc4jUNil1usz9VuhhbBBfneakW7Jz/dF1c43RkTvClaAzo+H9/5TCsiQpMfDHvcU6JTxu6bdPj3AFtU/JVJSrNVbjmjy/97K4hcSO4mKVCcQGyMO2XUnoMXMKyu0FV46fXRt4LlHwMWynTuzk9Vl2MCSA3YKtwP3TH/dFCe7mgqI2+ajTZOG5dgVjI+pV2b794cRyiW6/FWEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aCUB4SEAfVp5uYp3OTRwhLKgPcj1VEPxx4rObKH1aTQ=;
 b=kCwPEPPXL3I2gScwNxkNd+8h5OOwhY57A6e1V+I17UnfF0fefN39nFr5VDwKALif+TraQ1mRl7v1PLhk8i4M/3HA1gCieoHc8DyLGvsqet22/wbK78zrjTXBLO49CRG/O68BGH80Uc5pVvcx1f+llTocjb4ktRYFAvRUYPkqxBDirIbGqSAI6dvcwr+oxTj0A/WyuZqFjQxl7QOsfDfAd3wZCYTaBH4RuFQya8kGtKaEJeXTZZaHDWGK0n0I1LjRpH7vhSZ5q05bdKgEe9w+GVjKz5bI88EKMsVcoI4sSgejcFgGEw/UeM/k4EShpZWUUjeaDNMEp5v5U4iPXjJW3A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none
 header.from=math.wisc.edu; dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=math.wisc.edu;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aCUB4SEAfVp5uYp3OTRwhLKgPcj1VEPxx4rObKH1aTQ=;
 b=RlrqRWeLfCwfh8yT/Cu/jxvht/e26EAFahaOsQHAJiDL1tt/u8Y/ODV5jFqvUuRF/qdatxQgBXPRloCoBE8yMth6BiTK24gS4iV/IdrFpHVRUopyN7F4+QIhqhrk3NoQtLQiXr2s+MRuufjT+gJWeuJzO5JtMAth1vRgabOiDm5d0cpWil+IClFzrDnSeJWM8zDmaRvv92f9rhr0BhXjqGlXqdeDWf93oRkV/6WO0KJcUNapNA8N5KVujvgpyRPhpqxu82f0cUSylRwYnZcyL46m9dBgEoFoIqDWEukV9a9qKcR5xxSWjjK4+lPzXvX0vdEBfAmQJoJMJtM9cPeBqg==
Received: from BY3PR06MB8195.namprd06.prod.outlook.com (2603:10b6:a03:3ce::19)
 by SA6PR06MB10422.namprd06.prod.outlook.com (2603:10b6:806:447::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9520.12; Tue, 20 Jan
 2026 04:11:08 +0000
Received: from BY3PR06MB8195.namprd06.prod.outlook.com
 ([fe80::a7ad:fb62:4389:fd8b]) by BY3PR06MB8195.namprd06.prod.outlook.com
 ([fe80::a7ad:fb62:4389:fd8b%5]) with mapi id 15.20.9520.006; Tue, 20 Jan 2026
 04:11:08 +0000
Message-ID: <6fbb26e4-f7a5-4b29-a0b0-d860659c6219@math.wisc.edu>
Date: Mon, 19 Jan 2026 22:11:07 -0600
User-Agent: Mozilla Thunderbird
Subject: Re: Emulating a LiteTalk, full_time problem
To: Gregory Nowak <greg@gregn.net>
Cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <bbd7c5a2-ee29-48a9-b1d2-3d33e2fb8497@math.wisc.edu>
 <aW65n-zrysEL1_nq@gregn.net>
Content-Language: en-US
From: "John G. Heim" <jheim@math.wisc.edu>
In-Reply-To: <aW65n-zrysEL1_nq@gregn.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: CH0PR03CA0304.namprd03.prod.outlook.com
 (2603:10b6:610:118::28) To BY3PR06MB8195.namprd06.prod.outlook.com
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
X-MS-TrafficTypeDiagnostic: BY3PR06MB8195:EE_|SA6PR06MB10422:EE_
X-MS-Office365-Filtering-Correlation-Id: e24d1d22-ff66-4a6b-4c0e-08de57d9f045
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|786006|366016|41320700013|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?bmhaU2RqVlViS3NaQTZHenFvWDFxTDh1YWhabVBETjY3b2pNYjhQampkVnNh?=
 =?utf-8?B?a2Q1VG5GOFdDekVSVUpueEdFcEF0VEM1MnVwMXp2Vk1BOHlXQlNBcGJUcm8v?=
 =?utf-8?B?TFZjZGxxYmpCd2xudDgyemdsZjRTUFNPUmk3b1FIdGRJdkhFZG5pQUJBK1g4?=
 =?utf-8?B?MjJlNTR2cUUwMWI0a2lwZXIrWXVnK3pWaDN4STlaU3ZPNXFpcGp6Y0kxNW1y?=
 =?utf-8?B?ZmdlWTg2bmdmZU5ONndTQ1Y0Ry9Za01nNm53QVJaR25EZHNLQlJtdytZUHNE?=
 =?utf-8?B?OUpGZ1pOVVN3Vnc4ekdwcTFTT2YzbXFLWnJYTnlRczd5dHBxcGJJb3BnR1Rx?=
 =?utf-8?B?YjJ4b0tSc0gzdUlLdksra2NSa0N4LzhabmR0UE9meEZIcERMYkxsVWsxcit6?=
 =?utf-8?B?WjhGY3ltK290SEdobkFxWWxpeUpKK2QzdzBRTXRFTzVqdGhHek9yQ2RhZmRy?=
 =?utf-8?B?d2lDcGMrRlNhQkhsZm80VXhWR3duZTR0d3phUTFxQ0M3T3l0alcybHlaSys5?=
 =?utf-8?B?bGtraVZuOVRvd25OZ01mcTdiYVM2RTJ4b2l5Q0s0QUc3WlJYeVp4UW0xeTU0?=
 =?utf-8?B?OGhyd1NVUkk3YTVLT2p1NHlXM3Z4ZSs4N25RTktMSkh6SmlOZ21mTmhCRGxi?=
 =?utf-8?B?UjVKSjlSRmNGMFF2VUhMMXl1L2s0T1dSeGgxSkUvVElZWEJ1V1A4aEE2eXVP?=
 =?utf-8?B?UzBLOHc2eE5hdG8xbzFqY1B3VG05ZitZV0R0UnpkRmpJNTJyVGh4bmJ3ZzN1?=
 =?utf-8?B?U2Nnb2M1NXBML3BvRzBqb1dhajFUcWMrN001OEVEK2laY01xRW5Gc29vRGhp?=
 =?utf-8?B?VHRaU3FNUnY1WWVwaCs3WXY5alZqdGJ0YVdrdXFJVmN0dDNsaTZHZVA3UlBC?=
 =?utf-8?B?MkxrbTFjQXlLVlovTWNhWWswcjJSV2RhZGhDWTBzbUd0cGZnbnM4cGhMYUlU?=
 =?utf-8?B?NUZWTExsRnFkeEhPcHRFU1dGVENzZ3lDZjVycVEwQkNJaDJxZWpWN1R2bVRL?=
 =?utf-8?B?TGxGWGFmd3RKSXh6WXhxQlc3QnRhcmV4aTJka3QvMnJLS2x3WFU3NjVnUlJC?=
 =?utf-8?B?d2lWZmJxZDA5UW50VXlBUkk2ck5IWk9lNDlaODJZS3M4WFhJVU9wTkJkRTdU?=
 =?utf-8?B?T29KeGpiUWI2NlRSbHArTGQ2NWRnQmIrU0ZhaFhCMWdYZ0k5dUxlWlhIQWh2?=
 =?utf-8?B?Z3pZQ1Jtc3JwaXMyYXNuTE9xdUhFVVRDRm9Ib0NaUDhLRktxOXJCa1kvLzVZ?=
 =?utf-8?B?TzVQTkk5RVR6eHBzaVVHRys3NzdtZHh3UExmcUY4ak10TGFvWDJGUlRIRHJI?=
 =?utf-8?B?Mm0zU09sa3dRUkhPeEFhSGl2WXpVaWZuU1Y5aTVTYVl2ekFhUnVkT1lobWJ2?=
 =?utf-8?B?eXRiVkJobTRFT2NSZUtjYUtsTS9PZUQ0dzlvRXRvckd5bUl4UjY2VzJ2Z0Rw?=
 =?utf-8?B?Q0N3M3FIeGcrWUd4ZzJoU2dFeWtsdy9relEyb2RrdmsyU2VqcC84Y0UvbnVW?=
 =?utf-8?B?VExJa0JCMEFTbXVpNE51VW9DYkdXOGxob3JacU9oeGI1ZWVLUzBjR242TkdQ?=
 =?utf-8?B?Z2I0OGlObTFMaUFmTVpZOTFBSFRFa0pSRGdXMUFqTW1nbHJFVlFoTGJuQ2Rh?=
 =?utf-8?B?eE1xV2dYRWVIamxSL0JuQXRsV2FPOE15bHVENGhkTUtnbElod3VXRkF6QUl5?=
 =?utf-8?B?THV2NHd3cVdjdlcxZzl6ekh5ZHJMUTRBaXdKOFc1ZDk2RWlDcDF0dmZlTjh4?=
 =?utf-8?B?MnBFdHdvbFE5S0luSU1SYkdINDlIZGE2cjEzUEM4OHM1TDQycjgzc2U5RG5F?=
 =?utf-8?B?L2c0MkVaTTFlY2N0YjJMUEhiS3VmdlhVNTFyK0hkTHhhdk9EcmtjcUpaSFQy?=
 =?utf-8?B?ZU9SNzdsSWZIRDRrQVp4Kzh3d2lIQTkrZklwVXB1WG1Pc2RiYXk3MTczZzNu?=
 =?utf-8?B?dHFKbjJnUWcreDBzUDMxcnUzbW9DSm1iQ3FESWdraE8wR21vY0pZT3VEMlRZ?=
 =?utf-8?B?ZHl1VHY2bWF4ck9FZFd3bUR4dU4wUDVtZ3I0Q1F5bzBMTllNYUJVMUR1N1FO?=
 =?utf-8?B?Yk5ISzhVUHI5eXk2MjZBVEthMFJjcE9DeEsxR2liVUlMd2lSa0FIczRkUVpx?=
 =?utf-8?Q?lnlY=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY3PR06MB8195.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(786006)(366016)(41320700013)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?MWJXa25sT1orSmptK2ltdnJVRVpkRTFLTnQ4YnpUTEsvYU1PTTF1a1pCWG94?=
 =?utf-8?B?RjVtTXdNenFXblRIcmhRT1V6RVRVNCtWNituZzBvVW9Hd1BoenpVWFVRSWI3?=
 =?utf-8?B?d2djOXdzL3FvMnBJUVFROXl5SktZUEhxaTlsWUdmTkRYWlB0QW1UV2RtSzIv?=
 =?utf-8?B?T3ZycmZlUmlSU2ZOSGFzWTFTWmhXOCtnTUxtU25GbmdYVDZSYVBPS1o2dkw5?=
 =?utf-8?B?aVNWdncwMi9lTVI1aGlNMVVmQXBKOTlvdWVEY01FOVFHQ0pzVzZyeUtFRzU2?=
 =?utf-8?B?cENLd056TnBSdCtUV0REdWVwNW13c2J3MTQvSkZMVzBic3hWcFlJcTU5WXFW?=
 =?utf-8?B?ZWtFbzlwcStZTXh5Y1NUaENiVjd6cGpLQ21HMk1HMktmRzVvRjN5QUJYVUFp?=
 =?utf-8?B?blFDMEpmclhvMFh5bFFvV0xmS3RDQ0ZYUGE0THhqWENEUUZMMXk5cjgzU3px?=
 =?utf-8?B?U3ljejczWXVtMW1yamJiT2ZCZzNQSTVtUFVIT0ZQS3BKSm8xMmlFK0drTWJt?=
 =?utf-8?B?Z1JtRlRjUjN1VnFBTEJwNEt5QnVhblVqS1JYMjV4WVpUU2ZmMWlOUDZmdmxv?=
 =?utf-8?B?KzhPczkyQ1M4YmNkeGg4SkExQXRGKzhoeGtWQjJkZUxpRzRrQTREcm45cXF6?=
 =?utf-8?B?Q1B5a2FhOG1CakJkbU5RRW5TNnhiSGxSc0kyVHczcjJOOFBwbXZ2YjYzZVVN?=
 =?utf-8?B?QnRTa1VTWm9ONUpGUjE2aGUxQ1VodllKaDVtVC9ESGsvVUkvRmpKbzE4ZVVr?=
 =?utf-8?B?eTBvNlJlakhtbGJVSTZVWGdFa3NSaHIvbTZoRGFMbWpHNFZSdHFicDJEd2hG?=
 =?utf-8?B?ZmtIeWxtYkk0L2hJZ1Q3N2pOcGxJOUhMTU1aalhuSWFEWVFGQmUwMTNqdGM0?=
 =?utf-8?B?UUN1U1RhMjB5cXQ0VWNXSS95VFJRK0MyQUFPY2VHdWJpZnFmSkRnUmNrUTBk?=
 =?utf-8?B?dnRRNFFId0JNUFlUamFVMUMxVGUwbEhTUlBHREk3TTJYYmlGZjl1S3VIbUJE?=
 =?utf-8?B?UGRwWW5WUitzcy92RHZNeHVxVVY3QnRHU25OQ01mMHJpcTRmSWErSlVwMzJ0?=
 =?utf-8?B?OEtJUVM0SlRKS0I4ME5KWmRQNGlXZTBPbkFZSEZ3WkZwS1NsSzM5ZFk0Mnh1?=
 =?utf-8?B?cExKUEl2MllrcXozY08vSk1aTXEvSGlDcGFSRFJhbDhlOXNWcFAyTGJRQzll?=
 =?utf-8?B?VkhaY0I5QXFEZzNPTU9QSjZHRVZVNENJYTIyeDlvWnZwQUdNdWxPOXFrMDlV?=
 =?utf-8?B?QnF4N1hxeDB5UHZnVEhNMUhUVm1OZG43bmRXUy81bUhwOEE0WWxUeEt6R1dL?=
 =?utf-8?B?dG1MSnZ5VldSZ21uaTlRRm9Sb0Rjc0ZJUU5zRmd6d0xvbzNTTUYzOFo4MjNG?=
 =?utf-8?B?alBTK0VxaWxzajkxZXRKNXRMNlluNk10bUMxVkxjTHNybWFUa3ZCREsvcGcw?=
 =?utf-8?B?c2xtd01BN28wUWxvL1BkQ0Z3WVpkZDR6UXNtemRtM0FhaFREamZGbHVnTjBI?=
 =?utf-8?B?WWxRWUJIaXVYQnVjbnpKWG5hb0Rrc3hXaTQxMDJiREhnK2l2UU41VWhsVGlt?=
 =?utf-8?B?akZRRVBzRmhUUS80bWFUNnRhN3BjUVM4ZnEzTldJckQzYnlYcXJDMnQzZGor?=
 =?utf-8?B?MkRoWHlVbnNQOEg2Y0N2NjRCNjZ6WGQ2QmtDczhHbi9YbGQ3Qlc5MFBTWWhE?=
 =?utf-8?B?d1ozSi9WMzFhRmpZWHZuUnA3b1V0YUx0NUJDTTEzK2RSMnZvTXh5SUk1bC9P?=
 =?utf-8?B?YVdxbmVUZUdpQkJsZnFwUjBxaVdTNzZKaHlUdnd4TEdZbmhYQ0ZMWXpXdnA0?=
 =?utf-8?B?NWZjSFhqSXpnWFNTdFl0Vjd0RmNXNndncGsyZllVUjRGS1c5WW16ZGxrT2w4?=
 =?utf-8?B?RDhZOFJubG9BaXZ0eXdMQmZrN0xGRkZSVDVoUFFNSmg3bTQ1bUUxNVphVmND?=
 =?utf-8?B?WExIWUhDOHZtcllxUFN6WHNwYjl1bE4wRFh2VUt0a0NZQXA4RXpEN2U1RlNp?=
 =?utf-8?B?LzlSNStXRkgyZmFVRUNoKzc4UVd3R1pJUzNNbzJBWXQyR3NRTFl3N2VsR0N6?=
 =?utf-8?B?aWVpb2Vmd3M1aGpoVUlJTnJYUDF3K2ZCUWhOSHZreGVvV1l4V3VFZTVyam1Y?=
 =?utf-8?B?Q1Rlb0VZUUhhR21PcThCWFFwSTlUWHI4a0F4MDVLcW9lb2xicDBoK2tpQWh2?=
 =?utf-8?B?eldPbzZqQXRHY1h4M1dnWG9MdTM5YXNBU0xNVFhpTkN5UGwrRWdEOVBvZFNU?=
 =?utf-8?B?RVRYemVnQzIxLzA1U2ZHdkNTU3k4aDJpNzZGMWZubGxlaXVHVEpyelRoWUV1?=
 =?utf-8?Q?6FIc441dgQr4KZ8mKj?=
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: e24d1d22-ff66-4a6b-4c0e-08de57d9f045
X-MS-Exchange-CrossTenant-AuthSource: BY3PR06MB8195.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Jan 2026 04:11:08.4630
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MJ686lsiV1HlXLhC68SXE+b7r8lBNgjBGkpk235WkQuM/AI5hu9Ua3RQ3eW2HU7m
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA6PR06MB10422
X-Proofpoint-GUID: 7envd1AojuisHKIZ2AwJfJfWnfkSt1VN
X-Authority-Analysis: v=2.4 cv=Cpeys34D c=1 sm=1 tr=0 ts=696f005e cx=c_pps
 a=S4kVa+swf+0AvQ92Y/0yGw==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=lre9DRYkaIEA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=wXPlO7aRrP_SEPIUg2wA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIwMDAzMSBTYWx0ZWRfXxtwQ77JrElJw
 PBHjxvdrG4B9B9GmTjYsWM681b64TuQNJeLqmTYXW2DSaJIf0T51XtTB7Sdw+Ju7e4ExSWRzi5B
 N9f0LvQA47MDGh/9MRT01QWGNdHJXpuNvWLHJKx+EKvUV7lmgeFNl4tdd9hBkkYvsBRh1fYG0aT
 OuiEJLtwsssFDAnJJCokjIUSiEuj2GwZjdEKPIgsaukOBOmviRcOSMg93PYnycZB3e2vTfnupIP
 WKqnJ+qHhlpgAJtYTTFn6/FVW23JqW0vw+UtWFatSHm69oheTzUqr/di1lTqXglAdmC5AsLXzFo
 pAJUxCprqW1Pn78znVC89Kgn++Bqppnn67YK2eIqKlCHE0Z3pbAC7sXy8n0L2/OK7LS7iURYmRp
 bLLczLbcwLbjX2cL2LUhi2/sXvN5jpwrorBoHHhPBIPFJbaFV74tPq2gKTQ5rdcY1vQeTv6jlHp
 1JjhjFv8b8WyXAO5gtQ==
X-Proofpoint-ORIG-GUID: 7envd1AojuisHKIZ2AwJfJfWnfkSt1VN
X-Wisc_ValidFrom: true
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-20_01,2026-01-19_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 lowpriorityscore=0 suspectscore=0 adultscore=0
 priorityscore=1501 spamscore=0 clxscore=1015 impostorscore=0 phishscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601200031
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

My current theory is that upon initialization, the synth has to identify 
itself as a hardware synth that can understand indexing. If it doesn't, 
speakup doesn't send indexing marks. I guess I'll have to dig into the 
speakup code itself to figure that out.



On 1/19/26 5:09 PM, Gregory Nowak wrote:
> The index marker is covered in the doubletalk programmer's manual,
> which I don't have access to. Also, while I understand the basics, I
> haven't come across a detailed explanation of exactly how indexing
> works. Since you're not seeing speakup send the index marker, and
> speakup has a delay at the end of output, this makes me think that it
> is up to the synthesizer to send the index marker to tell the screen
> reader that it has finished speaking what it has been sent to
> speak. The screen reader would then send more text.
>
> So, instead of looking for 0X45, try sending it, and see what happens.
>
> Greg
>
>
> On Mon, Jan 19, 2026 at 03:52:13PM -0600, John G. Heim wrote:
>> My project to make a hardware synth out of a Raspberry Pi is going quite
>> well except for one thing, speakup is implementing a full_time delay between
>> sending chuncks of text.
>>
>> I discovered this by changing the value in the file
>> /sys/accessibility/speakup/ltlk/full_time on the host side.The default value
>> is 40000. If I change it to 0, my fake LiteTalk works almost perfectly.
>>
>> So what I need to do is to understand what I have to do to get speakup to
>> not wait. I  don't want to change the value on the speakup side, I want to
>> get my emulator to work well enough so the value does not matter.
>>
>> I  also know that speakup is not sending indexing commands. I put a
>> debugging trigger in  my code to say when it gets the indexing command,
>> 0x45. That  code is never triggered. So I am thinking I have to make speakup
>> think I can take indexing commands.
>>
>> If I can solve this problem, and I don't care how much work it is, I think
>> we will really have something. I bought a audio "HAT" for my Raspberry Pi.
>> That fixed the keyecho problem. It keeps up with my typing and I am a really
>> fast typer. I also have it so it recognizes the Pi when you power up and
>> loads speakup. You can use different languages, different software speech
>> engines, etc.
>>
>>
>>
>>
>>

