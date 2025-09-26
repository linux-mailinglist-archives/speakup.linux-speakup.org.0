Return-Path: <speakup+bounces-1420-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 76F97BA2464
	for <lists+speakup@lfdr.de>; Fri, 26 Sep 2025 05:05:14 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=math.wisc.edu header.i=@math.wisc.edu header.a=rsa-sha256 header.s=selector1 header.b=hpJqN4dS;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 29627382B99; Thu, 25 Sep 2025 23:05:11 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 037973815CB
	for <lists+speakup@lfdr.de>; Thu, 25 Sep 2025 23:05:11 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 928003815B5; Thu, 25 Sep 2025 23:05:03 -0400 (EDT)
Received: from mx0a-007b0c01.pphosted.com (mx0a-007b0c01.pphosted.com [205.220.165.71])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 680A43815AB
	for <speakup@linux-speakup.org>; Thu, 25 Sep 2025 23:05:01 -0400 (EDT)
Received: from pps.filterd (m0316041.ppops.net [127.0.0.1])
	by mx0a-007b0c01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58Q2tbQR026915;
	Thu, 25 Sep 2025 22:04:30 -0500
Received: from bn1pr04cu002.outbound.protection.outlook.com (mail-eastus2azon11010046.outbound.protection.outlook.com [52.101.56.46])
	by mx0a-007b0c01.pphosted.com (PPS) with ESMTPS id 49dayyb1tt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 25 Sep 2025 22:04:29 -0500 (CDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=APGLbhoF9QV5kElSy+A/jeRZr30gYN44ECqkyZZHCan2zQxeKQLWsn0eUYQQ6aM0uO5Cj/3HVRt2Xr0vJqOdYxRtlc79cqoW5LpeMYcKCJlITWA66/USjOilNC2217tUcWGTZJW8AoAiDU1sree3vSdGqRFHwTNmHekuffyNg8pm5/nw/KKtqtXOnp+jSNAOQdGZX2QGS3NebtL519XdfE1LOMs9gHnMBpIVVe5hcBwsT0N2k71J52giREOGzl9XKmyFSHF0NBlWx5d1F5ZFl0/0h0/in0ngRo5Lv7sq/mFnDxnnbIQMxPK70upwViAnJphGA8o7VSweMUXnCLQODQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WihtHe49X/uoVPQPl1WgbCBZSxG3nrbaWtZb7OKveGQ=;
 b=oSwzBZWXmJ6KCik52iWftcoR4Gms86+CUe3Wsdc3QhTFYtY1khVOoeaF5fzfecVy6TH5tMJgyUlQEjjJRF88HjHGsl7A1gzimGRmjwLfE9FdcoqUQdTgS+X30XvU/QvLSbuzrObK5bEKWRbQ1LqGDvyG/dK2Uhsn4/ano1o0BP6IoqDqpfj+Spu8BoY3dZ7O3C7z+had9dpCnbQewtpRO1KnGudXp5a1Z4aecDa8hmiebFxWx1hvBSOb7+FLmjUrkSYSHMtsMtZgWHMZ70aTTkoUAS0q+90eGf/tA1cnS/ZPohi0mvb7PpyAk0bDnLI6/48AKsvKwJI6bWcMa9jLcQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none
 header.from=math.wisc.edu; dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=math.wisc.edu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WihtHe49X/uoVPQPl1WgbCBZSxG3nrbaWtZb7OKveGQ=;
 b=hpJqN4dSTVJH4v/KU605jBj0kqrDMpYv3qoswq7stkiqii+fUan496mKWLWuWGb2C2+s6BMJzYS5eEnv59V5rYlFg3i2tsWHKsoXdqIlPfcKHY6uCbGJp3soTso8JK14zs/9zIYgDIEMUnsQd0a7u158tUz5TExhgfB8ukZPM0I6zp/+w41x7rKvNjiZUaEk+zDLs8lPjoxqEl9JEjLQhtGzxG7QW+Bhp6bnHFBnmMp1vxYssKTaf/Gu6xdyq/ZvIx6RsKcqnE0chDsHooctQXf4wli7yUsFDmRfjgByWDNNaN/ElE5ojHUGfBnRKAA7L3pMT1OuuChSWJ6108DtIQ==
Received: from DS0PR06MB9877.namprd06.prod.outlook.com (2603:10b6:8:1d5::14)
 by SJ0PR06MB7630.namprd06.prod.outlook.com (2603:10b6:a03:32a::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9160.11; Fri, 26 Sep
 2025 03:04:27 +0000
Received: from DS0PR06MB9877.namprd06.prod.outlook.com
 ([fe80::a347:6162:9bfd:9b91]) by DS0PR06MB9877.namprd06.prod.outlook.com
 ([fe80::a347:6162:9bfd:9b91%4]) with mapi id 15.20.9137.016; Fri, 26 Sep 2025
 03:04:27 +0000
Message-ID: <15afdcb8-ebf8-4e8b-a139-03be2da5c7fb@math.wisc.edu>
Date: Thu, 25 Sep 2025 22:04:25 -0500
User-Agent: Mozilla Thunderbird
Subject: Re: Question about blind CLI use (was Re: "your browser is not
 supported anymore" ...)
To: Karen Lewellen <klewellen@shellworld.net>
Cc: Jookia <contact@jookia.org>, Gregory Nowak <greg@gregn.net>,
        Chime Hart <chime@hubert-humphrey.com>,
        Cleverson Casarin Uliana <clul+speakup@posteo.com.br>,
        speakup@linux-speakup.org
References: <202509111603.58BG3W3p018143@nfbcal.org>
 <7a04c6dd-c761-4445-b53a-3c4525cf2a87@crosslink.net>
 <579c5d9b-5ba1-4029-982a-01295fea3a61@posteo.com.br>
 <Pine.LNX.4.64.2509112223130.3830807@users.shellworld.net>
 <6d3f190e-733a-e5d5-a8f5-cc6eb2c05e65@hubert-humphrey.com>
 <Pine.LNX.4.64.2509120106350.3832376@users.shellworld.net>
 <aMOwSwrEWTBtFn60@titan> <aMTOpzhGX72PC_2S@gregn.net>
 <aMVgIfSRDN3Uewj3@titan> <242896ae-8567-4e97-a3e1-de09a8efecaa@math.wisc.edu>
 <aNIv2l1tKiR26V-R@titan> <fcf89a57-b683-4590-8d36-3a1a7b613bd1@math.wisc.edu>
 <Pine.LNX.4.64.2509231554180.4080399@users.shellworld.net>
 <d8d6dfa8-db72-43e9-80b6-9a0053e31b2c@math.wisc.edu>
 <Pine.LNX.4.64.2509242315480.4100948@users.shellworld.net>
 <fd0c0d0c-ff55-40ff-a65e-3e912a03f5ba@math.wisc.edu>
 <Pine.LNX.4.64.2509251917520.4128886@users.shellworld.net>
Content-Language: en-US
From: "John G. Heim" <jheim@math.wisc.edu>
In-Reply-To: <Pine.LNX.4.64.2509251917520.4128886@users.shellworld.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: CH2PR14CA0036.namprd14.prod.outlook.com
 (2603:10b6:610:56::16) To DS0PR06MB9877.namprd06.prod.outlook.com
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
X-MS-TrafficTypeDiagnostic: DS0PR06MB9877:EE_|SJ0PR06MB7630:EE_
X-MS-Office365-Filtering-Correlation-Id: 21e62fb6-c187-4362-1b88-08ddfca966fa
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024|41320700013;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?U1FYMGFqVyszMitZOUZXT01LdkRkczV2L3pHdENlTW9mUXdzTWdTNWFzaisx?=
 =?utf-8?B?WXdJK0xlWU9hd2JVejV3SncvZ3l0S3hkV2NycXZSWWNyZ0tNaWdrWWdrLzJR?=
 =?utf-8?B?Q01EbU9OSFF2UE5NVjdVYlUwQ1dFUjBMQi9YWUVhVFMxbUhwU28weDFwdEVw?=
 =?utf-8?B?ZE1mZGJPcjFvRzA1SnVLakVoeFc0c1o2Z29QSHFLVlNOaFdMNjNkR1FBbmt2?=
 =?utf-8?B?WnFCZHVPdUs4a2pJVW1idGtiZ01VSjNVN2xlc3hiQ3VxeVZ0eE93cEZxVGV0?=
 =?utf-8?B?aTVJRnpqdUlPZDNOajFpWFRTRnN4dXVEOGpUaHpUcUJSejA4Y3JXcFI2dSt4?=
 =?utf-8?B?aElxa29lMndBWHkwY1FXOS9CRXFzejhORU5yU3BBOVh5cEJ6RVBoRS9qdjN4?=
 =?utf-8?B?TDZIdk5hQ2VnVkZpVEQ1blo5SXVEQlRkcFhJd2FBOFhzdjBBblhOZS9WZVp2?=
 =?utf-8?B?Q3lpeWE4OXhRK0UzcThIOGlXOFhqSUE1K2gvcktkS2kyUzd3U2EyeDFQSHhp?=
 =?utf-8?B?blpBaTNURHJMSDJRVGR2T1R6aTBGei9jbythWnBadW1jYWFPMFRGSjdFck80?=
 =?utf-8?B?NFh5aUZTU2tIQ0tvNEsrUFFsUXJLNW5CZHdVZG1NREovbUtXaTZiVU01cHdG?=
 =?utf-8?B?M1IvMDNtdTBkMjVONFBtYlJhaUxHZU1LQ25MSXJYb1l2cG1hMk5yUXI1MnI5?=
 =?utf-8?B?TWtvdlV5Y25wREI4cmZVc29ic0o3RU0xODh6enVUNFBUbGdQUWNwTk1pcCsy?=
 =?utf-8?B?ZFBNV0MvZ2oyUTFFOUYvR0pHeFFwS0t1RlRRM2IvZk82LytONEJnUUg1cjRZ?=
 =?utf-8?B?YS8yQ3NmK0l6MUZkV1BWc0NEcjdhQXhhcVdJNC9qMTQwNkdKczVrcHl4Zm9V?=
 =?utf-8?B?em0xcHQ1T3FYK29RSHYzRFlwaStxYW9zcHZRQXJzMnBxTXljenlVMzJwOUJ5?=
 =?utf-8?B?SGY3SUx2RnZ4VTVmb1h1a2l3b0Fzd3hzdElEekMxWEZOelFLMGxSMDJQZ2J5?=
 =?utf-8?B?WlIxTEZvVzd4dkpJNllQSTYrSTlGZkRKdTlKU0VNd2p0UFlTT3lveklaVm42?=
 =?utf-8?B?Z0gybmZ1UUhjdVhBYUhSV1FwblhmOC9ha2pSNGZ1TC9tSVdoMHNXYWNuWWdZ?=
 =?utf-8?B?dVZNZEZXcmhFQ1Ivbm9ZVWY0MlNkZ05aQXNTVStoRjRwRVZnbWhKQm41WXRF?=
 =?utf-8?B?VlU4K1lFZGVLMk1UTkMwM3B6Ly9OWXA4dGdWWENYdjB5d1g3UitQK25yZjds?=
 =?utf-8?B?U2FyWERxQmpwYk9uOEJzQnlhNnV5Y0J2aUJ0NGpBT01MVjVSMkZ1clFTSkxz?=
 =?utf-8?B?Y2NzZE1Xak4wTDE2WEszRWlrSHJOb3pyU0dFdSt0b01OYThGY3Z6RkNuRmEx?=
 =?utf-8?B?ZnVBMTJSU2JHeHUxbm1IMHhsSkQzeHZwL2NlUjBzVXBFdmZFNWF6cGZJcDlp?=
 =?utf-8?B?dzY4QUM0L2xSMGVLVjdnb1FvRDRVeFh4d3lodVN1dGpOaG01Rmo5enRXTmpS?=
 =?utf-8?B?WGoyQ2tNUHdNamsrSzBvR1JZZ2o1RWJXdjR5dnIzTDZGM3M4TC84ODZHcVZx?=
 =?utf-8?B?cExvZDd3K3hRZUhLd2JscDZZZ0NNSXNsYVhhdWJUMENPem41am8xNTA2U0hw?=
 =?utf-8?B?cWFGQzFYWFkxaGdaMlU0bSs5Mi9JZlVBSEczdi9FZ1luTFBKQ3NuNytFZTEy?=
 =?utf-8?B?d2syZVBqbzZmWGUveEI3TnJldytzTGttaDJYM3NlM1J5dUU2U0dvcTZHdjQ1?=
 =?utf-8?B?U3puQkRXeEtZN2V3d2dBUTVZSGlWWWFZYktrWlFiY09xdzZmbWlIUUdTM2FD?=
 =?utf-8?Q?8b2X9Qel1yBRbar/Ku9lM3im1np/nGXx7SMP8=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS0PR06MB9877.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(41320700013);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?akN5VTVEZ1JQRTRpdWlQTzlJSlZGNDRoMzNQM2xXY3RFQ2kxS1NLYXJoK0p1?=
 =?utf-8?B?ZDlXS2p2ekZZUE01dE00SEZvL2o3NXpKckpHNmJvTnF0SXFrd2FjcFRGaWh6?=
 =?utf-8?B?WEZFdlpvYnRYK1lnNkRTNHVDOGhick1KSVVSejJxcC90bHBIbmlVY3JJVUV2?=
 =?utf-8?B?REhzQWw4VldreEpqcW9oWVZlcnEvWHpZNVBxNjVtZVNrS0JweE5nQ0VxOUxt?=
 =?utf-8?B?WkUrRHpsMGRxQzBPWTlzTk52VTRDdks2M2dLekxrK1BvWDczMi9vZmVJeWYy?=
 =?utf-8?B?RDY1MVdKM3BRazIyQzZJQjZqb2ROaHMxR1BUMm1TWXIyVVBGR2dnaXhVa1A0?=
 =?utf-8?B?eGloZWlaMjI5OTd3dGVaaTF4Y2FERU1tTkJtdm0xT0lFS2NlSkhFRSsrck55?=
 =?utf-8?B?MnVTYkxNUUFram96Zk05QzQrdkphemhMK1cwcVN0ZnhTc3F4VmpGV3Fnb29J?=
 =?utf-8?B?UStoYUN0bjlaY3BYRUw2Q2pvNWFwNTIzT0NIL3EyRFFGTEIwRkh0RUdDUWsr?=
 =?utf-8?B?QXRQclpXNGhnbURSZmpWNS9TcW43MkphUm5aVnZjMk1pY0NXYWh3ZVBEaGVF?=
 =?utf-8?B?WCt5MENrc0sxTmprbkpYalJNUmptakpYamxOQ0Y4ZmVGdE9zcW1wNnBMNnZh?=
 =?utf-8?B?cGoyQy81OFpCRjhIZ3poTmQ5U1Rwa29UZFZ1T3hHNlp5NENkNm4zTkM4M2g0?=
 =?utf-8?B?bDJSZ3BnTXFBUzhZbXdJM3l6QUNzTEMxSGkxYjFBZXFhMVhMOVl4UitxMHFz?=
 =?utf-8?B?R3RiYWFIZW0vdkl0ZkVGYWV5ZFBiMlhaNXIveUlpSUNKZllmMHFzOTlJbnpJ?=
 =?utf-8?B?cm5FNVY3RXhTYkVSQXYzd2NYNytYbTJKWVIvWUNQdU5rc1c4UnNoZEJldk9O?=
 =?utf-8?B?ZXlsSUJCSXJZcVhkZTFQaUpFNDREWHZoTy9DQjNsQlFMbkd0Mk02azM4THVi?=
 =?utf-8?B?R1dvYWhoZ1ZZWC9tMjZFL3c4cFdBekNoWmIxbHRxbzVaaW56RjMrQ2ZOS0xh?=
 =?utf-8?B?cXZaS0QxaUszRU10UkJoQmZWVWc5NldKRnZoV0JIRFRFeHZSUklnb2lmWDlV?=
 =?utf-8?B?TjZKa2ljc2RBdVhheEpEV25YNFgvRlFqcUNMeG4rTE8xdnRNSzRHem1PcnFY?=
 =?utf-8?B?QW1lNVRrbEw0azJXUjhuL2dGNWdXTmVtSVlsSmtBQTlsNEZTODZIbDZIcldz?=
 =?utf-8?B?L1pOZlYwalJ3Ty9DYXNUajZmak8rZ2pFM0hEQlpGenRMUlphTExtOEpWNGNC?=
 =?utf-8?B?TWk0U3AwRVpITEpZR21WWHdMVk1jOVVkZVlBWGRLUW9XUTNXMFhTK3FRTExM?=
 =?utf-8?B?UGJKa3BFYkV1czlLcVF0MFpGQ3AyN1pEdTVTK0xsdUdTd08xSUpxQWJxVmNL?=
 =?utf-8?B?QXA3dW1wUktlWVdVT0ZMNHlYZzJESHp5alYvK3luQ2tnSjZCdzlsTG9HcGRQ?=
 =?utf-8?B?R2trQUlsOVJSOWYwOFdGQUVnczMwT1IvUkVZUDVNRGtEWVQ2YTRrU2FrSTBW?=
 =?utf-8?B?Vkw3MHl5czQzZjlNcTR3OWhoMzNDZmNXUEpxWmNnQXV4dlFZNFg4UFhHNzdC?=
 =?utf-8?B?eGlNeFZtZ3NOYk1mdzQwRTVVbkZYajJyKy9pZzBzdjBWVlpXSjdUTU9zRXJY?=
 =?utf-8?B?aGNiSG1KR0R4SExveW9wUDZuZm1Nb1VPM1QwR0JnSzNWYVlYTmd6QXJSQWYv?=
 =?utf-8?B?UDlrRjc0U2lWMDRsUEhNMVV2UjNWV0ZLWEFKQTRlV0kxVmZWbGRUT0JHVUdX?=
 =?utf-8?B?V1hJM1ozaXREQVdUc0NKcTJDTVdNcVZUQjBWZHZpcVpYVjZOZ09NdkhSWWV2?=
 =?utf-8?B?aVV3VHd4YjhwQTJXYisrMWo1bXRpL0ptK1JLTEJhTEdKYllEWTdPVkxvUGxC?=
 =?utf-8?B?K3FHcloxU1gyNDA3dFlmMVRGbmd6SnB2anduOHhMdFFhNS9UNjBxZzV6RHh4?=
 =?utf-8?B?cDZHeXNEbE55THpzOHZucERSTlhWOEJpSVBmUlJKTnFqVHBnNzlmVzFzaGZV?=
 =?utf-8?B?RzlrWlE4RmxGSU9sTXVOOVlXbjlMNitpOTA3eXlLUHFGZm5Jam02dTRNNWpM?=
 =?utf-8?B?Z2VRVlhqWk9aSlBUVnJ5V1VmVXI1VjJTRjBrUy9YM3ZDZVd4aDY4c1RDTHVy?=
 =?utf-8?Q?vkXWyA+pHYEpkIzgXjiilByih?=
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: 21e62fb6-c187-4362-1b88-08ddfca966fa
X-MS-Exchange-CrossTenant-AuthSource: DS0PR06MB9877.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Sep 2025 03:04:26.5894
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pgH+uzgpVbFIlCO3RUlT57IsPYSrYOixcD7woTSdAR4BnvzKTtoam6uJ02Hl712c
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR06MB7630
X-Authority-Analysis: v=2.4 cv=A/lh/qWG c=1 sm=1 tr=0 ts=68d602bd cx=c_pps
 a=miuBlqXM8bFb40OTON37XA==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19
 a=R3fr6vWxGIgF0CYV:21 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10
 a=lre9DRYkaIEA:10 a=rS6rnCo4AAAA:8 a=hEK2XftRAAAA:8 a=LNhb960rAAAA:8
 a=q5txbtUnAAAA:8 a=4WhkulAUQLIsg4zXtaoA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=Cn4oInlQH1Hl-535TvAz:22 a=pvvZm7_9ER1OwvpV3Ftp:22 a=duXMUGqUtLRgrHROm9qa:22
 a=RsootnAUgZ_jVqzlXDew:22 a=cPQSjfK2_nFv0Q5t_7PE:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI1MDE3MSBTYWx0ZWRfXySeFQUnR8ew6
 aF2DCNkHi+h3aoQvsUvP7nq0hiK/r4xy3uUDxbGM4AWCaM/It30qhwe0xV92HmWuXnWC+NwNwfF
 ZWtp93vag4+PyUANCqOl1II0tXlUCaBxOqbixSRzQ+bq9b0y1nuRNAA9C4EAhH5OgIuf1xnJIFG
 +4FVTbPMkJKnKYd9syz5uGKJIWtDuKxtN4ju3qmP5K1MdhawYs7qFnvLY1jI5RN8joZh4KTNlL+
 FURXEV9CQgaKnK42zSOVEK5NiKVcm0oGLR61izIeHjzHapJmQusCwWeu/7Lo4CoSRqIjaxv5sxx
 hzSFHxILmcyt9eZ/j22OE5jlbucyirv8rMRvEXVUOhPVQHvy+wuYGGRqCUCsU2WCNLEGy2N7dIf
 7tSlP3rwDwtZCPAl4uC8LWNG8ekAQQ==
X-Proofpoint-ORIG-GUID: CQ4yoQWvKjs7yQS72-NKbyUmNGBUdnlQ
X-Proofpoint-GUID: CQ4yoQWvKjs7yQS72-NKbyUmNGBUdnlQ
X-Wisc_ValidFrom: true
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-26_01,2025-09-25_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 spamscore=0 phishscore=0 suspectscore=0
 priorityscore=1501 adultscore=0 bulkscore=0 clxscore=1015 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509250171
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

So I say that in 2006, OutSpoken was junk and you take that as a comment 
on your medical conditions? Okay.

Well, anyway, the original question was why some people still use 
Speakup at the CLI. Sure, it's a little in the weeds but my point is 
that around 2000 to 2005, Speakup at the CLI was the best available 
option for a screen reader. That's a relevant point.













> Look, you don't have to make it a point to comment when another 
> person, for medical reasons works differently..or chooses to do so.
> Your comment simply illustrates, speaking personally,  a need to 
> blanket and  feel you are right.
> Never  mind if it serves no purpose in addressing the problems some 
> are raising here.
>
> If you are going to invade my inbox with an off topic, I have the 
> right to call you on it.
> simply accept that you have worked hard to build  expertise in what 
> works for *you.*  It might work for others, it might not..same as 
> everyone using a computer.
>
>
>
> On Thu, 25 Sep 2025, John G. Heim wrote:
>
>> Funny, I was going to ask you the same thing. Look, you don't *HAVE* 
>> to reply to every thing I say, you know.
>>
>>
>>
>> On 9/24/25 10:21 PM, Karen Lewellen wrote:
>>>  John,
>>>  your point?
>>>  I make a living just fine thank you very much.
>>>
>>>  https://urldefense.com/v3/__http://www.commongroundmedia.ca__;!!Mak6IKo!PKB0RJD8OP0j6IPvNxWqJv3bVdhkPPGFE-kwr9ifYz1VeMSVsSw_Q_-tz-5BScuyFqCPj2W1RNsVjUvTKtEjtR7w2Q$ 
>>>
>>>  Further, there are far easier ways for me to commit suicide then to 
>>> use
>>>  orca android and so forth given what exposure to the speech does to my
>>>  brain..in 5 seconds or less.
>>>   I am deeply sorry someone told you that the only way for you to 
>>> have any
>>>  dignity is to claim every blind person is interchangeable for 
>>> yourself.
>>>
>>>
>>>
>>>  On Wed, 24 Sep 2025, John G. Heim wrote:
>>>
>>> >  Well, you can still ride a horse from New York to Los Angeles. 
>>> Most >  people would fly.
>>> > > > > >  On 9/23/25 3:02 PM, Karen Lewellen wrote:
>>> > >   Its truly interesting how different life experiences can be 
>>> for > >  people,
>>> > >   even if  sharing the same technical diagnosis.
>>> > >   I currently have outspoken on one of the mac computers in my > 
>>> >  production
>>> > >   studio.
>>> > >   Its tied to a specific edition of pro tools, and the for me, 
>>> needful
>>> > >   control  surface I use professionally.
>>> > >   I produce professional audio projects with this setup. Speaking
>>> > >   personally, I could not work any other way.
>>> > >   Actually, I did not even get this copy of outspoken until well 
>>> after > >  2005
>>> > >   too.
>>> > >   Again speaking personally the more respect for keeping broad > 
>>> >  solutions on
>>> > >   the  table, no matter the motivations making them needful the 
>>> > >  better.
>>> > >   Karen
>>> > > > > > >   On Tue, 23 Sep 2025, John G. Heim wrote:
>>> > > > > >   BTW, the correct spelling for that early screen reader 
>>> for Linux > >  is >  Gnopernicus. Googling shows me that Gnopernicus 
>>> was the default > > screen >  reader for Gnome from 2001 to 2006 
>>> when it was replaced by > >  Orca.
>>> > > > >   The screen reader for Apple I was trying to think of was > 
>>> >  OutSpoken by >  Berkley Systems. Wikipedia says development of > 
>>> >  OutSpoken was dropped >  after Apple released VoiceOver in 2005. 
>>> > >  While that is probably > technically true, as a practical 
>>> matter, > >  OutSpoken was no longer a >  practical option for some 
>>> time before > >  VoiceOver came out. The libraries >  at the 
>>> University Of Wisconsin > > stopped buying Macs and got rid of the 
>>> >  ones they had because there > >  was no screen reader.
>>> > > > >   Speakup was released in 1999. So the era I'm talking about 
>>> is > >  from 1999 >  through 2005. You could use Linux at the 
>>> command line or > >  in the GUI for >  free. Windows had a good 
>>> screen reader but it cost > >  $1000. There was no >  realistic 
>>> alternative for the Mac.
>>> > > > >   It seems to me that Linux has always been a step ahead 
>>> when it > >  comes to > accessibility. Well, at least since 1999. 
>>> Before 1999, I > >  used Jaws For >  Windows and administered my 
>>> Linux machines remotely > >  with tools like > putty.
>>> > > > > > >   On 9/23/25 12:27 AM, Jookia wrote:
>>> > > > >    Interesting, thanks for sharing. I never knew about > > > 
>>> > Gnopernicus.
>>> > > > > > >    On Sat, Sep 13, 2025 at 10:35:51AM -0500, John G. 
>>> Heim > > > > > > wrote:
>>> > > > > >    One of the biggest impediments for a blind person using 
>>> > > Windows > >   is the >  cost.
>>> > > > > >    It's less true today than it used to be. A Jaws license 
>>> was > > over > >   $1000 >  at
>>> > > > > >    one time.
>>> > > > > > >    For many years, it wasn't even possible for a blind 
>>> person > > to > > install
>>> > > > > >    Windows. Well, I used to do  it via Linux, no kidding. 
>>> I > > booted > > into >   Linux
>>> > > > > >    and ran the Windows installer in an emulator with an 
>>> answer > >  file. > >  That
>>> > > > > >    worked really well until it didn't. At some point, 
>>> Microsoft > > > >   changed the
>>> > > > > >    installer so it had to be run in their pre boot 
>>> environment > > > >   (whatever).
>>> > > > > > >    Even after the install, I had to install a dumbed 
>>> down > > version > >   of Jaws >  that
>>> > > > > >    worked for only 40 minutes.
>>> > > > > > >    Also, there was a period when there was no screen 
>>> reader > >  for Ma > >  Cos. >  There
>>> > > > > >    was some 3rd party screen reader for the Mac. The 
>>> developer > > > > dropped > support
>>> > > > > >    for it and some time later, Apple released VoiceOver. I 
>>> was > > > >   lucky, at >  the
>>> > > > > >    time my job did not require me to use a Mac. But the > 
>>> >  libraries at > >  the
>>> > > > > >    university where I worked had to get rid of their Macs 
>>> > >  because it > > is >   against
>>> > > > > >    the law to have computers in a student lab that are not 
>>> > >  > >  accessible to >  the
>>> > > > > >    blind. BTW, that's why Apple so suddenly started caring 
>>> > >  about a > >  screen
>>> > > > > >    reader.
>>> > > > > > >    IIRC, at the time of the above events, I was using 
>>> both > > Speakup > > and a >  GUI
>>> > > > > >    screen reader called Nupernicus. I remember walking out 
>>> of a > > > > meeting > with a
>>> > > > > >    librarian to talk about screen reader options for his 
>>> lab > > and > > thinking >    how
>>> > > > > >    lucky I was to be a Linux user. I believe that 
>>> particular > > library > > > replaced
>>> > > > > >    most of their Macs with Windows machines and paid like 
>>> > >  $1000  > >  each to
>>> > > > > >    Freedom Scientific for Jaws licenses. They put in one 
>>> Linux > > > >   machine just >  to
>>> > > > > >    see how it would go.
>>> > > > > > >    The computers in the student labs in the Math 
>>> department > > where > >   I worked >  were
>>> > > > > >    alwys Linux.
>>> > > > > > > > > >    On 9/13/25 7:14 AM, Jookia wrote:
>>> > > > > > >    Hi Greg,
>>> > > > > > > > >    Yeah this is unfortunately true. I'm glad FOSS is 
>>> > > still > >   appreciated by > >  people.
>>> > > > > > > > >    Jookia.
>>> > > > > > > > >    On Fri, Sep 12, 2025 at 06:53:43PM -0700, Gregory 
>>> > > Nowak > > > > > >  wrote:
>>> > > > > > > >    On Fri, Sep 12, 2025 at 03:31:55PM +1000, Jookia 
>>> wrote:
>>> > > > > > > > >    I know this is the speakup list and I'm talking 
>>> to an > > > > extremely > > > >    niche
>>> > > > > > > > >    community here, but I'm genuinely interested to 
>>> know: > > Why > >   do you > > > >  use
>>> > > > > > > > >    computers this way instead of like Windows or 
>>> macOS? > > They > > can do > > > >  much
>>> > > > > > > > >    more useful tasks.
>>> > > > > > > >    They're both proprietary operating systems. Windows 
>>> > > > > > > > essentially
>>> > > > > > > >    hijacks the PC these days, and dictates to the user 
>>> how > > they > > should
>>> > > > > > > >    use it (E.G. requiring the user to register an 
>>> account > > with > > > > >  the
>>> > > > > > > >    developer to set it up, dictating when and what 
>>> updates > > the > > > > >  user
>>> > > > > > > >    wishes to install, and so on). MacOS is tied to 
>>> hardware > > from > > one > > >  company, and only works on
>>> > > > > > > >    that company's hardware by design.
>>> > > > > > > > > > >    Greg
>>> > > > > > > > > > > > > >    -- > > >  web site: > > > > > > > 
>>> https://urldefense.com/v3/__http://www.gregn.net__;!!Mak6IKo!PJ5X0c86hX4IZtoBfv1kpLI0rcSQhBtXAThLGAI94dOL6KYPF7-9QJySUhuUeXnUO8FQFZp1QNEHanR6Yeo$
>>> > > > > > > >    gpg public key: > > > > > > > 
>>> https://urldefense.com/v3/__http://www.gregn.net/pubkey.asc__;!!Mak6IKo!PJ5X0c86hX4IZtoBfv1kpLI0rcSQhBtXAThLGAI94dOL6KYPF7-9QJySUhuUeXnUO8FQFZp1QNEHOOMsI_E$
>>> > > > > > > > > > >    --
>>> > > > > > > >    Free domains: > > > > > > > 
>>> https://urldefense.com/v3/__http://www.eu.org/__;!!Mak6IKo!PJ5X0c86hX4IZtoBfv1kpLI0rcSQhBtXAThLGAI94dOL6KYPF7-9QJySUhuUeXnUO8FQFZp1QNEHcie2CdA$ 
>>> > > > > > > >    or mail dns-manager@EU.org
>>> > > > > > > > > > > > > 
>>
>>
>>

