Return-Path: <speakup+bounces-1148-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 20CE5927BC3
	for <lists+speakup@lfdr.de>; Thu,  4 Jul 2024 19:15:38 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=hotmail.com header.i=@hotmail.com header.a=rsa-sha256 header.s=selector1 header.b=E0W4JOj2;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 790B3C81C6A; Thu, 04 Jul 2024 13:15:37 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 5A9BAC80A5A
	for <lists+speakup@lfdr.de>; Thu, 04 Jul 2024 13:15:37 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 1F1EAC80A68; Thu, 04 Jul 2024 13:15:29 -0400 (EDT)
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (mail-bn1nam02olkn2068.outbound.protection.outlook.com [40.92.15.68])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 58AA5C80A5A
	for <speakup@linux-speakup.org>; Thu, 04 Jul 2024 13:15:28 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Q4CrfirJWLou2CdwqNM76qa58YYrLNSvUN4O9d9Y/lztA3mMF7rYQaUL6Qt+6O47VNDx7hfdEWFCpScMoOKGfyHAvCdB/MMWEfmdCz4OIk3C7xGZ/IWEVJSb4UtPpixJYf6TG9LoKxT9joHuqViCzjeygMPWwmxDuJRAT2GCrhfA4TMr8b2d25XRKH+slbb2eRY2QQtkoIJlUI5Fa3AhzQEXAI7SKCfxbKESKI0dcJb7byFYDPU117TZTWBDvhyqg5T/xJYeyk3OMPBrkR+s43J9R/AhMpJ3Kwc28HO+PDltCuEIa9atIV4xm0s+kuTvzziYicLbCv13qb/wt0CjuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Fw2FypjexSgEJjWwahnAUs+Vxd4H6mVOsobttzz4PtM=;
 b=PKGTYSiH3rZksJgTfLU/R2jofCw3b2kn8Sq0ZOvtwpE3BRBXnA7UKeZBlLzf6+j1lLaZHokMztJh2m2wz66X2YiwE0BEMn+AN3nGKAbZYnzWvdIAZLOGmiLATO+58VxpqbwKI8pidYSW+CA2RPx9T2hzp9+oC/e5tTnt34ZLWn4OJ7jQrfLJxWUFwk6HKQFMO8/ODTQ1iXffPMphYLR7LRZFxOg62jiIsi2TCvwauhFUXN4AfZbMswI8EZKCji4p3bBoVaiKXqh6vc8lgBNH8o7cBekRVp9X6CpX7kKGM9yOxGGCZnCEk2kK6PgUCmEW1l3GrTaAsNE//X+K+nMrJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Fw2FypjexSgEJjWwahnAUs+Vxd4H6mVOsobttzz4PtM=;
 b=E0W4JOj2jVSKdpkcaG5psmoihwnjNmbSWorcqelq34jstVjy9PfzWeYDiIaDfnCSQgddlompOUN41LUvPyE9Ci/udwJ1Nmu3YdrL1fvDddlhmy5O/H0jWYronzKUXWq17N5XKUcZomBQ8kXNKggXFC9Fb6Kt5nogkaxMRhVYqWJclvsRmlgReAD5Kesxqk9lnoA2XIyn5S9lyGXIQ2IJUDysZDrqYQw4Kat70ejFfsBZ8+5G3u7Wshqpz74uq1ZjM4FgCuhNqnACGz/wHBpX+DbL6/nJLhfijqrQPOXmpEr1PnEyN8BwHApT4SBB9s9kvbIa8zpmtMN7Ey2sOvE/AQ==
