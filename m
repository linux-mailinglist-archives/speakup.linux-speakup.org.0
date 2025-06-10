Return-Path: <speakup+bounces-1300-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 17CD5AD2C1A
	for <lists+speakup@lfdr.de>; Tue, 10 Jun 2025 05:10:46 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=math.wisc.edu header.i=@math.wisc.edu header.a=rsa-sha256 header.s=selector1 header.b=NG6X8jSW;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 0CABA3824A5; Mon, 09 Jun 2025 23:03:40 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id DCDED38191A
	for <lists+speakup@lfdr.de>; Mon, 09 Jun 2025 23:03:39 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 9A9C438191B; Mon, 09 Jun 2025 23:03:32 -0400 (EDT)
Received: from mx0a-007b0c01.pphosted.com (mx0a-007b0c01.pphosted.com [205.220.165.71])
	by befuddled.reisers.ca (Postfix) with ESMTP id CCBC93818A4
	for <speakup@linux-speakup.org>; Mon, 09 Jun 2025 23:03:31 -0400 (EDT)
Received: from pps.filterd (m0316038.ppops.net [127.0.0.1])
	by mx0a-007b0c01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55A2nJH4014473
	for <speakup@linux-speakup.org>; Mon, 9 Jun 2025 22:03:29 -0500
