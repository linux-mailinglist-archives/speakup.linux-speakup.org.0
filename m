Return-Path: <speakup+bounces-1624-lists+speakup=lfdr.de@linux-speakup.org>
Delivered-To: lists+speakup@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ccc2J/UrO2qoSAgAu9opvQ
	(envelope-from <speakup+bounces-1624-lists+speakup=lfdr.de@linux-speakup.org>)
	for <lists+speakup@lfdr.de>; Wed, 24 Jun 2026 02:59:33 +0200
X-Original-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id A04EB6BAC19
	for <lists+speakup@lfdr.de>; Wed, 24 Jun 2026 02:59:32 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=math.wisc.edu header.s=selector1 header.b=A2CCnvG+;
	spf=none (mail.lfdr.de: domain of "speakup+bounces-1624-lists+speakup=lfdr.de@linux-speakup.org" has no SPF policy when checking 206.248.184.127) smtp.mailfrom="speakup+bounces-1624-lists+speakup=lfdr.de@linux-speakup.org";
	dmarc=pass (policy=quarantine) header.from=math.wisc.edu;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 5369A38269C; Tue, 23 Jun 2026 20:59:31 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 3172738263F
	for <lists+speakup@lfdr.de>; Tue, 23 Jun 2026 20:59:31 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id EC08E382648; Tue, 23 Jun 2026 20:59:24 -0400 (EDT)
Received: from mx0b-007b0c01.pphosted.com (mx0b-007b0c01.pphosted.com [205.220.177.71])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 7DAC4382639
	for <speakup@linux-speakup.org>; Tue, 23 Jun 2026 20:59:24 -0400 (EDT)
Received: from pps.filterd (m0316046.ppops.net [127.0.0.1])
	by mx0b-007b0c01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65NK0J3H3815344;
	Tue, 23 Jun 2026 19:59:21 -0500
