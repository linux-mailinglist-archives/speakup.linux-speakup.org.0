Return-Path: <speakup+bounces-1295-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id DF9D0AC2926
	for <lists+speakup@lfdr.de>; Fri, 23 May 2025 19:59:02 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=math.wisc.edu header.i=@math.wisc.edu header.a=rsa-sha256 header.s=selector1 header.b=cV0uppGy;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id D019F3821BE; Fri, 23 May 2025 13:59:00 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id AC915382169
	for <lists+speakup@lfdr.de>; Fri, 23 May 2025 13:59:00 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 34BF33821AB; Fri, 23 May 2025 13:58:53 -0400 (EDT)
Received: from mx0b-007b0c01.pphosted.com (mx0b-007b0c01.pphosted.com [205.220.177.71])
	by befuddled.reisers.ca (Postfix) with ESMTP id 13DB238197F
	for <speakup@linux-speakup.org>; Fri, 23 May 2025 13:58:52 -0400 (EDT)
Received: from pps.filterd (m0316045.ppops.net [127.0.0.1])
	by mx0b-007b0c01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54NA0vmN032410
	for <speakup@linux-speakup.org>; Fri, 23 May 2025 12:58:44 -0500
Received: from sn4pr2101cu001.outbound.protection.outlook.com (mail-southcentralusazon11012068.outbound.protection.outlook.com [40.93.195.68])
	by mx0b-007b0c01.pphosted.com (PPS) with ESMTPS id 46rwfhyher-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <speakup@linux-speakup.org>; Fri, 23 May 2025 12:58:44 -0500 (CDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wVESFntYfMNbpbYyEMgENFgaQM/PwNJDqQN5Vpk7AhRBPx3NBGk0IvbqbWGlB9+OpyAG0fggL1+kjDvFHt/Beng4A8vKMGpXozeg1t3xEQ9Pqfs7pJ2Q5sUs7Gb+zfEWLnIoekLbaMiNUqru8QRAq3Xk8OeJnLPAAE0k/TguC4Nai7IIAoXWwvkRw027/bWDgF57DLz0OFo9dk/ytJAHNqziyOuJ+NfmvIGaGtpQMfqo+vrfeYRTiSTyA/jCZpvQsFY1EKwDZjPUhtXjmkvjdWHlMSrTHxfrWDV+RHHTTmZbx5fmMYqYZ7cutQHf7T3RoKCU3Tbsebg0zATm93gFqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ScNy+tTQIIuHGt1kiFuGkR+EzU1bQZmt8lntJHsx9AM=;
 b=QNcmj96QbYlrTAV/Ea2W01Epou94VW2UxUHen4tBTO3lSpG52fWoRloOKKrb0erjqPox63JDqmrnGRrZ3ZQCBcSiq6Nmgb8x6yQHKk06N7aM3UObbKtek6Pc3WU8ybgokH0ixqtys+1QFLMAii1MJFIZsXtb7PEl3qGoDO+n12n/sHIpCk2lRzF73sf871x5At5OT7DsAf3AdFZO6uq1DzpuY1YBN96Q4UCeVkVvcY8tE5Z1hJIT9KXLAqDiR37/gkjfgRWJtMsve+dRy56l6eChaf0tus1LJ5Ns48XxsNPaLK361am5p34WC5qc4oYP0x7zkGqiIGSZlYklJZFXxA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none
 header.from=math.wisc.edu; dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=math.wisc.edu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ScNy+tTQIIuHGt1kiFuGkR+EzU1bQZmt8lntJHsx9AM=;
 b=cV0uppGy7wUeD/BRoyUoJ2KryCttz/sWzgLUhc5APG2P76RJGF5CqIlU5mLMLk95GYgdkOMUDaqz08SmYQcWOFOTmBpjVgrWKPnYTptDBwd3Sfgl2iJIjvWjWQeTU7DaTK6Shb4nSBt8WpoKhF3IWTLauHI6LHPLxZF5in5KWDrQ7KZTyVc6ZbDIgqv3PPsGQzon65BGAElEaOujgEHidxiQIrWNLdfaBsMK+TCvvdYCvyl4ngdsRM9q5aflyCjssUXfHN6CJJD6V5ZFh9vn0d70I23++7hsFCblT8IkxMtva8jFbwDrx1hG+GbWmGSsSqoKMWQm89fKgVJnM8OoWw==
Received: from DS0PR06MB9877.namprd06.prod.outlook.com (2603:10b6:8:1d5::14)
 by PH0PR06MB8080.namprd06.prod.outlook.com (2603:10b6:510:cb::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8769.21; Fri, 23 May
 2025 17:58:42 +0000
Received: from DS0PR06MB9877.namprd06.prod.outlook.com
 ([fe80::a347:6162:9bfd:9b91]) by DS0PR06MB9877.namprd06.prod.outlook.com
 ([fe80::a347:6162:9bfd:9b91%3]) with mapi id 15.20.8722.031; Fri, 23 May 2025
 17:58:42 +0000
Message-ID: <12d35e3f-57de-4c57-8e07-d0aded6924e9@math.wisc.edu>
Date: Fri, 23 May 2025 12:58:41 -0500
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
From: "John G. Heim" <jheim@math.wisc.edu>
Subject: Talking GRML
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: CH5P220CA0016.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:610:1ef::22) To DS0PR06MB9877.namprd06.prod.outlook.com
 (2603:10b6:8:1d5::14)
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
X-MS-TrafficTypeDiagnostic: DS0PR06MB9877:EE_|PH0PR06MB8080:EE_
X-MS-Office365-Filtering-Correlation-Id: a01c5f3d-ea16-4f9d-7b79-08dd9a23745c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|41320700013|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?UW1YeWNWaXlxQWZqMnZ2dzZxUVNtSEpQdEwreE4wUUk3ditEUSt6QkxYMVZn?=
 =?utf-8?B?M3VHVExYYmdPMktnVDE4RTAwMCtneGVoalF6bHJ2dWRWVU1MYkhnZEZpdE9G?=
 =?utf-8?B?VE41eXg2MUhCZ2RNV1VZQUhYQWkxRXBpK05qVWovT0I3Sy9ucS9yRnpOcEFE?=
 =?utf-8?B?MUxDTENiclNLbFVlSTZYTUdJdU5Kb2RVOVdwN2Mrbk9rZjlOdmNURmd1d054?=
 =?utf-8?B?WEVvVXc2THM3YVNMOXdvWlpYaTdWRXM3ZUtmcXBPL1FMT3dpMm5RWFJzeGFP?=
 =?utf-8?B?cHphdlFtbC9pSFBOL3k0SElZZU1JeGhnTU9CcWdLMHVXaU9wSjVJOUlWZ05p?=
 =?utf-8?B?cWlXVzFnMlBWdVpKc1Zac1ljSU4yRUxKc2dDdEpVUkxyUmlIUGVidmVxVjNr?=
 =?utf-8?B?WGdlTkFGZlprRkZJaGFyMUJvREhmbjljR3VuSmE5YVIvQWV6cjVNVTNOUHo5?=
 =?utf-8?B?WlJEQ0U5UDdMQlAybUtNME5BSkFHc2VTMUJzVm5sUkhtZWVOSExwTnQxeGdK?=
 =?utf-8?B?SWVvejVRWGc1eVpSYlVISnNuZlA4Ujc2U09kZllZN0J1ZzdMNHN0MkllbGJx?=
 =?utf-8?B?N2ZZeHJOZ3hOb3kyRWZVUUpmRFU0bnlsRkhKa21ZZmV5MW9UL3BWS3FNQzZF?=
 =?utf-8?B?a0thVlZER2xnanArKytlUy9hTW1FUk1JQmkxNWg2N21yWWdOeGNWeUxLUWlk?=
 =?utf-8?B?ZnJ6aTIyT2pETzBCdVdGKzA0a2dEMDRQQ01ZNkduaU0zMHZEbEVYZUJDbXV5?=
 =?utf-8?B?bGF0U1VrSGxaUUNVWTdFS0w4VTdPSzIweC8xR1FManorT3F0ckJRNFRuNGhL?=
 =?utf-8?B?K1ZyTitxNGhoSmFmeEU0T1Z0elVyQ1RrSThsazQ0TnArdWVmRUR5Si9Kalht?=
 =?utf-8?B?WFBtVHFRME1tVUF2SmExUm5xM25FVmw4ZmFLR3Q5NmcveHB6VUE3TStjVFN5?=
 =?utf-8?B?N3hlRElCRHY3d2t1Uyt5ZTRiNmF1SXl6dkZYdVJVenhkZ3BIUU8rdERvMzhz?=
 =?utf-8?B?RTlFMTArUFdJNGs5MlhrbFRUVUtLeHRrN1Y0MlFuTS82Q1Q5MU93aFRvQW5U?=
 =?utf-8?B?VHdUUDhPZllCTHZXU08yTHVLVHZ3Y1NIMkpSb09uN1hNV1FVY1dhY3RMdzd1?=
 =?utf-8?B?UDZ2dEdJTWoxMFBiMWFtdVlSUmk0R25ndEJQa3BPNWhNSEM3d2hER0NoSzl5?=
 =?utf-8?B?MHJwcjZCNGhSUkZmNXBmRjFhTG9NZlVrc0ZJVmdIbzlZaVBOeGFmSjRCdld1?=
 =?utf-8?B?VjJzcVBzak52MUVaU0ZRaTNPMm9lNWhkZktyNktuNExmM2pCRVE0OEZoMVVt?=
 =?utf-8?B?VklESEwzVU9kc1RJN3RPeEFMYWR5VXNzU1RsRnNXeHVya2FBbkpQeDFKaFpC?=
 =?utf-8?B?elErQndRNnJsWkI4emEybVVlOHZvM1ZJWjFDZzN3dW5sSjN2VjhRdmNId2Jq?=
 =?utf-8?B?QWozL1NKaEtOSHhpSm85VmVabXlTZEZxUHRpSlRnMVY3WDFHUWFJRFVwSkYr?=
 =?utf-8?B?QWJRa1p2QU9oQlFlMnRmbVJSU3E0UmJnMGl2QkxLcmhrS0xLbEdqZFhINmR3?=
 =?utf-8?B?L0tzY2RITkYrbVRBY0tpbWNyckozSzFYdUM5NlIvZy90bThvRFRxK0t0RUh3?=
 =?utf-8?B?Y25ydS9MYlhFK1VqWitKdVI1blBNZnlBd1ZZRHdDVXR4cVE0REZEdDFGbmVD?=
 =?utf-8?B?S3FKOXNDZFd5Ky9RRFhRczBIYzV4MUVVZGpOekluSFFTVVhRdjBHcWd2SkZa?=
 =?utf-8?B?OXFVZUNRNTNmdzBzUEw1OCtabUM5ZnVHOWFNRHBld2FTM21RZ1ZrdlRlYVZp?=
 =?utf-8?Q?UgzNSJb7ucJJlGrAU/4ACjazA9Oe5cfdbdp9M=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS0PR06MB9877.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(41320700013)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?VXNuUnR5M09rWWNJVFY1RzY5MWVBZUZXdjhNRlJsa3RyZE1FME44VTJzWUFM?=
 =?utf-8?B?S3kxQ09EbllHaWpWeHN5RmI4TSsvM2Z4dEVveDUrblh4RVJpbGtteG5CUi9S?=
 =?utf-8?B?MzlCY3BWdVdRMUcyV2h2SE5pZTBDVlJ1cWEvWjlEamJvOGV6dU1CYk5nZjYz?=
 =?utf-8?B?UGhSTy9yRGpEOHhyNkNLVUErRVlETnZ4djVnSDM4SGhFTXdqdG9EUmFHNjRz?=
 =?utf-8?B?L3g3NmFRaWkyNDQwUjBGdkZtdSs3MFZCakFoU0lEUXIwWGxLSGw5WlJOQ0o4?=
 =?utf-8?B?V0UvZFpiK0k2N3lOaEZsSXA0R2FTOW1lYkxobjJ6OXVQTThqaHV3OUlYekRi?=
 =?utf-8?B?UGNXbHlxN2d3VlRmaDRsNmZXSCtrd21xVEtoVGMyK1A4V0ZpamJMeXRwMTNM?=
 =?utf-8?B?REQ3ZGNoZ3hnU1gvQ09WSFNzWDBnVVZIZS9uWElXeXpPWDRrekRYQnFwQjY1?=
 =?utf-8?B?aG5nZnhxeFN2TkYrNVRxc0g5MkREcjdSdERtOVVyM2NoMzQxQVROM1ZPbXpM?=
 =?utf-8?B?UURJYkppd3Q5U1ZmVkQ3dlVuVWNqYWJVS2lLcWV2ZnJGSEFWTFU1dkhjMHBM?=
 =?utf-8?B?cWR3aHRZL3dPTHdrK0pIYmxuQXlYU2hPTm16Tnlpbkp6Z2pyVEg5V0V3a3Rz?=
 =?utf-8?B?NHQrOVJkZjNyRDlwaDMrbEZSbFAwRWIrWDE0N2J2NDd5SythRVg2NmRJUHNi?=
 =?utf-8?B?RnQ1OXZ0eUtsRXgwSTVUTlJXY1JlT3k5TFFFOWxTSStVVFk0eVR1UmxITXA5?=
 =?utf-8?B?cklxOVFPMy9OTC9Rb05RcGlWdHJ2WEoxN2Y5NC91VHhZMGFGRFlGTW00aTFQ?=
 =?utf-8?B?Y1RORy9WNkZiSkJraTFwdmxZNWQ5S3RwbVJEY0R5K1ZZOTVvZkpBTTZ6OU1W?=
 =?utf-8?B?UmMxbU41NTBuZEQ2emhJR2VoZE5ESHExYkVmenMyL0wxU3RsZ3c4ZEhCL1l0?=
 =?utf-8?B?Rklma0c5WkJYNTcwTEpZcFRIR2wzVVlCbDU2SSs3WVlwZTIrNXZwQUdtL0ZH?=
 =?utf-8?B?RTdMQjJ3Y3oxdTJPYm1vUGd3K1h5cmcwanc4SWxsNnNmZ1RGdEhnNFZhL2ZI?=
 =?utf-8?B?N2ExSkR1Nk01alFLOERlN3RaUkovR3dGMzQ3SVdFOGJaL0hOVTVVWlo3YlVO?=
 =?utf-8?B?ZFhtZitLNUM0YTEwQzI3M2Q2akl1TkxrUDFnczNDZktDMmVjdklyeVM3a2VZ?=
 =?utf-8?B?RTZFRm1PZWovRU8vb1VhYjMzNGJZRzZvbDg1NkppMTViTTJseFltSk1GTDBV?=
 =?utf-8?B?MjhjVEQ2ZVZmRnFBVmc5MWJFaGEzTWphWEFFS3NsOHlpYldMalZacjRSVlpH?=
 =?utf-8?B?U0pvc2x4bGt6cldsbzVad3U0UWpxcDNOYVBwWWhMRDdwNXp3QUtIRlZEc05J?=
 =?utf-8?B?ZzNEN2ZvMWNvRCtBUzV4QlVOb3J2UTdncG5HUGZqd2xRdVIwcndOWldaM0Zy?=
 =?utf-8?B?Z2d3WGIzZmZPQnlwN3lreGlQUGMxeTlHOUg4SlVmeXdKVmcrUlZqNXl3U2tk?=
 =?utf-8?B?QVdmMFhEUFdITkJKR0FsMldRQWwrL3hFYy9RaFEwd0ZlOEFKN2gyOEgvTnpt?=
 =?utf-8?B?aFNBNXZ3Sjh2TTdobjYzeFRsWkdqODJqMVNsdjdiTXFqalVtOC9TM0N5VkU2?=
 =?utf-8?B?WXdubmRUMWFjZnNEdmk0WE1sS3FPQk5MaHVuWDRyaEc0MHlTRFV0eUx3dkJZ?=
 =?utf-8?B?ZEJXQTVBeW9lK0xMQUJXR2s4Y2VVV2NKVE5taTBtS3JMYmc1MjZZTkluKzVN?=
 =?utf-8?B?TTYxdjFOWU9kaXRPY2lnenptTUhIdytvV1hBRE83dlhJRmZPSkVKWmw1MTZl?=
 =?utf-8?B?S2ttNWd5REdWV3Qwc2RWSm12dlcrclErd3pWcnpCL3RhcHU3L0dHRU5IMHlU?=
 =?utf-8?B?NytQSE5ySVAvT0JNQXUwQUIvV3E2OEp6czdkVTZJdGpkU2g2N0JEZGxEczN3?=
 =?utf-8?B?YlNHNWNLVk5sN1JUUlBqeE4xVXZnSmtXVDdEYjliY0pyeFp1MGxPbHd0am1u?=
 =?utf-8?B?a1JxQXJmQnJhSXlRRnhPQXRNT2VEU3pISHpCZGd2Wi95WTk1QVRUb2dRc3Zs?=
 =?utf-8?B?ZzRxbUx1cUpKK1drUDhtbVMzSzVLRUxEaGJlUzYrUE5WMm8xYmlvZ0h6ZXMv?=
 =?utf-8?Q?pTqY=3D?=
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: a01c5f3d-ea16-4f9d-7b79-08dd9a23745c
X-MS-Exchange-CrossTenant-AuthSource: DS0PR06MB9877.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 May 2025 17:58:42.4922
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: g4IwD2Ho25cCp4EZp6e6q0STAnXPMKhD2q4y67t9SHDKIKk9yD2ZFj4Prd1kIz1j
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR06MB8080
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTIzMDE2MiBTYWx0ZWRfXxYc+924FE2kF /cL1FdBvx0Nqck7K1VJMzBE4l2Qy8Engyt1T10Mxea2QAf0PsZdMcweEagd01JYib4VceD41+Ca mHDF5S49ZJk6PCorwLEvqORLYJm74ivJ1QgXN3mKJUOG/I6kIBuGYRZbPQfjpt9c2uGyOa7qw7k
 Yp6bhIcUHPpNI7NCvdVS8CLf0wN42s5J4d4GbKkkq/x8UrEy0SaVW8rXSd8VwpskNl7gi+kogB6 7WTAJUx6cbErYSz4m9nV4osWAl/MsK+G91dkyyOLvU+C80eL1Hquc9O5iithf0RIviAdEOahKXo GbBTax9WoGKaaI5CUdme4xCbnI3K+J87cro/tEEy0meJmLDYJw/e9Tu4dssNRjWCq7DnSrhzGBJ
 pAGxa8yDObjZGrg49hp+yp9X6hmJ6lMa/v7dU0Z/lBGC1eOXIhfCXBX7I1vld7Pvesr7lAVw
X-Proofpoint-GUID: T1DqHeeUZAh6ArpsvdjU8iw1Q5TcqUJK
X-Proofpoint-ORIG-GUID: T1DqHeeUZAh6ArpsvdjU8iw1Q5TcqUJK
X-Authority-Analysis: v=2.4 cv=B4a50PtM c=1 sm=1 tr=0 ts=6830b754 cx=c_pps a=VErjObUdaCniAoRVWXewiA==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=lre9DRYkaIEA:10 a=DyznqomoAAAA:8 a=lOzdwwzSAAAA:8 a=HG2pUdEJNCW_szMMcZsA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=YEaCSb5KSSEdzGS4HzBj:22
X-Wisc_ValidFrom: true
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-23_06,2025-05-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 mlxscore=0
 priorityscore=1501 impostorscore=0 clxscore=1015 lowpriorityscore=0
 suspectscore=0 bulkscore=0 phishscore=0 mlxlogscore=999 malwarescore=0
 adultscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505230162
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

GRML is a Linux distribution based on Debian, designed to run from a 
live CD or USB flash drive. If you are a Linux systems administrator, 
it's smart to have a bootable GRML thumb drive on hand in case you have 
to rescue a server. You can always start speech after you boot into GRML 
but here is a link to a script that will allow you to make a version of 
GRML that starts speaking early in the boot process without you having 
to do anything.  This is valuable for 2 reasons. First, if the machine 
won't boot at all, you might be able to tell why since you get access to 
the boot messages. Second, you don't have to do anything to get speech 
so there is no chance of your making a typo trying to get speech.

We are still working on a version that comes up talking via software 
speech (more on that below). But to make a bootable thumb drive  that 
comes up speaking, do the following:

1. Download the grml2speak script and make it executable:


   wget https://people.math.wisc.edu/~jheim/GRML/grml2speak

   chmod 0755 grml2speak


2. Download a GRML iso file from the GRML web site. The current version 
is 2025.05.


   wget https://download.grml.org/grml-full-2025.05-amd64.iso


3. Run the script specifying the iso file and the type of hardware synth 
you have. For example, for a Litetalk, you'd say 'ltlk'.


   grml2speak grml-full-2025.05-amd64.iso ltlk


The above command will generate an iso file called 
ltlk-full-2025.05-amd64.iso. Write that to a flash drive or to a DVD, 
boot from it, and it should start talking early in the boot process, 
right after the initramfs is loaded.

I'm working with someone on the GRML list on a version that uses 
software speech. Theoretically, the current script should work. But I 
got speech only on some of the systems I tried it on. Even so, you can 
give it a try. You can either generate your own iso file by substituting 
'soft' for 'ltlk' in the example above. Or you can try the iso file I 
created:


   wget https://people.math.wisc.edu/~jheim/GRML/soft-full-2025.05-amd64.iso


This image is supposed to start talking via software speech shortly 
after the initramfs is loaded. But it worked only on 1 out of 3 machines 
I tried it on. Who knows? It might work for you.

If anyone wants me to create an iso file for a particular hardware 
synth, let me know. I intend to put the iso file I created for the ltlk 
up there soonighh.





