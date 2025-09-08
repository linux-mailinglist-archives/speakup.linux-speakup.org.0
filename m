Return-Path: <speakup+bounces-1322-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 5D1DCB49391
	for <lists+speakup@lfdr.de>; Mon,  8 Sep 2025 17:34:40 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=math.wisc.edu header.i=@math.wisc.edu header.a=rsa-sha256 header.s=selector1 header.b=KytZoTCp;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 895DF382715; Mon, 08 Sep 2025 11:34:39 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 6503B382708
	for <lists+speakup@lfdr.de>; Mon, 08 Sep 2025 11:34:39 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id EA50B38267A; Mon, 08 Sep 2025 11:34:31 -0400 (EDT)
Received: from mx0a-007b0c01.pphosted.com (mx0a-007b0c01.pphosted.com [205.220.165.71])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 5CAB23820B8
	for <speakup@linux-speakup.org>; Mon, 08 Sep 2025 11:34:30 -0400 (EDT)
Received: from pps.filterd (m0316039.ppops.net [127.0.0.1])
	by mx0a-007b0c01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 588Cxr14025149;
	Mon, 8 Sep 2025 10:34:19 -0500
Received: from nam02-dm3-obe.outbound.protection.outlook.com (mail-dm3nam02on2071.outbound.protection.outlook.com [40.107.95.71])
	by mx0a-007b0c01.pphosted.com (PPS) with ESMTPS id 491722fac4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 08 Sep 2025 10:34:18 -0500 (CDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KvtCUkRE0F24N1JnEf4djiqvaTKWpPDHD4PE7zq1OdxaMLDGLVWKRAD2gAjQxbjYQhdabhMHDFGqutPqWyTWgbanJ+iC2M/UHC8ph9j2JRHmw9qcpe99FrCdhRwSeT4ipBuWJ9JBMarAhRy0ufiVOb5ua8av9fy0429H8V4zvvS26Fbx087qRciiNp7Bqogf/tGgQDQYZT7104kqCpmj2Cvece46hFvmADlBeffY9/+2G/gqyIhsTovmfG6mjQUlQ7xOP/9OPaGcyimR9rQaiPFVyilYKABzlr2PZJytJ3g3CblAt1nkl69yMmi9njtYjYrOXGAZU4x0fQ4NmPtEmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HRmhxmcZEiJmBgHpYJ3EK0vz5ngCC/7qsO3tC0uDrF8=;
 b=N3Co5+n0cvAj41OmDKhiralV77SbTMlfRMut0yY4kxrDBmUd+1kCWuoRN9Sy8kKoa1A6z6LOSUNYvkNZwj2VPq7jkZV3aRSySTZs6f/nlB6iVWPwSsPafP13wajUk2Vw+M6jphuKlUQ9WP8Rsb77ZOVCJdy4MBmQolYnqbElParPIvjJjKDcFL8B0lxXzivlwB4jsufrDdQ89PYqehAm3OP7Vi4j0pufOyOBORVcARDr20rtUXJeOqwXxGPF7yKUv3mP+1CUE0D/blomJnVDY4woUuxwp/Y1OovZNzvStlZXCIiWqlodVONNMnzM6MkaBI1805ovlg65nWkQ5ePs0g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none
 header.from=math.wisc.edu; dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=math.wisc.edu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HRmhxmcZEiJmBgHpYJ3EK0vz5ngCC/7qsO3tC0uDrF8=;
 b=KytZoTCpgZHS4poeumfLNuYpEz9HWvy1Pg1NWYLG8UhxCzBQ0hF1Q3RBoj3o/ZGxIARiGIJWz8JA01SopXOUj925OW5QFwR4oVbCs2nfTjiLg0/lKJj3LuvuJcbA+pfJbkxdBtMo6CaNlKVvqbEvuuLloanbBdvuSPPpMXOGzt3g9dE+81hvafwCSfJQzQGk1jmRCklzV9t2zy5nNqrLtNkrWGS4xYask0WhzjOWl7YzzQTr49K3motnhikuPz8QufZUWGKH5s21H7NPXJzH8dfunIR+HFZV3u1owbOb94E2ROsJhorkQl/fyWFlEUNdNqMAhlhDHfbuyjL3njd4cg==
Received: from LV3PR06MB9881.namprd06.prod.outlook.com (2603:10b6:408:23d::16)
 by MN2PR06MB6528.namprd06.prod.outlook.com (2603:10b6:208:209::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.22; Mon, 8 Sep
 2025 15:34:17 +0000
Received: from LV3PR06MB9881.namprd06.prod.outlook.com
 ([fe80::9d0c:9802:d961:5a8]) by LV3PR06MB9881.namprd06.prod.outlook.com
 ([fe80::9d0c:9802:d961:5a8%6]) with mapi id 15.20.9094.018; Mon, 8 Sep 2025
 15:34:17 +0000
Message-ID: <4cb3c259-41a2-4de9-a9f2-e73e7660289d@math.wisc.edu>
Date: Mon, 8 Sep 2025 10:34:15 -0500
User-Agent: Mozilla Thunderbird
Subject: Re: speakup from boot
To: "Terry D. Cudney" <terry@cudneys.ca>, speakup@linux-speakup.org
References: <aL5U_xg372xiMOJm@cudneys.ca>
Content-Language: en-US
From: "John G. Heim" <jheim@math.wisc.edu>
In-Reply-To: <aL5U_xg372xiMOJm@cudneys.ca>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: CH5P223CA0016.NAMP223.PROD.OUTLOOK.COM
 (2603:10b6:610:1f3::21) To LV3PR06MB9881.namprd06.prod.outlook.com
 (2603:10b6:408:23d::16)
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: LV3PR06MB9881:EE_|MN2PR06MB6528:EE_
X-MS-Office365-Filtering-Correlation-Id: f5298bf0-1491-4bb4-9cd0-08ddeeed2be6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014|41320700013;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?T21OSks2ZlFTNEo3RTZzRzlYMzF4NnJKRVpDWGRETHNDdXo2Y1luNVZFekJp?=
 =?utf-8?B?T3VLMXlla1JJVksxRkNiRlJueUZ0T0dodnFlMFZZT29NOEIzR1BpOFJxN2k5?=
 =?utf-8?B?V0Q2UUdRTGZHSWxrUnRqTXBLNVczSzZYaGc5aGRRS1o3UWt5S2hFQ3dUMjRz?=
 =?utf-8?B?QkRoR3dGSEk4bFNldkgyWEYxS1kydlNqcDFDaEZod2pNYW5za3k3TEtlRW9l?=
 =?utf-8?B?UWp3bHh1WlRMVzF3ZUk0Ym1Ga2VjTTVFNlIxRGRqMkRGWW9vN2U2Y2NRWnlD?=
 =?utf-8?B?SXMvS0Ruc2RoSWRwZ25LaXVmc0tGV1JJdklUd29hUGloSCt2WGtLYWF3MGdq?=
 =?utf-8?B?OGM4bG1NVldwTllqdG9ySTRDTDVEZTFCNnlMd3VRbnpHMVloT1RTQmo1M1Fy?=
 =?utf-8?B?bnRJUmlLanBVVVZBRjF4bGJvK01OK1h5cFZOYnd6MFlqRFl0ODNlZDJvNEJU?=
 =?utf-8?B?N2ZpSnhEVHB5SGFIVG9JcDd5ZFcyaC9QOHo2MjBab3dSZEVMSTFtdlRyTlE5?=
 =?utf-8?B?NzRCVXpyWWVzSmtmRE91YThaOFVOOSs3MjVIWWU4QXJBbWNTaytRc1lyM2dE?=
 =?utf-8?B?aUlhZUowcDR1RlVZWlA3RXpESFhLK3oxSlZBdWlzeU9nWnZyeWVIbFE4dnFU?=
 =?utf-8?B?V29RYjNwMFZ4dVNkWkdseDc4L1RmK014bWFKYTI2SWFZZEdOa1F6NzRVTmZ5?=
 =?utf-8?B?MURIV3NXNWZ4cGFSV1R0TVVRRC91czQ0c1hZZ0NxUnVJcTdVeDhGMDlyS01p?=
 =?utf-8?B?c05xTG5RZllmU0VIR0l6Qm4rdHVTTmpmbFBqczZCMzg3TmJub0hLaEtNVUV5?=
 =?utf-8?B?TjEwSW9RZE5ubXh1V1lGejU4UHJPMW1lUTQ5UWpCU3d0b1MzblAyYlR3L2VV?=
 =?utf-8?B?YzdsMVZPdVovY01lcXZUREhxWVRqSTNPZ0Z4cXlkT1ZNcUFKTkcvOFdWMUJ1?=
 =?utf-8?B?Vmh1L011a1V3cjlOWmFTZnkyMVNRNnVhU2tmSFhmdEE5dUJ6Qkh6RkNTUFRB?=
 =?utf-8?B?UXowTDREKzNJalladXcyS2ptcXBwUG1OZzdGR2w3c05pbnRSNms0b2E3bE9n?=
 =?utf-8?B?Y0pGUWJrbkMxM3hVLzRZNVkzNmVaQ0pIRHFsQkV5OENyOFJWc3oxT2dscVZG?=
 =?utf-8?B?WnJrR04wcUdQSUEvSVdJdWM1Zmh2SUtaS2VkM3M1Y3g2dWt1RTIvSStjSm1t?=
 =?utf-8?B?SUl6WEhhdG84Y1pXaVpIZUNSZm1PajZrbyswK3ZHaEs2T2I2R1d4cWJqYXBB?=
 =?utf-8?B?K2ZiY1YwVXo5bm02N2c1Y1JYOSszVDIyaHg1eUxSVGw2eCtYYzZzOTdSZGNj?=
 =?utf-8?B?SU9CV1RNUGxtNFpIcFo0L1dVVzNtSGZCYnp3Skt1TTFxa01YYVMxWEtqMmd6?=
 =?utf-8?B?YTJGdkh4RDFibHNlbUNlL0tBQ3FBc1BSeE9jMktBTUMvMDRDOE1oekNiTjZl?=
 =?utf-8?B?RDgyNXJUMTBjN1NLYVFoSlkzaHdOcVljNjU1QmJvUVBQSnJYekF1M3oxK1BC?=
 =?utf-8?B?K3FyVzRrOU13WTBxSFRjZVlmYnZIM0hXbjY1aTdWSjZTanJJYlhWd091MFEx?=
 =?utf-8?B?Si9nTnIzMDdhQ2srTDVUN3cwSDVXbnd1eS9PVEZyT3lQY0VxV1pMdjh5K1dk?=
 =?utf-8?B?TldObWNPL0FpRE9IZjU3WHM4K1Rjdy9HWm5RNjg3YUhmWUx6S25HU29YeCtM?=
 =?utf-8?B?ejM3VUJNQkovU3h4WXRyTTMybDc3TUhXb1MyeDZaRDAzS08zOVdHQ0UremJh?=
 =?utf-8?B?UmxKZ1JhMGZSNW9OZWczSHlTSDdVRy94aGd6bldxOU5xdjVob1IyK1FJaFlz?=
 =?utf-8?B?VExmN04zZnVpdWhidjlYSmFwa25ER1V6b0JBeGp3cSs5ckNHamxPTVRTclZ4?=
 =?utf-8?B?Y2VCUi91RXZnYUYxVks3clpSWnlmbzlZMmNTc2FESytxdVNpRnhvNEhLVnNJ?=
 =?utf-8?Q?qctnHjkOGhc=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:LV3PR06MB9881.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(41320700013);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?T0lxVk5rQjVvUnlOSG5idjBkU09UeVdWbzRiN3hkUVdEYmZkelJhSmxXQVVp?=
 =?utf-8?B?dU5lTjMyVkQyci9zMm50QksyaWJKOFZCVkI2SzlpL3AycmRmbzZXK2NseDF0?=
 =?utf-8?B?SExBYmFQcjNycVBxTUEyOVVUSFhUTk55TlZaMW1JNUE1R0xsSkVSeEFCV0dF?=
 =?utf-8?B?blN3NkNqY1MzaUxWU2V6QllweUJsY3R6SE5rb2hHemhvYU1mcVEzN3ZtNGgr?=
 =?utf-8?B?eFNVWTN6SVBDTWtLU2NzRjJsVXRZYzFaY3E0VWUwMzJlcWp0ZitmdE8xME9l?=
 =?utf-8?B?RlJTWmMvUDBNT21yT0haWkFaSXRHVVQ5ZzZCdlFmQWJ0dGxoaER0N1RzZHdl?=
 =?utf-8?B?T2Q1cTR1c2xoNHgyWXZCSlVnVVVlNHJva3lrOVJWL1hha243TFhUYkZVTit1?=
 =?utf-8?B?UFpIdUZlWTJVUkVLTzZtMnIvMDh5UU1kRHpZTm9hTUI5dTBBQ0V3ajBLU3lU?=
 =?utf-8?B?UUNXalRZN0wrZlZvL05haTVDODhySFVrYWgzS0QzU0xnVzZydlhybEZwcWVM?=
 =?utf-8?B?eG1vTU1hUVlSdFlGYkN3MVJXU1hrWUtNQTZINWlVRnJUVjkvTnc5cFJTcE1C?=
 =?utf-8?B?anU2cUZNRjQ4Tm52djkvb2gyVXZybzcxZFFXNUtWOFgxSUd1elUzNkhMRWVJ?=
 =?utf-8?B?bjEwbVJwU0d2amxjRnVpZjVoNVpzOTFuMkRWeHBna3grNkQwRWxlNmZ5RlZr?=
 =?utf-8?B?VzNvOXdPMEw1L2JRVHBqQVJoZzl4NHJFRWxSQnA2a1BOY0pMbGsrNFg3L2R1?=
 =?utf-8?B?R1Y2OHMxUEFTWXdSekhkWEVRWlJZS2o5ODROa2szeDAvcGxvRG0yQWxXMSth?=
 =?utf-8?B?WENGWEt6UitXZWJHUHNDMHlLYTN0KzBnOTNzeTZ6Um1nRGgxUWpmbVdPNUVk?=
 =?utf-8?B?TG5SY3dMaFBrUVk5M212RjJJOWhLbWtpMmQybGVTSjl5RVc0d0FJS0NiMG5V?=
 =?utf-8?B?S056cUhVM2QvaGZBQUVQbnBHbUJLem5KdWptMnE5SG1FbFUzMmg5cmZtUk5F?=
 =?utf-8?B?bEZvWFZIR0RBdTBWSnBmM0E4UUZCRnZGVXJOUXp1bTBrZ0x4eEdodTdpSW1K?=
 =?utf-8?B?VHhMZEduVE9aS2MzdDJMWVpNS0NHcmN2MzRtbUhmRjFzNWx6bHB5TWMzUGFS?=
 =?utf-8?B?SnBIOVFnenNxS1pCTXN3NUxyVis5ZVZPOExLc2F5bFJpYW5OZGNZTlltMEph?=
 =?utf-8?B?WTRaYlhUUmxEbVBTV3A4Y3NKOEI4b3hTRDcxekhXQytaRUR2bFk0bGNHd3E4?=
 =?utf-8?B?ZnB6U0k4L1djc2JYYk9vd2ZJeHY5QWhiSXR0d0sxemFyNzVQVitTS2FwajJQ?=
 =?utf-8?B?aXB4ck9lRHc0V05Pb2hXLzJyV2YxUTh4WndVZVpSMHZuR3gzcEs4NmZXMDhB?=
 =?utf-8?B?QWdSbXJoQWpXZUZQdU9iWUd4R0tZTzFOK3NlVmd4a0FNRTc1eFNSZTkrdVYv?=
 =?utf-8?B?WmJ1d29mRXFIaG9SaXRFMFhYWklscUcyR1l2WEp6NFF3L0xycmU2N2pmd3p1?=
 =?utf-8?B?dThmTVNLRGR5azYzZmk5a3VPTkh3SkFNazhYcmh6TXdyMHFCTFdDa1hRU3Bl?=
 =?utf-8?B?aHJ1WTdOaHRMQnV5ZDJwMzFROGo0UmFvdXVVKzRTRXg0TVFjRXBNZFF0YzJL?=
 =?utf-8?B?NmJuc0RKaXo4WTdiUE11cVlqSUJRV3UxTjR4OHRibHRPdE9CWlZEYjVwTW9y?=
 =?utf-8?B?Z2drTGI5K2lqdUI3UEJrRXZtSGppdWNqMWgzamthaEErYlBRN25kd1FKT0hQ?=
 =?utf-8?B?b0ExdGNLQUVIM3Bqb0VZWHVqYitxSGtmeENCell2azVjUlk3YW9BUzc5MlJ4?=
 =?utf-8?B?NDRGYTFEcnVYa1UxWnFSKzVFT01DK09hTkJPMXM4QXd4Mzd1RUkxRnpqV0Q3?=
 =?utf-8?B?MDFkRDdSL0haVUVFYTAzN1RnUDh6c05EbldZUFd0S2tGQk1FSCtRbEkvV00z?=
 =?utf-8?B?cXFVSXdrM2hEKyt4VkU2Z3ZiU1BFZXNXNDlPTkZqTkpLcHJ3MUlTS3F4d3JY?=
 =?utf-8?B?dGJoS3FlUkZOSlhkOXRGNGhsUHBCdGlVbm4yWGZNcEJ5amZUYzJqSXo5S3pm?=
 =?utf-8?B?QUsxWHV4QXgvSDU1b01Sd3hDZkFzN2cydU9RRFNKRHcrU2JTSHlRdExPQ3B0?=
 =?utf-8?Q?yuwPQpFkVO00nNSrK6Z+au3R0?=
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: f5298bf0-1491-4bb4-9cd0-08ddeeed2be6
X-MS-Exchange-CrossTenant-AuthSource: LV3PR06MB9881.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Sep 2025 15:34:17.0286
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PIU3DULLfnZPv9/iRInu4n7UEY1vYPxQOh55PIO6QAygh5KoVO2AAasQ7AwlLPZt
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR06MB6528
X-Authority-Analysis: v=2.4 cv=A4BsP7WG c=1 sm=1 tr=0 ts=68bef77a cx=c_pps
 a=VRbO7Xzw2I8tExX10PkHdQ==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=lre9DRYkaIEA:10
 a=gtwlZ2GJXGq6EFkOL-AA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
X-Proofpoint-GUID: qVcTR0mpXwKVV-8MlBIzobtUb3kZO4gs
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA3MDA5MiBTYWx0ZWRfX33fG90zHhTEJ
 CGJVy1urkzafOx65jPEis9VpL8MZSEHmK/i5OSGgJV3+EuQ12QCCUvA52J42OvVsmZCGlSsDg/e
 quZ8uJIRFc9YHMdt+S4EugMGf2dib8T6fyCD7pBGMBahPZm/YFW000pVmII4mOPPLxkIYAiqc9r
 V93zjztPTatbd9PumTONGf2iz/gVv4+Vdlyo0oBjIEFOIsxnaXf1QUE7OXgAUbj12N1OmEjnGf5
 Hl0KYAFHY8Zh2RBLJRD6n1mfmuVVBffF42thx1CDX0KMVKCm5l3TE+UDXoUKtPvsoDnFb//fRzu
 Wv1tLe98MvXlw3VhhTO48yTPOH9ruUZR77kw/9R7SfDPajLMKoWhFl0vF3eiovUPsHPys1y88al
 F9kAMQWr
X-Proofpoint-ORIG-GUID: qVcTR0mpXwKVV-8MlBIzobtUb3kZO4gs
X-Wisc_ValidFrom: true
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-08_05,2025-09-08_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 bulkscore=0 phishscore=0 spamscore=0
 impostorscore=0 clxscore=1011 adultscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509070092
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

I haven't done a Debian install in a few months but I know the last time 
I installed Debian on my laptop, speakup was enabled when I rebooted at 
the end of the install. Speakup always stops working once you log in. 
But I got speech during the boot and if I switched immediately to a 
character console, I could log in via speakup. I know this for certain 
because somebody else questioned it. I made a point of noticing it, it 
worked. Maybe it was just one version of the Debian installer that did 
that. I always use the netinst installer with the extra drivers.

Well, anyway, back to the  original problem. Are you sure the espeakup 
systemd service is enabled? The espeakup systemd service loads the 
speakup_sof module if necessary and starts the espeakup connector.

Also, you can get speech very early in the boot process by loading the 
speakup modules and adding espeakup to the initrd. Right off hand, I 
don't know all the steps for doing that but I can give you some hints if 
you're interested.

PS: Man, this is another reason that it's a shame hardware synths are a 
thing of the past.

On 9/7/25 11:01 PM, Terry D. Cudney wrote:
> Hi,
> 	Wondering if anyone has succeeded in getting speakup to start talking automatically from boot-time on a debian or related system.
>
>   I'm currently working on a laptop running debian13 (trixie). I can ssh into it and everything seems to be running ok as far as the system goes, but no  speakup.
>
>   espeakup is installed from the debian espeakup-pakage. the default intallation loads espeakup as a systemd service, running espeakup as root. This seems to be where the problem lies...
>
>   I can "systemctl stop espeakup" and then run as myself (user=terry), espeakup as an application (not a systemd. service) and speakup starts talking. This is after I am logged in with no speech.
>
>   It would seem that if I could have espeakup start as a systemd.service, running as user=terry (not as root), speakup should start talking as soon as it is loaded, ideally (like it used to) from power-on, vocalizing all the diagnostics as the system boots and giving an audible login prompt..
>
>   Has anyone  done this? Or am I on the wrong track with this approach?
>
>   To summarize:has anyone gotten speakp to start talking automatically before logging in on a current Debian-style system? If so, or if you have a different idea of how to accomplish this, please post here or reply to me directly.
>
>   Thanks in advance for any help in this regard,
>
>   --terry
>

