Return-Path: <speakup+bounces-1356-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 64F62B561D5
	for <lists+speakup@lfdr.de>; Sat, 13 Sep 2025 17:37:02 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=math.wisc.edu header.i=@math.wisc.edu header.a=rsa-sha256 header.s=selector1 header.b=lVXxMf9v;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 556553830F2; Sat, 13 Sep 2025 11:37:01 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 30816382C3C
	for <lists+speakup@lfdr.de>; Sat, 13 Sep 2025 11:37:01 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 99701382C40; Sat, 13 Sep 2025 11:36:53 -0400 (EDT)
Received: from mx0a-007b0c01.pphosted.com (mx0a-007b0c01.pphosted.com [205.220.165.71])
	by befuddled.reisers.ca (Postfix) with ESMTPS id CFB83382C00
	for <speakup@linux-speakup.org>; Sat, 13 Sep 2025 11:36:52 -0400 (EDT)
Received: from pps.filterd (m0316037.ppops.net [127.0.0.1])
	by mx0a-007b0c01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58DAtJVG027546;
	Sat, 13 Sep 2025 10:36:38 -0500
Received: from sj2pr03cu001.outbound.protection.outlook.com (mail-westusazon11012027.outbound.protection.outlook.com [52.101.43.27])
	by mx0a-007b0c01.pphosted.com (PPS) with ESMTPS id 4945yabyf8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sat, 13 Sep 2025 10:36:37 -0500 (CDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=T8rXUw7mNL3+z82dOUqWjfqEjz0CSxKA2SH+dXE0KVMg+PKI3Rz1+N5WxTKm/CXr8tEjiN28eUkbAGbvIYgyCyHhK5+casw7RYz//kGARBfeQ78gGs7e/urqY9+jgtAxjO252x6UFbRMNKNkzwxx41X249KTmNUfhTUk2Ba30LtncpvgX/WTRIXTCdzN/F+dZjZYpNS6oDJyK+DlfLdRHH2EAu3movZA7I2UdEdhy7GhitsSzcLNAH4yt/PFDoB5EDlFQj3CNDmb+CsNfW78ukCraAGyInv/vHiOQ54708KGbaQb6RxCiKWcO7RigAkYBinnUPdWgh11694yRAstGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VjbVbA9isWfNinN+Nbj0R9ciuc+RijBJFhUdvxHwUdM=;
 b=oUAWf38hrTf5PsUTtxejRjJCFDWw3OidPzaETixvW+skH4QSZgaYt9uzuaN2m4uEcd5QjVKg45cnG2DIxiF9hCudmdMq4dgrJe8sgJQjI+pUc6PwO09lr1RoTHwgxSFAbciGpKv3WBVpsi9U9q5vvLJACGSsyrk2sViNtmJRfdgq1i5geF+s/SKgxY9bnLToOBPRDC0t6l4hUKoHACl9hmxyyH7695xNE1R9H+UlM3wu9SVMihNtK/+6RhexvqFQ7tebjpTreXvsRoddw4ekLtDVylpSTZULXwC+147r/hf72DJ3GNdrVJP3HnsY8mjU2W+tj0EJnw8S7H6CL8nRtg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none
 header.from=math.wisc.edu; dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=math.wisc.edu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VjbVbA9isWfNinN+Nbj0R9ciuc+RijBJFhUdvxHwUdM=;
 b=lVXxMf9va4aV1P4M03p5MFxTuLJW6IjDnMH57tjeQW3NGxhbOho4UCgOWYRmUjRz15exYAFND6/UDyrT5eYgoz/d0H3VDRLGq2qPCq4W9whGFaWn9dNM9+S6plkcKmUtMC6SGxpmBdtf8tlXmegL3tX7DyQyG7mucQ068cenLm9p/m51A+mkrac54KrUVWZv5nfE6hvQBbiatT47/Em8UB9y0M3vcsLV7zt+ZXHXqO3CGmllI1ECD4AQxhleXmLrkcdoZS3kk6bq81XcsdaUiQM2KUSpp8UlqYGt/jj4lbLKdBXHH8IEtQqc4K0413eCCL5pSq/fZU4pDG7DM7olFQ==
Received: from DS0PR06MB9877.namprd06.prod.outlook.com (2603:10b6:8:1d5::14)
 by PH0PR06MB7623.namprd06.prod.outlook.com (2603:10b6:510:55::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9115.18; Sat, 13 Sep
 2025 15:36:35 +0000
Received: from DS0PR06MB9877.namprd06.prod.outlook.com
 ([fe80::a347:6162:9bfd:9b91]) by DS0PR06MB9877.namprd06.prod.outlook.com
 ([fe80::a347:6162:9bfd:9b91%4]) with mapi id 15.20.9115.018; Sat, 13 Sep 2025
 15:35:52 +0000
Message-ID: <242896ae-8567-4e97-a3e1-de09a8efecaa@math.wisc.edu>
Date: Sat, 13 Sep 2025 10:35:51 -0500
User-Agent: Mozilla Thunderbird
Subject: Re: Question about blind CLI use (was Re: "your browser is not
 supported anymore" ...)
To: Jookia <contact@jookia.org>, Gregory Nowak <greg@gregn.net>
Cc: Karen Lewellen <klewellen@shellworld.net>,
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
 <aMVgIfSRDN3Uewj3@titan>
Content-Language: en-US
From: "John G. Heim" <jheim@math.wisc.edu>
In-Reply-To: <aMVgIfSRDN3Uewj3@titan>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: CH0PR03CA0360.namprd03.prod.outlook.com
 (2603:10b6:610:11a::11) To DS0PR06MB9877.namprd06.prod.outlook.com
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
X-MS-TrafficTypeDiagnostic: DS0PR06MB9877:EE_|PH0PR06MB7623:EE_
X-MS-Office365-Filtering-Correlation-Id: 87f9020b-cbce-49e7-2b0f-08ddf2db38c8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|41320700013|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?eDZRaGthdWZGOEFXMGl5bUVwbjJFUGZOK2YxYUJXbEc0MWUzTXhDOTdmbzFG?=
 =?utf-8?B?TTN0ODVCSmxRdkpOTDlvR3RKN1lDbDNzMzlxWGg0Rk1VU2FBMzBSemZxSDJI?=
 =?utf-8?B?ZldybVZveFp2LytEM29YeEJKVXJiREZITS9SOWl0TDhnNHg1bmxIdExGL2VX?=
 =?utf-8?B?RVJPMWNDVDdRRFJUbTVDRURuandRdmd3NjQ1dGpSclRLcFlXVmUvb1pQQ291?=
 =?utf-8?B?a1lvcS9XVjNZZEtHYVg5d0x3RmdFS2Zmc2MraTIwOGh6aGc5bnMyQWlXNGJH?=
 =?utf-8?B?RGVDS2JkWVB2UUNWanI4Z3hLS1A5VVRTeElBbkJMNnhCQzdydkU0SWNCRWtu?=
 =?utf-8?B?S0xyNlpQeTdSclVJaytaRXJTWlhnaDMza2FNK0dLNjVVRWk1RXVITytuSlpk?=
 =?utf-8?B?M0xQVEhRZEhJTnJGUUxULzV0aXlpTTVqVGcrdE9TUDdqUTVLcloydWVkWHJx?=
 =?utf-8?B?MXl6MnFwTExKVW5lbFJ1cGtZVTJaWnpIeVRxMFVkdGhNS2k4aFl4dEVTQjEy?=
 =?utf-8?B?c0xaSG9hWXFhSXp5eDZqdm5iT1NCdFY1RVpsUjQ3UktPKzhKRU5uaUhlb3Ar?=
 =?utf-8?B?Q1QvNWFkZXovUWprUTE1aTRtTzEvbVJwRVZrZngwbXJRQWc0YjNXMGFkTkFi?=
 =?utf-8?B?M3o3RGlUVy9YYjhOaWRhOGFiVUZudmNTWkFMMVllNVBrSlJGTjN1dDA4dXRK?=
 =?utf-8?B?ZkpzaE9yZXZxSGVrNGN5RFR0WHZLYnVoUFpwcC8xbDlUeXJxMndnWnV4Zi8y?=
 =?utf-8?B?NDcwSzhCc1lTSVJTTS9PYWZJUWllVU0wRXpOYzlvZDh0L0U2L0NnRldicmxG?=
 =?utf-8?B?dDkwRHU5VUFXSTRUY0lYWkxtanBscTE2MEYyaTlLeWJJNnVlVUIwWXE1VjNH?=
 =?utf-8?B?M292eHFkWUJjWE5KVTR0T2ZpR1Y5eUJMRUVxSHpURFVQemVSREtSL090OENB?=
 =?utf-8?B?blk5S0lpZVNaTHlVQ3VkYTNWODNqd21qUTZ0ME5HVVNycFE1WHhlWTRWaUdh?=
 =?utf-8?B?SWpXL2dKMFY0TVJyTFBQeWpJcVdXdkdHTnRNbldwRDBWbnczZ2cxTTNTaElp?=
 =?utf-8?B?djl1SXdhVVBQeTNNek9IaW1aQmFHYUNUT0YvcWk3WWIvbzdRd2ozOVdwc1ht?=
 =?utf-8?B?ZUYxckI2NWJDdEk4YmNTZnQ1K1RuVEU0OWYzT2dYKy9iUDNpZ3M4aDJxUXg0?=
 =?utf-8?B?dFpCMS9jaENlYVd0Z0RBZGVsRFI3WXAzTlNBUmd4Y2cxT3Bsc1dVYzZabDJk?=
 =?utf-8?B?em0zaC9hejd0Zm52LzZ0YWJoWWE3eEZNWGZvV283cHJLbTJFeUpvMVZUTyt5?=
 =?utf-8?B?ekRPeW1YRFpTcXNac2JKZFpDbkNqSG9wVWFLUmJGVXFxYkpNL002TnFjTlRn?=
 =?utf-8?B?cU1FMklXNzhoWldLbkxPREZVTXVhYXhkSWc0RCtSTE56R3hnVVBvTnA1cG1t?=
 =?utf-8?B?WjRLb0txbFM5WE9melo0dzA5QjVVQ3BDNEgyb25HelNqbFNCQTQ1Sk5BUjVy?=
 =?utf-8?B?MWkxRHB1b1BEZkdYV2lIR1Njc2VoSVhMbjkxcG9xYWFac050MGNoNU43TXdp?=
 =?utf-8?B?NGxyMUZyMkpzV2h3Tjk3Mll1ODI0djlHeGM1U21nelJpVFRaWGNnNGxwaFE1?=
 =?utf-8?B?UWRWdFBuSzA5ODdZNTZudUlWYVNFWFBFMldPZlNHUHIyT2FFWWFFcVRPMUF3?=
 =?utf-8?B?a2dWYnpHVDdrWGdyeHlmK1ZmT004YkdXL3hMT0NBRGpGR2lXaFlDbzUyMHpH?=
 =?utf-8?B?Z1dGZVRDYmFudlc5SGlrYnowdUgzWTRNSERiQ1IvckJ0ZkxQRTRUREo0N3ox?=
 =?utf-8?Q?vkrNViUwqZWTaOiM50rQByp04qEOjz0SsLvEs=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS0PR06MB9877.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(41320700013)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?REN6QnZ5VkN4Y0EvS0lGclZWcUFpNFIzMHlGejIyekwrMjhoTGVyTTZxVjFy?=
 =?utf-8?B?dVdmTVJacnM1ZHlHeTFDRndtU0J2YTVzSzNsWEVldXl4cGJGZ0N6SUw3STd3?=
 =?utf-8?B?UWVvL3lYck1RNEt2cnJoMFFwSTRQQm9ORlRnOE9CUm9KWWZJWUNrQ0NPRCto?=
 =?utf-8?B?ZUd3ZUF3QTFubm90U1o2bWNYWjM0NCt0Q01QK2RiZzU4eWdGeFZvcy9lNDlP?=
 =?utf-8?B?NW5mdHJPcDhJZG9xUzNTTitpRnQ5bDViNW52WGxCNDRiWUZ0M21OSUxUUytC?=
 =?utf-8?B?N0VpY1hpM0hJUUlqcnk2aWl0dk1CMWhScHJRNWltVG1pdXM2Y0VudkxIRUN2?=
 =?utf-8?B?S3pGaFZjVThJT1BNYWpjK0pYMnY5V21ZT3BNQXVoWUF2TUtpNUdmV1NXYmRD?=
 =?utf-8?B?bVhZdEF4dDhIb0pNcUxHbEJWL2thSEJZazRUVjhNRjZ5SC9wLzRHMFZJNEpM?=
 =?utf-8?B?VEdoREFVUitvaW04RFhlSTVZbjZPMTNQYUlsckx1THRoR2E3VTN5VEFJUUNW?=
 =?utf-8?B?TDlnbEFlbDd6aXNOK2NqTUJNREhLUDVPVEl3ZnZvblRrM1Y5b2lSVHdUZFhu?=
 =?utf-8?B?VFkvMnEzVFNsU05kUTlTZHc2aVNyR09XVTR1eWxHRksreVIrN3U5eG1qdkFS?=
 =?utf-8?B?YmF5V294R3k1SXk4WmJ0ZEsrYlZzSDcreXdLSVE4WVBHVms3NXViMjg3RVlU?=
 =?utf-8?B?S1E2QlR0aTZWN0Z3MktMYktHMEVrVXc1ekM1S0t5T1REcmFZd1V1UkZxdkx6?=
 =?utf-8?B?akQxVkhHZExTSkMzUmNBM3A1NzlYL0tMK3lJWDZRQmRodTB2aFNCM2tSV29M?=
 =?utf-8?B?bzRLT2sxSVErOVRWejJUY3p1VFE3VkZURGlKZWNoNERKL1o5UDZaeFVaSUJt?=
 =?utf-8?B?ZDdrUnpvbW0wSnlBNUxxb3BudTU2aEhweFNYR2JFeWxLZUpPMmZ5dTFWL1Qv?=
 =?utf-8?B?S0lOWWIzY2NZQnp5dG1GQlpCRFpHaTJTdmljQ1hWNHdTdkRNQ3VNOXAzbDBj?=
 =?utf-8?B?YnBqeVdCbjFnSXRlbnl4SmdjQ1VmWXdDSW1CVy9oenpSVnphMWdLN2d0Vkg1?=
 =?utf-8?B?S0dzNE1WM2dmUjVNRnBkMnZkeEo4NlFlSHFXeHR1c2xUQ2ZIQlU5KzM2dXYw?=
 =?utf-8?B?d3RCUlYzaGRmcHBXZ09Zai8zVnl1dkUvOVdkYXlMTHVvdWFBRTFJRHd3YjhV?=
 =?utf-8?B?aVBwb2hQMTBjeTFGMzUza2FHb05DTXVuaVduTDBlaGRQcnNRM0p3WFZkcndS?=
 =?utf-8?B?WHNMaUd5T3dTUnRSdjhudTJIRHdLempsWHc2R2d0bEpzWEtQWnBtS00yaWJ4?=
 =?utf-8?B?TjRneFUrZEx3Z1RUVjcvcHRtcEo4K1A4VlVTTk5RSkpSM1g3TmIvOHNmSGlw?=
 =?utf-8?B?Mm96WVFIeUpVUXVpcTZNNUZCR1NPL3hiVVN0VWdNU2ZPVHF0Qm9kQWpsdWQy?=
 =?utf-8?B?QllTVmFsdDhQNjFlekg5Q0xzUzJUbEVUVnBWS2thMTdwcnQ5Ni9HUW9saUUr?=
 =?utf-8?B?cmR1R3M1NEZLMlQ4NEdtV0ppaWp4V1BFWGVHRmlhbnNaYWNKcmg4OGtlNlJi?=
 =?utf-8?B?dFpGQ3dpck1YckhyTmx0MXRpY2txYlhJci9OcGFiN3pPby91YW5LV3Zkckpa?=
 =?utf-8?B?dnV6SkFQRHJGRk9IY24wcFBhNDA4a3YvaUxIS0w3K0ZRSkU0V3lvR1VZcHgy?=
 =?utf-8?B?SWYzb3Q2UjV3QmFwMUtGUnMrVFp1SXl3R2ZJSHZvV0ZXRE5TbmpTd1EwUXg2?=
 =?utf-8?B?N1ZOcnhZNVVZajM5RHExSVVzSTFUMUFjTmhBTFZCMHZyOWNJVVdQK2VkZkxl?=
 =?utf-8?B?S3gzUEVhcWJpc0dLQ1FvaExkeXpaczZYK3k3RW42RUo5Qlg4TTJYZWEyWC9I?=
 =?utf-8?B?RDUzQjZCS3AzdXBnTHlJY1dTZ0p4dHV6ZUFNbnd5dkZJM1RIZ2NtOHg3QzJ6?=
 =?utf-8?B?dk83MWhSbjNmRkd3azVUbkVUTUdFUHcvUTBWNHFkOU5Fcy9VdVY0bXRBaHNl?=
 =?utf-8?B?c3FuUVE4Z1VKb0lKR3dOV1pyUWo5bk85dCt5dHltNEJkeUJtM1BvMmxVMlNx?=
 =?utf-8?B?TGIrcThGYmtXeDhubVI5ZnBvNFVROWRXeHJyc28vNTU5V2xXWlM4akFMK3F0?=
 =?utf-8?Q?fvsv1xnq0FErcB2L9Ur5c7rZh?=
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: 87f9020b-cbce-49e7-2b0f-08ddf2db38c8
X-MS-Exchange-CrossTenant-AuthSource: DS0PR06MB9877.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Sep 2025 15:35:52.2149
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rVnevLAOxwedkf1vzPDwnZzHmy80h54s84+hhKIOorfx9sCM164gPUSJoslTzvCZ
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR06MB7623
X-Authority-Analysis: v=2.4 cv=VKbdn8PX c=1 sm=1 tr=0 ts=68c58f85 cx=c_pps
 a=8g4i1X1tkAMDiabECo8pFg==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19
 a=R3fr6vWxGIgF0CYV:21 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10
 a=lre9DRYkaIEA:10 a=hEK2XftRAAAA:8 a=LNhb960rAAAA:8 a=q5txbtUnAAAA:8
 a=lQB-WlfpjNndLkAcg_IA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=pvvZm7_9ER1OwvpV3Ftp:22 a=duXMUGqUtLRgrHROm9qa:22 a=RsootnAUgZ_jVqzlXDew:22
X-Proofpoint-ORIG-GUID: DHZjdgOCYoupHG0CQcg-hlkS3VufORoo
X-Proofpoint-GUID: DHZjdgOCYoupHG0CQcg-hlkS3VufORoo
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTExMDE4NyBTYWx0ZWRfX8A4Mhg4WzrQE
 EFS06XfsL0Fe1kYECbaEVH/cZef1khYf2AUQUqmMP9gHYNs+dZHtG+HM4dn3gWt4RSwFtZxw+bq
 KiLxUsS56o5mHG2s/VMDyFREYR1dukD6fTXGEFa0uGL+3051btYEIDn73fUDn2eQnTmYFBbSZvU
 PNtQjMilL/m+evab+yVnSTX+ITlJpJwEAMjs+15eztn+XXNT0clWJ6PGWc8LZLtJCLBjfIgEOsG
 Q7l/mdf3zcePGWbtgIwkjLCvefe+7gN6i923SHKRBzXezngzBTBAAra+r2wIjbp8ZzuQsNl3FO3
 VWUmO6wrjp+ylpB1PzaxXzlHSqjErOyh0VlFiZXfDfw52vvIQeh7zcnMhmooAgHIESiJHJvyLle
 4Tg4qmkH
X-Wisc_ValidFrom: true
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-13_05,2025-09-12_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 priorityscore=1501 spamscore=0 clxscore=1011 impostorscore=0
 adultscore=0 phishscore=0 malwarescore=0 bulkscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509110187
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

One of the biggest impediments for a blind person using Windows is the 
cost. It's less true today than it used to be. A Jaws license was over 
$1000 at one time.

For many years, it wasn't even possible for a blind person to install 
Windows. Well, I used to do  it via Linux, no kidding. I booted into 
Linux and ran the Windows installer in an emulator with an answer file. 
That worked really well until it didn't. At some point, Microsoft 
changed the installer so it had to be run in their pre boot environment 
(whatever).

Even after the install, I had to install a dumbed down version of Jaws 
that worked for only 40 minutes.

Also, there was a period when there was no screen reader for Ma Cos. 
There was some 3rd party screen reader for the Mac. The developer 
dropped support for it and some time later, Apple released VoiceOver. I 
was lucky, at the time my job did not require me to use a Mac. But the 
libraries at the university where I worked had to get rid of their Macs 
because it is against the law to have computers in a student lab that 
are not accessible to the blind. BTW, that's why Apple so suddenly 
started caring about a screen reader.

IIRC, at the time of the above events, I was using both Speakup and a 
GUI screen reader called Nupernicus. I remember walking out of a meeting 
with a librarian to talk about screen reader options for his lab and 
thinking how lucky I was to be a Linux user. I believe that particular 
library replaced most of their Macs with Windows machines and paid like 
$1000  each to Freedom Scientific for Jaws licenses. They put in one 
Linux machine just to see how it would go.

The computers in the student labs in the Math department where I worked 
were alwys Linux.




On 9/13/25 7:14 AM, Jookia wrote:
> Hi Greg,
>
> Yeah this is unfortunately true. I'm glad FOSS is still appreciated by people.
>
> Jookia.
>
> On Fri, Sep 12, 2025 at 06:53:43PM -0700, Gregory Nowak wrote:
>> On Fri, Sep 12, 2025 at 03:31:55PM +1000, Jookia wrote:
>>> I know this is the speakup list and I'm talking to an extremely niche
>>> community here, but I'm genuinely interested to know: Why do you use
>>> computers this way instead of like Windows or macOS? They can do much
>>> more useful tasks.
>> They're both proprietary operating systems. Windows essentially
>> hijacks the PC these days, and dictates to the user how they should
>> use it (E.G. requiring the user to register an account with the
>> developer to set it up, dictating when and what updates the user
>> wishes to install, and so on). MacOS is tied to hardware from one company, and only works on
>> that company's hardware by design.
>>
>> Greg
>>
>>
>> -- 
>> web site: https://urldefense.com/v3/__http://www.gregn.net__;!!Mak6IKo!PJ5X0c86hX4IZtoBfv1kpLI0rcSQhBtXAThLGAI94dOL6KYPF7-9QJySUhuUeXnUO8FQFZp1QNEHanR6Yeo$
>> gpg public key: https://urldefense.com/v3/__http://www.gregn.net/pubkey.asc__;!!Mak6IKo!PJ5X0c86hX4IZtoBfv1kpLI0rcSQhBtXAThLGAI94dOL6KYPF7-9QJySUhuUeXnUO8FQFZp1QNEHOOMsI_E$
>>
>> --
>> Free domains: https://urldefense.com/v3/__http://www.eu.org/__;!!Mak6IKo!PJ5X0c86hX4IZtoBfv1kpLI0rcSQhBtXAThLGAI94dOL6KYPF7-9QJySUhuUeXnUO8FQFZp1QNEHcie2CdA$  or mail dns-manager@EU.org
>>

