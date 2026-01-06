Return-Path: <speakup+bounces-1497-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 5E788CF9D97
	for <lists+speakup@lfdr.de>; Tue, 06 Jan 2026 18:51:27 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=math.wisc.edu header.i=@math.wisc.edu header.a=rsa-sha256 header.s=selector2 header.b=G+rVNPmN;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id CBCCB381921; Tue, 06 Jan 2026 12:51:26 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id A26B43818B3
	for <lists+speakup@lfdr.de>; Tue, 06 Jan 2026 12:51:26 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 7B9933818AF; Tue, 06 Jan 2026 12:51:20 -0500 (EST)
Received: from mx0a-007b0c01.pphosted.com (mx0a-007b0c01.pphosted.com [205.220.165.71])
	by befuddled.reisers.ca (Postfix) with ESMTPS id B05493818A7
	for <speakup@linux-speakup.org>; Tue, 06 Jan 2026 12:51:19 -0500 (EST)
Received: from pps.filterd (m0316036.ppops.net [127.0.0.1])
	by mx0a-007b0c01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 606GfF1l2543587;
	Tue, 6 Jan 2026 11:51:14 -0600
Received: from bl2pr02cu003.outbound.protection.outlook.com (mail-eastusazon11011058.outbound.protection.outlook.com [52.101.52.58])
	by mx0a-007b0c01.pphosted.com (PPS) with ESMTPS id 4bh64pgg4d-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Tue, 06 Jan 2026 11:51:14 -0600 (CST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NAHZo7Y4hPsyUxfEU/NE9n/I1P/To50v+KgvIjbKarm2u/Pzi6Dk3icv6xqihZwXug514PtJdYhIJJhfPPYEokP4Pw8hfzSQnviXDEohZG3nPYbZaOiE1jUq4q9xdRr7JCiZQbz5L7uXL9VPN6dXbJwwTCC1FT7OYsj0FZ8v1SmwMAkxZEJc9JOt05n88SxBVlIOa15g7i3K0xzp5uIMcEzD3nnrEr8NVbHGze2Pw1lwvCIhZ9wAmlo+FDPmOJhf0C0lBtA3vfmOYa8KbxkguBG2LuBRCUmIlcs42K5J/b+X4xOaKWlH52wDasP0ZPWZbkv7TSVuBxtZXqKiTaYcew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8jXKVYYoG/L3BRcwU+qnPxAeP9cX5sk9cto9l1fKaSE=;
 b=l2iD45cLxLmFLhEI0zeqt93cD+lzc0EwOOmlRue8FxV6d49KE84VTlz4lQ6Q6j0gGeSb/N74Qg8pNSYQfltXN7R+LSrhtZL4jWxWJJWTnekc7LmJnXOJkVkDjjvL5c5tJZ3T+Tq8Vw7Grvey3I71wrjQNbAvhtjv10iMPqYryl9n9HOuXSf0/3RK42UwvesPOw8sVUNgKtOQTjsPryGb2wqxSL0XRarmmw52zsvw9WxLlkJRlbzQGaqUODFbKt/pEQuoPFRrZcjnFvzbGwzdYZofa7aWenhIUCEKEl3uq3Z9lUUSlcEAAb15Fp/+Ww/HcYVTXMRGWaH/nWlVuZQvYQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none
 header.from=math.wisc.edu; dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=math.wisc.edu;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8jXKVYYoG/L3BRcwU+qnPxAeP9cX5sk9cto9l1fKaSE=;
 b=G+rVNPmNabR4qFPyLuxJCysNmtw0jlO2v3YUTGKZo6atUCCOzyFTuUpXpnPKpJaDATl3CMFc5Gubs1U5S0Gw3TW64fVi1GXPxtAmJujbxxIY1bTnVah/FEEHBr5I9bqm5cMLZETAxTiFO5197aPabwYQYfOeZpGXPSqMS7UFiu85WGT6QmAq1/T9Pk6wZAza5c7DN2h1X3ETnSidCzlwDGmt4aZWFekcxsFCTpPGxY2x22svOj8PGDGGz4HYWjY1JJf9w5HKRf8wlrERnB8JuB7ZE+ue6po1/l1dAD/UfLd46ha7GXjdhwj2BNpCIWqgyOClC3qFyEdhRpo8uYUfFQ==
Received: from BY3PR06MB8195.namprd06.prod.outlook.com (2603:10b6:a03:3ce::19)
 by BL4PR06MB10034.namprd06.prod.outlook.com (2603:10b6:208:4dc::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9478.4; Tue, 6 Jan
 2026 17:51:12 +0000
Received: from BY3PR06MB8195.namprd06.prod.outlook.com
 ([fe80::a7ad:fb62:4389:fd8b]) by BY3PR06MB8195.namprd06.prod.outlook.com
 ([fe80::a7ad:fb62:4389:fd8b%5]) with mapi id 15.20.9478.004; Tue, 6 Jan 2026
 17:51:12 +0000
Message-ID: <cf1ebda5-80a4-40aa-b0ea-8e0118361802@math.wisc.edu>
Date: Tue, 6 Jan 2026 11:51:11 -0600
User-Agent: Mozilla Thunderbird
Subject: Re: Building a hardware speech synth with a Raspberry Pi
To: Samuel Thibault <samuel.thibault@aquilenet.fr>
Cc: Tyler Spivey <tspivey@pcdesk.net>,
        Cleverson Casarin Uliana <clul+speakup@posteo.com.br>,
        speakup@linux-speakup.org
References: <4f9075a8-0252-46f9-8594-1dab9286474f@math.wisc.edu>
 <01FF57A0-2383-4625-975C-944AE93F762D@speedpost.net>
 <eb7fcb31-4b34-4e31-a2db-67e41cc8a79c@posteo.com.br>
 <6b154ff0-fbfb-4eb7-9ca4-21ded53e7c22@math.wisc.edu>
 <7dc8be53-2745-4a3b-8ead-28be810a7798@pcdesk.net>
 <276e4d33-49ef-4466-b81b-7afe7a4546ff@math.wisc.edu> <aVy_0fFnGWiT1sQl@end>
Content-Language: en-US
From: "John G. Heim" <jheim@math.wisc.edu>
In-Reply-To: <aVy_0fFnGWiT1sQl@end>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: CH3P221CA0006.NAMP221.PROD.OUTLOOK.COM
 (2603:10b6:610:1e7::32) To BY3PR06MB8195.namprd06.prod.outlook.com
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
X-MS-TrafficTypeDiagnostic: BY3PR06MB8195:EE_|BL4PR06MB10034:EE_
X-MS-Office365-Filtering-Correlation-Id: 160a4794-8a6d-4ad5-5feb-08de4d4c2e62
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|366016|786006|376014|41320700013|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?K3pRYTJVTzV1anVQd2hTaE9qV0lUSW83RHNDUE4xQWN1WFJWMGpaQ3lTT1NH?=
 =?utf-8?B?ZUtZUlNveDRqWlZHODM0VUlLYWFtZ25nN1hGcnZIQllQNDdqL1o3RGV1R1dV?=
 =?utf-8?B?NUk2UXFCMEZXY3NzYUVQQzhkbXFLT1Z0eTBOUkNJS251b2l2ZVFUT1VWaFNT?=
 =?utf-8?B?UE1xM1pMQTg4aS9PZVNlTDRLM2Q3dkEzNlUzQVM1ZHcwM2JkTjgybjdSS1ND?=
 =?utf-8?B?T3g2cmV0YkVNdFNKdHc4N1FETFFjMXpUU1orT210V0J3T0FDa1h0QVRmL0Zj?=
 =?utf-8?B?UkRaZDhkbFNhVW14ZXpvWUxMaTBybE1qNzU1MCtsZW5Gd1ZaRGxVY2tFTGlt?=
 =?utf-8?B?R09wa1VYeE1tRDVBKzB0NldXUVNEa2VJTk1HL3dKRTh0bWY5SVZaL3JTaE1v?=
 =?utf-8?B?ZEE5aTY3ZmNhMmQrY1RCYjIzZXFhSnlYTWd3YWF0dFdMY2V5eGgyY2lrcmIv?=
 =?utf-8?B?Z1h3dVpRczh0aGhic3pJSGhZcTBFR0MyenVBRmJQaStDSUNUQ1A4ZjNEdnF5?=
 =?utf-8?B?Q0Z5WjZqTjVScUFhcHNic0JVbkdSRC8zWVJkSStNbHZlKzB0L3FVYkEydlgv?=
 =?utf-8?B?b3RTZ3o0Q3cxbm83YU40REtnakZhTGRZbGgwU1JraFZwaVVzZnpQVGZZYWxr?=
 =?utf-8?B?QkRhY3FTbWZ3ZFM1UlZkeDZHWFNCL0xRZERUbkZpRTRiV3JCOXFFcE5od1Y0?=
 =?utf-8?B?SlltVVZYVVYzSWk5SjVwS0JjOCtoK2FvNDFqbzl4Y056SVFIcXdITjgzMG9B?=
 =?utf-8?B?ek5KNStaMFRubE1qS3BsOWZnY3VFWlpwQjlnZm04UVZ4SFh2ZkZoa201cmlh?=
 =?utf-8?B?ckNiVnI3ak1xdnBvbWRZZGhVYmd0TjZmSmtSNXhFQnh4K1MvYkx2MkJaMW5W?=
 =?utf-8?B?Y3NicVRTdjNmZjU0ZEVENk1ZRzIzenNGMVVKRDdYSlZtVG5mRCtDZm9pdnVZ?=
 =?utf-8?B?b0w0elZQRlhrMFoyUXplZ1BZMmRRbnNDb2dwVGFEOW9kR3ZHY25EQTJhOGF2?=
 =?utf-8?B?Ukpvb1VOUDFUU3lReXJjamF6Qi8vcTgxTUVxa1p5SDNDdXMva2h3Q1VlQlR1?=
 =?utf-8?B?NXBCdUt3a3BBanNTUUNHcmU4cCtVWnJZRWdLNDNSWUFVQTVvNElEdmZBV3pC?=
 =?utf-8?B?aW1KSCt5bXJrdm1UYXZ5czRmVGR3YVdYVTZ4TEdmMGg5SHdyemc2eElvV2pG?=
 =?utf-8?B?RTduZXNDVmduMTZQWm1hYU8weXFBTUExRERtbEk4RDhucjM4SlFLVlFUeXo0?=
 =?utf-8?B?ZTRsWWFzSkI3V0xXSUJ5Q3VpRUNIR0R1ZFhYMnZUSE42Q3lhdXBXcDQ3eUlh?=
 =?utf-8?B?Q241SDAwaEZDei81ZDMxRGtITEdzazJQMHFoYVZYbExTVHA1V0MySXBWS2FC?=
 =?utf-8?B?VUgrckE3K2U0Y3o0UTUvWmhkNjRPcDNkWnRKeXc1UVhiWTE0dllEdm1aYjhx?=
 =?utf-8?B?NjBnVWcwbzF1LzlwYll2SUpKeWRJT2JkRjNqbnZlTnYzQWxQVHNEVkFFbG5X?=
 =?utf-8?B?V29qa1FMVThoOWlPcldvclc0SXhxSkJJMDAwV1RiaUNKcTJjRVlwOHBGUzky?=
 =?utf-8?B?VWp0OEJXYkRBcUZXR2pHSTJtY1R5YnlVV1Z6RmV3ZHY1c2FXa3pmbWk4Wm1h?=
 =?utf-8?B?T1FBSEwvR0EyM1loSjlXWWVJUVhuQndKNzlZbFNFaURyTlM0OGR4bEJ3dzhP?=
 =?utf-8?B?b1V3a25ZOThmYm5mTEdtaGpyNHFDWjBtZlB4NlBkdTdQTDhqekFrOTBaWlhO?=
 =?utf-8?B?T2NKWWxCWWhMajdqZXVramRXOEtiVTkyK1ZEOEFNNGFOYW8rY2NRSTlURW1C?=
 =?utf-8?B?aFpjMG5TTjdMT29FbFQvWVoyTjUrMUtqTnhzenNIOFVSejF0YlBDSnI4bzBt?=
 =?utf-8?B?NUtlRldrVk92c1IrcDV3WjNURDd6d3oyb3N2cmZoby9RbkdpWjJLWVoza084?=
 =?utf-8?Q?sYvmGeqvLGi1yv1p7voRhWVP62ovk5cM?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY3PR06MB8195.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(786006)(376014)(41320700013)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?cUZ1dGdUUmlXUEpQYzd5WTlSeUpmYzhIQW9LaUJDanYzTVUwTXhxeldPaUxP?=
 =?utf-8?B?b1Z1UVNxWTd1RkZwNEZhM2Y4Y2Q4UXI0dzcxOEdkbERPYUY5ZU1tNk5OVU41?=
 =?utf-8?B?NnFwWHpyZ3UrOTM2WlFCQ3FDUGpnQUJHWUsvNDNobUEwT2JaTzJFN2tJNWpj?=
 =?utf-8?B?RlBsdmhNN1hDdGd0Tk96aFdWMTN1ZnUwd1B0bUVHcHg1bWNydXlUbythSUI1?=
 =?utf-8?B?cDNMYWJ6d3U1QzVSVVc1UnJDazJRVXJYcFdWOHJMVWd2YXhSWGZUcGlWL09I?=
 =?utf-8?B?dFliVnpMeWVtSzA4ZnlKSGpqblNJSzdJTmQ2Y3NiUkpIQy9nR01VRzROaGRG?=
 =?utf-8?B?Q1Z6VVVVNDdHaEhia05NdFF6ZW1jNFJtVndwMnY0YVEvNEFXWndzNlpWN1la?=
 =?utf-8?B?Tms0V0RnVDJFWmxCY09XK0hMRU50akdFYm1lRXZEcjJ4QzBGOXNBYkc3ZENm?=
 =?utf-8?B?c254T0Z5aWZIL2xoRDFuM0E3eWw3Vk5oWng2Sk55SEhoWkdwTW5iTHZLTGhG?=
 =?utf-8?B?WkZxSGRzODFDT1hyTVphM0ZjMkU1TEpCMmhEQkR1VDdOSWZLRVJUQkFEVzlW?=
 =?utf-8?B?U1Boazd4d0NuYzFsWXBQUzJxdzlwdEdPNW1iL3kzZEQzVHg3SHRPNUpKOExR?=
 =?utf-8?B?ZkZQNjV5b3ZVZGFQYndWU3UzN24rbUZtSEhnWmdIbVFCOGsxb2dFVEl6UkVF?=
 =?utf-8?B?UkpIVzcxRU04ck8rZW9SSCs3MGwreW9nZ0dtYmhRZGduYUFsTGNtR2FxS2NQ?=
 =?utf-8?B?aCtZMmR3bmZERmVjRmpjNWJCQXNreWYvRnVSRDhQTzZsS2hPODRmS0lZMlJu?=
 =?utf-8?B?aGV5c2lxL2s1TlBBTEs1Z1F2T3ZVQ2U4V2xlN2p2MnEwODdWS3lUOVR1dUpH?=
 =?utf-8?B?WllqTVJlSW9yWVo4TURMejB3bkJMU2VpeWhmM3BueS96dFpCMk9DR05uQ016?=
 =?utf-8?B?b3FrcUxkemdpL0dPOGxzUTN1ZkQyc0hIYnZldE5VdXhWcHQrN0hxblFIWVQ4?=
 =?utf-8?B?cXB4c2pGKzIrY2dKTjU5akhLMVJ4K1ZIT0ZWV3o4V0hyWEZjbVRMWDhZTlNI?=
 =?utf-8?B?aExzaGxUMEJLL0xOZm1LUXpSZU9ocXlnZ1pWWTlwemNhSEQxTDZJZnJPNmF6?=
 =?utf-8?B?TWE2LzZSRlhxYjJKRTh1NUNqOXBTRWNXTjF1a3dZNlUzVjdZL2RzeTdBS0FY?=
 =?utf-8?B?d2hjM1VjaTYrNWRCck5lKzRvM3lSZWNzRDlERWpGUGI1QldIWTRSK25SNW1B?=
 =?utf-8?B?NWxRRncvUHZUYXRlR1JkYTRRQVptY245Mm1KVFl3MHhZYlNjejJiZE5ianJi?=
 =?utf-8?B?MXJRWkp4T0RPQU80TnBwQjFPeVNJZVFhZFRIdjBJaTZIdzJrTzFIWDQzNVZN?=
 =?utf-8?B?NnZHd2pyZnhyOGhSQlEyVmxnanhjMjJ6TWl0Y3JrS3h4NHMyMXlYZWwxb0Ux?=
 =?utf-8?B?QTQwWVhPOHZYSTFtZmUvOEU3U1ZRUDFuZlpNdEtmcmNFb2QxbUsxbFFVdWkv?=
 =?utf-8?B?QjhDQ3l1UzRtbkhnWkh1N1J1QTN2STdmY3dqekIvLzdxa2w1T3lROVdNZWNW?=
 =?utf-8?B?cFNqNU5ERFVleUwxQjhCY2xmcDB6Q3BIdWxKMEZ2LzJ2S3pxWEZtZ1ZhMlor?=
 =?utf-8?B?MGRZbkk3dWM0UmhubDFsS2Q2RkFNSm9DMEhYQ05FZ3RlUUg5TW9oTUZacE4x?=
 =?utf-8?B?ZXl4ZWtKYUdzbW5NRUlQU3lFK2xNMUU0NTdSakhQMlBvSjVCTzErL0VqMmJ0?=
 =?utf-8?B?Q3FjSWFMWTd0bE1NUmRPRU1jOVZ6TnZYL0JISXdVVlBnZDYvWHdtMmFERkE0?=
 =?utf-8?B?UzlRbFE4T3Z6Z1lPdnp6a3BBWWppUzcvd2lBNWw5NGMxNmE2MFZ5aEFkMnFN?=
 =?utf-8?B?YjVKcnQ1NDh2WjJHMzFrK21yUUtVMGNVVFVjdTdUamFpMk8wWStRWjRIdlBO?=
 =?utf-8?B?WHdTRGVsYlhibXQyRWlyWXFuMVRnQUdZUzl2SWdMYkcxemE5N3J3Rjd2S1p3?=
 =?utf-8?B?ZXhVWEFxa3IzOXRRT0djbGxHbWs0NkRBMk5rcHJZSGRJK2huZnhPK2NDTWNN?=
 =?utf-8?B?NzlzVzJsK2hsSldNRUp1a2NUaUlXWk9heGJwb0xNUiszb2JMQklrZXZxUTYr?=
 =?utf-8?B?dkpVeUgwTDdGaS80SWo0cGkrNVJPNmpVZ1MremNMVGpkcDVWaXhDUU02Mis5?=
 =?utf-8?B?b2pPSzVUOWk1cDlHeHBXcXlkRE95SGtvTmNVREc2ZWlyQVB6SkQ4RHBCM2c1?=
 =?utf-8?B?SkF3SXdCcnRiSk9xZ3p1WTh3UlZaWjQwekpGQjBKR2pCVk9sdXVQNTZvbWE4?=
 =?utf-8?B?L09COWFjenFZd3JnU25KZjhkanRoL3ZMakUzeFJvamZNRnRGaGRTUT09?=
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: 160a4794-8a6d-4ad5-5feb-08de4d4c2e62
X-MS-Exchange-CrossTenant-AuthSource: BY3PR06MB8195.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jan 2026 17:51:12.6397
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: eApqN0w6fpaJ8HheFCvWd92crrmtcfI+DYRMJfgM+NkMHHS+cZKpCj/YnkkEJt1G
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL4PR06MB10034
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA2MDE1NCBTYWx0ZWRfX5WxPo4FeFFs+
 1Q9SmxrefBTRC0d5IJrGM2m1GtEgE+YdoDbvseIN394E4u4TwkgM8vBLb+WBQ9LNaIDqXurc2TZ
 gEjRdX0Kqba+MEOaZuwdRQAy8/4RynhCRAxMh+34ok7XAPmjggSw/pl6GzXrvCxYr3DZVsOTjRI
 nOXbgc98WiooO9bztyvAbW7tR86bVuuwJ+fdpjyMENj4LYNkoJEpwkOXqIMjVZD0cWTZEFaLoir
 blmajxyi8G51gSdPFsWLLEtJRg8ZJy/2B7BvCo2S7sSvsQ8q27a/UyVTBY/WDQnJVBVb4iiqGtM
 4Dz4Wa91J6OTuypvfarf0WL/8/sc7cQT61ExvZnL2GBoDUA9GzlFx9IVxGeCxOVxYXVhsmxYQ2s
 SdEZ6fAGjAoUtBwbLVQkgRuK0uI4lgC5rq6PFhNzaF2+DxDUBjr3rezECuOFKgRmWyiJJ3ORiHc
 hUA3hLsgJl+LdxVq1wQ==
X-Proofpoint-ORIG-GUID: kI829APPNZCg_fYLxZDF2HQ-uo8kjJXU
X-Proofpoint-GUID: kI829APPNZCg_fYLxZDF2HQ-uo8kjJXU
X-Authority-Analysis: v=2.4 cv=Y671cxeN c=1 sm=1 tr=0 ts=695d4b92 cx=c_pps
 a=V6MklVWPegrOQeIbI7BYwA==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=lre9DRYkaIEA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=ZDrK4wgjivq1xWV4iB4A:9 a=QEXdDO2ut3YA:10
X-Wisc_ValidFrom: true
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-06_01,2026-01-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1011 spamscore=0 phishscore=0 suspectscore=0 lowpriorityscore=0
 adultscore=0 bulkscore=0 impostorscore=0 priorityscore=1501 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601060154
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

I've only been a python programmer for like 20 years and never knew 
that. Professionally, I almost always programmed in C++, php, or bash. 
Still, it's not like I'm a rookie.

When I'm trying to figure something out, my tendency is always to google 
it. And after all, it is nicer to have the docs in a web page than in a 
character console. Even so, this tip is very helpful. Thanks Samuel.



On 1/6/26 1:54 AM, Samuel Thibault wrote:
> John G. Heim, le lun. 05 janv. 2026 20:51:22 -0600, a ecrit:
>> I couldn't find any documentation for using the python3
>> speech-dispatcher module, speechd.
> Python documentation is usually available with pydoc3:
>
> pydoc3 speechd
>
> as well as pydoc3 os, pydoc3 sys, pydoc3 str, etc.
>
> Samuel

