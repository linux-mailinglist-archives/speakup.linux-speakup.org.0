Return-Path: <speakup+bounces-1273-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id B6CABAACAB3
	for <lists+speakup@lfdr.de>; Tue,  6 May 2025 18:18:07 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=math.wisc.edu header.i=@math.wisc.edu header.a=rsa-sha256 header.s=selector1 header.b=FwPCL1jY;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id EE493382962; Tue, 06 May 2025 12:18:04 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id C2DF4382189
	for <lists+speakup@lfdr.de>; Tue, 06 May 2025 12:18:04 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id A36B9382189; Tue, 06 May 2025 12:17:57 -0400 (EDT)
Received: from mx0a-007b0c01.pphosted.com (mx0a-007b0c01.pphosted.com [205.220.165.71])
	by befuddled.reisers.ca (Postfix) with ESMTP id B67C8382121
	for <speakup@linux-speakup.org>; Tue, 06 May 2025 12:17:56 -0400 (EDT)
Received: from pps.filterd (m0316038.ppops.net [127.0.0.1])
	by mx0a-007b0c01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5469GwgJ005086;
	Tue, 6 May 2025 11:17:50 -0500
Received: from nam12-dm6-obe.outbound.protection.outlook.com (mail-dm6nam12lp2173.outbound.protection.outlook.com [104.47.59.173])
	by mx0a-007b0c01.pphosted.com (PPS) with ESMTPS id 46e5nbnxsu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 06 May 2025 11:17:50 -0500 (CDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AaO6ljQAjG9RtLzFe5q4bXpYSDTF320Yi9ru07aegaxeuvMl3hizXo4YxpgdhS/Mjpcgn/j65qhEqoNwfKzfZUpRgtem07VyLWfQiQjQdpvT88SAxF3XPnHXhUcKsjCSNAhjFSamYevLWJjBH/zACuYgeMstSkiaeUUoQvh49PdMSII75BFiK0PUanuyn+utmAbj69MLs/TIl+sQHgXlcvmoKmbkGPItgXS/ieUECmz87XLqJMsJ9vxrTzEoWJ5EMkH7xAoHPSD0A241f+3z/S+ICjJncfQouWprqz+n8e2WVhqZ0Un6zpolBDLKEQa8/17WoEBzf5TxZwexFe7gOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZLp4c3hSUg5WH3nqBjmC4pyJnFNGHg6yZ0hE//MOQsI=;
 b=yHbF47fz51kHwy+cVRXwpRvz4q9envKFJRQx/sAMwV00Lmx5yGfBL1AYoWxMCe3E4mUPFoayIxtb2K8o2oOjXuDZiH2+/sqOhW+X80iCzQnHIJi7GR/k3Isw2DNMxBGkR+0fK9nb076KE9dl36TOGYHOqeC0K8zxJDrrZugIj/TdMmkKzeDBO9Nc4MzkPHvZiFLfrPgfaNxsixCHxU3MpEaWZEgHhhd0rOwGsX0h+FR19tdF8mir6twPuDUpIK5dv5wDA+sXfbFkaIw3k5buOMtO4X25EinHIUq9Y9oDEKXVUfJYioQdzKoYnSzZZosK8DK2o1J4sliBg8TDMDhvZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none
 header.from=math.wisc.edu; dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=math.wisc.edu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZLp4c3hSUg5WH3nqBjmC4pyJnFNGHg6yZ0hE//MOQsI=;
 b=FwPCL1jYgP3KtwGtzwonNSjfvA+8wU0GsBodFfJP9l0/qF/zh4VtkdvmxipHQ+/8hvvOJ2HwH9MZYCxe3EjZctawd3KQkUN5CevsybMu2Y/EdLCwITPW8RgPBnDxmAlK7B+ARxxDjasxwRRQFFNaJeKKDmr6mY7+bZ2RXnpL6I0ANHwwV6nq046KmCWR9Cfe3L6QQbgY5VmlfO0i6xBXFOEfVJFIinICzgqoJSJxt+NzuTOjH8c3RhErEaWF49mtzHK1AUexejaV3QhROgPFRJpUJ60FZ/5TtAB2sE5GMcUGuNcOA1x2XHiivINjN54eaE/j9+7Oj6U93QBu+WKP6Q==
Received: from DS0PR06MB9877.namprd06.prod.outlook.com (2603:10b6:8:1d5::14)
 by PH0PR06MB7127.namprd06.prod.outlook.com (2603:10b6:510:1::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.24; Tue, 6 May
 2025 16:17:48 +0000
Received: from DS0PR06MB9877.namprd06.prod.outlook.com
 ([fe80::a347:6162:9bfd:9b91]) by DS0PR06MB9877.namprd06.prod.outlook.com
 ([fe80::a347:6162:9bfd:9b91%3]) with mapi id 15.20.8699.019; Tue, 6 May 2025
 16:17:48 +0000
Message-ID: <14db84c6-0360-44b0-beb2-54d7e5c424d9@math.wisc.edu>
Date: Tue, 6 May 2025 11:17:47 -0500
User-Agent: Mozilla Thunderbird
Subject: Re: Load speakup module as kernel parameter?
To: Gregory Nowak <greg@gregn.net>
Cc: Samuel Thibault <samuel.thibault@aquilenet.fr>,
        "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <55a2cd5c-4b26-4c77-a55b-cfaf59d74316@math.wisc.edu>
 <aBklhtM_CN4OmF3L@begin> <781e661c-7ee3-44ab-8da3-a69e7dd21d39@math.wisc.edu>
 <aBk1N295aRxq7LAP@begin> <d8af1f2a-eaa9-4f91-adb2-e2c3cdbf1ebd@math.wisc.edu>
 <aBlwpQWdLhedVVNx@gregn.net>
 <6c8093f9-e75e-442b-9d0c-570d066056a0@math.wisc.edu>
 <aBl-sbHNyN6NRrrs@gregn.net>
Content-Language: en-US
From: "John G. Heim" <jheim@math.wisc.edu>
In-Reply-To: <aBl-sbHNyN6NRrrs@gregn.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: CH0PR13CA0005.namprd13.prod.outlook.com
 (2603:10b6:610:b1::10) To DS0PR06MB9877.namprd06.prod.outlook.com
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
X-MS-TrafficTypeDiagnostic: DS0PR06MB9877:EE_|PH0PR06MB7127:EE_
X-MS-Office365-Filtering-Correlation-Id: 0d15f320-6923-45cb-258d-08dd8cb98abb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|41320700013|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?OFVTMTdjdzhsRDJnTExVWmM2b3oxaWFEeGJCSFdRUlJMeEdzWFB6dW9jaUJr?=
 =?utf-8?B?cjBOcC9WdkgyZ2g4c1o2bGR5TTJPOVhPWDgxV2F6UWhLeEp1alM4WDVXZnBi?=
 =?utf-8?B?Sk1ISnpoWk9KRmxyajZ0dmdabE94aVM5ekxudVNEamRKVFhHTm00Zk92SUEz?=
 =?utf-8?B?RHVEZWw5R2dQbVdUUlNuUjFBUFYyU3dybzhtU2xzbXB5aGNwWjlBV01ZeGdC?=
 =?utf-8?B?ejdVZjRPUWZvQnhzZVI1TytmUDVCTE5MSGUxa1RmaUhGYzFDUlpaZ2Y3VFNJ?=
 =?utf-8?B?YXdBbVhsVVE3ZHh3bEYwQURYMGwzVmdTV2Z6T3ZDNXcvOFFoeHJTYmlRY3dr?=
 =?utf-8?B?OHVRUytTbWRMWlBBSFIydEYvQXdPZllIOVU1UVpxMzlzN0o3UzBKU1NBUFBi?=
 =?utf-8?B?ZnNoaHNBcmtsMS9kTHFPb09uZFd1aVJxUk8zMkFoYm55UnUzQ2RNVExEU2tC?=
 =?utf-8?B?d3g4UlhIZVFtbDBGOWpNaDBUWUhHOVU3RlkxZVV4aTBqYnljTFRWcUZwYnA5?=
 =?utf-8?B?cVIrVTRGbVkyemtUaEM3VDJ2dzhPdndyeXN6ZDhiOTJkWjhVUmFnOXA5RnRF?=
 =?utf-8?B?V0hiZWZhQ1JRTFYwSXZtcmxmV1JLN2t3OG5DOUxrR1Q3cmpNYmV1Q2hIZDZ1?=
 =?utf-8?B?MXVKY0tPUmxzUmxiQWRtZlFDY05aYzUxVGFlS1VYTWRJR3FTUkpUTnBrZ3Zh?=
 =?utf-8?B?TE5ncG8veDBldTRRL0FraXovYml4Q1BFU1QxemhxeDhLQVJ1OGtVWTExUDl3?=
 =?utf-8?B?SmZZdDFQN296TkxYd29Wd2tsTC9OV2ZHb2JKR1FyK2NMaFdwR2Jpa0tDaExH?=
 =?utf-8?B?YUN1RWhGVVdIL3BncXZJWkQ5a0ZEL1ZwaFl5bFpwQnVITXVzMm1JaGRab2VH?=
 =?utf-8?B?YTZBN3RpdHVINjRmbzVFTUpBMjZKcndHZVJrMy94YzNZUlRLaWZBZmlqTGlr?=
 =?utf-8?B?OEJYdXVKbER2YzdMUEJKTXNnK2FtWFgxdjV6SklmczZXbzd0Yy9oQkZIWDE2?=
 =?utf-8?B?SElOUGU5QTFiQ1NoT2xRNDZQVUQzTm5MeWw5dzhkTkVTK1VXd1pMNWNrbjZk?=
 =?utf-8?B?SXhHYi9nWXQvYmMxb2pvVXZYd2h3Y3dRSUR3am83SnBBd243SW5oTmMrOFZi?=
 =?utf-8?B?dUwxOUd1T01SdGV5a01tRitGUDlEbGJIL3J1dUk0UTloU0NtU0p5SkcwZklk?=
 =?utf-8?B?emtMRUJ1TTlSUGZvSFE4NTY5eUxpRFpRdml0K29tdGVhelU1QnFVaXRIaXc5?=
 =?utf-8?B?Smd3UndSU0E1QXBJdnp2L2s4U1A5bGFVVER6dUFweVFRSHA2QlNKWmVYc0lU?=
 =?utf-8?B?UkkvNkt6SDlkNEdHSzlLMENHRUVFbk1NWDdIY2xiNVNwTWlqNDRaam95TXU1?=
 =?utf-8?B?QkJKeFA1OEJ4Z1dHaFhYbGptb3BlRWVnVDZNMnJyMTZNMFY4blYrSG1DTjJM?=
 =?utf-8?B?enIvQjR2elV1WU1PN1RNY0xNdE5kVXFBSTZiaXp4RnRZWXRBZkg0K2xUa25T?=
 =?utf-8?B?ejJDNjJLTG5UV1Q1RVJWbUpBU1VrbnN0Tjc2ZVFKZDJKbVphRTMrWlJJZzFn?=
 =?utf-8?B?WDc1UW53M2dGSjBRNjZVUktzSEYza1g3dEp5VUcrN2kzS0Rad0FGbnhjQ3g3?=
 =?utf-8?B?a2t1b25ZaU5uSjBmampjallTT1ZlUDVsSU5YbHVCOGwxdzUwbGtVY1c1TVll?=
 =?utf-8?B?WFNaMmp4UVdrWk9naVJkdUlOWEVrdERSS2JzZmJFQWcrY1FPMHNybFdGSG80?=
 =?utf-8?B?ODA0dXNhYk5PVEpJZHRhZmxWQWhkdm5BNXFzaFdGMWlGZ094a1VXL3BuRHpv?=
 =?utf-8?B?UTE4eEE3ZURoRW1hOURyTytHRm1ZTUpTU3M3aHlLc3VKV000OHgwaE56Z0NE?=
 =?utf-8?B?aGFCRXR2YityTTVVRG45NU4rOUlpWVVQQmM3Zk9uRjBNNjlmd0tybU9FZTdj?=
 =?utf-8?Q?9nHJMDUDqNI=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS0PR06MB9877.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(41320700013)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?N0x2L1FHM0dsS2pBaTRqMjA5UnZ4U1ZJQ2N0MjR6NFMvSEhObWx6UHY1UDAx?=
 =?utf-8?B?UFVCbU1kWkJKcEk4a3lmc3BxYnNyMjYzMVNPOFExcWN4MnozSDhHbCtvcjlS?=
 =?utf-8?B?OHFhYTQyQkdaaGloaTY4aWpSdFFjQXFpRGc4U2p3UHh5RFBnNk9PZ1c4aGly?=
 =?utf-8?B?QnVHWmFGaHdKN2xOQzc3T3lQWWZoRldEOGdIbzlaMFdSV1NmTGdXeThmY0tZ?=
 =?utf-8?B?RThGTDZKN0ZNaTBwMVcwWWNPMTRCN2xOZHdkUkNEN3pDUUkySW1mclVvcEdB?=
 =?utf-8?B?Y1phRFRiZFZqRFl6bHkzajllcENOdWhlaU1KWnAyUGxTSHVXVzZBRFBPaGRw?=
 =?utf-8?B?ZGRrUVN2Ui9lSnB6T2hBRmlvdFFXZU1tS1Z2VG9CNXZpNkZqNzAweUorODk0?=
 =?utf-8?B?OWg3eVIxQWxLSlJWVXdWWlBjbHp0a0o4d2hzTU5ZZ1VTdG9PVm5ObW5WZ1Bq?=
 =?utf-8?B?NG0vNUdyUnQ1OVN1TFIybjVGVSt2bHU5ZHFJNWVxWnQ2OWxNbXNYbXdiekky?=
 =?utf-8?B?UHMwVGJGRVNLdmV2eSswQ2JRd1M3c0hhUEtCemh3cHd3OEZ6cXhBU1E5dTQ3?=
 =?utf-8?B?Yi9PaERCTmlNUXF4Vk4rTUFDd1Q1S2JRMWprQlB1T0lJb0VFaDFyUWJDT3Fk?=
 =?utf-8?B?Z043K0hlS25EQ0JVMldoYTFzQnJKYS9STkhVVWlEZEJFYjA5dVhONzZQZEcw?=
 =?utf-8?B?MWM2bktXN2hHay9Ubi8vRmVnQTVlZlBjNEZtQVY3bFZZU2o5Q05Rb1BoVnA5?=
 =?utf-8?B?ZWtsUHpjY0VGd2ZPRzRnektuZGw2L2N4Y1BrRGNiNnFDMGhrdFhBQVZvaFhx?=
 =?utf-8?B?aEdVdjl4QTg5V3lRRDMzSHVmcDl1c3hqdGJqUTljQWVoRjMrSzM3Z0FZek02?=
 =?utf-8?B?L3M1MjJvZit3UXpYakYvaVl3UGQxWENGdm9ac1RNcjdWRzBUcGYyM28xdW1P?=
 =?utf-8?B?QlF2QmJZZFpscXFGdUQ5aVpHN3pmeVM5NXBVZmtxVXZKenRob0o1ZWp3WHRl?=
 =?utf-8?B?eHRqNTh3TGc2dThMeXA3YWNUNHA5OFlVWEgrVGM0MzRvWTZDL1VMOFJKY1M1?=
 =?utf-8?B?T0hTRmNnUnV1NUJMYmZPZmpxNWN6Z2NCRUt6YktXL0dYTmtjQWd4eE9scDZo?=
 =?utf-8?B?SXZmdm92S0FYN2h3T2M0UHZ1cUJBQ1VBc3NmQ3h5UUFEam5hQVE1dG9nTE0v?=
 =?utf-8?B?ZmdPb1JkcnQyRjF2ejVxTE84QzVUVXhkelBGWHhKaW16VnNud1JlQXhsUGN3?=
 =?utf-8?B?OTV0SjNOdm80aDh4aDdpTlROZ0F3TTV1dDJwMUtQZ0xXci9GVDNZa2VhZU1z?=
 =?utf-8?B?U2VnV1RFd0pZbkdvTmNNR3JmZFprLzNVK0VLbEFXTzlLZjl3QWg3RUlqeW9a?=
 =?utf-8?B?MnJiaUpaVmhFckJDTFFiZG5aNEdDOVBhNXZBbzFmelJPVTV2RUFNUno0eGRo?=
 =?utf-8?B?dENIYjhJVDh4TC9sWnBwTHVVTWhvUXBmSktwc2xBWTNTcmx4MzNnU3FwS2JK?=
 =?utf-8?B?OW5JT0lkOXhwYjVIWEI2U0xCemw1V1Uwa1EybGJyK2pTdkxYUjg4Slp3ZklI?=
 =?utf-8?B?Nm5NSWgrY3hjTHBVMnIvUXVnaTdwRGNwdHdrZU9xUEZoTTE2Mks4QTRWL3hK?=
 =?utf-8?B?dG5CZ0hzaE1yQ05oTVJ3VXVYbWJBaDZkR01RYUFnQVR4aWJqeFNLWXBhTzYw?=
 =?utf-8?B?blJaZU10V01Ea3dBeFd3YXRQVjg3aXhsTldEZlN1ZG1RcTU4R3E5Q0t1KzhT?=
 =?utf-8?B?dVRON2VPaFBLNW5hejdoaGVKUFptS1hCYmIrVzVrdlZMeHY1Y3NIa1g3ZkEz?=
 =?utf-8?B?Ykt0WmlQeXhBQ3JkL0dmam9mL2tSNGx2UG0rZ0RTM0hLK3Q4VDdML2o3cE16?=
 =?utf-8?B?bjBrNWJUM3hnOHc3UlZ6ZVVjWXlDRHdrUTZsSlVHL2haZitxUW1MTzQ0MXJK?=
 =?utf-8?B?SXFiQTJmLzd5b3h2NWdUV2Z6cmVFYnlTRHhnaVBWdXoyVWdvZlY0SmlyZk5m?=
 =?utf-8?B?S0JRRXU5MmtJVTFmSkNZWU1pOWo1b2NVNll1UFBDeE5QN0w0ZENsd2pBWHcx?=
 =?utf-8?B?ZHJLR2J2M05kVlExNlRpdWo4MHVsSGpic2VFOFd5M290L25YMXlkZll5U2VT?=
 =?utf-8?Q?8/rs=3D?=
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: 0d15f320-6923-45cb-258d-08dd8cb98abb
X-MS-Exchange-CrossTenant-AuthSource: DS0PR06MB9877.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 May 2025 16:17:48.2596
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fYnOg9yKphSFPFt9xXAcwblZSPDXpa9qfE1JDsn26P9kur7BZiKpOTQX7syrNjFr
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR06MB7127
X-Authority-Analysis: v=2.4 cv=Zu7tK87G c=1 sm=1 tr=0 ts=681a362e cx=c_pps a=H8RDR50mQ1szzU+C1Tr1+Q==:117 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=dt9VzEwgFbYA:10 a=lre9DRYkaIEA:10 a=SUTpXeWRIqi0_B4EDQgA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
X-Proofpoint-ORIG-GUID: NpkSTNfALxCbxL77MUg3xAQAVCP6Yr-r
X-Proofpoint-GUID: NpkSTNfALxCbxL77MUg3xAQAVCP6Yr-r
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTA2MDE1NiBTYWx0ZWRfX4DStO8BkliU+ S0P2kQF5WkCKFEJTXrzZ7wsm788m919SiL3Jxw0oSBWAgJp6TFRoyL1ef9IxrZE5SnzIOmKLhGV ZAUWEHLAX/XNEFTGJOhEqxP0MqMaJQzWOGI8KT7ohI1mYj4EnXRABkMLYH6YVPgZwYs9vf4Dfnn
 OMlw+zTeo+zASetUoVSmfoI+JMW4CJTIzr9SnCUPF0fr0M6NlSvdyhhVulNuNVmlGx13cfLt5na 9UNC/YVYx2gKimsHTKdK25rAgW1bfRm0+WQFnjG4LKb68GQzI8SH5qZEMxk6oBjOgRt9L7fodT6 UKZn9H2OP3qdb6M5qj93zAtNcoPohnmNiZAgbwClAcAXHe791tzH6irwcY0DFhmajDGq9UR4C0X
 Wplqghn3LMKjPZP386+8qT+oiw7h4duwyrdpJeE5T6JIKOJEzUaWp6adFGG5dPnZvbn9M/DJ
X-Wisc_ValidFrom: true
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-06_07,2025-05-05_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0
 priorityscore=1501 clxscore=1015 suspectscore=0 phishscore=0 adultscore=0
 lowpriorityscore=0 impostorscore=0 spamscore=0 mlxlogscore=999 mlxscore=0
 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2505060156
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5


> If you want to start speakup by passing parameters to the kernel, the
> speakup modules you want to load have to be compiled into the kernel,
> unless grml does something nifty I don't know about. If the speakup
> modules are just modules, then the earliest stage to start speakup is
> inside the initramfs. That's still not as early as the kernel
> decompresses and loads, but it should still be enough for most
> purposes.
>
Hmm, I guess figuring out how to load hardware speech drivers isn't 
worthwhile. It might be possible to install a custom kernel into a GRML  
image but probably a more useful thing to try is to start speakup with 
software speech  automatically during boot. It is not too difficult to 
start speakup after your machine is done booting but it would be better 
to have it start automatically and during boot. I'll have to get back on 
the GrML list to see if I can make this new approach work.

Man, I should have asked here first instead of spending a week trying to 
load the speakup modules at the kernel command line.