Received: from CH2PR12MB4133.namprd12.prod.outlook.com (2603:10b6:610:7a::13)
 by IA1PR12MB7494.namprd12.prod.outlook.com (2603:10b6:208:41a::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7719.32; Thu, 4 Jul
 2024 17:15:21 +0000
Received: from CH2PR12MB4133.namprd12.prod.outlook.com
 ([fe80::2eec:f34c:ee7a:d818]) by CH2PR12MB4133.namprd12.prod.outlook.com
 ([fe80::2eec:f34c:ee7a:d818%5]) with mapi id 15.20.7741.017; Thu, 4 Jul 2024
 17:15:21 +0000
Message-ID:
 <CH2PR12MB4133B6F8E4CC156AC9CA3F79DADE2@CH2PR12MB4133.namprd12.prod.outlook.com>
Date: Thu, 4 Jul 2024 13:15:16 -0400
User-Agent: Mozilla Thunderbird
Subject: Re: devuan daedelus and speakup
To: Jude DaShiell <jdashiel@panix.com>, speakup@linux-speakup.org
References: <14439926-6631-5be8-ae20-5349f21b480b@panix.com>
Content-Language: es-ES
From: criss <crisspro@hotmail.com>
In-Reply-To: <14439926-6631-5be8-ae20-5349f21b480b@panix.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-TMN: [v7fdO5dCex5m55sWOvyQp7GsOhdZmV2O]
X-ClientProxiedBy: SCYPR80CA0011.lamprd80.prod.outlook.com
 (2603:10d6:300:30::21) To CH2PR12MB4133.namprd12.prod.outlook.com
 (2603:10b6:610:7a::13)
X-Microsoft-Original-Message-ID:
 <4d6aba68-ee48-4fbe-bf0c-71b350f1be16@hotmail.com>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH2PR12MB4133:EE_|IA1PR12MB7494:EE_
X-MS-Office365-Filtering-Correlation-Id: 4e06101e-960e-4169-f0a2-08dc9c4ce2a4
X-Microsoft-Antispam:
	BCL:0;ARA:14566002|8060799006|461199028|440099028|3412199025;
X-Microsoft-Antispam-Message-Info:
	scPTqS7PbClJ+JjIe52+LHFFxEKTnXO6Y7MUfLrCWNu6tjanr5IXgVXuV3UAcPeICol3a/QDMJ8HlVBFVnkSDIpj2sJcmJ3gWiQmuD/EarEJlpvJ+i7CRg1ysOUQwsIxSKhY8R/srDbkusIXLo2J1C3ltOjC2yfpRX772WD0IKUc1v8HspZzscOXrItWL0HssxWexI63geFr6+MJwc8d4XUq+7A+lS7eu0XQTrCkGPaK76WAElaBCHc9Pzty/uQ1LrPAmT5C5J7F91BDwuI3mDBDKlgtMngz2AdAshNRJ/HLEB8/AM/i+DpJIkDwWM3TLlqHr0ULeReP6Szz+QnJUTUCWFqtXebqiQn9wlEiRtdMg9wycd0iRTDv3cbGI5IU+NOZUGU8Fi+y/TDBrYkl8/9mCTC7XXrCNILqEGh7c8mY6HR0HK2LrqCRbLiv6VNvzg0fex0zwiUJy0RQ1f2ZUlp5BT+cEj24bGwIyfQmh/OuWLaW8r6MnUS5Lf7MDog79dDuUmvO/BFzvGf04C5cVKdeuDGI4kMCoC09pkajdaI1p/GMlbPoF2wwHwatn4Xhy1nl1C5rk+r8ktIlZtMgmAAF56Pa8y0UcjGYmLzZuif6RBJG0abzvUHg/yBcLc5U
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?YTE2TndDZ0EwQURKNDZCNFhVczQ3eUkxUzZnT2ZmN3N6clhEY2EyREEzRFMr?=
 =?utf-8?B?RnVFekFqSzZ5c3dPVUdTK1NyK1FBTHJrMkQzM2hvMWVrdWttSDY4UVIwaW1B?=
 =?utf-8?B?bXlmVDVEYk4zVTArUDR6OE15bHV4cEFaQVFrZ2Y3SjJPR04yNEVJazRmenBY?=
 =?utf-8?B?Q1RIaVl4dStjbS84TWhNcW5UVC9hT2wwR1FPaTZtenZSc21MelVDZDh5Nmli?=
 =?utf-8?B?SnkyT3ZwQTRDMEthZ3pkWGNJQ08wQlkxQ0JlZmNybWo3T25ucERyQUV6TVpG?=
 =?utf-8?B?UkVkTXdva2hCMVAyQnJkemkzWGdWYzAxdHNhUjhzcXF2VHNzcjdyZ0xNeC9N?=
 =?utf-8?B?RWFRWktTak9NWUNuS2NOZi81NkdKSkl6VjloMXJ2RDQrVTBVamxvWS9BY1Z4?=
 =?utf-8?B?c2o3V0Q2NjE5Z2pvaGpSZ2QrQU1ldGJqZVZpT3ErbFNsZE5LWmZycWNBemR6?=
 =?utf-8?B?Q3R3bTFaQ0FKck1KV1NsZHA4djY2T3Y1N1VXQU1mN1RtT0tQdDdvbjkrZnpj?=
 =?utf-8?B?U3pOS1JXRXpKTEN5Vk9OWE9iK2FQNzdiVmt2bTlnT3NnaWVtYWREenhWYkNx?=
 =?utf-8?B?WlZXNjRMZ2c0RHMxWndramptL3JkSENLMjdZaGRWc0hzM2R2Zk50TEFhS0lZ?=
 =?utf-8?B?UXhCUnFIa0h6dnB4OUdSRVZkeUZzVHB2UnhZQWRhZmdXNW1YYW5ONzkzWkE2?=
 =?utf-8?B?OGFxM3pHZ2ZGNVRHWDNGL0dDUzM2WVovZHBTa3hJaGFTRXJpQ0Vlb2JkMHFN?=
 =?utf-8?B?cGFHYjErSnhtM3ArZXdkSE5oMjl5aFIvdVgybDZFaUFwMlJmcWdjNmFadnpt?=
 =?utf-8?B?V1VyMk0xTWFIZVczaEZCTFo0TlB6WGVjNEFYNFBxVFlOb1ZRL3JZQlczRGlq?=
 =?utf-8?B?UmZ3emRXeVAzWWluTHQyVzlmTHhYc25rS25kaWh2ZXRESkdEcEw4eUswVExz?=
 =?utf-8?B?Q0VhTGlCd0phN1hjT3R1Tk1VOFJxZDRnMUx1Y1ZHU0p6YW1xQWMvUlFXTUJt?=
 =?utf-8?B?ay8vWWtaS2FRd2E3dFE3K0Y3d0dVZTQ4VG9adlp5ZTRXaS9zNzlweEM0Nm5S?=
 =?utf-8?B?R3dNMklzUkZPdm9tVk44K0NRK2t6eGxwa1Y1UEcyREJNWVZRN3FnSTd0eG1G?=
 =?utf-8?B?dllBeGkzL2hYYjNvTk51Ym1iZHo2L3dHNWtvNmJreElCWlgzeVFSVkJ1SGlF?=
 =?utf-8?B?bis2VWdCUnl3SUpHQWZUL3dGV255WkNMelNMNDZkdTIzamxMTlByWGNPVHkw?=
 =?utf-8?B?dDVFRUlDZXp5eUdVMGhsWnZSQXVnU0xpUTJWN1JESTFTWWd5Z2JKS2xGUTl4?=
 =?utf-8?B?TFZTTnBHdkFsVkVFL3hZaTF2WWhKVHVGL3dNeG9Iakd6UGVuSmJtaEVRSzNK?=
 =?utf-8?B?WENuY3V1cis0bUJzK01KOWR0YlpFelBxSHhFZWdxcEdFRXh3WDE0K1RmTkVi?=
 =?utf-8?B?dllScHFvazQxb3M2N2VjV1lmSExmV2d3Q2o4MWxMckw1eGcrZkdXdmY3ak1Y?=
 =?utf-8?B?QVJZcXdVZlR3OEg4WTFVT1JiUjhTTllXSUVCMDBMcXB0VXlicUNlcXM1Z3ov?=
 =?utf-8?B?SEtrOElFUEF4NUJ2WWcvV2dqdjFnZVdlcDY4L1FwLzcrM2RYUEZhejF3UWVD?=
 =?utf-8?Q?DxwG9rqOPs5iUdpHCJdTbaiMqqcZMe4XC5nn46LfdP0s=3D?=
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-71ea3.templateTenant
X-MS-Exchange-CrossTenant-Network-Message-Id: 4e06101e-960e-4169-f0a2-08dc9c4ce2a4
X-MS-Exchange-CrossTenant-AuthSource: CH2PR12MB4133.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jul 2024 17:15:21.8813
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg:
	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR12MB7494
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hello.


I think minimal ISO is like net install. When I used net install ISo I 
have to dawn ap to 5° position and press enter, I don't know when I 
press s key, not working too.


regards.

El 04/07/2024 a las 9:45, Jude DaShiell escribió:
> What is to be done to turn speakup on in devuan daedelus so it can be
> installed with speakup talking?  I got the minimal iso and don't know if
> this one can install with speakup.  I used the s parameter at the grub
> beep and that didn't get speakup talking.  If that is supposed to be how
> it works I downloaded a corrupt iso.
>
>
> --
>   Jude <jdashiel at panix dot com>
>   "There are four boxes to be used in defense of liberty:
>   soap, ballot, jury, and ammo.
>   Please use in that order."
>   Ed Howdershelt 1940.
>

