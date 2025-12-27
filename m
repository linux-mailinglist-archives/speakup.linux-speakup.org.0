Return-Path: <speakup+bounces-1478-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 31A83CDFEA8
	for <lists+speakup@lfdr.de>; Sat, 27 Dec 2025 16:54:41 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=math.wisc.edu header.i=@math.wisc.edu header.a=rsa-sha256 header.s=selector2 header.b=f0py11CK;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id A4E663817FB; Sat, 27 Dec 2025 10:54:40 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 8417338092A
	for <lists+speakup@lfdr.de>; Sat, 27 Dec 2025 10:54:40 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 6C4513817DA; Sat, 27 Dec 2025 10:54:34 -0500 (EST)
Received: from mx0a-007b0c01.pphosted.com (mx0a-007b0c01.pphosted.com [205.220.165.71])
	by befuddled.reisers.ca (Postfix) with ESMTPS id F3E8C38092A
	for <speakup@linux-speakup.org>; Sat, 27 Dec 2025 10:54:33 -0500 (EST)
Received: from pps.filterd (m0316039.ppops.net [127.0.0.1])
	by mx0a-007b0c01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BREwwHl1295596;
	Sat, 27 Dec 2025 09:54:32 -0600
Received: from ph7pr06cu001.outbound.protection.outlook.com (mail-westus3azon11010028.outbound.protection.outlook.com [52.101.201.28])
	by mx0a-007b0c01.pphosted.com (PPS) with ESMTPS id 4b9hn8p5f5-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Sat, 27 Dec 2025 09:54:32 -0600 (CST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tvVVMGYkxRdneB4DOCCis06TQeX8QBt8KPkynGkmtqRt6jTWLOH/tvR7l5WuVrSqJ/pggtyrpAL9IipRp3CJYqmLNtiayAvpGkB6wwkVR2rEOLDP03ru5ZkN5ZXAQ9Kb2J2zPzcactkqKVXaQlSbhPMcVUY6zdkNgAroFhaPdKjnwbocV0OX7IIyvOLZKio4fZwrXxSTTXb9wIStZuBK+ZdNRSSxCTjsLgD980NWgbYlSV6Vrxi+DJL2xGyIjVOJblv4z09bjfVU6bDUySeMjsv1XkfQPkyNyS1W11IwdIn5qHufOYwKPCYPTeRntYYSXEyf3qLw5NBSL2no3HXR9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hcVXl7CCcNmx6VvGqMBcKxArVoMfW7YqJjIWH7lSAMM=;
 b=SzeNgnrWo/ncmyEQxiXP+aMTS1UshBcFKgi4tlNZAT59ihCdApwIKh13IXEkULRtgl8i90K9zMAnTt54v1pfNCTkcrnyss30JoqqrPHyzos8030eAf/mdVk0/NOXzJJSIy7YccsDo5T7nER1vgExbqxYpmquJvBM4PI6FFCRQJC87DKkinvNHGamFw42k8cgg4rBjW1Qmziv9ErfyE5hc0yZimDxj/t3UVs4IUR8k9KKdvqa8KkE/uZwVDMBe0/B7dxQAeD6D8Qa/ijBrAZXYaaZdjJRm9AwOgsmZKrQ+0E2Gg4tkqHAfkuznjd+t9qOBkFw5bhlUQaYe8gxSs/+hw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none
 header.from=math.wisc.edu; dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=math.wisc.edu;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hcVXl7CCcNmx6VvGqMBcKxArVoMfW7YqJjIWH7lSAMM=;
 b=f0py11CKKzE6Fs1t+wQw8R7y7M34qz6SYPcv1STEqCOTe3F1+FJuV26OHe/YQQ1H23qxskiqd2BZ7uuzraByMeO3keRutPGqtvCDw47lsfZcOmJmqds0Uq6CdpLRtDwPaTJatsU6b1YAMd12+S/QZ7LM2Mg6MqTAFMUvsw+A3YL1xPI48GEy5DqH9iKv9XeARIWX6J3Klchb4dH01wWAHCzeyy6x1TyEmYzhGCqrM6kVjiUe3y2IBldbB/sbMTsdUzT+8YDFR+aAFhFy66mdR+sPiDrjIr+wFmP+8WNlRXqtwkAF/+DgfftYotaCT/UUF97PB0sesceLZpcDI5b/vg==
Received: from BY3PR06MB8195.namprd06.prod.outlook.com (2603:10b6:a03:3ce::19)
 by LV8PR06MB9685.namprd06.prod.outlook.com (2603:10b6:408:247::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9456.13; Sat, 27 Dec
 2025 15:54:30 +0000
Received: from BY3PR06MB8195.namprd06.prod.outlook.com
 ([fe80::a7ad:fb62:4389:fd8b]) by BY3PR06MB8195.namprd06.prod.outlook.com
 ([fe80::a7ad:fb62:4389:fd8b%5]) with mapi id 15.20.9456.008; Sat, 27 Dec 2025
 15:53:50 +0000
Message-ID: <c33c28ff-e17f-4ec6-a49c-796e39b77405@math.wisc.edu>
Date: Sat, 27 Dec 2025 09:53:48 -0600
User-Agent: Mozilla Thunderbird
Subject: Re: I'm losing it big time!
To: Kirk Reiser <kirk@reisers.ca>, speakup@linux-speakup.org
References: <dae41d81-e038-41fc-e2c6-39d079283819@reisers.ca>
Content-Language: en-US
From: "John G. Heim" <jheim@math.wisc.edu>
In-Reply-To: <dae41d81-e038-41fc-e2c6-39d079283819@reisers.ca>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: CH0PR04CA0102.namprd04.prod.outlook.com
 (2603:10b6:610:75::17) To BY3PR06MB8195.namprd06.prod.outlook.com
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
X-MS-TrafficTypeDiagnostic: BY3PR06MB8195:EE_|LV8PR06MB9685:EE_
X-MS-Office365-Filtering-Correlation-Id: e94af040-c45d-498b-b28f-08de4560209e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|366016|41320700013|376014|786006|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?T3g2QW5LeXpVS2RCUXVxZWRSOGtZaXExbDhtUWd5cWwxYVBYeVZIZlpVcDRj?=
 =?utf-8?B?TysySDV5UGg1c0o1cVR0TS9zTis0YW81bDdWNVBjbisweDA4cGlVcXJVbGRJ?=
 =?utf-8?B?ODUxbUFYeWtZeGhDaTRySEltemM3YjUwM0RvdEpINHJNSGkrem9xU0E1YThL?=
 =?utf-8?B?UGRJUCsyczFqb2UrOWVSYnJRWTJHMlFXU2c0VGVHTVRsL00zUmpPRDhtV1Mr?=
 =?utf-8?B?TTdRSzZmZjNtZXhyU0NKcmFpaFk2RWJkQlk2ZGdPTVp6aUYvOVUxSi8wcjc3?=
 =?utf-8?B?VURXSm1CbWZ5cWQxR05oUkprTGpnUkFlODQra1FOSkhpMmF6K0Q3ampieFJa?=
 =?utf-8?B?b0NtdGc4eERRb2hUVWRTcXduMEFWM3VlaVRzRm13SUR0M0EwWTZxbTRORnh2?=
 =?utf-8?B?Q2NMeDUzL0JEc1ZaN2JtbjZteXpCTGlQblBFYVkxUTBidmNWNlBTVXRFc3Ny?=
 =?utf-8?B?QkNUNytBc1FTUFVLQ2JqSmE4YU1VemxxR2ZkeG5GT293OGJkbkdGeHRjU1la?=
 =?utf-8?B?ZmZHZTVUVHVVWVU0TStna3k0ekpxQllENHRjK2xWZ1ptdFA0TldoWmtxVjNC?=
 =?utf-8?B?ZlZYTzNLRGVSSGZ1eDkwTDF6RHkzVVlIcis0eWFoYk5jSmtMUnZJZ3BXT2Mr?=
 =?utf-8?B?QXk3alRaNXhiWFExNEg5dG1CL1ArODk5TUhzWDNtTDVIS0NDL1N0bnA4UklV?=
 =?utf-8?B?aUhBMTFuMlZrUnJ6czVGUDBCTDlSUHFoc2QzeGY0WUx0RGhqb1ZIQ0RaRTk0?=
 =?utf-8?B?ekNiMkUwWklCWGx3MlNFVmowTDZFd1RCSGlZWGJaYW5JMzRTVzdJaGk5ejlw?=
 =?utf-8?B?SWtXVnV4aFpyOEc4aGtNN21XcEljZHUrNEh4Q3czT2VqanZsUmNHL3A3Q0Rs?=
 =?utf-8?B?SHpQckZOMG1Da1NxTjJLSjNPNkdKUS9mTkxtTk9HWWU5a3dPMGh0WTE3STdz?=
 =?utf-8?B?NE81UTY3QUZFWHJhUzB5czE0NHZhbjk2VncxbWxXUFdBZHJ0Z3N3di9lbFpu?=
 =?utf-8?B?OWxrSmZKSVFhUTF4b2swdCtQaVk0NzEyUFU0MkdGNUNScG8rUyt6TVpva2Nx?=
 =?utf-8?B?VEk0ODFRVXVySCsvb1ZOVVVHbFFIV1A1dWJNUXdjeU1yM1NkdUVnZDd2bFlW?=
 =?utf-8?B?dGVyTXZoOUhiK2V5OUh6QUVYUVc4OFZQZW00eG4wUnJrdy9qdVc4cmNZeVRh?=
 =?utf-8?B?ZlRWUTE3dVFvMGNvL2YyTEZBbXh5MlQxUTJNcnhKZ1d6ekxRcW1NTGdvZ0VR?=
 =?utf-8?B?QytoM3p3OVZra1Rpa3F6ZVlFZk00aDcvRFUyYzVrVlJmVGZuM1BIYWx6U2U4?=
 =?utf-8?B?L2l2cHhudVl2cUtzaURmTHhycThVem1STEg0ZGhrUTZCRms5UjExakVVazMz?=
 =?utf-8?B?S0s3WXVxVDMrN3VMNDdmbE5BaHF0bmszNk9oRzU1djViM3RDOEUxZ1hDV0dU?=
 =?utf-8?B?SXgwV0ZSazM0enZtOEJrdVI3MVk5Rk8zT1JjdTZCd25nbWNjaGxZNWhySjZh?=
 =?utf-8?B?aWV6ZHRPTjBqOUtGaGQyRk5iNlo3U0MwYXllZ3MvM3NhNk9ET3Z6UzQ1d0s5?=
 =?utf-8?B?SHpmRXpHb1g2MEE0QUdIbzR2ck1nS0xMcGpIUE5vUDVrRVZ5djg1Z0dpbk1k?=
 =?utf-8?B?cWFIWGE5aFFMUGRtWExGcUUrS0hrdzdwbGxnZ0hxbG1LcUxxeHVGSTVOUGVG?=
 =?utf-8?B?SG5aWGdXU2QyaU1MS2lXaUFqdzlrMC9yWStPbjJmVlE4QmJzelBtWldxN3Vv?=
 =?utf-8?B?WVMzZXZEVHAxbWNrYWtCbVJRYVNPQm1kcjNCd3lWcEpabFlybnIrazFNOG5Z?=
 =?utf-8?B?WjVJN3R6bmRHbS9tWGVWdlk0RTVnRG84NFI2N0RuSXJEWEwza1VoZjVYNnll?=
 =?utf-8?B?OTl4dEZHdFF1ZkZHVk8xcWsvSGNIdEVnWkJ2RXhmUzNDUXYrZ1pOcGU5WCtJ?=
 =?utf-8?Q?yvsSTpxvV3KtV+WaXTz3ZVMpy6tEqA+n?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY3PR06MB8195.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(41320700013)(376014)(786006)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?a1ZlZ0NFMXUrWVVkWnFuMDN2MG53b1ovZEVMWm5rS3kxdFQ4QndBVmNwWk9t?=
 =?utf-8?B?YmJyWFdwMlFpOEp2Rzh3Q2FDTFhjNlg0L1VVUHIza1psNm9WelVETksvQVUr?=
 =?utf-8?B?a2t6MDdIL3VrNW1GQVhQMmg0c0FRdUNMaVY0NjhOREVTT0liQ2ExMDd4ZVNm?=
 =?utf-8?B?L2NsQU5ia2tKajFEOWw3Wkx2NjdxaTFNNnpBRzdUdUkyUSt2ZG10RnAwTTEz?=
 =?utf-8?B?L2VJSUlOaFdQUUgwdmhPTmlnNGxDZ1hxUDJoa0xibmpFdWRjM1k2TEpWbFB1?=
 =?utf-8?B?OUxqN1ovUVBQUlY3TjRDMmFhVjZQZVRCaThydWlXL08raXVaUExSSGFEdGh0?=
 =?utf-8?B?U1BOblZKbTVjUDIyOEpPbiswRitBbWU5cWkwN3V0dFRSVnh2VG4yYnFERGdN?=
 =?utf-8?B?REFFSTRPbXZpY2c4V2t5ZzZBVDh0bkZHd2VESUVHemxGbGdZWUptbUU0Rnlp?=
 =?utf-8?B?K1EzR0s5RVhZd1BFNWRqSUFSWHJRanhaVytlNHRZU2tSb0s5MU9iVlpTLzlp?=
 =?utf-8?B?WlNCUWRCQU1qU0REYlRrQjNLelhrdUViSDB6OHBQdFRFRkF3eWJoaEY3VUtK?=
 =?utf-8?B?ZkZUMndzS2lDZmdXR3ZNbXJZSTBueGlxZ1VNVDh2czB2QXFCUWlhYzFjNzFQ?=
 =?utf-8?B?N0VqbWtIZ2kyOXU5SHdsVnlhdE5UMXRaT3grbVRqcHFRY21wZTkwdFBIWldP?=
 =?utf-8?B?b0hkRXhtZUZhUmdQeVYvN2JnQnljVnFBN2dJT1o2REw3ZzY5aHZYd3dPMkt5?=
 =?utf-8?B?QXVzMEsrRDZEdWMyZzBzM3FzblNFQzZwTlVjaWNVSHZ4eVZ6ejNUaU82RTMz?=
 =?utf-8?B?djYzVWxtbi94QlZoWXhLUUl2b3NsK1dKaFRORWp4akhiTDh0S2cxUnBCQVU1?=
 =?utf-8?B?SHZ1aGVhMVliSHJVcHVnczg4M0txUUxQQWVJajBBSzBrUFFscXdnZ2ZZTXFh?=
 =?utf-8?B?eGJ1d25BaGxYWTdrOEFGWjhsWk8rM1BoaVdoc0lXTFh5YzdnSDIrWXlOSnVr?=
 =?utf-8?B?U1o4bXUwS2VDM3djdDhxQktwZGJKK3FKejJxRy9yNWlKM3FhWEE1UzQ5TWNB?=
 =?utf-8?B?S2FjbHVyS21tcy9sb2IxaE5ZTmVJVzc3dThuQ092MjZyZkVqUUtuNmIydnd0?=
 =?utf-8?B?U2dWQTJoaFVXcjFuaHBJVXp1RVpVNWxYQmpVNm53MXJ3cHhVWk4rZCtBQUp2?=
 =?utf-8?B?cE1xMkJpNDBvVm9Jc1NLa1BvOU9MVERXZE51RDhkZ0JyVmMzcy9wTDFYczhM?=
 =?utf-8?B?VG1sdWRXUW1PaWxYRzNmUjRLbVA4UXFDUk5ZeklLRS9KU2ROb0FZUkhaLzlv?=
 =?utf-8?B?aU5mMU5uVGlEUWRYWjVCVUV0cG8wakZ1NUw1NVI1ZlJuL0FOOEQ0a0x0SE1k?=
 =?utf-8?B?ZTRWR0NXdHBTMy9vRVEzZkNUQ2xsZUUzU2FSY0g0ZGUrOUFZVytXRktzY3ll?=
 =?utf-8?B?TlVyM2tvUVBvTXNhVCtMdHVUbHpnNWZsa1VHUVF6YmNpeFNOc0ZYNEp1bUVJ?=
 =?utf-8?B?bGduMFR5NFNjdmxrOU1wSHIrWHA1MHVBbXdadmVIR3FuU0dLdGNIdXNtQU1y?=
 =?utf-8?B?bSs4SFBGUW5ZYlZLRHExUTBoeWg0bmVmb2xibG5IVkpaemZPRGlkVU13VmdU?=
 =?utf-8?B?bXlIVXYwdlJnYUIwK0NpWmRTY0cwbDZINngybjUrbGx1YXlIdE82ckJCMUhw?=
 =?utf-8?B?d0NEL29HMW1vTnVTOGluSFVxcXkwWEFPdUxDTTRJcDErWHFEME12Wm5EaVJQ?=
 =?utf-8?B?NTRETmRqMFp0REJVQXE3UHd2c1kwb2ZuMGFNVzJQemZycWl3S3RlQXU3RkM2?=
 =?utf-8?B?OWlkTktSd2V5SEdUY0huWXdURW5JTzY4anF4dHJQUEIyTFBRdys4bHhaN0p0?=
 =?utf-8?B?V2ZMNUx6TDA5bDk2aGphdExwcW5QOHR6ZlRGSG1HVnpJdkVOQTd6QWs2OXdP?=
 =?utf-8?B?VFczVjlZZHo0NVBQZWlWRjdHYmJJcjNYdEZoNjBpYXU2NDNCSVRORy9HcWRO?=
 =?utf-8?B?RnNkd1FrS2J6WDNNaCtCZ0NnT1BTN2Q2T0FPRDZWUXFIZEZNWFAvaWJkcjlj?=
 =?utf-8?B?Q0lKS05CZ010aUdkdEMrL2diQUdrWHlRQ041L0x0dWVqQ0F3cC9MYmw3bzBa?=
 =?utf-8?B?UDVoRjFPK3lJelVzdTR4d0lGbk9hWHBwMjdSZEh1K3k1ZDZqV1UxTXVFdFZ3?=
 =?utf-8?B?VWthbytxRW1DWWg0K0RTSWRCcURlSEttREpxSFF5dWxQbXJkY2tQbjZVWWVR?=
 =?utf-8?B?YXE3eTlnUUkxdDZwZnZ0aXVTVmxMRXhMMkJDdEZBL0laOTRudFF3VklCbVlm?=
 =?utf-8?Q?eN5WdjaQC+7KPTYQdt?=
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: e94af040-c45d-498b-b28f-08de4560209e
X-MS-Exchange-CrossTenant-AuthSource: BY3PR06MB8195.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Dec 2025 15:53:50.1228
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2HwIu1futTaxIsfXxvtrw9a6gt69q4jN+WZqsNUtRooWJKXnh0bDy09Eg/0I2lT5
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR06MB9685
X-Proofpoint-GUID: 1y9KjV4xZwRyIGIw47e7a1Sm2pD8GXTq
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI3MDE1MCBTYWx0ZWRfXz8iQE3wyN+Nz
 FHgBI7KKjwNktW+K1RSDCEyUofD3Y2vXBRwbwo1iWIHFE0arunSB3Wl+8hrPEtlGW8vY5xozuFI
 QogRlHDK8iuXyfVAop8xoyGMfN0V02GuKi1lSUrPaeNheyS9I2VkY8NrQ3ejKTpoZ3wicxO5nEC
 7+qunaGwTp96+SD/E5eRFdObIyFuVkI4NhlwujAouAKFRbA+dqVpAILP72MgJcmZUZY+5cBMrg7
 +0/Dx/9Q+XEbz34z2ML1KKvEuHNYpIjZMMy4aMylJ3pWRVsPumuNpJWuysKle8kqDrpFdidsu9s
 mLxxAfb2a7CNJ+AKENOIxSV+1S/BNYni8UIEIOCErq1yUfK1Os2ovjBYGrDe/vaWaTCxrHFtHB6
 UeIFAjYtcSBWiHvSc9RGfzPnjTs5YsurG6J8EPbnBJuLMVSDgoYU+QRfS/+uo3mc44dHHYeVTR2
 ZVmIEZpotioCMCpUpFQ==
X-Proofpoint-ORIG-GUID: 1y9KjV4xZwRyIGIw47e7a1Sm2pD8GXTq
X-Authority-Analysis: v=2.4 cv=TubrRTXh c=1 sm=1 tr=0 ts=69500138 cx=c_pps
 a=BtfbQqI9UiSbTyLCKkPcYw==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=lre9DRYkaIEA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=qPKtzgQbAAAA:8 a=YRQVvELpFNUiShsNtBMA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=zgiPjhLxNE0A:10
 a=OTAqJWGB1laLS8RTg9aS:22
X-Wisc_ValidFrom: true
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-27_04,2025-12-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 suspectscore=0 lowpriorityscore=0 clxscore=1015 bulkscore=0
 phishscore=0 priorityscore=1501 adultscore=0 impostorscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512270150
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

LOL! Well, you haven't lost your sense of humor in your retirement.



On 12/26/25 2:21 PM, Kirk Reiser wrote:
> This is another test of the emergency broadcast system. The world has
> come to an end because linux-speakup.org is down! Well, maybe not now,
> but it was!
>
>   me
>
>

