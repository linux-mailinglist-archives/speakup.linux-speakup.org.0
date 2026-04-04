Return-Path: <speakup+bounces-1571-lists+speakup=lfdr.de@linux-speakup.org>
Delivered-To: lists+speakup@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8l6uCMlR0WmhHgcAu9opvQ
	(envelope-from <speakup+bounces-1571-lists+speakup=lfdr.de@linux-speakup.org>)
	for <lists+speakup@lfdr.de>; Sat, 04 Apr 2026 20:00:41 +0200
X-Original-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 2F1E339C005
	for <lists+speakup@lfdr.de>; Sat, 04 Apr 2026 20:00:39 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=math.wisc.edu header.i=@math.wisc.edu header.a=rsa-sha256 header.s=selector2 header.b=F/j9SBhR;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 1AD883823AF; Sat, 04 Apr 2026 13:54:50 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id EBD8C3818F6
	for <lists+speakup@lfdr.de>; Sat, 04 Apr 2026 13:54:49 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id A71DC3818F6; Sat, 04 Apr 2026 13:54:43 -0400 (EDT)
Received: from mx0b-007b0c01.pphosted.com (mx0b-007b0c01.pphosted.com [205.220.177.71])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 830C2380C82
	for <speakup@linux-speakup.org>; Sat, 04 Apr 2026 13:54:42 -0400 (EDT)
Received: from pps.filterd (m0316045.ppops.net [127.0.0.1])
	by mx0b-007b0c01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 634HSghN2766497
	for <speakup@linux-speakup.org>; Sat, 4 Apr 2026 12:54:39 -0500
