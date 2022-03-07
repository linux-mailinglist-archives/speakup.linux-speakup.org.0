Return-Path: <speakup+bounces-375-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 0A6824D0C4E
	for <lists+speakup@lfdr.de>; Tue,  8 Mar 2022 00:51:12 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=hotmail.com header.i=@hotmail.com header.a=rsa-sha256 header.s=selector1 header.b=l65a+vWH;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id B5AEB380EA0; Mon,  7 Mar 2022 18:51:02 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 9F745380D4A
	for <lists+speakup@lfdr.de>; Mon,  7 Mar 2022 18:51:02 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id CC4D9380C19; Mon,  7 Mar 2022 18:50:55 -0500 (EST)
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (mail-dm6nam11olkn2102.outbound.protection.outlook.com [40.92.19.102])
	by befuddled.reisers.ca (Postfix) with ESMTPS id F111D3809CA
	for <speakup@linux-speakup.org>; Mon,  7 Mar 2022 18:50:51 -0500 (EST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mecyi90EA/GSWwHOBXYluhdykb3mbRZq3YXwEoZQqKX+orjISSuVaKtJ2yYzpfb9UFbQluIKujB9TZ7wrraUKiYkCpMGPRLTWwqp/I5GjQcMGej7gyuXzaN2EwRXf9efWs+M3QsaYR9uml6p11GlnuvMVT5gNuCJXNFWJMoxQPJyTJkPDjayj2J0FSvxPBX6GNkkOAop2BTD2O+/l3QsGoxdoDIbLCIZBtfcdDzO5zIcWfmuUrL/b3fa5KHyQ/outBgsxD9r+PqKAwlbDs0Vum2NWw5JpXUCQvtvAwdY95lzRdUejJ7wiFvlHiToXwmrNlq97aVfT954VfJngiiRyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ngIcTuJADG+v4m01TDEGtmhKw/VJ6OYaCK6f3SXtvsM=;
 b=ZPRAqRPu516RKBZN3mxtDboDHi0syveTMVqMTCvFszMaMUeJdiIfh6SWcFgTgibXJDFIQy6C0LZYQeuUqkFtNdr6Q4ZqdVTo96H53yWT6xcj4YV9dKnw0v2mqiKJkGrBrH4ka1jFi0EG+L8oNhpBxh+HW4ZirYWwd5YfmICkePr/jxPzP0POZnFN59YGGrzyReaX4SJCwGN54TdN4epDbOLOibJAAZoLUFxkt7X/kEq7naqc5+HDGYQ+jRPdJSwyamh58WC5GWedYx1nDEsbYJ3JKfkg2TcIViICoNOKdRyQzkNPrdBLdnd6KZg7FKQ8NqqP6G5jczMph4XRBAjkwg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ngIcTuJADG+v4m01TDEGtmhKw/VJ6OYaCK6f3SXtvsM=;
 b=l65a+vWHSjJ1Phja3roKD4cV4FpBvf2nAtU7NMqL3QMZo3p5rPeixxzieryfdmdq11afcQUAXVLOohGr/elE0oCeSc//cWtNHGzij4+QJAiJtQw0K5dIaxxyeXih5buFZQX9YFNVjVGGTKpxMaRuSw+1pmqU30pXAVnQWKX+pAkKgC+EpLCfxyTFcRIaBXuOgtSeNLg4yojOmetT3rZsuyG7z99ELPbPa2RH86uBR2JEALNDS1mwhPhHKPoJR6ufAoXT0oedPoVPQQ3abyrVlMwl+a+VdAxBve544GqA87Udest3q0ROHYXMPdyGcODc4vEaxZX41ocIyX3wtTOwjg==
Received: from DM6PR04MB6268.namprd04.prod.outlook.com (2603:10b6:5:131::11)
 by CO6PR04MB7650.namprd04.prod.outlook.com (2603:10b6:303:b3::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5038.13; Mon, 7 Mar
 2022 23:50:44 +0000
Received: from DM6PR04MB6268.namprd04.prod.outlook.com
 ([fe80::c903:c690:b13a:93b1]) by DM6PR04MB6268.namprd04.prod.outlook.com
 ([fe80::c903:c690:b13a:93b1%4]) with mapi id 15.20.5038.027; Mon, 7 Mar 2022
 23:50:44 +0000
Message-ID:
 <DM6PR04MB6268EB668254EF3EE9FB7127DA089@DM6PR04MB6268.namprd04.prod.outlook.com>
Date: Mon, 7 Mar 2022 20:50:38 -0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.2
Content-Language: es-CL
To: speakup@linux-speakup.org
From: criss <crisspro@hotmail.com>
Subject: I can't change languaje
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-TMN: [TMSqVer6iTPi2gX0FHe/YMCyIXh4PvKk]
X-ClientProxiedBy: SC1PR80CA0087.lamprd80.prod.outlook.com (2603:10d6:2::14)
 To DM6PR04MB6268.namprd04.prod.outlook.com (2603:10b6:5:131::11)
X-Microsoft-Original-Message-ID:
 <e2f239cf-2b6e-1b0e-c65d-7a777134c273@hotmail.com>
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
X-MS-Office365-Filtering-Correlation-Id: 47f56edb-a060-428d-d44d-08da00954ae8
X-MS-TrafficTypeDiagnostic: CO6PR04MB7650:EE_
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
	VaYn4XRkvj7eC0CQ5Lm1/gaqZCWACyv7qy2rnTuEi7M2oILIfgwDJ9XyzCyDJHHqeiJ3D+Rgk7OKdnUncOhdSMFENnEMXx/Oj4slmnlVDfXeYurbxE+c/Df1q8HURBJ4tDi2BDLXInHHralIG/NxQeYJ+BsaAEpfb9uAyxCodq5Tqts0pHhROogJvWKqMB/f3KyS1WQbRuqtrD7JYHtWETb+1iCQD3dBun/bxkxL8dgbFynnwAzqHZ4osoH5bRTGQnw4Z7ZqJl9yGEE+qfYxIDiw6hfPaeGcBk96rDlvp7TlkSabDIHFb9JnB2X0kMcTIDBWIJrXpHRwgVcdn/N9Cndam6yBilNHsarnzr9przcNRJD3BpeDJCsNSu8ayni5QhnWqnZ36Fa+O0DucikRuBMY6vkBYnmrKolf+AnJPNCXZifvOLPC4YuGryKf37mZzShur6wZThbYIU7OgXrAomD8XbnoJAqGtVcbz8fB1f985YR88Dltpxp6k19KoozfhRjRabyppshH/Dl8ZxBv+8TyvJpc/Bjb9P8CGIVRlwt5Ts+4X9h/a9F2u/HWeNvtSdMijmpgMITapYrcsLmAEA==
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?Y0UxU0dIVFVCVjBqcFg0Y0JQaWMxQm9qZDdKbnQ5cVFQRG9nTGYzdDdjeGFJ?=
 =?utf-8?B?Q0ZtSnIzQXRYVExqQ2YzcytrOU1NKzhsRlhoeEs5QytNZXc5MlhBaFBORW9i?=
 =?utf-8?B?TTlxTHRPZkErL0dPNFQ2SzFTdHRWUTZ1dkllMXR2aW41bHhFZ2dzL1JoQjJ6?=
 =?utf-8?B?UWlUOGduVWFhT20yVzhUV1MwNE9Ia3ZZMDJpbWZaSEo0SWdsdnB3WFI4djVU?=
 =?utf-8?B?WXhRV09VbVNLeXdFcUkyUVFKc2RaYXBEUnVtb3dWUURjV1piMGZpS1lvSmpD?=
 =?utf-8?B?OG5qNmdBT2h3VkYyU3hVUUZuaXZreHNWbFEreC8vM3JzM1lHaGc5MkhYeTdk?=
 =?utf-8?B?b2psTEFXY1Q2YkJHODlqcldNMm9RaGNCVkdKMWhvYVNwVTdkaVNmek9rbXBa?=
 =?utf-8?B?Q0F0NEpFL0h1M2pzY2RTODhZeGR1Q0MzTHhCaGlTSTMrWjFXYUNHN3V4dHBa?=
 =?utf-8?B?bjJ2WXR5RDB2bzFpVmxLRGhmdks4dGk5Rk42Rjl3M3V4VjM4WVhVUnBMZHJs?=
 =?utf-8?B?bXM1czVhNExNSHBBL0lpNlVsK040azRObC9IK0ExUTI4NHRQRkRsa2NNWjVp?=
 =?utf-8?B?amtISFhSSkY4dFJOSHcyaEk0cTNlVk5oS1U0T3NTWUxCUEIwenhIcEJreGpu?=
 =?utf-8?B?S3hLbTR2emxzc2kyWUQzZE5ma0FCNEFFMk15Q2wwTmlWdkw5TzlYcXkyenNp?=
 =?utf-8?B?Vkd1ZlVUYThkZ0tGby9tcTRoUUtwZ3hpdjYwMDY4R1VTYUVRYjVMMkRWclpF?=
 =?utf-8?B?dnFsRzVkcHhJaWZGdmk5a2RXb0Q2NUFJZVNUV3RlVVc5Mi9KcVdjbmVSeUpj?=
 =?utf-8?B?V2Y0Q1F6L21Xd0VnS2pibFpsRGpsS3NITnEvN2tqam5zWVRQN3k4MzZsdzVj?=
 =?utf-8?B?RHBQMU9TdUtUR2EveHNReE9mY2N3OEhIWlJEN0hsMzFKVFJDa2d3TUhJRDRi?=
 =?utf-8?B?US8rVUVJRlVsNXhMWjB6Vzcybm0wU3BYWFdDOVFnNUFXbWlzYmdrMllZZElC?=
 =?utf-8?B?bVA4RndWa3dGaEpkbm13Y2Fjb1lkZXcyS2hINnBVVFVKb0duN3ArbVZnWFJE?=
 =?utf-8?B?amRjemNGYjNRNEREaDI5TEk0QWZab2JScGdKOXZFYTUwa09kUCt3UXRvZ0Q1?=
 =?utf-8?B?N25yOUFJK2Q2NlNVTXlLUHlJUEwwcWg4bkoyRjgxc1RWUXpneVk0d25mSzZ3?=
 =?utf-8?B?U1ZGVEVkcUw5NWFBN0hEeXpSMjhZcW5XWWRyd0FFR28rRVBTbElrZ0tqR1lP?=
 =?utf-8?B?MWVQSFEyTlpFQU03WVJFemFHVTBJdllVeGVPUUdpQlhPUk4xQT09?=
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-edb50.templateTenant
X-MS-Exchange-CrossTenant-Network-Message-Id: 47f56edb-a060-428d-d44d-08da00954ae8
X-MS-Exchange-CrossTenant-AuthSource: DM6PR04MB6268.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Mar 2022 23:50:44.0120
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg:
	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR04MB7650
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hello every body.


I am installing archlinux, so when run espeakup I want to change the 
language, I use this:


espeakup --default-voice=es


But I don't get result because espeakup continue in english. how can i 
solved?


Thank you.


