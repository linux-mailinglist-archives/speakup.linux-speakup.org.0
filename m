Return-Path: <speakup+bounces-1543-lists+speakup=lfdr.de@linux-speakup.org>
Delivered-To: lists+speakup@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SF/MHSPYfGlbOwIAu9opvQ
	(envelope-from <speakup+bounces-1543-lists+speakup=lfdr.de@linux-speakup.org>)
	for <lists+speakup@lfdr.de>; Fri, 30 Jan 2026 17:11:15 +0100
X-Original-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 3643CBC6A1
	for <lists+speakup@lfdr.de>; Fri, 30 Jan 2026 17:11:14 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=math.wisc.edu header.i=@math.wisc.edu header.a=rsa-sha256 header.s=selector2 header.b=bMimqbej;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 87680381832; Fri, 30 Jan 2026 11:11:11 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 5C1FA381823
	for <lists+speakup@lfdr.de>; Fri, 30 Jan 2026 11:11:11 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 49C71381824; Fri, 30 Jan 2026 11:11:05 -0500 (EST)
Received: from mx0a-007b0c01.pphosted.com (mx0a-007b0c01.pphosted.com [205.220.165.71])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 187A9381814
	for <speakup@linux-speakup.org>; Fri, 30 Jan 2026 11:11:04 -0500 (EST)
Received: from pps.filterd (m0316038.ppops.net [127.0.0.1])
	by mx0a-007b0c01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60UAu2wR1787849;
	Fri, 30 Jan 2026 10:10:58 -0600
