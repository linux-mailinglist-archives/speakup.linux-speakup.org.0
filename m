Return-Path: <speakup+bounces-1564-lists+speakup=lfdr.de@linux-speakup.org>
Delivered-To: lists+speakup@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SEHFH1LxumkBdQIAu9opvQ
	(envelope-from <speakup+bounces-1564-lists+speakup=lfdr.de@linux-speakup.org>)
	for <lists+speakup@lfdr.de>; Wed, 18 Mar 2026 19:39:14 +0100
X-Original-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 5B74D2C16E6
	for <lists+speakup@lfdr.de>; Wed, 18 Mar 2026 19:39:13 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=math.wisc.edu header.i=@math.wisc.edu header.a=rsa-sha256 header.s=selector2 header.b=Z9MQO6KO;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id D3AFC38272D; Wed, 18 Mar 2026 14:30:04 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id B0CA33818EC
	for <lists+speakup@lfdr.de>; Wed, 18 Mar 2026 14:30:04 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 7426338192B; Wed, 18 Mar 2026 14:29:58 -0400 (EDT)
Received: from mx0a-007b0c01.pphosted.com (mx0a-007b0c01.pphosted.com [205.220.165.71])
	by befuddled.reisers.ca (Postfix) with ESMTPS id A7A6B3818E1
	for <speakup@linux-speakup.org>; Wed, 18 Mar 2026 14:29:56 -0400 (EDT)
Received: from pps.filterd (m0316036.ppops.net [127.0.0.1])
	by mx0a-007b0c01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62IE2Csk247162
	for <speakup@linux-speakup.org>; Wed, 18 Mar 2026 13:29:50 -0500
