Return-Path: <speakup+bounces-1517-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 45744D3BA49
	for <lists+speakup@lfdr.de>; Mon, 19 Jan 2026 22:52:30 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=math.wisc.edu header.i=@math.wisc.edu header.a=rsa-sha256 header.s=selector2 header.b=fSjcRQ4l;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id E6B1E38193D; Mon, 19 Jan 2026 16:52:28 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id C781B381843
	for <lists+speakup@lfdr.de>; Mon, 19 Jan 2026 16:52:28 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id B6ED8381843; Mon, 19 Jan 2026 16:52:22 -0500 (EST)
Received: from mx0b-007b0c01.pphosted.com (mx0b-007b0c01.pphosted.com [205.220.177.71])
	by befuddled.reisers.ca (Postfix) with ESMTPS id C34D838181E
	for <speakup@linux-speakup.org>; Mon, 19 Jan 2026 16:52:21 -0500 (EST)
Received: from pps.filterd (m0316043.ppops.net [127.0.0.1])
	by mx0b-007b0c01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60JGtE3F1278445
	for <speakup@linux-speakup.org>; Mon, 19 Jan 2026 15:52:16 -0600
Received: from byapr05cu005.outbound.protection.outlook.com (mail-westusazon11010056.outbound.protection.outlook.com [52.101.85.56])
	by mx0b-007b0c01.pphosted.com (PPS) with ESMTPS id 4bsrj9scxv-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT)
	for <speakup@linux-speakup.org>; Mon, 19 Jan 2026 15:52:16 -0600 (CST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lgTQJlXYvRXZy11bv3aj4eVJQJVzliipnybH2p8p4AIe8rm/iXA9hon1sFsvDc++H3BBwtR1WVe6hYnDysIkiU1y/wdre3i9DwdrUl9WsEMV7l6CmwZUuY5gC+f2gp/Bx1OYIenXl2q/y+4c5lOj2ZLG9GP5c1pNiQKaHUuLyFA26hW2llba8doETUBXy510Cmu40UxiwgAANyIvkXe17gip7HeggFJkHeBIi0mBnhOvRWlhQvxe/Xu/vqMIRCyX1BU/3vBCy+8dpXeFTZ+fx5q3clKJbCKgj3+74YK8biri4EHPDg/VUDl4SRs89+C0MhHK6+7ep9xyklns2UTyiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=s4HYN+w/xSAmcj1mmhDHcmUQIdPf1mMrtPOqOK/Gygc=;
 b=KL2KiRQvyxiWK731gPCpnZj2+O9XUfvITMi7exaSqEBEFyepx/R5ZxFWzrSD0I7W9/Osxz5NRVkXtomS21cSccKf6U4OTgv+sWthrRWpB/9nffcJof2Hf9ohLdBr2L2fyQHgqx2U7LnQDNX1SkxmUZJW5zHx6AcKHsR6RexbH9By875q/0kVOIS7eza0UnoNtoTOX3rdYcpLVbT+SDkwqb1QQdG/gp3unSw4t18hHpjnDAZlhEn+usZXkDmc3Njv+e89UZaZrBjl7qV5SSdvVlpITFZkAEQjvXNkMas18SBr5C9i9tTOXzG0P26GCoau8zJ1m4xrxvqW9qKgSqKzGg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none
 header.from=math.wisc.edu; dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=math.wisc.edu;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=s4HYN+w/xSAmcj1mmhDHcmUQIdPf1mMrtPOqOK/Gygc=;
 b=fSjcRQ4leneB5AaPF7Yz968/1dKmoO8xAFvzHKFP/paPAdfVWLTi8yCMeIEAcr3eii9ehhJLR5RGMP8HPWqbmiBqlv5n/Jo5INncYIJev3CU44R4UWBXw48boVvpTYIOqsPGVN/PpeOuzdV2Kg+Ht1cONmKfE3yNN6tiqwAPI/mBRHg0reDOK1Yl/1grdWfYpC5CjvZLcMWuIyLApuC12HB4wjR5LxOk/UQfowME7t1brOu3frxNw0Yp84mbDeoi4F8Gv3WLz+k8dtfY7czDSS5cWySmVbBJz/GxRXkbVCLnGKjGwLjCv6BQ0bDJyD825SVIyGmv/95aQii4L7rXQA==
Received: from BY3PR06MB8195.namprd06.prod.outlook.com (2603:10b6:a03:3ce::19)
 by SA6PR06MB10592.namprd06.prod.outlook.com (2603:10b6:806:42e::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9520.12; Mon, 19 Jan
 2026 21:52:15 +0000
Received: from BY3PR06MB8195.namprd06.prod.outlook.com
 ([fe80::a7ad:fb62:4389:fd8b]) by BY3PR06MB8195.namprd06.prod.outlook.com
 ([fe80::a7ad:fb62:4389:fd8b%5]) with mapi id 15.20.9520.006; Mon, 19 Jan 2026
 21:52:14 +0000
Message-ID: <bbd7c5a2-ee29-48a9-b1d2-3d33e2fb8497@math.wisc.edu>
Date: Mon, 19 Jan 2026 15:52:13 -0600
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
From: "John G. Heim" <jheim@math.wisc.edu>
Subject: Emulating a LiteTalk, full_time problem
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: CH0PR03CA0365.namprd03.prod.outlook.com
 (2603:10b6:610:119::13) To BY3PR06MB8195.namprd06.prod.outlook.com
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
X-MS-TrafficTypeDiagnostic: BY3PR06MB8195:EE_|SA6PR06MB10592:EE_
X-MS-Office365-Filtering-Correlation-Id: 454631fb-4d58-4c4d-1b01-08de57a501e0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|41320700013|786006|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?a1N1L21NeW9WSVFKYWZMTmpzQmJ6TFhWQVIweEl5RVMzeWxTSVgwdFRIY09H?=
 =?utf-8?B?TXFEaVZXS2lwWDYvb1doT3lyWHdMbm1JMXlKd0MvVlZ3SllPc3RGb0pCWmN5?=
 =?utf-8?B?UGZRcnpmR1dmUXlTdG90U0dOSHJmUzJJK0NnMG1XWTc4SzgvdkhDbE5DOXNo?=
 =?utf-8?B?eW9oWVU1ZlUrMENRczFXZUhXMlBoeG92Vk5MSUljVUlUWnRqenM4cVQ4N1RH?=
 =?utf-8?B?djQ1ZGsxblRJR1F1dTdiZVB4aVRFYUowclJuVTdYenphMXZoblFnMWZUY0l5?=
 =?utf-8?B?Z04zUmJrRHNsd0pwRm1FR3JMWWpwUFNiUHQ4M253UlcyQSs1a3gydkFTNWxQ?=
 =?utf-8?B?STBIczVoMTlDb3dwN0MrK0NFbUFVdENDMWkzbzlmNUhzQ3pDMmdFMzcycGla?=
 =?utf-8?B?RUwrN1NLeFpUc1ZBM2ZQdkFLYjFncyttMmZHMFphRW16VFRFK214YUJ3djVO?=
 =?utf-8?B?cTdLVGNweGNDOHlPbmlPcCtsYy9mam11R00remd6cEErMHVHNlJYMUxCb2Ro?=
 =?utf-8?B?U1RqRzR3cm9KbmowcEVIYVAxQ3ByUjlmby9paXNoTzZDZDBpTGxTQ3dnaStE?=
 =?utf-8?B?NTRLVzhydVVWMmVpbkhCOVAxOXM2SG1RcWhHc0h0b0RxOXhZbVpuUXltUFl2?=
 =?utf-8?B?SFJBZThJWGJoT2pSWi8zZEt3ZTFSZWhVV3FtcEhSRTdxbzEyOXlUNjlocURq?=
 =?utf-8?B?RFpjTnYxc0tVNGhaMlhBLzZNbkF4WUd3NW5CMXBRck9hSDhOV3NldWoyOHlu?=
 =?utf-8?B?bXVMMWRXekluUWFBYlN0VWxhcXdxNG81enFqZXlkOHA2WTNIUk9vU0ZDSE9m?=
 =?utf-8?B?dDVSVGlIVUk0UXg1Wm5zS1Bra0h3YVpnb0JnN0IrMnJWaEIwZ01nZkVXYUFX?=
 =?utf-8?B?S0pWNUtRNFpZQUtObjRvMjNmL2hnekFBY2lJL3lXOEN4QUJFTkljQ2RrRU5x?=
 =?utf-8?B?T1FLODBMWGRmdzJXK0RpWk5ldTc3OFg2Q2o0aGNoN0pvc0R5ZlE5TnhxWjhL?=
 =?utf-8?B?Rkx3WWo1U0tGU0h6QnZqN1dTbFNkS1FjRzBHQ0Q5dHg4eVdUSVlHWkg2aUsx?=
 =?utf-8?B?czh5Z0Vqc1BpWG1IVGxLdFZnUWI4eloydDBrVHR5V0gwRWNMblZPa25qckpy?=
 =?utf-8?B?NEVOK3Nvbzd2MnhxRlBCSG1HRUdHbzhhQnlCeDB1VytpcEFodTZrUWlRT1Bh?=
 =?utf-8?B?RVVscTRyUzlOc3V2cGRXVU9tYTJDVDdWeGpMaWh2bGllR2ljRkJLQnJMdDB2?=
 =?utf-8?B?cklGNVloTDUxWGVLMTRiUlFJVEE2Z1E3TmFEY3ZxY1lFMlFWN01Gakx3SHVU?=
 =?utf-8?B?Qld1aWViOW8zbENXN2RNc1NyYllDNHBRQ3Z1MEN3RFhVVzdic25BT0tQcmh5?=
 =?utf-8?B?Wk03b2pqTFpvTXU5Q1hhUzN1Z0RhcytMdkU0UDE0TkpPVk9XVjlUM3lCSDNX?=
 =?utf-8?B?UnJHWVlCMXNnSlhHeGtwWTY1bk9TaXpITlRKYU85MEp6M3JkKzRseFYxeXRW?=
 =?utf-8?B?YVlzeTBEdE9XZFhYbUo5Q2c3Q0FTNzFUdlJHT0QyS28rR3FPZlFzOG9LRVRI?=
 =?utf-8?B?QzY5akwrSXBxZUJWSWNKUnJHaGpFamdMTTdmcUNFMUNoZ0RKQk1JZ001c2oz?=
 =?utf-8?B?TzFWaWxxV01TYkxhRmRnWTZSdDFvcVB0dWpaS3cybWJZMlJ1S1AzV0F5QkxN?=
 =?utf-8?B?WUFkeWs0NFdCRHYxeUhJY3BidW1xeFNHemh6UzR4MzQ4am5SMDVGVVRQeTll?=
 =?utf-8?B?dWxPMmxWVmFSWlZDRG9GWkdYZ1greURrV2NtYVZadTJUWnNtcE9nT2xPa25K?=
 =?utf-8?B?VjFtZDFtdmc0OUdCRzFSR09DYmp5V2FQbWhnRERnd0pDalFKUTVpSGxQb3Yv?=
 =?utf-8?B?N0UzeWdwbU5Yc1ZFK0JBRTd1eFVtaHI1YS9pUDdUVms0SHh4RW5YUmJ2MXZv?=
 =?utf-8?B?Qng1V25ZOWgwRUFFNkZUcERQb3JNSnZXQTNIT1B0QVd4aFVha2t4b25STTV2?=
 =?utf-8?B?bllsWTI1dXBqTzkvL3NYQndvVXVKa2p5T2poRVFGNHJBSDhjdFpnVmNSaEpY?=
 =?utf-8?B?RW9sWWJxaTg1VkthZHMwMGxCZEp0Q3dzN2dKOE1lR01IenRyRnowdW5DZEgx?=
 =?utf-8?Q?m71E=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY3PR06MB8195.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(41320700013)(786006)(1800799024)(376014)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?em42SFNlWG5NZVNtMkxqVnZQNkRXSlVxc2pFSjhpSW0veTFoeEp3ZlUzWGZP?=
 =?utf-8?B?cjRrSzhzZUgxZU04Y0J5UlQyaVVtTm9VV0p1L2dHTVhmR0lzaHRCQnNCZUpo?=
 =?utf-8?B?Um1CVCtjQVdUOU5YYlA1TlZiWHlKdGZtZyt4aFk4T2tsdDMwU3VNRTdtR0NJ?=
 =?utf-8?B?MnFuT3FMSS9PNGY0elhJRkZUVTcrVnlRbElnL3pjMTBqWXdxUGlJU0gxUVdH?=
 =?utf-8?B?SU5JK3NKOXo0TnYzWnBNNnBkUFhORUMyWXpBbEtJL1pYTnVDN3c3YlNoeTVz?=
 =?utf-8?B?a2s3M21vbVpiWTFoNExWbTNTc0tMQVc1RVY3RDdVajA5bi9RQTFkaTIzcFJM?=
 =?utf-8?B?emJWNWVtKy9teHFERitFN0pSN0J2Z05YNzFGaTYyMlpsNjE4dkIwRERhTWpO?=
 =?utf-8?B?MXpZR085QUVXUlVQcXJCZmRhcDU5OXhGQ2htcmQ4c3hoRzdUM3NQQ1pkQ2Z3?=
 =?utf-8?B?NjFwSVF2UitkbjFBTTI2UTA1c1B4ZVpuSGtMYVhhTWUwSTNpU3I2S0VndEZw?=
 =?utf-8?B?U3dUQU5FVjFmc29GZm4yZ1FUbkd2eGdnUjRVK1FLVXFPa2h5Ynk2RTVsaDdH?=
 =?utf-8?B?cUc5SC9DME1BTlhrNHc1MjcybmFkTE5HNDVUcXdWK1RGUnErNE50SHVkN3Np?=
 =?utf-8?B?VGxaSlhydjNyNnlYM3laZjhUV1I1TlFDa2tySGQrMDZ5MU9Hck8yTnZyR3VJ?=
 =?utf-8?B?M25kam1zTGNVQ0QyMHptcERSWFMrcGN5ZnpQb3pHWm1Cd0NzdDBmbnE2SWVJ?=
 =?utf-8?B?WXhHTFRKTW4wK3pOZXVVWVV3V0thTWRKdFJ3c0wwY0g2K2dveUF4VkZrdVI3?=
 =?utf-8?B?blFSekRJOXdpKzNFT0RzeGlZbWdsSmlSVlkvaUFOOFpVMGVYTy9VS1V2ZkFl?=
 =?utf-8?B?SG8ydGNZYkNkRWhva2N2eG1iWFVqYlpCSlNrUEV4RzZxMkdPWlVoYkZObHJ3?=
 =?utf-8?B?SDFVRzA1VjhDMzZPZWJXQzhEeGpqalhFeXVOczI2ait4Y1locXpWVFFwUXhn?=
 =?utf-8?B?OFp6Qi84SFpQSmVpdXh4RmFRd3R6NXVIL1B0NEVnY09IYWc1Qlk3NEZwQ2lF?=
 =?utf-8?B?VmJjSHA2MGJJZkNTYUNTOFpiS3J0QjlvYUx3UzluaGxRN3k5QlVVSGZRNEda?=
 =?utf-8?B?Q2Y4NkFzV3ZOVVBYMHM1QjZBbUlETnpZcnNtUWttRlg1MEZQcU5MajVnWmRE?=
 =?utf-8?B?cHNwb3A2V1RsYkZQb0I4MmsxMlNTQWpwUjVFOFJjOHNHeXhCamRjT1YvNmhx?=
 =?utf-8?B?TVN4Ni9QOGF5U1E2elExelplZDhkV091bXZsS0lCVlVkekM1SlJPZ3F0cTdn?=
 =?utf-8?B?L1VSbng3OGVCU0pXR040ZWo3UEpYWGhpWU1wS3FTNVlwSHJRaHVFd3BRK1ls?=
 =?utf-8?B?c2hqS3VYY3RjR0JKZWFvMlBjV3N4akRpWWJsK3ZuODYvRG1yQVZkbzMwbXZ1?=
 =?utf-8?B?ZDI3MVRETVE4bzV5TUJYQ3BHdXBieFNrYkEvRU4vbldaV1d1Ly8xczd4d2Rw?=
 =?utf-8?B?MEhndGE5WDJ4L1RVcWgzT0kzU0VJMzZmK05mNkRPaEtEV0NGWXYzS1RQbVJT?=
 =?utf-8?B?Q1k2aEZmUUo1c3FEN0RtL2Jlem5WWmFHQXJ1OTRjOWQ4ekE2VWFNVmFiak1O?=
 =?utf-8?B?ZVFNNXpUYU5BTkJRcDVSd213TWIvUEFLRnhtdXZpRXBYNGtjanViZjVVc25F?=
 =?utf-8?B?d2VEOXZmb1Y3MEY3SllxbldWeTltVURaQmRZaEdmSlRadlBZenR1YjJua3Jt?=
 =?utf-8?B?bHZxZHBOWlJrbDd0dG1RZDJFTkppT04zRkFzQzFvTTd3LzdFRm55UEVjMCs2?=
 =?utf-8?B?VEtRbmpkMG1qcWl5T2kycThYNWxsK0x2N2V6eGs1NXA0YXdNdXJueHAyNW5x?=
 =?utf-8?B?Z1diNk9VUWFaRCtTSC91Mnh6UHY5bHJQK0sxdElFUUNnN09tUXBkRm8xNHhR?=
 =?utf-8?B?OTlvVjhsckxLcEZyVkI3OUdHd0xHRHBIdWZ1ekdlZnphc2lxa0JJZjBmUTNx?=
 =?utf-8?B?N2VKUTVTRHR6M1UyNTJNWkFaaVBNMnBWQ3gxa3ptUG1MNytaZXVDb28rWThi?=
 =?utf-8?B?RFpaWnZDcWY1SmR3R1JQcWE3UXJ4U1BNb2EvY1lkM09JdDd4NUVtNnhPTEZ2?=
 =?utf-8?B?R1BnKyt5RTZsS3VJcG1sWER2YnlOak8ySzlCaFRJRjBQSDZaU2JTT09TcnAy?=
 =?utf-8?B?R2dMYXRNNXExRm5pUkNyTzZTSHRoVi9JR3ZzTGU5K05hbkQwR2FtTXEwY1ov?=
 =?utf-8?B?Q3RrNFNVWUc0V01DbWlJNVB5MG1QelhWRFVzOGJLaEp0OEdmWHNYUDAyTDBN?=
 =?utf-8?Q?tBbiub71mQbdfa1EWS?=
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: 454631fb-4d58-4c4d-1b01-08de57a501e0
X-MS-Exchange-CrossTenant-AuthSource: BY3PR06MB8195.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Jan 2026 21:52:14.6824
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: d7UGV0h3R39h3zGnMt3QuBdML2kgoIl+XCnjOiwISZqaiyYdmQr9XBRBI6NKegie
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA6PR06MB10592
X-Proofpoint-ORIG-GUID: 7CKmo1QxM1oeB0cbDPWZOplHlgiyjzK6
X-Authority-Analysis: v=2.4 cv=IOsPywvG c=1 sm=1 tr=0 ts=696ea790 cx=c_pps
 a=CnS1ju6qDdjTg6bRefQovg==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=lre9DRYkaIEA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=f7dR1MTMkOfKBh7WrcwA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE5MDE4MyBTYWx0ZWRfX303nVjIEy5TK
 vdoHPwLfB1hlkeFkruwHoZp5qGFnqwY0BgwemIjxTWs12V2QdWocbg2FsesEYTYdB+z53jg3LMl
 /FT8Q4sZu8up3q5vXmzhvlTBa2QwtRSBsuWrTJv33X8GNGrniJga8pFt2kife3Vl/ESwOKy60al
 G2sfot6I7vaUEhUHMBa5GoMj0wxiULatWnhEEnJRCGZKgNU4fGItWAEkyw7F5Ss/0/ebW7KfCia
 y6bNnTl60K1tDTICYiYN5T+QlUKVzc0lnHMxYWHlt2bNKLy40NytLXFqYvzt++EQrL35inds0Jw
 odnnnbcduCSWmc7KYD1H0pfU9OyWIFgJfg7DLgKjtXznhdTTaHW2TvSsBvYYSbmjHcKomUjBfAj
 Ivl5f3hdsyIXW0qE0WmExShynSrtT2cRWhbK1qS/g9F5QsvL7JZlFwSCxNNFZaOhCPT13YprbhL
 bzrenvb+Q/hDJx9Ebhg==
X-Proofpoint-GUID: 7CKmo1QxM1oeB0cbDPWZOplHlgiyjzK6
X-Wisc_ValidFrom: true
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-19_05,2026-01-19_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 bulkscore=0 suspectscore=0 impostorscore=0 adultscore=0
 spamscore=0 priorityscore=1501 phishscore=0 lowpriorityscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601190183
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

My project to make a hardware synth out of a Raspberry Pi is going quite 
well except for one thing, speakup is implementing a full_time delay 
between sending chuncks of text.

I discovered this by changing the value in the file 
/sys/accessibility/speakup/ltlk/full_time on the host side.The default 
value is 40000. If I change it to 0, my fake LiteTalk works almost 
perfectly.

So what I need to do is to understand what I have to do to get speakup 
to not wait. I  don't want to change the value on the speakup side, I 
want to get my emulator to work well enough so the value does not matter.

I  also know that speakup is not sending indexing commands. I put a 
debugging trigger in  my code to say when it gets the indexing command, 
0x45. That  code is never triggered. So I am thinking I have to make 
speakup think I can take indexing commands.

If I can solve this problem, and I don't care how much work it is, I 
think  we will really have something. I bought a audio "HAT" for my 
Raspberry Pi. That fixed the keyecho problem. It keeps up with my typing 
and I am a really fast typer. I also have it so it recognizes the Pi 
when you power up and loads speakup. You can use different languages, 
different software speech  engines, etc.