Received: from ch1pr05cu001.outbound.protection.outlook.com (mail-northcentralusazon11010036.outbound.protection.outlook.com [52.101.193.36])
	by mx0a-007b0c01.pphosted.com (PPS) with ESMTPS id 4c0hsqc122-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Fri, 30 Jan 2026 10:10:57 -0600 (CST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Qq1pmN4XVh/jKLFJmMlVHLoGbGhzS6yNd62ZVK8BFcWvtImxbZlzu2+EOQ6P3Pd8bWCkwrSviPfKy00BlSQ/9YR92N4K+LcTpctGYmFwdR3iPKtBTlEsKthm3jB0dn3Pv6LFxb+KYxhTadEsTy4Ksa1UN9f8a/RZG186wImoPBACt/RGeuog+JDLTkoEhvsVY1hL/imuyRNYFs9WQgxijeUuy9RpEbSVbh8HSCaeUQmdkSTZJszDiYIGqJb4CBdUVcgNAj9yqBxQYSDrtHBBmsX0lUyOEWIwWApqX1CSnQAJUS6ll8Tm5GlCqWu0+Bl0BFoDqsPIVCaZ3aXFstR7nQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MQHbCTUvJWAaOB43HSiqeMSujGl3WjGo9YqsdWp0dB0=;
 b=pGZdNE1L6ucVpDNNyEJWqR23URAy4JYw0GV41IRHjwkhoOMMYWGFnl013IZQIECZFvySDvp1AipL9ocXqgCRE+z8FctMcbzmOxIF0h4pDoXL3/K65q6HJUpaYZCx+/AKQaB9fOq9+5PSdWc486LWboQrCiZ0XvQKmcQd9LEzx8wtBLGG4tqLBb9izv7o0c1rtzGxPAff8AFM+kkRVWfnmh4x7UUY4a2B7sXWQyYQMkRO8DTZCe/jvj/E+EwQeaMvGj+4d8v/seybvFGH+IeRC0cpDcIGHrIELNmmYRD93lu9ORd69XeDiGb9h2XCabM7CH23YzxbO8LW5VMZ5VRAkQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none
 header.from=math.wisc.edu; dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=math.wisc.edu;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MQHbCTUvJWAaOB43HSiqeMSujGl3WjGo9YqsdWp0dB0=;
 b=bMimqbej+mtsK2TQt4rgZVk6ZoRkOqQMVCiq/K3tEXqTxDrWNEpnOKXHOYxv3j6UuUHyDDdf9ieybkWhMB3Fn2V3hLfxxpOFmbQGnv2gFv9Bh5NEa1xElcMVjc+00mVZ6FhP0NlVBSjXiWOF6GjAUJkaBqr0WlxKqfb7zDgvmpy2iq/kAU1vmTxzvpsqKpLGOcwaWnqcgw/pkuPsF5Zq32d7Zp5GW6QkZw+7rBdGLRixj7r4XzB9vs8nqn3fwUh89oaZ5e2kuaO8iKheh685khb5YpUT/FGVsoky/KnaH053JexIk8GcSeiooNxc1kSlRCbdQSEze3DXmFLd/0TZ2A==
Received: from BY3PR06MB8195.namprd06.prod.outlook.com (2603:10b6:a03:3ce::19)
 by IA3PR06MB10380.namprd06.prod.outlook.com (2603:10b6:208:511::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.8; Fri, 30 Jan
 2026 16:10:56 +0000
Received: from BY3PR06MB8195.namprd06.prod.outlook.com
 ([fe80::a7ad:fb62:4389:fd8b]) by BY3PR06MB8195.namprd06.prod.outlook.com
 ([fe80::a7ad:fb62:4389:fd8b%4]) with mapi id 15.20.9564.010; Fri, 30 Jan 2026
 16:10:56 +0000
Message-ID: <601aeaf0-7bca-469c-80f3-07c6a25aeafb@math.wisc.edu>
Date: Fri, 30 Jan 2026 10:10:54 -0600
User-Agent: Mozilla Thunderbird
Subject: Re: Udev rules
To: Samuel Thibault <samuel.thibault@aquilenet.fr>
Cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <84b20d97-f12a-4e88-a108-c14c221a784f@math.wisc.edu>
 <aXv3GxD2sT5VeG3S@end>
Content-Language: en-US
From: "John G. Heim" <jheim@math.wisc.edu>
In-Reply-To: <aXv3GxD2sT5VeG3S@end>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: CH2PR02CA0015.namprd02.prod.outlook.com
 (2603:10b6:610:4e::25) To BY3PR06MB8195.namprd06.prod.outlook.com
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
X-MS-TrafficTypeDiagnostic: BY3PR06MB8195:EE_|IA3PR06MB10380:EE_
X-MS-Office365-Filtering-Correlation-Id: 56a70502-5c4a-4e63-8e5e-08de601a25b8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|786006|1800799024|366016|41320700013|376014;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?ZVFTU2VMNW9nYVdaaHpSbCt3d1RaeTAyWGN1YXgwemtESXhWZ2phTlcxQmJQ?=
 =?utf-8?B?SHZGMmhGV29pemNkTEJSWk93cXNybnR6OGhGMjFiZU9idTI4UC93ZzkxeFIz?=
 =?utf-8?B?ZGc0L3FnQjZWUm55cjdqc0UwaCt4ZTlqdTNGQmlXcUhBTHFHcklLWC9mdkRt?=
 =?utf-8?B?N3VNZnYxc00wNUFnbllWL3ZsR3hkNjg4Z3NITmdEWi8zLzBrZ0N3ejlPaFNj?=
 =?utf-8?B?YngzbDJvelRSaThUdG50UHBsbUJCdUhyOExyS1dGWEp5KzNlVTNlYzdpMzR2?=
 =?utf-8?B?UFV5Vm9QY2RaM1hUSmIyeVg2Y0djZFh4K3JOczRFL1dINHNRVmgya0Nsa3lW?=
 =?utf-8?B?M0c1aEF5QkRTRkhLdktpU3hMT05yelAzL09sL0RDbUJrRU9mVE1BUWgyR2ly?=
 =?utf-8?B?RUZpQlRvcE13S0k4ZktnSEhGN1lkbHpyM0x6SVVneEN0WkNGUWxCNk5sdmxM?=
 =?utf-8?B?UjJRdDZJdUZBaVlabnNRVStGZXhXTU5jUDBpc2FpY0pHRkVZdUc5UHFjV3NS?=
 =?utf-8?B?N1JSU3VrN0dJZUNCS1FLbU96TkRYNE1lVmpiMFcxb2pYbzUrdFNoY2pmUU9F?=
 =?utf-8?B?RWtYU2xURDV4aVZ4RzJtTEJNQlpqaUhGbXRGaytvV3BEbXFDTmFRdDhqZlRS?=
 =?utf-8?B?bmZEelFsZjdPdHl5TkRTSUdEZndqNVlrR2haNWx1K2FyRHUxUkF0eXUzNkky?=
 =?utf-8?B?V0dsZGhjcUxtNnBpTlVPZVErWUI0dlFrR3JYNmp4RWNTc2o5ZTZrcFVqcGV3?=
 =?utf-8?B?VE5Da2tWNE8vSmRUSkUyUjFHYkhWdEhOOHR1TmZoNjBlMnlIU3FrUndabDln?=
 =?utf-8?B?R3JtUnpMc1k3WHQzV2RFREw2SS9tYk4xM2JyM3Z4ZCtsMFVNT2pieGYxUnhF?=
 =?utf-8?B?UUxBVEVGNHBONm9uL2ROMjVMQjdRcFFiYkpWcGwvdjlNbFpSZlYyb0Q5SERM?=
 =?utf-8?B?U2wrN2hGN0ZWRjYzekZROEw2MERPOXUxaWk2THo2RjA3cTAycW9IRGFnU2dr?=
 =?utf-8?B?YVp4b1lEY0NLS09TUThaR04vOUVQODVyRzVmaFR3M3VYNEhMOWtMekJIamZ4?=
 =?utf-8?B?MktvOHlVUTlsZmRNZWJYTCs5dytDalR1Y1BsK242NVdoT1YrOERYWkVQSmM3?=
 =?utf-8?B?cm5VcUtDTmx1U0V4V2hUME1wT1VjZElmeDlCQVRLZTA0MzlvQS9PRHZFdFl3?=
 =?utf-8?B?L2ZZNVEwSlMyNUp5Z0R0TUoxdXUzWkg3NFBBUTJpczFHK1orYUVIbTl4UlNa?=
 =?utf-8?B?R25Zdk9uZGJaTW5PdTdsMFZLQnc4OGcrelZQK3VUR2RKb3owZFJGZVZmQ0J2?=
 =?utf-8?B?VVZrTnp4dGw4UGpweGNWOERzUFo3VjdKVTJpeUkrOHJ2L04rZ1BIWGJKK09L?=
 =?utf-8?B?UkVxeGxVaXM1ajd3a3FvTVZKMG91a1BHYTY1NG5lVVVKbVpVUG94K1lWMUh0?=
 =?utf-8?B?NEpVb0RMMDUyR0ZvYURQVjQ5bGg5Y0ZqVWNYMzExcHJ2elJNVThEUSt5Yzky?=
 =?utf-8?B?NnNicnVQQWxGRVhZaVllOGRkbFVMSit6d1g4S2RKZ2FsaGxWRHZEVGREUHEx?=
 =?utf-8?B?NGIwTnF3bTVSK1g0OG9EMk5GUEpJRXliQXhUa1lubjYveW1BTnNkdzdQd0dY?=
 =?utf-8?B?UTQ4a1AwSUhqMlcxNTJEa2Y3eDQ5NGlCN2FCMjhSaStGOHZOZWt3Ky9KTlc2?=
 =?utf-8?B?RjRWamIwUkJ6bHFoL2o1QytCamdFTHNPQmRMaXpWSEJSNWE1eHcyTHBpTnhu?=
 =?utf-8?B?MmtSWVFjTXZCRXlNNUNMSi9UM0hwcjVNdEpjR3RHazNmZnRNM3cyWm52N1E3?=
 =?utf-8?B?dGlYVmdPZWU2TzBpdUUzZCs1UzJ1VUJwSkZVWjZDcnNoeUpYQ3F0dStuZ2t4?=
 =?utf-8?B?TWJKeHE2M2pDV3FlWTJGWmxJZk5uS1dON3BGT3habXNnVDR2TFdzR3RGRFJa?=
 =?utf-8?B?bWNTcmMyZzJjZ2RHV0lIcnFMYXpVT1k4cWh6ZllZeGFERFV6TlNHaDNheWk3?=
 =?utf-8?B?ZnB3L2Q4NG4rTVY3UDlpc3RqU21OU1NCcnRwT3pIYW1rODZMdjVqTzVWQlNh?=
 =?utf-8?B?Qk1rT0RUYkkrQWxqTGtkb0ZmQWdhSHZTVXVRMUVzbGJJK1ltY3BraWVZQ21O?=
 =?utf-8?Q?aT6A=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY3PR06MB8195.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(786006)(1800799024)(366016)(41320700013)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?Y3hEKzdjbklLczZ5L3UvTElreDdZSXJIZ0xXV0x3K1RJaE9qd2FEU3A2QXB1?=
 =?utf-8?B?OVNnc2c2QmU2aVNZTGQrc0JEZFJ0MlRZbGNBNkM1UmlVMHc2OVZwQml1WFIr?=
 =?utf-8?B?ejBWK3RtSkM0bGMwM0F2RWFVMjBrR1Y2OU1GdWtneGFzVVNlQkZqY2IwbjlF?=
 =?utf-8?B?ZytubW1VREh4eE14WlQyS2pTUHBpV1Q0TE5LSkhrRlphditFOSszV016VFJI?=
 =?utf-8?B?bXQvRWV0QTMzL0ZBSFozR3VJbWc0amhXUDdrek5SV2JtNXVJTjVlcmhIa3Z2?=
 =?utf-8?B?TWV1YU5hRkdsM3pTTUZrMlFnczFTWVgzU1JhZU9DaENlakMzeHV3UXFBWVli?=
 =?utf-8?B?UjZsdUxtU1poT2RLaVJ2d1I2b3Q2eFQrYW1ub3hkMGtRbzdCZFFjMGZYTDNU?=
 =?utf-8?B?Wk1SZytrSXYrMjlmd2FNUGtVa2IvZmhDVkVId0loT3NlOGFTOHRNSU51RmNO?=
 =?utf-8?B?OE9mOVF6ZTZDbS9uNjliaUd2SmJnb1JSMmI2cEYwRTBDeGdRR3o2TnFZbWpk?=
 =?utf-8?B?akZJalhaUE85UmNsK2hGMW8zaVYxV054ZVlJOHM2Qm9Kd2NlSWRnR3hTaEpq?=
 =?utf-8?B?WStjaFRxNzNnVXRJOGFWN0MwTU9JQ2dZYjNubzJ1OHNKcnlDcFdyaDBTc0hL?=
 =?utf-8?B?MjRQK055ZVQ0UXdsQjh2VEsyTHNFQno2N0xXOTBGR2J5cUxJQmIzVmo2QlAy?=
 =?utf-8?B?Wk9zK0l5L0dVNFpaQkNnWkZwOVNDN3ZwVkJrcEFvRUU0cUhRNzl0MElRQktP?=
 =?utf-8?B?Rm1acDlkdGd0cDdFdUhjR3lQbDV1cHlQenplT2JFTm9ZYy96QWVSWEpiRzJ1?=
 =?utf-8?B?QUZheVkrejFXZzZLNFU3aVZNbStQSGxLVXJlYS9SWE5OQWQ2VHI2UGVYeFBV?=
 =?utf-8?B?YTdwcEFLbFZqd0FyOTJjMk1xMnFHTG12a2QrWjhyUEFOZzFCa0JhT1BKSWpx?=
 =?utf-8?B?cU5ib241SkVTYTViNXVWclo2b3UyeEgySlV2a05JeTNvOEJKTkx4UmdFMnl2?=
 =?utf-8?B?V1NqblJOTExYN1FzYVhBTWtNc1pEL3FwUDNCU1dQbW51WERZQWRXdFZTYUIv?=
 =?utf-8?B?RFlRSDZXMElIVWdlOXN6dkxJK0Q4aTA3TE92RnFUT0U3bVo3UisxOWFjRVQz?=
 =?utf-8?B?aitpc2dQdWhrbm4vVkJwY1V1b2dUb0hta2MzSkRHQXdsNm9WeHdGSDlxbG9M?=
 =?utf-8?B?WlRxbXMxbHVhd2lpQ1ZTTWczZEhJYUd1NUw2TFhkNDVaWEFrbE5BaEE2bmJl?=
 =?utf-8?B?ZUlTNXU0elp1aS9PeitldW5FeHB0UE9qSGdvK0VVUmcyd2xtSW9mWFplM1VU?=
 =?utf-8?B?YTRhejJaNTNobmZBQ2E4YUYyRURONFR5Z3YxU2xSOGY3cGN5RGZNZnhmd01M?=
 =?utf-8?B?VC9aRjRpMXQxUVRwZHE3SWExSVhxSXc3Y1cwZGc1N3NxVjYrclFuRGprYW5U?=
 =?utf-8?B?MkhQNklWWG5DbEdJOVRkQ0IwclRGbitDcGlVSXdJWkc5ZmJsRGJWeHpGZnBU?=
 =?utf-8?B?NW80ZS82L2FiMkNoVGhEckxtT29ObzBRRFpjVkZ6MzlCSVR1M0NNcGo2UjFw?=
 =?utf-8?B?by9YKzF6Y25mWlNDbUFtUEd5dXVuTGZ3YlNsTDVGZTJTNWtDaS8rWDRJcUZF?=
 =?utf-8?B?TUZ0UGpDT0xkREowc24vaHIzUkdtZkpoQ0pUTjl4MCtzRnptazJQbmRrc0xZ?=
 =?utf-8?B?K2I1Tk14aURQYkM0c2tzSFhXd3BiczZ3NWlmSDM4cHJhczZlV1VyczNxdCsx?=
 =?utf-8?B?ZFllNUFFQU1JUUpQZCs2WTQ3TnRPaFdrdlRkbzN0eTFuYTF0ZHBOME5Bc0pU?=
 =?utf-8?B?Ym9ocVcyemxLN3JkcTdFdDYyKzR6OWJTQmZCZTFnQ1doSnpiL1g4RTZkNkZj?=
 =?utf-8?B?dW5OdW9CTm4yYU0ySlZWUjJCN3Zsa29PaGJ3QzRVZDkxb1EzcExZSDZkUGE2?=
 =?utf-8?B?UE5PcHZiT00vVnNPVFdiU1VMT1NZcW1PMFg1RHJhNndwL2lXeVZ0cXhyVzdN?=
 =?utf-8?B?VVdjQkx4WGEyLytsU2prSSsxT0tEMXlhRjlkR1hCTzVmRWwrbTJFbEJpTGxh?=
 =?utf-8?B?RnhvUEIxSURvaGk5V3pKZXpCRkVWTndpblcvYlFncjNqU2t2dUMvNGNZYVNB?=
 =?utf-8?B?bCtsNmVDWUMrRHhmMmVkRmdMREZueVZEUzlRK0RRWXRyZUNGblAzajFtZkQ5?=
 =?utf-8?B?d2hFU2k4d0RNZVFUN1lLelMxT09nWG9lV3lMem1PM3BjN2dJVTFMejYrK0Z6?=
 =?utf-8?B?QVZCaDVCVVNudXRQUkh1YmcwMUJJWnJwbU8rWVRBb0JLTEFvem1uamJObFRB?=
 =?utf-8?Q?08z2ciObe8CwEbaCsk?=
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: 56a70502-5c4a-4e63-8e5e-08de601a25b8
X-MS-Exchange-CrossTenant-AuthSource: BY3PR06MB8195.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jan 2026 16:10:55.8233
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xFZyqxhX77oVuGaL5GwI4CqcbHplOADBw+VyctTgOgEPayTUl+VJmPfCPHRSaSSy
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR06MB10380
X-Proofpoint-GUID: ul_3KM1-R5O5gClFonD0TLczMOggJcCO
X-Proofpoint-ORIG-GUID: ul_3KM1-R5O5gClFonD0TLczMOggJcCO
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTMwMDEzMSBTYWx0ZWRfX1LpzAZiSAth0
 w0+OIg3oxsSmSKDQd29I3BFCaAsZzajldBnWR1G7/iAeRW8JtwLos22v2dx7vUi0kuxT0DKHqqr
 RCQTYrSUJzCiXyLudqgN0XNzIhcQK3v/b5yw4fYVA4gVl1WraV+tb/1EvE7A6eKX6TaNo67w9vt
 ddXoLi1/iwYSWZoriWtJEWWloHNJJy2+uXkIBIEAfvoKJmprCzBo/Oy8YpX+aTWttptfq42AhA2
 kO8WVuu33vqBmZxqFYZzmHy4r/a8UFWUyIkqzekXUz2d+XYZ0SiRS8xTHXHcUsX0pHmUHgEs4y8
 Nut5dVibOlwEFvI4TBW5HhGdUGKH0LsEV6L1bw2uMnDy6+FnpNooj8CUnprIQqr1TVAoaCwTDqH
 Z9ASkFde7FnQG0LSskEjiU3hUtiCGGj0Ry/AXdGPo5R+NWxXwKuGYbS9lTOvmukhB6M2oNAht/A
 c0Pcktq/cad/su6eSbQ==
X-Authority-Analysis: v=2.4 cv=eIweTXp1 c=1 sm=1 tr=0 ts=697cd811 cx=c_pps
 a=VaBts2rfnB/nCs5PY8NajA==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=lre9DRYkaIEA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Go4CrIyabeFsZHhsMj0A:9 a=QEXdDO2ut3YA:10
X-Wisc_ValidFrom: true
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-30_02,2026-01-30_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 spamscore=0 priorityscore=1501 malwarescore=0 adultscore=0
 suspectscore=0 clxscore=1015 bulkscore=0 phishscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601300131
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.89 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[math.wisc.edu,quarantine];
	R_DKIM_ALLOW(-0.20)[math.wisc.edu:s=selector2];
	MAILLIST(-0.18)[generic];
	RCVD_NO_TLS_LAST(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:5645, ipnet:206.248.128.0/18, country:CA];
	TAGGED_RCPT(0.00)[speakup];
	MIME_TRACE(0.00)[0:+];
	R_SPF_NA(0.00)[no SPF record];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jheim@math.wisc.edu,speakup@linux-speakup.org];
	FROM_HAS_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[math.wisc.edu:mid,math.wisc.edu:dkim,befuddled.reisers.ca:helo,befuddled.reisers.ca:rdns];
	DKIM_TRACE(0.00)[math.wisc.edu:+];
	TO_DN_ALL(0.00)[];
	TAGGED_FROM(0.00)[bounces-1543-lists,speakup=lfdr.de];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 3643CBC6A1
X-Rspamd-Action: no action


On 1/29/26 6:11 PM, Samuel Thibault wrote:
> Hello,
>
> John G. Heim, le jeu. 29 janv. 2026 17:52:51 -0600, a ecrit:
>> Does the Linux kernel automatically load Speakup drivers for hardware synths
>> connected via USB?
> No, that was still on the todo list when Okash went to other projects.
>
>

Are you looking for volunteers? I'm willing.