Received: from dm5pr21cu001.outbound.protection.outlook.com (mail-centralusazon11011064.outbound.protection.outlook.com [52.101.62.64])
	by mx0a-007b0c01.pphosted.com (PPS) with ESMTPS id 4cywf7jcfg-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT)
	for <speakup@linux-speakup.org>; Wed, 18 Mar 2026 13:29:50 -0500 (CDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DXyyoZvaxqZ1Pcs4xp1UHlMjk2aAzuoHDmT1he24Ny6LbQKRX0jLJDZYBB7NxLlUYt3qNyF4QsDozAm7Jo+ol8KcqmmnhuLHxDoZdmL00bXpv/WzCcubLjpk1PReYB0TLTa4Yl1E3i+ChM/jwMizqZouZJF4nadkr4Mc0rUcG1VSazXIASHsLObV7WxXgFLOiJq0Kq1MTS2acMVpmzX+4KAj2M6eXq0cIEMNmMIWdywCjXGiUQ//fhROL2KdALwF2rn/J7w7NykiG+DDd0yS43asneRjRUg4G2t0cnKPI4TbqTB2YGc4k7Pts5eNnaCw4R03uQnrveq0gqetKl8CHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kgJ/j/8DkMnYUm0++c6hasb3mOK1+8AjHp15WvskM8w=;
 b=EdHozjvpw+HPcErIJ0rCmePDowrATk0rrgybOD5tWZmrZ9KeNh7BI5m2PDYQSB8NrlHZoI+hlD8Xk/x2olyVZh3szF7zbvMas2NoI34+JU+EE40ELjnc60Jn8VmRo7iC3Z6+BNks7iTstdDzJ+hL3OivYudDvp0AvJzYN+0Qrur569iAJHGq/gm4Vk8CtgaG3wSQW4gJq6431i1kbg+/WUNpGTaMU3z6gKhysAvxuDa8CwfRi5D+fVwSDOtkLFvVpIGsZVCiyzquGOeQtMbUwyEjhKgnK4q7ecFKWXDcpX8ZUGXntcpAJa+vxqTBmMmob+XYo55AriOX608zIzrPew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none
 header.from=math.wisc.edu; dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=math.wisc.edu;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kgJ/j/8DkMnYUm0++c6hasb3mOK1+8AjHp15WvskM8w=;
 b=Z9MQO6KOoGrBxVQbnpX9W9kBTL78GMBBdt2IGJ/xZL4wXk4lej5ty6u/jyWfiiIZU8wxKeTRQW0+vQQ/916BXjKG3DpDX4i5CbvEKq7J7juCej0S03fOge3KIASF6O9gYtwa0smUhXwEauOGgQVcZafsK6nRHK1oViahDJCPBrobzvwRVi5geONc/2CvJGBknes4Mi/k3QaNgT2g90WU9KLhnl4vNnoY+v1cVQfZVImhKSpudg4OxgJlE7rEU/Vifx7TzFKFsuk0NjH8pxAW5jAyR/RZzNBpWJQqSIcttqQYiEbutZoebwvCcwsn1JHb+6x6b10tCrLv8zBUyrLDHw==
Received: from BY3PR06MB8195.namprd06.prod.outlook.com (2603:10b6:a03:3ce::19)
 by DS2PR06MB10768.namprd06.prod.outlook.com (2603:10b6:8:2be::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.19; Wed, 18 Mar
 2026 18:29:49 +0000
Received: from BY3PR06MB8195.namprd06.prod.outlook.com
 ([fe80::a7ad:fb62:4389:fd8b]) by BY3PR06MB8195.namprd06.prod.outlook.com
 ([fe80::a7ad:fb62:4389:fd8b%4]) with mapi id 15.20.9723.018; Wed, 18 Mar 2026
 18:29:48 +0000
Message-ID: <f58445bf-9bef-466a-8c0d-2707001c9c84@math.wisc.edu>
Date: Wed, 18 Mar 2026 13:29:47 -0500
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
From: "John G. Heim" <jheim@math.wisc.edu>
Subject: RPItalk hardware speech synth project
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: CH0PR03CA0076.namprd03.prod.outlook.com
 (2603:10b6:610:cc::21) To BY3PR06MB8195.namprd06.prod.outlook.com
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
X-MS-TrafficTypeDiagnostic: BY3PR06MB8195:EE_|DS2PR06MB10768:EE_
X-MS-Office365-Filtering-Correlation-Id: 3384551a-e3a7-4a12-094b-08de851c5619
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|786006|366016|41320700013|376014|1800799024|18002099003|56012099003;
X-Microsoft-Antispam-Message-Info:
	zBamYPEqHdVjbtsAm8X1t5vPyAzwjNwpyiOiDbrt3benrq8gWB4qFPzGJexH3p54DRI5ShJDabjTZZ8JBegRP9o5wAgrXipYn++wXjTXuOgG13wKHagh4l531q4qZzfeNrpS+bC7OQz/lyzTycxYSVYlH+yanrlKz0PlihBEvbBLbYE4fG7+eY881B/roM5vT656DoAH6HbyqnHpIE8zg0OeYk8v04+rbLc0/quEvaISc31IbzyNn0NKF6FYeZcX5q6mRljlp8UwhWzfwwMhgs/1CxReBCviv10g358izs3nUi9dZTozBi5hvOLbGAuS7N/zZoPxizuFwNRzb0e5pFX5BSYCw1gcUdk9XU5ZAPnJzGn7ILqpdVUh8yEVAVVKv/miz1D1sQYbkL9a95+X+CaJx8r9ADaCjXWFBeLcTRgw29s7WrCXQoW7vqLPmzVrbDcl+W6inqKIyns5ekPeyxgerULp3BCdZdopMcVLICuFO1w1y/s1MUKOnm4OnoOaqiCeSpR6nI8C5WI6FGGoaTrlliuEkEEakbQjhGEWhTP5Y/xwLDJavM0wL58ss076OvI/tScIJdlHHipuef/OyRqDBWm9zHN3BuwjS7kLvekfcfSvtFzZnEFeMPSdNV+cjJp5QE1Tb4BT48q5r8ZiTJOOGOya6JAlVkGB2vBnclUFxMm7fmIxvLwvtVs41KciM9GlQcsCkL0aDiokg1Q3wpBRpW1UwIWd3hT7a+SCb9U=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY3PR06MB8195.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(786006)(366016)(41320700013)(376014)(1800799024)(18002099003)(56012099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?WGx1clY5TTJOT3BMT2t3SUw1d3pPYURlZ1pMTjR2TTQ0QVNOWFh6NlhiVEtu?=
 =?utf-8?B?VzBSRURnbmd6MEpaa2pFRFY4cWRYbjE3NTdjdW15NG9vRFpuM2UwY1VmaTFD?=
 =?utf-8?B?czNlcW1KT2dKTDZVVGorWndZa0k3dzJDSE16cmNvbEpWajlyMVdnT2QycmVu?=
 =?utf-8?B?eU1VdjhROEM2SmVaOHZjWTdESGFlcmxaVTRvcnYyaGFuc3h6MVdBaWdFL0sz?=
 =?utf-8?B?T012cVJHSXlVeS9XNjlDM21UZU9wNmxOV1RpS2UzWW9OZ2VhQTg5UGdtS0d4?=
 =?utf-8?B?NHpiUHV4T3NsUmRqQkxOeUdLRTVOaUVmMFR4NTV0UzF3dER5QU92Yk5NVTBL?=
 =?utf-8?B?dDRWa2loMXAyclNhYzVNYy9aQkJmUlBZaFBXS0NzQ280N3l6NlNpZnRYaDdS?=
 =?utf-8?B?ODdkZ2lCUk9ESDEwSHBHcHJLWjREeTJCL2trQ0JLQWN4Rnc2UGRmZTdIc0ll?=
 =?utf-8?B?NmcxMVZkYXViVlFZaGYyT28wWGxaUUtDcmNKYUVYeXpML3l4OTY4RStFNUtT?=
 =?utf-8?B?NzFaeHRjSzQwYVQ1ZlcwdVRGL2wvQlBkS0VDaTFCV212YlZtNzZzellVOW00?=
 =?utf-8?B?MmFuSWdyQkhIa1lFVGJjQUhQY1QzR0ZqaFFySXhoRmpkRllZUVJTUDJ1UUM2?=
 =?utf-8?B?VERWK1BLQmp0WlppWnJWNUJVZUVVL2RJNGVML3F1S0pWN2x6VGE1OStYb01C?=
 =?utf-8?B?NzFmd2dHeC85M0VwelRUTGczak9EQ2ZUMTMvU1pIWkVoWGgxc2hZRnN4dDU0?=
 =?utf-8?B?dEI5SlNwb1ltWHBiNHpVQTZYeklCN2U5RkZmQXRFMDNnd1NBNzMzSkdMNndx?=
 =?utf-8?B?R2tvckNTQzkrSWpDTjlqOUJobXExdmxISXZSSHg1V0Y3aVMrWTRDOS9NRUxs?=
 =?utf-8?B?dHdVNmpjRDdQTkJ5a204bGVwUDlmYUEybFphU08wMHN4L2l2SVhwMEp3SVhE?=
 =?utf-8?B?dEZlOXg1Y2JZc1ZyYlF1c1VPcTNteEYxL2NpUGdsTzdNZzVIRUQ0NVN5eWdL?=
 =?utf-8?B?aFRtNjU0WXlKUXJXVlVlaFVtdkRuZkdxbUtybExwTnFZdFdVR250aGpCMmhZ?=
 =?utf-8?B?Z0phT3A4WFZQZEFyYy9pN25UOGlWRFNnekpXSllGYkJ3WWhVSXAvWHZTZHRs?=
 =?utf-8?B?Rkg2NnFtSmsveWliUCs2TkUwV1NYWTFaMncwK1ljSHRpOTJVL1N0cTErc0R2?=
 =?utf-8?B?Y01lRVFMNmx6bTRzQjBieDdhVnBwQk9ZRGVtdWRYdDEvaWluakFNalVBQjE5?=
 =?utf-8?B?ZWxGdmNSWDF2eFVtN2JuSDhYTzU1WE5yMFp4dVlvNEc5Z1ZVd3VZM0k2S3gw?=
 =?utf-8?B?K1NrMVVFRFRlTHU0OHlPRzcwZ1pBR0x0TVB3TU1WYTJoV1U2K1JDemxpakRj?=
 =?utf-8?B?Rk44SS9qQjk4R3lNaTlqamJHT3ZHbngxTkZrRnkrazZGcG4waHFvQUx1RTB4?=
 =?utf-8?B?UWhUeXI0dTZscEIzRHpTQ3gwMkNRNnFXcWRHdWNuUXhwNHRhVjZuYjgyMHhK?=
 =?utf-8?B?SHhUN2V1dzV2dC9VOHZFV3R3M1N4R2NlVHRHUXZlZVdEc29MRXZLRHNoalMx?=
 =?utf-8?B?aW9ZVGZ1ajA1UXpOZmpDUmM2SkUxN2FCV0hTRThrRmhiN1E4UnJjaURydGkr?=
 =?utf-8?B?eW82YlQ5VmdDMFlNRGM4WnZ5QTd0THJ2ekZrcE9oNWtIRGdyS1luTmNSSExu?=
 =?utf-8?B?aFJsUWVMRjQ2YXR1TmNhWEVhSnNxU3Uvc1U4aDltUmdWcjFweDZ2bWJyV0hs?=
 =?utf-8?B?SEZncXlDYWhsRTBEbEQ3Z1RQTnVqdnNzQmNHam5GT1pPOFJSc1pVL0NTYkFH?=
 =?utf-8?B?b2dQMlo5cW1LSVJKZmdhRS9vWUp1RTJEa0YxTGNIUjdQQzhGR21vam0rMVNq?=
 =?utf-8?B?cWtvNHVqQTAyVm1SaXNNWk5Cc0Rtb0J6QTB1dHpxYnUreiswN0hjRCs2U01L?=
 =?utf-8?B?Y1ZUWFVXY0xnam83cWR1U2pLa2xlWFR1REpEUUFIZ0Q3M3VKaEhkQXJRdEpE?=
 =?utf-8?B?bWJ4VGM0V1NYQ1RxSFRFSEZ3NDV2cmdJRjVMc2kyalJoL1BCbVNkNHRuVDdJ?=
 =?utf-8?B?RkVpcGJBcG1wd3d4MEt4SHdiSFBIRmRVRlFKWW9WU3h6VDBsVXhnaVRZWnhE?=
 =?utf-8?B?VXR2NnowNkhaQ25ndjFDcVlTeURzQUVsdmk0cm9BOFdVdVpFeUtmZXkxeHM1?=
 =?utf-8?B?c3lnczc2Q0VoZG4xNmhCMU9tV1M5eDFrRDdMYW9JK2NPaWhlRVo3cXhyVmlP?=
 =?utf-8?B?MXV1Q3FPTzdxQ3lUenJobHJtMUxjNEkrcER3cmhqaFk5UlJsRDNOVHhRN1pZ?=
 =?utf-8?Q?vpaGHZMRI/AkCiDgo8?=
X-Exchange-RoutingPolicyChecked:
	fa0t1otVpivhbM4VcnKHs1AulxAQd+QfDsh6p1cVuptDcNt9Z5aRmObfCaPwZAlJfTcdFBqai/9tvDZLxXUmJTeP5bmwVfnSpCaLZE5BVLmWwizOLowiVPwjEcUwHYMLXVPoegaa7WBkPeBhsiSej70Pzm+ui8eVJtRzf53f6pCCKX/AkOJarJyQjveZVf4XueudneA57uiWQrqCAj1ewm96eE/vj6SSOeeB2FkvnFhMG7irIWHf1tYAQxFEcVTyRNhdLb1N9kZNHKcq8uFeAyTXXGqZ+kVr59b3SXOvAgKKuzkas3pEcqHohTICfyO6MpmGM2/s3L2/emksIFiRNA==
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: 3384551a-e3a7-4a12-094b-08de851c5619
X-MS-Exchange-CrossTenant-AuthSource: BY3PR06MB8195.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Mar 2026 18:29:48.4453
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9n8diRX4Gm/3diAsvirckKRwPob2jKPn+swbwWTl31qiFpE8p7tPR8U4E/6a3oiQ
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS2PR06MB10768
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE4MDE1OCBTYWx0ZWRfXxnQENcyhBWJV
 6MYtZ9HxV8pX9meKvnLdt2cpWTP6DU0Os1vyImYTVQ1DRr3NC72MQaKqspFLzLznF8Nr9TPE2Q9
 zSwvsZSYKacFdNiBXbsTRinyWzEANqaUBugeBQG6VASkbE91qnDdaYfz8PjFwXsiZI7bdw19QJw
 QbCBiB7P9Uwcg2Sgly5C0BqokPD1z6yeDb2zWWpung2XF8CeML6aYXKFOuwf0orQf3sMN2Dx0h5
 Bbp3MOIUwOrakS1ZSh96qdFuhx1nHlsaDfjFRAbdOKe+OXbJWQkp9Gs+kTtC5OQQ9l3WyBfqkcE
 aulGrAXVKsk++4j3M1FKvTl6ARW4urH46ZYQfn+FLjf8FA1IeDG96DSrF+WphDl3d5d+u98AGxr
 BNM6+S1px2wMT/yax4VCoHiwn2fDJGl0BUYc2cxUu1uPrygsNJHz24zt8HYWCT24aehc/e9Sh8i
 zSVE7yvmIJsKZo3EC8A==
X-Proofpoint-GUID: 9NtcY1v5wdZvHHZs9cs_KfQX9cWHDBQ2
X-Proofpoint-ORIG-GUID: 9NtcY1v5wdZvHHZs9cs_KfQX9cWHDBQ2
X-Authority-Analysis: v=2.4 cv=PfbyRyhd c=1 sm=1 tr=0 ts=69baef1e cx=c_pps
 a=ImwGUT2bfrWU7DBu6bNfJw==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=lre9DRYkaIEA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=ZyELlZqCvD1aXIDzc3I-:22 a=zWdwx1QEt1O6EIhiA0sP:22
 a=DyznqomoAAAA:8 a=DVhhoNsjYfKPgPWtxU0A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
X-Wisc_ValidFrom: true
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-18_01,2026-03-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 bulkscore=0 malwarescore=0 priorityscore=1501
 clxscore=1015 impostorscore=0 spamscore=0 suspectscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603180158
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5
X-Spamd-Result: default: False [-1.89 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[math.wisc.edu,quarantine];
	R_DKIM_ALLOW(-0.20)[math.wisc.edu:s=selector2];
	MAILLIST(-0.18)[generic];
	RCVD_NO_TLS_LAST(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_RCPT(0.00)[speakup];
	ASN(0.00)[asn:5645, ipnet:206.248.128.0/18, country:CA];
	RCPT_COUNT_ONE(0.00)[1];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[math.wisc.edu:+];
	TO_DN_ALL(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jheim@math.wisc.edu,speakup@linux-speakup.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	TAGGED_FROM(0.00)[bounces-1564-lists,speakup=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[wisc.edu:url,math.wisc.edu:dkim,math.wisc.edu:mid];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 5B74D2C16E6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Okay, I've mostly wrapped up development of my Raspberry Pi hardware 
speech synth project. From now on, it will be upgrades or maintenance 
releases. Instructions for building a device can be found here:

https://people.math.wisc.edu/~jheim/RPITalk/

The biggest thing yet to be done is to get my  package into the Debian  
archive so it will get into Raspberry Pi OS. That doesn't depend on me 
though. I've already taken the steps I need to take to get my package 
into Debian but I haven't heard back from Debian yet. In the mean time, 
I set up  a Debian  repository on my own space at the University Of 
Wisconsin. Installation can be done easily via aptif you add my 
repository to your system.

I've tested this  on  a Raspberry Pi Zero, a Pi 4, and even on a Linux 
laptop. I've used both an OTG (gadget) port with a plain USB cable and a 
regular USB port with a USB-serial converter. In other words, with this 
package, you can use any machine running Linux as a hardware speech 
synth. You could take an old Windows laptop, install Debian on it, and 
use that as a hardware speech synth. But I am guessing most people are 
going to want to use a Raspberry Pi or similar device.




