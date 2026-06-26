Return-Path: <speakup+bounces-1642-lists+speakup=lfdr.de@linux-speakup.org>
Delivered-To: lists+speakup@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 53xLK67ePWpj7QgAu9opvQ
	(envelope-from <speakup+bounces-1642-lists+speakup=lfdr.de@linux-speakup.org>)
	for <lists+speakup@lfdr.de>; Fri, 26 Jun 2026 04:06:38 +0200
X-Original-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 9C9C66C9A60
	for <lists+speakup@lfdr.de>; Fri, 26 Jun 2026 04:06:37 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=math.wisc.edu header.s=selector1 header.b=iONrhSPr;
	spf=none (mail.lfdr.de: domain of "speakup+bounces-1642-lists+speakup=lfdr.de@linux-speakup.org" has no SPF policy when checking 206.248.184.127) smtp.mailfrom="speakup+bounces-1642-lists+speakup=lfdr.de@linux-speakup.org";
	dmarc=pass (policy=quarantine) header.from=math.wisc.edu;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 711753826E0; Thu, 25 Jun 2026 22:06:36 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 4F93938269F
	for <lists+speakup@lfdr.de>; Thu, 25 Jun 2026 22:06:36 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 19FDB3826A0; Thu, 25 Jun 2026 22:06:30 -0400 (EDT)
Received: from mx0b-007b0c01.pphosted.com (mx0b-007b0c01.pphosted.com [205.220.177.71])
	by befuddled.reisers.ca (Postfix) with ESMTPS id E5BE038269A
	for <speakup@linux-speakup.org>; Thu, 25 Jun 2026 22:06:28 -0400 (EDT)
Received: from pps.filterd (m0316047.ppops.net [127.0.0.1])
	by mx0b-007b0c01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65Q1jU991682583;
	Thu, 25 Jun 2026 21:06:23 -0500