Received: from nam11-co1-obe.outbound.protection.outlook.com (mail-co1nam11on2079.outbound.protection.outlook.com [40.107.220.79])
	by mx0a-007b0c01.pphosted.com (PPS) with ESMTPS id 4757x91362-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <speakup@linux-speakup.org>; Mon, 09 Jun 2025 22:03:29 -0500 (CDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QRv7EzqxXaxnMrwekFQAluxgR+cLjuxbldBWqDYKCoo2KEy1toH5r586mLMhUkXTUrn3bPYB9TYd8xEgDeZyoDCWlQYGtpkS69KwWwGHs1Lk79zDrlYuay3ggGQuDsRvEn5r5yowuqPoSt/5i2MyGVlPlGdKB1SRZJTnGyE/7dhMRhm/fl5yILia6IS8zAeqVj3ibWSDcZiV7YAoIN45nlBiXtf61m1dKxxUQJKW4xHEFuOTx8RJeTye+f2mSpdB4eSekNTTdZgYt1qPyDNxYD/jNV+6jzSEok4XRwtmWw4t+0U1oqylasWUNHzvbVqtaBxZ/Ln1BKA2D7MZg0ddzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OV/VBvXlPniHgEQO9iWR5M4DvugiH56T1iFWq7oUgI8=;
 b=L3tsnCX0Wcjm9ab7KP2HlocpxUQN+ufQ3s8VZAHuEuXSK38f79xYACS6A5kxbtQK4caJcqeeMSM7GhhxzewPKM0adzLWA1z5ZYKNAEBm3MSa99VuGOatWvzqxPPDIJxpFDEqu1hrya9ih8NzIwQYQqn26LhyaeX0uX+mnbqoEgIku0yMLGFfGJpHEMkfadJh/xTZYKze6RzKrzYuRa1z4hnpn6Q16h1XsmjQ3Wp8oL5sdeu+pMU4RzyYAuDKXn+w4B8DH1WxNVzfIAEqVKOwvOXPs2QzLk5vsG2oKg3pI8GBNuDxea0GHWKIQ/b39NOzpto3EjMcRQKX4cqKfeyvbg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none
 header.from=math.wisc.edu; dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=math.wisc.edu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OV/VBvXlPniHgEQO9iWR5M4DvugiH56T1iFWq7oUgI8=;
 b=NG6X8jSWtOaVaXTtg+xmIC8BATx6L9Zal75uKZ5ba1B0BxANUgApJs2yiSlyRtrkF3lJZyXZh6om9iO8bNkWDJiarlvK9oLlL+noeDkVQfqryAPh5/0aR61lm98fHjkmX91yC/dMfNq+gvi7mc/Sk1WH8uONVDIgQilO+u56D+EmsVelgnwPVPBX3f+BD/riYBVMEfUo+3gyz4DHhhzHI+itFHpTwmH+G46eS5RxLbfFxuOC4IVFS2P2B8j9jf0aGMy4dZhQynewp+ryqCU4UhQGcne9x2uY1geLSYACZK3qzO/UvIQaGdNHZWVhQ4og0nvXe3Qx3QlzT+W/75+VqQ==
Received: from DS0PR06MB9877.namprd06.prod.outlook.com (2603:10b6:8:1d5::14)
 by BLAPR06MB6753.namprd06.prod.outlook.com (2603:10b6:208:298::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8813.20; Tue, 10 Jun
 2025 03:03:26 +0000
Received: from DS0PR06MB9877.namprd06.prod.outlook.com
 ([fe80::a347:6162:9bfd:9b91]) by DS0PR06MB9877.namprd06.prod.outlook.com
 ([fe80::a347:6162:9bfd:9b91%3]) with mapi id 15.20.8813.021; Tue, 10 Jun 2025
 03:03:26 +0000
Message-ID: <29a0419a-e54f-457d-9e8f-68a0c98d2dae@math.wisc.edu>
Date: Mon, 9 Jun 2025 22:03:25 -0500
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
From: "John G. Heim" <jheim@math.wisc.edu>
Subject: GRML for Speakup
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BLAPR03CA0076.namprd03.prod.outlook.com
 (2603:10b6:208:329::21) To DS0PR06MB9877.namprd06.prod.outlook.com
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
X-MS-TrafficTypeDiagnostic: DS0PR06MB9877:EE_|BLAPR06MB6753:EE_
X-MS-Office365-Filtering-Correlation-Id: 344e0c1e-bfa8-4be1-f0cb-08dda7cb5ebc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|41320700013|376014;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?VmFEOVVaNFhpOWhJd3JWY2tZdzZ5SStSQ1BtdUgvMmltUHIxNlJ3QTR5Q042?=
 =?utf-8?B?RGZBS2hhTXp0UHZlQnRvSnd3UVozVnp1SjhNNTl2V0Nxa2VpUENja3I4eXJL?=
 =?utf-8?B?Z2RPeGJ4TWROd3JPMkhOVFh3MlBOOEZHb0srKzArak1abS85a2FmdU5IaERO?=
 =?utf-8?B?VC9YUHEyR1A4cXdhUGJ3VGR5MjE1Ym9aODJhb21xNjR5T0VpVkg2Qk40cWQ4?=
 =?utf-8?B?RFVnRU9PUGhoczkvcTJ6ZEtacGlGbUMyZVQvNzlJdElIUFczeGE5MW9YM21Q?=
 =?utf-8?B?YXErUzUzZnU0UU5LMmNtNzFSRzFuT2swbmNFNmo3aDAwVTF1dmFEWGhIVWZ2?=
 =?utf-8?B?WDRSTmdwdE5tZ0hUNC9FTThVOG9tL3ZhbkVYMTRBRElmc2NoeTlpSklidEg1?=
 =?utf-8?B?NmhaU0QrK2Q1RVpUMkx0UGZ4VEJJbkpvVnZPc2h1dE9YTG9zT3NvNUh3dVZr?=
 =?utf-8?B?aTRqc2hQekpWK2xXcWJxaXZobnBNN0RJTlZQLy9XT3lleWIwMnV4Ym5wZlc0?=
 =?utf-8?B?OENkdmNTaWlXTjhEemE0c2NTREltTEQ1VU5QdGhJeE0wVkNjMGtJV3QwODZE?=
 =?utf-8?B?NEt0YnZ2bWE4RHVMZEFBbHRwcG9YeU9ZaStWRXN1a21yVloyOUhNL3RtY3JP?=
 =?utf-8?B?S0ZvVmJ6N1VCekhRdkFtYm9YR3hmbWdpYkh0blBtUTE3d2ZSYWdBOUp0enNk?=
 =?utf-8?B?RTNhT3NSZ2VTTEJmYkNkQVFaNXNrd3kydmExZXJvZ0R0Vm9SQmgzRUZ3c3Bj?=
 =?utf-8?B?TTd0RXRCLzBFcTZIREpCa0pQNkwzWnhmT24xamFMRkc0Y1MvQkFkQnJNKytF?=
 =?utf-8?B?QXJxSEtjSjBsbTkrYjNVNG0zYUFhblJYY3lGaVliYjVnY3JIc0tyOFlKWXVl?=
 =?utf-8?B?UGNXcjBNTFFnQmpUc016anBURTNyckxXeTJ2a1dKMWZnM1MyOGM0RmIxeXcz?=
 =?utf-8?B?SlJXbG42UHNzWFpySUlXUHVnSjRrcWJKYW1EcmlWWjVYSi96WnRQeGNlQnlj?=
 =?utf-8?B?T3Fia0FTaG11cnI1M0F2TFhJdHdUMUNzT3pVeUF0MTIwdW1ldnFReUd0Mms0?=
 =?utf-8?B?OWJiVDRudVJ1ZjdXdzY5RGR6MmRVUjZwVDB4Wm9KTGZiNlFvbHhjNk9HZ0xZ?=
 =?utf-8?B?VWdES3BpcXhmQm85eG5vN01yNGtYMHVqNGJDS1ByOFRwVlM5TjFQTDNBaGdo?=
 =?utf-8?B?dWdPNDdZRS9SR3p3Sy93TkNCZG9XMnJjNlRTaXZYbnFjclJCUThsYmpiRUtz?=
 =?utf-8?B?YjdSZmsxTHI4WEJwaFA2U0s5VFk0d0RaRHJxaENIN281K2czTHNGbkNRQzVW?=
 =?utf-8?B?dml0N1laRDdnQ2dMTXBBS3NvOEtKVlNEUW1EaVA4K3RIMno3U3pKMlJBakI2?=
 =?utf-8?B?RnFGSk1MTUZZbWttMUhkd1hjbjRSclFjSU9pVU5laVN1ZDd0UFFXVmtGbi9j?=
 =?utf-8?B?Z2MvK2lyZ1pRck9hdE1NK0hDNWZ2RlZYSjlaTW9vbEdkMmJzK0x1aldLdXFH?=
 =?utf-8?B?Vm5WakZRY29vS0JYdURRTHNYQTQwVUpPNi9CL1RXUHpWZW1DeG1CWkY3SUV3?=
 =?utf-8?B?ZXpUN1FWbSs5VERvSXZoRGRqTlZDQks2TnFFbHQwVlRYU1V5NzdKcUdZbkky?=
 =?utf-8?B?ZDZOQWFuaFQ4c3NYTWdVWWV5N2lFQ2V5Z1FwaVovUzVySDhvQlFXdlREVUYy?=
 =?utf-8?B?N044WlBKZGE3N2RBMHVEQVlzVmEvSndQNUpSMHRwK0tnSXdRWERYQ0NyUmhx?=
 =?utf-8?B?a1RtUTRQWnIvOCtSUzNkTFUyL2Zab0ZNSXpRWTl2RTNwbTlaNmFpRm42K2dh?=
 =?utf-8?Q?mlvcW00MyPzsKKWzKLY6ip6nQWjkf+s25m+dk=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS0PR06MB9877.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(41320700013)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?UjN5OXdNTU5BOGg3a0s2TG9seWU3N1o4dWdvOGluZFRRSVJzY1FQdU9FanFN?=
 =?utf-8?B?dGhweXRxeWJ2ZG1XTm1JbXlucFhPa2NZbitCZjZHR0pjRzgyV05WRFN5dHky?=
 =?utf-8?B?dEkrU1pmTzJBOFVtWkR0bFAwOHdkQ3dyNUxldWFKWk1uQzJEZEFXV2tISHlY?=
 =?utf-8?B?WW9PWC9xUkpkSEtzTWUrRVA2YUZFVHVzNHFEb0o0NmQyRmhLd2tkZm55bWhV?=
 =?utf-8?B?R1Q3SElkdzM3WFhmdlBhMGdZUTlOdG9NbXV5dWJEMlZMVDlScjNicGt3eUpl?=
 =?utf-8?B?RlQvc0RQbHM3bjFmOHN5ckNZa2I4OWlNWkpVeWd4eHZYa2tIaWtyeE1DZk1r?=
 =?utf-8?B?dFFITm90S2hmeVBwdy9wOUJyUjcwRkdJU01GL0JpNmxIUGs4b3ErM0ZwWCtn?=
 =?utf-8?B?OWp1Z3BHcVM4WHpGZnFhZHpSa3NzSXpHOFg4Ym02b05UbnVlaXFGMkdaQ0t5?=
 =?utf-8?B?a2lhc3NtdWVCN3BRQTZGbG9qdzZiak9aeHBqTFU4V0xESXFncU04UTM5WGd1?=
 =?utf-8?B?QUVkZXY3THVPOGVHRy9RTXVYcnJVZVB4RmR3STZjSVFkY21nbFZsLzlqV1A0?=
 =?utf-8?B?V08xMlVRYXllQ09MUUtvOVBaQmM5VDdWMlZub3FNUktZTmhqR3ZOd0ZUZlV4?=
 =?utf-8?B?RW9VaXpKOXE0RUp0OHRqNnF4M2RnU1BUSXdXbEhwM2dmbUNvUUhtVFRjWnZa?=
 =?utf-8?B?bEJTSGtPbXpoQ2NCMzU4NGhKZjl3NGdGZjV6WnRBRkRWaDE5bk9zcVNUUmVD?=
 =?utf-8?B?VExtV3NJVVZhK0lrT050SWw3WHpoOVJHNXYwWHU5M1V5SHphZTNMS2xLblJF?=
 =?utf-8?B?UTYzeFp2MU10OTVKVEtmWHJTMytESU5DaS9BaUppa2xYd1libGVUV0RsWldX?=
 =?utf-8?B?Vk5wZ1ZUVVdHaXN6UkUvRXdMMURNRTJjR0gzYlczRnk5dVljd041eEx3NlM1?=
 =?utf-8?B?T3BaOXlmb3pkU0swbXhtdVJzczNFOGx3b0Ereml3QnhrOFhSNmlnUVEyMzBx?=
 =?utf-8?B?M0pteFhNWk1MVm5iZUl4T1BzMklZcmZzU2JmY3NIaDVuaFVaV0VYQjFKM3JP?=
 =?utf-8?B?UUVMVGRSZnVmL1hZbWJ1ajUwT1FkbjZmeDYxMWJ3R2FOdFRBcXREb0Q1VWE1?=
 =?utf-8?B?VXRjQm5LSDJpOGFmUUsxNFlTRHczTFJtcWlyUGlWZS85S2I1ZmF2blViVjZo?=
 =?utf-8?B?a2huTTNyY3V4cUJXZzlWL1V4VDZsM05qdE5SNVZXVVhtK1RKd2ZhanFKSkFC?=
 =?utf-8?B?T21QQUc3S2ZvVm5yUlIyVmZEdTZKU0FzYmNCMTF3RndQNXRRa1ROZVU1clVr?=
 =?utf-8?B?Qk1tYTBsR04zaDhYSXNqaE9aYjZJRlZxbUtuMGxrN0FQdmRpSDUvN2FhbXpM?=
 =?utf-8?B?N09DQXMvRDJTcXcveWpaWmloWnBDdmlka0ZHVFhMUlR0WjgybUgxcFN0S2tY?=
 =?utf-8?B?ZlVyRWh6OEovenJXR0poTlF0cmRjQXg5RzMxMjlyZEZhazV3TW9PM1pUQ2th?=
 =?utf-8?B?eWZzYW5lSGtWMWZqaC85dDExSVZaTGNKRTZRQnhKUTk5WmdMN2NTWW5KaDVn?=
 =?utf-8?B?WTVxV3p2dHQwdGNFYmZyb3RGTTd4cGV3N1JkRW1uZDlkUmkrWGJ6b0twQys1?=
 =?utf-8?B?TExpLzR5SlhDT2xBRU1DZ29xVzZjNHZhRUY0dW91OVdadVpmaHppQ2Z2TURF?=
 =?utf-8?B?NHp4Q2xDckh1bHdlV0h5dDF6aXkreHQ3YTFMSnRQdDhEMFd0Y3dyNzduMmZF?=
 =?utf-8?B?OEdWenpTaFg3RnhiK0d5VVFuandPckE2M3JXVThKNllVVDNwYlpreG9UWU9H?=
 =?utf-8?B?UUZobUJzOHNkaDBYRTZXOWRoUm8yWVRUaW5FeGRQL0ZnTzR0ZmNVU3lwazlp?=
 =?utf-8?B?SjhpcHQwUjJpWFpjY2dNTGRyQlNWMkp2SlRTcE9OTzFiS2xyY2JNc0lEc3A2?=
 =?utf-8?B?TWFaWkNzaFYrUVVqeFJtUVFzTGZNWWpFN25Pa3hoVEhnYlJVbWhBOTZxanVE?=
 =?utf-8?B?ODlMQnprYllQVlBqcHFqVkpXTXdza2pzL3Q0R1JEcVRRZCtMVjZnTlJiUTkv?=
 =?utf-8?B?R3NsekRFejBZMkFDaWF0dUZuT29HUzU5QnhNcStINVRZY0x5S2lObU1yYUIw?=
 =?utf-8?Q?HTWM=3D?=
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: 344e0c1e-bfa8-4be1-f0cb-08dda7cb5ebc
X-MS-Exchange-CrossTenant-AuthSource: DS0PR06MB9877.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jun 2025 03:03:26.8389
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wV0ahx2lMjOshH/5PhfRe7Z9ODsWuNifPPmdLe/EFuN9IL1jQCBhvC8gDYVZx8TI
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BLAPR06MB6753
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjEwMDAyMiBTYWx0ZWRfX2XbBQt7FOI8N zdmzx8iKx6QEjUICbI8PsO7b7dho0QfkjPWnbgzkGBxJTyPjsGyJhGc/58Y9I2cQCKXJttzF5Hp 1ZU3RAhl6Skh3LsJ0uAgjn0BCMq+rerCa8w4NMU6cYioma4x2bKaWuK7IENcGYnUsbA+lKTHlFU
 CJIP4h/1FZvv3nMD8RFK+2SNfFxBkYCGGV5aZOi0jnIhTQVfD5Uj63XldLQN7UmUHwLc+XJjKmn p4yy+mawiDxd98CkUSMgrbwE84vkUvlLTqanyDOKBeA//xAGj78uXAqIKl3j7zC+T77L0Gy9Qzx Pbd0bizCQRYM15jGRCGRhRU4XqT1+i+BSmfRReOrEYkWDsgHwuXJnsHpzAqCDYb6iSgvDStJWpq
 ovxQlsWVao2XE/xMLbwFXdZr3rqSEIjoPkRoVsLVMvjVMX02lUKZsHkjskpDW4PANvjrKN+b
X-Proofpoint-GUID: uU5uxovFuTanPhOIoiG3gJuaMllsz1AT
X-Proofpoint-ORIG-GUID: uU5uxovFuTanPhOIoiG3gJuaMllsz1AT
X-Authority-Analysis: v=2.4 cv=NdTm13D4 c=1 sm=1 tr=0 ts=6847a081 cx=c_pps a=kGn1I/FbrZpDzHfxqj10lA==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=lre9DRYkaIEA:10 a=DyznqomoAAAA:8 a=KwuCZCnDYSoU2qz5CjEA:9 a=QEXdDO2ut3YA:10
X-Wisc_ValidFrom: true
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-10_01,2025-06-09_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 mlxlogscore=875 bulkscore=0 malwarescore=0 phishscore=0 clxscore=1015
 mlxscore=0 suspectscore=0 impostorscore=0 adultscore=0 lowpriorityscore=0
 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506100022
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

With the help of someone on the GRML list, I created a script that can 
modify a standard GRML image for a particular hardware synth. If you use 
this script, you can create a GRML image that comes up talking via your 
hardware synth or via software speech without having to type in the 
commands after it boots.

GRML is a Debian fork designed for use by people who like the command 
line. It is useful as a rescue system. You can activate speakup after it 
bootsbut with my script, you don't have to type anything.

I pre-built images for the LiteTalk and for software speech. These 
images and the script can be found here:

https://people.math.wisc.edu/~jheim/GRML/


