Return-Path: <speakup+bounces-1602-lists+speakup=lfdr.de@linux-speakup.org>
Delivered-To: lists+speakup@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +BwBHHEF+mkEIgMAu9opvQ
	(envelope-from <speakup+bounces-1602-lists+speakup=lfdr.de@linux-speakup.org>)
	for <lists+speakup@lfdr.de>; Tue, 05 May 2026 16:57:53 +0200
X-Original-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 7C2244CFD1E
	for <lists+speakup@lfdr.de>; Tue, 05 May 2026 16:57:52 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=math.wisc.edu header.i=@math.wisc.edu header.a=rsa-sha256 header.s=selector1 header.b=f6dxFsFD;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 0E57F382A60; Tue, 05 May 2026 10:57:51 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id E19C8382A51
	for <lists+speakup@lfdr.de>; Tue, 05 May 2026 10:57:50 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 97876382A5C; Tue, 05 May 2026 10:57:44 -0400 (EDT)
Received: from mx0b-007b0c01.pphosted.com (mx0b-007b0c01.pphosted.com [205.220.177.71])
	by befuddled.reisers.ca (Postfix) with ESMTPS id C1E82381798
	for <speakup@linux-speakup.org>; Tue, 05 May 2026 10:57:43 -0400 (EDT)
Received: from pps.filterd (m0316045.ppops.net [127.0.0.1])
	by mx0b-007b0c01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6459iOBG3822655;
	Tue, 5 May 2026 09:57:41 -0500
