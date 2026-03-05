Return-Path: <speakup+bounces-1562-lists+speakup=lfdr.de@linux-speakup.org>
Delivered-To: lists+speakup@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qIvDCAvOqWnkFQEAu9opvQ
	(envelope-from <speakup+bounces-1562-lists+speakup=lfdr.de@linux-speakup.org>)
	for <lists+speakup@lfdr.de>; Thu, 05 Mar 2026 19:40:11 +0100
X-Original-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 2AB282170FD
	for <lists+speakup@lfdr.de>; Thu, 05 Mar 2026 19:40:10 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=math.wisc.edu header.i=@math.wisc.edu header.a=rsa-sha256 header.s=selector2 header.b=ODtnRv0r;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 72F173823CB; Thu, 05 Mar 2026 13:40:09 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 521A438203F
	for <lists+speakup@lfdr.de>; Thu, 05 Mar 2026 13:40:09 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 11FEE38203F; Thu, 05 Mar 2026 13:40:03 -0500 (EST)
Received: from mx0b-007b0c01.pphosted.com (mx0b-007b0c01.pphosted.com [205.220.177.71])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 2282838187A
	for <speakup@linux-speakup.org>; Thu, 05 Mar 2026 13:40:02 -0500 (EST)
Received: from pps.filterd (m0316044.ppops.net [127.0.0.1])
	by mx0b-007b0c01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 625EvdZF3789532;
	Thu, 5 Mar 2026 12:39:59 -0600
