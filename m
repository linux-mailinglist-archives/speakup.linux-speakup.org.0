Return-Path: <speakup+bounces-1494-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 76313CF6887
	for <lists+speakup@lfdr.de>; Tue, 06 Jan 2026 03:57:45 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=math.wisc.edu header.i=@math.wisc.edu header.a=rsa-sha256 header.s=selector2 header.b=jX9WL/d4;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 2CF44381824; Mon, 05 Jan 2026 21:51:43 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 062E53817BB
	for <lists+speakup@lfdr.de>; Mon, 05 Jan 2026 21:51:43 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id D7AC23817D7; Mon, 05 Jan 2026 21:51:36 -0500 (EST)
Received: from mx0b-007b0c01.pphosted.com (mx0b-007b0c01.pphosted.com [205.220.177.71])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 85BFB3817BA
	for <speakup@linux-speakup.org>; Mon, 05 Jan 2026 21:51:35 -0500 (EST)
Received: from pps.filterd (m0316046.ppops.net [127.0.0.1])
	by mx0b-007b0c01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 605L7bZA1066075;
	Mon, 5 Jan 2026 20:51:26 -0600
Received: from bl0pr03cu003.outbound.protection.outlook.com (mail-eastusazon11012023.outbound.protection.outlook.com [52.101.53.23])
	by mx0b-007b0c01.pphosted.com (PPS) with ESMTPS id 4bgmxa1axt-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Mon, 05 Jan 2026 20:51:26 -0600 (CST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Cs7142fO6WXrrPNA+o3hyx/oE/Z0KrkSOmGFzCZyzS+gFp3IjyhFoLqA3jvuVXJ/Em2HifbiupbA5BE2JftS5Xje553XGpG/13c+uOqJ2DNH4FPKyjuI05W1ukZ6sSQ7Dif7Gp/pJmDN2W9R3Ge7Bg+LJuMrZvoPiMTJ+h+Pdo+8dEDgIags5t6JUL+y7HdAjfdWlhXe3xZr+1yMiCKfxrVVNKUlnQ3RAQu9iY5/ldo1CpG65aX6wXFb38qz0cONm5zm3J5fmeyNror1ohWugHQZg6nmJO6OcfjHSe/L2mHvE38r4TH9wKZRXh+0gooBIn2qQxbNvLeQSCtEa4OWJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=plhLHQDnfBFTSujO+Ica8QiBNsex7rds/TlJjYG5VDc=;
 b=gUH6IAuZCiTU5IqfMyO54ANAvOpf6i1t8OEMCkceDCarM1wD2OotU/2kISYhyxXcMBjY0seAI9VwRQcdP2e3zmzOxmuWJKa3A+mEwrEjyYVorV4PvaBe7WFUHZg22dHB5uEroLYtZjrVp8iMOGOi3xFIEPHOmqEKzb+TAIK63YAT3gDdrrg22y6ZUOb0vu1IziF0S3J6NddPlfOkobrWv9ZJWn/Mm7E8lFcUmSf6mNF34bBQJfQnvfbIcLd1mr0Ne6GXV3EfHzfAzAIG8z++nIGvnIB3mdhDCFfK6bkoqcme5wZEQshRNpRVpE0IZ7MeD70S7OG2BtIww6lbRBfgEw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none
 header.from=math.wisc.edu; dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=math.wisc.edu;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=plhLHQDnfBFTSujO+Ica8QiBNsex7rds/TlJjYG5VDc=;
 b=jX9WL/d4pwcxTuZOyKixIAMVLb23IWclRG808Tv3TxBLxsSq7xns1xK4nto6wh1qIIV1G9txsi3myxnxT9v0N96PWknTLKdraJLYjn8BNj6dDgepSIba4A5kyApzlws60izS95Fk4zn9xezWl2AUOxCdpQUdbaCvQYseGOcYG52c4F79XFWYLGVAx9MWVNqPYqV3ClDmDamI7KOe7yWtf4EYqboA3Lv6bTtfgBCqdLAaxaE/8yfDAX9NQLTEOxcbWSTNpatMyKK2FWDO2Nx6euT0BAB5rp4eczIJ+RZN1jbbygDR/un18Gn9y2JK34ka528S6dWzLuNH+Ow+aVpZjw==
Received: from BY3PR06MB8195.namprd06.prod.outlook.com (2603:10b6:a03:3ce::19)
 by CO6PR06MB7329.namprd06.prod.outlook.com (2603:10b6:303:ad::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9478.4; Tue, 6 Jan
 2026 02:51:23 +0000
Received: from BY3PR06MB8195.namprd06.prod.outlook.com
 ([fe80::a7ad:fb62:4389:fd8b]) by BY3PR06MB8195.namprd06.prod.outlook.com
 ([fe80::a7ad:fb62:4389:fd8b%5]) with mapi id 15.20.9478.004; Tue, 6 Jan 2026
 02:51:23 +0000
Message-ID: <276e4d33-49ef-4466-b81b-7afe7a4546ff@math.wisc.edu>
Date: Mon, 5 Jan 2026 20:51:22 -0600
User-Agent: Mozilla Thunderbird
Subject: Re: Building a hardware speech synth with a Raspberry Pi
To: Tyler Spivey <tspivey@pcdesk.net>,
        Cleverson Casarin Uliana <clul+speakup@posteo.com.br>,
        speakup@linux-speakup.org
References: <4f9075a8-0252-46f9-8594-1dab9286474f@math.wisc.edu>
 <01FF57A0-2383-4625-975C-944AE93F762D@speedpost.net>
 <eb7fcb31-4b34-4e31-a2db-67e41cc8a79c@posteo.com.br>
 <6b154ff0-fbfb-4eb7-9ca4-21ded53e7c22@math.wisc.edu>
 <7dc8be53-2745-4a3b-8ead-28be810a7798@pcdesk.net>
Content-Language: en-US
From: "John G. Heim" <jheim@math.wisc.edu>
In-Reply-To: <7dc8be53-2745-4a3b-8ead-28be810a7798@pcdesk.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: CH0P221CA0018.NAMP221.PROD.OUTLOOK.COM
 (2603:10b6:610:11c::19) To BY3PR06MB8195.namprd06.prod.outlook.com
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
X-MS-TrafficTypeDiagnostic: BY3PR06MB8195:EE_|CO6PR06MB7329:EE_
X-MS-Office365-Filtering-Correlation-Id: 8cf1d4f7-255b-4b71-6a8e-08de4cce7a67
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|366016|1800799024|786006|376014|41320700013;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?aFhtUERtQzFQbmp4bjRYeERkdHVyQ3ovNmVrbjlabk9aVlVwQ2tEb0FFdXc0?=
 =?utf-8?B?NGsxN2JpenFocm9RMmZlZ3JRNXlTdXFGSWZqcEZjVkxlaEc4VnNaRG9idUJX?=
 =?utf-8?B?RU5YR2ZwZkxNdmFPT1NJOHc4VGsxdW02bHBacjFsYVFjZFJ1dldKbUZlTnBZ?=
 =?utf-8?B?SFVXSVFSazFWYngxMkpJT1NFdzFUZHNOeGY3d21lL2J4R3ZuUVNOekc1TjZZ?=
 =?utf-8?B?Z1BWRldpakFkR0ZCc2wzbGM3OWNCT0xqeURuNE5LVUFoQnV5MlVHc0ZaV3Uv?=
 =?utf-8?B?RHJWRUs4SGVJRVlwQ1psNVUyS05hY3d2WnQzZGtHTGZ0N1N3MXNWRGIvNGdY?=
 =?utf-8?B?T2g4bHZvUitKeFM0N2hIaFRzWmJ4N1RjU0U5SkxBT3FKRlE2NURvTG9ubTVu?=
 =?utf-8?B?V3RVdisyYjRQRDlXMGVkb0FJWnM3aTJqbUhCU1N1TUd6VHVEam5xdXN6SjJ5?=
 =?utf-8?B?NVNsV2VOUDN1Y1VqM2dvVkhoYngyM2lCYThtTWVBNW5DTGRuYTlKQ3JkbUlh?=
 =?utf-8?B?VXFlbUtlN1YwWFdsRFZOckFpdkIvSUEzMDJYTnNPWUdDOXdUN3BPcS9weDZH?=
 =?utf-8?B?UHB0cFNEaEhLR2wxTnpFU1ZWZTRybWtDeCtld21xZ1drQTd5cHVydDNrclRM?=
 =?utf-8?B?TkpUZi94S0tpZWdyZlNjRFlkdmRLVSt2cHpUNXZLcDJHL0V5RndDbkNadmtH?=
 =?utf-8?B?cmJpeGJIOXpKZFZkdkF0dGhjaXE3cjZsNnIzMVFjSmdlenBWZjc1UWNrWkNj?=
 =?utf-8?B?ekpKeEd0NFJWMnNsMlVPUlhVSSsweWYrOHU0Q2Z6M1B4VVN6cTdvMHFpNllm?=
 =?utf-8?B?K05WOFFlTlpDSnpuV1FDVSs5Y0ptdHpxVlo1RnRoblF6aURPbUpqR0M4VzE5?=
 =?utf-8?B?R3Z0M3BEMXFTQjRjK09BNklXUGhkTlYrZDNNL1I0eldMWUxWOUZsZ2JEM0xZ?=
 =?utf-8?B?VFJ4SVlLNXdIS0lOMDZMbGdKbnJYZitJWlpjSUdEM2ZCOFBsYzgxUDBtZnRW?=
 =?utf-8?B?Q1EyNVlaWk9USWkrWFp3czNWVVlsQWphZGtuRGpLSGVUbFloL3FOeEVmVk10?=
 =?utf-8?B?K21FOWc4eXpXaXg0azE3VFZ0NW5Jc2VPTHN0S0ZVSnE1Wm1LM1pSYXdHUmNs?=
 =?utf-8?B?a2NTUHZHWnV3MWhjdWJsNzJvd1h2eDd6MmVuOUZob0FIYk1HQ0J4cW9vTW5S?=
 =?utf-8?B?aUNmNG1wVUNrVXBaMGhld3Z5TTNvc1ZqVndqczRmaitmb2ZJY2hBYmF0T2ow?=
 =?utf-8?B?dmVrSDdEWllRL3NlenAzWW0zbkZiQzhZZWw2blJ2OXNiZFVnN1lQZzJ2TXln?=
 =?utf-8?B?c3lWVERNd0V1SGdVNlVDeDJWYUJUTTBWdzBrcU9QbVFseFZsTXh2TGVYWmZU?=
 =?utf-8?B?VlB6aDM3ZVpsdlc5cUpGY3FRYW1LS3BLaktyekxhTk9oZktVM2VPSXFRQjlj?=
 =?utf-8?B?Sm94Y0w4Q3pCWFZjNjFabVY2d3hFSnk2SGVJTHJ6ZzdqZ05uanVtdGlPRith?=
 =?utf-8?B?VENSNXFrdko5K292cHgreFhac1BYMGdWWEFrMGd4ZVg0YkQ5SG5tK2ZyejJY?=
 =?utf-8?B?a09aTExaWldPV1RTUmhPQVlnM0ZnWWpkcm5sYWxTNTRPdDdtb3VMMCtmTVJQ?=
 =?utf-8?B?N0JLTkVYaHZhS3ZGaTg0WWtiTkpucElLdEdvSUVaOUZ1NllCdlllZEE2WExn?=
 =?utf-8?B?Zk9VYjN6aDFHai9BWHAxczRCdUFSTG9zeUpGQnZjd0d5Y0VISlBrOEc2UkVi?=
 =?utf-8?B?QzErV0hDa3JhZlR2bmRVZVdSSHRMeTMzVFl4UmtPa2kvV1pPLzBlYklWTzVy?=
 =?utf-8?B?V0l1b1psOXdnQ2R4UndsNmpVRlIrQ1J4Z2NxdndoMzI5U0duT29MbkNsbzQw?=
 =?utf-8?B?T2FyUlpPb3hxeWJrRzVYMzA0amZYUUR3K0lDRDlmaXpzWFE9PQ==?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY3PR06MB8195.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(786006)(376014)(41320700013);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?eXdob1JTbXJURWphNVdkWUhCS3d6ajYzU21BdE1xZUd1UlJzMG9Nd3FVQkVW?=
 =?utf-8?B?ZVZBZUJxanBqaG44YjV6WldQMnNoQm5Pdmd5czNDMEpENUFwNXVZem91Y1h5?=
 =?utf-8?B?VFp2eGpIZy91M0IvSHJMa0poK0kzeXhLYXk1azlZZEEyRmNwQUtwWkVjMmhL?=
 =?utf-8?B?MFJpeHlPKzJuTnVvSTdSYXltQ3ZyUjA5bnN3QnJ1WVh0TmMwR2w3a09iNTZl?=
 =?utf-8?B?U2FCZHJSc0xpUjlWR1V4d2lDOTEvbEcreElMMlVJQlVxL0xuQUdtOEl2MnZm?=
 =?utf-8?B?bXd0a1dBTnpmWkNNR2NualJxZExod2VQUHllUlBnb0pITm0xeThUK1RFR29h?=
 =?utf-8?B?TU51aUJPVk5VTnA3NjZHQmNwUk1CSXJjSEpyK0Iwak52NG1PUGxGV1kxNFNW?=
 =?utf-8?B?RThheU4vTXBkSHFsM3pQeFdicGNGR1hJY0ZBMU1pbWZyMUxYQ3dNRTVZSk9G?=
 =?utf-8?B?dGl1ZVhTN3JiSndQOUdwRCtXeVFmeFNvTXJEVzhVNHAxRWNVYUVoNS9UVEpa?=
 =?utf-8?B?RmYwZXJLa2NPS28rTWt5bEdDS1BwTThhQk5OeUZCSEJoUDE4VTB4cFN2WE5T?=
 =?utf-8?B?bmhMakl2TE5KR0lBZWd6cURhQ3g3dW1oTWdQWDcxbVpReTNmMGxUUmcxampy?=
 =?utf-8?B?cWJHMmRDRTJLSnRveTZReENVVHFDNjBMdXE2Wm5wNWFmMGp6dEcxaTdCK2xW?=
 =?utf-8?B?QVFsRGFnZTZkZTdyZ3RiZTBvZ0VyOVNiTWRwQWh2aXFjb2xRWUVDV3Z2TS9z?=
 =?utf-8?B?Y01QZWVRQlFyRTJlcUVwNUV4Tmhxd0FZMzhuM2VoaGNnQ3lyTHJycjhGbkJl?=
 =?utf-8?B?RHNXd2hybnd0aTZGREg5aXp6MjJXVUtOK3R3VUJ5ZmFpeC9lNFlORFM0Ym0r?=
 =?utf-8?B?eVlyQmV0RlpmdlZ1WTZSOEIwejFObVlEZlJsZHBDbXlweVFHdDFLR0M2dzNN?=
 =?utf-8?B?M24zWXhTUVJnc3BkaldBTXY5aHdaM1Q2UE5QeXY0QUczeVQ1eVJZTE5JZjZm?=
 =?utf-8?B?R1lBblF5MloyUU5ETTRWN3Qvc0pIY0lnV3d5WTVKMjhHWTZwRGkrME1vKzRQ?=
 =?utf-8?B?M0dsR1NsdlRQbitEeVhRVk9UMGNGTDN4dnBzQWxmNmNsaWFTZWhaU1dPK1Fh?=
 =?utf-8?B?RlhHaVVGVGNMMjJ6MHova01RZ2ovVEJlOW8rb2xFRkloaWxERy8yd2QxSkxC?=
 =?utf-8?B?S1d0czNycWlGd1JKa1hwQzhkVis1M1dNM1ZwUm8vZmFCMG1jY3YwQUYrVSsv?=
 =?utf-8?B?NVdSL0x4OUNBZHhsYVZxMGZhQUlQYUdoa2N3Z1EzN0lVVHUyTFN2d2pScnQ4?=
 =?utf-8?B?Tjg5TG5PR2w5dTZvRWo1dEh3dzJPS1pUc1l1ZUlzQTdqeGdiREVXZmN4MHhh?=
 =?utf-8?B?OVJDOWJ2WU5KVWtrYVBSek8xZHVHKzVHZ04wemltM0V5MTBNRnlRbVBqeFJs?=
 =?utf-8?B?V203Q2d1bUdlK3BkVTl0YzlMT3FyZUpEamd1QmlLVFIrQ01rY08rMHNrdHlO?=
 =?utf-8?B?SlZyNEFDa2llMWJvMHdXYXRFTW9sNjRlVGJ6WmVXL3BUak9NckRSblpJUnJq?=
 =?utf-8?B?UG1YMVI3eHF1Tks4QXFxcjhZZDFEYUZBVTE2VHhyN3FybkxvMGJhNlJoZkEr?=
 =?utf-8?B?ZzU4T0hDN1ZEandhaEQ3QjdheUI3QjlKYzNwZ24vUm1pVEtCZnk3NFQ3SzNr?=
 =?utf-8?B?TWJ3eklWMlZFcXdnYm4veitNZjd1QUdDQVczZy9IOUE2NkdHNDByeWpXNkkw?=
 =?utf-8?B?TjBRYzQ2R25weWNEeFE3bk1xdFM2SHJmME8wdXk0YzVFS29QbTBLb3gzL2c5?=
 =?utf-8?B?N2RndVFjWmQ0ZTA5ZFV6amJKUDErTHlSeHdZeFdxbVlEMTlGS1EyMjVNRlBr?=
 =?utf-8?B?K3VSQ0Z6ZEZtMkpjSVBSY3lPUVhILzMvbFFTakc0bUdGR2w5dVZhOVhieS9o?=
 =?utf-8?B?RHR3bGxKeFRaV0ErZ25wdlVwa04wMlp1RXV0ckpCVmJxbGRQNjJZTkl3T2hy?=
 =?utf-8?B?ZExPQ2ZBeTBISzhmdGNqNFQzUnU2akJLaUJ6aU5Za0JrM1NVWW1vYkJjc01H?=
 =?utf-8?B?dnRTRUV1K0tKTUNVZEQwU3dsWHhtU0kvSndoOU1Gck9TaXJCZzB4N1Q1Mmx0?=
 =?utf-8?B?Wi9TNXVBcDI0U0NEU1pLUUlZV0JHdmhxOG9wSzRyb0o1amdlcXBQSWNDc0pS?=
 =?utf-8?B?OURsSkxSQzF6VVFvMllYU0xyOEg3ajFvbWFCT2NJSTMvcGdNN2lqQnFqOU85?=
 =?utf-8?B?eTZ1MmhabTgwZ1Jzd1U1S3ZwNzVDbVBCRWo1bncvNnhVdHR6ZnFZQ1NMY3F3?=
 =?utf-8?Q?1HjT9wRZGlNu1oWPws?=
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: 8cf1d4f7-255b-4b71-6a8e-08de4cce7a67
X-MS-Exchange-CrossTenant-AuthSource: BY3PR06MB8195.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jan 2026 02:51:23.4676
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mwmwVF14sjQiPWwuBCftGt9lSNLoq3fCvBt1MhEV8vQt+bdQyqIvl6EW/bq/f6ld
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR06MB7329
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA2MDAyMyBTYWx0ZWRfX9uzilPVQhC+i
 khgCVXOXEFsM+DQvKiPM0CIuu2Hqo5yLhEEXcoUujm2CTTsrbNNh4cYqqxCVTRt0iF6lgfu0xLO
 N276RBRH07uu1HlV9BxVzKLNmgmUfM1KsDuZLtIZR13UlxY1q7r0inZK4Qgei6Xi1QGzGk03vT5
 ZELnQvBFHeYzDeFULpUSwbLRgIuib/eanQHvQ5tluqLcT5aeW1zSLH2pRff5qGNl26taMFWFI9C
 NbiM5kJLaVf7UDmZZB7lJcQDDylHv2pesPhrmUulL9EKzR06lVMfg3EawK0IQNGxCIcnUSjEV6x
 qq2a3lhFCP8dfHGHI2DK8omkMnv9yy7Y8/rs328j2HM+3MrgbwtsVu+Sq7r0w9nYVhVp7sNkGg8
 rmb4n6f8UO9rOSgJ5y1RyFHejfXIEozH7H1MbUDkTx7ymk/MysEnrDQ8s+UPq/ymgjQij1/+N0F
 o1NOhMyYrxAGstKVyZw==
X-Proofpoint-GUID: CNa2NrjcIri9U24oHtpnEBNzOWBoOHHM
X-Authority-Analysis: v=2.4 cv=fIc0HJae c=1 sm=1 tr=0 ts=695c78ae cx=c_pps
 a=ubW7OWQb4uJshPNbXurJQw==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=lre9DRYkaIEA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=NEAV23lmAAAA:8 a=Vqq5rTnOAAAA:8 a=FP58Ms26AAAA:8
 a=opVcELsT66X2nkOn8OkA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=wpuGCMELHfcVa7GrM9FT:22
X-Proofpoint-ORIG-GUID: CNa2NrjcIri9U24oHtpnEBNzOWBoOHHM
X-Wisc_ValidFrom: true
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-05_02,2026-01-05_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 spamscore=0 impostorscore=0
 lowpriorityscore=0 bulkscore=0 clxscore=1011 phishscore=0 suspectscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601060023
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Turns out integrating speech-dispatcher was way easier than I thought. 
Took me like 2 hours to code the whole thing including adding methods to 
my python object to adjust language, speech rate, pitch, and volume. The 
only reason i didn't try it right off was that I couldn't find any 
documentation for using the python3 speech-dispatcher module, speechd. I 
eventually found enough sample code to figure it out. But if the python 
speechd module is documented anywhere, it has evaded me. Anyway, my 
emulator is now TTS independent.

The big task is going to be parsing the data stream from Speakup. I'm 
surprised at the amount of noise in the feed. But I started my 
programming career in a job reverse-engineering data feeds from medical 
scanners. Compared to that, this should be easy.


On 12/28/25 2:34 PM, Tyler Spivey wrote:
> Writing a synth emulator is easy. Getting it right is not in some cases.
> Here are the ones I know about:
> 1. 
> https://urldefense.com/v3/__https://github.com/tspivey/vbns-ao2__;!!Mak6IKo!OWVWYrQ3MdIfjS5SqocP8SRHzES9CLNXWJ3EmZNVya0O0ynrEjyNaaj3aG4he1OJoTn9TUCXe0w9AkwLGT0$ 
> This is a synth emulating enough of a BNS to talk. It has only been 
> tested on Windows.
> This is a fork of a fork. I wrote the original emulator, someone 
> modified it to use accessible_output2, and I fixed a bug in it last 
> year for my DOSBox guide.
> 2. 
> https://urldefense.com/v3/__https://datajake.braillescreen.net/tts/dectalk*20software*20and*20manual/dtemu.zip__;JSUl!!Mak6IKo!OWVWYrQ3MdIfjS5SqocP8SRHzES9CLNXWJ3EmZNVya0O0ynrEjyNaaj3aG4he1OJoTn9TUCXe0w9KLxWav0$ 
> This is a DecTALK emulator for Windows, which sort of works.
> It would probably work with Speakup no problem, but the DOS TSR uses a 
> completely different protocol which isn't emulated very well.
> 3. 
> https://urldefense.com/v3/__https://emubns.sourceforge.net/__;!!Mak6IKo!OWVWYrQ3MdIfjS5SqocP8SRHzES9CLNXWJ3EmZNVya0O0ynrEjyNaaj3aG4he1OJoTn9TUCXe0w9CkO_Qnc$ 
> Another BNS emulator, this one for Linux. I don't know anything about it.
>
> On 12/28/2025 8:08 AM, John G. Heim wrote:
>> The synth emulation is independent of the speech itself. My python 
>> emulation script acts like a LiteTalk (for now) and speaks via 
>> espeak-ng (for now). A user will never care about which hardware 
>> synth it is emulating. They'll have to know which synth it is 
>> emulating but it won't effect their experience. They might care about 
>> the speech though. I intend to get the emulation working perfectly 
>> first and then add support for other TTS engines like voxim and 
>> festival.
>>
>> The only reason the choice of which synth to emulate matters is in 
>> how difficult it will be to code the emulation. People have said 
>> there is already code out there for emulating a DecTalk but I can't 
>> find it.
>>
>> PS: I was able to log in on my desktop and ping another machine on my 
>> network using my Raspberry Pi synth. It was a struggle though. I 
>> thought that once I got this far, I would be assured of success. But 
>> there's a huge latency problem. I figure that's because I am using a 
>> bluetooth speaker for sound. But if it is because of the USB hardware 
>> on the RPI that could be a problem. It could also be that my code is 
>> inefficient, forking a new espeak process each time it needs to say 
>> something.
>>
>>
>> On 12/28/25 4:51 AM, Cleverson Casarin Uliana wrote:
>>> I think that ESpeak-ng is more than enough as a synth, because it 
>>> supports tents of languages, and also because probably most users of 
>>> this project won't use it as a permanente synthesiser, but mostly as 
>>> a temporary solution for experimenting and installing new systems,
>>>  among other sysadmin tasks. AFAIC, Dektalk for example supports a 
>>> lesser number of languages than ESpeak.
>>>
>>> Regards,
>>> Cleverson
>>>
>>
>

