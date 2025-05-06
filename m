Return-Path: <speakup+bounces-1283-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 883D7AACD39
	for <lists+speakup@lfdr.de>; Tue,  6 May 2025 20:26:49 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=math.wisc.edu header.i=@math.wisc.edu header.a=rsa-sha256 header.s=selector1 header.b=lr/Kh77Q;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 199833829E7; Tue, 06 May 2025 14:26:49 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id E7E8138215F
	for <lists+speakup@lfdr.de>; Tue, 06 May 2025 14:26:48 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id C5C59382976; Tue, 06 May 2025 14:26:41 -0400 (EDT)
Received: from mx0b-007b0c01.pphosted.com (mx0b-007b0c01.pphosted.com [205.220.177.71])
	by befuddled.reisers.ca (Postfix) with ESMTP id 78F3B38215F
	for <speakup@linux-speakup.org>; Tue, 06 May 2025 14:26:41 -0400 (EDT)
Received: from pps.filterd (m0316043.ppops.net [127.0.0.1])
	by mx0b-007b0c01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 546Hh5Id015483;
	Tue, 6 May 2025 13:26:28 -0500
Received: from bn8pr05cu002.outbound.protection.outlook.com (mail-eastus2azlp17011027.outbound.protection.outlook.com [40.93.12.27])
	by mx0b-007b0c01.pphosted.com (PPS) with ESMTPS id 46e3ftq8kp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 06 May 2025 13:26:28 -0500 (CDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JXibnPvurZ5Jb6nxL238zk8P//7ALAyGWtmKZvkRPOa372Gp8YAuYpz28w81K3H1lRCSTT32F8GahRYfI1KCug0jFhyk5S9JZu1RHMHJwwZbjcCWZkyeuHMiZQmwAXZaxwdqfQ+F5FpTIO8TFYlkD6W7UcBlba2NkYbrXmIR1KVeDp3KIqrY7W0ZUumJuq6kBeHJLoZy3smwFL/jJ40yjvsCi9zva5BT2Dw6ei6LJ1knNwrMe9ChQDWNdOlfpCIEpKvGTI+GnFA1dTS9Wg+tHCs/yGdufUdndGwyicNFP3XodHAHLrNKZiQKJja+2pUiFg9HuZGe7311EMaLE+Mzaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=alOHzQwUhpIPeAJ/WAOWZtmsSPB20Qwpab/vN6ZFuiQ=;
 b=tI2Yhueyq/EM1AFQSSqyvmtW5ql2MTiiPxKg5/r+0PgNt/7kwi4aVNip3CcAKk4UdCZ48ZzmhOJ2TuFXVO5zTkiKmzCUE9yuTmrnnGVkbkICYHmqP7YDewaWo3Cp0NoOxOIiG3yzIDb8YFdILrvB6qV6L+VVXPbhlzUfb14zgPYRtgh/m1ru4bws4Hj/LX7HfcmKVxAo+m7NvFHUhqorfM2aNhu0OH78geGfw/3L2atzihKhLeAwDt/4jSshzO7RwIjykrUXeIHmz8Pn9/oH6GBYC7/kSxCp9toZ3P1CP+WA64ggMUK6wBuznc0DW+rIez+Ak2nMwIniRNG5sChbuA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none
 header.from=math.wisc.edu; dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=math.wisc.edu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=alOHzQwUhpIPeAJ/WAOWZtmsSPB20Qwpab/vN6ZFuiQ=;
 b=lr/Kh77QyD1WAbSlYPfdoH86qU2f6riDiNE1zqDZrZOtFap5TuQ8/Anf1y80vgkIbXDwp7SyXPis2Jnp1w+s3TvrHaqjA3ZbpPLwVCYRLktpqm5brpkKyuSmYik2qE1OWq7EkzKLS4Ax2VBnL98i9UfXrvRK605H3HcQcmWJ0l+oHjAGobSLJt3Cn+ZSTdn79mUD07ej2GOa8GHm/TpQjcvMaiUdCM5yZiAuI56BeWgq9OFKpCTljpDYqRMYYweEWv+vgZnmZmQ9wdNtOHSHJClmiap2gByyA240K/uJPB/lo+TTYOUDMGIBXj2cdYqHehCA5Od0xnY1W0KLi2x1IQ==
Received: from DS0PR06MB9877.namprd06.prod.outlook.com (2603:10b6:8:1d5::14)
 by BY5PR06MB6627.namprd06.prod.outlook.com (2603:10b6:a03:21f::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.26; Tue, 6 May
 2025 18:26:22 +0000
Received: from DS0PR06MB9877.namprd06.prod.outlook.com
 ([fe80::a347:6162:9bfd:9b91]) by DS0PR06MB9877.namprd06.prod.outlook.com
 ([fe80::a347:6162:9bfd:9b91%3]) with mapi id 15.20.8699.019; Tue, 6 May 2025
 18:26:22 +0000
Message-ID: <2c890d5e-fbe9-43aa-bd71-041c34ae98b6@math.wisc.edu>
Date: Tue, 6 May 2025 13:26:21 -0500
User-Agent: Mozilla Thunderbird
Subject: Re: Load speakup module as kernel parameter?
To: K0LNY ?? <glenn@ervin.email>, Gregory Nowak <greg@gregn.net>
Cc: Samuel Thibault <samuel.thibault@aquilenet.fr>,
        "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <55a2cd5c-4b26-4c77-a55b-cfaf59d74316@math.wisc.edu>
 <aBklhtM_CN4OmF3L@begin> <781e661c-7ee3-44ab-8da3-a69e7dd21d39@math.wisc.edu>
 <aBk1N295aRxq7LAP@begin> <d8af1f2a-eaa9-4f91-adb2-e2c3cdbf1ebd@math.wisc.edu>
 <aBlwpQWdLhedVVNx@gregn.net>
 <6c8093f9-e75e-442b-9d0c-570d066056a0@math.wisc.edu>
 <aBl-sbHNyN6NRrrs@gregn.net>
 <14db84c6-0360-44b0-beb2-54d7e5c424d9@math.wisc.edu>
 <008801dbbea3$075d66f0$01ffa8c0@nucwin10>
 <2cee115c-569e-4d91-8ce0-93a57c95c445@math.wisc.edu>
 <008c01dbbea4$6c522b80$01ffa8c0@nucwin10>
 <e960a70d-b3a0-4502-95a3-82285031b153@math.wisc.edu>
 <009a01dbbea9$feae2e20$01ffa8c0@nucwin10>
 <d8ee99cd-3883-413c-80a8-df492a861f5d@math.wisc.edu>
 <00b001dbbeb0$e03dce30$01ffa8c0@nucwin10>
Content-Language: en-US
From: "John G. Heim" <jheim@math.wisc.edu>
In-Reply-To: <00b001dbbeb0$e03dce30$01ffa8c0@nucwin10>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: CH2PR17CA0017.namprd17.prod.outlook.com
 (2603:10b6:610:53::27) To DS0PR06MB9877.namprd06.prod.outlook.com
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
X-MS-TrafficTypeDiagnostic: DS0PR06MB9877:EE_|BY5PR06MB6627:EE_
X-MS-Office365-Filtering-Correlation-Id: 3c9e881a-cd5d-44b9-826e-08dd8ccb8065
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|366016|41320700013|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?YWw5c3BZSnc2VmtjdUE1YXA4Mk93aGxtbXJnb3E3MU1Hd05ZcjFkdHg3RUdR?=
 =?utf-8?B?MitFYm5LVUZ1ckdQRDNUKzlBUkwra25GcjZnR0xQbC8xTVVpWUIxeUV2cG5w?=
 =?utf-8?B?SFNXWGhPdjJsRjZvTFBtakczUExoY3dDYlVzYWxzYTdKalFxNXVNZVpBVVlY?=
 =?utf-8?B?eHVWOTFmQW1WYThUdU5uTzluc2gxaU1XcUtCWTFLU2VlbEE0RnA5cUxZSnlj?=
 =?utf-8?B?SFVXZ2pzSXdMTk9EM0xZR1VVR0V4ZlUrZDFqaHhTVHQ5WHNjRnhxOG9NMjBF?=
 =?utf-8?B?MjF1bTlXK1Z3ZEtSaE4zUklxNnY3aElkWEZDYXQzbTIwOVVSdHlKV0lVMEsv?=
 =?utf-8?B?NjUzRU1QSHo4NFM5eDF5czhDeTZTb29FZjN2WFpGNXJBb0duTTNUR3RUM3Rk?=
 =?utf-8?B?NVkrVVVrVzJpL3dJaTlETWhaM05tTHE4WFMwelJDaW8yeERrSlFvTnJoUVBL?=
 =?utf-8?B?OVJYRDNWSytzWnRwS2NyQ29UNVBKU0JkVkNkQ3REOTFpaFR5bmhnNkIweDM2?=
 =?utf-8?B?UkZ2emk1REdPZ25oMythOUFrM0pBMFJGWi9xZmVtbWRxVCtNUkwwV00wcEp0?=
 =?utf-8?B?bWdrbFFpSmpUZ1B3Vk1Td08yTytQaW85SHZsalFTVjlHNUpNTy9HMFQxWlNN?=
 =?utf-8?B?SlBmMDRqa3FHUzJsNUJlUWkwQWZGa0V5ZmVsZGhnQ2pVT2s4VTBZay9kQ2VE?=
 =?utf-8?B?MUM4c1dVS0ZGdGFCRzc3UW02ZHRuOGtML0NLaEdwWSt0OXdOZ0FBaVlnRi84?=
 =?utf-8?B?cUsvOUFRQnBjaFBiWDhFY1lOS21IQm5wZ0tjUzVZKzJSRHk3Yml5S2xsWTZm?=
 =?utf-8?B?TitLOWdDWXdjdTh0SW9zWkw4ZW9SVGc4MFdFUS8xaEQzelhiZURjUXdjYUND?=
 =?utf-8?B?NHRkeWsrS1FEdWhhczlFMUxsQ3JQVXgwZVBLM1ZSNHZRS2RzU1hJK3MzeVJE?=
 =?utf-8?B?R2kyWW92WFUzQ0VnZno0NHdkVkNSNER2MTZTczJZa3NsaHJvVWhwTGQxalkw?=
 =?utf-8?B?Z1N2ZU5SMFkwNTBFbFFqWXhFei9oZ3ZNc1lWeVlTbktLRlYwUWFCc0xBalIy?=
 =?utf-8?B?K0M2djZQMThHa3FWOHZVVlZHRXNackYrWmpwMnpoU2tBUUpxTG1sVDBLcFFR?=
 =?utf-8?B?R05vNll0WWMyYkl6SjdsMUNVVWMrRlR6cXdjb1piaDZ1Y21uUkY2MTVNMTQ0?=
 =?utf-8?B?Q1poeGRtaEZZVEpzcjhEcnFxRC8xOUNFTENSMXh6R1p4ZmR5U2NueDJxZTNR?=
 =?utf-8?B?L0JyQ2ExMTMzd1d0Q1VVcVd5K2JoMzNXbzNTUlJlV2RCRjZBdlpaTTd3TEhs?=
 =?utf-8?B?OVZsNEROT280RDRjdjdIODJja0ZLOXcvSFZnWDVYUXhkeUlOejhxcVh5TzY3?=
 =?utf-8?B?MDdHd3NyNEhNd0lBWDIrY3E2N3o3ZUdpUzMrR0ZlZW5pRUdrVENrQzdrcUM2?=
 =?utf-8?B?NTQ5M1ZnTTVYVmVrNnA0NmFxZFovV040eXd1ZnJocWt4UUwwTC90cFZPc3FS?=
 =?utf-8?B?K1JoL0N2QmFyQy9ZL3RYUGxNVDNZVXFCUml4OTM0NnlZczI3RVJ0WjdNTEx0?=
 =?utf-8?B?Nkp2UTZiYUdBMi9kQjRmOUdBN0IrZHJYS3hmN1QrczlRVnNFSTY0cXZDMmV5?=
 =?utf-8?B?NzNHUTg5NGtLU01wWC9iNll5b3oxZ0lYRVZaK29XWlpncVdHODE4MWswQmRZ?=
 =?utf-8?B?eHg5blIvaFdRYVcvQkhXRE5HUzJUL01uRTBDbVlVRGJFRkZ3UVM3RVA3cmEx?=
 =?utf-8?B?dFV3dUpnck9XWU1DeEtVcjdJS2NlREhJaHJEakFJSVI3VFBIREYzYTVINHIy?=
 =?utf-8?B?dWdrTVcrcjFmbnBEYnVzRkpvbWd1Y2liUXpOaFZEOEtsNFN2ZXJyR1R2R2hO?=
 =?utf-8?B?TFpjNVBtUHJxa1luMTFtYWF5S2tZRU1FK3Btazc5MGlPVVVMZ1VpbEplc0tz?=
 =?utf-8?Q?TrDarYuLE90=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS0PR06MB9877.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(41320700013)(1800799024)(7053199007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?dTFzK1NkeUFBSU9YWHlCeEtWWU4wakFSL3czWE1YWjZnczVzdFdlQVJhcDBp?=
 =?utf-8?B?aXVWZ0VMeWdNMUV4ZUJ2dDFKL1JManBjMzdiYzc1SVVENXZZOWc4ekJMN3ln?=
 =?utf-8?B?SE5PNWlxQVF2bWJ1VG5qeXY3Z3VOVHpMc2dlUTUwYld2ekcyQXJ5YmNZQUZY?=
 =?utf-8?B?d0Y1bHdXLzNCVkZqYVJLeTdPTXhvYzRBcks0czRsV1FqbGkvN1RjdTNYK3E1?=
 =?utf-8?B?MDFPckhuUHo1L2UvTEZ5QXZzckZCNnRhenZQMlhjZmxJN0F2UWRNNzlhV2ZM?=
 =?utf-8?B?YU5rVkRkNnVlOE1sRUUxcEp0ZW9zRHhkNXQyVmdDalNOeXhZL0ZmbUsxemV4?=
 =?utf-8?B?MEc0L2NVMXg0U2g4b0hPYy9XeDZVbXBmRTVOU1FxcDk2OUsyY2hNVWgrNW5B?=
 =?utf-8?B?NWxoeGhjZGRrZ21qaUNCd2RBMDRhOFk4eWRpd1B6RFpFMEVMK29PdFNRUTlO?=
 =?utf-8?B?Zk9WRzc4NTgrNmQ1TWJYTzdUWDRDdTlJRGdIRGVxdUFNaGljRHg2T0hDdy9p?=
 =?utf-8?B?enNMbTF0c3FuR3pZZTY2a1pZR2s5WFBmMGxaVVUyRWtxdWJsTzA0ckpwZmp3?=
 =?utf-8?B?eFR5d3JYRVY1UFdxRllBU29PMFp2RU9qSjRQUXZuWHlkSGdVcFdubUQ1Ym8x?=
 =?utf-8?B?QVIyWjM1MVhIb3FGNkRCVUVyenR3blRvcDhnb25XelNmYVFYOUJ5YWJRZ09Q?=
 =?utf-8?B?UVlNNGhXNGVFKzQxK2o4TERuVytzWGhUMkJEYVoxVnNUcUUwMW5SN2lvcWFW?=
 =?utf-8?B?Ykg2SFd0K1BwT1E1OGwyQU5WU1NjeDNVVVhGN0ppLzZHbmRyMndyWFFqQ0xT?=
 =?utf-8?B?cWxobFpRT2NscXJuQlQyeURrZDdYSWNqdjZaZG9oVG44aFNHbzJwRlVQTktk?=
 =?utf-8?B?QjB0UGN1c1JFSlExRkRTVjh1dkV4ZEEzM3psR1pMcmE0WWQ1ZmxMcEl4MnJG?=
 =?utf-8?B?dXpLa09LRVlqaXFialI1azlURjFNalhacnJlMWl1cTVFU1hZYytnUWVjeUJU?=
 =?utf-8?B?VUpSL29NVjEwOGZBY3ZVK3luOVR4NFVTN1RuYU1oTEdLNlY2SHVWeTJpSllZ?=
 =?utf-8?B?emZVYUdHdUJSaWlPZzNiMXZERXAwUmkva1N5WUhNZktvS1h6N2lyVU5YRU14?=
 =?utf-8?B?M3V0SGErdndoY295eTZaS25rTWRCNkR1KzZnZ1R2SVRpWWxuRjUrbEF5a0ZI?=
 =?utf-8?B?MElkM0JsRU5Td1crMTZOZDBqcGZmYmxHWTU1ZDMrWEt0VmlWa2REcWFkRE5q?=
 =?utf-8?B?bE5FNy9FTk5xcDg4UlAwQ3dPVkFwanZNU1NYTkFkWVhiL1dtSGlaN3lQdU9t?=
 =?utf-8?B?ZTJqUEt6aUN5SVVzeUlOVmhGcG0ycC9uMk1UVlJ6VUJqS1RFVTcwMFdiZmxS?=
 =?utf-8?B?MUphcWM4b04wMFR5Q3F1RVFhZEluc21QTG1NaHRqZ1QyMzZuUWdWajc0WFVw?=
 =?utf-8?B?Q3hPN3VPbjF6VkpmL01vYSt3RlFVNHI4ek9uVnZQTVk2SFUyLzdkcllEZFZK?=
 =?utf-8?B?akJOMTU4bFhMd25GbzBMMUp6RUhGMTJqQkNvNTlLS3gxdk5IMEJQN2NodFdp?=
 =?utf-8?B?LzNMcldEVms0VXZ3VXlieVF3K2lsb1FvT0hySlgwV2t4Uk5rV1VFMTZTZncv?=
 =?utf-8?B?NTRKNHJVdTRlbFI1ck1mOFYyR09wdTEwUHJHSkRpaTdjNlMxQUI5WVgxOVhs?=
 =?utf-8?B?UXNva1Q2UkVNcmU5VWt4MjVOTWFJQkY3UWJsMWRXVHRQMEYvQUZHbFgxOG00?=
 =?utf-8?B?eFd3eWtyeXBZUmJvbjV6TWxDNlFEWGZQeEFJdEJWQzBOcEpwUGw5WHVsU0N1?=
 =?utf-8?B?d1U2UE1jd0lTS0ZWcjdZOTN6eDJYMU03SG9yWXMzazY0WFFqQXRvelJ6Szda?=
 =?utf-8?B?bW8zSnA5VkIzY2hMcVdZTFkvTUJqWDRRQURLdHVQejFHc09rdTgvSVZ3OVNT?=
 =?utf-8?B?RG5sTzAyTFNLU1NFaXdKcUcyeS82Z0xxWUU3b05zVEMyaXlZTXVQNUtQai9x?=
 =?utf-8?B?dlo5QjZVekE0T0wwbEJibkt3ZGw5VTB5ZlRQaXhJbkMyOW9RNUovTkRBM01L?=
 =?utf-8?B?SnZzZ2p6WlArUUVxSWplUUJjQXJmaGpoMXRTVTQzdEJlbGpNVGtDdFRvNGtv?=
 =?utf-8?Q?DPxA=3D?=
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: 3c9e881a-cd5d-44b9-826e-08dd8ccb8065
X-MS-Exchange-CrossTenant-AuthSource: DS0PR06MB9877.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 May 2025 18:26:21.8289
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CnNNgK2SgXF+LvzYVhyVzS/InBe956Z3CDv2Tw6JTEQQdgxYR4mdXSlu/2QitGMc
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR06MB6627
X-Authority-Analysis: v=2.4 cv=NInV+16g c=1 sm=1 tr=0 ts=681a5454 cx=c_pps a=k6qe+EuqS5agFzeLFj3oqg==:117 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=dt9VzEwgFbYA:10 a=lre9DRYkaIEA:10 a=hEK2XftRAAAA:8 a=qPKtzgQbAAAA:8 a=q59YMD97Bet6b9XfiCwA:9 a=QEXdDO2ut3YA:10 a=pvvZm7_9ER1OwvpV3Ftp:22 a=OTAqJWGB1laLS8RTg9aS:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTA2MDE3MyBTYWx0ZWRfX7YhJ5Yn9KmUT 6FrdtMfhH/i9PwfjpG0C3Syqu1gIlCoWjtkzX3CngbW+JjiVluQn0EgOFwpf4kUynzjp5YJLpIb rvgN0StL3L7/Lv1/0gIZD1eAREelJHQPd/Tluv1Kh2cWUsuSH9NaJa65RK0w11U5EanBhK5H1mv
 Ecb3FbI5j1SoiiU9QMkFG0+HTM1U4HUaanG9vMwNWJ2CGDoPVlT5hmWtO9nHH5aD38Otd7nz1sM JTjRNw17oMy5PNsx2YyBPrabFzZROar9Fmfho7/KG79HBQtsxO10TiZ8KvHTMTPOe0xw5KeNSYa 7l9ksbtbROw/2CE8GLI0fjvIr0w4wh8BkkK+TE84cBzDlddYoGrypzZj8wyDoZmPjF5DHq4USU0
 cGPpo5LJffhZSlhscwESYPHzovmHBehDQm5itC6MyLoTzaNgRphk+n+Kb2h2XAZPaJ8loYYC
X-Proofpoint-GUID: cY1TI82EDMfVPrD0iljirlSAbw2jAHBu
X-Proofpoint-ORIG-GUID: cY1TI82EDMfVPrD0iljirlSAbw2jAHBu
X-Wisc_ValidFrom: true
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-06_08,2025-05-06_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=999 mlxscore=0
 suspectscore=0 spamscore=0 impostorscore=0 phishscore=0 adultscore=0
 priorityscore=1501 malwarescore=0 bulkscore=0 clxscore=1015
 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2505060173
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Just to be clear -- you are saying this software has the ability to 
modify the squashed file system w/i a GRML iso file?

I mean, GRML has it's own persistency options. Maybe it knows about them?



On 5/6/25 1:01 PM, K0LNY ?? wrote:
> If you download UUI the universal USB Installer I mentioned, they have an
> installer that you run whenever you want a writable live image on a USB
> drive, and GRML is in the list of operating systems that you can select, and
> it downloads the latest image ISO.
> Then you can edit it all you want, and the changes will stay until you
> change them.
> Glenn
> ----- Original Message -----
> From: "John G. Heim" <jheim@math.wisc.edu>
> To: "K0LNY ??" <glenn@ervin.email>; "Gregory Nowak" <greg@gregn.net>
> Cc: "Samuel Thibault" <samuel.thibault@aquilenet.fr>; "Speakup is a screen
> review system for Linux." <speakup@linux-speakup.org>
> Sent: Tuesday, May 6, 2025 12:57 PM
> Subject: Re: Load speakup module as kernel parameter?
>
>
> An iso file contains a read-only file system. GR ML uses a squashed file
> system w/i it's ISO file. So you'd have to mount the iso on a loopback
> device, copy off the squashed file system, unsquash it, make your
> changes, squash it, make a writable copy of the iso file system, copy
> your new squashed file system into the iso file system, and then
> recreate the iso file.
>
> As I said, GRML has it's own customization options. I'll use those.
>
>
>
> On 5/6/25 12:12 PM, K0LNY ?? wrote:
>> Also, you don't have to write an ISO to read only media.
>> You can do that after you have made your changes.
>>
>> ----- Original Message -----
>> From: "John G. Heim" <jheim@math.wisc.edu>
>> To: "K0LNY ??" <glenn@ervin.email>; "Gregory Nowak" <greg@gregn.net>
>> Cc: "Samuel Thibault" <samuel.thibault@aquilenet.fr>; "Speakup is a screen
>> review system for Linux." <speakup@linux-speakup.org>
>> Sent: Tuesday, May 6, 2025 12:06 PM
>> Subject: Re: Load speakup module as kernel parameter?
>>
>>
>> If you booted a ubuntu on a CD-ROM, you can make all the changes you
>> want to /etc/, /usr/bin, or whatever and the next time you boot from
>> that CD, it will do exactly the same thing it did before. You can fix
>> stuff on the hard drive of the computer you are booting on but that is
>> not what I am working on. When you boot Ubuntu, you can press
>> control+alt+s to start Orca. But GRML uses Speakup, not Orca. That's
>> fine because it is designed to help you rescue a broken computer. I just
>> want to start Speakup during boot on the live image. Like if Ubuntu came
>> up talking instead of making you press control+alt+s.
>>
>>
>>
>>
>>
>> On 5/6/25 11:32 AM, K0LNY ?? wrote:
>>> If you have the image on writable media, you can edit it.
>>> I was working with Raspbian on an SD card and I messed up the fstab file
>>> and
>>> it would not boot.
>>> So I plugged the card into another raspberry pi and used the cp command
>>> to
>>> copy my backup fstab file back in place.
>>> I could easily put a service file in /etc/systemd/system.
>>> You would have to wait until first boot to run
>>> sudo systemctl enable file.service
>>>
>>> Glenn
>>> ----- Original Message -----
>>> From: "John G. Heim" <jheim@math.wisc.edu>
>>> To: "K0LNY ??" <glenn@ervin.email>; "Gregory Nowak" <greg@gregn.net>
>>> Cc: "Samuel Thibault" <samuel.thibault@aquilenet.fr>; "Speakup is a
>>> screen
>>> review system for Linux." <speakup@linux-speakup.org>
>>> Sent: Tuesday, May 6, 2025 11:26 AM
>>> Subject: Re: Load speakup module as kernel parameter?
>>>
>>>
>>> Well, this is GRML, it is a distro designed to be run from a CD-ROM or
>>> USB thumb drive. If you change something in /etc/, you will lose it the
>>> next time you reboot. I don't know if it's even possible to change
>>> anything in /etc/ while running a live GRML image. It might be mounted
>>> read-only.
>>>
>>>
>>>
>>> On 5/6/25 11:22 AM, K0LNY ?? wrote:
>>>> One could use a startup script in systemd/system or maybe a line in
>>>> rc.local.
>>>> Glenn
>>>> ----- Original Message -----
>>>> From: "John G. Heim" <jheim@math.wisc.edu>
>>>> To: "Gregory Nowak" <greg@gregn.net>
>>>> Cc: "Samuel Thibault" <samuel.thibault@aquilenet.fr>; "Speakup is a
>>>> screen
>>>> review system for Linux." <speakup@linux-speakup.org>
>>>> Sent: Tuesday, May 6, 2025 11:17 AM
>>>> Subject: Re: Load speakup module as kernel parameter?
>>>>
>>>>
>>>>
>>>>> If you want to start speakup by passing parameters to the kernel, the
>>>>> speakup modules you want to load have to be compiled into the kernel,
>>>>> unless grml does something nifty I don't know about. If the speakup
>>>>> modules are just modules, then the earliest stage to start speakup is
>>>>> inside the initramfs. That's still not as early as the kernel
>>>>> decompresses and loads, but it should still be enough for most
>>>>> purposes.
>>>>>
>>>> Hmm, I guess figuring out how to load hardware speech drivers isn't
>>>> worthwhile. It might be possible to install a custom kernel into a GRML
>>>> image but probably a more useful thing to try is to start speakup with
>>>> software speech automatically during boot. It is not too difficult to
>>>> start speakup after your machine is done booting but it would be better
>>>> to have it start automatically and during boot. I'll have to get back on
>>>> the GrML list to see if I can make this new approach work.
>>>>
>>>> Man, I should have asked here first instead of spending a week trying to
>>>> load the speakup modules at the kernel command line.
>>>>
>>>>
>>>>

