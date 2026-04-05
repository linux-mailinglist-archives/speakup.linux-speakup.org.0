Return-Path: <speakup+bounces-1576-lists+speakup=lfdr.de@linux-speakup.org>
Delivered-To: lists+speakup@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2OwgARrm0mlecAcAu9opvQ
	(envelope-from <speakup+bounces-1576-lists+speakup=lfdr.de@linux-speakup.org>)
	for <lists+speakup@lfdr.de>; Mon, 06 Apr 2026 00:45:46 +0200
X-Original-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id BF8C63A0091
	for <lists+speakup@lfdr.de>; Mon, 06 Apr 2026 00:45:44 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=math.wisc.edu header.i=@math.wisc.edu header.a=rsa-sha256 header.s=selector2 header.b=Zy9PUP4J;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 63A81382666; Sun, 05 Apr 2026 18:38:06 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 3D9893823D9
	for <lists+speakup@lfdr.de>; Sun, 05 Apr 2026 18:38:06 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id DA7C438236C; Sun, 05 Apr 2026 18:37:59 -0400 (EDT)
Received: from mx0a-007b0c01.pphosted.com (mx0a-007b0c01.pphosted.com [205.220.165.71])
	by befuddled.reisers.ca (Postfix) with ESMTPS id DFA76381833
	for <speakup@linux-speakup.org>; Sun, 05 Apr 2026 18:37:57 -0400 (EDT)
Received: from pps.filterd (m0316038.ppops.net [127.0.0.1])
	by mx0a-007b0c01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 635GeqgL1744808
	for <speakup@linux-speakup.org>; Sun, 5 Apr 2026 17:37:52 -0500
