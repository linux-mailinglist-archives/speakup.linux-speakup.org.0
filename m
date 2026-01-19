Return-Path: <speakup+bounces-1518-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 0D906D3BA4A
	for <lists+speakup@lfdr.de>; Mon, 19 Jan 2026 22:54:37 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=math.wisc.edu header.i=@math.wisc.edu header.a=rsa-sha256 header.s=selector2 header.b=Ahj7Ig2X;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 5A79E381902; Mon, 19 Jan 2026 16:54:35 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 3AE7C3818C7
	for <lists+speakup@lfdr.de>; Mon, 19 Jan 2026 16:54:35 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 259773818D9; Mon, 19 Jan 2026 16:54:29 -0500 (EST)
Received: from mx0a-007b0c01.pphosted.com (mx0a-007b0c01.pphosted.com [205.220.165.71])
	by befuddled.reisers.ca (Postfix) with ESMTPS id BB07A3818BB
	for <speakup@linux-speakup.org>; Mon, 19 Jan 2026 16:54:28 -0500 (EST)
Received: from pps.filterd (m0316038.ppops.net [127.0.0.1])
	by mx0a-007b0c01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60JKNeUI701084
	for <speakup@linux-speakup.org>; Mon, 19 Jan 2026 15:54:27 -0600
Received: from cy3pr05cu001.outbound.protection.outlook.com (mail-westcentralusazon11013000.outbound.protection.outlook.com [40.93.201.0])
	by mx0a-007b0c01.pphosted.com (PPS) with ESMTPS id 4bsukngch7-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT)
	for <speakup@linux-speakup.org>; Mon, 19 Jan 2026 15:54:27 -0600 (CST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Emv+RpbdOzrjHueKvVjMstC2A2L7aRvbFNJqo9kdL544Pjg6MmgdRtpS8Wxht+B4nNWip/wSCkiIxsqzSZ918PX3/HV07m+IH4JAMLF3+AqgdHZHM8/G9So47n96jxj69Q6H0w88saKEBRyI8oL8PmU3+m0ORmeBU/WrGxizV5NjTI0B2WaPielCgVulu4UFDkZI5RCUl/RJRMPL9oHuTPH+UznwVrsDjtbT5cWQCXJLOLpmVdbe78RwHEC0U7v4QHYG7uRprx7vP5czAAwaVSodDs6Nl+jPFRgamTVrrDm3pPRUvXsGBF458s1kl6MFOGFPb/aL0m8KVM3xdbDaJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dOMh09LLGrOWFiTMzepCK5IlFKsJIosoxe9ZVz62DwA=;
 b=gvKkWoDs5gBAJOGip4WCeAeklmwYIWaP92GdGVXF8979PWGjg1sT+TTxAlyDRcbztK4HtcZRRAnYgGIsrFHqiIfuFiBKTuPYIKHDU6ZdYxzzEjQpk6fnZsJvgZSa0z0WZ4QfC34C18Cu9GylFVXgC07lXlDUK9WEAPir2v5ml4XT61eVKJtBinRzw0XxLUnO5JTqtqSL9T61Nn3g3lfG/RgdCQfSEHxoF2QDLKOYrB2jax/SAHWunGj9nToINSnZ7tq8RbSOng4rqVHdNWdDokuVaoqX11Ha1qpjY9eemWE6qOYpbFQAaKqgHWiV/odjOvcpzEwlA/c1mjtqmMTRGw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none
 header.from=math.wisc.edu; dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=math.wisc.edu;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dOMh09LLGrOWFiTMzepCK5IlFKsJIosoxe9ZVz62DwA=;
 b=Ahj7Ig2XopPkqg3V8khY6u0IWra4Xaw6ZgJNO7P2DrYy/2iT16t9XJVcb54x6RFyvqXuhoUqtOGx+G77SnzJEeXjN0FQ9q2tsrRVIxiBSQOidbgzMhbZaUdScPIMAmv4GTbRh7LMfVIEyaG7R8GKZt4w4ulDV7UpecOauubtQY2ZZ1JGf/zYceUroZx5SfQ3RoAwYcVmgDKTQlFqGAM2cc3vYDrsGZrfAE0PLW/3an6w50qNGjP028aEAvfdQkD3KRAdgzx84/i8RdDwJiB4wbXBuOIRxu4vQJH6tayOHMYDELsoPW6rBef8hMBdbssXQM524ltD4V4e4ByIa2nr7Q==
Received: from BY3PR06MB8195.namprd06.prod.outlook.com (2603:10b6:a03:3ce::19)
 by SA6PR06MB10592.namprd06.prod.outlook.com (2603:10b6:806:42e::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9520.12; Mon, 19 Jan
 2026 21:54:26 +0000
Received: from BY3PR06MB8195.namprd06.prod.outlook.com
 ([fe80::a7ad:fb62:4389:fd8b]) by BY3PR06MB8195.namprd06.prod.outlook.com
 ([fe80::a7ad:fb62:4389:fd8b%5]) with mapi id 15.20.9520.006; Mon, 19 Jan 2026
 21:54:26 +0000
Message-ID: <f32fb24e-76ee-47f3-8557-c4565ba293d0@math.wisc.edu>
Date: Mon, 19 Jan 2026 15:54:24 -0600
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
From: "John G. Heim" <jheim@math.wisc.edu>
Subject: test if speech-dispatcher is done speaking a piece of text
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: CH2PR05CA0067.namprd05.prod.outlook.com
 (2603:10b6:610:38::44) To BY3PR06MB8195.namprd06.prod.outlook.com
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
X-MS-Office365-Filtering-Correlation-Id: 43158b67-a7bf-4b1d-e9d6-08de57a55029
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|41320700013|786006|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?RWx4Y2RyQm9leTd1dG9PUHVSNjRKWXdDSnV4bk5KeVg1SFVXRVVlN1pqSFB2?=
 =?utf-8?B?cTBCZExEa2hVK1pSYU9kd1RBQkJkWHBoUDZjUTFsQXJ5M21hVTkrU1FwTUs1?=
 =?utf-8?B?c1hCei9FKy9YYWpNYzdoUHE5MVQyQnhxYUFDdjlkaHowTnZmZmJNSGtjbjlz?=
 =?utf-8?B?UW9JWTBkSS81bnkyUE5LbGtFV3NQcWNoZlAyQ2MxaUorcXNZbFFtOEorZkhm?=
 =?utf-8?B?alQ4WTZUQXBNa3o5OHRyZ29WN25TYXIwVys2S0d0K2RvMU9heVlzR3ZlWHpH?=
 =?utf-8?B?czl0SXJrWmUyRFBROWtKbklJYzgzR2RPczIvdXJ6bVFoSVZlR0crUnJtVm54?=
 =?utf-8?B?MGw1VERENkljdjdZa3h5SDZEOXBBMDY0ZTdMQUxDNTh2RkduMy96WXVvMXNz?=
 =?utf-8?B?aTdIMWptTm93a0pnS2FpTDB2U3hMSVNZblFFWjk1VEFicGlKakFPT2tneUhZ?=
 =?utf-8?B?OFoycktwdHRzcmcvemNMQVF4c3hORVoxMUwvSU1RcXQ0WjhwTkNwcWtvdXlO?=
 =?utf-8?B?ZnN2TXB1YklnVU9udW9uVTR0azJRN2RaNGhMWmRtRHJHajNSYzIydUZJTHBF?=
 =?utf-8?B?bUxrQmxPa2Fkb1U0bTB4TE14Uk9zc1Nycko1ZEx1Q0UzSGp5MHFzOW5KUnZJ?=
 =?utf-8?B?QlJOdkZreTFkaHdhMENQeEUvSXZpTjVnRHpnQmlRUnVMUTF0MTF5alFBL2Vm?=
 =?utf-8?B?TXNvdm5Hb3U1S3R4UkpwdUdkL1ZlQ0lyUVcwK1V6NEErUWg1a05zY1M4cWdv?=
 =?utf-8?B?d3RYc1RnZDZaY2tVeG1YZXh5RWRRTWE5LzUxR1RHc1cxUmI5UkQ3c2x6R1Jz?=
 =?utf-8?B?Ri96MEVwVGlTaEdWSVAvRGozTUpTRHFrYzljYzZFYzd2cnhub3cyMXI1VkxY?=
 =?utf-8?B?ZkZ4MVl5OTIyUkV2cjkvWXFFNUdmSlFMK09hcFRoWmVCMTAzY1IyejBKRDNx?=
 =?utf-8?B?cE5DeEdzOEY4aFlreXhZWTVBb1BNbktMUW1sbElwVFBTWFpKZXR6YjBCY0dn?=
 =?utf-8?B?bndjNHJNQU1FQ2owMTdlWkpuZExjTWhIeXhFZXVYRlU5VmZHVWZqQ2k0d24y?=
 =?utf-8?B?Y0NUZlMxOFlOeDQ5a003Z0l3WFgrcUF6K1h2MlJ3NW94QU8ycUYxQ1Q3aFZ0?=
 =?utf-8?B?ZW94cjdVR1M3amRTbXpQZ2EwcUZUUm9yeTNaTWlTc1Y1QnhWN0gvSEc2bWRZ?=
 =?utf-8?B?Z0dFNmJYbzhBUGU2NG8zMjBRcDRvTCs5aHBJL0tydFpiZXAzWldINmUyYzdB?=
 =?utf-8?B?Q3NKbTlEOTFlTzdpa3JVc0Zhc29NcWZjTVdNWXhNQzJMSTZyN0swR1c0T3F6?=
 =?utf-8?B?eVdVOW9MYjdsUWEwaTFnUEQ2eVB6RVVVbVMrZitnSEJyKzkxV0dlODNMR3dK?=
 =?utf-8?B?Q1dxVWo0RStjUWszNkZEOVlGaVBHN1NOZjdPWUpOa2lud1YvMU5EUnIvYitx?=
 =?utf-8?B?T3ZDOW1xMHFPV3dLaE0rcXh2cWN5WVRZWjJTdVVOVjdJdWZmZXNVUVBSZzdY?=
 =?utf-8?B?cmp5TXZlbFEvbDgrcy96bTlkanArU2dSbnA1MUlDbmNqd1B1b2VuMjB2WlRo?=
 =?utf-8?B?UWNiaFNIdFZOcUhPc0tKY2RXdGhtYTN2c0ErYkUvMlJBOXNGMGVoUGhHT1Q1?=
 =?utf-8?B?Y21qOUVWMWZ1dkhFY1h4RnhBVDJBOERkY2ZlM0NrbEZ0ZDR6YzFtWjE1bVla?=
 =?utf-8?B?VkV1VjZpcGtwQ1lRM2N1cnFuaUVycDBwWXB2Q3pjV3pnOTdRcm11aUJPV09j?=
 =?utf-8?B?OC85R3Z0cnUrVW1ncHNIYlpDL0hzUWhZSlJQcDVvVDdCRkZsSHlTQ1pDOVlr?=
 =?utf-8?B?YlFMRHBITC9iQ1NzdWMyeTJBMHBiQUMzYWkrSnNBVllvcTU4cVhMUkY2eWw4?=
 =?utf-8?B?a2x1NkJ4dGFXQXZQdlg2T1NFRVhGdEhpeGRCSWp0UVd2UlRWWjJ5dE5LQlh4?=
 =?utf-8?B?cjBlTWVzS3JiZGRFMTVCeUxNRlQxRnFzT3QxR3B2VTBBcXZhV21NYW1kMW92?=
 =?utf-8?B?L05yVm5RdFdvVHRGUHpJL214TFJaWTV6WExJME85ZzF5a21PTlcyYnIyc1dP?=
 =?utf-8?B?cGFkKzA2NGRYS3ZmclR1aW5Cb2pzbHMzWEFLaEVqcXh5ays4bkxzTklUZzlC?=
 =?utf-8?Q?5S4U=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY3PR06MB8195.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(41320700013)(786006)(1800799024)(376014)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?cWJ2ZEtzMmczMXNaTUJ4UUY3cHVDTloxeHRnU1lDcWIrL0M3aysrTnZoSXFJ?=
 =?utf-8?B?OStCd052ZCtNeU9Gc0tTbXM0Z3BjeFBta050QTRPOWI4cnJYNkxpemdUVjhp?=
 =?utf-8?B?aFZnVGlCVWM4NHZ1b1hhc0RsMVp2TEdFQW51T0NCUXBkcHIveHNQMEUyK0tt?=
 =?utf-8?B?KzcxcGo1dXVPK1psNUxoRDVLbjhQSTZxNDdETlJxS0VlR2tadDNqRWFYZ2ZK?=
 =?utf-8?B?OW5PWk4wMEltbjdzcWF5eG40NGExbTRGTWQ2dk56NG91eHpGYXBXZWsya3ow?=
 =?utf-8?B?VzRkM0prOWdhazAvaGhhbkM5U081SG5tSm9aNEwwVXduYUs1SFF1eExtckYz?=
 =?utf-8?B?M3loN0ZmMlJLbGNJQ0J1bnBCVThsV0hlWHR5S2dyU3Bsc0gwbWNXSXJiNmJw?=
 =?utf-8?B?SjZ1dEZSSktVYTFxcVROMWNVY0x6c2lUcDQ3RFd4ajIrYTF3NnY4UTlwZ0V4?=
 =?utf-8?B?MlVYdDNMdlJkVkRESkZYdHJ6aGZLY2JRY2JRaGhpUFkyR3BxR3Yxakc5Nm5P?=
 =?utf-8?B?YTY0MXpqWGJlcW94cGV6UEpnVXFtb052TXdDUktTcG9sZ28yNjhCeFRweU5E?=
 =?utf-8?B?Sm4yRjdBbHRudkY3WFdobTdWL0hieWZTTnlHbUM3eFZYRGZVL3pZY2pvV2hy?=
 =?utf-8?B?TGFQTkF0RkhENGJvaS9GblpiSnkxSkFtTENlOEFsaU1ZeUhvODVlc1BRT3Bh?=
 =?utf-8?B?SUUxSVViQm1rZlJ0dmgvLy9TTGdabU9GNUN0ZGZ1OW5LQVpVQVVXOHpjTXV0?=
 =?utf-8?B?bXltOXh2dXptVGxuS1p4T01QQ1NybmNpUXRiRUZ2RDV6R3IyM213S0xUaWpw?=
 =?utf-8?B?UlVRUVZ4NTlTTTIxZnl5azczeDNHSi9HMyt2a0lpdk1pY2xaMEl2bGg1ekh6?=
 =?utf-8?B?dWZXNzJvMmlyN1QzcGlLeHgvK1NiT3dYdlZzSUNjWDBzQ1hCTWFRdWVKTW1l?=
 =?utf-8?B?a2RsV1dTT244RHFBTHFKYVlrczRnTWhzVmlESThzL2xsM2tXQm9DbXYrOXkr?=
 =?utf-8?B?eTBTOXRXMTB2SXFlb2g2QVhkYXgvSHlOS0ZDM1FraWpVY0ppeFY0ZTFiL2Vq?=
 =?utf-8?B?VGJRS2VJemFiN3VLSXdLVFVJcUlEVjdSUXludEZTZkowK0s5QlBDQXJrUEpT?=
 =?utf-8?B?RkpJSCtkWU5zWEszQlVYRHZGSDQ1R3NuZEFHbmN2c2xyWnM5SVphUjdOSXA3?=
 =?utf-8?B?dlUrNjlTRGtCanU5b3dSZkR0T29Rd1JNSE1peWdJOEhoMVZ3U0g3RThnMWxG?=
 =?utf-8?B?Qzl2aCtPMVNQRi8ydVJMWHNpc01jejdNV1c1WVpUc0RlYnF5Q3RXYktqTHRo?=
 =?utf-8?B?ZEdPblJxM25ncTg2UWRMcWxkcHk0blhQS3FwUmNZUDFJd3dqakJNV0JDQmI4?=
 =?utf-8?B?VGQ4endGRjRjWnI4dVJsRHBmeUZqVFRmcVNWV0pESzc5V0YwVVhBdU42c1Fq?=
 =?utf-8?B?SmVuNVV1d2czc0tiQ1hEKzdTZzhsd25ML1hqUlJRNlhtSjdma0F2ZFgyazMw?=
 =?utf-8?B?WW1JQjZDc2YxNUg3WVJrMXN6VjdZbjQxS2grOGtldmU4UlNZcTdTSlN6RU1y?=
 =?utf-8?B?SHVWRDNJUUdlRVhaRjMrMXdQcFNwUTlBaUtUQWRoUGllRTA4VEJwdS8zaTBm?=
 =?utf-8?B?NVdLeFpWQ0dCYnVxVmYrVVlHMWtDM3ArN2IvN0VJR3VHTXZ1RkJJZmIwdU1k?=
 =?utf-8?B?U0w3dmxmbnZ3cEZUOTVGQ0dLN2FoUS9nejZoY0Jwb1VKVVRqOS9ITHVmdmNv?=
 =?utf-8?B?UUcrZlE2blhBTmdlSS8wQURRc2NMZzhJR0lGbXBncW9kYm10cm9nemEwMFhh?=
 =?utf-8?B?anowZ0Uvcm53Z1RiUU1aT0dXdUl3QUc3ZVovS05vQm9TTWpsQWpVemZNZlZW?=
 =?utf-8?B?NWFXYXNDaUYyNEpESkZna3NhcnRRdDRuZ2UxSU9LZW5OeW9vR0loYlNwcVY0?=
 =?utf-8?B?NnE3dkpQUk5WVllGR0lBQlIyM0l6aFlaRXp5WDgvRWJsUENjY2hCQStHQ1Vv?=
 =?utf-8?B?WGJhcHNkRzk3dUhEVGdLcmJlLytOTzNicnF2OW1GNWtpakVoUmVpZ2wrZ3ll?=
 =?utf-8?B?czN0UTBkU0ZIZjR6M2N2c1ZPZXFndGEwUG53RTVoREE5MmdjbzdRNDdyL3U2?=
 =?utf-8?B?dkpNeHRUQk9ZT1lHbHBZdkFsOE1MV1U3eGlhQlB1NUl5RUN3WVErNHE3Nytt?=
 =?utf-8?B?S3lzR0NPUUVhOHFUeUt6dzhTMHRENG5vbnZWckRsUURZWER1RzEzTTBRd2dP?=
 =?utf-8?B?Rzd6Zm5sWGRNRllxalJiZGVSU3NqbWVjZW8wM2RMVDMxN3BtcFU4ZXk0b0s1?=
 =?utf-8?Q?BT9x0trgPFtcwpE+d1?=
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: 43158b67-a7bf-4b1d-e9d6-08de57a55029
X-MS-Exchange-CrossTenant-AuthSource: BY3PR06MB8195.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Jan 2026 21:54:26.0416
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /gK+Hm2/VEIc08MeKjvpqE2FqaxamfYXFcH73YtF/QtN441NZJU74OMikhcV5Mvu
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA6PR06MB10592
X-Proofpoint-GUID: MqavzhJyTtEA0Pmu4106vVhzu7XHrcuQ
X-Proofpoint-ORIG-GUID: MqavzhJyTtEA0Pmu4106vVhzu7XHrcuQ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE5MDE4MyBTYWx0ZWRfX6KQiQ9kM0TPD
 MuG4J+2qZ8OnkoxRNX22+6d/BB8uihSox2EEQe1lxddEP8QgrA5MSeKHMQ7CZTnVp/AavpWFpdY
 zp1k/uYEqeLUcbk6/rAIsiStfGwt2DqaE/N1oA8ZY+OcfAYDxcwGVWWxydJbZ1iexRaQjiGbNjI
 YCmwcuNP3i9qoCsD/CS5V8M8VLZOS48vy/hUKfKtfXOabnKNsFgabTFYIVk6feb3gqoqpFsXAZq
 wR86fVSQLRfzZ8a6Tvj+P6geilow2xRD2ogC3a+m3fTofqTe0GpZZUGbdzjwWDPwsIBBdnD9HX1
 rPPgvecJAgKfGzGcBQhvWsmMY/q9cBnemm8/KZjCFUBmaM3GSsyfFx+wJrSkHk2M+g/y5EAn+tO
 3B8NIgdVRcMqEylWhgeXmRplPD+PYHfG91B2H9gbIKN/FBTKv2Wi2r3IWGknLR7xOyQAcU3eEpg
 NOPgVWQ/YTMk51Njd6g==
X-Authority-Analysis: v=2.4 cv=E6fAZKdl c=1 sm=1 tr=0 ts=696ea813 cx=c_pps
 a=snd9/+/+5efdJOckOpJmHA==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=FKInb6NawD6oC36L:21 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10
 a=lre9DRYkaIEA:10 a=VkNPw1HP01LnGYTKEx00:22 a=PH-atooUa64C1Vk3IaEA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
X-Wisc_ValidFrom: true
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-19_05,2026-01-19_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 spamscore=0 bulkscore=0 lowpriorityscore=0
 phishscore=0 priorityscore=1501 malwarescore=0 adultscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601190183
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Anybody  know if there is a way  to tell if speech-dispatcher is done 
speaking a piece of text you  just sent it?


