Return-Path: <speakup+bounces-1561-lists+speakup=lfdr.de@linux-speakup.org>
Delivered-To: lists+speakup@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QP87EgvLqWkgFQEAu9opvQ
	(envelope-from <speakup+bounces-1561-lists+speakup=lfdr.de@linux-speakup.org>)
	for <lists+speakup@lfdr.de>; Thu, 05 Mar 2026 19:27:23 +0100
X-Original-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 1F2AB216F54
	for <lists+speakup@lfdr.de>; Thu, 05 Mar 2026 19:27:22 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=math.wisc.edu header.i=@math.wisc.edu header.a=rsa-sha256 header.s=selector2 header.b=gyWm/mat;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id AC20B38253F; Thu, 05 Mar 2026 13:27:20 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 89BED38195B
	for <lists+speakup@lfdr.de>; Thu, 05 Mar 2026 13:27:20 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 4356B381985; Thu, 05 Mar 2026 13:27:14 -0500 (EST)
Received: from mx0b-007b0c01.pphosted.com (mx0b-007b0c01.pphosted.com [205.220.177.71])
	by befuddled.reisers.ca (Postfix) with ESMTPS id C64AC38192C
	for <speakup@linux-speakup.org>; Thu, 05 Mar 2026 13:27:13 -0500 (EST)
Received: from pps.filterd (m0316043.ppops.net [127.0.0.1])
	by mx0b-007b0c01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 625F3eY83713455;
	Thu, 5 Mar 2026 12:27:09 -0600
