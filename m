Return-Path: <speakup+bounces-1271-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id AA8F2AAAED1
	for <lists+speakup@lfdr.de>; Tue,  6 May 2025 05:05:09 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=math.wisc.edu header.i=@math.wisc.edu header.a=rsa-sha256 header.s=selector1 header.b=rYPVLa0W;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 1A8AC38295F; Mon, 05 May 2025 23:05:09 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id ECDFF38216D
	for <lists+speakup@lfdr.de>; Mon, 05 May 2025 23:05:08 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id B5AC33825E3; Mon, 05 May 2025 23:05:01 -0400 (EDT)
Received: from mx0a-007b0c01.pphosted.com (mx0a-007b0c01.pphosted.com [205.220.165.71])
	by befuddled.reisers.ca (Postfix) with ESMTP id CB22F380D50
	for <speakup@linux-speakup.org>; Mon, 05 May 2025 23:05:00 -0400 (EDT)
Received: from pps.filterd (m0316040.ppops.net [127.0.0.1])
	by mx0a-007b0c01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 545JIiTD031464;
	Mon, 5 May 2025 22:04:54 -0500
Received: from dm5pr21cu001.outbound.protection.outlook.com (mail-centralusazlp17011029.outbound.protection.outlook.com [40.93.13.29])
	by mx0a-007b0c01.pphosted.com (PPS) with ESMTPS id 46e603smkr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 05 May 2025 22:04:54 -0500 (CDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vniIU8k1fsumArA3RAR2P8LV98I54rxCv3Vi32If+DniSh19goEKqqf5Ofx/pQgZbZrRaVPlJxqCpumG3PErqbSeI2Kb1P1wWmkOVPx0HmsmG/F/92y0rXFuvUUd1Dw5uvGiJ+xCfL3DY0zJbP1iVMoAWUVdbklR6f6oKZyyD/q5D5VE73TlDqQqZkqx1VJq7Nei0Gn1gnMNNZfzEcsI87T5kph3ALawOU86qV6STPfjOzfcWiwXDO894SUlotfBN3VNqhl6d1bah/J0P/+Ctu7jfiL5bLgG0rjnGmMtUOTmqyPgJ7jOT49BcJ+ED1OThZPx7j9ZCf/0EWNLqFSPLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=r7IEjVZRF21lES3xYZXh9GaycIaPZsCUxo6PB3OSDzo=;
 b=c4IBFofv0bycphUQOcI9pL9sSV07p0UWyglmJdjmmepw/B+TyE6wXDH1tr0IV1LD447B7oGnd3+uJgobY+6S0cpNFqwFb6Dqb4Wcs7RZt4YLPf3f0h3dMa/iztWFowz75+2PEb4G3NtI6TA9/9TDD+p5migGrSnleettUlQJVlSQGbNfHZzC58wfBn9LmhV46vPRmBy5wjS742t5OakHfDhLE3RobmL8fyyDFsE/IroJtsO5sc+/uNyxid6Q7QGLxSyTPy3B7uDbX++yg8zcy9m5jXgy3P2qtT/Lay6ZHAHC5zo/pesNZQRd37M13jzsoV+swNNYB3hwd6UM7btHGA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none
 header.from=math.wisc.edu; dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=math.wisc.edu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=r7IEjVZRF21lES3xYZXh9GaycIaPZsCUxo6PB3OSDzo=;
 b=rYPVLa0W3DwIKUWnneIzVVYzIa+JbxMeTIG5h+W5rBiKx76bwmScyFJ/uJc70Xcv+zC7B8zVoTtPKyn8NfUXjlje/wZJN9QScqkrRxeLhTc27HYR/qW+iFAMQs7ziDhFRKSH8DyE6eEtDxgDIZoWZIkfxJnPLVYX2RhZN55LYzGlUqk+WebEaNHAKV/bOmnQO/Fjn2nmVfBNC9bL6XhpXgH62+10/b/G4rmqqOatp1nRExRj2112l7zmR3538nv3vQrrxq/grtr4j1OqdUrY0bZ6nMCxy/ywYXvZ7r28Rwx/XzoCplaxUrIvAcNmyuPuv6sRgVkAPheRXSAlt2Rfdg==
Received: from DS0PR06MB9877.namprd06.prod.outlook.com (2603:10b6:8:1d5::14)
 by SA2PR06MB7418.namprd06.prod.outlook.com (2603:10b6:806:141::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.26; Tue, 6 May
 2025 03:04:52 +0000
Received: from DS0PR06MB9877.namprd06.prod.outlook.com
 ([fe80::a347:6162:9bfd:9b91]) by DS0PR06MB9877.namprd06.prod.outlook.com
 ([fe80::a347:6162:9bfd:9b91%3]) with mapi id 15.20.8699.019; Tue, 6 May 2025
 03:04:51 +0000
Message-ID: <6c8093f9-e75e-442b-9d0c-570d066056a0@math.wisc.edu>
Date: Mon, 5 May 2025 22:04:51 -0500
User-Agent: Mozilla Thunderbird
Subject: Re: Load speakup module as kernel parameter?
To: Gregory Nowak <greg@gregn.net>
Cc: Samuel Thibault <samuel.thibault@aquilenet.fr>,
        "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <55a2cd5c-4b26-4c77-a55b-cfaf59d74316@math.wisc.edu>
 <aBklhtM_CN4OmF3L@begin> <781e661c-7ee3-44ab-8da3-a69e7dd21d39@math.wisc.edu>
 <aBk1N295aRxq7LAP@begin> <d8af1f2a-eaa9-4f91-adb2-e2c3cdbf1ebd@math.wisc.edu>
 <aBlwpQWdLhedVVNx@gregn.net>
Content-Language: en-US
From: "John G. Heim" <jheim@math.wisc.edu>
In-Reply-To: <aBlwpQWdLhedVVNx@gregn.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: CH0PR03CA0322.namprd03.prod.outlook.com
 (2603:10b6:610:118::27) To DS0PR06MB9877.namprd06.prod.outlook.com
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
X-MS-TrafficTypeDiagnostic: DS0PR06MB9877:EE_|SA2PR06MB7418:EE_
X-MS-Office365-Filtering-Correlation-Id: c6568dfc-f132-46ee-8396-08dd8c4ac4f9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|41320700013|376014|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?M3R6SDFtdXRqOFdReHZHYm8weFRxQTIyRkhBZlFkckp0RHRCck15TnNtK2I2?=
 =?utf-8?B?ckEwWVdtS05VZm5TYlhrdzVrdGxWdHFRYXhucXdNNURqRHN1dkdFY0Qrc1pt?=
 =?utf-8?B?Unhvb1hILy8vNnZiM1hSWkRvY0ZaMGd1aUdZTlYwbjhaR09YbWNpMFFzeE5E?=
 =?utf-8?B?QVp2YlQ1TXFsbjNKNnMzaUwyMzFkdVJNeEZYQSs2Zk1vZzRlaTErR1JsM2pW?=
 =?utf-8?B?bUQySzdCQjRSVzI2anZlMTBDUkljSFFuM0hCOW1oSXk5eDh6bjhCNitFdzJt?=
 =?utf-8?B?QnpyVGo0Ti9aSzFjakFiNnZGMlA3TjV6bWdnM1dTSk1LUkR0eVJYTDhBYkxM?=
 =?utf-8?B?TzlmZklXMkF5M1lFUTJwdXM0VDRsejFMcVFQMkFTaEVScDBiUHh4RjdGS3dm?=
 =?utf-8?B?TVVBWlVnb1EzUGJRT091Q3R4c0YybEQ2RnB1dFRZNitYODZtVWFjOXMyL21h?=
 =?utf-8?B?aldIaDhadjZTOVFuZVdJVjliZWFPRkZEUXVwcVZTeDFuUEp2U0hwcjllbWxB?=
 =?utf-8?B?aEQ4OUptbTdaSzkyeWNPeWl1dzlZeFRNMFlCMnd4MUd6RW1KL29idTNPTm1C?=
 =?utf-8?B?VGZ4azA2U2x0aFdmcEVqUVpCZTY3SGhKMnRYUUtwTXpzWXZYYUl0NU02bkZn?=
 =?utf-8?B?M0ZyZjFFOXMrNDhJMGFRdjVxMWFKQ3M2SVE4eTV6eWFqTXlMdXhyV2FwOGcx?=
 =?utf-8?B?d1FLd09nNUp2YytKNW9BRmY4eGtSM2htMCtITTV2c0FPOVJFeU54TVBwVjJG?=
 =?utf-8?B?T3VKTkNKM0JreTRqai9icGo5RmtMdU92YXlncmpmTndjc0tnci90NzI3Mzlm?=
 =?utf-8?B?NldlMVcwRnZaeUIraVFDNHlpMGhzaHluZDg4elVhVnJtVmkzZ1Bnb0JKOVJn?=
 =?utf-8?B?UWwyUXRlMVVtbjRvZy82dDRuZCtLMGFIUmwvdW1TYmY3d1pmVWE2VzRYekc5?=
 =?utf-8?B?bG9CYnZWL1NGYkdHeHFobTdtZTh6TDlLVmpwQzZqV29pelY1NHByakxhcjcr?=
 =?utf-8?B?Z1AxTy9JQUY1eFZwZGFmOHEyaThEeXNkWEVpczk4MU1CTjNQcXAvbDFhT2dl?=
 =?utf-8?B?YzlmR0lwWWttQWdJZzM2M2hobGk4VXVNZWJMQzdDR0gzWEtLZGx6VzdJdDRC?=
 =?utf-8?B?MmRydWlDZVM3OC9TQWtxWkJiVVptNkhiSm53V0R0ZzNNcVVjSm5Xd2ErL08y?=
 =?utf-8?B?a210SVlaYWNKRVJtRG1UZjNYRlVlamh2eWpLMVlRUFo3SlVxa1liN3VIcllY?=
 =?utf-8?B?OWJGN3NIMWxmTzhXSlU3bWhzem1EaTVoMWRKN1BLZUVKeDVWU0ZrNWpZSVcy?=
 =?utf-8?B?VDg5aFVaS0dkLzlhYnZGbVlzR21TRjJBaStxMk9VaGhETGpZQ1dqTEVuOThz?=
 =?utf-8?B?WXBINmtjTmplckxzMlQzVXNjV3NPYXUxMWNHVm0ybFBXSzY5NkF3MVdoOVl3?=
 =?utf-8?B?WnM5OWI5TnZhMWEwd3VWMmYrV2dJaEFwSGhwZWJ0cFlkdEZhMkdnM2JEUUhv?=
 =?utf-8?B?NUtPUlYydVBseEpSTG9lZy9SQWZISlp6TWRzVTZRRVdrZXlaNy8zeXBSaFpW?=
 =?utf-8?B?S2lnQWEyeVJ0Tm4veThFNkV5cnhXaUY3WWhxUG1nUlpFQkd2cXNMc2ROUFV5?=
 =?utf-8?B?TFBqbDJvcEYyb0ZCN3R5ay9ZNFloYS9lY210cUdCMGZhOHRFVHA0Q1pzNVlO?=
 =?utf-8?B?aVUrdy81NUEwMXBYb3lKTHEwakE4NE5BMSthU0wyOTlGeFNjZk90YkFpWTBt?=
 =?utf-8?B?UXAzbXZMN1hHaVd2dHp0YmF3R3dlb25NNFdjUVRTUWl0bGtoeEhtU0s3ZzJE?=
 =?utf-8?B?QXkzUy92T0c0SmZPclBMeXNxV2RhUzNZdENQVzBsYU9vN0h4Yks0a1VHZzFk?=
 =?utf-8?B?TjdDR2RjN0x3VjZycjhKYkY2U3V5VWN3N1lvTk1IOC9RU3Y4R0kyNzErYXE0?=
 =?utf-8?Q?OleiJX5z2ss=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS0PR06MB9877.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(41320700013)(376014)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?bnd0Q1QrckszcmlqcVc1YjcrQ3lWa0plamVMdERYaXFQeXA5QWE3MHdIZ3Q3?=
 =?utf-8?B?cUs5NjZvcHVnd2UyV3VOTDJtY09XVVlxV2dpdGpMeXFBelNiR0oxSTc3a1B1?=
 =?utf-8?B?cWtucVhFbk1XRHdwRk4yeFh3LzZ1Rk1INjE4dkN3d3pHUjNpd050bXQwcWpy?=
 =?utf-8?B?MFpvdUNJbW43MW8rRHF1eXBIdE11dURrQkhDYVRRamRDRExuUVBUUms0VDJH?=
 =?utf-8?B?bXdLdkE2Z0R5TzlsUFVBY1JuMzY1eWhWb1lnU25PWk1SUFQ5eUVZU1dFZU9n?=
 =?utf-8?B?Uit3Qm14MnJqbVBQNHBCdnl5SThJVGxNSzh0OXplSVhUaTN4cEhqMVpFQkhr?=
 =?utf-8?B?VkpSdFRXRXliaTQ3QjU3c3o1TnRxS2tOQkpUbzRQTDJqeDE4ekd1TUZkc290?=
 =?utf-8?B?SXpXWVE4Z0NOc3BSUkFmSWZmU3Vac0d5UnBrL0grajY4WjlLMHc3MjVVdlR2?=
 =?utf-8?B?MkRENjZOQXNpTE5uWUhHVU5HbEcrSDBvYzI5VVBJMVlESytiMDJhS0VWWDF4?=
 =?utf-8?B?b3VVcldaNUVZblNnejhpYWtjd2hkNW0vUmcyT0dzN1BSbzBGYkx5NnN0Mldo?=
 =?utf-8?B?ZUxUaXFZWXJIL2V4dmxRQXBDVmUxZ1pvWlpTc3NhR2t2YmNBcVg0cDBVS3Rs?=
 =?utf-8?B?cWxRa2xVcFNYSmw5dVpYZ1RqWnFGOG1PUktwUDZCQW5vNDA4bDkxdmxRYVlr?=
 =?utf-8?B?YWk5ZWdXK0JQR3gyTnV1bGlwK3JFSHRqQ1NnM0dmbWpjdGZVWWx0N1NBZ2kw?=
 =?utf-8?B?b2ppNEhJc0c5Y1VFV2R2UDZqWjZVS1V5b1JMSTY2VnhUR1R0c2ZUVFJ2OEpI?=
 =?utf-8?B?Und3aEtWMVNqWXBEc05nOFlxTitpL1FYZDFJUEZQbjN2ckltWllpOFB1N1Yw?=
 =?utf-8?B?V0t6V3BhQXBlUS9LSEw2cGZ3OUtqNTNJaHhoWitTZUlweTFPV2luTS94K0xm?=
 =?utf-8?B?RWJTNk9EUFdPK25oTktvVm5mSVpQVkM2bWkycVgxcE5XNHUxZGQzV1NsNTB5?=
 =?utf-8?B?dmMvZElpeU9ETnViL2FaNUdVS2dGQVJqaStyWFB4bnEzemZzOEFRd3ZDeWdq?=
 =?utf-8?B?REFjUmdwYmY4MHVvR3IrV1JYSkZzcXdUdjdmTTZ2MFBlUmZBWUc3Sk1jeVVY?=
 =?utf-8?B?cTRlSlJ6SkRrQlFBRmhkOElnRFBtTFRoTlhueEN2QXd2SWZLNWVHOEl1TnlU?=
 =?utf-8?B?T3d0U3ovcktueTBqNDhFTEFNOEUzTzFicXJ0K1haZnBuM2d5aWphaytkQkRD?=
 =?utf-8?B?VXpvV1lrNHJnb2lPdFpvbmhrc3hVem45WnNGb1U4eDNYN2dFQkN2WThBT2ds?=
 =?utf-8?B?Wi9nSWJZV2hQOUczZVhzL3d6bXo4Q0FBWUlnaElLTjhjNlJVZzBqSU9ONTlG?=
 =?utf-8?B?cUVJODVqQmVsclJ4bktqaUp4em11R2VYVHNCcStrVUszRk5IbUZ3TmgyZmFh?=
 =?utf-8?B?c0lUQi9yL3Y5SmU3TmVDUkltNlF5ZEMyT2FNK281MEFpazlhMGg1QS9MaFI4?=
 =?utf-8?B?TEF4K1VjamZYWGx5UHJjRHdzQXI5bk0yaU50MDJVblJweG1GSVFKTmFmeEJk?=
 =?utf-8?B?NDk0WllYY202TW0wNUFsK3I1SVdSV1RzVkZKSnVoVk0reVJHc1I5cGVERWlu?=
 =?utf-8?B?cG1GemhFWDZ4OFNGQ1ZUaWRmQzdPemc5WStmaHdiY2JLYXdFYjQvS243Z0Nq?=
 =?utf-8?B?Z2Y2a2NRNFExam9SMWZVd2pSMjNhWFdDc0lmSU1xa0UyM0syUkN3TlJuWU4v?=
 =?utf-8?B?MkN1bTZ6WU1HSmhabEFVVHZYT0JvdmhjSHA2ekhaWSswSUdvVlJ6L3U4ZGxn?=
 =?utf-8?B?dzEvMnBjSWJDYlpacXRsSC9Zdlo0cWwyVTZMWVFlSG1TK1RQWEdkL0U5bG0r?=
 =?utf-8?B?L3lPRGl0YjIrTHY3SUthQ0dQTmd4Q29DSlgwNUZZL0QwTkNwTGtQMloyTGt5?=
 =?utf-8?B?VEliRmVYeFBxL3NCVWlGT0dnMCtueXk2dFRmZm9TTU44OWpjUHdRNzAxSGZS?=
 =?utf-8?B?VnNqaEU0dU1NSXZpbldodjlEdzlkQmpvQnhWeElOeHR4MjRnbmM2aFBybEo4?=
 =?utf-8?B?OEh3QmgrY2dTTE5nZGp1eWMvM2cwa0FoUG1KK2QxbEUycFpHWG15elBlVVh3?=
 =?utf-8?Q?QKBI=3D?=
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: c6568dfc-f132-46ee-8396-08dd8c4ac4f9
X-MS-Exchange-CrossTenant-AuthSource: DS0PR06MB9877.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 May 2025 03:04:51.7974
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6Nz0LPmnrC4VTmFhFLmAdjq6m1z9ZseDp++TmdqzITHhWPDWLyHKSCvS8ViEcp5g
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR06MB7418
X-Proofpoint-ORIG-GUID: WE5fVc3i2f7gt5o74XrArd4ZYD-a7JdI
X-Authority-Analysis: v=2.4 cv=LsOSymdc c=1 sm=1 tr=0 ts=68197c56 cx=c_pps a=SA2dW19TPv9rE6CiBNbh3A==:117 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=dt9VzEwgFbYA:10 a=lre9DRYkaIEA:10 a=NALcIvmmxi7feZxobagA:9 a=QEXdDO2ut3YA:10
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTA2MDAyNyBTYWx0ZWRfX3Tsz8FOHs5yv UCBdoJhZfmaITAxvVAdtMI8jUSjAnlvEZI53qSchZSlu9mtTqK4GIRm2aRsLxQT3kFGPqJCPw8K TxsgCo4RTjCQScwSZCh+5j6t0pmoIw0htyeubsWjLOhiZAMp6apZS/j9zfGyclfX5KmYJc04pvS
 5yVz4APkgHiIT3EomyHnmNknAyQTVqXOZkIyjL/9B/MNd/teyZ2jub17Excy/e+utVOSDNP/yrT jdasDeqdAtaCOByVDYJN7R+Hj8JwdeNPccYhKn8gQ05nKqzflOIAMrKR6rhZxK0mpXuzoistpHs l+2IbLftuBbSEkQoO/iNqdvNs20xTEib3jepJGGTeLlB1c7Hdm35+w1Yx1lW5YqpHMJ7qFBFrGw
 LeixvOVnf4eaXj7P6xpgxQ+xnHdVlh15fBdfq/kH6FR2kEEUyk4JnUJTjC+I/Tow2GFbxhMO
X-Proofpoint-GUID: WE5fVc3i2f7gt5o74XrArd4ZYD-a7JdI
X-Wisc_ValidFrom: true
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-06_01,2025-05-05_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 priorityscore=1501 bulkscore=0 clxscore=1011 spamscore=0 phishscore=0
 mlxscore=0 impostorscore=0 suspectscore=0 malwarescore=0 adultscore=0
 mlxlogscore=999 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2505060027
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5


On 5/5/25 9:15 PM, Gregory Nowak wrote:
> On Mon, May 05, 2025 at 08:11:59PM -0500, John G. Heim wrote:
>> Supposedly you can pass a kernel parm to
>> the script that generates the iso file but I tried it like a million times
>> and could not get it to work. Seriously, I tried it so many times I ended up
>> writing a bash script so I only had to pass it the different parameters I
>> wanted to try and the script would rebuild the iso and write it to a thumb
>> drive. I said i tried it a million times which maybe is a bit of hyperbole.
>> But honestly, I'll bet i've rebooted my desktop 50 times in the past week
>> trying to get this to work.
> I didn't see you saying in this thread what you're trying to pass to
> the kernel. Something like:
>
> speakup.synth=ltlk
>
> should work. Both the speakup, and speakup_ltlk modules need to be
> compiled into the kernel to load it like that. Otherwise, load the
> modules you want from /etc/initramfs-tools/modules.
>
> Well, I didn't try that until just now. It didn't work though. So the 
> speakup drivers have to be compiled into the kernel for this to work? 
> Just having them as loadable modules is not enough? If so, that is my 
> problem.




