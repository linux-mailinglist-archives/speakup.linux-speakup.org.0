Return-Path: <speakup+bounces-1605-lists+speakup=lfdr.de@linux-speakup.org>
Delivered-To: lists+speakup@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8CnKJSZiDmpG+QUAu9opvQ
	(envelope-from <speakup+bounces-1605-lists+speakup=lfdr.de@linux-speakup.org>)
	for <lists+speakup@lfdr.de>; Thu, 21 May 2026 03:38:46 +0200
X-Original-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 92E7A59DB86
	for <lists+speakup@lfdr.de>; Thu, 21 May 2026 03:38:44 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=math.wisc.edu header.i=@math.wisc.edu header.a=rsa-sha256 header.s=selector1 header.b=K3TKbvzj;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id BF2D1382774; Wed, 20 May 2026 21:30:44 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 9998A38158A
	for <lists+speakup@lfdr.de>; Wed, 20 May 2026 21:30:44 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 5EB56382149; Wed, 20 May 2026 21:30:38 -0400 (EDT)
Received: from mx0b-007b0c01.pphosted.com (mx0b-007b0c01.pphosted.com [205.220.177.71])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 483F138158A
	for <speakup@linux-speakup.org>; Wed, 20 May 2026 21:30:36 -0400 (EDT)
Received: from pps.filterd (m0316044.ppops.net [127.0.0.1])
	by mx0b-007b0c01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64L1MT8g1231214
	for <speakup@linux-speakup.org>; Wed, 20 May 2026 20:30:25 -0500