Received: from ch4pr04cu002.outbound.protection.outlook.com (mail-northcentralusazon11013006.outbound.protection.outlook.com [40.107.201.6])
	by mx0b-007b0c01.pphosted.com (PPS) with ESMTPS id 4danbev8aq-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT)
	for <speakup@linux-speakup.org>; Sat, 04 Apr 2026 12:54:38 -0500 (CDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Ab20yVNgeO7RXPSIMwRzrIv2zQ8oK7SotUbz2UKDBgY7Gn9YNF6kPkfqViFjaBeTdTNHlJ+EbB9WX0LXALlAcnJa5HC9VSTGnxFceQCVtLYehP9mWppaxPkWaDqSbhJtqMHYx9qO9jJt+IKQG6wzdTa8j5FNZCQ6V+h4QjUcERlVVWFrMIERgLSH2gU/anMQFFchFY80EVdX2q42/myy3APaPcA8KtCkTLE1HTQNHe0Gvj7HYQubq3iElV7hKMRsW0digzQEEvbbgYiQvvjlMOZfr5NPCo9tyKrtC5x047O+atBsDfNOPzSe5IY8zKqwPtK75CLY4pDohmLgtrifWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vIBFcKCvNLiB7PMEKZvHgEu8zZJO4ndlODCbwO9PuCQ=;
 b=dPnO96YoN7sxPbAazLAIUVzHVlGdHa4ZxZQRxAhk/qBKFbz36UhkcBGcjELNF/cvollosN2A1Avcgxb7KWWJf+3MmytUoxhCgdsRzlN/t1zXsuOk1U0e5PjnKAqXfA8UcGvyFBcAjfpdp4i8ruY5I09uXMe1QiKzqFHMehGsJXMhat6qEyLpUDrXvaM9RAR3cDiHXQ007BMlkUYUCC8VqvAoLgdx/2oJ0ObD4CoGurlQ9vwKECCBu9DQAVtAIXPoNmMQGDEpYfVpF20wNjkBsrJVzzh9wAYDI7RBWyjh/Hx5E7ZvDxsI4e71VOB0zutL2auew0qjqfYVXR0mWJJYcg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none
 header.from=math.wisc.edu; dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=math.wisc.edu;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vIBFcKCvNLiB7PMEKZvHgEu8zZJO4ndlODCbwO9PuCQ=;
 b=F/j9SBhRYIzcApqsmjgrvE4J/DdDXnQ8wtq7m6GFaScjY3p8zrQcFuGEx3ekGMyTswyc1hHuEUn+6R6fa0XJcK7gcu9eu3sxPOmZKA3+2VBgMdiW7zCIBJsjUxqgnNwG6IG3Z4JcLwl1g3wDNqJyJ1ENz+rCsKO0CqCehto3V0nAD/Vt/Tpuook8ijBSJ1BLrpPvssar8Gv/ccYkpOZSV32wRBGRjjdy1dn9cfvp+d4abbzjUP6o8dEKofqFhhRSTifjXSL6I9MToWZ40rx+iKkcH57Y3ClPLIP69NRHByHmN21FZO/zAoclcWFSFkrV7oDq1RRpSOYEvH2DjLD3Gg==
Received: from BY3PR06MB8195.namprd06.prod.outlook.com (2603:10b6:a03:3ce::19)
 by PH0PR06MB11334.namprd06.prod.outlook.com (2603:10b6:510:38d::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.17; Sat, 4 Apr
 2026 17:54:36 +0000
Received: from BY3PR06MB8195.namprd06.prod.outlook.com
 ([fe80::a7ad:fb62:4389:fd8b]) by BY3PR06MB8195.namprd06.prod.outlook.com
 ([fe80::a7ad:fb62:4389:fd8b%4]) with mapi id 15.20.9769.017; Sat, 4 Apr 2026
 17:54:36 +0000
Message-ID: <f73d1414-0f07-471e-a160-4b40eb0346e6@math.wisc.edu>
Date: Sat, 4 Apr 2026 12:54:34 -0500
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
From: "John G. Heim" <jheim@math.wisc.edu>
Subject: Rewriting the docs
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: CH0PR03CA0290.namprd03.prod.outlook.com
 (2603:10b6:610:e6::25) To BY3PR06MB8195.namprd06.prod.outlook.com
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
X-MS-TrafficTypeDiagnostic: BY3PR06MB8195:EE_|PH0PR06MB11334:EE_
X-MS-Office365-Filtering-Correlation-Id: c94855f3-e319-497f-0e79-08de92733c0d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|41320700013|366016|376014|786006|56012099003|18002099003;
X-Microsoft-Antispam-Message-Info:
	XMIaAyyVqGb8fTvnfeenLQIDu48nSwUY3b7FcJEXgB2tV/XQ522Lc9Vpyhd+/rX33GhFHainX2CTLSYOSR5Z7FuaY89Ef3UMeRpyhjfZV/uZ3D0UYS8l3gm/W1ANjfRJDG/XHqQVvbxqFfEiyvz1CIdH3qi6Gzea+9h7fHoVhrnXfX2nrcD9ZOjCTQ0KLhag15ovWNVkhi0tyHWuLgSh2TLwcFH4ThBax1ZrPGsaXA3V1dpP3LFRJixZG6bN0w1GVrH7LCYV4+YLyVc575XfqXxpXNKWi3VlgfLLXVmkY8PLn+q7x2FzZG72mB/s6WI8vtdO+5Ktk4ZTHLuDQ5OuJZq+P3JT/CTqo6lHj6KACVdTitEjS+YzdVARHugq5bCGsUkBISIc7Y9YRDvMUFfqiISF5SMtszKkMEL+x1uHSzTlp4fFRUuqUINnYbgOVu4DNCnn0c3rO22yv8rU1/kJHGHJ9Ekz4tEt4F599wRVPeTdMlLRfn+38ABLiK9++M1WrTXrQc+yjQif0H5RxA9rjemrFb5nDnOHSlV0u2MyZFMmf+KOBkvP5rmbp4e7N5EczakwEOsjaBlTxVwQofDls/25fKIk5TzYvxZRRFUO7yYxtWMr5D0i+4XXy4n+NgansyHjMpdrirsZDItiHN+bfjfhdwBeZAt6ZmW2BgQNcJzV/VEMZ1HUua98QuT2Mb4ca3+rJyhEkEnbe7HeuTQScQL28zMUZlf9Ka73J2XNljs=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY3PR06MB8195.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(41320700013)(366016)(376014)(786006)(56012099003)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?LytCRThEc1NINTZqeXRlR2dJdWJJT2hGNENOMGs3Z0lBcWdpNU9Fd3lQb1hj?=
 =?utf-8?B?YlRZN0pOUmF2U3dEclhYbExKY1BNb1hIeExRYWYvOG5UaDNLZzl1bDVQRUZS?=
 =?utf-8?B?eGNGODdiT003cndaUi9venA4eWc4U2xOUlh5ZnJ4TVJRNkQyNkMwNVhmdzUv?=
 =?utf-8?B?ZmpmaHJuVGFhaXB0SGxDblhWRWg2WWwzR3dhMTJBR2lERDhuVDJYK3pYYW9E?=
 =?utf-8?B?UWE5MDdyZ1ZxZnBtQ1pnRHlQRVBLWWRnOEhTK3IvbTVESVd1NWwvalFwY29o?=
 =?utf-8?B?UlRLakx0Nmk2T2UrRVNXa3JLSXFweU1PNUNjbUwrK1dpTmwwYmFYT0xRQURp?=
 =?utf-8?B?SllSN2xjZDg4dGFYekJPaGN3cnp6dlpjenJENG83blUrMFErZXJaOUJBMVlQ?=
 =?utf-8?B?ZWhmbCtTZWlkRmwxQ3pIUTNBSm1IdjJqMEl6MklEYnVISlJMR0JZWXNMbHdt?=
 =?utf-8?B?S1h3Q24vM1NXaE1vZGlpUG9tb0hhQ2wxZEhFMzNYRmZGMk11dEEzT2ppQ3BZ?=
 =?utf-8?B?S28xcnVFMHI0S3FqTDNiSHFtU01WbXg1dGI1ZVBuMngrUGtDRVgyRVZFRFBa?=
 =?utf-8?B?UVllUmRlc1JDWG04aHFNYXc3emt0WEVWOUtiMHFqSWJTcDdxaE8vcm81NVND?=
 =?utf-8?B?aS9VL3J5NmZxMWczMklKUGc3b2xLVDRFb0NmU01aRlFSakJsZzdrVmFQM2ZR?=
 =?utf-8?B?QkY0ZmVaV1c4dGw2bllFUzVKV0IxWHM5VVBEbDA3TFd6eXdXSzJ5YWdUcHVO?=
 =?utf-8?B?ZjhSRWszQUdJMzR1OEJPNExwMVRmZFo0NGZhckx3d2lXTDR6dVFQZTVKaVN2?=
 =?utf-8?B?TE9HZHo0MTJrNWtIaWM5R2FNNlFTcFlZQTF1VkJhK1BscVF5VnhYdnFlcjdW?=
 =?utf-8?B?VSt3WjlvbnBvanBkcUdQeHFDMk1ocm1RV1lEaHoxdG5ud0U4YnNaTnRWQndk?=
 =?utf-8?B?K001OFF4dzhzOFVqRlRaMjdJVkd0SXBXZ3pnQTZmeklNNExhazQvWDU2bHZO?=
 =?utf-8?B?Mjl0TWV5d09KZWNkWEFVbmxpenk1QUF1VDZId0ZUYnNsNEQvQmFmbGEySXVQ?=
 =?utf-8?B?NlFRQmlGOUp5YysxWXpyV25tNTU5MGo4aG5PZlByMXc1Kyt1TWpFWVZiMGdB?=
 =?utf-8?B?VDV6UWlUSnF6SXYvaEJGQjFFNXl6R2szV2JnWmV6ODU1NWpqVTgwSlQ1QllZ?=
 =?utf-8?B?NFFCOE11ZTdOc04waCtCOTUwV25VTnRqMUJ1MjFsK05ibCtzQkVwTXJpaTJ3?=
 =?utf-8?B?RDFRWGFXUDRUMTM3U2trZnhmVmdPY0wzaHpnSEw4RzJxbThDalh4Qi8xRndZ?=
 =?utf-8?B?L0EvcElhaHNqSlQ2WElLc1phc2E2K0xxYjRyNEJmeDNqWFFGMERPMHBpWFZ5?=
 =?utf-8?B?S3FWVGRML3dhNlN0RWJWOWZaN21qcHIzWWNDdDlTR2I0c2xMaTBIYUlpdXJh?=
 =?utf-8?B?Z1JLZGRqOG0zQ2J5WWdNbVp3S1dObG5oRUdaY24vU0xmNXdETnRBR3NRMW5R?=
 =?utf-8?B?TkVtK01oMmtzKzZnSGNtQWRycnFPc1daV2Y5ZEhsR2JRMXRacEcvc1RvdEhl?=
 =?utf-8?B?Q0NrbGJtQ1d6NWk1ZzhHVy8rYnZOV00rbEJ5V0xhYnB4RG1tMlhFWnhLdlQy?=
 =?utf-8?B?aVpPWnZYQ1YzVEVVcG5FS3JpYXM4MHlKMmJKN0N0RzJBck9RQXNDbnlmYmN0?=
 =?utf-8?B?UmhGZ0x5Z3Q5d2s3eGhlcXRzRi9QTDhPTmdJY2tzMEJtMVJ4S3FPMnFkSjRa?=
 =?utf-8?B?Z2U3d1dUNmttWjJ1c3UwSHFWRzYrVUFmN1JCNGdUUjQxWnl2QnFZenhiQnky?=
 =?utf-8?B?TzdobmhjTUVUemRpN2hRa0tsTjlCMDk3SVF1Ym84eHpad2lzajRuc0J6TUpo?=
 =?utf-8?B?NDkyKzB4VVpFMXlNYjErSEYxdWpCYkZIaXdrek1YZ2I5emxTbUtRTU5ybllM?=
 =?utf-8?B?ZFNmODF3bzAwUVNRdTYvR1RkV3BGTUx2b283aXZnTDZIQmtUOFVXVXBNS3o0?=
 =?utf-8?B?ZVQ1SWVoYksvQldPQXlQb2libDJQRE1Odk52THBPMElnUjdKK282aGIwSVVW?=
 =?utf-8?B?VnZ5RnFiZnJYc1FTMXNQT2RpYVl2a3pyMWhPZlR6eStnUnZkZnp0TVlqTjNm?=
 =?utf-8?B?M3ZLcVhYWWpoeWpkeWYwcDFIT2JadXJtNUt6R3FBK2RmTXcxemRUWTFFT0Z6?=
 =?utf-8?B?S2Q2aGlPdjlaeWoxc3FNam8yZzM1dmJGcnNXTEw3T1Y0dTlBZkpKVVI1VTly?=
 =?utf-8?B?NnNKRG45eE1ITTNzbHpHTUkxQUF0aVZGdWJkOGFzWENjb3JQY1NrZFo2RHhW?=
 =?utf-8?Q?HPAhZsHH65xcKOMKtE?=
X-Exchange-RoutingPolicyChecked:
	Kl3BhLj38uaH9UInIIka4gTt+CNGnVq9Dy/WWwCxRmc+eIXBjDqHS/tpyyZBlrwpa/EY42+nMEyAQy0zn4ljBPCKxIAkRefxW9+P6fuMUSh2+pYV1ggKlKUnGhsaxEgQpWBQCYY3oVhUy16u2E8RYdttPa4s7g5bli7ip86QtXyyGIKFC2U+6BkNRG/w1m00KQpPEH3LkSXqPOujKkjLqejAq079DH1SusnlY7qJ42/+8UFW2WmUWd+iHngFiQYGyxPt1LNdLNYJMsSgj1pvNV32hszIMWG9ypOoNkaPDm6YNXRVGdhPIEnbtSy+f78mZSEjomhzIGvvXGvdoMf6sw==
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: c94855f3-e319-497f-0e79-08de92733c0d
X-MS-Exchange-CrossTenant-AuthSource: BY3PR06MB8195.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Apr 2026 17:54:36.0766
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: I1R89iJp6XG8G3D/+90CVtHoH5sS9JIGhhIE0K97nhvauQcaESayuLg/2UfTGMSQ
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR06MB11334
X-Authority-Analysis: v=2.4 cv=YOCSCBGx c=1 sm=1 tr=0 ts=69d1505e cx=c_pps
 a=1QNZTIC90Jmhh4/qmb3rWg==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=A5OVakUREuEA:10 a=lre9DRYkaIEA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=ZyELlZqCvD1aXIDzc3I-:22 a=cxWs2oMzrVA7VXfVkmgu:22
 a=ytPWB5Qe5m0bbZFE95IA:9 a=QEXdDO2ut3YA:10
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDA0MDE2OSBTYWx0ZWRfXx6sAm45ed7oB
 NW+ch4y7BadyO1HBtsYxfAR5AlgwQtwoCeS5w6BpddmKcd9VuOEBUyiXRb7dnJDd4qaG7KAimiK
 FjgPqSajbqVsYiYV+uIZf1C3lERDAxrDaCG5xk2WpczAxDwDVNBmCFotvaIRdr/TemZCsC2/QG4
 IsOSj7WnUAgz/qKVVMHbbKtrU5ve0rWn8fPaVi8YfXPvQM6oMAF1sfprSgr/dkjqMNL1ruF/ccm
 XacQvPCnq+m25cwWjcA6OoN4zXNu4R6SCov3L2nWcD2ysmIVqIVKH3wWY5qXpdeg1TzP1FD1sXe
 bEc8EACZINIiSq4VRose8CmVXsscSP8/bwZKdAMXJow7J77/3SkXTSfKiK/M33s0CcBOSmXFaNA
 3YxiI/pjDcggxdM0yyAaSWhCYI0/ZCF95JefCnRhnisWaZ+2ovBnAZ4lC/MzbCAKydOi5iyoo5c
 KXAkhPP+PyrlSWEhoQA==
X-Proofpoint-ORIG-GUID: CUlXfK9uX1LK8cTPrmpTCLI2YMz-ek3E
X-Proofpoint-GUID: CUlXfK9uX1LK8cTPrmpTCLI2YMz-ek3E
X-Wisc_ValidFrom: true
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-04_02,2026-04-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 priorityscore=1501 impostorscore=0 bulkscore=0
 suspectscore=0 lowpriorityscore=0 phishscore=0 adultscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2604040169
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5
X-Spamd-Result: default: False [-1.89 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[math.wisc.edu,quarantine];
	R_DKIM_ALLOW(-0.20)[math.wisc.edu:s=selector2];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[befuddled.reisers.ca:helo,befuddled.reisers.ca:rdns,math.wisc.edu:dkim,math.wisc.edu:mid];
	DKIM_TRACE(0.00)[math.wisc.edu:+];
	TO_DN_ALL(0.00)[];
	TAGGED_FROM(0.00)[bounces-1571-lists,speakup=lfdr.de];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 2F1E339C005
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Now that I'm pretty much done with my hardware synth project, I thought 
I'd get started rewriting the Speakup documentation. I decided to start 
with the FAQ, which if you believe the date on the FAQ itself, is 24 
years old.

The FAQ doesn't even mention software speech so I need to add that. But 
one thing I am unclear on is the relationship between espeakup and 
speechd-up. I understand the technical differences but what I am unclear 
on is whether speechd-up has made espeakup obsolete. Obviously, you 
wouldn't use both but is one preferred over the other? Maybe the FAQ 
should take a neutral position and just explain that either can be used.

PS: A note on the hardware synth project -- I am working on getting my 
package into Debian so it would then automatically be included in 
Raspberry Pi OS. Once I get that done, I'll get going on getting the 
kernel to recognize hardware speech synths, including my hardware synth 
emulator.