Received: from bn8pr05cu002.outbound.protection.outlook.com (mail-eastus2azon11011045.outbound.protection.outlook.com [52.101.57.45])
	by mx0b-007b0c01.pphosted.com (PPS) with ESMTPS id 4f1e8yrj5p-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Thu, 25 Jun 2026 21:06:23 -0500 (CDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sgYGoId1WsUbUa8Gsu5NdCxlPPqjQ1QQYGc8Ah8L7niXbrKZHdGeYp5RSejwHVfsEP56DYRXQ3cadqWtCe2JmAOzdVyZwaqKWPhxaI1eOga+lUoCsd0u6NuHGL89pmr9jq62+DKiDQYwEy3fogiiUs24TQYTDt7qmCWDsAR+kz9Sjgd85rGOm8fhfP+CkOsHcggEiY9s1oeCKnXFTUvBu86PQcHQ9GNU+Mbwk/B0SAGKL9OiJNm7pOUsuGXIDwhES1ogiNgENTgLU92HNeI7rXuk0tcXslxywqnj2telkkmc6KBu50IS7GoJaPUFTtAFq4Mby1Ua/wiFbv6/wno6YA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2DS4lOgmtRn2IBxYnBjT6JA1+u3S5AZ0pkh8ehCIkzE=;
 b=grJHYi9RARsyAYj6ptE21KJiyzv3PAXclau0n5qKZhKOjpsDztxpWMYn3XqCnStqnsOO9cAPyf36H1lEUzE2qZax2E/9iQ1oPYNfuBFemzzyQLj94h2+0dOjWEw51jkGi6ClKacRiNuh03yALdM1lx3ffKymMw6pGBZ/T195IN6/YUrp1Xxmi9xPJbzY1qzlNGX5lVEMRU/W3twAZzdU2zPIqxFeo2BvcGkwo2WjbMTChrC3JwW/wTLYjBk9ViyBgGNEGBMzKuFdJSUSA2OCvcf0IwNtGEsFGtGHkNw1bEwuLbVPgpuouTqmP9WJJbmS/E+D3m34/FQ/VtVyv3hcWA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none
 header.from=math.wisc.edu; dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=math.wisc.edu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2DS4lOgmtRn2IBxYnBjT6JA1+u3S5AZ0pkh8ehCIkzE=;
 b=iONrhSPrG3kZkVcTX71g94XsyVnurQf7UnSlALw3Iv3nGDhsQacjA/taIQogD71KgzjU23TottJKnrdOQCjiXhZz16880fy5Xap8rR42etRALJqt6fkvxhx/fD/FYZt1nfFkzOziyfjzQaOLmeVj7txgnWBFWOwn/gpBJZC9Aw6Y6vZjEUnrtLVPM2n2VO68ftWGPATjV7tBcYOz67byQ24kUvjlHkSN2JC1egcr8va0RtPi9bqF3EEAqyMtqgH/a7upebXInR5PiCiKlF3bV9Z1G+O9O23JPY9LupFd/QLbitqP6VBCea+qaI/I/i/f/wBKfp7YYZYkM/3DkOUIVA==
Received: from BY3PR06MB8195.namprd06.prod.outlook.com (2603:10b6:a03:3ce::19)
 by BL4PR06MB9849.namprd06.prod.outlook.com (2603:10b6:208:4e2::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.14; Fri, 26 Jun
 2026 02:06:21 +0000
Received: from BY3PR06MB8195.namprd06.prod.outlook.com
 ([fe80::a7ad:fb62:4389:fd8b]) by BY3PR06MB8195.namprd06.prod.outlook.com
 ([fe80::a7ad:fb62:4389:fd8b%4]) with mapi id 15.21.0159.016; Fri, 26 Jun 2026
 02:06:21 +0000
Message-ID: <f3b3edf1-b446-41e4-92bf-69f9f32f24c1@math.wisc.edu>
Date: Thu, 25 Jun 2026 21:06:19 -0500
User-Agent: Mozilla Thunderbird
Subject: Re: Speechd-up -- nice!
To: Aaron Chantrill <aaron.chantrill@dottywood.org>, speakup@linux-speakup.org
References: <aa9f5623-dba3-4686-9b5c-8144e409425f@math.wisc.edu>
 <fb515784-5620-4e0d-ad2a-3350ff0b14ef@dottywood.org>
Content-Language: en-US
From: "John G. Heim" <jheim@math.wisc.edu>
In-Reply-To: <fb515784-5620-4e0d-ad2a-3350ff0b14ef@dottywood.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: CH0P220CA0003.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:610:ef::31) To BY3PR06MB8195.namprd06.prod.outlook.com
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
X-MS-TrafficTypeDiagnostic: BY3PR06MB8195:EE_|BL4PR06MB9849:EE_
X-MS-Office365-Filtering-Correlation-Id: 6d9a416a-5508-48c0-a786-08ded327841c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|23010399003|786006|366016|1800799024|41320700013|3023799007|56012099006|18002099003|22082099003|4143699003;
X-Microsoft-Antispam-Message-Info:
	t540bMv7HCab3Ywb3tSB+BDRiUDV3TnwLzPyvOR59T0VBEpj7HbHbrFlxPBMNZR1rJY/7pONqhTMF2apaFoqXIIdWdpu+yc2S1L+nD5QP40s78lfVgaolbnwGvH/KkHLbmfgLfApzxqq+olPjZsTYx+uH5u4ruLVUPkGlQ5yf/EqPAy14h1jzpwpOeMkc175c/4UB8n6KuYR1A4/zynUeTVn8stKRzKrdPmAouG1rGWbbXRCHePR8kli76nUEM5hjgZ9QMd4a20W8QGvvE6O6p3WfYJhobb8bPy3ia7ZOcao/kEMtJl9qXogPQPXr4qAnpEyRnwqrxnuksqtUPU/2xPsz2t64ENwW2RxsL4qsfNQ+JwOgLl20sXo1IV36EGYm4rTzlOOR8p+TZybRrwaBppPy1ZHtkkdO24w4lPzjqKfhpq5iOy2vA1Cnf6Iv2yzWsikZb1ZjcI+meM1W/IhDwxxQlpK0bwcpgkOnlXTNrbFM3CS0SCtnjXtdRnl1r4UDidl2pWa34gbUELZ1N/3X62hzCA8Vkp6lIluAUrf0IZqvqFDUTrE8dtWwayePeBW66sy3L07bXtncEouhzMSt6SuyNTWCjE9YmUAujl/21/yoOnjzy7woveC4oklrFdZ+GcGo11OBprM47wNkA42pOKpgXFyUH/T5tsGrDB5tPI=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY3PR06MB8195.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(23010399003)(786006)(366016)(1800799024)(41320700013)(3023799007)(56012099006)(18002099003)(22082099003)(4143699003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?RS9OUDB3TU9jMmxIWTRsT25lYW1ORENQNXVmOUhzdmxOcTJoNEI1Q0JTcUhq?=
 =?utf-8?B?ZVhpQ1VVY2Z2RmpONGZ3RS8wNTlnbWpSbGs2aGtZbzZBY3hRYURid3hmS2hi?=
 =?utf-8?B?Z0U1ZVNweXRRanFEYTAweHZwQmV3eTV4SkZHWFJJeXZVNHhtK3BhWE1jOStp?=
 =?utf-8?B?UVQyazlKYTYxWEhla1IwZmRvQmhXcnNPSk11am84VjVVK243SllWQXVUczdk?=
 =?utf-8?B?QmlGa1ZMeW1EcVhiUXpYVWY3akkyZzVFcEZQcmZaWnB1UFh5eDhHeHZqSkFi?=
 =?utf-8?B?ekZBNWVtd0cvUzMwUEEzUHNmVC9ST1RqanNqdnp5SGgyS0QzVTBqOWt2UXMz?=
 =?utf-8?B?M2NoK3llcWhpV09heEcxald4YUxhZ1pscDhVNlNPQjB3Z0duOEd6Nmc3dFZM?=
 =?utf-8?B?NmVyWnRxUS9LU0NwMHhqOExxVm10OUJNU1diTDhvLzlJUVBmK0szVmhMcklL?=
 =?utf-8?B?YWtFL29pei9yY29jdDJESXYyK3prNXNqblpJcHFCdDhkb3A2am15WjlGaTFr?=
 =?utf-8?B?Y0xScERyQStndzNZZS9KREZkNXJVbFUvOW1EN3NQbHlhelUreFdJbmxjVTVH?=
 =?utf-8?B?UmQxaWJ6U3IyR1Z3UVBGK2VHc0dGdlFWalBnNzRXMEp3NzRTVktNbXFrY0tl?=
 =?utf-8?B?KzZFOXRzTDE3ekJ2YktGaGdiWDNPbzg0bHR0czdGcHJpbkw5K2FoMHF4RXhV?=
 =?utf-8?B?TWpWTWU0WFg5MmJNN2pncWRsWkV1eFJwbzlFMUs1OWpoV21icUJNdlNFazFu?=
 =?utf-8?B?ZnFVK0wvVkxacXdKN2VHZ1BxZytOZUxqNUY0OWRNZFRZTGpML3lTUDFzcEJo?=
 =?utf-8?B?YkZ5TXovbzFhQVA1aXJhL3QrTWxIVldGclJzRC9PckplRnE1NTE5K2FQcGN2?=
 =?utf-8?B?dk5JME9majVwbHMwUkt5SUw3aGxqVFp6ZzB1NWIzVVRpM1llend3Y2tZbGxn?=
 =?utf-8?B?L3JDT0ZyczlSUUFqRnExekJobDErUmp4OS8zS2V1WE0xWW5KNVpVMEE4eGpp?=
 =?utf-8?B?MTdxeW1zSEVWamYxRmlPNzBQa0taaUxabVFWVFliZENJR3Izd3VOZjNpcSsr?=
 =?utf-8?B?SDAzNFI2K1lOYzdxeXdERW00ZmpSZ3h0MUt5dnpjSDBsc2paOHI3dThaRERt?=
 =?utf-8?B?WXJ1YitVVHlSRXFNRS9reUZzSHNZQ1N5TUloUE1wRzBOMURJL0d6R0dqejhv?=
 =?utf-8?B?WEQxaVhvbTExWXBoUWpKeDJzMjNpVXJLYVhoV2cyd2lNL2R1T3JJSzdmVVZB?=
 =?utf-8?B?cmlqcVMvRHo0amZnaXFZYndDcTlGSVg1UWJXeWZBcVJJaXRNdUFKVElRbkRY?=
 =?utf-8?B?bFZKYktIa0wrRGl4Vm1FM3ZaYkRDc1N0VTRsWG5hNHpjSFNlalY1M1BleThz?=
 =?utf-8?B?YmVSOE1WNFRGWEpwK2lEY1pyVlBZbVFEd3QwaXVYazFnQlIxQzNYalJKTDlw?=
 =?utf-8?B?enl3VUR3ZlMyM1FQMVAwSjNUS3F1bm1jSkU0NzV6RHJoWmtzRzVmc2lyM0hw?=
 =?utf-8?B?all5b0xQTDkvK08zZi9hQkdtVmZwb3prRUZIeTl1blhCMXFuWG1IKzBDMFZN?=
 =?utf-8?B?YmtYQTBrK1pKUUluL0N5a1VScFFJV2NQMmJoYTZFNURGcTJMREtZVS90ZWU2?=
 =?utf-8?B?VFRseXpYREdSWk8wd3lqNFRnWDV1Yml2OFlmN1B2MHl1V3lFckhkbkI0Y0JV?=
 =?utf-8?B?RXF5M1I0ckpqaVFvT3RkaVc5VTFjYktqSXMrOGg1bkdEMXplRjQyU0EzbWhU?=
 =?utf-8?B?Y0hJTHh6R0l5Vms2dGhxMlVYWEp1bHlFSldLSmRWQXJCbDhsWm1TVG1rZFV4?=
 =?utf-8?B?Zm41MVlDdS9IVDNGSzRZK1p5Nng0L3VyMC8rMkVPVGp3VzN1RE5NR2xVMnhO?=
 =?utf-8?B?bkMwSnY5R2hESVdzM3pCdzdpRnNrbGhJNEFYVTlWd2dUWURENnVrZ1RlZmMz?=
 =?utf-8?B?RG5xNWVoL3dQcnByNFB5NzlwVEZLN24wU1grWU9EcVExdCtXdW1hOVk1aVFG?=
 =?utf-8?B?MW9TcFFNdmlyVkJCVzUrTjFqU0JBYXFGcjJudEE3ckRON3M2RGZqdFpaY1o3?=
 =?utf-8?B?MmM1MkRpdlloRFBDLzBlNTZQd1dxY0ZpQ2Rpc0NUaWhtNkZRWUpBbXZiRW5C?=
 =?utf-8?B?UGN4UVpsbHVUQWoxNm11QlRidUhqYloyMU84T0hXbnlYdllyUVVjVTFqN3Fq?=
 =?utf-8?B?RDNaQURiVi8raDFtQlNyeHNVVmN0ZW1oa2UxQUhnNjZITUlkMVo5WERJZ3Zh?=
 =?utf-8?B?TVdGVVdvaFBYZ0F1RDloeGF5cFRBb05EUkp2dTIxTE5ML29oVHFKcFVsaC9Q?=
 =?utf-8?Q?qKlnRrcJpzl6lq9lBy?=
X-Exchange-RoutingPolicyChecked:
	dCP4joyUtXZXjWllmyYs+XLDUHkAWdJ1va+564TyAuGZalO3HO31xRs0pcpwlWibnj8bAMTVCZgaLWCDgYIQeLIyXLMy9invjYj9hukQ4XRavSc7gi0hLs5PQxhor9DquBNbGMgG+tSHAbvjao9CZCWmQdk1PjbkaCGLU741EnsFXP9ytmIgNVsIubGry+qFatZdrIvsnAdyzr4UpsZsEZVsOi1bJTVuFthcjrVz7gmcIlByUPxN1WrY5ry+SpAx5TxVg+udqLzJAyL5F9VxeZlmuneQPB7iwmOxFH1A0Q2inQ53lXx9h5YQM1aDV2KwAYR548Q6MyQO/LF15J4g2Q==
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: 6d9a416a-5508-48c0-a786-08ded327841c
X-MS-Exchange-CrossTenant-AuthSource: BY3PR06MB8195.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jun 2026 02:06:21.0709
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5h3EVhzeodDI5Wy85QWXB8s6RtuTlYdpSdTetaFgvNSuqY1X/HAbkXqYwjSLW80K
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL4PR06MB9849
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjI2MDAxNCBTYWx0ZWRfX4fvlLY6hhISv
 Gn4BTmqpDZJrcwnuU12+W1YR/8lKsEMb/yEOQelap48Pxawk1/49evpv/r/8GWn8jJggiuRC15w
 BZ2Q2t01jnHENUD8f03h4tbqluHNICY=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjI2MDAxNCBTYWx0ZWRfX0C7N7r/4EUHH
 AWOYaqgdu3qGLrqsRg3x+ZCEoJh2IecWiiFSUep06fe9k2tfKacmIsMAW3Mntr4RbYkXXvFVXrt
 x7ma1FbyzWUdnRuNRgc1LbVaqIslaD1yTAqpp3a8dccXb6yHcp1CiMriXsoSRShckQHZycXf69r
 qHERU+smQMP8HVBHjN7W3f3Q06/VR2tH67qI4eEypn6FzBWnlRRWlnwVL55l3p9xLtuf5Wr9XBx
 gphs8gxV3+hHU9wKvwC8TPbekXcodYkPmojEJDfUK0I95knrNScP/5sNatY9juUzMdQO0cY2cUq
 pbwsCHew2/LcvA8LymaL6FrjuL0nGxOLkbNZSW8OneN7WXJyKxmWSMw2wFDnbrXxn3qBgyARXXs
 xtay6IVeBIqSKRMSWJENrc5Y/bwJvlUpFve4r2lIPpgPxWwDIXMbiW8xcstMvNnerYdBq9k5AHi
 3TXZzOjotSwjnbGhi5w==
X-Proofpoint-GUID: HIJLpvQgbWmPAVHRbw889UyjCDXHRwo0
X-Proofpoint-ORIG-GUID: HIJLpvQgbWmPAVHRbw889UyjCDXHRwo0
X-Authority-Analysis: v=2.4 cv=e742j6p/ c=1 sm=1 tr=0 ts=6a3dde9f cx=c_pps
 a=n4nuXP1CjkzMzYAVBY1Wsg==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=lre9DRYkaIEA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=ZyELlZqCvD1aXIDzc3I-:22 a=CxpZxRQdNkMM_dZfZm55:22
 a=T_1RSPNhEwju1peiKAEA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
X-Wisc_ValidFrom: true
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-25_03,2026-06-24_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 spamscore=0 priorityscore=1501
 lowpriorityscore=0 adultscore=0 clxscore=1011 malwarescore=0 bulkscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2606260014
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
	FORGED_RECIPIENTS(0.00)[m:aaron.chantrill@dottywood.org,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-1642-lists,speakup=lfdr.de];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_SENDER(0.00)[jheim@math.wisc.edu,speakup@linux-speakup.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	SUBJECT_ENDS_EXCLAIM(0.00)[];
	DKIM_TRACE(0.00)[math.wisc.edu:+];
	R_SPF_NA(0.00)[no SPF record];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[math.wisc.edu:dkim,math.wisc.edu:mid,math.wisc.edu:from_mime];
	FROM_NEQ_ENVFROM(0.00)[jheim@math.wisc.edu,speakup@linux-speakup.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:5645, ipnet:206.248.128.0/18, country:CA];
	TAGGED_RCPT(0.00)[speakup];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9C9C66C9A60

I am using Debian stable (trixie).

I believe the trick to getting Speechd Up working with Speech Dispatcher 
is to configure the system settings and run Speech Dispatcher as a 
daemon. You should make sure Speech Dispatcher is working before trying 
to use it with speechD Up.

I've never tried getting Speech Dispatcher working with Pipewire. I've 
never had any reason to do that. If you just want to use Speakup, I'd 
recommend configuring Speech Dispatcher with the libao sound system, not 
even alsa. I  understand that you may have your own reasons for using 
Pipewire but that's going to make it more diffficult to get Speechd Up 
working. And it is beyond my experience.

If you really need to use Pipewire for some reason, the first thing I 
recommend that you do  is to make sure the root user has access to 
Pipewire. Use the espeak-ng or voxin-say commands to check that root can 
use the audio system. Once you get that working, configure Speech 
Dispatcher via spd-conf. Create a systems config and enable the Speech 
Dispatcherr Daemon. Then test it with spd-say. If you can get spd-say to 
work, then it's dollars to donuts that Speechd Up will work.


On 6/25/26 8:30 PM, Aaron Chantrill wrote:
> On 6/22/26 23:45, John G. Heim wrote:
>> Not much mention of speechd-up on this list over the years. Turns out 
>> it's pretty nice. While working on rewriting the docs for Speakup, I 
>> gave speechd-up a try and it works great. I'm  using that Voxin 
>> default voice, Eloquence, at the command line. You can't do that with 
>> espeakup.
>>
>> Speechd-up might be the way to go in  the future because voices that 
>> are not resource hogs and are more human sounding are coming. Well, 
>> they already exist except I don't know how to get them to work with 
>> Speech Dispatcher. AFAIK, nobody  does. Like, I have a license for 
>> Samantha but darned if I can get it to work with Speech Dispatcher.
>>
>> Anyway, once that kind of thing gets worked out, you'll be able to 
>> have human sounding voices at the Linux command line.
>>
> I've been trying to get speechd-up to work on Debian Bookworm and 
> never was able to. I have the log level set to 5 but the only message 
> I ever get is "Speechd-speakup starts!" I understand that this is 
> because it is trying to attach to my root speech-dispatcher 
> (/var/run/speech-dispatcher/speechd.sock) while "sudo spd-say 'Hello'" 
> just hangs for some reason (the speech-dispatcher log reports that the 
> espeak-ng module initialized successfully, and the espeak-ng.log file 
> is empty). I was able to get the command line working with 
> speech-dispatcher and piper voices (my current favorites) using 
> Fenrir. The main problem with that being that it does not start until 
> pretty late in the system startup process, so it's not much help with 
> bootup issues.
>
> If you have the time, I'd love to know what distro you are using and 
> how your audio system is set up. My goal is to use my user's 
> speech-dispatcher so I can use my instance of pipewire to play the 
> voice audio.
>
>

