Return-Path: <speakup+bounces-1493-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 44AE3CEA6B3
	for <lists+speakup@lfdr.de>; Tue, 30 Dec 2025 19:09:43 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=math.wisc.edu header.i=@math.wisc.edu header.a=rsa-sha256 header.s=selector2 header.b=OGsgF02v;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id BAB3C381853; Tue, 30 Dec 2025 13:09:42 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 98492381847
	for <lists+speakup@lfdr.de>; Tue, 30 Dec 2025 13:09:42 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 64866381848; Tue, 30 Dec 2025 13:09:36 -0500 (EST)
Received: from mx0a-007b0c01.pphosted.com (mx0a-007b0c01.pphosted.com [205.220.165.71])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 9517C3817CE
	for <speakup@linux-speakup.org>; Tue, 30 Dec 2025 13:09:35 -0500 (EST)
Received: from pps.filterd (m0316039.ppops.net [127.0.0.1])
	by mx0a-007b0c01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BUGjlf6734970;
	Tue, 30 Dec 2025 12:09:30 -0600
Received: from cy3pr05cu001.outbound.protection.outlook.com (mail-westcentralusazon11013046.outbound.protection.outlook.com [40.93.201.46])
	by mx0a-007b0c01.pphosted.com (PPS) with ESMTPS id 4bcjhx8f8q-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Tue, 30 Dec 2025 12:09:30 -0600 (CST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QtZC65nDy7J0gMRju4J8a7bbaMWzb3ENBzx+NHtxxsnZYLz4ap+r4ZBzzPmm3IFAZI3UAMTi7wqAntusYjd6GafR3x4gdQKWCMc1GP4P6qEwDflLiHUA5fBiO9mu7WYUuYFitCq7MU6ndb5gYdVUW7xMNKX6taVI29JsVyEKDRqTQjz9zqr5i290kOUeqibOOvtE1MqY5mhU6IgsKt8BmD3ZNE8e65AQHd+WhwIFM38UX/oCOjEZswcgYYA99ai+x0aL/k0BT5lmD6DJ5Ny58qzjoab+X45T6kgpSZzOfO+yKqyd3ANHEPt8eK4RZ/hxDpDIipmktUGbonD9maEuow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+qkawtJQijReK7GERgbkVUhoth7w39gvtZ1B/8/zoH4=;
 b=FnNeDibmZ88eblzZhCuQbSG04tObJBYRvY9F1y59JLQWqgNyzgA7iwH8TXuD/GvUMgpJAO4RoRdsTY8VeXsmq5R3bjZlElIphN2sjNtJXmIJu2ahvb8VmKSaeARq+sHLWc3CjbcbncmfHc1yZhKfNFPz4pbNp9GebMOjz7LCwiMtskz1dMZk1d9wpwEtFG1fzDeHbMsY1/ZiHOfmrvd/slimSVhS4fkyxUFnTKkpp4p83xcQiTu6n9PkGiPjEXnV7H3GF7IR555FUBGLBAL4JLcz0NgkWNyBZgndFDD7O2ik1TjYx1IN3nU9k5DjdqJsLCxtp6zV+RR6Vz8Wv9C9gw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none
 header.from=math.wisc.edu; dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=math.wisc.edu;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+qkawtJQijReK7GERgbkVUhoth7w39gvtZ1B/8/zoH4=;
 b=OGsgF02vOtHVs6a/Ajx4VFGVSHXPXNcQrIRaZIsr8hAKkcMq9w1KL/wX1Gamg6u3M2qQE5UEhNmTNdLgg4qU4as538E1TBiYBkOWsMXfOmvo0BrQ0lRYDaOqSLDkeGKnxjej7QqYWVZdppRTIp643Vc4oDMYSyyRWb2Vu0/MG0jFgexJL10cTwoMjZQQxCGeLdjo2z+nFLixO+eoAao87+UCmryI//xv5gnPZAv1I5mVQnAO8OBi7m8Hks/bVGj2YC1FdrK271ZjEsTSemlIPmH9ZJgt+R06FyEGcpvf2qfBaXPLvsHvrxxmqbFMZKgNg5RS6YjD3g6Gba0c7YSEng==
Received: from BY3PR06MB8195.namprd06.prod.outlook.com (2603:10b6:a03:3ce::19)
 by DM4PR06MB8886.namprd06.prod.outlook.com (2603:10b6:8:53::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9478.4; Tue, 30 Dec
 2025 18:09:29 +0000
Received: from BY3PR06MB8195.namprd06.prod.outlook.com
 ([fe80::a7ad:fb62:4389:fd8b]) by BY3PR06MB8195.namprd06.prod.outlook.com
 ([fe80::a7ad:fb62:4389:fd8b%5]) with mapi id 15.20.9456.013; Tue, 30 Dec 2025
 18:09:29 +0000
Message-ID: <50994542-c50d-40b8-bd5b-1014a8f76024@math.wisc.edu>
Date: Tue, 30 Dec 2025 12:09:27 -0600
User-Agent: Mozilla Thunderbird
Subject: Re: Building a hardware speech synth with a Raspberry Pi
To: "Terry D. Cudney" <terry@cudneys.ca>
Cc: speakup@linux-speakup.org
References: <4f9075a8-0252-46f9-8594-1dab9286474f@math.wisc.edu>
 <4946952f-7980-4979-bb63-745750da47dd@math.wisc.edu>
 <aVQM_dupS6eRZSU5@cudneys.ca>
Content-Language: en-US
From: "John G. Heim" <jheim@math.wisc.edu>
In-Reply-To: <aVQM_dupS6eRZSU5@cudneys.ca>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: CH0PR03CA0004.namprd03.prod.outlook.com
 (2603:10b6:610:b0::9) To BY3PR06MB8195.namprd06.prod.outlook.com
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
X-MS-TrafficTypeDiagnostic: BY3PR06MB8195:EE_|DM4PR06MB8886:EE_
X-MS-Office365-Filtering-Correlation-Id: 1a4c4bd9-6c25-47cd-a309-08de47ce9324
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|41320700013|1800799024|786006|366016;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?UFZNWUZEOU1FN1YrSXpwUnFSWnJFNDJmc2xZRi9tRVNqZGs1aWttSTdRTWdV?=
 =?utf-8?B?ZWw4Q3pRUjlYNWlPUHUzRWhSbkFNV2pBek5neDMvWUlNN2diRlBTeHRpVXBI?=
 =?utf-8?B?RlcyQ1JzMG1NLytIQkN1cnZmOEV5RjczK1p2bVVNRWt3NjJjazNvWXFmUzZL?=
 =?utf-8?B?cThOM1BMMnBQYjVCY0Z4a0lHaFVtN1NOUTBRbjVIQ0o0ZDd6NEI5L3RZMmsz?=
 =?utf-8?B?cWp2elpqTXZlTGhuNlZBUE13ZGJMcUI4bDVHRURla2dvWFlrRHdZWVJBQ1I5?=
 =?utf-8?B?MC9lUDk5MzVCelNvQkc4UTJhRFZvL3A5Y2p4ckF5dEZ4WFRLQzdHZm5NT2p2?=
 =?utf-8?B?VDRjSE1KamIvY084NHVna2J1RjhCcVhjM3dBNzlXakZOUEl3Y1pGL0pTUHhL?=
 =?utf-8?B?MU41MmpDQlh4b1FEM3JpR1ZxVDZpYmt0aXRGaWdGdFdKY1pPTEZneDRzbkcy?=
 =?utf-8?B?dGlHbEtONjNJSlE0Zk5XT2lKU2N4d3dNSWM3UkI3cU4vODgxNWhFR2ZjQXAw?=
 =?utf-8?B?eDRjUlpSWXpPV1FiZWhicFlHUyt4L1pJK2hGb2dFZlB1MHF4NFNIMGxjV3V0?=
 =?utf-8?B?OERObmFFY2U3ZE5yU0FmcldjN1kzZFZ0UnRSNjAvc3dDWlVKNDVzeDlKa0Y1?=
 =?utf-8?B?RGVBY082TGhIZyszTVFmdHRhTHlKdEQ4K2c5c0xuaGdTd2JwTWxMdFhSOFcw?=
 =?utf-8?B?dnkvaU5rejFjLzVLek5zVzYzWXhudE9reXRjaEVDRHhZa0JrNHNKZStJYTA4?=
 =?utf-8?B?dWJINTM0WXpQQlZ5OTVjRkQxRUo4bEp4b25FM2JjVXdDUzZJa1h6dUJESFZM?=
 =?utf-8?B?ZTVqalBYQ0VncEVKRkVJZGkrRUlsWnlGbUtEQTA3UjVUdWttTlpVWmI0cjZG?=
 =?utf-8?B?N0VWL0RTb3I2WlNwVzloT0lVV3pnLzVVS3p3UTFwdWIwSU9kS0ZOVkUzOER2?=
 =?utf-8?B?MWthblNkMXplMWZWaDNIaURmaDEvdzREeEdhYTZ3K3pxS0dkSHFRVDE0NmJS?=
 =?utf-8?B?RytIaVZFRXRWRmFFa0dVaVI0ckt2c1BJU2ptbFpyaUN1bUJyd25rWjVJL3lP?=
 =?utf-8?B?b2NTU2ttRnpOdlFFZ3pIY3ViZjNZNXVFWW03d29QQVNtVnZsZnBLdC9KRWho?=
 =?utf-8?B?N3pkU0xpOEluQm1nQXRkcmdOSVZZT3ExajhNOTVYL1h5Q0ZubTNZSC9XZTZ1?=
 =?utf-8?B?Qy85L2tXcTJmb3BzWjZoWXA4dGhRQjVtS3JTc2owN2IxZ1Mwbzl0Z0pWZlpx?=
 =?utf-8?B?M2EweTlKYkpwTnJ3azF6ZXdWWHljTCtrSUVRWFNETFBoYXNnN1I3YmNFWkZM?=
 =?utf-8?B?SEFld1Z2cTRWOFloWXdoRW4wSE1FRmlPRW03L2dmY3VwZWdTT0hKNXY3b1pQ?=
 =?utf-8?B?Y0l3eTlzWXo0eExkZTFwUDlXZ0Z1OGp1TGViaWJrWmZtZkFmRlN4aTRyRlJ6?=
 =?utf-8?B?bXg1REo0TVRqMmxkT2pZTnhmODlJUGgrTUJPeDRENW9nSTYwcElSeDNQWUJi?=
 =?utf-8?B?ckRZVy93SmZ6UHFPKzNGNjAzelV2RUdMSGdkeGpZbWRobzN6eVlHbEowM1Z0?=
 =?utf-8?B?c21NUmRwc21aZUZmMExtelEwaUcyUEFzSDV6Q0VDQWxBTitHckFxcFRGM0t5?=
 =?utf-8?B?eURMZDMxdnZleFFYQ2dYOWVpNlFPVFB6NGxnMG9meDZRRjdQSzRUS0krM1FG?=
 =?utf-8?B?UVd0d0IrcFdTRGxSNjJrcVF1WmZlTENvK3ZqczRQWlhkWkNaalE4WDJMY3Nn?=
 =?utf-8?B?dVR1SFREVGtBaDR0WFpQeVpKd3lUOFV2LzBWcThuekVsSGRpR0E4QjNWQkhY?=
 =?utf-8?B?a2tkSkdHRFpKc1dFaUV5bGRueG9YdGViTWRlRGpPNTc5VHVuQ1VYNC9namVy?=
 =?utf-8?B?VGQrVkhIbnhuRjcvZ1J0LzgwZEFnVkx1Ri9nV1ByRERHNWhya2VnS0xFVits?=
 =?utf-8?Q?97Go+Iw5x3PAAmEiC6Lu1zivVLTv3d4U?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY3PR06MB8195.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(41320700013)(1800799024)(786006)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?VTBhSVE2RHBLT0dEaXhEdDFSWVZHY2hYUmh1eWtJQ2ZoRjlPRXBWNkRTeExm?=
 =?utf-8?B?b0NSdjZicGtjb20vVGtxekU5OFhHV0tyRjNFT1RSdTdwVFFoTkVqTVNJTjk0?=
 =?utf-8?B?MVlQZ2ZuU1pFMHVxeEptQVk3UHlaRENwcTNmUFROSG9Fb2R1QXFrTGs3Ulps?=
 =?utf-8?B?ckhMZ3hDcFB1WVRVNjY5c1hvVHVlUXpwaWloc21jRmFqL1UxQzBlb1JaYjJs?=
 =?utf-8?B?cHJMVEVlSERMTTN4RW5zbVRBejJtTEcreTMya3ROVDl1WVZsS0FhRE5sYU5o?=
 =?utf-8?B?b21oUlhTZkhkbEdxOGtvUnpUUldyR0F0YmxUMnpEMmlxVjZxaXhEbkw0R2NY?=
 =?utf-8?B?QVEvekdzVFBnZzhnY3lXT0I2K1FLd1BDckdHT2wveFNzT0l1Q0F1VEJ0M2pn?=
 =?utf-8?B?dzRtZC9ZQVBRQkRhTkNBaGs2L0Q4eHBJUFJtd0ZCa2hCWU9YYzhJdzRhWWYr?=
 =?utf-8?B?TnBDWGp4OHpjVDBJcVliM3djVGNvRVhMcks3OHprdlR3dHR1SzRrbjVCYkJ1?=
 =?utf-8?B?VDlSbnN4bWNJNS9rTEpucU1jNkdVeEVXN3FvbjFTV2Z6WGxIcEh2UC9VVlA2?=
 =?utf-8?B?dUJPRGxyWHlyUGJ6Ym14QjVNd0JVZHlYb05jeHZqUFNONFNVWk1DUEhUSDZC?=
 =?utf-8?B?U0dOWGdVS1dnT2wwRUlOUWRkbkxmUUM1bk42VnNYRmFJZnZrbm92WkFmTWlS?=
 =?utf-8?B?UG14TnRZN3d2SjJxSnRvbWQvS2VObHZCaHpxalJXZnI4cDc1cm43MGYvdi9y?=
 =?utf-8?B?eTNpdUtROWgzemlSK2dmMlptMWhsS0hJaUNLVVdKTitqY0M4aE43NCtVb3Jo?=
 =?utf-8?B?c1pVZTZ5c2dJaHh6dTZud0xGNXNNN21IQlg1ZVYzbHhpSllDdUtaZHZkYWR5?=
 =?utf-8?B?STk5bkFKSlo3aXNmLzdldUZaVlV6UTB1d2MzU3AwZ1hmY3hwekdaTUpiYnBU?=
 =?utf-8?B?eFVYcjc2bEJDazBLM2Y0Y1k3M1lueFpBbTFMNDEvbENaQWJqaVhCR2tXc0I4?=
 =?utf-8?B?YjJuTUthb1BqYUtuM01jU0FvTHVkQ1BxVjA0VUZkbWxHWThkUnZ4aTM0RTBv?=
 =?utf-8?B?MDljcWdDVnYybnMzL2UwT2EyU1pxMG1yMDlhS3BnR1lKanYzOHF5ZStwSE5n?=
 =?utf-8?B?VFhGUXNSeHVYTENjeGFYSXRud0JIVmxEYllMTXZXZEd1RU5mZXcyazMvdk9s?=
 =?utf-8?B?NTJIeHo1akVRSWJLbWZsOW9Xc2c5YlFjc0t2NEx1cXJDSjRQWlltTFg5NWJU?=
 =?utf-8?B?MllUdzdKb09IRmN6dDVTbm5OQlRLRjlYS1hLdisyMGxhZ1BtRzNoYzJDUU10?=
 =?utf-8?B?eDUxTkF6K3hJMzFjdDRKSE5xYlp2N0FCbGdyZ3ArSkJzbk1FMm9YVHVMQlVM?=
 =?utf-8?B?aW1OekY5TDNqRWxKSUtLYmsydnpDbnFZV1ZGU0xxalNGRmlxTGNlL1pGZTB1?=
 =?utf-8?B?WmZwUG4ya0Q3YjFTK1FWNmdldmdEb3Yyc205b1FydnVxc3VOaElCWnlrYkVs?=
 =?utf-8?B?OTM2eTZvdXdMbERrcG9qU2F1ODdhQUZJR21GbUdYd1l5cnJhbkdQWjU0K01j?=
 =?utf-8?B?bVI0eXdVOWxaRzJxWW9PMEM0UU5qYUpVVnMxVUpqbUo5bVAzL2lQNkwxQXNt?=
 =?utf-8?B?VXVjOUljNzZZT1lNQmd0Q21nbnNYSi9zWHNmR1kwSDZkM3ZLWHVucS9rQUJm?=
 =?utf-8?B?cEk4OTRvSk5rVEZaTjNNNE5CVkFVVnZVRHJ4S2tha2w0VFU2eEsrM0orc0gy?=
 =?utf-8?B?ZXlFVmdJcVN3VDgwRXJkdzVadzlHRldmaVJjTzZrc3Z0TUpmdUI3aGJIWFhI?=
 =?utf-8?B?azNiQ2dmTUpxZHlNMTBZWFJ3UE5FN0tuZ2xTN3ptNVlTUnNKNjFYZ2ZJbHM3?=
 =?utf-8?B?SlVlamozZk4veURVSjV1eDVRalYzV1gxc1ZpWVNuRHBMbVN1aHAxUkloMkF0?=
 =?utf-8?B?UjJwT1FRbWhkVVBWVDVrOGcrODBmV3lmWFJhUHkrZXlFTWlWRmtWeEE0SHFF?=
 =?utf-8?B?WHJtMVRIOEVzVVlUWnJ0cW9YNUZjR212SlRlWW9YWTRsamxzUG9ZeUhEZjdC?=
 =?utf-8?B?T1BQOFNvLytUbVd4OG5kL1IzRmdLMjNsaFY1RVMrOEdSbitUTUZMOHdoZkd2?=
 =?utf-8?B?aElFVWFNaVBjWnU4SVdoYXdKSWllb2l6L2JXS1l6aER4c3ZqbW9ueXhDaHNl?=
 =?utf-8?B?eVpnN1hIbVVpaUdyZHZTTktUY05rMXVrNnVJWDErTE1waXdSRTlrUVVrMlFh?=
 =?utf-8?B?YlBHOVVCQ2NmeUFlY0p6TjNWSis1OXlZVU4zVzdHdGx4cWpVNHZMSWNTZGNI?=
 =?utf-8?B?QzF4ZHB1Rld0akl1ZWFHb1BFTzh0cEJ3YVllMmVtNEgyekFJK0NEZz09?=
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: 1a4c4bd9-6c25-47cd-a309-08de47ce9324
X-MS-Exchange-CrossTenant-AuthSource: BY3PR06MB8195.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Dec 2025 18:09:29.1977
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jYWvQYpk4VJh56ab2J+peQ6YSP3I/SjaGp167BRxyb3yHAfOMhfIGc8diEs+Uxdp
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR06MB8886
X-Proofpoint-GUID: DKruU2YedaCTFUOBKVtQi92-h0yqxiaj
X-Proofpoint-ORIG-GUID: DKruU2YedaCTFUOBKVtQi92-h0yqxiaj
X-Authority-Analysis: v=2.4 cv=cIftc1eN c=1 sm=1 tr=0 ts=6954155a cx=c_pps
 a=hJOwGQj5EtsonyTFrxeutQ==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=lre9DRYkaIEA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=DyznqomoAAAA:8 a=awhf3YJpFJTGk-YdmTcA:9
 a=QEXdDO2ut3YA:10
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjMwMDE2MyBTYWx0ZWRfXx1/fQ9IwxTG+
 xF7woRnM0z7xiMI1FOT4BFXgeI807RchPhj9AJuyQRYFIEID9j5tmmRvxyZL4UEH0HA/xD9u7da
 P89jv+YA1aU8N6oHZAwZezDvP101C3Y0nC++GVW8rNpnNHUEP8wu/+8E5lIU2Cbj0Fn80HBPOfs
 Al0ZgKBNvVgm+XF9OQ6/1+TTXmElnfQXhB1RE5dBhh/zF31wAPwxAgqbeD4qAGm9+JJMRiVVWC5
 6dmWQMPbQjzmLrBNWZH97GIZOX48DE+DUGQ/b4qCuBbYCZqFLNk0S74hjgODxO5H6bs00tzZ4fi
 Xyxy47pa6mnXVC0wzxtP716WZ+bSmD/DRXtC8FC4bj43/KIMpylaMtRLvxVYN3JrZt4XH38OZhb
 2NB8rmD5D+K+mUVlk1aGfi35f4Tw7Cy4nBEFwo3TGL9sbP+0g9JYJgbC7DbHGf85kUr99Sjo3RT
 NasXoCbyMOpNG3r1vmA==
X-Wisc_ValidFrom: true
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-30_02,2025-12-30_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 bulkscore=0 spamscore=0 malwarescore=0
 lowpriorityscore=0 phishscore=0 clxscore=1011 adultscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512300163
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

I have a Zero 2 W. The sound has to be good enough only for text to 
speech. I'm not listening to Beethoven on this thing.



On 12/30/25 11:33 AM, Terry D. Cudney wrote:
> Hi John,
>
>     Which model of rpi to you have?
>
>     I have 3, 4 and now 5. Both the 3 and 4 have 3.5 mm jacks for audio out with onboard audio. The 5 has several options for audio boards that you can add in from different manufactureres.
>
>     So, it depends which model you have and the quality of the audio you want.
>
>     Just something to consider...
>
>     --terry
> On Mon, Dec 29, 2025 at 01:56:37PM -0600, John G. Heim wrote:
> --> I have to take a break from this project for a few days. For one thing,
> --> I've been neglecting my real life responsibilities. But I also think I am
> --> going to send for some audio hardware for the Raspberry Pi instead of
> --> relying on the bluetooth speaker. I figure that was good enough for the
> --> proof-of-concept phase of the project but I need real audio hardware now.
> --> They have these things called HATs which can be hooked onto an RPI via an
> --> edge connector. I'm going to order a sound card and speaker HAT for my
> --> RPI. Also, I'm going to see if I can figure out how to take advantage of
> --> speech-dispatcher so I don't have to code for different TTS engines. But I
> --> had ChatGPT write up a howto for the project so far so you can try it
> --> yourself if you want to. I just had ChatGPt generate the howto because it
> --> would have taken me all day. So I'm not 100% sure the directions are
> --> correct. Look pretty good though. I posted it on my web space at the
> --> University Of Wisconsin. The LiteTalk emulator python script (which is
> --> really the key to the whole project) is there. So you might at least want
> --> to take a look at that.
> -->
> --> https://people.math.wisc.edu/~jheim/RPITalk/
> -->
> -->
> -->
>

