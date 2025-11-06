Return-Path: <speakup+bounces-1464-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 9A5F1C3CF5D
	for <lists+speakup@lfdr.de>; Thu, 06 Nov 2025 18:51:47 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=hotmail.com header.i=@hotmail.com header.a=rsa-sha256 header.s=selector1 header.b=D8q0+skD;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id D1B04381985; Thu, 06 Nov 2025 12:45:20 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id B01C2381976
	for <lists+speakup@lfdr.de>; Thu, 06 Nov 2025 12:45:20 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 6C09C3818F3; Thu, 06 Nov 2025 12:45:13 -0500 (EST)
Received: from CH5PR02CU005.outbound.protection.outlook.com (mail-northcentralusazolkn19012083.outbound.protection.outlook.com [52.103.20.83])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 4A3A13818EB
	for <speakup@linux-speakup.org>; Thu, 06 Nov 2025 12:45:12 -0500 (EST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JQE1QrLt2woRKLNn2oLIAtqpZQwhHUEVsr97Cz3asV4tpQMLJxQ+WFiQEf8am8VDN/NxrTzAUSTHzGUD+aSnNMNRN90frhNXW8daR3AQglW/gUIjpQFTM4fnysp3ynsXHo63tdMJkRWqEVtsVy/YfP++4HpE6JVv9q1eMqJQ3RNT0D3a5m30iS8HvtA7M1nyqEKwvupvlSvhMfTaeydsU++lBibJIDLJN0ZOvJMxRJmx/7baO/4dm3iq7u4DcSjG6nAdrCnane1FfV45ADAwOwcNG0AOvDL8UopYrzxRR/EkVJZt0gUwzOftbecQlF2GsGLH/gZQSFaTr6NRkPP5FA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=u4iEOqg6mwSMNGoCmBTVvpYq+50EuE+wnHNvmtuWF8o=;
 b=p+2DrxGDBENoUwZ33DXdmk92jcDuJvhg4kt9dZyhNuiX8YY4GQVBchk+IcFRSPcUiAwDF9kSPvIiN28eIUCiFik2pxzsksuw+Kj/FIBlYGnrsNI4x6l7EWPY6XBQ+J5gNkkr+i0a/k4mPRdIdYQJCm9KvO23XM8xdWhNimuu/zCL9p3HNc/ZGBLg8wmTn3FY5QFg91pMleUZufrAMe9M538IqjV9s01aDpdtIPrEHPV9nEv7qb2aU+YNK6LQlJraveUT36t5PZ7ojwvTygLYOv6cYfStdEZbigd1OL47aKdEbnImFCKqOKULNztGKFGi1Uk25LO95LL2+hf6vQhgrA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=u4iEOqg6mwSMNGoCmBTVvpYq+50EuE+wnHNvmtuWF8o=;
 b=D8q0+skDqkL0NqxYMFUWxkBPXFZWjcPMqQJpG+UMXwqSUkG2SVDa6Fgk1eW6mebWDEk8QxunVG+zb+gkwVillxDnQBXDO7QZVArZ2CWIvqu5FOdXTJmGqA/v6dcSxnncN0/59f8oyLTzpXC/hmiKqCD3lVMi2kMXsFmJG2nPpwYHH3Xu+oTIJRVmHua8T4Rfa7PwdM3daE5BiclNF694DQBlSiDEmJtxC169GcRrV8SFg3SsSwdCaZMwZEw+8MVFRWlHyfDTVZF8qMlFM0lgFzcie2dFFSUSR3YUHySGB7SMf626MMII84US6+KetdniVInz0bsZV+S9CsmCaAnXnA==
Received: from IA2PR84MB3952.NAMPRD84.PROD.OUTLOOK.COM (2603:10b6:208:4b9::5)
 by BY1PR84MB3939.NAMPRD84.PROD.OUTLOOK.COM (2603:10b6:a03:4b7::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.12; Thu, 6 Nov
 2025 17:45:10 +0000
Received: from IA2PR84MB3952.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::a1ba:e9d8:58a5:a157]) by IA2PR84MB3952.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::a1ba:e9d8:58a5:a157%6]) with mapi id 15.20.9298.010; Thu, 6 Nov 2025
 17:45:10 +0000
