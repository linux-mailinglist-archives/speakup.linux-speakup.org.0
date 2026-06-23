Return-Path: <speakup+bounces-1611-lists+speakup=lfdr.de@linux-speakup.org>
Delivered-To: lists+speakup@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id UqGdLbADOmpl0AcAu9opvQ
	(envelope-from <speakup+bounces-1611-lists+speakup=lfdr.de@linux-speakup.org>)
	for <lists+speakup@lfdr.de>; Tue, 23 Jun 2026 05:55:28 +0200
X-Original-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 9019D6B3E7F
	for <lists+speakup@lfdr.de>; Tue, 23 Jun 2026 05:55:20 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=math.wisc.edu header.s=selector1 header.b="u0xi1/pt";
	spf=none (mail.lfdr.de: domain of "speakup+bounces-1611-lists+speakup=lfdr.de@linux-speakup.org" has no SPF policy when checking 206.248.184.127) smtp.mailfrom="speakup+bounces-1611-lists+speakup=lfdr.de@linux-speakup.org";
	dmarc=pass (policy=quarantine) header.from=math.wisc.edu;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 4F640382681; Mon, 22 Jun 2026 23:45:29 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 2EDA6381950
	for <lists+speakup@lfdr.de>; Mon, 22 Jun 2026 23:45:29 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id E656D382166; Mon, 22 Jun 2026 23:45:22 -0400 (EDT)
Received: from mx0b-007b0c01.pphosted.com (mx0b-007b0c01.pphosted.com [205.220.177.71])
	by befuddled.reisers.ca (Postfix) with ESMTPS id F0FA2381926
	for <speakup@linux-speakup.org>; Mon, 22 Jun 2026 23:45:21 -0400 (EDT)
Received: from pps.filterd (m0316043.ppops.net [127.0.0.1])
	by mx0b-007b0c01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65N3HZbV1799207
	for <speakup@linux-speakup.org>; Mon, 22 Jun 2026 22:45:18 -0500