Received: from dm5pr21cu001.outbound.protection.outlook.com (mail-centralusazon11011068.outbound.protection.outlook.com [52.101.62.68])
	by mx0b-007b0c01.pphosted.com (PPS) with ESMTPS id 4e9kv0sk9m-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT)
	for <speakup@linux-speakup.org>; Wed, 20 May 2026 20:30:24 -0500 (CDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jTJe0aVBXpdUtyiEY3NNVE6iYVrgn7j9st6fEO2JuNw9ejCQlJ4jdrb56DRSxMSLnk2nEDiQaYQADq+2nqP7q0oxF6/dPY4VY1hDDAuIrl6eXrv0d+5KhjaXVLCh6apPsfF6BPxCIMqrwDxbw0BBt0vhYuI/keetLwuZw0Ow7lX0wFPv7/WgwbaxZbVuo8ntWQjjZM4Dh3BawojOCS5jcGYtPuo2mJFXn/AWaBLj/8TYHofqdvd9+zKAxft1GoADsmlWnS9Ia/7KoI+bIy/Jk5uEHf/LWhwUBf1srSNLg3OfBgz2/31XYtidwLEgtxlid2TPq1QCe/LiPCEk64zO/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KhtDkAxWpflIQp7rnuXNZw9impuLR817JK95cMJzPxY=;
 b=nzqrPfbKNKZlT5nl0XQgeFNWnxtCDrwQ32zQ8fYVkuhPpIOSVnVAgji11EiNqhdmOCbXXmm+uoNkE8cqLfj/ySK9dg6tSo2jbl+GdWfkKxp5VU/29soQ0U5BW47vhl7yvR64uohKXto/QJwzG5/L2fXrs3Kei5lhjLfYFb9uYfrMpAdBIv9qfLs7w14s0+im6r5B8rmkBzqirB26HfFpMFRjBMDdpcVLec4k2/0TnBCCo4m+niuYjV26Ptabf5TXo5/WBDjRFjAQDySZ0maKo5NFSIFIN46mb1qX4tXMjOwt/shMjCZOdepoD+vJpKBBMB+xa1TLV4IW/Kb6jTAAbA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none
 header.from=math.wisc.edu; dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=math.wisc.edu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KhtDkAxWpflIQp7rnuXNZw9impuLR817JK95cMJzPxY=;
 b=K3TKbvzjbrq5WZvTSdaoOFKbvYRZA9a4R5b++MflrjY0MaNADCYto9Lu+8BthG9Js2kMkEUzwsyHp/moNH1rGvAAvga4alORES6BgnbKn5k7ZQdHJXNg+/77QTMGMSv7hKbwzEEHQ3u1ZbZwYIGlakhSNNx0MzWYIx/6/hhpdpySz81ETQC2jXTNZtky2Qgq9My+hz/+3dy8hprm+8D82RKTBKEmhLbyRNOGtXANksITY3vfrMHw6LHMPY4o7H5He4IG/j5s0YzXihgKfjDPXx2JKYnye8+UWIJ7eotyG54BpWfGRNmISfiFU/wGTlJASBLpANUHbk29s0XGuzlCkA==
Received: from PH0PR06MB8206.namprd06.prod.outlook.com (2603:10b6:510:c2::22)
 by CH3PR06MB9315.namprd06.prod.outlook.com (2603:10b6:610:1a5::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.48.14; Thu, 21 May
 2026 01:30:22 +0000
Received: from PH0PR06MB8206.namprd06.prod.outlook.com
 ([fe80::9d74:8708:bfec:b7b9]) by PH0PR06MB8206.namprd06.prod.outlook.com
 ([fe80::9d74:8708:bfec:b7b9%4]) with mapi id 15.21.0048.016; Thu, 21 May 2026
 01:30:22 +0000
Message-ID: <4a3acf6a-66dd-4aec-a22c-ece3e2664dc7@math.wisc.edu>
Date: Wed, 20 May 2026 20:30:20 -0500
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
From: "John G. Heim" <jheim@math.wisc.edu>
Subject: Kernel parm modules-load
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: CH5P220CA0002.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:610:1ef::10) To PH0PR06MB8206.namprd06.prod.outlook.com
 (2603:10b6:510:c2::22)
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux." <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR06MB8206:EE_|CH3PR06MB9315:EE_
X-MS-Office365-Filtering-Correlation-Id: 9e0f9686-d037-4424-cbbb-08deb6d8868e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|366016|376014|1800799024|41320700013|786006|18002099003|56012099003;
X-Microsoft-Antispam-Message-Info:
	KsOr3mYbSgvaDPE6yIqGXyGU/pDxGmawBKS5K71Ip8xI8ltflx0rts9oIM5y80Pdz2lQ6obtPlrs+BJafZ9HIZOXV1UR5tuP4duTTGyv7EKyE8aTvs2pGTtiCxEMTd7DqSVYGa8Td6RqRTm1U+fs3uDbp37I6fIA9odd2B0eTSupaGU3Tc1r22fOPFvg2I6jZ6BvFtdkbDTGdlc46MS4b96kSbnjTbFQfSlMSjAv75nMhp9XrM6HjlPQBDvlcxoYydwEInDehycNnXYmfSUzBlrdLg6iLFwLyhX9aXamADmHMPPKriQO1F1TfOWzxiJ4mC/EsdqALVQ1UNs4hUf/Iog302xYUSwBvAbLtFhN1zXr+qQTSNX26KIAfH5BjaEBGsdVI+friCsRNyFJIwma59DmHe78KxUianJxevACSCI+5JrxMHTzGAVvbF439KlBmswNFgice12cDkuJBE9Rg2e6TWES+BrQL6FJTnpfwHB7gy7U+XmCqgeNEROfIJ6fH5EmYgbtZrEZQahnugjh3jimr21JGMKs4K3TS0x+vcm8WHJ00Pio6lU0bl3ccWEfQewDKnFdjeme0jbwUnedWCl8bJeBdyf0vbZLwYmSxN6WlsdfSGkBBEv8qgj57tOGGGC/tyKzKBXrlEDCr9s1yAvoTSJJELlyy9sWUPfqg/GT7dT4rS6giBgeUjzHEMAy
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR06MB8206.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024)(41320700013)(786006)(18002099003)(56012099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?a2pGRVpwd1J3SVRKVUFlWmJNOUZmbWdhODk3TjNUbXhHY09uZWNrdmRZZ052?=
 =?utf-8?B?dmc5eVg5V2xJUktKN0RmWGVaQkFybE52YnZlZ2lUNlZDVXA5Q1VGbVJPN2FU?=
 =?utf-8?B?dW4ycUdZV1ZLamZaSGI0V29TRjNoOHFPekdLOWRjbm9RclJIeWp0S1pVNTV5?=
 =?utf-8?B?MVBWdnUyZkxOdnZnSW5vQ1hCU0FBb3k5TEtSSTdNYmFDdldHKzFaNEJ5OXhw?=
 =?utf-8?B?YUY4dXpsUE4zWXNCTDFnMXd5aURaTUlYcjhEUlJKbFhaQVY5dll1UEJacTZN?=
 =?utf-8?B?eXBjUkh2b1c3Ly81TXpPVXVCV3hKR1RsVDVSZ1pEUFhNQ050dkc1elNSU2g4?=
 =?utf-8?B?WUcraHZ1UmhDUTNMMzY0eUVBeHNaNm40Wi9XcTgyK3gzV0lpY3pYU25BdW1M?=
 =?utf-8?B?Q09qcExQSk5qenpIWVVMeHV3ZytmUUs0ckppNXJQN1dNNDNZTWp4S0Y2eHR2?=
 =?utf-8?B?UVVDU1JRaTA0UjdmTEhKQTI2bjNXdU9HZFRWQmkyb3hPcVNra25xdWR2WXdp?=
 =?utf-8?B?WnFkY2ErNjVhNk1Rc2tHYXpPRE1jSFRMQStuOGpTSUhBVDY3enFRT1M5OVVx?=
 =?utf-8?B?QnkzUUpJRnlNaVFlcWRQVUZXWjBuVGE2WnZpYjN1WmhHMWdRRmdwZ0N1akZC?=
 =?utf-8?B?U0taS0g4ekI4dE03L2dhTmVJeVY3VTRvUGVVQ0FwREhsQjJuc2hsanY0NGpZ?=
 =?utf-8?B?RDQ0TmJlZ3VWd1Iwa0RvS29SYVFFUGNUQWtueE9DRFpFOWxhV21sUEs3bnBB?=
 =?utf-8?B?YlZmM3Z4NmxMZzc5aTZQSFUrb1hFc1ROZ3RlczByN245dmZjKzYrWTA5YXZU?=
 =?utf-8?B?UXFramxiajdERDdwanRuVVhsY3dDMW1SS1NlTmxjSTNmdGdVaE5hUVpUb1cw?=
 =?utf-8?B?VDZUZE5ZMGwwN3VSWnAvQm5VVElvdFBCU2dpcVhLaXlobmJOOE15b1kwYStw?=
 =?utf-8?B?c25FY1ZGTHhGeS9VRmxOTFcwSXJtZzY1cHllNlBhaVJEVlh6dWhvTE5mdTVE?=
 =?utf-8?B?UDcxTS9hRmlQQUlacW5nenhTRWtWS2ErOHNEUGpqZXlYcWJEUXQxUE5hK3Mr?=
 =?utf-8?B?ZXFTRTJENG5qZWtGTElTY1R1M0tpdEtyVmZkNGFsUHdnTE5nSUpIVHNMV21p?=
 =?utf-8?B?MDEyUjNwZjFJYlFYTVhsSklTQ1NaVTJiZHBJSUJoWS82alhqSldrSkEzRE1V?=
 =?utf-8?B?Q3VNbTBtZ2s1R3NhQS9LQU1CZ1hXMnZ2bGpPSlhFSlErMGJhWndocjZnallV?=
 =?utf-8?B?K2g5VnhTSUNsYVBNbVlmSDZQTkt2NEJ3MHZ6YjBCWTVrMm1xMURteVV1Vko1?=
 =?utf-8?B?SEZBRUNPOEZQK0FrY3pWbjFNZHlEdkhrajlmZU9OR0FnN0htTGc0bjZhM2Qr?=
 =?utf-8?B?OENZL1Flbk4rMXhyUnBRcTJlT3IrcUFQSlRYNDRhZ05EN0dJUXlPQktEYks5?=
 =?utf-8?B?VHZXUTU5TzFncXFlNHEyemhkbm9zSWZlMHZkYWxpM28zeTdrV1ZXUkRKQVo3?=
 =?utf-8?B?VEw5V2lKSDlDWTU3M240R1paVld6a0FON3F4TUNKMDZ5eDRlSCtWek1tTWJ3?=
 =?utf-8?B?T3RwU1dObWdQUTFTZ1VhSFgxTWo1Nk9zL3lOdmFkL2pjcDhNdEhWT2Z4Kzdh?=
 =?utf-8?B?eG5hYlhpNWZudDdTMEEzRkdXb09GNzYwRU9qNEJ3MnVxOFhWMmxKbUN5elZk?=
 =?utf-8?B?SGhsTkQ1dW1SMERoSDZmUDFHd2ZoMEFiZHRzV1ZLc1B3R2NiTitYZVREN3Vk?=
 =?utf-8?B?TjhMS3lKMmV6TnBxajZRTG1UYjE1UG1hSGxLN1lhUENmLytZNFEvbXZ6b2hy?=
 =?utf-8?B?VVg3Y3RSN2FURzBlb1lQTzE0aXJrTko1b3l2UmNaeS9vVVdhTkRyNDdDZG0r?=
 =?utf-8?B?Vzd1bXRCS3NHMzI1ZjZWTjdGdVVIWXJZK0FxbG0xVkhzYlRBb2x5MXYySWFz?=
 =?utf-8?B?UzlSeUlUenZoMlB4WlNySlh3WTkwc0VRbjdOUzhEQ0R2Tm5vWnA2UHFhWml5?=
 =?utf-8?B?QWVvckh0RkJXTWlYWUVEUFU2V1o3TEJaK0JRb0phK2REUEtFR0lFNU9yNTAy?=
 =?utf-8?B?NURTOXZYamExRUpXcUp3TlplYzgrcTdWcUVJb0FTdk9mY2x1K3AzeTJxOWpp?=
 =?utf-8?B?Y2JYdk94YXcxenNnVkswMytaa2FSeW5BZ0tLc0d1UjNVWFZRVXZCSTZaSVMr?=
 =?utf-8?B?aCtXd2VMaVlqZlhGWFIvL2pobUR2aDRPTzlqTC81c0tacWFxeVhjVjhwNU15?=
 =?utf-8?B?MmZxTllQek5CSit3SGw4UEI2c0dtQ3ZMK2RHbWVNYVJOcm56cG0wYm9OaXh6?=
 =?utf-8?Q?DN+8iGrYVkC/2NvGad?=
X-Exchange-RoutingPolicyChecked:
	qJwdTxauf+5i5tHSdppe7mbR0BV7YrJrLShtpTae+1Co4waz5obO5b+JGX1mh+ZEWBE0mYVBkwoog2FnXj2LvBrGaJl3JBl8a/x6rMIirPm66EVI41t0FQoUTr2EaZToPLnt2pSSOsGX3aK7W/plE/vWESlnCwLG/JuGCGGbIr/Ff/CarnMrn064uiwA74FbBEbOHjlocUFg4i1rUVU6guDNvBlMFbHSJNErxWSf1XoIZm5zqhvELAeYvsf55nSZfZHUwZRu7agCW56JEUxe0nv1ZudSoGuECkI1owc5N32EcRxkV+vWLYVvUv1Z0IUZlUy27BdWTse9P+Kr+Q92+Q==
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: 9e0f9686-d037-4424-cbbb-08deb6d8868e
X-MS-Exchange-CrossTenant-AuthSource: PH0PR06MB8206.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 May 2026 01:30:22.1940
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6RI2CVOOQfUGwWTY2brudj0wkdK4EiXMbVvjqeDsZiRVicLzPV3qt3b+6n/Njbrv
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR06MB9315
X-Proofpoint-GUID: m0zO034MuL0BJ7UUNPTIRJu3Ll8bmDdF
X-Proofpoint-ORIG-GUID: m0zO034MuL0BJ7UUNPTIRJu3Ll8bmDdF
X-Authority-Analysis: v=2.4 cv=f4x4wuyM c=1 sm=1 tr=0 ts=6a0e6030 cx=c_pps
 a=q0rL5DqQyazLQqY8Xi1ihA==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=lre9DRYkaIEA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=ZyELlZqCvD1aXIDzc3I-:22 a=PmXMWaiFgSq4GZTC792z:22
 a=y488-X5u6SCckGmZ0P8A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTIxMDAxMiBTYWx0ZWRfX+VcXiK9W9Y0p
 Nch+8TFghK5yPzBfNr7JpL73tnSHCN7ngSBRrm9F+CAZlUOfDD23U8F7J5ho1sQxAS0i4AHW0+u
 3oAlbNcQNPPzGEGalAug6X7o6yeLdBxb/MLJW3ew4MejGIpgVhYJXPq6VLEx28scjPpO97/B8l2
 UiIBugB7HaEMSz1qhGgoahJuR7wqVPFroXfZCiHp0sMSI/1MmmI/fT7f+geLOvmjPFRC/4uXCJo
 MdMs7ZhuStuo8ZllI9i5NUYpa+uPuC3tHNvvlqbMsFfUhAsEFMoLS/un6Bj37KMDk9LkLHZiYHI
 nTQ++f7adKjcY7GqMNbRyd9PHlpiT360X9vXmHt0P3HTNzWezzcmDRoXFoQxpgKCo8+H+XfUCSO
 JMMM/hpODEYpvp2G4cfr7dCNbpUwMuewsvFYbRYaAU+oZpDZPXdldHaucew1X+Q6E2mXC3wR2D0
 hKQzussUGgjNhBrj2vA==
X-Wisc_ValidFrom: true
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-20_03,2026-05-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 adultscore=0 suspectscore=0 phishscore=0
 bulkscore=0 impostorscore=0 malwarescore=0 spamscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605130000 definitions=main-2605210012
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5
X-Spamd-Result: default: False [-1.89 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[math.wisc.edu,quarantine];
	R_DKIM_ALLOW(-0.20)[math.wisc.edu:s=selector1];
	MAILLIST(-0.18)[generic];
	RCVD_NO_TLS_LAST(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:5645, ipnet:206.248.128.0/18, country:CA];
	RCPT_COUNT_ONE(0.00)[1];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[speakup];
	R_SPF_NA(0.00)[no SPF record];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jheim@math.wisc.edu,speakup@linux-speakup.org];
	FROM_HAS_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[math.wisc.edu:mid,math.wisc.edu:dkim];
	DKIM_TRACE(0.00)[math.wisc.edu:+];
	TO_DN_ALL(0.00)[];
	TAGGED_FROM(0.00)[bounces-1605-lists,speakup=lfdr.de];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 92E7A59DB86
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

I have confirmed my earlier guess that you can configure grub to start 
speakup during boot. On Debian, you would edit the /etc/defaults/grub  
file.  Look for a line that sets the value of GRUB_CMDLINE_LINUX. Add 
"modules-load=speakup_<yourSynth>" to that line. For example, for the 
LiteTalk  synth, it would be:


GRUB_CMDLINE_LINUX="modules-load=speakup_ltlk"


Then run update-grub and reboot.

At this point,  I am not sure if this gives  you speech earlier or later 
than adding it to the initrd. I suspect it is  later. On the other hand, 
it is easier than configuring it in the initrd.







