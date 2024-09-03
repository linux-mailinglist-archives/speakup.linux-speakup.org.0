Return-Path: <speakup+bounces-1206-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id E939196A429
	for <lists+speakup@lfdr.de>; Tue,  3 Sep 2024 18:22:47 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=math.wisc.edu header.i=@math.wisc.edu header.a=rsa-sha256 header.s=selector1 header.b=DKVv6wwV;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 229EC3841DB; Tue, 03 Sep 2024 12:22:47 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 0048738266E
	for <lists+speakup@lfdr.de>; Tue, 03 Sep 2024 12:22:47 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id CA27138267B; Tue, 03 Sep 2024 12:22:39 -0400 (EDT)
Received: from mx0b-007b0c01.pphosted.com (mx0b-007b0c01.pphosted.com [205.220.177.71])
	by befuddled.reisers.ca (Postfix) with ESMTPS id B6D10382270
	for <speakup@linux-speakup.org>; Tue, 03 Sep 2024 12:22:38 -0400 (EDT)
Received: from pps.filterd (m0316047.ppops.net [127.0.0.1])
	by mx0b-007b0c01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4839XFpM003646;
	Tue, 3 Sep 2024 11:22:34 -0500
Received: from nam12-dm6-obe.outbound.protection.outlook.com (mail-dm6nam12lp2171.outbound.protection.outlook.com [104.47.59.171])
	by mx0b-007b0c01.pphosted.com (PPS) with ESMTPS id 41cr07bpjj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 03 Sep 2024 11:22:33 -0500 (CDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=niE1RpnyqBfvBb4/v64BODY2YWmbQihrISU0c5G/svvNDQw4rlrrju07tAQ6JlJLns4PXfEvfcnCxJrOrR40y7sNsVMq2BverU3BKyeM3qI6Ha7XW72Kw7vyK33YtS6gDjNB4GVc2Mk1MiCGB4A4aQhlP61SLH/IbeBm85taO6Jdp8uzlNtiubReiwJlG3WYb89V1bmI9vPep2dxV3tA8uzXLy0gt5UhfQ1dwzC9dMgc6z5BiKcw7wo8SWke1g4xopIJlqCVJ4hUq8ecx9g0mMghH7iBRx+kQI09BdM0O9QiUSGE5JT69sIHPPUSljR/VkGfZzIkA2pVIkIYRIDZcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=B4fx2IH2kjGe/a4n7MwUlAfQEhtViYCa+FysFgAwCfc=;
 b=gyxLI5/rlWHxvAK+3nnd2G5RTkOLJq978mvaqMF9WsDeCM/xIUEJZMnLylEU1IAk56e+DyOEmN3x5GyiQ5Y5izGl5aM8g9YWt6huK/ugnjGrCUFrwmqucKUHF/Flm6ERE6VFuNBJYCdPg+244Ez/E8baI0kWLrA+C+aGThs1ytkPk6r/2yTXGNNFpUVuQahjByNaZGdLEvGSynD6WGAJkCwrMTRVx8cdBkUSrWyzoAfTYUZV1wd5Dj5q7FQum+GmR2mcFj0kqNqf0v9xAccLwX122gi5nyzhHZViEj21Vv3GyUuTIzjGoUdikVoDgY3PNP/VeQXzcUNIQ1vvVFaJNw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none
 header.from=math.wisc.edu; dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=math.wisc.edu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=B4fx2IH2kjGe/a4n7MwUlAfQEhtViYCa+FysFgAwCfc=;
 b=DKVv6wwVVUwDvT4T7yYWrT1Pys04MEtpH/YvOwyvrMOA56oiOLvbL8vwBAEvPWdH26bI5Ma4302Kpp/iVeIzy1q9z05dXMHisCzIGI02ocbHXqX56smqutjBnJk3+Gf7Z7XEPAZzH7oB0NRwPSMQQ3NZIFYsb004X10NdNdW9Yw=
Received: from MW4PR06MB8441.namprd06.prod.outlook.com (2603:10b6:303:12c::14)
 by SJ0PR06MB7600.namprd06.prod.outlook.com (2603:10b6:a03:326::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.27; Tue, 3 Sep
 2024 16:22:31 +0000
Received: from MW4PR06MB8441.namprd06.prod.outlook.com
 ([fe80::1e0d:706b:3a:45a]) by MW4PR06MB8441.namprd06.prod.outlook.com
 ([fe80::1e0d:706b:3a:45a%7]) with mapi id 15.20.7918.024; Tue, 3 Sep 2024
 16:22:30 +0000
Content-Type: multipart/alternative;
 boundary="------------qotNF0FyDtLbjRjvYC610MvS"
Message-ID: <99cfd787-9c6c-4344-9f1f-e37a6b174074@math.wisc.edu>
Date: Tue, 3 Sep 2024 11:22:28 -0500
User-Agent: Mozilla Thunderbird
Subject: Debian v Ubuntu (Re: SPFUNSUPPORTED MAY BE MALICIOUS CLI Terminals
 with Speakup (Was howto run speakup/orca concurrently in ubuntu))
To: "cstrobel crosslink.net" <cstrobel@crosslink.net>,
        Martin McCormick <martin.m@suddenlink.net>,
        "speakup@linux-speakup.org" <speakup@linux-speakup.org>
References: <ZoieyBFD0TXlL_bd@cudneys.ca> <ZojtZ3RQxdiZaMN1@gregn.net>
 <E1sl62C-0002oX-0Y@wb5agz> <b47611eb-67aa-5c99-07b8-3b31b4168e67@csir.co.za>
 <e7b27ee1-63bd-430c-8d66-d6dc9e9829ec@math.wisc.edu>
 <E1slBYr-0003js-0w@wb5agz> <cb2e836c-c6ce-aa54-a752-3a0d56126c7a@reisers.ca>
 <8aaba50a-94aa-4171-afa0-71530ea1290c@jasonjgw.net>
 <E1slFDa-0001Hb-0R@wb5agz>
 <MN2PR18MB3344FAF885B2801CAC79DD75C7932@MN2PR18MB3344.namprd18.prod.outlook.com>
Content-Language: en-US
From: "John G. Heim" <jheim@math.wisc.edu>
In-Reply-To: <MN2PR18MB3344FAF885B2801CAC79DD75C7932@MN2PR18MB3344.namprd18.prod.outlook.com>
X-ClientProxiedBy: CH2PR08CA0021.namprd08.prod.outlook.com
 (2603:10b6:610:5a::31) To MW4PR06MB8441.namprd06.prod.outlook.com
 (2603:10b6:303:12c::14)
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
X-MS-TrafficTypeDiagnostic: MW4PR06MB8441:EE_|SJ0PR06MB7600:EE_
X-MS-Office365-Filtering-Correlation-Id: 502d98cf-c3b5-437c-87cf-08dccc349be9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014|41320700013;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?K0hXaUZoOFZtQmdqRVhUem1iWlNzZmdNWmFycHY1WFBnU2N6cjlsK2d1NkZL?=
 =?utf-8?B?c002YmE4TnVzWGxNR3Z5UFZQeHowZzRMejQ4YXFNNkVObkZuYTIySFU3S3VR?=
 =?utf-8?B?b25xUDQya01ubHFKRzRkTzl4MTRaQmd2eUIxdEdyV3lRTVNqdElYUWtZYnpF?=
 =?utf-8?B?RGtFbEVRL1NzYXVaUlplN25SRmkxN2FwWnFoR2pQbkxoTXpZVURuZTloL2xJ?=
 =?utf-8?B?bWdPMXpwcm1mS1d3THJrUDN6VS9veUtZVDZmQWdOZzNxQnlFT2ZrN25QYU5B?=
 =?utf-8?B?WXovb2RIUjBMNGNJK203UWdraW9TTmNiei9udk1qaHIvZmdtV0NzR3VZa0RW?=
 =?utf-8?B?RWRTVmErL1pBekJpOEdESklnUGc4Z2I3V21kMUs3R2JndGN0WHluaW1iRkNB?=
 =?utf-8?B?QlhJMEJMb1oxR0JJMlVZTWlLQnJSK1BKU21RMGhEMnBEQ0hZVEpjdjBxR2JD?=
 =?utf-8?B?V2Z3VjhuRXFEdWxlcThMTkFUU2lYejc2cWNmR3FidVJRTmRrb0k3cUFrUU5n?=
 =?utf-8?B?ZmQ5SEdzbzlNclhQdllUcG1DWE9wMTNRYWQ4OXhZSlhBVjdiZjl1K0drQk1Q?=
 =?utf-8?B?emZ0UDNXdFFodWcxTXk0MVltdHJMZVlRZmMzc1RhRmVlcWNyTXArUWFXajlz?=
 =?utf-8?B?bHQycWN6QVhoZERQbVR3Y2xqdE96QUN2bGFsbytVdE1NZXVnRHNRdmZjQU1E?=
 =?utf-8?B?SmdXSS9zS1ZrKzR3aUF6R3NyKzVGRk5BYkRVOS93Y2N5ZjhLaDlyd3FKdmhD?=
 =?utf-8?B?M1hjOUFoZFJ0ekllVExpczZveXovdThuY1FlaURWSWkrclV1dUJ1VHFqTzdP?=
 =?utf-8?B?eGJRUWJvT1k3bElzVm5uVHgvTnphcWxPQTZ4QVlZcy9RRmtEa0hKN3FTTUhT?=
 =?utf-8?B?dlBsUkVLTVlBMmFSVGpBbnVMOFl6RytvV0ZPM0IzRUI2S01hNENqbGVEWHpR?=
 =?utf-8?B?bTAvYzl6Nlo5OFl4K3NEdXNnMnlFV0hTUkc0NDMwUi9HamZHcTBoTmlUaXdP?=
 =?utf-8?B?dVV1YkFUdVo2bVZrcmRqMmV5dncrNm5EZjhXUm0wVG81ZXFIRG96QWRRZkho?=
 =?utf-8?B?YzJVMVJQK0x3eCt2clJmY3JORzlDcitpNUVhNyt0RWtEQTV2NGFLU2pDYVlZ?=
 =?utf-8?B?R29Eb3ZPaHozVmJ5YkkxbmVLRWltNkRiYmt2ei9zblRiZ0t5dUloUkp2aEtl?=
 =?utf-8?B?TnFpS1cvRXNjYUpxUnhIK3JtNjQxZXlMalV2N0RIMTVVRDdHNmUwSjBqU29C?=
 =?utf-8?B?WmlBM0FLaXE0UWMwNUZQWVIyYW1jR09BbWNKcGZkRi82ZnByVnFjR0VFSDVX?=
 =?utf-8?B?RW9xTjkveEYwMzd0ZUJyYk1hTkRvWXpKY3A2dllhMDZJNFNaT2ZDSWl5WVhR?=
 =?utf-8?B?R2F6UHUxaXM3cnhLNmZlMThWWnQ0UDhDVUZvK1YvR1lLMGFjRmMvdU9nMHp0?=
 =?utf-8?B?b2kyWFVDK0VVaWhlSGpyZzduNDJrd28zSjRPL1U2SlFSM1dnbjBoT0xkNVhq?=
 =?utf-8?B?bS9Xak5zVTFaQUo0bVNZenVPT1RPRDFrdnhhaUNjNUo2cUFiQ2t3TE52cGNy?=
 =?utf-8?B?MHJzSWtLcWI4ZGlDUHlVME9aRHpVZ1dlcG54SkF2VXJxMjYvYkoxYm9BNUpY?=
 =?utf-8?B?ZzQrTmZva3UzOWxYOUV4akcrVmIxWDNFbDhwOFYwSFpualNCN2VpR0NBT1hs?=
 =?utf-8?B?T25FN1c1Q2laWGVsTGU1OHlJUXIwQ2lzd0tvR1I0MUlDRWlBeWlhZnM0TEFJ?=
 =?utf-8?B?d1k0RVR4TW9CRTJTbzdIL2ZGelEyV21DalpybGtJTmltTXRrc1ByWFd3OHQ2?=
 =?utf-8?B?Umg4K0gwRG1NOEcyK05QUT09?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MW4PR06MB8441.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(41320700013);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?THQyaFhtZmNKcUUyOEczdlNMRzJwY25wcGp5SFJzdzRVQ3ZtM0trOEx1bEpl?=
 =?utf-8?B?U01MRGptK2pVKzJHdVljcnEyeERSamYyUkdSa201cDFLOFpIQ25SNndKTHZM?=
 =?utf-8?B?MEFKV2hrc1VYang5aEw3aUd3Y1owK2hSSTVKQkNobUl6OEptd1VXMEx6QTBT?=
 =?utf-8?B?WE1SaVhmSzd1Q0d6a1Zidi9mYng1ekpwR3dSSHdDbU1uQmJLeHkrTko5VGZM?=
 =?utf-8?B?U1BBb1FIQ0hjcHoySWlaaTlVcmIwK1lqMUY4NU9EQ2JEKzZ5bUVJTkJyY1la?=
 =?utf-8?B?dFRFV2ZJTitHZFlidEt4SlpLZzRHVDBFejJDQ1RmRWNLOStraG96TEsyNFJS?=
 =?utf-8?B?aEdDSTliNnkwOFNySjdiMjE4YWY4aU50V3ZuVHV4SDJlMDZwR0lSb2ZQZFZR?=
 =?utf-8?B?QWVxbysrMjdIbmhqd0VDWm45TFM2alRlNk52eCtHL2hGMmVhc0o2bHFkUGc3?=
 =?utf-8?B?L282YStYNjhtcTBPV0FDQjJHK2FMbS9Jcks5bmo1WU1zOFE1WUN6TGtZaFZW?=
 =?utf-8?B?MHIzSmIzdDNrYWJzV01wL004b0JFT0UyeFNvaTM2a3hQNUNHUU5zWklTRUJ0?=
 =?utf-8?B?RXpZWHl4bmRzZE1FY2JhWllQL0hRalQ4UGdvWVhOdit0Z0M4UktSQUM5Nzh1?=
 =?utf-8?B?eEhyaTc0ZlhNTURvQmdYdXVLTGs5TGRsL1YrWFNLYmpKUDN0RkpqaXVZRXRk?=
 =?utf-8?B?aHRqM2tWNkk3enh1YkhBODV2bXk1MHRQU0x5cjR3Zkx4SmtMY3N1MzFSNDJw?=
 =?utf-8?B?UzJHbStGWU5iTG9jK0o3U1pGbGFjZkYxTzNLSFBtbXNtSVVCMkdxbVVVRktP?=
 =?utf-8?B?aVBDdzV4U2Y3d2lGM3V5SVlkRjBjdU9LcCtXSkNvVHZidE9kbDBGdTFNbkpB?=
 =?utf-8?B?akxYa1Z3UEgvcjNiVk94YVE3RWhiNXo1dDRKZGxaY2VXMG04MzAvRzlTckxy?=
 =?utf-8?B?ZHBnclFIbTJrTnNVNVk5MGhST3laVDlzbDM3aEFUNndvc3VKQjRMTWxSK2Ix?=
 =?utf-8?B?cjRIZnNxcGhvNmppS2UzRDN3L0xUZ29wODVpMCs2ZmQyQUtkRVRJdW9pVm1m?=
 =?utf-8?B?VncvdDR5N0gybVNZOTlVOFBzUFNOVmhqM3FScEpJM1d5eDl4YXRENk9OUU05?=
 =?utf-8?B?VzdodkFnNHpXOGJxY1YxUXhrYTZONmVLK2VuSVNlUGpoNE5saUh2d1BPbHB0?=
 =?utf-8?B?M0VNS0JESzVleTRoNEVlRWFBYXJGZUJWWlQyNHBlSnNFODBnYkFDUko0RURa?=
 =?utf-8?B?Y0IzVUduTmlSbGwwbW9ub1VSL0p6ZUdWcE84UkFJMDdvMGMweTVtdTc0TDFB?=
 =?utf-8?B?T3pIa0pEYktnTnZFdWRQT3htZDBKYlBlZmYxT1VsYVJCSDhDSkhqaHNLZ3Ez?=
 =?utf-8?B?VXJRTVRpK1hPQlRXbDhTNTNEVmhLekNUUmRNcUlxdWxCREJ5ajVEZlZLaUdo?=
 =?utf-8?B?YVEvR1JyOHg4cDk3OTdwcGJsM0c0T1FQdFUwNTR0bis5QTNQK1hSVmR1eVRQ?=
 =?utf-8?B?aEpwWk0wdDNUTWtVYXFrL3ZMdlU5MjJWKy8rOUVoeWpYdFZJQ3VaeXVMYllF?=
 =?utf-8?B?ZlQ2RlA3N09zWU9nSktVS2tPbjNGZU9xYmc5YjJvZTRwWEVsS3QzZk5DTTBF?=
 =?utf-8?B?WFdkOEQ1QXE3R2hvUmdFYkdQTzBmcEN0NVVHbkhxSWNkWFBFTGxSTHBWSTZE?=
 =?utf-8?B?VGhTZzZWcFNFTDFtTkl6MmI1Z25mMDhTTUtEUFRyMUtScVYvbEE0R3pvam5j?=
 =?utf-8?B?MlkyNmEySmxwNVJ6RzY5akM2VmFFd1Y3NFdwRGZXbnFTOXJkYlMzb3dFS09v?=
 =?utf-8?B?WVd3VFRJNGJhb3Vid0xMeERNak1Ydk12WWd5TnFNbVJsVW1ITExIZDlkZ3Jm?=
 =?utf-8?B?LzREZDFjdUNUL01nMnVaK3YwTzV5dkYwR3o0RnQyQ3dlOVpnc3ZhZ2FzMVNL?=
 =?utf-8?B?UEdZZTdZbEsrd21RblBZRHRJaHdnZkRkS3NTVmlJRGhxcVdSTkVyampkM1Zj?=
 =?utf-8?B?SHRHL2xGdWpRV1A2QytoWXV0SFJQeUJRK3JpNFpWeEpNS0N0cjNTaTJzSmt3?=
 =?utf-8?B?ZUs3UGZFakU5Smh4NElLQ1VrRy9HTi9EL2hnWlV6NlQzOGJSQUNrV3lNQjAw?=
 =?utf-8?Q?fbhM=3D?=
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: 502d98cf-c3b5-437c-87cf-08dccc349be9
X-MS-Exchange-CrossTenant-AuthSource: MW4PR06MB8441.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Sep 2024 16:22:30.7114
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sftig/S4SRt/sSKsJvLw4mM+T456tIa+XjxN4QS+emcRqEkHR/f3TnzbqhQGY0R1
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR06MB7600
X-Proofpoint-ORIG-GUID: GnqpmaEagHhKbdA7zHp8XcVMHdk3wwnp
X-Proofpoint-GUID: GnqpmaEagHhKbdA7zHp8XcVMHdk3wwnp
X-Wisc_ValidFrom: true
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-03_04,2024-09-03_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 impostorscore=0 clxscore=1011 bulkscore=0 phishscore=0 suspectscore=0
 mlxscore=0 malwarescore=0 spamscore=0 priorityscore=1501 adultscore=0
 mlxlogscore=999 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2407110000 definitions=main-2409030132
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

--------------qotNF0FyDtLbjRjvYC610MvS
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Its not just the packages, although that is part of it. The main reason 
Ubuntu is still favored over Debian by many end-users is ease of 
installation and upkeep. I support Linux users in STEM fields. As you 
probably know, Linux is huge with researchers in STEM fields. But they 
don't want to figure out how to install Debian and update it. They just 
want their computer to work.

Personally, I run Debian. That Ubuntu automatic update system gives me 
the willies. I don't want to click a button that says "Update now". But 
I'm not a researcher, I'm the support staff.


On 9/3/24 9:58 AM, cstrobel crosslink.net wrote:
> aI have been using Speakup and ORCA at the same time for about a year 
> on Bookworm.  I have Bookworm backports active. I agree with Jason, 
> use Pipewire.  I'm not sure why folks want to use Ubuntu any more 
> unless they have some very specific package that isn't on Debian you 
> may be asking for more trouble than it is worth.
> I know I read the Debian accessibility FAQ, but I'm not sure exactly 
> what I did off the top of my head.
> Make sure that pipewire-pulse is running on your system by doing "ps 
> -ef|grep pipewire" or something similar.
>
>
>
> ------------------------------------------------------------------------
> *From:* Martin McCormick <martin.m@suddenlink.net>
> *Sent:* Monday, September 2, 2024 6:08 PM
> *To:* speakup@linux-speakup.org <speakup@linux-speakup.org>
> *Subject:* Re: SPFUNSUPPORTED MAY BE MALICIOUS CLI Terminals with 
> Speakup (Was howto run speakup/orca concurrently in ubuntu)
> Thanks for the clarification about pipewire and why it is here.
>
>         I didn't realize that pulseaudio is fading into the
> sunset as it has been around and served well for quite a few
> years.
>
>         To remind those who have followed this thread today, the
> only real problem I am talking about is minor compared with stuff
> that is supposed to work but doesn't.
>
>         It looks like one should be able to get speakup to work
> older world of pure text-based command-line consoles since there
> are things that runa little more smoothly there than when GUI
> tools are needed.
>
>         By the same token, the present implimentation of speakup
> with gnome also does well and all I was hoping to do was have
> both functionalities on the same system.
>
>         Thanks for the information that has been provided as it
> is useful and I am still interested if there is a way to do this
> but at least things are about 95% working.
>
> Martin
>
> "Jason J.G. White" <jason@jasonjgw.net> writes:
> > While we're discussing clarifications, note that Pulseaudio is 
> effectively
> > deprecated now. Pipewire has superseded it. Also, Pipewire includes an
> > implementation of the Pulseaudio client API, so that client applications
> > designed for Pulseaudio still work normally under Pipewire.
>
>
> ------------------------------------------------------------------------
> *From:* Martin McCormick <martin.m@suddenlink.net>
> *Sent:* Monday, September 2, 2024 6:08 PM
> *To:* speakup@linux-speakup.org <speakup@linux-speakup.org>
> *Subject:* Re: SPFUNSUPPORTED MAY BE MALICIOUS CLI Terminals with 
> Speakup (Was howto run speakup/orca concurrently in ubuntu)
> Thanks for the clarification about pipewire and why it is here.
>
>         I didn't realize that pulseaudio is fading into the
> sunset as it has been around and served well for quite a few
> years.
>
>         To remind those who have followed this thread today, the
> only real problem I am talking about is minor compared with stuff
> that is supposed to work but doesn't.
>
>         It looks like one should be able to get speakup to work
> older world of pure text-based command-line consoles since there
> are things that runa little more smoothly there than when GUI
> tools are needed.
>
>         By the same token, the present implimentation of speakup
> with gnome also does well and all I was hoping to do was have
> both functionalities on the same system.
>
>         Thanks for the information that has been provided as it
> is useful and I am still interested if there is a way to do this
> but at least things are about 95% working.
>
> Martin
>
> "Jason J.G. White" <jason@jasonjgw.net> writes:
> > While we're discussing clarifications, note that Pulseaudio is 
> effectively
> > deprecated now. Pipewire has superseded it. Also, Pipewire includes an
> > implementation of the Pulseaudio client API, so that client applications
> > designed for Pulseaudio still work normally under Pipewire.
>
--------------qotNF0FyDtLbjRjvYC610MvS
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<!DOCTYPE html><html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <p>Its not just the packages, although that is part of it. The main
      reason Ubuntu is still favored over Debian by many end-users is
      ease of installation and upkeep. I support Linux users in STEM
      fields. As you probably know, Linux is huge with researchers in
      STEM fields. But they don't want to figure out how to install
      Debian and update it. They just want their computer to work.</p>
    <p>Personally, I run Debian. That Ubuntu automatic update system
      gives me the willies. I don't want to click a button that says
      &quot;Update now&quot;. But I'm not a researcher, I'm the support staff.</p>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 9/3/24 9:58 AM, cstrobel
      crosslink.net wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:MN2PR18MB3344FAF885B2801CAC79DD75C7932@MN2PR18MB3344.namprd18.prod.outlook.com">
      
      <style type="text/css" style="display:none;">P {margin-top:0;margin-bottom:0;}</style>
      <div class="elementToProof" style="font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        aI have been using Speakup and ORCA at the same time for about a
        year on Bookworm.&nbsp; I have Bookworm backports active. I agree
        with Jason, use Pipewire.&nbsp; I'm not sure why folks want to use
        Ubuntu any more unless they have some very specific package that
        isn't on Debian you may be asking for more trouble than it is
        worth.</div>
      <div class="elementToProof" style="font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        I know I read the Debian accessibility FAQ, but I'm not sure
        exactly what I did off the top of my head.</div>
      <div class="elementToProof" style="font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        Make sure that pipewire-pulse is running on your system by doing
        &quot;ps -ef|grep pipewire&quot; or something similar.</div>
      <div class="elementToProof" style="font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div class="elementToProof" style="font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div class="elementToProof" style="font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <hr style="display: inline-block; width: 98%;">
      <div id="divRplyFwdMsg" dir="ltr" class="elementToProof"><span style="font-family: Calibri, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);"><b>From:</b>&nbsp;Martin
          McCormick <a class="moz-txt-link-rfc2396E" href="mailto:martin.m@suddenlink.net">&lt;martin.m@suddenlink.net&gt;</a><br>
        </span></div>
      <div style="direction: ltr; font-family: Calibri, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">
        <b>Sent:</b>&nbsp;Monday, September 2, 2024 6:08 PM<br>
        <b>To:</b>&nbsp;<a class="moz-txt-link-abbreviated" href="mailto:speakup@linux-speakup.org">speakup@linux-speakup.org</a>
        <a class="moz-txt-link-rfc2396E" href="mailto:speakup@linux-speakup.org">&lt;speakup@linux-speakup.org&gt;</a></div>
      <div style="direction: ltr; font-family: Calibri, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);" class="elementToProof">
        <b>Subject:</b>&nbsp;Re: SPFUNSUPPORTED MAY BE MALICIOUS CLI
        Terminals with Speakup (Was howto run speakup/orca concurrently
        in ubuntu)</div>
      <div style="direction: ltr;" class="elementToProof">&nbsp;</div>
      <div class="elementToProof" style="font-size: 11pt;">Thanks for
        the clarification about pipewire and why it is here.<br>
        <br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; I didn't realize that pulseaudio is fading into the<br>
        sunset as it has been around and served well for quite a few<br>
        years.<br>
        <br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; To remind those who have followed this thread today, the<br>
        only real problem I am talking about is minor compared with
        stuff<br>
        that is supposed to work but doesn't.<br>
        <br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; It looks like one should be able to get speakup to work<br>
        older world of pure text-based command-line consoles since there<br>
        are things that runa little more smoothly there than when GUI<br>
        tools are needed.<br>
        <br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; By the same token, the present implimentation of speakup<br>
        with gnome also does well and all I was hoping to do was have<br>
        both functionalities on the same system.<br>
        <br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Thanks for the information that has been provided as it<br>
        is useful and I am still interested if there is a way to do this<br>
        but at least things are about 95% working.<br>
        <br>
        Martin<br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
        &quot;Jason J.G. White&quot; <a class="moz-txt-link-rfc2396E" href="mailto:jason@jasonjgw.net">&lt;jason@jasonjgw.net&gt;</a> writes:<br>
        &gt; While we're discussing clarifications, note that Pulseaudio
        is effectively<br>
        &gt; deprecated now. Pipewire has superseded it. Also, Pipewire
        includes an<br>
        &gt; implementation of the Pulseaudio client API, so that client
        applications<br>
        &gt; designed for Pulseaudio still work normally under Pipewire.<br>
        <br>
      </div>
      <div style="font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <hr style="display: inline-block; width: 98%;">
      <div id="divRplyFwdMsg" dir="ltr"><span style="font-family: Calibri, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);"><b>From:</b>&nbsp;Martin
          McCormick <a class="moz-txt-link-rfc2396E" href="mailto:martin.m@suddenlink.net">&lt;martin.m@suddenlink.net&gt;</a><br>
          <b>Sent:</b>&nbsp;Monday, September 2, 2024 6:08 PM<br>
          <b>To:</b>&nbsp;<a class="moz-txt-link-abbreviated" href="mailto:speakup@linux-speakup.org">speakup@linux-speakup.org</a>
          <a class="moz-txt-link-rfc2396E" href="mailto:speakup@linux-speakup.org">&lt;speakup@linux-speakup.org&gt;</a><br>
          <b>Subject:</b>&nbsp;Re: SPFUNSUPPORTED MAY BE MALICIOUS CLI
          Terminals with Speakup (Was howto run speakup/orca
          concurrently in ubuntu)</span>
        <div>&nbsp;</div>
      </div>
      <div style="font-size: 11pt;">Thanks for the clarification about
        pipewire and why it is here.<br>
        <br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; I didn't realize that pulseaudio is fading into the<br>
        sunset as it has been around and served well for quite a few<br>
        years.<br>
        <br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; To remind those who have followed this thread today, the<br>
        only real problem I am talking about is minor compared with
        stuff<br>
        that is supposed to work but doesn't.<br>
        <br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; It looks like one should be able to get speakup to work<br>
        older world of pure text-based command-line consoles since there<br>
        are things that runa little more smoothly there than when GUI<br>
        tools are needed.<br>
        <br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; By the same token, the present implimentation of speakup<br>
        with gnome also does well and all I was hoping to do was have<br>
        both functionalities on the same system.<br>
        <br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Thanks for the information that has been provided as it<br>
        is useful and I am still interested if there is a way to do this<br>
        but at least things are about 95% working.<br>
        <br>
        Martin<br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
        &quot;Jason J.G. White&quot; <a class="moz-txt-link-rfc2396E" href="mailto:jason@jasonjgw.net">&lt;jason@jasonjgw.net&gt;</a> writes:<br>
        &gt; While we're discussing clarifications, note that Pulseaudio
        is effectively<br>
        &gt; deprecated now. Pipewire has superseded it. Also, Pipewire
        includes an<br>
        &gt; implementation of the Pulseaudio client API, so that client
        applications<br>
        &gt; designed for Pulseaudio still work normally under Pipewire.<br>
        <br>
      </div>
    </blockquote>
  </body>
</html>

--------------qotNF0FyDtLbjRjvYC610MvS--