Received: from sa9pr02cu001.outbound.protection.outlook.com (mail-southcentralusazon11013056.outbound.protection.outlook.com [40.93.196.56])
	by mx0b-007b0c01.pphosted.com (PPS) with ESMTPS id 4cqc2722kg-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Thu, 05 Mar 2026 12:39:59 -0600 (CST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ANodixgmrc7eaeDERWckELwbKzWvMDvDxxaQnC0DqZe3JRuiYnwYd54RLPKuwUJfLz4cdGxg/MeKbn1ZJvabWkH+EJccvcTgk0S3cXPH38Y3nR6HIXgaOZjPb3uu4QMi1hkJEYJYI/tILlFKYw+bTxs+5PvFxZxsMC3FkIS+DMy0jt5GCH+8ik7hmCWCqMQqLIVl9Y4QdtfjT/btIq85o4nj67r2mcY/k8Imp+aFzCtgWr6yV5xoF3EE7dVvNu+YtH7hhxi0CuUzTYxf4CzevKOCJFRselo658VK1D1MtFP4YTU4LUyeQdqacTnZwobVMtkcpvFaaD5aE/nmSnyHjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0YNYroA4abo1qQfEFeY8gXy162BDrpep2bVl9aqARpQ=;
 b=pFTg0El7Bnxi3GJkmiwzWRQHt1JKxOMiewe1JnU2ejMu7abE4TgATvukDFWLR9ycAJRMXeW1B8Y9oQUU5vhle1kGhlIH6UEGX6E1K+ojxD4dnPkIXg+XHR3SMmqccor9n/QmJltyzVrw5+JNWeXJV9j5w6BevaAcTOWkbgg76Jpd6Dpm06kpSSmRiItwBgGrLVdb6LUcG4YXfiUKw+Ajj69VAFwo1nT2ORmzT0eeI37kizNvYcrgKydgAR8rOkTBX+fDOqzrM4t05w7iQJDT0gzgm0afzrrVeDoKeivHW/2h62ulMonQrRm+hatV4hUnISSAGMMJbnCGlCqPQjJlUg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none
 header.from=math.wisc.edu; dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=math.wisc.edu;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0YNYroA4abo1qQfEFeY8gXy162BDrpep2bVl9aqARpQ=;
 b=ODtnRv0rJjQ/kmW6vdhnv9Rzmxcpl0wILPzedY0M1k/MbPAvonMYt1FD+qW24By7d0ig2mcqxaDvFYY567c7eIKX4/AhiQohrAL8Kdw4Ocup0hLQ05ofkMps1Y9KP8ELAw5mrjM/VZn79bb7X8HO46eGVafYzQ3lW1KHDr1qUK6kq181pkZxBQgEyinxsNNgIqGPmaqkvRbqwUmLqwPBufNkUb4QCeZR1oHMkxQm/xZCOxm2goIuMg3XRoAS1xwJTaVhkKd5+PTxfqC40DHN2cJL2eRngFwQgjdlUJZdlH6fREtH02GclhzFZTNc3kweRmN9P0PsCYIkBcd3XNXYYQ==
Received: from BY3PR06MB8195.namprd06.prod.outlook.com (2603:10b6:a03:3ce::19)
 by SA3PR06MB11039.namprd06.prod.outlook.com (2603:10b6:806:47f::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.22; Thu, 5 Mar
 2026 18:39:58 +0000
Received: from BY3PR06MB8195.namprd06.prod.outlook.com
 ([fe80::a7ad:fb62:4389:fd8b]) by BY3PR06MB8195.namprd06.prod.outlook.com
 ([fe80::a7ad:fb62:4389:fd8b%4]) with mapi id 15.20.9654.022; Thu, 5 Mar 2026
 18:39:58 +0000
Message-ID: <a0b90169-fc49-4562-85fa-62411ffc46d8@math.wisc.edu>
Date: Thu, 5 Mar 2026 12:39:57 -0600
User-Agent: Mozilla Thunderbird
Subject: Re: Notes on automatic load of kernel modules
To: Zachary Kline <zkline@speedpost.net>
Cc: speakup@linux-speakup.org
References: <c9ca0abd-8b7f-4058-bb9f-89889c225b99@math.wisc.edu>
 <349ED2EE-8B49-4B1B-B035-1405F172E825@speedpost.net>
Content-Language: en-US
From: "John G. Heim" <jheim@math.wisc.edu>
In-Reply-To: <349ED2EE-8B49-4B1B-B035-1405F172E825@speedpost.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: CH2PR20CA0017.namprd20.prod.outlook.com
 (2603:10b6:610:58::27) To BY3PR06MB8195.namprd06.prod.outlook.com
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
X-MS-TrafficTypeDiagnostic: BY3PR06MB8195:EE_|SA3PR06MB11039:EE_
X-MS-Office365-Filtering-Correlation-Id: 0265dfb2-4749-4c1b-b346-08de7ae69a4a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|366016|1800799024|41320700013|786006;
X-Microsoft-Antispam-Message-Info:
	i2Nbey32LeXRrGOQQCl0XukNoA0CrjXHdGNgniv+wQ7J60EmxLsDTYbul17wlBRvkGsOtPRTAHRINlDylD4CxJMrD8v5Hl4hspUEWZZTcuplHgIuniO4WU9/baLeHO83KABvj6Fx/HtszWGfbas7R35p24Xn/WoGRlYZoHvd/T+9n//EsQ42DuYKb3IaAVmyk20MxCVDSSLOzPxEvAPauP69PapkYUm/JwUBGDtWS8vA7k3SiT2O5s0ISF12dmEYrrwlxEPsd0olwSlFa1fuYBzgibREAgU+mhMv9sdpAHXEjGeqboqK5wXqiiQiMMsytF1+qBJA/XhsRnE3OhpPtQLGV7vccYtNC1yM8Fliev2hOAA5nnKlcmMiwYIMT3cPNdCito/SLK5oXK6Ev9V62avdAsvBkhwnDIaDtCz4izDZ1T+AIl7KGCDJfGOcCngU5ASa2pA+4UtEgHZGMv9AroKHBUfWYlQwoSgkg1P1lRbal9p+FeIRDc+1/UVdMXfyrti/ehRDqMkBqSQ2eUAaRZLsxCT4TdmPyiRMJ+TPDxwJKMDlL4mZUZLlZVLFnZ7yWAXpOuplQtB4fhsVQCgtjJhVp4U8mdlJEytboSc9Tx36NX2wSd8akwk8bapaVJFSvTcuC+nU8QUtt7u2ALEwDUp7p0dWQ7EehXZcBD6qxDWp23zRSKODFiY6uzJ+ZCugB6C8r6HbkYLaKNhj7CLL3nEYAGPLP67Wt9IMT/Fw648=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY3PR06MB8195.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(41320700013)(786006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?a2F6OXBBRTduU2c1UEYwWnlybGo5TU9leE1UWmxmMlVVMzlBRitxN3ZxQTl2?=
 =?utf-8?B?V09zcGlxYmdaVFZ5L0t3MmhTNzRVU3RJUVdjN0oxTHJUTlc4aS9TTUkxcW12?=
 =?utf-8?B?RGFOZjVmekozemtjUlhiMmd3SnpzejhhR1pzV21aNE52d2N5WlUwelh0NWFK?=
 =?utf-8?B?RkQ4NWs1WUN0ZUxoTFNQT1ZndjJBaVgvSjVsQjI5OGpNbnV3V2J4cGJrUk1P?=
 =?utf-8?B?Skp0R0d3c2hqbVBJdk96WDVXeWNOaitaZC9xZUlmUHZMQU5COFNLUDJ4dDM4?=
 =?utf-8?B?M1hVTmZxczJwYXdWSTlJdVVYM3I0aGV5ZVk0VFpyRzdTcW1RNlJqbjVGOXNz?=
 =?utf-8?B?L2hudTI1c3NhRENrdGx6QkxjMHVBM01RRnNqOWpuQUIzV1NwK3pOYnNNNE8x?=
 =?utf-8?B?eGJLZUROakVNWGwwZ1hnTDBCVG1LN2EwVVgrNXA0bS9lK0E0OEV5NFRJQ2Rt?=
 =?utf-8?B?NG9jMVFJMWw3bnBGVGxqNTBRM0F5U2QxcFF4U0UxdmNCbFJWN2VIUUdTU1pF?=
 =?utf-8?B?NW5odXcrOG9JL00xdklPZE1uUXV4QThQbWhqeUpvZHhLdDEwT1FYcW84Wnln?=
 =?utf-8?B?UGpHNXFCbVhGVTR6cy93dlJYd0ZvVDZLUGJkcmhxNkYrckFwRExkVzl1NEx6?=
 =?utf-8?B?M2NlQ1hmeFR2S3psZnhOVXdzRmJVRHhnK2x3UkRkSjZMT0hIQXRwZUhXUFpV?=
 =?utf-8?B?ZjVTSlpiQXR0ZnlmT1VNMnBUK0dqRktnQVpLSGQ3Z1EyNytOMm11OHBJclZl?=
 =?utf-8?B?disybGs2OW9zQUl5WVlHM1lQVFdVOS9zVm5FeGVaYU5zY05melFuVWJ4Qnln?=
 =?utf-8?B?b0FtWFNSOW5oZ1hQcDlkNEVPMDE0T0NPQlBrdUFleUNtSXdBUXZMaHpTWVFJ?=
 =?utf-8?B?ODc0RTBGQjA4Yjl0MFhSVEpmb3I1RStOWVFMQUdDaUFhczJ3RWgwcWY5UjVm?=
 =?utf-8?B?YnB3ZEZmMy9LQnBSZDVsdG1LaUpzc0dTQVFNVURhSXRzNE1DcUxaa1BWTkxE?=
 =?utf-8?B?QWl6NVo3MXBYMlcySVYyY1I2OGtPbm0rc3c3ck5iOHNVb0x0NXJLeXZ4UXRv?=
 =?utf-8?B?WmRHcTdkUExxaDg4MnlrQjQzSWR3WnZmbVA4clZkVEJ0bVVmenN3UURqK2Y4?=
 =?utf-8?B?TDQwNndXc1p4ZDlBM0YrcEloNGRoQUUzeVErUUlHOU96TmZuUDQ4Yzg4bXEw?=
 =?utf-8?B?T0VxdW1QcEl1aFZUUndSVVQxbnZ3VGJ6NDBmNDlNU3BvUGNaRXgxZk5QVXk5?=
 =?utf-8?B?UjZuT09tSEtMTkJraVV1VlZRVnY4VEtQeURjY2FzaitqVHd4WlpSRXlGK1kw?=
 =?utf-8?B?eUdZMnVLT0lnQXh3ZjRYZEgvYmw1cExvTzNFdlQyc0RFOFpwdXp5TEltdjVk?=
 =?utf-8?B?eFlVanQvMGs4NEgvRzlmeHRPelZSZXBkeFZBSnAxT2U1S2lQVWhuQmJWSlBX?=
 =?utf-8?B?NXBjcS9HSWliZ0loMGdRVmVDd05mQ3orZVlLNDh1T3NBKzJnVkJnUUd0Z1Zr?=
 =?utf-8?B?eGE1VVdYUDNBdjJoRnhpNi9zYjltK3J4SDJwRTVVOWVrcXVHbUZ2emtqaDdZ?=
 =?utf-8?B?d3F2RmJzNGF3dmpwNXcvMUNsNWtUZml1Zi95dmw3SlV0Zk9BbkxqTzRpeS8r?=
 =?utf-8?B?NlJ4Qnhld0lKRjRvTFZMUk9qNk5oU2Y2NlI4QWhDVGR5aUhTUCsrVVQyV2ZJ?=
 =?utf-8?B?K2lOcmdMMXczQ0J6WGxwaTY3cVZqWFUzUVJjaC9pcXJJbnY4MmF1c0tyYlhv?=
 =?utf-8?B?VUJpYk80SVhQdWlOT3FadnVKV1dkNWpDYTZ5cjJyVFRSS29tNHNydGFZRVVj?=
 =?utf-8?B?RDRsVDl2dEh3MytJRnU4ZkdoUUdvT1cxL0VTOWVzMk5qaWw1dlBMU0doaHpn?=
 =?utf-8?B?OUNaVkkyYnR4VE5mblZmTXlhNHIzd0x1LzRuNWJtWThTRDhSMTFQOFp1dHp1?=
 =?utf-8?B?aklkQjJuVWlOU2h0aDBGNkUyYUlVek1jY3hvQmZQNTRjMElTcUk2aDRlVW1l?=
 =?utf-8?B?dUl4dHZiWWV3b2RXRWxuczIxeEhmbjAxdE5teEo1bjdkSnQyWnBUUXlwSytm?=
 =?utf-8?B?TXpkZ0pxNVF4K2lmZnpFU3B5TlVUTlBiQUU2QVdsUE5WTWkyUFA2dDlRWXUy?=
 =?utf-8?B?eXg0NzFJR1NZR1h4NjB0bnJ4MTV3MVNzcGZiYXJOSHZ1dUExUDR1Nk9UNDZS?=
 =?utf-8?B?WXpNMitjSU1EdUZ5UlBGVnlXNUk2UlU4OTZPb0toaGlLbkFlWTRTYXF0Z29a?=
 =?utf-8?B?cUNqOFhtVDFTSGE2NE90a253UlVzUnBOUVpvcHhVaC9ySmRMSjFuUzlZT0V5?=
 =?utf-8?Q?UwcHfY93Ct8ZnhuN7o?=
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: 0265dfb2-4749-4c1b-b346-08de7ae69a4a
X-MS-Exchange-CrossTenant-AuthSource: BY3PR06MB8195.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Mar 2026 18:39:58.3815
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8xzqfW4yNEt33jtjscZ7dPxBDy1yadcJDjZ7my8oyi2FYdtrzTw7ePHv7rINX6Ed
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR06MB11039
X-Proofpoint-GUID: TVHXR-ExUg6ZRydG7nmVQo27H7uxN5Y_
X-Proofpoint-ORIG-GUID: TVHXR-ExUg6ZRydG7nmVQo27H7uxN5Y_
X-Authority-Analysis: v=2.4 cv=bdRmkePB c=1 sm=1 tr=0 ts=69a9cdff cx=c_pps
 a=4JO5m9ekTMKpZDxQk7dxtA==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=lre9DRYkaIEA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=ZyELlZqCvD1aXIDzc3I-:22 a=PmXMWaiFgSq4GZTC792z:22
 a=i3Q3b2zxGIbBgH_lclUA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA1MDE1NCBTYWx0ZWRfX8sodzrmoup4/
 vBzS9QzQTBMGnkQQuLZ7Ac+ecYdbg08rhYBn3mfkVQB/dGaLiKhXrXXs6Ytl3GpUddfCCG9bxJf
 1EmosB2ESkkL0Cfu61ot3sybUBX2WQhWhCOoWnp+YhzHC/CAuSNRHWHt2IjNSfKyvwfpWi9uRUm
 U7O8mVNhkjmETvJ/h3VpUbPWtydZ5OoNAsVGp51ud3GVIcpiH17o4A3NAFzxYtTY/24BUr55Trr
 KG13Y90KbXD65AG2ObPvfqaQUFpcDy3P9cSLyDoYbIL4tJ9s9jKoDIz32eaaAaV5AbxKsJEARrL
 Dbpp6NoFZwdxTXo8KLypygii1W78dsD/iP1VJpEcXmFFcolUsZo7lZxlItK1GjkPFBftnedi+mC
 tyUHlVNEFoRledHrVABTMcQixk2gHeruZTUBJa6H93uiqAVk8iWJf7rEMv6uktwBB2/pJFNVRtt
 Wg7QlcJf3ukPQpBIApw==
X-Wisc_ValidFrom: true
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-05_05,2026-03-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 bulkscore=0 phishscore=0 clxscore=1011
 spamscore=0 lowpriorityscore=0 suspectscore=0 adultscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603050154
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5
X-Rspamd-Queue-Id: 2AB282170FD
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
	RCVD_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:5645, ipnet:206.248.128.0/18, country:CA];
	TAGGED_RCPT(0.00)[speakup];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[speedpost.net];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jheim@math.wisc.edu,speakup@linux-speakup.org];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	R_SPF_NA(0.00)[no SPF record];
	RCPT_COUNT_TWO(0.00)[2];
	TAGGED_FROM(0.00)[bounces-1562-lists,speakup=lfdr.de];
	DKIM_TRACE(0.00)[math.wisc.edu:+]
