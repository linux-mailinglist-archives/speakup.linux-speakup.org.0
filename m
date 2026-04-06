Return-Path: <speakup+bounces-1580-lists+speakup=lfdr.de@linux-speakup.org>
Delivered-To: lists+speakup@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cMllBmTV02nGmgcAu9opvQ
	(envelope-from <speakup+bounces-1580-lists+speakup=lfdr.de@linux-speakup.org>)
	for <lists+speakup@lfdr.de>; Mon, 06 Apr 2026 17:46:44 +0200
X-Original-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 6A00A3A4DE7
	for <lists+speakup@lfdr.de>; Mon, 06 Apr 2026 17:46:42 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=math.wisc.edu header.i=@math.wisc.edu header.a=rsa-sha256 header.s=selector2 header.b=D1OW7yAv;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 72383382617; Mon, 06 Apr 2026 11:46:42 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 484B4381833
	for <lists+speakup@lfdr.de>; Mon, 06 Apr 2026 11:46:42 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id DCFC0381874; Mon, 06 Apr 2026 11:46:35 -0400 (EDT)
Received: from mx0a-007b0c01.pphosted.com (mx0a-007b0c01.pphosted.com [205.220.165.71])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 8B552381833
	for <speakup@linux-speakup.org>; Mon, 06 Apr 2026 11:46:35 -0400 (EDT)
Received: from pps.filterd (m0316039.ppops.net [127.0.0.1])
	by mx0a-007b0c01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 636FTl943730509;
	Mon, 6 Apr 2026 10:46:18 -0500