Received: from bl0pr03cu003.outbound.protection.outlook.com (mail-eastusazon11012008.outbound.protection.outlook.com [52.101.53.8])
	by mx0b-007b0c01.pphosted.com (PPS) with ESMTPS id 4eywefk76q-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Tue, 23 Jun 2026 19:59:21 -0500 (CDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XInLSwFJKLwHGZZEuN/TExmlHEfloFj5MUU1+hsJ5VOHpZzDHjesxFY6e7DvJs9eH8RwNsPRKFQiQXmlrBLpWs3RxEftgmeE4kxfY9i0PH2pDIRnteBJQJDIdoUyeaKRnS4sPEsQuKVrH6KBPP0TrGzCCPSQqU0XIdaOkc26wbkhIgHbx7zel5RZZD09hlB/7JkTn/nRjWI4YdB8xDSzDJFYDgCcDxicY8cj3pwT+ii2jNZ8+vICgO72rqK5vW8tVmNHtPzm7WyRry+HeJCz6e/VQxuR84zYKF+nvwOAZy26o6S1Uz4DnUOwlr0JHDh+AGSvZrnL4RrkYYWu9u1MZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IusT3snM/Q7FOctB1GUdepyq9T33CHOwe//6qbqu4jI=;
 b=sd7hvm5K67hDsNCoagj/kfE9jQDg3n5CzzGpjsnlX0xl1Hf339knt/2owRkoa4zpg7fIF3ZAjyBFpDfheN6wPg76P6ln9uzabHmbcd8s3i+NqIBchsX+8q2R5UOt/ZAIGkgi39biE64a62c6jjbz1sfvWd5jBWS0Q6TMTekV8gEyEkXvZOgJm7SKZTBGh/G7yIOQYJIu7TjVf4Ucg4iGTsP/+Gk34BPIYAsFcY0ZXStAdDZyiNgXo/ZzS/mOk0HYk/F0LxP6gM/Gfaj2JMg9Wh/cnA85JFBkKfEOSVbnCIoVSI1sfgro+SpHZ5mQyZtW2Sc1yTqiWhJs2c8runs+WA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none
 header.from=math.wisc.edu; dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=math.wisc.edu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IusT3snM/Q7FOctB1GUdepyq9T33CHOwe//6qbqu4jI=;
 b=A2CCnvG+94IBVINlrJDVfidHBOmHX+ydfqz19fvusuV1Of0m5F2dvcDiDfiUSNUfnNS57DcjkFq7+LBAliypPa9krnXGkKizoKueZS5nzPSJn6t2CTswMDMpcfeIF0gb12nzenPu7dquEZdRaH78gSZaXpjpz601l3y0sGRxT/jdCWBOV7JEEYMZuVsW90j7uFqHpEIyBTYH6/4i/dsuESO6JXqP05201SXVvxAo5/R4MMrC/d0/W8VzoseMDKxZ3pvWzq2fQ1m3SScgrmqMl9cJlB9Jpgpc3NMCP7cw3QXE8sTIVwHigGg/FMWNVHbyr9AeZWlvV4fFueqfdHQRqQ==
Received: from BY3PR06MB8195.namprd06.prod.outlook.com (2603:10b6:a03:3ce::19)
 by LV3PR06MB10006.namprd06.prod.outlook.com (2603:10b6:408:23b::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.139.20; Wed, 24 Jun
 2026 00:59:20 +0000
Received: from BY3PR06MB8195.namprd06.prod.outlook.com
 ([fe80::a7ad:fb62:4389:fd8b]) by BY3PR06MB8195.namprd06.prod.outlook.com
 ([fe80::a7ad:fb62:4389:fd8b%4]) with mapi id 15.21.0159.012; Wed, 24 Jun 2026
 00:59:20 +0000
Message-ID: <73008a8e-0ebb-4ee3-9a5b-78d323039778@math.wisc.edu>
Date: Tue, 23 Jun 2026 19:59:18 -0500
User-Agent: Mozilla Thunderbird
Subject: Re: Speechd-up -- nice!
To: Rudy Vener <salt@panix.com>,
        "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <aa9f5623-dba3-4686-9b5c-8144e409425f@math.wisc.edu>
 <031401dd02c6$798d33a0$8b01f80a@nucwin10>
 <d6e07425-3566-407a-a371-a4d8055e9764@math.wisc.edu>
 <036601dd032c$a63f17e0$8b01f80a@nucwin10> <ajrSKnrqwLcVFaAN@panix.com>
 <c329fefb-8d70-4d24-b148-7eaf01f5b4f9@math.wisc.edu>
 <ajsGIzaxbaQe8Bm_@panix.com>
Content-Language: en-US
From: "John G. Heim" <jheim@math.wisc.edu>
In-Reply-To: <ajsGIzaxbaQe8Bm_@panix.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: CH2PR14CA0034.namprd14.prod.outlook.com
 (2603:10b6:610:56::14) To BY3PR06MB8195.namprd06.prod.outlook.com
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
X-MS-TrafficTypeDiagnostic: BY3PR06MB8195:EE_|LV3PR06MB10006:EE_
X-MS-Office365-Filtering-Correlation-Id: b7f1d1b1-5288-4113-c5d3-08ded18bd2b1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|23010399003|786006|41320700013|376014|1800799024|366016|4143699003|56012099006|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info:
	vF0XJhfXjBsQLBumefvyVAF0wcLSpFDcndLvEFdx5DJOwDfJSfNlvCepDv/SunYcm2l8QIM/+Wbfqg+5UQNU8AqjfZ2bfIScjPNBCYGkCiIte3UUTOoAgoiucvtmebaWzynpCmMlmZrzGr2GFHve6bPR1fj30wC906sr02BwnGSeZqzPaGX3HBu16iGAjp2Al7BrG/ns+rwKpTyL5ADEZyOe4LKGGcGIeDDmQnEVuW1nwUnKj3QDyCl/n4eDjuB4RniKMv0lohkE+s1MdDVi1VIB2nah+vDoVtdSCO4RLYOFI6o04cFSuo5IwCXt4EdpAl7y1iqIWNSdOrJbYWR1ztnYJarue93DTWAxfy7WIICJoP8XNRENrzC+8741vtmRs6nKfOYNHnT31QCdtV+ao3+vmcR5yGsA/7CBfXiqx3oaeAdU6TTt8v4XfCujJk7tD+p24UwWWW3Q97hKS694qp/WZ7AhuORc7ImRm4ItsTdlBywORD6gBTkE3pei9MLMr1vfIv1XzT7JZ35n1dHmOrZQPuSy/X4C9LyoqgtC7iuKE1HllTGHAPZDX6m62aZJHtkjOb781uyNFfx+tJlyp9V79jLpkgv3QmC2GlUTUfpbwPzk/vtP6ATGbppMMo9BL09ChyGeOXXaoz9Mdr/e8ME7xfSx9tcCh7ORh+NIdqs=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY3PR06MB8195.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(23010399003)(786006)(41320700013)(376014)(1800799024)(366016)(4143699003)(56012099006)(22082099003)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?TzlycTM4S2xwVDJWTUJkbHpMNmYrc0szeG4rZkVEQVNaMHppNnZJNGNKMzJS?=
 =?utf-8?B?bE9KaWcyamtJeU5XR0xFdllSTjNlMHR4dVRNK08rV0x0SzVKbDcraHF0S2c5?=
 =?utf-8?B?RXdOZHBjNnB3S0xLanV6T0hBcVpDbkNuR3ZxNVk1YU84ME9oMzIvOUoxNVZi?=
 =?utf-8?B?RW5Ia1lFYlFWbUpxZ2VpRkQvRlRBbEMwK2lPcEFKYTh2Wkx2Q3M4R3huVVdI?=
 =?utf-8?B?OVZNN2xWelk5NDYvQmQ4c2E5VmExTXhwWTNUOUtqbkJ0LzZuWDFjTW44Q1Iw?=
 =?utf-8?B?OEpKa3ZTcnFJaGhrWG9LL2ozN1BiNmQ4KzFrZ1RlYk1nQmNwYll1K2xGQUFy?=
 =?utf-8?B?L0tkZTBGSEhvbDRYVTZkMW1yd3hGaXRJKy85ZWZTMXFiQVBjUVIrakRVWU5h?=
 =?utf-8?B?NW1idlAyTTVxN04raWdmbS83WjluclR5bjVFWEtMWWU0eTI1MHBWb25NN2JZ?=
 =?utf-8?B?UFpGdzVnTk90azlyRzEvSENZQUlQd29hZjE2RVdOa1ZVd0w1aHJaTVlINGJZ?=
 =?utf-8?B?bFhMMm5VRWhnZ2hXOEtEakNOU1cyNTRNbVRwY3l3WWNsaWhOem1OSGNtdUV4?=
 =?utf-8?B?L1RFQ05kbldtUGtwZklXM1R0M0VCNU1Hay9YK2VVaS9YcE84YTdBYzMySkE3?=
 =?utf-8?B?RlRRR0wxaXY3Y3ZJOXo1blUyYzVRZmVKWVZkdkFvM2xZb2U5d0V3dTdaNmZU?=
 =?utf-8?B?NUE5QUhrWmJFQ2doYTlZYWdsY2V4RHpObURxN3JEaU9LTCtoNWV2SnBJTEs3?=
 =?utf-8?B?RXNIQXNSTTJLdHdFWG82YWhmbFA0UU5maksvWlJOSzBkSnh0T0lJMDFmL2Fv?=
 =?utf-8?B?OVhvLzJMYlBLMTl1K05YTXhJbmFxR2NIVlgwTHJHWEh0MnBlSEtiWnh0MmNy?=
 =?utf-8?B?T0p2S3ZiVEExUTZ3Qm5wdi9aQWx2NXpNOVA0R2s4czYra0xYcG1WY3J4SndR?=
 =?utf-8?B?Qkx5SWV4QXIveWZEZ1VzYlY4SDE1clpDQnkvOFpwMnpJeXRFbXVqbzV2OEtn?=
 =?utf-8?B?dWljWVVnNHNmWXdzVVA1cGFwamsvV0Q5ZkE0Z2tEUU9ab1VzUGhCYk5nTU9T?=
 =?utf-8?B?QWtpUkVTWFRaRUFCdmtHRmRlSkJ4eVk0Q0EzNnFXbVpwd0pCMXIyYWluZ21p?=
 =?utf-8?B?aHRvN2N5ZHlVZ2I3bmNxdjFhR3RRRlFBSjJqOVhzT1FNOUFCcHFHa0ovTGJC?=
 =?utf-8?B?SHQvREVzbmV0UGEyYVZ5ZGRUbnRURHF6V2crMWw0RlNmMXZIUy9WanYyZ1h4?=
 =?utf-8?B?YUwxcXNXZUZGVjFQU1JZRVJMTTFyRnRZc2Zyei9yUHZhQkRUT1Z1RGMySHN0?=
 =?utf-8?B?SS9Odms1cWhZRG9BYkVCWXNzSDlqaC9lMnJuY0F0WCt0Zi95Z2JMdGc2d1FY?=
 =?utf-8?B?SGVJNno1Z21PYWtFTjhTVUJhRG1odXpwWnNJa3QwblFLYzcyYVhWK0o5Vkg2?=
 =?utf-8?B?QldiQm9rM3hmU1k4MnBDWWNsMzM3MmwyNDh0QVRuUkRLamttNmJweS85Wm52?=
 =?utf-8?B?azNDaTBJZWJtZFpVSGRQMWNXOEJLd05VK3N2Q3BMcGV6Wkc5Z1JhWHcrbnFj?=
 =?utf-8?B?YkFjRWJRaUlXNmY4a0hJUldCVG1DZXRaVks0N0pIamxSaDZXZWM3ZWhQa3V0?=
 =?utf-8?B?cnlJelVyRWVtRVBsNWZRVm8rdmlmZVFoNXdmU3R6WnVaM21KbDdnYXNrV012?=
 =?utf-8?B?dTRhSFNFN09DK1BBYjJpZk9JRzhOelVYcTUwaWRwdHc1K1VLZmUxWnM1aTNo?=
 =?utf-8?B?QTUzU096VVRqLzA0VzgwUHZ2cGRBVS9GdzlCdFd1Y1dLTlVWc0Z4Vkppem51?=
 =?utf-8?B?S2pTcDA4TjBrTVZtSGFBK1pDeFdWWUNVS1ZSTG5rY2I4b3hVMk56Q1dZblJr?=
 =?utf-8?B?Y1VkR3hNTENHOS90ZWdndFVFTGp6azd5K1dzUFlYSCszblFnTC8veVNna2ha?=
 =?utf-8?B?SXArckJ6MjF4TCs5cGZKbnVabWV0OTlmcFUwOUhsNWsxajRMMXpVYWh3RDly?=
 =?utf-8?B?TjlBZDJndk0wc3FUUk5adHpOU2NueHhGYjg1UHhML28rNUxHbEdDOURLQlVR?=
 =?utf-8?B?bm4xbXUvWHI1SXIwcGQzSFZCSWJUOFc3UWlVRUV2MGRETmp5Q0NIWGI2WEox?=
 =?utf-8?B?cWplU2hxVmZ5WVJ2cnB1MXRqbGFvRzZuWVQ2dXpMb0x0emY2YmRyTk13K2F6?=
 =?utf-8?B?RjhUWHBrWW8xVTMza1BXajM2cVB1a00waytORkdSdU5hbUtVV3ZUSVMzREk0?=
 =?utf-8?B?a3BKeVh0a3VERGJWSkZCbHFpVGdQcnNIWUsvbXgwVk85WGNRSG02ZGFkb25w?=
 =?utf-8?Q?NUIZpYsRQT7fzQjvyX?=
X-Exchange-RoutingPolicyChecked:
	kzCmhnAD6htTi8hDTbTCbuF559o8pEyR+ZeKpsydlhqLD0n5q0AwiWUYTvhvmYOnSAZd+dt2ppBfveUn2F6+TyznSxysD/WbeAKSBwpVIbHHPg1xTsHFTByrtHxlt/eiMhMbJxKu0JUzQo4Lwvz2OcoxB2TFbWnzNlLQrYZZJya+/yofHou+9syFKkwK0pp5ns8WruVSFopXX6SnZ72JQHloX3pTF4/UK7GXOpxSLb54wOK16K+ne859NHfzq53lzRaLqO+0i5mGWP8LBt2YEhN3OuZKTpXOG/RCnxavI5PWUFMwhzKIidu13Ano5KSKwlYhiYtRRMbWEocMdq86QQ==
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: b7f1d1b1-5288-4113-c5d3-08ded18bd2b1
X-MS-Exchange-CrossTenant-AuthSource: BY3PR06MB8195.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jun 2026 00:59:20.1044
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yYLM5eZ1QFCZaNAZMTjHX/KlKIY0hMJ8o1aVGUTpJwt8jlBilxO1ajShQSzrhbhJ
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR06MB10006
X-Authority-Analysis: v=2.4 cv=BvWtB4X5 c=1 sm=1 tr=0 ts=6a3b2be9 cx=c_pps
 a=JgOmb2+ItGzuqF5frRSN9Q==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=lre9DRYkaIEA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=ZyELlZqCvD1aXIDzc3I-:22 a=XiWqTFSM81oo9FNMAQdw:22
 a=ALCLLz7Ap4Whq8rxz4wA:9 a=QEXdDO2ut3YA:10
X-Proofpoint-GUID: kORH7bqN-WmLtPRgWjcTHq4swHoydU2i
X-Proofpoint-ORIG-GUID: kORH7bqN-WmLtPRgWjcTHq4swHoydU2i
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjI0MDAwNiBTYWx0ZWRfX+4uA6dLddH2P
 Ji04GsMiNjbj28RGGwPFVLFrCg5Pi5RyZ3b6gQ5PaCvoatBm4YPrbF+FcQ19zSDpycVkxPmEWPJ
 VtsST3VmyGgqUWxM+PN4FnyqoX2Xo7HjwZpiHEeLtQaWRwldCdMYbzEAcz7ginrZlkiOdQidMQb
 vpn5X+rOUVUE6da8GekEacNedXTBrJqRJWYq6a8y3JoslmsYiRQOP52X/+ryqemRxJ7Jvji6E/C
 M2FKipqiht3kCvtf0P0d/BqstDaiVChd85PhmukmthAeOFBIVGtZvyi9ruhX9qpLOUL+74r1Lv2
 qQul0anfrkXGDlnvNcLlKQXN/xAqUR9YskzIog0TL+If7yETFsPi7M7gfJOGc8x9gIdNcsfxyvP
 00KrPjBsYInnpD8021gKNfO4Me1mLJPmMaPJJthjryegEn07XIreg8eAN7Ne3VG2gZ238aU4Hpr
 qnhGF/ngKPG+FNNIAtA==
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjI0MDAwNiBTYWx0ZWRfX6NVn4m1FljgA
 JxRWWPGLXy7f2sC0Twb8PX8sFsiOhOA1h7/Gl/zAJKXGFam4f2kaiZQ/tqY66m/VHjEZelX+7mK
 KFJSC1u+CGEhOOatZxSpRri3g4sGbIs=
X-Wisc_ValidFrom: true
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-23_04,2026-06-23_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 malwarescore=0 adultscore=0 spamscore=0
 lowpriorityscore=0 suspectscore=0 clxscore=1015 impostorscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2606240006
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.89 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[math.wisc.edu,quarantine];
	R_DKIM_ALLOW(-0.20)[math.wisc.edu:s=selector1];
	MAILLIST(-0.18)[generic];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_NO_TLS_LAST(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_ALL(0.00)[];
	TAGGED_FROM(0.00)[bounces-1624-lists,speakup=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:salt@panix.com,s:lists@lfdr.de];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[jheim@math.wisc.edu,speakup@linux-speakup.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[math.wisc.edu:+];
	R_SPF_NA(0.00)[no SPF record];
	SUBJECT_ENDS_EXCLAIM(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[befuddled.reisers.ca:rdns,befuddled.reisers.ca:helo];
	FROM_NEQ_ENVFROM(0.00)[jheim@math.wisc.edu,speakup@linux-speakup.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:5645, ipnet:206.248.128.0/18, country:CA];
	TAGGED_RCPT(0.00)[speakup];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A04EB6BAC19

Well, I don't know. I haven't had any problems with Speechd Up. I really 
doubt the problem is Speechd Up though. I suspect some Speech Dispatcher 
oddity.



On 6/23/26 5:18 PM, Rudy Vener wrote:
> Nope. speechd-up never says "space" even with soft/punct set to 1 or 2.
> It did make a difference though. At the higher settings, speechd-up did say "greater" when
> character flat review under speakup landed on a > (greater than sign)
> Previously that symbol was also silent.
> Nonetheless, that minor improvement is insufficient to persuade me to use speechd-up.
> I think i18n/characters is where the speakup gets its spoken versions of
> characters. I habitually edit mine to change the ! sign from exclamation, to bang.
> And yes, character 32 is defined as "space" in my i18n/characters variable structure
>
> Hold a sec, let me test this...
>
> Yeah, it works I copied i18n/characters to a file, edited
> 32 space
> to
> 32 whitespace
> and now speakup says "whitespace" every time I hit the space bar or put the cursor
> on a space in speakup character review mode. At least it does this using espeakup.
>
> Let me try this in speechd-up...
>