X-Rspamd-Action: no action

Yes, you can do that but it's impractical in most work environments. If 
your job is in a data center, they are not going to want to install your 
customized kernel on every node in the cluster.

Heck,  I managed a Beowulf cluster myself for years and I found it 
impractical to recompile and reinstall a customized kernel every time 
there was a kernel upgrade. It was difficult even to keep a customized 
initramfs configured. Every time I did an install, I could configure 
initramfs to load the kernel module for my synth. But if somebody else 
did it, they'd forget.  And  there were only a few of us doing installs 
at my job. If you're in a large group with dozens of other Linux 
admins,  you can forget about it.

So this is part of my question... What would be ideal is if a blind 
systems engineer could walk up to any Linux box, plug his synth into a 
USB port, and it starts reading the screen. No preconfiguration 
required, works on every Linux machine. But is that even a worthwhile goal?



On 3/5/26 11:17 AM, Zachary Kline wrote:
> Am I missing something, or can you not simply compile the kernel  with whichever modules built-in you want? Is that not done or doable anymore?
> Sent from my iPhone
>
>> On Mar 5, 2026, at 9:02 AM, John G. Heim <jheim@math.wisc.edu> wrote:
>>
>> ﻿I've been on the systemd development list where  udev  rules are discussed. And  I've learned that what we, as blind system engineers need, is not udev  rules. What we really need is for the speakup modules to be included in the Linux kernel.
>>
>> I know the experienced people on this list are listening to that previous sentence and saying it's totally unrealistic. But what if we asked for just one hardware synth to be included? The core speakup module and one other synth?
>>
>> A blind sys admin would have to have one particular synth (or one that emulated it) in order to automatically get speech upon boot. Limiting it to  one particular synth isn't as unreasonable as you might think. For one thing, there probably is one synth that is way more available than all the others. I am guessing that is a BNS. But it  might be LiteTalk. We could decide that among ourselves. And then, if you didn't happen to have the synth we settle upon,   you could build it from a Raspberry Pi.
>>
>> I think this whole question really depends upon how important Speakup  itself is. Is it even really worthwhile trying to solve this problem at all in  the 21st century? I don't know -- I'm retired. It no longer effects me.
>>
>> The thing is that Linux systems engineering is only getting bigger and bigger in this modern world. Who knows what AI will do to it. But right now, Linux systems engineers are  in extremely high demand. Every data center on the planet runs on Linux. And there are a whole lot of those. I think the big deal with that is the trickle down effect. My job at the University of Wisconsin was to run a cluster of machines students could learn on. The guys who invented ChatGPT started out as undergrads somewhere and somebody had to give them  a place to  test their code. That was my job.
>>
>>
>>
>>