Received: from co1pr03cu002.outbound.protection.outlook.com (mail-westus2azon11010038.outbound.protection.outlook.com [52.101.46.38])
	by mx0a-007b0c01.pphosted.com (PPS) with ESMTPS id 4dbn4ytbt7-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT)
	for <speakup@linux-speakup.org>; Sun, 05 Apr 2026 17:37:51 -0500 (CDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=E4AO/mNqtj4n5WDQJROU1q5zAd/GY2mcVFjD5Y/ISsxGT1oU82cHvTivLoAtuziZ5ABOWXlfFjcg9vHKf/G7PQhgQyL36FPz34TzBGQIkcFnkzCpYzXBnpqfar5cxk1CJVu2/t98SZsI725EPLELADa9krTw9vyzEC48txx6kx34/KpBd1A7au30AHS6qzkgEfl79kTnpX3Iact494qCHUBDZOvtm7TuAHHkdI8Q4Ol+bibR0Yvas99G+fF1NlQU0GOVBbnB/L3I76ZvwGamsYqgcZUb5uWPfaVxR0pDurGl2KOyurH6iaa5hRGij8faFbXWHx/9X9rfNRCZVZ5VHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aF28dx3hpay/wE2UJSR4e/8AP8UdiYVjsjohKCs0vvI=;
 b=SCj3/uXt8d70EnZX2g4O2jrOxQAWuVk1TFPCxJmXMUQlL/uDztRaayzakXntqa2BZf0kAeEfBazbadEhxji6bICAirJ1Uz3wyDeq7y4YlcgorCqyfZIrOOLr8cbnmkOfpjem2gH/8C2ZhUELRubh4ISITBwSFYtHdCk5VNbBjegprQ8rJ7qJYWvkCtwXrrex8R3iQfPssq7nbKGpOJLlBF51VLm4AzyzhSUid0FrOFgn0rrD8lKW2qvYtIgXeZcSH6QxGuacekWQV4pXdOgARHIYq3Z2JMACzUIr0C/pDKMAy+rMoA+DQxw/aoIAUKxQLBHSnPhM2lGLgPPzwqWutA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none
 header.from=math.wisc.edu; dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=math.wisc.edu;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aF28dx3hpay/wE2UJSR4e/8AP8UdiYVjsjohKCs0vvI=;
 b=Zy9PUP4JsOWyMI02biOuKvq7vPkUhldJdaxdSF0zKyup4zFNDiyChV9MNLmi2C1eO/6CnRNm+Qs4W4ZgnzcK8bh273ZN2/hzuZBn765hVJCANK56g3SKliBetOsGMrlkNkoro9eq3gYsaAOqNQiQo9k9Ro2M5uj0F0tRb9ilH9+n4OkOsy2phoU25Y2BziKUfs88nvUg/vlJgeNATvWrEraPIlfIe1bU/ybXUvfXgFs6b19XHdaxnNBP0Txu4Epvgt1UKUJ/AlhcsTeRjHnFqUss/e0xzqcSD4zm637wkB4c4WhvSaHjKw19ft36xRc5yN3ODI/gbFUaduSdNUN16A==
Received: from BY3PR06MB8195.namprd06.prod.outlook.com (2603:10b6:a03:3ce::19)
 by LV3PR06MB10371.namprd06.prod.outlook.com (2603:10b6:408:287::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.17; Sun, 5 Apr
 2026 22:37:50 +0000
Received: from BY3PR06MB8195.namprd06.prod.outlook.com
 ([fe80::a7ad:fb62:4389:fd8b]) by BY3PR06MB8195.namprd06.prod.outlook.com
 ([fe80::a7ad:fb62:4389:fd8b%4]) with mapi id 15.20.9769.017; Sun, 5 Apr 2026
 22:37:50 +0000
Message-ID: <82e78ba4-2fea-48a4-83d5-52bd232771d8@math.wisc.edu>
Date: Sun, 5 Apr 2026 17:37:48 -0500
User-Agent: Mozilla Thunderbird
From: "John G. Heim" <jheim@math.wisc.edu>
Subject: Re: Rewriting the docs
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <f73d1414-0f07-471e-a160-4b40eb0346e6@math.wisc.edu>
 <adHSoyDi8VElDn6Q@gregn.net>
 <cf50432b-faed-7951-68f8-539f925658fd@reisers.ca>
 <b5f9d2bf-6f29-4a85-9ced-7bd850288258@math.wisc.edu>
 <2dc638d6-061e-3ba1-029a-24b3593dca9c@reisers.ca>
Content-Language: en-US
In-Reply-To: <2dc638d6-061e-3ba1-029a-24b3593dca9c@reisers.ca>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: CH0PR03CA0416.namprd03.prod.outlook.com
 (2603:10b6:610:11b::7) To BY3PR06MB8195.namprd06.prod.outlook.com
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
X-MS-TrafficTypeDiagnostic: BY3PR06MB8195:EE_|LV3PR06MB10371:EE_
X-MS-Office365-Filtering-Correlation-Id: c536bd35-87b2-48bd-fed2-08de9363f7b0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|366016|786006|41320700013|376014|1800799024|18002099003|56012099003|22082099003|300274003;
X-Microsoft-Antispam-Message-Info:
	lBOFAsRG6o2jJyNYbSlVcogwTjY3o2cOxphXWiFoA9VoS78rYmmfZXuuEeHOOh6XTJdScFT8EHW/DaHE0XTyw/fRkZiJIrvzRRSn9bUjO1E1YTDIO7XOBDKH4ZAsPVYcms0CA19kBXnePan7HMwAEbYxflLgEMhHFatk57KVh58kVy377ecrBmbyNjuukdiyOea3xiQSO2IpZxFWgN1gB4qdhEC5ErTKOUtbwY/76ujjSjRp8o/lqMOj04c1d1vCMN0AUtbhx285aXNwMgI8bqeIlPhmRBD9A5ABIa8k/YnfRP9yJsfYyE/AYKmLby/yz7RDeMXJfuj+THxbN0SzpZZHW6TBwvhFOdRHI3alXCk/DDREGasAf3F5A8oTLPgCgCIPGQWDkVAeelKTVYIXeZIKDQaYWNzCM/iRr4FwmbD7MiibzKElqdWcO45XrpdVFC+mz7Hj6FA5l/2c5auVLt/ngFW0Fu7IHaf5dKyGo3zd1zTOEHmC8epUqNFX7i+NuFugMUZDEIJ8CB3W3bw6aSklOMUnBvUaEovu+AsqMD0VaFg7m5mIRa/0lXg8DAO+C5LUAhD+InGWSC1+OGKzh9FUdQgHZX3A3HasUAOfUolH/23Whz0/M8eGp996BP3cZjX1AYPurTT8c5yLPu/7LfIGc2YrnSBIfs1utnSRAL6lh9gbC21Ws/iUwDjgbEbnLe/0qknac73IowZlVM6e3z9f4qfbBGePQ3uUSQYtr8tyQqW7iUfUrhuVL7rpEHVSrkWgbjnKjPHT7gHj7xj1bA7hCpZlm8jU5fPulUjOxGk=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY3PR06MB8195.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(786006)(41320700013)(376014)(1800799024)(18002099003)(56012099003)(22082099003)(300274003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?YVlKMUllYTRrMW1WY1R2NnBTY0IyZEZBT083ei85d1VvSU1ETDQralcrbXY0?=
 =?utf-8?B?cHo1TWtoMmlpWXlhck56eEZJdHJKYXNIV3NtQThGN1ozYVdVRW1MOGd2Q3VZ?=
 =?utf-8?B?WkdaQ0F6bk9NZGliZWF6aVdHRXIzbGxrSmhRNmFZRkxhV05TSVF5RkZJak41?=
 =?utf-8?B?bitmM3BlOXk1MlY0MGE1RHJaMStnSU5KeFlDWnYzNmhqUUxzcVhwMWVyWUs2?=
 =?utf-8?B?bWhEUG5HdnloSGxvYThUbU1RdUVjTzVZQjdVS2pSY0kvYjBNNkFGaVRoVC91?=
 =?utf-8?B?clpLcU1yeDRQTUxGZ0kyRFJqREkzeXdBbkptM2xVNnlNTHh2bFFHUUY2bkw1?=
 =?utf-8?B?aS9ScEdGMEV6cHV0OHI0T1VEbjVSaFlmTUE5UHNFclNONHRQU0FFaTltMFJh?=
 =?utf-8?B?VllrbEVJQkRYL3pHeURVRk5LN1YycFRobWRhQTc1enZIWjdGcUNxc3dXbjN1?=
 =?utf-8?B?WDEwbFJ1UlVhRjNzNjVZSDFtS3lMVWg2enhEWjFHaTNTbkxFbTJyMXN4eGZL?=
 =?utf-8?B?SEo0Z0Q0VEhUWG9GTHp6VVEvZ24wZ0tlWmp4b1MzOERZMkhLR3VVNHJoU2ta?=
 =?utf-8?B?OVlOQ1pqU2J5b1N1MXVQVzBzeHdaZWVUQlVmWFZTdHd2d0Zkajl6Q0xiR1Zo?=
 =?utf-8?B?WHdDS3kvZWZlb1ZrWjdjRXd2N0Y3dnByeTd5NzA0dU1ud3RPb1BVR0Z1ZjNX?=
 =?utf-8?B?OXVRSnBuamd0ckR0NnRjWDNBQXBrVmQrR1N0ZDBYTzNUZ2dCa015VC9IWHdK?=
 =?utf-8?B?SGJzRnd3UXdxR1FtWmgvd3JzOVJ4UFplbllCdjg2NWN2YmtsZjNpek1vQlFQ?=
 =?utf-8?B?OHZWT25lL25CSnZwM1AvVExSdG9oUUNEZlcwVG9BVE5CWU1DTThTclZ1K21J?=
 =?utf-8?B?T0w3WUhPY1NEdzhnenRwcW83aHRSNDhKb21LZWZ6a2EvSEdTeU9aS0Y3SDQ5?=
 =?utf-8?B?M3BHSytpQ1hSNTRPbzVSMS9ZVVd5REFFdW5YWXYwYWQ4OXZ6OE9qM3F4ZmNr?=
 =?utf-8?B?QkhjMncxdVF5SmZPdEdlSVdDVTMxSlZnMTFNRXVHZlB2SHorY0UyMXNuMGtk?=
 =?utf-8?B?cWhuMDRRWS91ZDNIWTlCaFJSbW9CT09vN1JMaWFhOHpjQ1JNbHcvUi94Z1VK?=
 =?utf-8?B?L3BOK0FRTi9Geklmcnl1SlExRnFHN1Jud2ErSGUyUVdxV0I4ay92NFBveVpM?=
 =?utf-8?B?RGtNZnZuSmhTMTNRZUhLQTRrZ09BZ1VqR3I5dU5FWGhqVFFWc2JyTTltV1ZG?=
 =?utf-8?B?bEVycll1dG9QTGpSb3ozeEdoNlVFVXNhMU1HSFJLRTU4a1JCUWJFTjdpb0Nt?=
 =?utf-8?B?TGdCb3dMSGd4cnZVbG5Vbkd6WUIvVXQ1ZmJxRDk5OFhoaFJHNjd5WnpMSW91?=
 =?utf-8?B?YTZBOHJXcHNBTXFxV3BIby94WHlyQUZjZUlMTXQvd0RObHdIYkQ3MjF1cDNr?=
 =?utf-8?B?Y0pEc0FFbEp3c1c3Si9FMFFYTGFjSnFleTdCU1B0d05POWpibUw5NHYxRnla?=
 =?utf-8?B?REZCT3BrMzRmZkMwdDBOY0x5bTk2ZzdqMUZYOE9DUVl0SmM5OFB0Qy9tVDA0?=
 =?utf-8?B?Ym5qWTByQThYRHhuRGE4YzVIT1U2YTFpMkcvZ2FwRmF0ZDdTdWhEYkpQZXl5?=
 =?utf-8?B?YlRpTDVEWElNbm9qQXBVUW05ZDBaOXJZNFJuVlpTMUNrNG05ZGdHcStQdGkr?=
 =?utf-8?B?TU8vZmIyWGhaR2lFellEZXM0dzN0Mi9zUGFpZ2RlNlZBOFZGd20vZ2t2d1Rx?=
 =?utf-8?B?MExkSWZZeHBDSnRJdThIUTdWbGt0NDdweWlOSXV6VWFLd2VpL29CYTJIbDUz?=
 =?utf-8?B?OENGZXJTRklXZ0dMeHc2TnVnYXljSzV0c3psc1RVSE9jRDZCOVhCKzdrQTNK?=
 =?utf-8?B?WHpxNU80NW9FeFdheDBEZGZMMkZGVlFpWEpFeUZZdkhaMHd3dS8ybFQ0Z2J2?=
 =?utf-8?B?NVdqaG5KTDlHZ1NZQjZ1MU5lUkpLazVKblZzNFZYNGhOdy9JdWlMRk9QcjBC?=
 =?utf-8?B?NHY1ZUd3L3NBS3BoTWt0a20weEZEd3FsOStiM3BGRjJtYnd0dXpMZEFxMjBs?=
 =?utf-8?B?K1ZMcVJJZVpXZGprYjJSV2MreURTZlh6N0h3cVRLMkIyWnRjRDZIbWdZb1BY?=
 =?utf-8?B?WEpZay9IaXRzZWVhcSt3dWVvdEw0RFpEcGxNNEttUGdmd2Q4Z0RPakw0amU1?=
 =?utf-8?B?MGw4S0lWUzRRTTF6bHVlK0NmVnJRRmF6Smxzak56aFdkWENhMDAzT2I3bCsr?=
 =?utf-8?B?TG5kQVVIelhQRGRmbVJwd0c3SU9xWlZRZy80RGo0aGZMeDI3emI1YVh5c3Fn?=
 =?utf-8?Q?ftAJGbyaKalnNLlAv8?=
X-Exchange-RoutingPolicyChecked:
	t1JCJpxlflfg0jOopsHuv+68tZw4Ia+bpkTfPqc8QV5pvOvOduxnF/o+IW7CCWC80f3sRb6jeMcnIzlYAQ6OCLmTmSoI+DeSAc4nFPNa2yR4niNHpXFPGu4Vtz7VWDiGK7umleHJZzNR2uRqwK4GPoH53KHlnEAJfupvXngMcfRkmqg1f4yW/wvGMOZifg6BY0qZnGR1jx6mB3RlayCjfkmoLtaLmqmR0TEdR//5HTO8y/4yYSRO2VX5fJt+7pBjluf4BfFxsvSSq4B9H1P3hCJ+G9sFsu0ewVjktluPMDfaNf+4NgFMcIAGNkWoPuxE1hcw9DhyJpzTuofMi8MiPw==
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: c536bd35-87b2-48bd-fed2-08de9363f7b0
X-MS-Exchange-CrossTenant-AuthSource: BY3PR06MB8195.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Apr 2026 22:37:50.1384
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HLe08aYOLfQY6b8W250dL2QK2gnNnoEZJP+ckuyTAMNVj3dPRmRRYblE0WRDH8k7
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR06MB10371
X-Proofpoint-ORIG-GUID: 8YKHhBO4d517k2Z2IyQ0QMBW6_kd8vlN
X-Proofpoint-GUID: 8YKHhBO4d517k2Z2IyQ0QMBW6_kd8vlN
X-Authority-Analysis: v=2.4 cv=GqRPO01C c=1 sm=1 tr=0 ts=69d2e43f cx=c_pps
 a=aFbGVCYh9COm6MyaDWiF6Q==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=A5OVakUREuEA:10 a=lre9DRYkaIEA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=ZyELlZqCvD1aXIDzc3I-:22 a=8Xyu5n2RU-RuQlyQMiry:22
 a=DyznqomoAAAA:8 a=4_6uRv1nn7WHmlRjBPUA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDA1MDIzNSBTYWx0ZWRfX9w35EuR8uv9/
 MaiiPO2Ve3HEQWsAWY/3FvNSfUYMWies0K/8sGJAorp+ePHFjDypSachIwogOndy4lfUAsYvPbt
 07ee/ULqfc+/+R69TqhOJ2OGSaf5dKKGRZI+Z8sh5x51CNVH3DaJF5cKO1eiYXobDqNb4xbqGRN
 PipNfUyMpiP7uFVqdUHe6Zh6+FhVbkU1jlUQ+MBwiAGpRpyiASWYdrWybDSQTf/srrMURWskhXB
 GBZVhXSn/xz1vM6uWQqLw2dzXyun1N4Ik45VUbp0Kzg695/s34vdA5Af8wRKJN7yV4/OUXYUapM
 K7Ckt0qfhFlUaN6kf9KORWcEE2o6vnmxAIEajPTJEgyHTYaIxxUtNH1AbsCsRZ0p6Lp+lnkOVax
 EH2apGUjBf0PGOOjDYkmABN92zy0MDbA8oYSi0eEsrzLMp9d/QzfGJ88Wuh6DfKbcErJVyr/4uV
 37928dtc+ZXP3onhdFg==
X-Wisc_ValidFrom: true
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-05_07,2026-04-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 impostorscore=0 adultscore=0 priorityscore=1501 malwarescore=0
 clxscore=1015 phishscore=0 lowpriorityscore=0 spamscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2604050235
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5
X-Spamd-Result: default: False [-1.89 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[math.wisc.edu,quarantine];
	R_DKIM_ALLOW(-0.20)[math.wisc.edu:s=selector2];
	MAILLIST(-0.18)[generic];
	RCVD_NO_TLS_LAST(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_RCPT(0.00)[speakup];
	ASN(0.00)[asn:5645, ipnet:206.248.128.0/18, country:CA];
	RCPT_COUNT_ONE(0.00)[1];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	DKIM_TRACE(0.00)[math.wisc.edu:+];
	TO_DN_ALL(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jheim@math.wisc.edu,speakup@linux-speakup.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	TAGGED_FROM(0.00)[bounces-1576-lists,speakup=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[math.wisc.edu:dkim,math.wisc.edu:mid];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: BF8C63A0091
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Okay, here goes:
https://people.math.wisc.edu/~jheim/Speakup/faq.html
I have to admit I didn't actually type most of this. I told Claude 
and/or ChatGPT what I wanted to say, edited  the response, and pasted it 
into the document. So the concepts and some of the wording are mine. But 
most of the wording is either Claude or ChatGPT. Once I had a list of 
plain text questions and answers, I asked ChatGPT to convert it into an 
HTML doc. I asked Claude too but the HTML doc it generated was too 
complicated, I didn't like it.
Anyway, when commenting, please keep in mind that I am just a volunteer. 
You can't always get what you want but if you try, sometimes, you  get 
what you need.

The next thing I  am going to do is put together an outline for the main 
Speakup instructions page. From now on I'm going to refer to that as  
the howto.


On 4/5/26 11:24 AM, Kirk Reiser wrote:
> Hi John: There was once a group of folks that worked on the speakup
> FAQ and user manual and the website but that's been many years since
> anything was done on that. I think you are doing a fine job so far. I
> think maybe you should post your drafts to the mailing list and let
> the folks on the list give their oppinions.
>
> Yes, speechd-up was a good bit before espeakup.  I kind of sort of
> pissed off the braillecom folks when I started using espeakup because
> it was simpler to use than set up speech dispatcher. They kind of
> divorced me at that point because I had told them I would support them
> and then I went off and just started using espeakup. I never meant to
> abandon them but maybe they thought so.
>
> The fact was that at that time espeakup was way more responsive than 
> speech dispatcher.
>
> Alex took over maintaning espeakup from William but I don't know what
> he's done with it recently. He is on the speakup irc channel but
> doesn't say much if anything.
>
> Since you posted your message we are searching for Chris's code but I
> don't know where it should live not to get lost yet again.
>
>   Kirk
>
>
> On Sun, 5 Apr 2026, John G. Heim wrote:
>
>> Espeakup is newer than speechd-up? And it works with pipewire? It is 
>> becoming obvious to me that rewriting the docs is going to be even 
>> more work than I thought. I am going to have to do a lot of research 
>> to make sure the instructions I give are correct.  Well, I'll just 
>> keep plugging away at it.
>>
>> Anyway, the FAQ is actually coming along quite well. I started with 
>> the FAQ because it doesn't have any detailed tecchnical info. It 
>> generally just says "go here for more info" -- which in turn gives me 
>> an outline of what I will need to say in the howto.
>>
>> I feel I am a person who is good at taking constructive criticism. 
>> Once I get a first draft, I'll have to figure out a way to publish it 
>> for comments. I could do that on my web space at the University Of 
>> Wisconsin if that's a good idea.
>>
>>
>>
>>
>> On 4/5/26 9:54 AM, Kirk Reiser wrote:
>>> Well, I'm not even sure where to start my comments. The latest version
>>> of speechd-up I have is 0.3. A while back, meaning a few years, Chris
>>> Brannon aggreed to take over supporting speechd-up. He is no longer
>>> with us but maybe Deedra can dig up Chris's latest repository he
>>> maintained. I haven't really had anything to do with the package since
>>> I turned it over to the braillecom folks back many years ago.
>>>
>>> I originally wrote speechd-up as a first attempt at software speech
>>> before espeakup was written. So I'm not surprised it didn't keep up
>>> with the additions William Hubb made. Certainly espeakup works with
>>> pipewire and friends although sometimes one needs to do some fiddling
>>> about to get it all working.
>>>
>>> I'm happy to give anyone that wishes my copy of speechd-up_0.3 that
>>> wishes it. I'll ask Deedra about Chris's repo and let the list know
>>> what I find. I haven't heard anything from the braillecom folks in
>>> many years.
>>>
>>>   Kirk
>>>
>>>
>>> On Sat, 4 Apr 2026, Gregory Nowak wrote:
>>>
>>>> I would suggest taking the neutral position, and explaining that
>>>> either can be used. The caveats to both are that all the layers that
>>>> are being put on top of alsa these days don't play nice with espeakup,
>>>> and that speechd-up does not have the same level of functionality as
>>>> espeakup does when it comes to setting speech parameters.
>>>>
>>>> Greg
>>>>
>>>>
>>>> On Sat, Apr 04, 2026 at 12:54:34PM -0500, John G. Heim wrote:
>>>>> Now that I'm pretty much done with my hardware synth project, I 
>>>>> thought I'd
>>>>> get started rewriting the Speakup documentation. I decided to 
>>>>> start with the
>>>>> FAQ, which if you believe the date on the FAQ itself, is 24 years old.
>>>>>
>>>>> The FAQ doesn't even mention software speech so I need to add 
>>>>> that. But one
>>>>> thing I am unclear on is the relationship between espeakup and 
>>>>> speechd-up. I
>>>>> understand the technical differences but what I am unclear on is 
>>>>> whether
>>>>> speechd-up has made espeakup obsolete. Obviously, you wouldn't use 
>>>>> both but
>>>>> is one preferred over the other? Maybe the FAQ should take a neutral
>>>>> position and just explain that either can be used.
>>>>>
>>>>> PS: A note on the hardware synth project -- I am working on getting my
>>>>> package into Debian so it would then automatically be included in 
>>>>> Raspberry
>>>>> Pi OS. Once I get that done, I'll get going on getting the kernel to
>>>>> recognize hardware speech synths, including my hardware synth 
>>>>> emulator.
>>>>>
>>>>>
>>>>>
>>>>
>>>>
>>