Received: from ch5pr02cu005.outbound.protection.outlook.com (mail-northcentralusazon11012034.outbound.protection.outlook.com [40.107.200.34])
	by mx0a-007b0c01.pphosted.com (PPS) with ESMTPS id 4dcfha861n-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Mon, 06 Apr 2026 10:46:17 -0500 (CDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fgdy5WdfGXgrtAzcCPpnGoIA6aHja438Gow1HvrmCCWe/FfxXTaDxB9jmaXE4MMTaLTBx3BBTL19PfB7cBuTSuirnRA7P2ihSwMZubGAe+GBusAQYFp5LZmxdpZ+YzRxv4Cd3bt+v/72saYguOOM+YbYfZCfj/mHZGT5YAgeyLJttl4jV7AxbLHYHZfwNhkzcxkMEjfhvT97GUKELRtaLOO+oq+/c/vKSj0oDEc6m616+x3j+Mzgkq8E/ivXAzYTjiG6v+MeTydYP7KmYY0TUD2RtQ1temjHNVOTf17OPf2jt7KN0we0IOE9MczDDZPohnLfM3GMW7i8O0YlJ/8N3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Qi+MlLvB0+5dYGPQNm1cXQzNY7DiISJV7H2CiUW+24g=;
 b=HILtiKL6gb4cFe4cowUvJf4ntm8Vbq/PBVVyYxN5FTdX/krX1OulqOiqqsI+y+COCyA3OtGGqO+NKWb3X13hgRWKLnKsdUaZt0LJMdi6p4ZCsn0Gc95FLMbsFOkOQxrPCtIhHrXhbZvgDfDPdZeMK4zIXCjxMdHa+ZkHMjVSnKNZITrLILQsyELisEfEWlfW+EnSfpq4QpLmGkwfAq0D6M9Z9srsuoUyccJwR9xi3p/qKcshP4ur5Xq7ZcJTGMOiw7B01rYJorgqUFcD/UhdzCFu7/tELG/1zgYjvv9KeQgRvISI6Bmt5zdQjXoonxGP0FCeLKGYjCy0N0271eZmWg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none
 header.from=math.wisc.edu; dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=math.wisc.edu;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Qi+MlLvB0+5dYGPQNm1cXQzNY7DiISJV7H2CiUW+24g=;
 b=D1OW7yAvcnFK65Tc0UZwJguo6wo/pL9lLBbCYj3XiFTpoEo9BaiimhEVhwQxHqRbnliY/5Ahh9IShZj+N/W4DObKN8AOK8SrFZzcam59zvWYm55KTGlfEal5YuQevidJdyBGWKcwZ7v8kxSll+KgNf+Wm2dYjOXlIeAIoaFkXqcS51uOJJgkdI0tktXsRdAKFU4DgF1NvsJ83eSUuGXxSPF/MPEXlszO7w3hauTsjXBHIuVviMdNdtCe+Apnno5HEINNMRReIIbh9IMezFUTqTAhBtzuFgnhRbuVX7OxMVYnRI823edKrqof6jqlm0/2lv2iJ4uo+JJ+RZHw5tuf6Q==
Received: from BY3PR06MB8195.namprd06.prod.outlook.com (2603:10b6:a03:3ce::19)
 by BY1PR06MB10284.namprd06.prod.outlook.com (2603:10b6:a03:5bf::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.17; Mon, 6 Apr
 2026 15:46:16 +0000
Received: from BY3PR06MB8195.namprd06.prod.outlook.com
 ([fe80::a7ad:fb62:4389:fd8b]) by BY3PR06MB8195.namprd06.prod.outlook.com
 ([fe80::a7ad:fb62:4389:fd8b%4]) with mapi id 15.20.9769.017; Mon, 6 Apr 2026
 15:46:16 +0000
Message-ID: <f36b49fb-7135-49f1-9717-4982de1c6293@math.wisc.edu>
Date: Mon, 6 Apr 2026 10:46:14 -0500
User-Agent: Mozilla Thunderbird
Subject: Re: speechd-up
To: Kirk Reiser <kirk@reisers.ca>, speakup@linux-speakup.org
References: <550a035b-15a7-76c9-8cb0-169257a24146@reisers.ca>
Content-Language: en-US
From: "John G. Heim" <jheim@math.wisc.edu>
In-Reply-To: <550a035b-15a7-76c9-8cb0-169257a24146@reisers.ca>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: CH0P220CA0008.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:610:ef::6) To BY3PR06MB8195.namprd06.prod.outlook.com
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
X-MS-TrafficTypeDiagnostic: BY3PR06MB8195:EE_|BY1PR06MB10284:EE_
X-MS-Office365-Filtering-Correlation-Id: dd298058-b775-49f9-4778-08de93f3a335
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|366016|41320700013|376014|1800799024|786006|22082099003|56012099003|18002099003;
X-Microsoft-Antispam-Message-Info:
	oDsi39x9GBy77XJuCw961iAGwDlR/PWb+b3VuUgxd9+Bfqp3MXb/tjQEvV92VSfGgXyNAJJYUhuIUMocmGi/rt4ShMpFYFF6RrcPgXxjq6qijRPJKdMca662iUVthGJ2wnIhwz6s8ydofEpoNG9cn/L6VaKHHvp5E7nFtD3Fju0CdzEVmD7DmbL+lUAemwxalUp8/uRa5AwP0ml+vS2NLfuOHjor7AwJxTcFpdWcYTYNgTdHuZJrIWMqDct5XVFJdFeCR+PWtZmwcm4sXhD8pe1POSjJ01DiLJ+S22pXtFBhaOLTj8i0EUZWaXG30NK0UHyj9Dx4zkBf71X+P6ovB8NqOVoiPyZdkK9zk7wjqF3uNiJpIfaWXlxGSHy0MrRifSJCa9KjnOWWY9qvBnZsWQqiNRvLMhtnle8x9LRN9FTYIoP7LpBZ4LLGmN6Su/Rx9xA669pMwkyCVRtX1A6oU2x931fx0D//9Ue61KQ2j1WhE3j6ifIS5I6fMNPjS9yjxKBHs8th4ZzzH/hfpprHBvUG4IXZLtwhrpjDiAGKODvEEtPdBY/+MaU7D9m1qXFIWY29elL7C4mQHOwrm9pLjDBTTZ2ivyRZh1bCho5NyIvAK14lqJI9i2GBapRdB99OVTPmgP16O8FaBZbxZJ24tW6M7HB4wp1GzjzNX5AeyvXVuyVfi315pfriUHGQT1i2
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY3PR06MB8195.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(41320700013)(376014)(1800799024)(786006)(22082099003)(56012099003)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?Qk1lNjF4c0R6SUtzNmthMWNTZ1Q5RXRLSDBDekFJMjBOMXJxUHZjeDlvL0p1?=
 =?utf-8?B?Z2gyY3U3VEpjdW1LN0VOZmMzTU9UZ3dqOW9HM0pDOXRRNkZMU0JtVFZpT1Z5?=
 =?utf-8?B?UmJkcDhyTmNXUDdmS25FVVVuMXMzc3hxZmJRNEsrVWljczdtT1pzVHpyTmIr?=
 =?utf-8?B?ejlGcnBEZzlhQVpxd1dqQmhPakdRR1hMNjE3aW5zc0VrQWRRcGpkTmx1Y1Aw?=
 =?utf-8?B?SStpdnRqeVYzZXYxVEloV2gvTnRreVh1bUw2U3FLNU84VkhyYWF1c0hWV2Jj?=
 =?utf-8?B?SHlNNTRYSGxaOEl1RitVcEZjdjNsNFVxQnJrUVdldmNZMlFGZzYySFdGN2Vp?=
 =?utf-8?B?N3EvbFR1VDlwS2JQWkNFalpwODhTaVFsYVB6T1BIZlNBV0FQa0Z4QjJtVDdv?=
 =?utf-8?B?elNXSlZIOU9TNXBHZGRFbUF4eXZKcFVTTEJMWFlVUkc3R29IOEdla2dsTU1r?=
 =?utf-8?B?WjlTMlY4R0RTZExuejFNSnhaS3dnY1NQNUdzN3FxQ2ZLaUFXUGRzSHh2MkFi?=
 =?utf-8?B?RVBGRGRYdFJYWGFUeW91N3dUeDVGUDVHSUJiOENTM01yd0VzUi9zblhHS0xQ?=
 =?utf-8?B?NHN1Vm1JU1JXL3hsQ09PcDJmMXU4RXY0WHJTRHYwRms3TWZBZ1U0aklqZFZL?=
 =?utf-8?B?NFNPdXdUZmFEWnJtdmhYSEc2bTRQTVpjWlF6Tm9TSlhydDUyTEFTUC8yZ3Z0?=
 =?utf-8?B?a2JvdlJydkRrUjk0bW85T0dhajFJUGVnVnVvakxHSUlFWXorQ2NYOWZacm5W?=
 =?utf-8?B?cnMrVWNLOFBSMmhUZkdBNEtPa1RYd0tydDdOL1dvUE1aVk5hOC9QQWRLcEk5?=
 =?utf-8?B?aFZ0Z20zUlRHelFTSm94UEJScGNGWTlLd29uSjJmdHNGbHFPSm9KdjdBWG1R?=
 =?utf-8?B?VlM0MDE0T1Y5SnQyT0xlQUlFMngwNmhqTDFydVFlakNuUERwYnJlbXFDUmpP?=
 =?utf-8?B?azREcXVQSXkxSnVCQysvVXFZN2IyWjZWdnFBemdoS2Rja1F3OFhMZVhHZVRj?=
 =?utf-8?B?TlB4UEF6OUxuZUZyZEIvSER0K3lpVTg4NlhHQm9hV1JXVmF5eTg4aWtqK1ho?=
 =?utf-8?B?MW00SDNoT21ZbWp0OVdIRmp3VFBXNTQ0c29PWVdsVmRYQnI4UWRBMDlNRUFv?=
 =?utf-8?B?TXFqQnh2M3EzTVpVVGQ2K05JQnZQTE53S0dRdXJNVHAyS2pOVzgwSVJ3akI1?=
 =?utf-8?B?M0swZmVDMWtFTjdMZ1lQM3h0ZSswQnl1UVN2ZmFETFVXUUNBR3lUaFgrdld1?=
 =?utf-8?B?eWFxNFJ1bVE0a1h4NmZiaitna1NLM21CWFpNeGt3RnNVQjBrYTJEQktrb0ZR?=
 =?utf-8?B?N2JJYjZ6bTAvc1VBcENIU2tzMnp6Vi82NHZoVGU3UnhqR01hS2xPVlliSEtN?=
 =?utf-8?B?TVZxcWhPL2NncHNFYVB5R2xqTWljS3kyVjdCb0t6bU0xTUhPMjdwWC9PcmJ2?=
 =?utf-8?B?NmNCc3RRVlBrRDZKL3ppc3dUbVU2K1k0R1h2ZUVpSzV3VHlhVzhlNWJPbmVC?=
 =?utf-8?B?ZkR0cEJUbFI5SEdFQ25acGFmdXpPb25nVTJack5hY0NLcFd5cCtIalhqb2c4?=
 =?utf-8?B?ZExrTTBvdy9lTXFsQWQvNkNaZ2RVSXpYcFVJZVYvYldHblBxT2NGUlRxYlA2?=
 =?utf-8?B?cm1UMzhObnFQYWhxY3Z2VjdWOHNMQXp4RVQyOUN1c2YxU24wQk9ydlQ0NGNR?=
 =?utf-8?B?Yy9GdEdFNEdEa0VNYUswTW8rUlVub3hIVDhrS2tKQmxIUXYyQ2RnQlliR1Nv?=
 =?utf-8?B?Ty9yTFBHbzcrRVdjZDdTV1cyK3A2WThIZFRRNnU2cjhPUFNHZGRLWmhlRmE1?=
 =?utf-8?B?cXVvVy9QdHJVYzYzWnY4S0tJeWhXWjl1VEdsZ1FKekc4emorS1o0OGVUM20y?=
 =?utf-8?B?L2N0SG5lWkpnd05GV0hyY3oyR0ppRHc3eVpNaTYxckNnSk5uY3lTV0JJSnUx?=
 =?utf-8?B?RXVJS0RCc2ppWENlMEYzdXdjOFBueU55QTUyQ3lzOUtibTBOcnRqUTVnT0do?=
 =?utf-8?B?WkFxUjFhcG9HSG9MVi94QjRiVGw2dWUxblF1SEdseUhaV3RXSTN3TzFZZUtp?=
 =?utf-8?B?UVJ6Mzd3S0VQY1g4Q0xSNzlJV0dmUXUwbzNIQ2h6ZGJEQTZGNUJKdXkyajZK?=
 =?utf-8?B?UmVJeVpZc0FTalQyUm1NYWhqMnN0bklGOUhQdldrSzZtK0NveERFTk53czd5?=
 =?utf-8?B?SW5WeFcrN0xvbTBZRCt0cGlNY1FaNlYrNHVtbUlqVHh1UjdsNStLMUl3Y1NH?=
 =?utf-8?B?K1BHYlYwL1hBRStaNmY2aVByV004b0lYSjNmY2pxZkgyUTB3cGk4QlpBdHZU?=
 =?utf-8?Q?IvyF38LWeQPyxlj/PS?=
X-Exchange-RoutingPolicyChecked:
	B5lujKj7kpd/Zrdfb9IJ1dxRnxyGMNFEqn6d2qtuDM+8OWok+I43L8qi/cSDTTPB2fxNSurAenukoaJcBSQ55YI7dJUrRiALo20CmtfOiaG4g69MMdKPoO5FHLoWnWEhtBc9Q3JZPGyf28hIedGrgbqlL9l25Wk3suLUz0X/3ezXK9v3w5MNwnMzyVV8K3P1IPGMeR0Ze7bjnovzuB894ybZ+g8CNCC+CIVmli8TVRPL/qfTfmZFUm4KubSFTvj34V/iEMlHriszsi3Ur922u35p2jIilz5bLe7jKjqLLtw9huy20t7jW8VngLN2djBwMqeWC2sQYCFswTWaiH7fVA==
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: dd298058-b775-49f9-4778-08de93f3a335
X-MS-Exchange-CrossTenant-AuthSource: BY3PR06MB8195.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Apr 2026 15:46:16.0042
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: z6CejYvL+b8uVTIWCtnUbBJuBJ2ZykpaZqUFlqgEK/ERrp3D4tBcCBWRBIxU6+Nj
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR06MB10284
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDA2MDE1NSBTYWx0ZWRfX20p1MjzPr+pz
 Zpuxwxj1D6w9eltUUez8OK4s2eF89gzImnvcK4aPwQesXVuFDHUjBp0IFDb94ELw5MWOp9d6SEu
 9ZjEd0Ah8BDDoQ7uN8DaS9kM3BGOjVCTbRzLhm9tYOUNclsSt7nz/hAVYMrXCJwXEG9pqkdtW3p
 6pEgjixO2GwHV8ZMWK7p3DiuFQh4nWkfEBNBfvY3YnTR4Keod+RJjN3sRi96ImlcK0gG5fYMw7k
 XkP56kNOtiH80RN4u2vA1vU8IMqIT+Xta/iVfI/YhXK5r3YXZec0qPOsIb4Oey5x6GuYYw6owL8
 8mXmTIDpOSSDvYrfbu2psNb7c+XnyDZ+ijxyi90df5csdN4ICLbwN+h7oP2EJi5thAj3sDia6L3
 EVoQiMn3L0y5ak7cZLbfXbrnu19bm0fe05s9TbjBTt9DEgOJLXUbRrL96pkf0mY6NQryvDnUdds
 qO+r8zy17oSI2h093eA==
X-Proofpoint-ORIG-GUID: Pc7Sj5aOd74R9KbL9w9d76H2KkkJoIJj
X-Authority-Analysis: v=2.4 cv=fLs0HJae c=1 sm=1 tr=0 ts=69d3d549 cx=c_pps
 a=9AcDkMntNQwiSFi2uhiI7g==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=A5OVakUREuEA:10 a=lre9DRYkaIEA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=ZyELlZqCvD1aXIDzc3I-:22 a=eq2kN7DOR4gdPMKheIxe:22
 a=qPKtzgQbAAAA:8 a=yEF17Ebo39hWbLF2mD4A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=OTAqJWGB1laLS8RTg9aS:22
X-Proofpoint-GUID: Pc7Sj5aOd74R9KbL9w9d76H2KkkJoIJj
X-Wisc_ValidFrom: true
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-06_03,2026-04-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 lowpriorityscore=0 malwarescore=0
 suspectscore=0 phishscore=0 impostorscore=0 clxscore=1015 adultscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2603050001
 definitions=main-2604060155
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5
X-Spamd-Result: default: False [-1.89 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[math.wisc.edu,quarantine];
	R_DKIM_ALLOW(-0.20)[math.wisc.edu:s=selector2];
	MAILLIST(-0.18)[generic];
	RCVD_NO_TLS_LAST(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[math.wisc.edu:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWO(0.00)[2];
	TAGGED_FROM(0.00)[bounces-1580-lists,speakup=lfdr.de];
	R_SPF_NA(0.00)[no SPF record];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[math.wisc.edu:dkim,math.wisc.edu:mid];
	FROM_NEQ_ENVFROM(0.00)[jheim@math.wisc.edu,speakup@linux-speakup.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:5645, ipnet:206.248.128.0/18, country:CA];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[speakup];
	MID_RHS_MATCH_FROM(0.00)[];
	REDIRECTOR_URL(0.00)[urldefense.com];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 6A00A3A4DE7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

When I am done rewriting the docs, I can take over maintenance of 
speechd-up.

PS: Too bad I didn't retire sooner, this is fun.



On 4/6/26 10:02 AM, Kirk Reiser wrote:
> Hello folks: Thanks to Brandon McGinty who hunted down Chris Brannon's
> latest work on speechd-up here is the most recent archive.
>
> https://urldefense.com/v3/__https://linux-speakup.org/speechd-up-ng.zip__;!!Mak6IKo!PYJWp05y1h-RWI_7WDoFTjvJdf42IvPDXwsohnJaICIk0yu3yr5LcwwC8jb3NKXgoakYvxnWHIfgFzNJ$ 
>
> Hopefully this will be useful to folks that would like bridging
> speakup with speech-dispatcher.
>
> Enjoy!
>
>   Kirk
>
>