Received: from mw6pr02cu001.outbound.protection.outlook.com (mail-westus2azon11012029.outbound.protection.outlook.com [52.101.48.29])
	by mx0b-007b0c01.pphosted.com (PPS) with ESMTPS id 4cqc50sw04-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Thu, 05 Mar 2026 12:27:08 -0600 (CST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YTzGdFXqu2jG5JKYewPACKRQbAGHDrZfZKoec9p+FFZV57QksDvUd2TsVi6khePR8wdd+iWtN/g2UFAjUqmBgHz9CLbWWs70dXQvToOPvg+VhTGulNtbl1FihjUidVCq7t6OE9LYFJCcgFY7Xxk+CxNj6j09v5u+e8yDell+SMeSWTua7KQgpE3eNflPaR/hbQf+ur6QYSxLFI4Wt3vLwu5ziAvp6so72pEuRKNmcpGDLYWPrsi60Msdkbr7mgnvNodGgHn8qr7FLFbhExc88fNlbTBpQ/pwoGp+k5jl3jEk00y0Y8sd0RfjdDuKL/OYu3X2DMJwiIDrrahm6nxAXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZIyvIxKB2FkXdtgnPuM3CL3oWRNwf99XXsEePLG/Xvk=;
 b=NIJ59EVtIht5H8d301jQftLsTWCcOMb9Z3kc5OQlhFN+Fgae7ApoWiGyQSMWCaMNDQiKSgPV3eZsIu215gehEycgWEowqVAC0JUc9nQdxegX3iVF4/aATnEkm13WF1FYT0O5lcHXLKopy9FNogm/jNwJde0PO+Q4cf36wiCh3kNwjbycMhS0OQzmEptkpv4GdT5amHAc+gRMNi18gO6mT53UWCSyK8oCQ8Zomu1wGjFooqjJBaMSk/OmOKt18bV81Lmjl3gOTsN22lJ6ja4TnDFMx7VFLkK4qxy3wrVw1pRX5dCAu4nLocBvzC0OkP+IPKrku5nCex6WQNf6NUsU9g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none
 header.from=math.wisc.edu; dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=math.wisc.edu;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZIyvIxKB2FkXdtgnPuM3CL3oWRNwf99XXsEePLG/Xvk=;
 b=gyWm/matwpShzE7p4VAYxkOFKdOWp/ANAhHrvElZGPVyEgw6i8L/mgNbJaGSP0e7zuGtmSTNmvkGOr0klbubO8ixtEmkajkC+YcwYt9YXI4tpxnLe/+H4KumfCUT504HtfS4TGKYkF7QrK9r/CBiqs2w1zDldlTBSzd7HzU1+xTzf5KCe81YyKLfKiLhNCjWb0yKb3KokdqprLHIbcEOdLDSRj2RJWK3Id44ViU1gqAo/hddcQ5sd75C/mS28yUN1PrREZwueXNmZIV5LDRfM+KA/hutxW8Tu3O3yniNNN0hMWSwYnMyLot2u1Ik4db65JGos2RtXod7hL9/3RxsnA==
Received: from BY3PR06MB8195.namprd06.prod.outlook.com (2603:10b6:a03:3ce::19)
 by LV8PR06MB9885.namprd06.prod.outlook.com (2603:10b6:408:243::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.17; Thu, 5 Mar
 2026 18:27:04 +0000
Received: from BY3PR06MB8195.namprd06.prod.outlook.com
 ([fe80::a7ad:fb62:4389:fd8b]) by BY3PR06MB8195.namprd06.prod.outlook.com
 ([fe80::a7ad:fb62:4389:fd8b%4]) with mapi id 15.20.9654.022; Thu, 5 Mar 2026
 18:27:04 +0000
Message-ID: <d4f15e15-ca41-4640-b867-537d5a9d918f@math.wisc.edu>
Date: Thu, 5 Mar 2026 12:27:02 -0600
User-Agent: Mozilla Thunderbird
Subject: Re: Notes on automatic load of kernel modules
To: Samuel Thibault <samuel.thibault@aquilenet.fr>
Cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <c9ca0abd-8b7f-4058-bb9f-89889c225b99@math.wisc.edu>
 <aam4HjeDHOUvNUVi@end>
Content-Language: en-US
From: "John G. Heim" <jheim@math.wisc.edu>
In-Reply-To: <aam4HjeDHOUvNUVi@end>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: CH0P223CA0016.NAMP223.PROD.OUTLOOK.COM
 (2603:10b6:610:116::34) To BY3PR06MB8195.namprd06.prod.outlook.com
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
X-MS-TrafficTypeDiagnostic: BY3PR06MB8195:EE_|LV8PR06MB9885:EE_
X-MS-Office365-Filtering-Correlation-Id: 32211936-4187-42fb-f7bd-08de7ae4cc9d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|786006|1800799024|41320700013|366016;
X-Microsoft-Antispam-Message-Info:
	iVoNJiWVZCdSf+ixLuVSP5xk68pkR+7RpEODR5V6m/6jxzh2LYUjBtell7T13K5352HE/n1RodIW1kp8g/1uubBsQHj7CWrPvLcX1ee8WWFC5iE89COSn7adX0aFlJeDmPGz/lnujH/cz97soPlNEtxNIJ0KA/exNm+JSNAUHO/SF1KWDY/F/WHwvkMmuE9QbWYmbAn6ngf29HvcpbnxGvkvPE7DnjDc37shgM3JH0nckfI3cgDDE4r+ECrjiYnH95y4s0W/w3UyzstohpEnqOQ5gI/oZ+pVKTXJ3kY/+lUrEgvsrdvlByT8XIXVOpOCxxqPEs40yyTncTHflg6d/Pi6pqYr1+rEb3icNi7DMrelYspGH6HKLPy1L1OVcM1TWqQ5LsYsqKSQ5LZN6bpKLdrVASTpVgj0jBZnuuLrWlFno7nKWQy/uH12GFmnAV8V7YBplNh8FKI33KTPpvGHqbv3l4iS58HYGdV0LkQar7Odsgsm+oVeQfUsW4GtmFI5ZINqN2wwNJBiIjmM7MUNE4vef4bQl5O2+9mpE4NTud2mV95p5mHzQBHKPxFe4D5amxt9kDNNt2p53HsXuMGQ5gnH3DINZNeOQRey2WIhNcpAJfePjJerl4SGv5X7f5wGAxD09lSmB4Y2zP6iNEN5yZvMorsZQnHVmK3Eep1mRslAZwLuKj0fp0edYyqPwuVGJ4XbvYSY0fgAPLgDKSJ1L9X7ry0Y6QiE0CkGlNZKUAQ=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY3PR06MB8195.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(786006)(1800799024)(41320700013)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?TXlkaUZ4M3pjR3hvVnVKcS9XczZWM1dNNXlBL3hMN05BNjUxdkM3c3JlV0Jz?=
 =?utf-8?B?SkVlc2RFT2VxNmp0RzJGZlRnRk41bWc3OFluVUtvMVp4TjhGR0MwbW1DODR0?=
 =?utf-8?B?d3IwY2lIS3Q3ZkxONEhySVplQ1VmK1RNZTEyU0FmM29pU1lackpNbGJscFRS?=
 =?utf-8?B?VThJUDN6WWFQM09lOVhIM2lYdUZ4RSttdTlIQXlWVTR3dGV1MUpEVVZOMll0?=
 =?utf-8?B?cGg3cS84Y1ErVUI3a0pvalBMbkl1NFFFQVlzdk9aS3kwcEljUG9UOXFLeWdK?=
 =?utf-8?B?SU9jeXRlZW42SUNJQmpNN2g3YVVMRzRHdDgrdGdpdDhnb2NzYWNXNFFVNzJT?=
 =?utf-8?B?TmlYNzdQeWQvMENjU0JEbUxjRUxqTTkveFIvVS9PUlZsS3NlZVVvTWVsSE1y?=
 =?utf-8?B?SkFyaWYvNDlueC9DOHZPU2xqNy9nTHJqQWRNVmlzSFBCYUNFT3lHWHFYcUMw?=
 =?utf-8?B?MlV3d1JyTGt0RzA4dFZmRjZBVm1WZU9iU1JVL2VSTDQ3MlozOTkyUGErbE5s?=
 =?utf-8?B?WFBDc1dHU0hHQXlScmVMOFhrZVMrLzFqTDVscHh6SldETEJZWUoyVXpZb0tY?=
 =?utf-8?B?NFg0UmRIWEMrN3dOVFNkUVBmdGZIYmRhcVlQQ3dZa0h6STR4TWl4T2oxYkFX?=
 =?utf-8?B?THNxUC9RMlIvUHNYVjRZYnpUQWlqMnF6ejlGalhtS0JGbkJTbUFseC9MWEpK?=
 =?utf-8?B?Z1pkZWVNbGxtYWt3Q3JJK1E3a1VLK2dGUHVwU0VRN3pVMWMvUUdoOW9QTDZp?=
 =?utf-8?B?ak10V3ROa0hzbFBnOHB6Y1lyZVZvRE1RY09sTUR1OEpSbm9UUCtoTVBYVnhZ?=
 =?utf-8?B?bGxhd1JzeG9sQ0I4YjMrWWp4QW5mblA2eXd0QmVKd2U1UDI5WGFyL3dTVDlh?=
 =?utf-8?B?aHNVR3RGaGtVc2tYQ2ZTVFo3NlRNU0pUb3NZcEkxNTRrRTJxdXJyWmFTK1BN?=
 =?utf-8?B?RVBLM0RVWHhwT3l5UUVuTUNCVVNJdWJLakJHeVIvUWwrQ1VkSnhHakNxKytK?=
 =?utf-8?B?cTJ5RzMxU2JOT1E1NTZwaFNsYnpFcVhwTUs1SlpoakZrVENEZVVsVkdyZkVZ?=
 =?utf-8?B?enVjd0Fna3U4Snl2bGZrQmFoK21vYjByTnQ1eVRMNEUxTGtKLzFFRHoxRjVq?=
 =?utf-8?B?bXB2NE85OVZ5bDQyZmlOQUxxZHVyZ2FaUTBrVmhCT0txUXczV2g3bGlKZkFR?=
 =?utf-8?B?Q0hEOWIxenYvNUt3NnpnZW1KWFZidUpROUdhOGRiWS9uOHg2SC8yRnNFVEdk?=
 =?utf-8?B?SXJYRFBlaHorRkZyMFVxc0hidEcyeno2RE5DM3VxUitSRVBWeFBleGVpdllH?=
 =?utf-8?B?TStBaHlnSDREVkFxdmFJZ1ZmR3A4UHRqWThmMk9hUG05Y3U3UWVQSUZ4L3g2?=
 =?utf-8?B?TnFRODhVWi9oY3M4QmJpVVhsTnFTdSt2cXVTSy9FYUhNSUlJdU5hdStZVk5M?=
 =?utf-8?B?cm5pU1NLcURHYmRxbGpSV2tsOXhnZDh3WHNpaVZ4VEpKdTdLRk5QUVNGbUQ4?=
 =?utf-8?B?WEV5UlBZNFAxRndRb20wUHVNY2dtR1dSeEhjaUlxRytKUkxjMHlVVENDSkxl?=
 =?utf-8?B?dTlmODhhc05tdDFIYnhGcTR2aXRsVjRmNkJHalBsOGloRElvSllHZUpNb215?=
 =?utf-8?B?UTZ3aThzdDhRc0IwNkp4RDdOc3lwaHYwWEprdWVqaGM0RXBYZVVRWGdBNWdE?=
 =?utf-8?B?TFVHNzQ4TWIyWEJsR2N5azkzeWdLWDlLT1Rldm5tSXZXYXFvOUREdkNpR2RR?=
 =?utf-8?B?WEQzL3lRZzVaU1NIR29DRi9NdWkyRW4yNkFQdE0wTzE1RGpuV2VCZGZhQmV3?=
 =?utf-8?B?TmJqcS9wVGl1MjdmTmEwZ0F2alRjTUlpRUY0Yi9YclhoaUd4OVlGejZaTmti?=
 =?utf-8?B?dEMwOUEzeFFFeWJjcktndThCRkxzYk1QaDNaM2V2dHU1ckxiV1B2OXRDdEZY?=
 =?utf-8?B?cGYvY0swQTVTSnF1bXNrY2laam1INW5kTWtzZTBtU2xmV1V0ODJ4WEJRYzlJ?=
 =?utf-8?B?NEJuMTFBUGRZWS91cmIrZlppTnQrRVlBZlJwRGtCQnFsSW56QVdObHZWenJS?=
 =?utf-8?B?cDJPUktUNUc3Q1ZGeTBLYXlVNHdBcmpINWVMY0VwQmQ3U0laTUY4UGk0c0w4?=
 =?utf-8?B?WEt1U2h3cHA2SmdaelhLckFOZUc3LzJzRDdsengwRFpUYkVuMW9MYjVZSGRz?=
 =?utf-8?B?bkJpSEN1N2E5L2tpd2t3dzkyYlhZcjd4bU02RDFGcDBLK21KUHV6bU9QVU5z?=
 =?utf-8?B?c3M3WDRrUVBiSUZ5ZmVYcFRhcEt0bW9IUVViYlBsQjdqdXZRMWFCRk1LZklX?=
 =?utf-8?Q?unsT/L9iF6GJdM0+23?=
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: 32211936-4187-42fb-f7bd-08de7ae4cc9d
X-MS-Exchange-CrossTenant-AuthSource: BY3PR06MB8195.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Mar 2026 18:27:03.8317
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: is9ZPmrYGJO1dngpHYsfBoYagL9v0d03iKd5krY9GTeqO0aLmlmOf2z02u8HdthO
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR06MB9885
X-Proofpoint-ORIG-GUID: qFXHDKy3H5DFLSQKPY0kSwcpOjkW_BeN
X-Authority-Analysis: v=2.4 cv=V4ZwEOni c=1 sm=1 tr=0 ts=69a9cafc cx=c_pps
 a=lBl9kuBVfjPHxW47UHPt6w==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=lre9DRYkaIEA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=ZyELlZqCvD1aXIDzc3I-:22 a=UDYdy8M5e18q1hqNPuRN:22
 a=VwQbUJbxAAAA:8 a=HZRjezcyKj6Aov1wM-oA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
X-Proofpoint-GUID: qFXHDKy3H5DFLSQKPY0kSwcpOjkW_BeN
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA1MDE1MiBTYWx0ZWRfX+l5CfvlB2jlc
 Chf5m0mmmu6zGjlpfd1s6FaHDjkyp/icMH5Us/3afECIkCOTu+yUGMr3BFgnhHqreQStcnootdK
 Ss37FdLDuYWCWfI1Ue1edRrY/m1CgC8ozBkWy1EnptGXi+FD2uJjr+jul+b1Ts8hoG+zWKxApw9
 WnsbjL7p9fM6qNuH+GEtuwSsNempTWjfRRzbIRCUrPB8+LyJ5tEhmk/RvOiSiwhS+YI4YqjUAhG
 soaXwN+214ELao89aZaINxhAJ6Kl3/Upr5cYONke7I04ZCw4UznFAB5P7kbcdOOCwStapSKTj2h
 CNENIDLADxNwxBY+o7xlG15hsZ1VJ7ZVYQHdmH9GcP8TnaEY94D6P5Z+h9d2iVu48lpBjUwJQlA
 teWFzn2QArWUsKfvMvUeawpm9X6VQV/767UMHsj/2Yh43rBcksPlke6et1dENqb03Ckr8CJf86g
 iBWAmX3MAV8StmmOulw==
X-Wisc_ValidFrom: true
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-05_05,2026-03-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 lowpriorityscore=0 impostorscore=0 spamscore=0
 adultscore=0 suspectscore=0 bulkscore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603050152
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5
X-Rspamd-Queue-Id: 1F2AB216F54
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.89 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[math.wisc.edu,quarantine];
	R_DKIM_ALLOW(-0.20)[math.wisc.edu:s=selector2];
	MAILLIST(-0.18)[generic];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_NO_TLS_LAST(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[math.wisc.edu:+];
	ASN(0.00)[asn:5645, ipnet:206.248.128.0/18, country:CA];
	TAGGED_RCPT(0.00)[speakup];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jheim@math.wisc.edu,speakup@linux-speakup.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	TAGGED_FROM(0.00)[bounces-1561-lists,speakup=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_ALL(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Action: no action


On 3/5/26 11:06 AM, Samuel Thibault wrote:
> John G. Heim, le jeu. 05 mars 2026 11:02:16 -0600, a ecrit:
>> I've been on the systemd development list where  udev  rules are discussed.
>> And  I've learned that what we, as blind system engineers need, is not udev
>> rules. What we really need is for the speakup modules to be included in the
>> Linux kernel.
> They *already* are there.
>
> I guess what is needed is just to register the usb ids in the existing
> modules for usb-autoload. Probably the linux-usb@vger.kernel.org mailing
> list would be a good help on this.
> My understanding is that just having modules built as part of the kernel is not enough. You would have to specify the module for inclusion in the initramfs for it to be available to be loaded by the kernel at boot. Either that, or the module has to be compiled into the kernel.