Received: from co1pr03cu002.outbound.protection.outlook.com (mail-westus2azon11010052.outbound.protection.outlook.com [52.101.46.52])
	by mx0b-007b0c01.pphosted.com (PPS) with ESMTPS id 4eybraa1dd-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT)
	for <speakup@linux-speakup.org>; Mon, 22 Jun 2026 22:45:17 -0500 (CDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=e+lEMdDkz6chMbwzc/VOSYVzdc+LUyVJdAT+8J0Ic8bZ3LKab5REEjI9S7IGXhwCPWTaEMxswm8IFHWq47KjzkCb1xWbetsqFSHaZHozR7iJwJnjB94IaOxKy9p1lZcfsoTZwq34+JXX+8ducd2+JK+6Q2CO9ifVlpTh0awXsWca+24Z+SAdYjiWGc03hFbDKDMLEcw6Gb8DjH/2SM2CIvMBK/Q+GKv1qSDWGWD6CiLPJuG0KofWhVvFOWnIs7Ch8TsD4mvEGRIBseGEixAiTdOaY2IjdO9i0llswjccOAroVYGen58cXoosz7I49DRjtYpDXqUnJ6u7q63hm87wbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CUYLsXP6DocCWNr+4avKcZdswxz9aFB9O26lxyLoZsg=;
 b=lTsOmKjoh3bQlkIHRtkn3Y/+dm25SIhSO3uS2hWumIg5T3aEn+RhwVNA1OFiq8HmJxbbZiQjqCAJuwPj2yZN8PeEME3UF9u4l4KWaw15YUjqiTqAy+eP0tgDMfwhUkMUqOS2mA/qsgVqtHlEoV09msSPcX2VoivJNgLRjW3ki4qWUjqnJEI+WNerQJ91FtQMU7NZQ2kmIEakoWJ7jMf6TrZ9xJY9rHd+SwXhIc7+ELCPewmyMl/LjH2cTF5kf2OJ0ffuv26UON5K2cElCISUxpSySvT3LaGs1B2PwvCcqFmJMOno3UUCZdRrolvNPUV8XjOLQhJVueP43hTQgPf1Pg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none
 header.from=math.wisc.edu; dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=math.wisc.edu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CUYLsXP6DocCWNr+4avKcZdswxz9aFB9O26lxyLoZsg=;
 b=u0xi1/pt+i6+NDc3/ndYifXg0WwnswP+XJe5ffJbWUXvy5XrppnDYDIhzueANTj3noG9y2l3M/WS5AZrEj74VuAq5CQA1hRYAaIRJ91ooi1sHEjRebIJG2LxGYm3qdNEp5NCeSBi/K9xKCHbWEmK1SxilakH+afb8xyfyqTtsC1UMsz091Ug6lRrYbIK79pvy4MxBiNZ0fxOx4qELPtC5r9XG76CVHabe0836zz/PR0PygPQF+Omi7HaUxItRrSYgEn9AzgrzQVtOJpFbLEsuJhWLiwqrcWlfA87e6znetjzwIkjNl7y6SJ1w8NHJZejaYTpj2dTj1n6fl7BeY5l5A==
Received: from BY3PR06MB8195.namprd06.prod.outlook.com (2603:10b6:a03:3ce::19)
 by MN6PR06MB10479.namprd06.prod.outlook.com (2603:10b6:208:4fa::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.139.20; Tue, 23 Jun
 2026 03:45:15 +0000
Received: from BY3PR06MB8195.namprd06.prod.outlook.com
 ([fe80::a7ad:fb62:4389:fd8b]) by BY3PR06MB8195.namprd06.prod.outlook.com
 ([fe80::a7ad:fb62:4389:fd8b%4]) with mapi id 15.21.0139.018; Tue, 23 Jun 2026
 03:45:14 +0000
Message-ID: <aa9f5623-dba3-4686-9b5c-8144e409425f@math.wisc.edu>
Date: Mon, 22 Jun 2026 22:45:12 -0500
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
From: "John G. Heim" <jheim@math.wisc.edu>
Subject: Speechd-up -- nice!
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: CH2PR03CA0029.namprd03.prod.outlook.com
 (2603:10b6:610:59::39) To BY3PR06MB8195.namprd06.prod.outlook.com
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
X-MS-TrafficTypeDiagnostic: BY3PR06MB8195:EE_|MN6PR06MB10479:EE_
X-MS-Office365-Filtering-Correlation-Id: 0c967032-e1ca-4cc7-a29f-08ded0d9d534
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|23010399003|376014|366016|786006|41320700013|18002099003|56012099006;
X-Microsoft-Antispam-Message-Info:
	Ri7Vm41YmLw3bFZk+SfCy+Zy58J0Y+YU2NwOqN4bkdAkjUUoiOrMIiIMLzmId0Lzb+Hv2QoUbjkZuqGEVJzxFDmv5ReOhX9wob9+hMhxbB88QpvOaTuqVxYLq76WZJ3Q6lgNpv5H5llSg1F1yZFYYZ79rULriI/KGTrHsAz3WfEnZnrVbS/MYFgR3zdKlCi1sRn1IVF/HTR3GGxawjmz/rd+e4ZTRG1NgxMurVK1sIo3dkh09c5JR00mQXoUDQfWcqkgPkt9psxcydBQo8ro3elJnoIR9vHpXERaDkeTI2XkfTVPj+7DsoA3G4Mk1oBTO94DgUDVchjwvwdK9hK7wguM2RV13AF1iQQVNkqYxm9QKgR6c5BFOtpnNV3tfFncrIYKjN6YNbbmpV+scuPl2sIpHMcgiLhDxddikuezcDMZbZZ4lfNtIKrU6ljY9TOtCfce/gd8UUEt+svk3sc6k6+HBAE/15Jlwe5Ju1R/GrWRNOV2Bk7ShUEOylnhgyDTSeWnka2i8/iAOiPXbtizNg+ymBkZpBJ9ly0PjWp7EEyQTWPRie3rufslC4Po1syBZlZu6L6wEFMuajq69PCUV/MFewjpgVylSTZG6sVRbK87qB5RS++PGcQXSR1Eh2CKi5rgOkhHcuziJmNAQ0wP3sfVcnm5gQQyY+axonO92Jo=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY3PR06MB8195.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(23010399003)(376014)(366016)(786006)(41320700013)(18002099003)(56012099006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?KzVxRGR1MWptYTVXeThQVGNPRkpiQlk1S2RiMHQ1anNVcnI2VHh4NWdhZlZN?=
 =?utf-8?B?V2FpeVpCcEcrK2Z3dnNlM1ZOY280UE5sdk9STFFidW1Jd1pjS3Z2OFl5RDU4?=
 =?utf-8?B?d0k2RzI2RURyV2wwWlFRdDBkVXFkM29nR1owdFdsV3JCSnNWY0hqTGpIZlVx?=
 =?utf-8?B?QlE5MTI1U01aN1FsYlovdUM0dGQ3ZHVPbXRTcDdCV0VWVEk5eTUxdkZYOTZl?=
 =?utf-8?B?V3dzZ2pHbTYydE1MK1FxNm1wMmtlYWVPbGFmVXUyam9jRVFCak5WUUlxYS9B?=
 =?utf-8?B?bTU4VnpNU3poblFITDdWK0k2eitxZStVREpBTi9mb1k2bkdRM1NveWNyRFNI?=
 =?utf-8?B?NG9vQWdVQWFmd2pEUVczSGpaeWNIY21OVFJVVWFwbmZITUVYVUVIUi9UcnFY?=
 =?utf-8?B?d2EzRVNtbkVnaVh0N2M5T1FJbmRvQkxpbFg5V2RadUZFRFlTVUNTUS83YUVa?=
 =?utf-8?B?bWduRXpUVGFwNkkwdjB1R2pncHdmWkY4aXhHS0lZMHZXZnF5eDA4UFlVV3Vj?=
 =?utf-8?B?eU0zbzBNY3BLNHh3VEUrZnFCa2xWb0k3VzJkUWFFYVZEN3YyM0E4ODFLQlNo?=
 =?utf-8?B?am5TaTFOOHpIRFJlVnliREd4VCtRMWJxQXovZFpOT0FMS1BCbUt0TkZiSGlG?=
 =?utf-8?B?eFQ3amFOY28rZkU4ZHhSWC9Dby9SaDNSUVZpZjgwUmpxejVTRE15ZzJyL0R0?=
 =?utf-8?B?cHhlWjFUcm9xMDlsU1JST3crRzVVdjFvVlRmNTRTNHNQNGRpd1Q3S0IzTjE0?=
 =?utf-8?B?Qk96WlJaTmN5LzdKcHA5d1lmMDV2ZG84N3h2ZFZNdkpJQXV4VkJ5L2ludytq?=
 =?utf-8?B?YkNabFRCWENFaHhnaXNZZVZYd1dSYjc4cXRzZkJzVE9qTkNMNkdybmFpdFVL?=
 =?utf-8?B?Rng0a3cxYWEvQnRMT2ExbGVhbVVEWlUrN2kwUnlTMFlhNXdpK1NqU3d3ekJD?=
 =?utf-8?B?eDZaK3grdUZQOFNxL2FnZ2x4aUJxWWxGODlLTXZXTCtsRzNqWWhaWnZuM3BN?=
 =?utf-8?B?ZG5PSWZmcEE5dk5GbHR4WUtLeWlqODRUUlBkVy92Z2MvUTlML0hHd0QzQ1c1?=
 =?utf-8?B?TGREc201aWk1WlBNYWRNM2E4U2RmL0F0YW11dk92TE45Q1Y0WFNNUlp3UnJz?=
 =?utf-8?B?c0RmWHVFeEZxVTkxTWZxMTNObmZyeDhnWm1YbkYwSVVXQk5Bb3FMNUs4bFBG?=
 =?utf-8?B?ZXhZMzN6SW1VeW1WdzFzbUYvSVkrLy9VYjRFS3hNd1A1ZUlNRnh0NG9Hc3B2?=
 =?utf-8?B?VDI1dmhuUjBOL2ZyMnhZd2xuVDdxY3RuVHJrOU8xeThTWmR1a29MQ1FtZWdY?=
 =?utf-8?B?S0FCZllPaDFxUFU3V2U1WWpxNzFGU3poNHFoc2JQY0J1SFdkc1FtakJCTEFo?=
 =?utf-8?B?QkRkblBGOVE3ODNtaVdyZFlZVDMzdHdCS1l6LzBndlNGRXU2b05TaHBEYW9Y?=
 =?utf-8?B?Q1FEcjRWcVdkWG0xTXJJdDZYTyt3M0VlckR4NERyeTBWVDBoZzh6RUh4c0oz?=
 =?utf-8?B?ZHVqTVFxNGpod281TzJSSmpYbmc5VlBUSVgycEtwUWlyUWJ3UGs0THo0V3FG?=
 =?utf-8?B?UFNXSGdrZVZaMWwzNmx1c3kvOG9xZGtXRlo1Qm9Oemt2Nm9JK3NyWEtpLzlS?=
 =?utf-8?B?SmE4V05aamxZcUhQU1pxUGJyZk9DQ3FVZVB2eW9tdnJsNmI5dk1BODVvYm44?=
 =?utf-8?B?YzB4UDZhSHc5TllFUEZUWHVyZXBVdnlGanU2NXdPVS9Qb1pvaDFML29WdUho?=
 =?utf-8?B?NGJka1l4bHREbGtCWXFIZi9YdnBQUjlVY3c3MENob2NBOWl6QVdaR1dkb1lh?=
 =?utf-8?B?UkFFeU5UaUJ5M05RS1k5dy9GWnpxSHRYKy9acjhEUUZPdlRxSnhNenMyaHZZ?=
 =?utf-8?B?NkVBVjhRMWlTYUFDMndnNzR6eXBidWl6bVN6Q0FiU0dPR3lMTGdzVjkwaTBm?=
 =?utf-8?B?UGpQTC9IbGFPMncwZWdqRkJyaFcrc0RpMFBFL3B6aC8rTlNCYWtIYWZtcE04?=
 =?utf-8?B?ZWRzVEpsSHVNTkFKVi91L3ozMXN1c0JvK3FpbElaSFc5UXpFNEpSMFp1ZUV2?=
 =?utf-8?B?Q1NyblFyMytsOTBmbjJkaUdjWGdBblg1WTRaY2pLNFo5UkRqZmxkOWk1aWNs?=
 =?utf-8?B?eVVGL0VNTFgxcDRqcVpKcW05REttbHkwdS9CRzFHUEpTc0Nmb2RsaisxZEhz?=
 =?utf-8?B?LzR3NXR3ZkZiVDIrZU1KbnVLNjgyM1FjRjV0clBxT3dTL1ozMGZyVTQyU05o?=
 =?utf-8?B?YkVTd3Rzdm92aHJuaHNvUENnTHo3N2NmMThGcTJKMXNzSHp1eXluL2FLN0l5?=
 =?utf-8?Q?8CwSmwUdV+jlSA3127?=
X-Exchange-RoutingPolicyChecked:
	rS1VHXhlI6C9583VC2QX8vZjWVrf4rBplNeLSTJmMAd6klAwq230E+Ohb4HRTsVA+0PajS1hctAaqcxpd4346MXGPj58MLSoFeOWNOZB92U7Oc4+TPk+9gANdI7+KmFoWICPlF1iRo6+VEkoZu344DBXUqRZdm+m5Chq9bSYjW+dQSYI8ohK2IDhnbgGsli0Q1WXmF3WEAqIdzXLK1HNquwWUOyxMvDWD5w1dEZA869kazmtYhlekcR87sflXLzUltD9ekLT19WVSsmFz89bpCVLir1IqmO5GZuava6sr3Q+uEKRgUpSZoi0pDnYRb/wKngmcmshGgBTh14xgNVS+Q==
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: 0c967032-e1ca-4cc7-a29f-08ded0d9d534
X-MS-Exchange-CrossTenant-AuthSource: BY3PR06MB8195.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jun 2026 03:45:14.3291
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: THv2Dndt099FJRS3b0xGx5rDBHUp/uYS2ilw0ry6zOiyVmfv6fZZvoV9G6q1Xg4D
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN6PR06MB10479
X-Proofpoint-GUID: uv6gtC7uUbxpcwow7unW_sgvNl0hOP5E
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjIzMDAyNiBTYWx0ZWRfXyEPen1frpAL8
 VashliabDTYzfmbe4WlwIwESE/nV8FBYCl4bxVUqkcvBKKCIn1l+GYlYhX+AVKyT6epM8cnNlFe
 MbFmjc8jbRLfi+kJtCpbeCnlHirvJnQ=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjIzMDAyNiBTYWx0ZWRfXwfSW7rjHGCTW
 MTRHYABr2O7oROkJwU9rQ8fBRAYnR77UFyV4oHOwy6jCgjgDn8l5M2bFh3jPQ7AhBiNzo4+wCWH
 oT7iLdSe2deKo7k6Z6QXUlfo4wn71G49Qa4aRFw3dwUUokqButrOuOZo+gRQzq24eiGuIcyMtVS
 vGJ8kJqvyHdYtxub5SFXPLCy2ZtTl95k/98jQwW87j3wqyXqkVRTfPIIHhVvbo1OavzG8GcZnHV
 9nfFIdczdMYbcsqwokKnzSdJLeW9s5uFCtDal7+eGKjIzphOhX86ut/Af9xe/1XgUmZpGcVyBLQ
 X2ak6bYC1WoWtnoJamh4akTDzls6uTiyBr9/2KVoD16V/tuzip03RmaciEg9HyO+4csGR3cGBlE
 IAJoUfMqKQDWwF73QKizSDXlaCStxpgWS2Q8h5O0huHPW1Khl6sYBdcMGARS5Aul70m0xA6jyEY
 0gQfXDnpG9OYbyD3U1Q==
X-Authority-Analysis: v=2.4 cv=NZrWEWD4 c=1 sm=1 tr=0 ts=6a3a014d cx=c_pps
 a=5/iD8UG2uIJM/AKiuvK9Ew==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=lre9DRYkaIEA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=ZyELlZqCvD1aXIDzc3I-:22 a=UDYdy8M5e18q1hqNPuRN:22
 a=_XcSq_slZKcN7-zEMlQA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
X-Proofpoint-ORIG-GUID: uv6gtC7uUbxpcwow7unW_sgvNl0hOP5E
X-Wisc_ValidFrom: true
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-23_01,2026-06-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0 clxscore=1015 priorityscore=1501 spamscore=0
 malwarescore=0 phishscore=0 lowpriorityscore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2606230026
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.89 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[math.wisc.edu,quarantine];
	R_DKIM_ALLOW(-0.20)[math.wisc.edu:s=selector1];
	MAILLIST(-0.18)[generic];
	RCVD_NO_TLS_LAST(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-1611-lists,speakup=lfdr.de];
	TO_DN_ALL(0.00)[];
	FORGED_SENDER(0.00)[jheim@math.wisc.edu,speakup@linux-speakup.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_ONE(0.00)[1];
	R_SPF_NA(0.00)[no SPF record];
	ASN(0.00)[asn:5645, ipnet:206.248.128.0/18, country:CA];
	SUBJECT_ENDS_EXCLAIM(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jheim@math.wisc.edu,speakup@linux-speakup.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[math.wisc.edu:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux-speakup.org:from_smtp,befuddled.reisers.ca:rdns,befuddled.reisers.ca:helo];
	MID_RHS_MATCH_FROM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[speakup];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9019D6B3E7F

Not much mention of speechd-up on this list over the years. Turns out 
it's pretty nice. While working on rewriting the docs for Speakup, I 
gave speechd-up a try and it works great. I'm  using that Voxin default 
voice, Eloquence, at the command line. You can't do that with espeakup.

Speechd-up might be the way to go in  the future because voices that are 
not resource hogs and are more human sounding are coming. Well, they 
already exist except I don't know how to get them to work with Speech 
Dispatcher. AFAIK, nobody  does. Like, I have a license for Samantha but 
darned if I can get it to work with Speech Dispatcher.

Anyway, once that kind of thing gets worked out, you'll be able to have 
human sounding voices at the Linux command line.





