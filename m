Return-Path: <speakup+bounces-1592-lists+speakup=lfdr.de@linux-speakup.org>
Delivered-To: lists+speakup@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oH/JDG1J8mnOpQEAu9opvQ
	(envelope-from <speakup+bounces-1592-lists+speakup=lfdr.de@linux-speakup.org>)
	for <lists+speakup@lfdr.de>; Wed, 29 Apr 2026 20:09:49 +0200
X-Original-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 221D7498B6B
	for <lists+speakup@lfdr.de>; Wed, 29 Apr 2026 20:09:48 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=math.wisc.edu header.i=@math.wisc.edu header.a=rsa-sha256 header.s=selector1 header.b=UqUp0F8y;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 99794382A65; Wed, 29 Apr 2026 14:04:25 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 6ED82380A65
	for <lists+speakup@lfdr.de>; Wed, 29 Apr 2026 14:04:25 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id EECAE382290; Wed, 29 Apr 2026 14:04:18 -0400 (EDT)
Received: from mx0b-007b0c01.pphosted.com (mx0b-007b0c01.pphosted.com [205.220.177.71])
	by befuddled.reisers.ca (Postfix) with ESMTPS id C6415380A65
	for <speakup@linux-speakup.org>; Wed, 29 Apr 2026 14:04:14 -0400 (EDT)
Received: from pps.filterd (m0316043.ppops.net [127.0.0.1])
	by mx0b-007b0c01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 63TH8mDl3336954
	for <speakup@linux-speakup.org>; Wed, 29 Apr 2026 13:04:13 -0500