Message-ID:
 <IA2PR84MB3952FFF80EE8FFE8B416E285DAC2A@IA2PR84MB3952.NAMPRD84.PROD.OUTLOOK.COM>
Date: Thu, 6 Nov 2025 14:45:06 -0300
User-Agent: Mozilla Thunderbird
Content-Language: es-ES
To: speakup@linux-speakup.org
From: crisspro <crisspro@hotmail.com>
Subject: enable espeakup for debian
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: SCYP215CA0026.LAMP215.PROD.OUTLOOK.COM
 (2603:10d6:300:147::20) To IA2PR84MB3952.NAMPRD84.PROD.OUTLOOK.COM
 (2603:10b6:208:4b9::5)
X-Microsoft-Original-Message-ID:
 <3cb5375b-a1e8-4513-af6a-86319ece591d@hotmail.com>
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
X-MS-TrafficTypeDiagnostic: IA2PR84MB3952:EE_|BY1PR84MB3939:EE_
X-MS-Office365-Filtering-Correlation-Id: a4a03474-9fb4-4e4c-f7d6-08de1d5c3afa
X-Microsoft-Antispam:
	BCL:0;ARA:14566002|461199028|6090799003|5072599009|19110799012|8060799015|15080799012|23021999003|3412199025|440099028|39105399003|40105399003|51005399003;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?NmxIR3ZmUTVEZGFKZU9ndGRBTk5HNFAvbis4MDJWNEg3MXorM0thMHdRSmZB?=
 =?utf-8?B?aTFwenZQcm41MTc2c2llUXJtSnpyOFBJcjlZRkVHVm1iSHNhdDBLaEg4TkxW?=
 =?utf-8?B?Qk1vS3Vxb0phbkp0WGdJMm5oei8xb3Y1UXlNeWFxOWg0aVlVakdOWWh1M1Fv?=
 =?utf-8?B?ZFRWbVVJY204cnNtc01xa2VYR2loM1VnWTJVdklFUzBmdEhGQUNrbVJnL0Rq?=
 =?utf-8?B?ampYR1Y1cFJ0SVdGMnJ2Q2RWL0NiVU54MUQvVkZyVkpwdHNrM0ZkK0lRbDhq?=
 =?utf-8?B?UUd4UTc2am9DaFpTVUtmRmRMTTdCS1NLRC8xQWhRR3hIOEJHVk5adWhhMkRr?=
 =?utf-8?B?aEpjU2c5Z090bFdoelJVRVo1MkhLaWVpNmh2dTZzYUxiZGloRzA4QUFndm83?=
 =?utf-8?B?Q1R3aGFyYXc2QmNvdldxU2piWmd1VlZwNXFORHB1OVFrZmpLU0NvQzkyV2RR?=
 =?utf-8?B?Qi9UV1dPN1F0ZHlBSjhhNGkvSHgxcGRSZUZiWlpHWlp1Tng3QjVOeW1iaHh6?=
 =?utf-8?B?VlU4Y2pidkVuSTdJbXlPTDhoMWJzdGJLSExtUDR2THR3bHgwMnM1c1l5bnQ2?=
 =?utf-8?B?aHE2ZGUxNnZEOGFZZWlRWkdmVUlSaExQYzljOEdBK0ZyM0RFVXNmT20zdHlt?=
 =?utf-8?B?NGJKSnBrZ0FsUjFJait6NmlVNEh6SkZHT2RERFBtTGZ4VEdTNER4cTNPSWVa?=
 =?utf-8?B?UGNjY0luakRxTExEQTRtMEhWVTM3SFpzQXp5d1RqWndUTEM3aDkzU0xjdmhv?=
 =?utf-8?B?RkpGM3NoRDljQ0FRR3lTTTVEb3lhSENwdHF2WEo3aWJYYjNKRFkzYVdXanFL?=
 =?utf-8?B?ZksrV3FBZ0FCQUR3eGRHMlhUYmdzRElROVNQOCtXWm1FaXZ6blFuUDlKVjFG?=
 =?utf-8?B?M3Y3TW9OMjJwN1k2UHpKZkp0Vm5vN2RTM0FzL2FMK25XUkRQd0gxU0JFamUr?=
 =?utf-8?B?S3N3Nkh5bXZTUWlJQjliT0hPR3ljZjJkaDF0TU1wdWlaOWJMcHdpemxzcTk0?=
 =?utf-8?B?ZDRENFkvN2dKenVTRXpRWkREbkhvSlhmZ1MxV0x3Rmo1YVNMb3RHMjBGSmtI?=
 =?utf-8?B?TmY0OE15V09ieElMUUppOGhzRk1Dcm4xRS9CTnFXRUN1Z205OG9BWkhibkZw?=
 =?utf-8?B?MFo2K1ZmWFFDd1lTZWErUm9teGhjNVcwdVVpR2FicnVVUDhvVnBhY3ZDMEE2?=
 =?utf-8?B?UDAyU1Bwek51ajV3cUYzY2RtQjlWWFFPV1dlTmdFTHZsVDlwUnpDRllOckR2?=
 =?utf-8?B?Ym1LVWRBYVUrNWhKaTJLdWdYbnhvVFpDd1BEOWlUdzRjL3JpOTRNdU8yby80?=
 =?utf-8?B?bmZyRW5hYkR6RWxWUnhoQVBaZjdEcDI2OWREcmdZNnoxMGhSbHFKSmVFVHpm?=
 =?utf-8?B?YS8wbHQ5N1JvZ3NGdDZYcXNkbm5aa0E1aEZkVXBIRjVNQmVXd2NzaWRGejJJ?=
 =?utf-8?B?UHBhaUp3SEdTcGcwRkIzNUJKU1hEcG1PMlBmM0ZpcUFVRU5UNnpaYUIyemxo?=
 =?utf-8?B?QzcxOU0xazFZaVkxKzRVOUJDSEhNQzlqN3ZadTVBREErQXRSQzkyeWhlQ0t4?=
 =?utf-8?B?enQvSVR5bTBLZFJVbkFtVXBUdmFMRVZsRW4rbmNybnZycXhudVd2QXl5c1Vw?=
 =?utf-8?Q?XvP+OxgyQVFlFOCWeJ1cDhNBSxV/02y6T84YQH+kJBWM=3D?=
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?M2FRVjdqcSt3dEl5RGhrZG1pVWxCREF4a2M3b3NXSWZpTkhoT2YrYkFIcWpx?=
 =?utf-8?B?azlxcHFGZUhtenl2Wk54ZDdUOWNVSlM1cVUxZWJlTklEZzJHc1pxOG96SWJa?=
 =?utf-8?B?dTdpTVNoSEhvOVVubi8vOEZBS0FuNTZJaDV3eFRIanNMV2IwazV0T0VhSEVm?=
 =?utf-8?B?MStsMUorMzdUVW15SUtWMlQzMUIyM3NoWitPYnA0NG8za05EWUR3TUNOUEk0?=
 =?utf-8?B?anJEdzkwaUdLNXgrRU9LZGhibnBmbkVqTkdhRlYrTml4Mzd5cEt3c2tVd3JD?=
 =?utf-8?B?d3JENFBqdDNiTEJpVlVlYlVrUFdLRi9MeVM0SUZ4dUlHaW1nS2twOXQvLzFF?=
 =?utf-8?B?R2pCcDdPRWdURkxqMmwyUGN3QzhjcWE4cis0YStnbVIwVCtGeWs2K2ZlSVFv?=
 =?utf-8?B?L2RWYUs2dHJZaGQwR05Ic3VETWpWOG04OUtzNlJ6eWUyRmJFQWg4R1l0YU1Q?=
 =?utf-8?B?R1pCc1BzWDhXd2lkQlpYNElMTGx2dkdycWs3ZnhJckdEb2FPcmZwWnZoN2Qv?=
 =?utf-8?B?WkRVOTNsVEVrKzdLaTJibVYxWi9lVWlaWmc4VXdUQlh6cHJLa2UxcDdlODBp?=
 =?utf-8?B?MTcxTnhxU2hmUkQ2aTR2K2htVGh1MFo0aVRkWi9KbWYzWXhuRFJNWmdvTjBs?=
 =?utf-8?B?a1VYaHVFMVZmZUdnMjlPU0NZUVArSURiTFlGR25Lc3VvL2p4c2xyaFhCN1dU?=
 =?utf-8?B?L1QwNWliRnFwZVY3cFBSMXZ3S1dBaHpIQjJnenNKeFFFbVNMd2oveGl3Wm5G?=
 =?utf-8?B?OG9pZFJRSkdMa3YwdlY4SEhSSHFvU24zQ2NnYkJRZDRPbDNTbndLdlJlQmpR?=
 =?utf-8?B?OGFCNTJoanYxUVNtSk9EaSsrdWtrVWFnVjRHTERxMVd5MmFHMzA3WXBERG1E?=
 =?utf-8?B?UHMza0ZvKzJQaTRad0lXUXQyQnNZZjhFc3g0WG82aEgyWW5hTytQV3hJekR4?=
 =?utf-8?B?eE50bmpzdFNqd1dFU3Z5QWpTQVEwWUdYdWZzdTBwNjBVeU9uUFArdk9ON2xQ?=
 =?utf-8?B?aGtmbFRNbnJaTDVMVTl2ZGxmZUdwN1ZZS25hM0VFdGR5VWJtdEFtRGdDZ3Rh?=
 =?utf-8?B?MlZkallPa01sZjFnWmhMcWVmUFlXdnpEL0tYMTgwQko1dUUrTXkzdGxPaUQz?=
 =?utf-8?B?N1NDcUNnYUFOajcxZkdOMzZtKzZJYjVzcEZPT0JRT0R3Z0xjdE4yTHYrSWhj?=
 =?utf-8?B?K3VhbkFZd1liaFZlaGUyWFJ5VCtjRlpJTE15bzVseGVwakQweEhCcmI0ZHN1?=
 =?utf-8?B?R25KdnhGaXJWZ1YwNUd0NTVMSjRWN0lKei9nZVZOMHBQN2hiWEFmanhhT21y?=
 =?utf-8?B?c1Y2dno3RVk5WVF1cmtzU1oxUnExQ0NrV2FIVHI4L3RkR0VTcG5GaFRnLzZi?=
 =?utf-8?B?ZXZ5VWNyM0w1U2F3R21WOVRCN1NsRlF2WEFieEJJQ29icmh6UVBtS1drZklY?=
 =?utf-8?B?S09GbmtGQkN5N2UzdHhmYnNOdUkzSzdXR2VhQ2VzbWdvWDAzQTkzZnFZZjBD?=
 =?utf-8?B?M1dVYllRYlF3enFxU0UzUnhqbVBvUzlrbDdaRzlWUW9zQ2ZzdXRKZXFQUnJu?=
 =?utf-8?B?M0NMVjlMbmdIV3pKWG1zMUcwVEw1dlM5WDBGSXIvTHVBWU4rUTVneHFJNG50?=
 =?utf-8?Q?GsdxpNyTEbDIx9KesYmJ6jsIyygNI60Kqg+bkQiIzE+s=3D?=
X-OriginatorOrg: sct-15-20-8534-20-msonline-outlook-774d9.templateTenant
X-MS-Exchange-CrossTenant-Network-Message-Id: a4a03474-9fb4-4e4c-f7d6-08de1d5c3afa
X-MS-Exchange-CrossTenant-AuthSource: IA2PR84MB3952.NAMPRD84.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Nov 2025 17:45:10.2256
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg:
	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR84MB3939
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hello.


I enabled espeakup service with systemctl enable espeakup, butn doesn’t 
announce anything., espeakup is runing.

How enable espeakup correctly?. I have a second question, is possible 
get espeakup for grub menu? I need this to load other OS or load snapshot.


