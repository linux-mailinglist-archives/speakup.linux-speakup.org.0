Return-Path: <speakup+bounces-1268-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id AF7B4AAA958
	for <lists+speakup@lfdr.de>; Tue,  6 May 2025 03:12:39 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=math.wisc.edu header.i=@math.wisc.edu header.a=rsa-sha256 header.s=selector1 header.b=IFnKxLY9;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 9F0E5382938; Mon, 05 May 2025 21:12:36 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 7D8933820E2
	for <lists+speakup@lfdr.de>; Mon, 05 May 2025 21:12:36 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 643D1382121; Mon, 05 May 2025 21:12:29 -0400 (EDT)
Received: from mx0b-007b0c01.pphosted.com (mx0b-007b0c01.pphosted.com [205.220.177.71])
	by befuddled.reisers.ca (Postfix) with ESMTP id B0FFE381944
	for <speakup@linux-speakup.org>; Mon, 05 May 2025 21:12:28 -0400 (EDT)
Received: from pps.filterd (m0316046.ppops.net [127.0.0.1])
	by mx0b-007b0c01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 545KDHE0029878;
	Mon, 5 May 2025 20:12:07 -0500
Received: from nam12-dm6-obe.outbound.protection.outlook.com (mail-dm6nam12lp2168.outbound.protection.outlook.com [104.47.59.168])
	by mx0b-007b0c01.pphosted.com (PPS) with ESMTPS id 46e3m3hm0q-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 05 May 2025 20:12:07 -0500 (CDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Bpv0k2aoiNJ0iOEOjeluBA7fVJLwZQ3aLdc26gb5HAyPaJ46zLlN7yi3pcj5ey5hNtKrGJxuhKchmeqDp55PlX3I1EPMitp+m1u/oAQgZJr+Tc+sk3yfgp3WPgNLZVafbtCPddOKh9VsyeKRm0a1A3Xcoz6ibJgfVZjdM+mc74oWRRKooJdsa4KysStHxSLsRxfoHhvj31OKY0OS6kxHch7LhjogZulIsD2H5sqhVWuSLhkR4HJ4Uoa+TJFQSnppnjAOwn5W6V1fimRKwq2pp/cTaB5hu1L4ivh7oepsPcvgMvbv9SJtSZO8TngO75Af4FFPI6ohUtlLerzhzirVcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4IsXJiM88hlOtKrDDB7bFGeSazs+hYDbD9X4IpOZ5kk=;
 b=H/AhqVPKQZHeHXAX9/OSQRasgmLwF3VzpmhZwokcN/Cby5JvxGpEG4/WyGqXw+aQT6R0l7hdZlLwJo/2eOxmmoZlUXqCdVJXiDLtjlAWvfbZG9yePq5m9CI+4hy/2Y1BiHOyFdk7sUx+XJNi2lcC3Eaey/mGooP0q6raFXc/6t0LR9LVsdqJcYLWyT2LtddaBr9Z3YSJivKmvwr/nal5yOMvuXKmSf8f+BGN795h5QZSWBw/Eoy5mmt+AV6Jh3AFpC7K12EB+UOzuVBjKKOtx2zFUTmix4Te6K6d1osmn95spOHsGwQO8wy/J44zMl93z3X+OH5HNLTIZD0Mq2aEog==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none
 header.from=math.wisc.edu; dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=math.wisc.edu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4IsXJiM88hlOtKrDDB7bFGeSazs+hYDbD9X4IpOZ5kk=;
 b=IFnKxLY90cllqUi4fI0bjvLlU6dqUu5obs6eHyiDRvhvR0WximftRxu0MjTOtg24c287UGp1TINNRGg/vysCINk5WrRV7MXA34Ti402BbHAy8YIsR4j4svFsTuIUgWKrLCSKO8P+3Ynr7j3EJR7JvAtyhdM9MDIBV5uZhe+yPg0izIeTu76WjRMg3iGJ2PnzYN2zovmcR+yDBCU0sLweo/4wwGwCD0gGBpfnjgIXUQIiuVBLe/Vx5T3GPyNV11yIFm1e8hNBrUNYt4NCPHta+HV7m7bCJF+cuwgELeJ29QUpLDPp0DWFgmG8dhBXn3qdhaJVdRGKmYijQGuRFetIcw==
Received: from DS0PR06MB9877.namprd06.prod.outlook.com (2603:10b6:8:1d5::14)
 by MWHPR06MB10184.namprd06.prod.outlook.com (2603:10b6:303:27a::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.22; Tue, 6 May
 2025 01:12:01 +0000
Received: from DS0PR06MB9877.namprd06.prod.outlook.com
 ([fe80::a347:6162:9bfd:9b91]) by DS0PR06MB9877.namprd06.prod.outlook.com
 ([fe80::a347:6162:9bfd:9b91%3]) with mapi id 15.20.8699.019; Tue, 6 May 2025
 01:12:01 +0000
Message-ID: <d8af1f2a-eaa9-4f91-adb2-e2c3cdbf1ebd@math.wisc.edu>
Date: Mon, 5 May 2025 20:11:59 -0500
User-Agent: Mozilla Thunderbird
Subject: Re: Load speakup module as kernel parameter?
To: Samuel Thibault <samuel.thibault@aquilenet.fr>
Cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <55a2cd5c-4b26-4c77-a55b-cfaf59d74316@math.wisc.edu>
 <aBklhtM_CN4OmF3L@begin> <781e661c-7ee3-44ab-8da3-a69e7dd21d39@math.wisc.edu>
 <aBk1N295aRxq7LAP@begin>
Content-Language: en-US
From: "John G. Heim" <jheim@math.wisc.edu>
In-Reply-To: <aBk1N295aRxq7LAP@begin>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: CH2PR10CA0025.namprd10.prod.outlook.com
 (2603:10b6:610:4c::35) To DS0PR06MB9877.namprd06.prod.outlook.com
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
X-MS-TrafficTypeDiagnostic: DS0PR06MB9877:EE_|MWHPR06MB10184:EE_
X-MS-Office365-Filtering-Correlation-Id: 594002ef-c93c-468b-03c4-08dd8c3b0126
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|41320700013|376014;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?c0xBMGFFZFVZZlcvRkZYTlQ1ZUppYlBkWC80N1hRVXhnL0N0TWM1S1VILzhJ?=
 =?utf-8?B?cmdpZWMwQ2J3ek5pS1d0YXp0WndmbHJLdktMU2VsMFlFSTVaSVVhNGNJWjBq?=
 =?utf-8?B?Tmt6aE1zSktRdmpDemsxQkpIRUNhK0tPOUVlZVoxMStZUmxraXpyWS9TK3dR?=
 =?utf-8?B?TmFqWENiaTFqWDkraWZYMFRzVkhCN21Ndjg3SW1JZ0ZxMHFya2Jod0NGRWha?=
 =?utf-8?B?Rjcvcnl1UEtEcGNsREZYUnQrRnJGZ3RoU3V5cUZaNCtDMXdsamhUOW5DSXJL?=
 =?utf-8?B?bjltdDBmNWtnZnlqV3NqV3ZDT24yQVJ0dElzNFpkc3hZSmUyNzMrQTZPMmdk?=
 =?utf-8?B?My9GSVNYQWlHbmI4SXM3aTM1bHpSTWNtaUkyamtaNXlFeXh4SjZLVDRxQ0No?=
 =?utf-8?B?d2h2dklLdXNBSTZCRGY2RllibkJJcTRGL2xJallsWmdMSUZWc0N2TWpOcDF4?=
 =?utf-8?B?OVE2cjhTcUpqdXUycWk3QnM1Z1pIaUROZDNGc0hVMk1CVVVVdG13OFlPcE0y?=
 =?utf-8?B?aXJVcWhWU1FlTG1MOFhxUFNDaVNBUjJESDBLcDJMM1BlWGFDVXQyVGNwOHVm?=
 =?utf-8?B?QmVHQlF0eUt1NWpCdFNuUDFRYWFqTUo5SUtUeXRYbGFLaGZnd3pJRWYreWd0?=
 =?utf-8?B?NFhPUkZzMGNSd05HU1BRK1lUcGpndGlNbjZNd1dtNFhHM2hmZEd1Nm1QeTZi?=
 =?utf-8?B?b1E2TTdWZEE1SlJrdFVmT2srdFdMYm9RTUJ4RXpoSmY1M0x2blVJRnlnMGpT?=
 =?utf-8?B?elBlYnFCSDYzbzk0M0JoNmUxUDVUcnZwRzNDQ0RoQW5QaHVSVURwZzBVaWh1?=
 =?utf-8?B?NXpMb3lWQk9lODlUNUV2OU5KelkrTjdkMTlzVFlZbUt5aGNUVjdhMTNQbXgy?=
 =?utf-8?B?RFFWeVdzM3UwaDhmOUhrSGFqdWhycGF4UUZreC8xZk1temtSVGJVU2MzZ3Ja?=
 =?utf-8?B?UDM2R20xa3F2VnVTTzYzRWdJSEV3cE1RWTJhcEtHblArdUdGMkovcFBrZ1R1?=
 =?utf-8?B?RjVoUnZsQlZ1ekk5R3htTnV6Sk0vZEsxMWdHdXlSU1A2K0E3emZCTmJhb2pn?=
 =?utf-8?B?UFIwK2xrb3cyVjdoNWxWbUhucVFubzJEU3pva1ljalMwVXY0cXZHcmp0citr?=
 =?utf-8?B?NXpCTWJYclFtaEJjVll1RkVFeGYzMjNNaVhFSFBlQ0RZVFZ3U2hLa1FnZ0Zp?=
 =?utf-8?B?aGFRcm8xY3F0T25YRldNOFd4REtnOWpwVVJNN1A4T1h5KzdIU2NUVDhTVkkv?=
 =?utf-8?B?dVowNzNvNzJnZnFGb2pvREdhd1JlbE9zdC80WHBoR051QzJzaGZ6QlJ1N3Nh?=
 =?utf-8?B?RWRxS3BaZ2Rja0grTWdaNU5BNGJTOC95Y1BLdjNjNUxENHlFb1Z6aDUwMTly?=
 =?utf-8?B?dkppV3c2ZEl5aDFDR1dvSndQM1dGQVpBYWFYL2d0TWNzM0JMY0dYbGswbGpJ?=
 =?utf-8?B?dzFkVWRjeG9kYktnTjcvWnhXMHk2RHlyeUVEMzF5dE9zcTRJR2RjNVUzalhn?=
 =?utf-8?B?M1lLWUYzSkJIdm94dE54MkVLOUtXRU5oSllQaXpkbkRKakNiNUdORXQwTW1Q?=
 =?utf-8?B?bm1qbHpFc1NuL0tnWnRTZDY5aFhEMkw4Wmt4WmtJczVmeEVyZDRkM29jNDQr?=
 =?utf-8?B?cUlTVEdtRGVnOGxnNVdCOStmR1A1NllkNzl5eDRBU2JXSWpER0hlZThTUi9k?=
 =?utf-8?B?K2M0SG5JQ2p5OEtyaXI4TWpHNXF3ckxQckNvYzlKK0JYMTFpenNDekhqZnVR?=
 =?utf-8?B?RDdFYnY5WkRGQXpyK2xpVjFRRXQxNlptTGFIZUpZWjVKRW92OGhlMWdFeWdt?=
 =?utf-8?B?dUk4KzFJTlVEN2w1RTBiNGNGK1phU1pQblU2ZWxTUFl6RFZXT3poYUpxd3Nr?=
 =?utf-8?B?TDNGS053S3Q3b3BoN0tQaEVCY1gyS0h6MTU3alhMMDNMc0pqUWJYcnlnTU90?=
 =?utf-8?Q?qwK4FCm/Ggs=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS0PR06MB9877.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(41320700013)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?cGt4bDFDWSs0aHhSZEZEa0pHN3BIOS8rcW5KNFA5RFFwTlNSNjNwbGt6dThj?=
 =?utf-8?B?SDJXK0lBdnhoRkUxUGs1Z2RWRUN3NGgzZE1ndDB3cUJwYXhuNDJMaVlWVmU5?=
 =?utf-8?B?R3czZUIyY3pQUWg4alBZVzFVYm9ubG4xTm9jV1RiL2I4QzFGQjZabTJYZGda?=
 =?utf-8?B?RlpRaWtQWTg5MDJxODF0RmdqM25kU0hhZGlwVE05L2gyZlRHNU9NcXg5MlpQ?=
 =?utf-8?B?L3dFc25lS2NQcFJoRy9ub1pJZ1RaRkNpQkd2K2FqelgwMEdXSG9YL3puSTAr?=
 =?utf-8?B?YWp0WWxqdEEwMlJ3c3o1YmRDd1dJd1FObHJpc1BUM21iZE1BTjVXNFJYcVN5?=
 =?utf-8?B?MUx3WUQvb0d4L2JpNjV3cTVSVDJzMG85NGRna09Vc1RiUHU4SG9rSHBFTHRw?=
 =?utf-8?B?bHByc25tMXRsZW93NEdraTNLL1UrVHZrYVVZa29DL3Q0SHFsU1YxQm5LRlVS?=
 =?utf-8?B?VElQVDZYOVJ6My9qN2VhZFp0eDltbzNxNkFwSWNGRklZdmRTZE5BWmdacDZ1?=
 =?utf-8?B?bzdBNmUzRjZab2x4ckQvVEltb2lEMElJY1pHUVRoYld1enlVcGMwa1grZG1i?=
 =?utf-8?B?UHFTUUlOaEhRNnl3dXR4RTZHNEJ3a2R6bEZPRTFEaDIyL3pZWWVaYVQ2VVJo?=
 =?utf-8?B?bTZHa1BvMzY1WC9UdkcvRER5Qm9BWkdzUTIwSEFsZWFHYlZwTjlzNHk2Ym1S?=
 =?utf-8?B?YVZoM1NxWWxwb0NQMlA4bkNZVzdheW9hWEM5ejk2ZENxdzcxKzVrUFJ1bnhu?=
 =?utf-8?B?OUhyV0tscGxETGM3WWQ1d1ZwbFdUTHdkanU0dFFJbXhwbGRYYkxlWGpzTDMx?=
 =?utf-8?B?Nm5oeUE5dkwrR1pXMWxTeVozdzlXTUlUdkxRd1FGRjIrUDBTekJpcE4yeVBa?=
 =?utf-8?B?M1RxYkdidXlQdzZVM016a2hIS0JzdjFUZkFzeDJqMExkaGQ4anFjamtIL3RY?=
 =?utf-8?B?ZGkwWWhkd2ZPUE9XUGJnZ1FTVXFoUndFUW4ydU1WbHV6bCs4RXMzc2dtaTgy?=
 =?utf-8?B?RTZHN2V6ZXhYdmRIb2dyQVdNaUMvaGVDaTIxUjR4S3FaUUJoa0pTbk5XYldB?=
 =?utf-8?B?ejE1Q2dJK3ZDZzJTSE40L1RHWjBTVThhOElCMExmNzJ4RkJTZjRKamJ0R2hl?=
 =?utf-8?B?Q3FRS3FlZmJocURabmdsVmxZcmROd3c0azNHRzNnUXpBZFl5dGoyUjl0dkEw?=
 =?utf-8?B?d3BxbVFnMVJ0Qm5tdHZ0aG9uMVc4UjEwanZ0MVRlWmNEbnl5amZ4c0twTWsz?=
 =?utf-8?B?RkFhMlZkbTVXdGprRWR1MEFRbzJRS0lvKzY2d0VWQnhQMkxya0NENFNMSVFm?=
 =?utf-8?B?cGo2VmZGaklVOGVHWkEwYitFWTkrQVQ4VjcxQko5WTF2YWVDc0tXV2g5MkZC?=
 =?utf-8?B?NjRweG4rejZ5T2ppYXFWMmgwQzVMNDh5enozRXhsY2N5YVQ3M0g2Z2tENzU2?=
 =?utf-8?B?MTkvVEVEMWpqcHVZMTg5b1N3SmJqWkNSSTJuTnB4VDNZWXYzNWVMTlZHQ3FG?=
 =?utf-8?B?YytGK0k5RG1laEZMalBmODk2c3gzOWxDMmkreWE2eUdaemFqV2VQd0dzRVBD?=
 =?utf-8?B?QWloVjZiazRDQ3VhYmRjOS8vcEhrbHJ2WlNpSmtBVnNnRWNjc25udkZMKzgy?=
 =?utf-8?B?TU44M25PZnloZ2FqSGR1Y285VGozYU9GRjY4Q0ZCSUZqRisxdXROMGIvbnl1?=
 =?utf-8?B?Sm9ERzNWaHRPUG0xL3JWZWswNWdvNWVNK3JTNStKL1NlRHRKeU8xb3NmT3VW?=
 =?utf-8?B?eHZtTEYrSEJQWnBkN2FzQWNQUDlWWVJvaVpxbHBNUjBDTXFSeE4wV25veFVx?=
 =?utf-8?B?ejNINUR0VW1hcjNQazRkWWdaNzZ1a3VkcUh0MnhvM1VuTUI2T3c1Z1dDYTEr?=
 =?utf-8?B?MmJFRnorN3RSU0RLZjExS2k2K0h3Sy9MYzJ4SzZBT1p6djk4TFlhOTcvYm1w?=
 =?utf-8?B?WWtHK0xNeUl6RlMwTHJ4ZDF1STFOME9TTnNIeWhIcGMrbEJRTmRXeHBmNmNk?=
 =?utf-8?B?QjFxTm5XQ1VEejQwb0dmZ3RZMzVtdmM0Yld6Zld5VzlGSlBISy9RelNuYng4?=
 =?utf-8?B?cWlaN2dBTEliM25lSUM0TGJoSjh0N2VBMThtcnhEOE40ZFBMd0pVMm9sVlRV?=
 =?utf-8?Q?hLnw=3D?=
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: 594002ef-c93c-468b-03c4-08dd8c3b0126
X-MS-Exchange-CrossTenant-AuthSource: DS0PR06MB9877.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 May 2025 01:12:00.8257
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Z72rUoMi6H3kFb5XbNDN0Kupg/GpNOtAGZ4gg4eYix890QtEhNCiRb6mmiiZ7yMO
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR06MB10184
X-Authority-Analysis: v=2.4 cv=KJ5aDEFo c=1 sm=1 tr=0 ts=681961e7 cx=c_pps a=DnJuoDeutjy/DnsrngHDCQ==:117 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=dt9VzEwgFbYA:10 a=lre9DRYkaIEA:10 a=Ow6BCx_VBzWI-8OmecIA:9 a=QEXdDO2ut3YA:10
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTA2MDAwOSBTYWx0ZWRfXyGiych1eUw49 t6EElT+eTN4/SAx4YvXVjVV9UM2pCrEPJuUQD8ZxDFntUOsyCkZW1Fhb/Stn0x1OZWYZt/hHHna GPrhOrepql908jTWmLG7R2Yj1SZ7XCoSSZXUXt8ebSO3LlGewnSdfMHUuiyKFkzwYhKdnVK1I48
 j82Tbm81sHab6ArcRyyyQCScId3n/wtREmq1gfyDpJjpjmcEdQYrAa1LbGPd/8MEBq6bvsVZeNc 11kNYwtj3sGVOPjrJ2K/olpFjVwNDYRwvDR3fHC1pEVGNQuOQQ3CQ0zmltrgPr4P7DR7N5qTfNt TCXCQ1BiD4wP4ajyZA6sMW/063o0jv3WfkWpUG1VjzHkMCLdnfXTEKPylv+M+EqF7rgABvpn2Sf
 MK//EkuwXxY0SLWO0k77j6XQss0TExsepKB7isODa5BDScOA3DobL77ZjySeDpBVFu4yV/8q
X-Proofpoint-ORIG-GUID: 6zPZBg9daKYRHPTwy7qmNsDjv5zs8-zs
X-Proofpoint-GUID: 6zPZBg9daKYRHPTwy7qmNsDjv5zs8-zs
X-Wisc_ValidFrom: true
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-06_01,2025-05-05_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 spamscore=0
 impostorscore=0 mlxscore=0 lowpriorityscore=0 phishscore=0
 priorityscore=1501 adultscore=0 malwarescore=0 suspectscore=0
 mlxlogscore=999 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2505060009
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5


On 5/5/25 5:01 PM, Samuel Thibault wrote:
> John G. Heim, le lun. 05 mai 2025 16:28:19 -0500, a ecrit:
>> On 5/5/25 3:54 PM, Samuel Thibault wrote:
>>> John G. Heim, le lun. 05 mai 2025 15:48:21 -0500, a ecrit:
>>>> Anybody know if it is still possible to load a speakup module as a kernel
>>>> parameter?
>>> It is still up to distribution initialization scripts to notice the
>>> speakup parameter and load the module accordingly.
>> I don't know what that means. I am guessing you're saying i have to ask the
>> GRML developers if they support it and how to do it, right?
> Yes, that's it.


Well, I already asked on the GRML list and did not get a response. Maybe 
I'll try again. Or just give up. Supposedly you can pass a kernel parm 
to the script that generates the iso file but I tried it like a million 
times and could not get it to work. Seriously, I tried it so many times 
I ended up writing a bash script so I only had to pass it the different 
parameters I wanted to try and the script would rebuild the iso and 
write it to a thumb drive. I said i tried it a million times which maybe 
is a bit of hyperbole. But honestly, I'll bet i've rebooted my desktop 
50 times in the past week trying to get this to work.

Maybe it's not really worth doing anyway. I thought if I could finally 
document how a blind sys admin could make a bootable thumb drive that 
spoke during the boot process, it would be a great service. I know that 
at one point in my career i'd have found that very useful. But I don't 
think you can even buy a hardware synth any more.

Even so, how about some guesses about what should work? If i add 
"speakup_ltlk " or "speakup_ltlk.rate=5", do you think that should work? 
Assuming GRML properly handles those parameters, i mean. Their docs say 
they do.