Received: from cy3pr05cu001.outbound.protection.outlook.com (mail-westcentralusazon11013011.outbound.protection.outlook.com [40.93.201.11])
	by mx0b-007b0c01.pphosted.com (PPS) with ESMTPS id 4dup4ercr8-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT)
	for <speakup@linux-speakup.org>; Wed, 29 Apr 2026 13:04:12 -0500 (CDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=X8QiB4VHFzFU18OaFFyKfZVswIMBIIQZWgnX3vAz73Q21AGtTI2PEs3fk03ko08o8KhsJSVKmBbnqi4K0e53PvGtIc+SPiDzaSXF87dxwmBNGyBL399FI5DWpUesb/Eil7XpliRC9Rvzyo6HK912BXOriwZnLAA7I+DuXFIpRfWnpVz+qMsVrbGST3F+zppx5vFIrt6R8XQ7viR1LpCJ6qVomGF4Oy200cnDZ8o+yvzwtTu6ZpuzpQy+x2YMSZ3lwQhPMMUAsXUTdSMd56iMEmpOyDNehqUY3X/ZJbJRqoa8O8/VzXa91F6tNdUxD7qxFHl8I+pEP3IyVi9ZqbG3Bw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lE4c43rjVLmrjr6Xy0ua3BmUK6HB0dsHizZHIYlq09c=;
 b=uY6WuBLBDccRCRHeVGQLYDy8F8sUnkXNqzsBcI3pD8UOz2Cj/wbY58Y+fq3DqnSTdwopMDmbZVgraIaxLkzBAShLu4jk9FmoxNMvzEnA0rJ8XpM/iYxZZm9PG2OnvBvxhLA/tz8mdziftoP4j1QiV7LYfbSr3ZkFlGFsPrNeUWP7ph9bW4rmkKpL52upB6Z+yhSazk1V0UHPR6VrpWOLggh2JN7E5IZXS6I4SYoHvoyeAUYUaVicB3lw8u4GLMggaiVFXwcww/sBkHIJlfY/DlHox4V+WrqRJYdV2J2L/O+0vdTLZ+wf9QELWUzLcxemhHYBGvUhqu29U+/+Iq92Jg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none
 header.from=math.wisc.edu; dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=math.wisc.edu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lE4c43rjVLmrjr6Xy0ua3BmUK6HB0dsHizZHIYlq09c=;
 b=UqUp0F8y3i/S882xLmqspCE6uezFZeNuBy42sCiQOICCmTwIIdsGU1KVdy+FZKZL+MESbinxSccXncZuaEZfnbruk2ctUwcFCJEyu6L48oAIrE5HLhx1/env5v3h95suUdtYTSLG6ZQtNPIl4jF7G3+PYCD5P7y1mXmfyfPfUolUdzXfUHuy0/srUmdoxe0rOBxLxeqFOrFUH6G6uY/55ecDLIwVPxakTdcVW0UuG2maZWSqZNC4grFVRtH7JAY6Nqgj+wem82S6sOlu4H9q9jNRwgp52wE6iYSJ7qMSlYswuUXUgWgYej6KBxYKkxYXp6kuW1NYcnVFudD5CF5dbg==
Received: from PH0PR06MB8206.namprd06.prod.outlook.com (2603:10b6:510:c2::22)
 by LV3PR06MB10075.namprd06.prod.outlook.com (2603:10b6:408:23b::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9846.26; Wed, 29 Apr
 2026 18:04:09 +0000
Received: from PH0PR06MB8206.namprd06.prod.outlook.com
 ([fe80::9d74:8708:bfec:b7b9]) by PH0PR06MB8206.namprd06.prod.outlook.com
 ([fe80::9d74:8708:bfec:b7b9%6]) with mapi id 15.20.9870.016; Wed, 29 Apr 2026
 18:04:08 +0000
Message-ID: <9a2d720d-2a18-4fea-825e-c1f45e905e74@math.wisc.edu>
Date: Wed, 29 Apr 2026 13:04:07 -0500
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
From: "John G. Heim" <jheim@math.wisc.edu>
Subject: Update: Rewriting docs plus RPItalk
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: CH0PR13CA0024.namprd13.prod.outlook.com
 (2603:10b6:610:b1::29) To PH0PR06MB8206.namprd06.prod.outlook.com
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
X-MS-TrafficTypeDiagnostic: PH0PR06MB8206:EE_|LV3PR06MB10075:EE_
X-MS-Office365-Filtering-Correlation-Id: 61a43ce0-fdec-4488-eedf-08dea619b5b4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|366016|376014|786006|41320700013|1800799024|18002099003|56012099003;
X-Microsoft-Antispam-Message-Info:
	YmfdeaEv8bQF0YVfLuwV8NXSm8ZED5SHbReikZGzEaTQ3X6g1fUzeuzc6Q22QmfLz5E8dX5fZILjahKluZ75pkYgpQW1tE6DO+CVirbtwoPrq2pmp76n/zQ24oKBCaepy3vj2WHKsc2sn8HCL5/tL6GrPf+0lmvP3US7YQYXI1efrc9x4bfCk5EMPbQUawKolcysLmAVWJUG6kLPnYTGnx/C+AlgTNaoyMHPL09Q0IpQVrvo+R+s4RbkjF9/8vAkGofMF9DbCS1ojxJ6xWPZFIT4lcBA5Y5+r76xv8fGLfXaqRemBdTpbLWDpagj53aTt6Ep8d1P6vLlJho/V0UXW2JBmF+6uP/TGqX4xz43IyArbEY/d5WhANshSBo5UB9pNk6fWaVxs2jP5zbkHvyOW8AfSBYvwkvJ8v3dFGE2pvdH4JQzu6k3AAxOFzDfr+kGYbDWtmCgZMpyESZ7HZZTtoK9QceyrrnodnDnna8NQiw2CyWX4Vio3nPZ379Obr/colN29pQuvMluw2OrHQXIk6avn421l+5VlGJbegSZDf9khewkn07a63JUn5FeA56VL3f/boeoSIS3X8BlLUA+x5yW3v0vY5xW1XarR4N2yTcT9wElNShgToDrt4BuziGQwfPoAzVVtAceqylMl9NxJzrA2k/PnjCfQRNEqWFQvyT9lXXwZNcY+3j9+TBbPWPeye5rJx6gsMTk67wa+wocXfBpe8PKPXOfQCI1XouB2ww=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR06MB8206.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(786006)(41320700013)(1800799024)(18002099003)(56012099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?WklkN3NMZCt0U2VtOE5ZM3YwU2dZRDE3SGJvODlnanZ4MGx2bTFRd1VTRUEx?=
 =?utf-8?B?TUNDTjUwZmkwUTIxY3lrSjVDVWxwUUJ4UFJQVndTVFFCZFpGOTlQcEt3QnBt?=
 =?utf-8?B?OWROVnhGcEVxOEZnMmdhZjZQSzRzSnZNK01EOFFRUUh0SFV2cTVUR3piRi80?=
 =?utf-8?B?UytkeGdOWVlMUnR3NmtiY0xRMENQUHJuNGhvUW9Qa1NpNm1HSm5taEU5MFNK?=
 =?utf-8?B?Z1pFRHQ3VWozYTh0WStxMHRGVm1vS3MxY2NkL0pDK25uTXpqQ1ZUaFpBWTdM?=
 =?utf-8?B?VGJLZjZtTE5iVlFncUR5WmFZYlIrOWVOQW53Tyt6TXVlRWRCYnB4dWRneGk1?=
 =?utf-8?B?WHNNdUdrMzZiWmhTTStMMDdkWlZkL2Z2ejRwZFFIMzZ3Mk00SU93Q21yOEtW?=
 =?utf-8?B?a1JTdjBBcHZlZ1JuVnoxWUNjNFBwbHl6RXhmZVVJMDYyeTY4Z0lsdHRQYk5j?=
 =?utf-8?B?QTcybGFycGRlazFLWGxUa21sK05tZU9LUE54a1VxVUJhbkMxV3JndHcrNzVN?=
 =?utf-8?B?SDFwbzFiZWFKNXN3S2R1V3EvbTNnT3VFWTZXUjFzbmZ0SHFRSHo4dVhabnFi?=
 =?utf-8?B?NVQwSmo1b29oT0MveGo1NWFjZGxsYk14dGJpT2RJVms0WDN4UEhMQjlXSVJu?=
 =?utf-8?B?MkVuQytscC9mV050MVVxVnF5OUkyRFkwcXYxb3UxaE02RHdXWkw5M2h5WHBI?=
 =?utf-8?B?d1lXbmQ2Vk1QL2V0ZHltd1V2TU1pb2tGNFJWZEZCdExpZm1pUnZXeHYwREY1?=
 =?utf-8?B?VGhldERkMm1jT3FKUXh4UHZ2aEpCYU5hczR6Y1MwTHp6SHlDeEpnV0pPNThN?=
 =?utf-8?B?a1NWbDVjZnF6aFFIbk9mL3JpRFJJakdCQ0dsS3E4dUxTK1NtWHo5aVNYVjZr?=
 =?utf-8?B?UGp4L1hQVmtUZUNJd2lTRDBTTGFSMHlWbHhkYXBKeHJPb0VaMjdCa2pEbFQr?=
 =?utf-8?B?LytBUVl0SFRGU1E1a0NzU3dQajN0aFl1V04vb3Z3YURHVnRQY04xdjlUUzha?=
 =?utf-8?B?WHVDOUxBQmx3YjJocjJkeFFBUTNlaFZOR1gyRHkrQUIwNXp4OWk0cG1jTU04?=
 =?utf-8?B?bk5BU2U5Zm5xZXdzWWp5Y0lhL3l6eVBnaW1mbkRaNURNL0lNN2YweEptTUxS?=
 =?utf-8?B?WVFIUGRndTlOTFlqM2JhcnU3d2syaStDczl2MWkzbTNQNEdPdFJhQWFtYTRH?=
 =?utf-8?B?MXg1SmJFcnpTbEJnYmV4SVJIQzhxMWpSU1FQeGUvR2VIMVp6clJFSGFNeFBB?=
 =?utf-8?B?SnlxMllIaG9za2svZk5ZbHBaM0liMVdqOEpFaFpKTGNSSlF5b0t0Z2RIZTRi?=
 =?utf-8?B?TUprcjhVMWp5a0l1eWpwc2I5bFZuWkl0aWI3SkVZeDl0cDFOeGpGbXEwcXBL?=
 =?utf-8?B?YXdSZkdnb1gzTEhlQ0lmRS8rdTUwdUlmVVE3enlzVHlhY0taRnNlMWZXamJx?=
 =?utf-8?B?NklUc2VHaHdJVGdRNVBiZDVmdytuMU9nS3l4Zk9OazJ0Zi9zWk9PS0dHdDBR?=
 =?utf-8?B?UktTeWRqL0ZZTk9YWDBVNkFJMEthN1BnUlVQdUlpTlZWS2dRTEUvOUI3WmRH?=
 =?utf-8?B?UE5BeUdaWWxjdjExUUE0b29lWVI0UjBhSGJwN0hRUjJGQzd5WENYb090L2FZ?=
 =?utf-8?B?YnRJOURlZlVrSFp0QndDaWNkS0tyRGdaR1dGSFNZSGppSmZ4eEE0U3ZEZmRl?=
 =?utf-8?B?eUdrT2NTQVcxRDJMZjVnY0U2dklxMkdkWHQ4WHl5QXRSL2hPQ0lleHF5bXRF?=
 =?utf-8?B?YncwWkVTaVVDbFVSdjMzLzEzYTdSaUg0aUtPYVdZRExBdnBNc1RlS1VQMmxq?=
 =?utf-8?B?bzN2dDVrYUtJZkxLS2tYUkhBdk5Ebng1M3Fnak56aEdqSGtpZ0FBWWFESzVt?=
 =?utf-8?B?N3ZkME82SkNmRTkyM1hSTFFCUS9hU1lvaEtmTi84TWx6VWRsamJPK3Yxd2Vv?=
 =?utf-8?B?THdlUmZuditKSmU1ODNjaUFGYm1hTVd4ZUFwc1NSb3VNUkJhYkg1M2FVM3BN?=
 =?utf-8?B?SFZrVWlMTnZtRUdwRkpKaFh5SWx5azU3MS9PSGE3YmNyZVlyOWVVN1A1UlFC?=
 =?utf-8?B?c3FOMjA2U21NcFJaditDWFNNSXQwRjlCbkdmMzRndDFUekJPdThlQ3prVEpt?=
 =?utf-8?B?UzkyZ0xaRWhWaGtPT2JPNFZuTHVYZTdMSlZKYUw4bWFtMENHTnh3OXdMdjY2?=
 =?utf-8?B?L3VEWXVPTldaUnhyNlBIWjhpak9LS2dJTzNPTXNIRUZkNVZJUEhvTmh3QkZz?=
 =?utf-8?B?SXN1RFd5TjkwZVlld0RPc2h2V3pWOUhRVlhrYmwrcTAxUUk1U0tOUHNlYjJy?=
 =?utf-8?Q?cwKJ7GG5CZHYnr473e?=
X-Exchange-RoutingPolicyChecked:
	Qj0PJF5jM9mrIU7mBs8pKpcvH+lrlLdZdcbdqn27fmjHpT/UfDKHvpWZaeOSQDbGmId8S9hnNmb6QBHyB8I0v8mChfFuZb29AX94jWwO4gNBz84GvbxajFNiCvrFGP6vfmt912yPzA0FaIiWseYUX9rNDx5wx9EJyJg1JU8m5giGUc/OVlICs+z5QqcwUTG9459dXPCGV7/wzpqZDm5e+REWnT60Ue662ThBPcxV5J/asXhA1/OmWJTdX8IlL4HiATtiex4VxA4+p74kBciNslR1S08fGNoZwpJz4jprQhKI16UhcTgPibi13ih/afJUBuzbITJBI0RCn6drIDb2Tw==
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: 61a43ce0-fdec-4488-eedf-08dea619b5b4
X-MS-Exchange-CrossTenant-AuthSource: PH0PR06MB8206.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Apr 2026 18:04:08.8788
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: k8/6r7aR0rMMbiLFrEw/6l/pGE0qbJ/OTZImwUeKNdOtV8HK+lPuznEkLmbnPC3X
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR06MB10075
X-Authority-Analysis: v=2.4 cv=Gp5yPE1C c=1 sm=1 tr=0 ts=69f2481c cx=c_pps
 a=NzAOMTrFL2nmaFUJOsdohw==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=A5OVakUREuEA:10 a=lre9DRYkaIEA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=ZyELlZqCvD1aXIDzc3I-:22 a=UDYdy8M5e18q1hqNPuRN:22
 a=PUA35OCRAAAA:8 a=Y0AfF8nJAvhgMFebaQAA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=FMZCDuj7j0E-gZIBqkhG:22
X-Proofpoint-GUID: IWn65jwQ9u9uvQ7JuG6RMz5AmxWs17in
X-Proofpoint-ORIG-GUID: IWn65jwQ9u9uvQ7JuG6RMz5AmxWs17in
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDI5MDE4MiBTYWx0ZWRfX92m57lrS1a5s
 q9NMNSl/ncJWMUPWoxo2F/vn3sBwTvJo/BnqqgqUJiGLqbO7EKcglu3urttdHf7+9Okmurt1gV6
 87fALRJA5oVIR6eSo85DFWz+w1WoBF0ZVySRtr+o2n0v8F5Ws4AtUh8WvNU3lKScLmG1JYVg8l7
 rDxNTYqmgYunffjezIiaUy5nbAZhlVGdzOc1qLzhTulP3z9oeWjmDX4ckTuooHdepQ8Vh4cEL+w
 B1XFA3oG7FOd9vpPt6wPSbGk7JBNNWS7znnDSdbafmhnYOaTlP4jM/P+FVa3WYt9vF1CgNPf/8H
 08zYGiihZSmtTGqW50iEjGmpRzVcWz946MWVtNFvtfMw7q9ykZGZRrMZ52t0f5zF6yNE1v1CwH9
 Xn/Vvfw5BPdHM4z5CX/xKDkLYEyZSeDZgjwxnRPwqwiz5CjZK77z2uZDcu/8WKns1dd508Abwa8
 e+xBwVgnCXxc6rcbDYg==
X-Wisc_ValidFrom: true
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-29_01,2026-04-28_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 suspectscore=0 adultscore=0 clxscore=1015 bulkscore=0
 malwarescore=0 phishscore=0 spamscore=0 lowpriorityscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604200000 definitions=main-2604290182
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5
X-Rspamd-Queue-Id: 221D7498B6B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[rocstor.com:url];
	DKIM_TRACE(0.00)[math.wisc.edu:+];
	TO_DN_ALL(0.00)[];
	TAGGED_FROM(0.00)[bounces-1592-lists,speakup=lfdr.de];
	RCVD_COUNT_SEVEN(0.00)[8]

Yesterday, I compiled Speakup into a kernel for Fedora. So I'm ready to 
document that part. I intend to point the reader to the Fedora and 
Debian wikis for general instructions for compiling a kernel and then 
just explain the extra steps you have to do for each distro to compile 
in Speakup drivers.

I realize there are a lot of people running Arch but I figure you don't 
need me to tell you how to compile a kernel. If there are other distros 
we wish to cover, we can add those later.

By the way, my RPItalk package has made it into Debian testing, forky. 
Thanks Samuel. This means you can turn any Debian testing machine into a 
hardware speech synth. I am testing my Fedora kernel with a laptop 
acting as a LiteTalk  hardware synth. You can  use a machine (laptop or 
Raspberry Pi) as a hardware synth but you need a USB to null-modem cable 
like this one:

https://rocstor.com/product/usb-to-serial-null-modem-rs232-db9-serial-adapter-cable-with-ftdi-usb-uart-chip-6ft/

I am not sure everybody is following all this. To make sure I could 
document the process, I recompiled the kernel on  a desktop machine 
running Fedora. That machine has a serial port -- which you must have to 
get Speakup to  load via kernel boot parms. I recompiled the kernel to 
include drivers for the LiteTalk synth. Then I installed the RPItalk 
package on a laptop running Debian testing and configured it to emulate 
a LiteTalk. I connected the laptop to  the desktop with the 
USB-null-modem cable I mentioned above. The Fedora machine thinks it's 
talking to a LiteTalk hardware synth and since I compiled Speakup into 
the kernel, it starts talking upon first boot.

Capisce? me entiendes? Verstehst du?




