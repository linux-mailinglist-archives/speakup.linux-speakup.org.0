Return-Path: <speakup+bounces-1413-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 558ACB9C3B6
	for <lists+speakup@lfdr.de>; Wed, 24 Sep 2025 23:07:07 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=math.wisc.edu header.i=@math.wisc.edu header.a=rsa-sha256 header.s=selector1 header.b=WDeiEqXM;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id A8256381603; Wed, 24 Sep 2025 17:07:03 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 808CE3815BD
	for <lists+speakup@lfdr.de>; Wed, 24 Sep 2025 17:07:03 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 210A43815B3; Wed, 24 Sep 2025 17:06:56 -0400 (EDT)
Received: from mx0b-007b0c01.pphosted.com (mx0b-007b0c01.pphosted.com [205.220.177.71])
	by befuddled.reisers.ca (Postfix) with ESMTPS id AC49F3815A5
	for <speakup@linux-speakup.org>; Wed, 24 Sep 2025 17:06:54 -0400 (EDT)
Received: from pps.filterd (m0316045.ppops.net [127.0.0.1])
	by mx0b-007b0c01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58OHEtJ1004429;
	Wed, 24 Sep 2025 16:06:31 -0500
Received: from ch4pr04cu002.outbound.protection.outlook.com (mail-northcentralusazon11013023.outbound.protection.outlook.com [40.107.201.23])
	by mx0b-007b0c01.pphosted.com (PPS) with ESMTPS id 49c2pe8mfc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 24 Sep 2025 16:06:30 -0500 (CDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sQaRwjK8WVhLaDzMEbORIQ9VEZgXmqG0nB8tMtbYjr5AIv/eDJdLh5WJg07+4M4gaLnlvxpj5Yh/D/uEIMP/vNrdsOhckYG22F9jxNv9Yhn70AOyYSueLeufdXpal6QSTtE0NAz52gnIN49CjnzOZgnRmg45w67UiIZGj23pYIT5dEoUS/A+ozZf8exvyMcFUAnFv3VuWM7Sxrni6lzglADvTaoqhrPA3afYDM226VOB0iluR8dx4UFfi9ztxC6okO0r/yWymoswEegbb5EIXnY31o3JnxoKxVsv1WpT+j1pMm/Eb7emyGJYLV3NkSBvo/9lxx6oEhciYs56vejZzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jmfHil1s90ksFOPMytYuJC8wpWYTNvZ0rutNalYVBSU=;
 b=u7GNlj0lj04/18GlK+k60AiLKzj385fZS6xrQUuVuO7TCOczK275p7cBbhhAplbmUoq9OcAm8hYUd7sJbXD1Vlj+hzPS9/QeabtUekdXsIvGPUdYwhXCAg0m9gtGZtc8iNeNEv4l/2AE/0CMIwH3PGUKWsuRqfpWkmWlAuMa1UeGB0PGWLbKBUSDw00Cl68aISKl819W+yzlXmqtJakLS05y/nqDmrkZon0n0XMCK+baV3vH7HFti+vICxGh504xFnfXJpCqTWtkQ5PuJaFqxh/LOVz1WnZS50CYmBTavDvJriK4ZQuJM0t6uRH3VD61tewP9eQQm1wwyTLeyqPwHQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none
 header.from=math.wisc.edu; dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=math.wisc.edu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jmfHil1s90ksFOPMytYuJC8wpWYTNvZ0rutNalYVBSU=;
 b=WDeiEqXMu4WZwVKZq/BCMBV4UMN9fD20XSpWIU0MIFL0jo9tpXa4FO8ITUOG5h8Z7oixJfcmtzdGmEN3qekYELPGgv2l7ZpjOg+4gp19bEu1s/YpPzqAU+bQfQbminQc5sdf/QGbvqo/9Mpmeqav/oWLB5LibkmEMosxE2VoBd+/vj+Bay/DVlvBJINv5UeZd20qn89p0SopymN2CfZxP7t6m/78sfap5gyloQqbhKk7ywHiHKf8sOIIoTQavuLxHS4F1HGMzhTYarwtjlTVu5qiNgtT64JaRQVAKnx+79nDjodwKzLIkKf3lLWgb/17VY8FuIGPz/nCoz87jSYcCA==
Received: from DS0PR06MB9877.namprd06.prod.outlook.com (2603:10b6:8:1d5::14)
 by DS7PR06MB6824.namprd06.prod.outlook.com (2603:10b6:5:2cb::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9160.9; Wed, 24 Sep
 2025 21:06:29 +0000
Received: from DS0PR06MB9877.namprd06.prod.outlook.com
 ([fe80::a347:6162:9bfd:9b91]) by DS0PR06MB9877.namprd06.prod.outlook.com
 ([fe80::a347:6162:9bfd:9b91%4]) with mapi id 15.20.9137.016; Wed, 24 Sep 2025
 21:06:28 +0000
Message-ID: <864b13bf-03ab-4e3a-af1a-43ab5e4f87cc@math.wisc.edu>
Date: Wed, 24 Sep 2025 16:06:28 -0500
User-Agent: Mozilla Thunderbird
Subject: Re: Question about blind CLI use (was Re: "your browser is not
 supported anymore" ...)
To: K0LNY ?? <glenn@ervin.email>, covici@ccs.covici.com
Cc: Jookia <contact@jookia.org>, Gregory Nowak <greg@gregn.net>,
        Karen Lewellen <klewellen@shellworld.net>,
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
 <m3h5wsu4py.wl-covici@ccs.covici.com>
 <01897751-ddc5-4bfe-be6f-0b751079597d@math.wisc.edu>
 <025601dc2d6e$7e89ba00$01ffa8c0@nucwin10>
Content-Language: en-US
From: "John G. Heim" <jheim@math.wisc.edu>
In-Reply-To: <025601dc2d6e$7e89ba00$01ffa8c0@nucwin10>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: CH2PR19CA0006.namprd19.prod.outlook.com
 (2603:10b6:610:4d::16) To DS0PR06MB9877.namprd06.prod.outlook.com
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
X-MS-TrafficTypeDiagnostic: DS0PR06MB9877:EE_|DS7PR06MB6824:EE_
X-MS-Office365-Filtering-Correlation-Id: ff34118d-a797-4415-68be-08ddfbae3ad5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|41320700013|366016;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?ZEJEOHowM3c5NHQ5L1VGa3gxMmdrSkZkWk1UOHlUSmxTVlVDYTB5cnBNci9q?=
 =?utf-8?B?Smx5WE9UV05RTG5ic2JZS1RSWjRieXh6T1hZNFgxQzNFMW5EbVlZejB6cElj?=
 =?utf-8?B?a3kwaTVRb09uUmwxQmx1TER2cGdjQU04YmpUdEpzRFpoL0hoUk94SWZQZEt3?=
 =?utf-8?B?UHZhVGlFT09EbGZISDk4MmVYOHROR3hSY0ZqRWVzQ2gyOGQxS1lyZW0yb0kr?=
 =?utf-8?B?aEJka3dRRE1rUjJaSFRrMXRRM1ViaHJqQ0xLbmxWS0EzaXE2MjYzK1dNYWxh?=
 =?utf-8?B?b0U3bEZKU1lJYWhlN2VJb0d1OXh1UW43NGI5akxyUll5bmRIRlJCRm1Idmxh?=
 =?utf-8?B?WkJYaVNvclhwUFk4WS84T2x3U2xwdDFQRC9HQllzcGVSdzlqWW1MRHJnRmov?=
 =?utf-8?B?Z3NsNkptckdCOCtoMDF1UjUxeUVKaUN0c1JiK0M1U0cxYkxkOU5tODJRL3Mv?=
 =?utf-8?B?Rm5zZUh3Qjh0cVE5VXBwNUNlbDFwZDVCalVIejhzR21FME4xMzArVHNwMEY3?=
 =?utf-8?B?TzFrNjlEVnF3MHVQTmUrY0pZb29DODZwN1VqRTRzZWt3MnFkMGZUa3lNSUF2?=
 =?utf-8?B?OU8xdUhGSTl3UkxmcnFoUlMwMnJWcDk3aE1zTC9vMzVINWRsbkxVeUl3Rkp3?=
 =?utf-8?B?TGRMMkFWc3NqWFJFSWdxVmFlbUV6SS9JVlVLTUZLZmZiRU1XT2FFTXhZRFFN?=
 =?utf-8?B?d2E0UGRteDlLcURjRjUwR0FyZG01VXNiR0RhMXJsZ1N5WmhqMCtycVVRb1Bt?=
 =?utf-8?B?Z0JLVXY5ajBFclBUYmxESUFkcFBmQ01nSWlmRHpJR0luc0xSUzRqcUhjWXZ1?=
 =?utf-8?B?S3FiMGdMc3VSTTBHTnFzNWJjN28vN0QvQ0lwaXZuSFc5QnpNVnhZWWlkWlA0?=
 =?utf-8?B?dU16QlQ4TzVVdlR4SlMzZGJmQ1JvaTNrUGpTMjJlUXp5U2tPNlNnZHZJRHJM?=
 =?utf-8?B?RFRxTC9zSkI0U0luVkQ2V1JuV2hhanhsL1ZDYW9jNlFBZTBSOTF5bDlRRzZa?=
 =?utf-8?B?elQrcEJndEg3bjB2bG9CTmhtL05yajNIMWJPQTlvaDBUd09UdUdMUEwxc0VY?=
 =?utf-8?B?WXVhMlkwZkVDSTM5Vzg4SmY5QnhCNS9PaTdNbHJlZWNFUmVEZXVmTjkvRE5W?=
 =?utf-8?B?QncyS1ArcStqZHdYbjZqbDVnOW9xSHVtdUUwcEFpckFlT3g1bGN4WWlVR1lE?=
 =?utf-8?B?dHdqVG8yTC9mVGFYYmZDbEExOHgyblFScml0OHRSZ3h0MFRYV2o3WDBkTVV6?=
 =?utf-8?B?Z1hZcUFwZDNiVUgrTExmblhIczRrYmhqdWpiYkZPRjBjMDZIS1R5Y2R3bUNX?=
 =?utf-8?B?OUpZQ2FzK0xobUFaWXJNMmtpQW1ZRFFhd1BadERjbUtHM1ZDWi9zUGtXZ3Zh?=
 =?utf-8?B?dmhjdkxDNkhFa2RVbEhQQWl1N2JoUjJ6dnFjQnA4TjYyeEl6Mk1iNmJkRFVW?=
 =?utf-8?B?aDlmM2hPcSt5YWVHWTk1NkFXay82TGd6YUdCMmdrUXdWMEU3R0pqVi9pNm5C?=
 =?utf-8?B?aHErYVV2ZjMvNHcrSFpaS1E4emJNZlNNbGNSSytUbm85R2R2Y2dhR2E3VnlC?=
 =?utf-8?B?enNML1NKak5TeTVkM3hnVjY2RDB5Ukp1TnRuOFNUUTNXMy93N0gySEpLazli?=
 =?utf-8?B?Ny9NRkFCOGNFZzBIS1FtWW9jVkI3MDN4T25VL09yckNCNzh2bHlvSUY1bzcz?=
 =?utf-8?B?NFM4K3UzekQ1OEhvZ1F2Q1FHWFVXWGI3WVdlOVBVT2wwZnVTYzhGUDdOaDN2?=
 =?utf-8?B?WkdPNFZOQ2lYOFBYSkZGSVpqTFJjcHZVazFRZkdkMm5KSVBHY1lRUkd3T1VQ?=
 =?utf-8?Q?OvI5kvBGfjBC0qEBxArPiZC9bb9KfQhiAqRmk=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS0PR06MB9877.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(41320700013)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?Zk9LbEszelV0Y2JqVjFEV1o1M1NwVTJodjBqUkh4SkFwTVpkUlZmME1wSmxY?=
 =?utf-8?B?SFVRU21JL0RxSmhncXh2VWlpck43c2tlYmVOZDZWMU11TWlCZWNQK3UyWVYx?=
 =?utf-8?B?a1lXM0xTdXpESy9FcHIyRW9XNXFLMk9NTmlyekRZUDN1ckcvTXZLbWRiditQ?=
 =?utf-8?B?Q0Nxa3BUMkIrRnd1YUtJcS81bXdHMXZCWGJuWW9BeHFES0o0eVlDcWJ5aG5K?=
 =?utf-8?B?eGgzVkpIY0tYS1pNQnlsZFRkU2JxUXRtQTJldUdtejY2cUptWlowYzUwK0ti?=
 =?utf-8?B?STF3SFl6a1VRT2RoOFQvVlZ6dUZ6VmJvWGVsSHk1eTlXVldUczd6T0ovSEhD?=
 =?utf-8?B?ZWFmQ210TFZySzc0L0I5VGNCNGVxdHZhVkJkWlZ5aTE2bVlHcjdzTDliQVgy?=
 =?utf-8?B?SDBkYStPdnV0NmNNS1RaSHJacit3SlY3U2Eyd1lUN1pIZU5zMkJWZUtGOG1I?=
 =?utf-8?B?Uzh5UkNpdGhTeHFJdjBMd0NKVGdwdDFUOEFtais1aU5UNlh4WWpkdVJLNWtF?=
 =?utf-8?B?Y1AwSmFHSjlTaDBxajQ4VGg5b0RvZ0Q1dVJvVVdFOFBXc2xMQVh2R2pVMit6?=
 =?utf-8?B?Y1A0MjlIVW9iSlhpekdpRktxYzd3cmhFSTlpc3lpaUc5U2Izb3lNZUZJUVZR?=
 =?utf-8?B?Rml3T2lFUDB2dE0zd0lKWlJUNUZYZkQvTnlzdjRteFduV1l5UTV2ZXRpQWFy?=
 =?utf-8?B?QWQ0NVFsWlhlVENpcHlvVEppVUs3bUNEK3hLcmdYbnpZZyt3dktYeTJ5d1pn?=
 =?utf-8?B?Nml1MWZpczN4TnBkYkE2a05GeTVIeElBTWt5c3hjV3p5OXVIZHZWYTFoeURU?=
 =?utf-8?B?ZDVrVWpraStOOGt3MzZBZnJXbld3bjJkY3h6emNsM1NiUmdJWkVvUTJQcW4w?=
 =?utf-8?B?eGw1MURZTThtZmRhTEZMV0Vzek9YTk1zM0NNWXhYT1I3Z3Vhd3BRVEJjSWJJ?=
 =?utf-8?B?MzYzby9OZWp0OE05aStPdUZlZktmMnFhRFFYQ2ZpSTVMMzRXSk00NmJPYVNa?=
 =?utf-8?B?MHU2d1FNWVI1TnY1K2x0ckhQMUdmc254cEhCTGViVTdGakJKL3pmSmszNWVK?=
 =?utf-8?B?a242U3BrZTNqYXVQUERaek9VUzZWNE9pdzB5NnpndDlhTHRZMGlFc0pQT2R3?=
 =?utf-8?B?aEFVVG5DblN4dGFqSXFhRTVoWnZNVi91TlB6NkhZcGJ1QkEwVXhUVGJaTHh5?=
 =?utf-8?B?VW8yRDRVT01YQThVL1BoVUZyY21KVnpKNWVNMkp0eDBLTlZ0NzZyNHBWN2lS?=
 =?utf-8?B?alZmOUsxR0lOWUNmOTk0eDg5ZFlYY2o0ZzUrb3dKNzY5aCtIMTdjSHExWE5X?=
 =?utf-8?B?TWJGcnE4UUcvbnhNS09pNi9tVGNONkFWbjY2ck5FcVlNTDVpYzVuOHNBb096?=
 =?utf-8?B?NnZRTHlJVG9yVVJ6bmVMS1ZMN1V3QnZXWFNvUEFTeWk5UWtTT2dUb1IzeWpY?=
 =?utf-8?B?Y3VRSjZPNVlpWEJoVUZoY0NSMWZIZzE2cUZxbHB6UG1zbk9DUUpZZFlodzYr?=
 =?utf-8?B?eWxYK3FzT3NlTEJJOHhBZDMvaUVFODQxK3FIL1ZuUUV0QzlGNUFlc0tFaFVk?=
 =?utf-8?B?bERQdnRHaGJqelV2WmxlN0MxbWk0MUFQdVhWYldYQ3llV1ZBQlhLSGliM01j?=
 =?utf-8?B?UlFscWFHZjhidE1od2NGNEE4cy9xdUg4bHRSbkdESDFTLzFnVjZEMzM0aFFj?=
 =?utf-8?B?eEF6d0hBbVJYWU1reHlUb1dlSzRycWkrRXBHZlk5M2VVME1EdG1rWTZlT2Qx?=
 =?utf-8?B?R2YyeUZ0RkM1RUZPbEZ5K0xjNVpRMVFnaXgxRVE2Qmt1TFJNeTRCdERPTTAz?=
 =?utf-8?B?TU43dG1oa2p4bVk0QjVRSG1HbURxZ3Y4Zm9wSGlyLzVVdlFpVXNvUTZXUDhu?=
 =?utf-8?B?L1I3cHNCYVBRV3BLbHdjK2tjckhEaWxDVkdaMjhsUzdrc3hmYnJVa1pmaC9V?=
 =?utf-8?B?aFVCQ3M3eFYwM1ByeDVuZFVUc1RxeVN3MHQ3OUljMWZRS2VURlhuRkdiQklN?=
 =?utf-8?B?ajY0czk4T1JuR2hIRFgrZ2UzUDNMdzRHVldhVkpLbkhLa0dMQXRZZ2daZHgx?=
 =?utf-8?B?MmUrZE5MaWdOc00xeldlVlV0cXk1TGxiQjFoNSt1OGs5Z1p3b1VNQzdlY2R2?=
 =?utf-8?Q?2wb7pVs0UFRkTcBI6Dew4lWtJ?=
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: ff34118d-a797-4415-68be-08ddfbae3ad5
X-MS-Exchange-CrossTenant-AuthSource: DS0PR06MB9877.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Sep 2025 21:06:28.8753
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7yz/xh/JERI3am27AHI1FYPmcQrD68a4vfTGBIp5koiWNb1uX0PdLSr4n2cGezco
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR06MB6824
X-Authority-Analysis: v=2.4 cv=YeS95xRf c=1 sm=1 tr=0 ts=68d45d56 cx=c_pps
 a=JigUrrSO7vm3KiUpdjzzBg==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19
 a=R3fr6vWxGIgF0CYV:21 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10
 a=lre9DRYkaIEA:10 a=DyznqomoAAAA:8 a=hEK2XftRAAAA:8 a=LNhb960rAAAA:8
 a=uJ_w1ttZAAAA:8 a=jovt0mFxAAAA:8 a=9_GH9xibAAAA:8 a=EUDjGK3pAAAA:8
 a=G1MHl-R2AAAA:8 a=qPKtzgQbAAAA:8 a=q5txbtUnAAAA:8 a=X0kQgPP_DUZh9bs7l4QA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=pvvZm7_9ER1OwvpV3Ftp:22
 a=duXMUGqUtLRgrHROm9qa:22 a=muQ5ErImgoUO71fbljk_:22 a=StMmMNtBgVvPiZYFi0f4:22
 a=dO7qa_Xy17WzffDKgyPM:22 a=7CWdE0Xi03QsYozaNcnV:22 a=0_cEEhCvB34XW5aA8UtH:22
 a=OTAqJWGB1laLS8RTg9aS:22 a=RsootnAUgZ_jVqzlXDew:22
X-Proofpoint-ORIG-GUID: y9sHnYS3PC_X0fHsjs-ORC10JzsS6vGg
X-Proofpoint-GUID: y9sHnYS3PC_X0fHsjs-ORC10JzsS6vGg
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIzMDE4NiBTYWx0ZWRfXz4hrfQQL9Yhc
 8484dLh6CM45fBZ0q+uW/gfUdy3dS7IbLbDlb6RHLaw+fCUxZazQrKImhjOveSSAKOTBjs+4P9l
 JqwpX337ANiRv2npfhxUnSD/Xzm9GrVJ0D2GU7Ssb2VUlnFizw8w1r2Kn72iOMlOmcO/JqSShoM
 grcDa154BPGXJ3GTkq+tKbSQVOfkOjgEjF+maCvCRh3Xy5IyVQdZ4PhQznyAKA76m9nAvlzFEh1
 ke8HDB2awlfomXt+EzeLoxef3lKxaNZyCzUy3tkkv8u+2gkamFeOrrMSjJXYTfgbHTPvhCcQnhV
 tWtPWI3lQD2JgIzmQ1mCVMaAUud75naJac0ZBF4Qxz5mLU6fsxFvexrgvXGnsdczSgbWgMPFuiL
 Xu/XrEh4
X-Wisc_ValidFrom: true
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_06,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1011 spamscore=0 suspectscore=0 malwarescore=0 priorityscore=1501
 bulkscore=0 impostorscore=0 phishscore=0 adultscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509230186
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Well, how are you connecting the RPI and the Linux box?

Another possibility is to configure your Linux box to send the boot 
messages to the serial port and use something like Kermit on another 
machine to access them.  This takes a null-modem cable. One advantage of 
this is that GRUB can be configured to do this too. You get both GRUB 
and Linux kernel boot messages.



On 9/24/25 11:15 AM, K0LNY ?? wrote:
> I'm hoping someone can make a hardware synth out of a raspberry PI.
> So the RPI could possibly double as a little Linux box in itself, and serve
> as a hardware synth to another computer.
> Glenn
> ----- Original Message -----
> From: "John G. Heim" <jheim@math.wisc.edu>
> To: <covici@ccs.covici.com>
> Cc: "Jookia" <contact@jookia.org>; "Gregory Nowak" <greg@gregn.net>; "Karen
> Lewellen" <klewellen@shellworld.net>; "Chime Hart"
> <chime@hubert-humphrey.com>; "Cleverson Casarin Uliana"
> <clul+speakup@posteo.com.br>; <speakup@linux-speakup.org>
> Sent: Wednesday, September 24, 2025 11:01 AM
> Subject: Re: Question about blind CLI use (was Re: "your browser is not
> supported anymore" ...)
>
>
> I personally own a DoubleTalk that is probably about 25 years old. My
> employer gave me a TripleTalk that is probably about 20 years old by now.
>
> I don't believe there are any hardware synths being manufactured
> anywhere in the world any more. So that's a problem. The best
> alternative for getting access to boot messages might be a braille
> display. I have the braille display from an old PacMate which is
> probably 30 years old. It's just the braille display, the PacMate itself
> gave up the ghost many years ago.
>
> On a Debian based distro, getting speech during boot via a hardware
> synth is as easy as putting the speakup kernel module into the file
> /etc/initramfs-tools/modules. You then have to regenerate the initrd or
> you can wait until the next time the kernel is updated and it will do it
> for you.
>
> I do not know how to enable software speech during boot but I'm pretty
> sure it's possible. In my grml4speakup script, I enable software speech
> during boot by putting a script into a folder GRML designates for that
> purpose. The developers of this distro, GRML, specified a folder you
> can put scripts in if you want them executed during boot. So I wrote a
> script that puts a script to start speech in that folder. But of course
> it only works for GRML.
>
> More info on my script can be found here:
>
> https://people.math.wisc.edu/~jheim/GRML/
>
>
>
> On 9/23/25 6:30 PM, John Covici wrote:
>> What synth do you use -- I have been using speakouts, but they are
>> dying, which one are you using -- I also want to keep using such a
>> synth particularly during boot.
>>
>> On Tue, 23 Sep 2025 13:04:38 -0400,
>> John G. Heim wrote:
>>> BTW, the correct spelling for that early screen reader for Linux
>>> is Gnopernicus. Googling shows me that Gnopernicus was the
>>> default screen reader for Gnome from 2001 to 2006 when it was
>>> replaced by Orca.
>>>
>>> The screen reader for Apple I was trying to think of was
>>> OutSpoken by Berkley Systems. Wikipedia says development of
>>> OutSpoken was dropped after Apple released VoiceOver in
>>> 2005. While that is probably technically true, as a practical
>>> matter, OutSpoken was no longer a practical option for some time
>>> before VoiceOver came out. The libraries at the University Of
>>> Wisconsin stopped buying Macs and got rid of the ones they had
>>> because there was no screen reader.
>>>
>>> Speakup was released in 1999. So the era I'm talking about is
>>> from 1999 through 2005. You could use Linux at the command line
>>> or in the GUI for free. Windows had a good screen reader but it
>>> cost $1000. There was no realistic alternative for the Mac.
>>>
>>> It seems to me that Linux has always been a step ahead when it
>>> comes to accessibility. Well, at least since 1999. Before 1999, I
>>> used Jaws For Windows and administered my Linux machines remotely
>>> with tools like putty.
>>>
>>>
>>>
>>> On 9/23/25 12:27 AM, Jookia wrote:
>>>> Interesting, thanks for sharing. I never knew about Gnopernicus.
>>>>
>>>> On Sat, Sep 13, 2025 at 10:35:51AM -0500, John G. Heim wrote:
>>>>> One of the biggest impediments for a blind person using Windows is the
>>>>> cost.
>>>>> It's less true today than it used to be. A Jaws license was over $1000
>>>>> at
>>>>> one time.
>>>>>
>>>>> For many years, it wasn't even possible for a blind person to install
>>>>> Windows. Well, I used to do it via Linux, no kidding. I booted into
>>>>> Linux
>>>>> and ran the Windows installer in an emulator with an answer file. That
>>>>> worked really well until it didn't. At some point, Microsoft changed
>>>>> the
>>>>> installer so it had to be run in their pre boot environment (whatever).
>>>>>
>>>>> Even after the install, I had to install a dumbed down version of Jaws
>>>>> that
>>>>> worked for only 40 minutes.
>>>>>
>>>>> Also, there was a period when there was no screen reader for Ma Cos.
>>>>> There
>>>>> was some 3rd party screen reader for the Mac. The developer dropped
>>>>> support
>>>>> for it and some time later, Apple released VoiceOver. I was lucky, at
>>>>> the
>>>>> time my job did not require me to use a Mac. But the libraries at the
>>>>> university where I worked had to get rid of their Macs because it is
>>>>> against
>>>>> the law to have computers in a student lab that are not accessible to
>>>>> the
>>>>> blind. BTW, that's why Apple so suddenly started caring about a screen
>>>>> reader.
>>>>>
>>>>> IIRC, at the time of the above events, I was using both Speakup and a
>>>>> GUI
>>>>> screen reader called Nupernicus. I remember walking out of a meeting
>>>>> with a
>>>>> librarian to talk about screen reader options for his lab and thinking
>>>>> how
>>>>> lucky I was to be a Linux user. I believe that particular library
>>>>> replaced
>>>>> most of their Macs with Windows machines and paid like $1000 each to
>>>>> Freedom Scientific for Jaws licenses. They put in one Linux machine
>>>>> just to
>>>>> see how it would go.
>>>>>
>>>>> The computers in the student labs in the Math department where I worked
>>>>> were
>>>>> alwys Linux.
>>>>>
>>>>>
>>>>>
>>>>>
>>>>> On 9/13/25 7:14 AM, Jookia wrote:
>>>>>> Hi Greg,
>>>>>>
>>>>>> Yeah this is unfortunately true. I'm glad FOSS is still appreciated by
>>>>>> people.
>>>>>>
>>>>>> Jookia.
>>>>>>
>>>>>> On Fri, Sep 12, 2025 at 06:53:43PM -0700, Gregory Nowak wrote:
>>>>>>> On Fri, Sep 12, 2025 at 03:31:55PM +1000, Jookia wrote:
>>>>>>>> I know this is the speakup list and I'm talking to an extremely
>>>>>>>> niche
>>>>>>>> community here, but I'm genuinely interested to know: Why do you use
>>>>>>>> computers this way instead of like Windows or macOS? They can do
>>>>>>>> much
>>>>>>>> more useful tasks.
>>>>>>> They're both proprietary operating systems. Windows essentially
>>>>>>> hijacks the PC these days, and dictates to the user how they should
>>>>>>> use it (E.G. requiring the user to register an account with the
>>>>>>> developer to set it up, dictating when and what updates the user
>>>>>>> wishes to install, and so on). MacOS is tied to hardware from one
>>>>>>> company, and only works on
>>>>>>> that company's hardware by design.
>>>>>>>
>>>>>>> Greg
>>>>>>>
>>>>>>>
>>>>>>> -- 
>>>>>>> web site:
>>>>>>> https://urldefense.com/v3/__http://www.gregn.net__;!!Mak6IKo!PJ5X0c86hX4IZtoBfv1kpLI0rcSQhBtXAThLGAI94dOL6KYPF7-9QJySUhuUeXnUO8FQFZp1QNEHanR6Yeo$
>>>>>>> gpg public key:
>>>>>>> https://urldefense.com/v3/__http://www.gregn.net/pubkey.asc__;!!Mak6IKo!PJ5X0c86hX4IZtoBfv1kpLI0rcSQhBtXAThLGAI94dOL6KYPF7-9QJySUhuUeXnUO8FQFZp1QNEHOOMsI_E$
>>>>>>>
>>>>>>> --
>>>>>>> Free domains:
>>>>>>> https://urldefense.com/v3/__http://www.eu.org/__;!!Mak6IKo!PJ5X0c86hX4IZtoBfv1kpLI0rcSQhBtXAThLGAI94dOL6KYPF7-9QJySUhuUeXnUO8FQFZp1QNEHcie2CdA$
>>>>>>> or mail dns-manager@EU.org
>>>>>>>