Received: from byapr05cu005.outbound.protection.outlook.com (mail-westusazon11010062.outbound.protection.outlook.com [52.101.85.62])
	by mx0b-007b0c01.pphosted.com (PPS) with ESMTPS id 4dy2umvhdn-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Tue, 05 May 2026 09:57:41 -0500 (CDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=v8k/+UnVwYocRMqEdR/TP6Pt7iZFe7/49mlgIBwXziv6TdesMBli+FqK9TpIMEz0IruMvUq3esXIVFZISgpk5xfoggZuBhUVM+MrGdWP8p/G0aIHnF2LuMGXMorNJpNLd1aD5X9ZeMadTHqVqAo4Qh9ur7lB6pTKUOZ85njhy3JHXN9uBiVxFRX6VrgKx/RL5m2bdkYiJCytDsfhAcHDzdgOa5kksAweB1b9JOpromXJeyZ0y49nzNT2f/tgosCRdlx90c/7wW1LspcqEWbP1086gm1vRs3nlbafo8t/Dgs9R7UR9w+DqPI+841kaBLvk1p15js37FiCdVN206wRvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FayDrGfv+pl3WZRHUDX9RBRs0jqbAP6+KRK8Xggo5qs=;
 b=V7fhwWAA5helxcyJ5vqOkGPu5ys46HkC5+g9chpqGuKi3xQBgFPQKBN9NxkGdmWLmhYwXaSdYVbxbH7NbGI9SFwJlhwxw6ZwJeLhIB8TazuHA4ORdY6gOtVI1e40HlRUFfrJNHOpGo9lba2RZWaXmLbHL72Axz0uqHC6yJ0LCsmok5E1/eITA0bs6nwxG2GGOFNp/ivRjiOYbhB0JYa2xWtS/Adi+3TUR8fYThzO4rt7KjnNvL7Fl9nWQr+rsgtPNBx9BuBH+WpVnDqqZW0+dy3og3H2GtSOhCDWbSIOn6yhjaB7/rMsp0yk8MHiuN4cxoLU8+8B2dc6lDdE72fKoQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none
 header.from=math.wisc.edu; dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=math.wisc.edu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FayDrGfv+pl3WZRHUDX9RBRs0jqbAP6+KRK8Xggo5qs=;
 b=f6dxFsFDyhTXJEgloRsvn/sBoBFXDNk+WRKl+pyfyoI59uYpvqEZ9AF4iT4ZtL+OuzNDbNfEKspe4DwKD9o5Z2NKbEkrbbyE4ROpCTCtRlGxMu2xsbZfPSIMJ2YZygKHr4GLRzU4VwU5w0VWZoJQ1Gd2ufEvswkUt0F3cRyfw+pzRfeu8S+AO0KNCwlO9/4dEV/XzytnHUcVmqNqtTDq9ET11mjm0Le64WeaKcdHm/8BMNC+lTRfERkg2BiKbx3GvEqE1KRKuq3c6rH6DJR3K3IyAeod4TtjmEES6ggdPfRGgHUb4yQm7k8HzQWRAA8Cgwhh4Qib4W0r/Dws6JsmJg==
Received: from BY3PR06MB8195.namprd06.prod.outlook.com (2603:10b6:a03:3ce::19)
 by LV3PR06MB9941.namprd06.prod.outlook.com (2603:10b6:408:23e::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.25; Tue, 5 May
 2026 14:57:38 +0000
Received: from BY3PR06MB8195.namprd06.prod.outlook.com
 ([fe80::a7ad:fb62:4389:fd8b]) by BY3PR06MB8195.namprd06.prod.outlook.com
 ([fe80::a7ad:fb62:4389:fd8b%4]) with mapi id 15.20.9870.023; Tue, 5 May 2026
 14:57:37 +0000
Message-ID: <3a274a03-a8aa-48d0-9c5c-89a52c4a38ea@math.wisc.edu>
Date: Tue, 5 May 2026 09:57:35 -0500
User-Agent: Mozilla Thunderbird
Subject: Re: Voxin and Speech Dispatcher
To: Chime Hart <chime@hubert-humphrey.com>
Cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <bf198396-b075-43f2-8e12-96bf7c1a3e11@math.wisc.edu>
 <825d3926-3c9e-997d-796e-b75dd20bcaec@hubert-humphrey.com>
Content-Language: en-US
From: "John G. Heim" <jheim@math.wisc.edu>
In-Reply-To: <825d3926-3c9e-997d-796e-b75dd20bcaec@hubert-humphrey.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: CH2PR05CA0008.namprd05.prod.outlook.com (2603:10b6:610::21)
 To BY3PR06MB8195.namprd06.prod.outlook.com (2603:10b6:a03:3ce::19)
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux." <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY3PR06MB8195:EE_|LV3PR06MB9941:EE_
X-MS-Office365-Filtering-Correlation-Id: c8b383ff-57d5-44b1-adc7-08deaab6a57d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|1800799024|41320700013|366016|786006|18002099003|22082099003|56012099003;
X-Microsoft-Antispam-Message-Info:
	UZMYjVQPsc1v7+FWWR2vT2ctINTkhi7yz8ffqEQ5bOWdqGoxST5bT2V4MFxhw8reUY0qRypsr+l4c3Eqw5f++cc+Ismjvr4oFi45xsmrs7GEueyqLJR9n7QETz5PY4cWbFrWdzFfs8gBh/G15bHd/8ZkLF65lo3hMISdnPLRoWdsNibU0EwEvSHmdCKRonDq79vRTJ67N60WtAziiFqUd9hrJtICeyTkxgCds5B1AF4YIygaSD/Q902soADZQoSDXJksyFHNPhC2vTUC3lNmS/ixtfRI93m9gYYplC7JWycVdIVLgK1U9+Ip3L1YqrrVhOtqpNFPVDbJzffIEYD1QUxgZRlpR/JVwYj+NfVxM3w05FlJRmBWuVt+D6kD+2+6cr30IADA6hNfTSsv5eh2y9Q4J1qQypfp7k3+EdMlUcIT9+h1KNHcVyhSjzWOOVJG/Vtl82wBFkH9Dwz19Sl58z3yIVOt0ApccYdPr9WNUHFY9wX/yS+x7suAftvL9JfaPyiuUzzSDe7AR1lNjnzUgjbxS3LWbNDDqhXrHNqumYNJIFLMLYuAEHNIryCG6Xk3mB8yWQB/OQ0nQZ+537r649YTT+HxUeTqT/W/gDTF+EprXRjG1FEz0pNpkZNhtDlPv/J8AgtkQWxtAa8eYn0ytfk1OOXekGruoN7Z6IFYg/Cjjj9dEx0PCxwr1FrQfK73
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY3PR06MB8195.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(41320700013)(366016)(786006)(18002099003)(22082099003)(56012099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?YUhab2Z0RFhLZWJGTmZvMjdoN0xRWUQ0M2orZHZ2VG51RjFRVHRBakNBSHJY?=
 =?utf-8?B?L2NrYUgxZDdubHZDN2JlNnR0eHF0aXQyd0d5R3RIdnZnMVdXRmszSzNTSVRV?=
 =?utf-8?B?cGs2aXNKZFBRM2NTaGg4TzlwWlBRaFM1N2g0OWRZTWI2Rk9BRCtMaVFlNXRT?=
 =?utf-8?B?N2tWeW9PSUxUSit2c0lkWE1oQ29pMm81clo2UVRzdmd6SFpNbkFMLzJ3WnJn?=
 =?utf-8?B?MS9nS1kvRndsRUUySjJlQlcvOThrcFhXMmVGOTgwc0IxVFZOelo4S0VHWlpv?=
 =?utf-8?B?Y3VCUTQ2eEpsVzRyN08zb2kwTEQ3Y3p5Y2oramRvbU0rbnRvd0svQW5lR0R6?=
 =?utf-8?B?UmxHUGx5MTMzbUpLWXFTcklXT3pGRS9JL25QRk1KaTMzSVpjMG51S1ArRmVI?=
 =?utf-8?B?UEhzUWJ2ZGRCRmQ3Z1VmeGpQeFg0MThDWEdFeXY1Wlc5b29LRFAxSFRLRk84?=
 =?utf-8?B?ZVVMeXNKVTJ6THlYMlpIVWNvRTVONGxhZFIrZ1hGS0E1SnovakkvNWlrTHd3?=
 =?utf-8?B?UGdSNlpnYUNJaTQ3WFcyTW05clJ2SUI3RFdmNHc5ckVrZU4xUEhCZjAzWGtZ?=
 =?utf-8?B?WklNTUNBb0M2ZHgrbWx4SXVIcWN6eFBhZXRDU1lpbGNIdmhDc25yM3loYXd5?=
 =?utf-8?B?MzRVaWIzdmZWc2ZDVDQvUDF1WllhNXllcW9oOXoyUExCVXkwWmtrYlFLOVA1?=
 =?utf-8?B?RUFacW9wNXBqZDJzTGZYUktrb2lxNU5oRTJXZStJdnFtamdvN2h1aEZySDFV?=
 =?utf-8?B?cXdVN0N6SnF0eGJDVFY4SmZ3TGw3VkpsQXJpY2x1R2VVblBESExjcFVGWitZ?=
 =?utf-8?B?V2xibDM4MURZLzFXRXluWFpPQStUWnVwQU1yQmNCZmp6ZFB6a2huK1ZIZXhY?=
 =?utf-8?B?QWtzeWpkT0VaWUdYL0VLRTRzTUZrRmxvMm8xVmFtVjJhcnJSWnJodlZlRlN0?=
 =?utf-8?B?a0g0NnNtWFhKZTdIdURlUGJ2OGhHSXlvTGgySWVSTzR3WFJDbGk4aUE3WkRW?=
 =?utf-8?B?RzJZNnRwNzV1TENxdHc1Z2swdnptY2xYc0dvUmtOTXRtM1BncFRKV3llWmNu?=
 =?utf-8?B?NU5xWmg1cFNJRUNiQTdnenVBazJRUjJqU3RkN25LNkNzZGNCeXBFNGVlOFYy?=
 =?utf-8?B?U1lFcFEzRkQxd2dMN25OMjZCcG1RanArcmY4R0dNUU1Md3BXSzJaNzg4ajBh?=
 =?utf-8?B?SFl1U3VGTTVyMlJPQzg5dnpDc3N0bmVsS3ZjY0lDR0JZVkxGNzF6Y0JyYVg2?=
 =?utf-8?B?Zmd6cW5EY1dtTWs4cnYydEtqcngyaGpyS0tNR2pkSVhrc1JqS29wRXhvZzlZ?=
 =?utf-8?B?Z0JmYWxaVEZUSEl0SUhSem5VclZNcG9JTVUzQktVd2hPMFBNSzhxM1dvb1FZ?=
 =?utf-8?B?WjlvdXBieVJNa2VxcnlkRlF2cVUrQUU2dnA4Vm1SbHc2VldDOU9UaUU3S2lQ?=
 =?utf-8?B?SjZYa2E0Y1BQOTBXcHJLam04OS82LzI4QTFCVmpLaXlyWWJQaFRrUlZwdERq?=
 =?utf-8?B?SkRtL3RqUUIwN2o0VzAveVdpM2dyNUdQVnp1Y3poYjFDR0ZtLytMK0k0cnZ1?=
 =?utf-8?B?eUZwejdoNHhVTnhURHRWN1lrZ2FCaEp0SURadkNlT2FyMmxmcmMvZkZidEdj?=
 =?utf-8?B?TXpoRDgrNGtDTkpNbzJlRXBjdDhXZzQ3Yy9yZ24waEhiMk5hTGNSMXpTajlD?=
 =?utf-8?B?RXJQRitSTHVhNWJIdVBnSjQxTXJzbjlhWTk5Zm5XVDU4RFlPNno1SHVGS0Vt?=
 =?utf-8?B?Kys2ZE5pVzdEa0RQcWZjVU1HVEZISmRmalFRYUpyQU9CT0tZemV5c1JTZFpz?=
 =?utf-8?B?OVllRXdQUUpQUXphazd2YXBLN2ZLYys5cHN1M3o0SEV5RkhTVDVURkdqWnd5?=
 =?utf-8?B?RmJQMUFZNmh1Z1FFbzc4SzR1OElMOTc5MjFzVktwUG9ueTJCQjMwWnVSODQr?=
 =?utf-8?B?Z1JHZWRxS1dtdFNuSGJOMXpoK3Blek5yWk50RGZPWXBCME5LU3R0SUVzQ3Nw?=
 =?utf-8?B?QzdXZEFTa2doYS9XZklvbWU5MC9uVVloMFhSVzI1a1FqUXFYYUw1L3BxWVVJ?=
 =?utf-8?B?SElJU3BPNG90QTNsU3BOaEJFaU14Rzl4blJkRTd5bTVtVTZSVE9VcmFQT2pz?=
 =?utf-8?B?Y3lQa2JsckR6TlgrbVVKUGdzYlptd2phS1FTcFFzMDAwMndRamVFR21SVWlD?=
 =?utf-8?B?MUtCSDF3YTl1Zlh0MG1FUEJrTCs3OThrZHZuMjVRTlNKK283c0FLcytvRlFZ?=
 =?utf-8?B?anRKMEx3eU5TOHYyVVJjc0xtWkJnTHRDZS9SZG9NdVFSTGQrRU1zaTVEZ0Ro?=
 =?utf-8?Q?1JA2ka6cYz9Bt5TtDu?=
X-Exchange-RoutingPolicyChecked:
	IaD2fLwNGmTsIOUMuubEaV2ZdwZ+aJDk3Z1c3IPFtZVZSA5j3C3FVFp8Xyx9uh3NvjBfvRgrjgNYLCG4p/H7dS6/4upFluSCPY6qvrPZQS3n/TvLOj4ToUreAFXXcAaYjniTqwsOIQO2IEL15evIFrJgUzQ1E723GL1iaQhLucQ2hycWw73YWB4x0aFmkkOtQQTw7Jlsou/SH4VdcMy3TG1Fh8QJvVwUL5YkicSj1VgfXQ8dZFwKXtvITEtkxEdjbv5xi8dZmyMM2LwGrteEGl1T7iiwlYhrV9U8f2N2/7xKqTjsSRxPF8uoBi8romzn+fW66Q+xB2Pdi/6TGX/BAw==
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: c8b383ff-57d5-44b1-adc7-08deaab6a57d
X-MS-Exchange-CrossTenant-AuthSource: BY3PR06MB8195.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 May 2026 14:57:37.5067
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bRSn6BP5iLQ2ZbtsZg/Tx6ZOMNE9+vj3HE6HgcGiZEbfmnCsuRSslsUX8+Dtvc8a
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR06MB9941
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTA1MDE0MyBTYWx0ZWRfX2d0CaH4W6rHq
 H1LJrNA8La6na5cFP63w5mCfhPV2RlfI+CaR5/WYgUlir4EYtBa3kVY8tTPNIFKhIN0vpIuIxWt
 G0og2DGKrExUKrTbyFd8Hsj5/gHi+CMl5wCwx7P1jO+azs+Uoh5JMUnY9pVW/lL6wLegun+YIce
 TL42QfkBaGhw7dbnAmfZU88lAAKP8Zuc1pdpGiTZdYdhuzyvFS8jFkX4dLMz3uKjW39ASLUf2W1
 kLqgRbDKx1Zo7Oam/tNhNgw1hSRzokJAGZTPxJ4En1khZoA7/bBdmh5M92vpYD5E8pMScAyAhke
 cL5jXIf5cXxSO1pq+d2zp5d2B0ZKKd/Xa1Scui+flMgCgdHkOmwtUO68QKXxRxG7g5nVQBdzXs8
 aN2rnpiZZ+9bYvfKD/jj8IexFsosZpinyE2gxqGd9crij6romv3ZqFEXD2uFAu+AAdC5WX8rQTR
 cKS1rzGWK/1FC9T88SQ==
X-Proofpoint-GUID: mZeCjV1WYbl84LxLM4wG3pLCZlyhplK6
X-Authority-Analysis: v=2.4 cv=eP0jSnp1 c=1 sm=1 tr=0 ts=69fa0565 cx=c_pps
 a=TAA+lrqbVY7ItQ3T6C2wEw==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=lre9DRYkaIEA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=ZyELlZqCvD1aXIDzc3I-:22 a=cxWs2oMzrVA7VXfVkmgu:22
 a=YdD2nl1yvSya25fScBEA:9 a=QEXdDO2ut3YA:10
X-Proofpoint-ORIG-GUID: mZeCjV1WYbl84LxLM4wG3pLCZlyhplK6
X-Wisc_ValidFrom: true
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-05_02,2026-04-30_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 impostorscore=0 lowpriorityscore=0 adultscore=0 clxscore=1015
 suspectscore=0 priorityscore=1501 spamscore=0 phishscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604200000 definitions=main-2605050143
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5
X-Rspamd-Queue-Id: 7C2244CFD1E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.89 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[math.wisc.edu,quarantine];
	R_DKIM_ALLOW(-0.20)[math.wisc.edu:s=selector1];
	MAILLIST(-0.18)[generic];
	RCVD_NO_TLS_LAST(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:5645, ipnet:206.248.128.0/18, country:CA];
	TAGGED_RCPT(0.00)[speakup];
	MIME_TRACE(0.00)[0:+];
	R_SPF_NA(0.00)[no SPF record];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jheim@math.wisc.edu,speakup@linux-speakup.org];
	FROM_HAS_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[befuddled.reisers.ca:helo,befuddled.reisers.ca:rdns,math.wisc.edu:dkim,math.wisc.edu:mid];
	DKIM_TRACE(0.00)[math.wisc.edu:+];
	TO_DN_ALL(0.00)[];
	TAGGED_FROM(0.00)[bounces-1602-lists,speakup=lfdr.de];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_COUNT_SEVEN(0.00)[8]

But how do you configure it? If I say "spd-say 'hello'", I want it to 
speak with Samantha's voice.



On 5/4/26 9:40 PM, Chime Hart wrote:
> Hi John: I've had Allison running on a laptop for several years.
> Chime
>

