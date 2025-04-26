Return-Path: <speakup+bounces-1255-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 5605DA9DBA3
	for <lists+speakup@lfdr.de>; Sat, 26 Apr 2025 17:03:16 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=math.wisc.edu header.i=@math.wisc.edu header.a=rsa-sha256 header.s=selector1 header.b=I01wnyhn;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id CCC293825DE; Sat, 26 Apr 2025 11:03:15 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id A6925382529
	for <lists+speakup@lfdr.de>; Sat, 26 Apr 2025 11:03:15 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 7BBF138252C; Sat, 26 Apr 2025 11:03:08 -0400 (EDT)
Received: from mx0a-007b0c01.pphosted.com (mx0a-007b0c01.pphosted.com [205.220.165.71])
	by befuddled.reisers.ca (Postfix) with ESMTP id 26B3E380B06
	for <speakup@linux-speakup.org>; Sat, 26 Apr 2025 11:03:08 -0400 (EDT)
Received: from pps.filterd (m0316039.ppops.net [127.0.0.1])
	by mx0a-007b0c01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53Q9joOF013307;
	Sat, 26 Apr 2025 10:03:07 -0500
Received: from dm1pr04cu001.outbound.protection.outlook.com (mail-centralusazlp17010000.outbound.protection.outlook.com [40.93.13.0])
	by mx0a-007b0c01.pphosted.com (PPS) with ESMTPS id 466jjufstc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sat, 26 Apr 2025 10:03:06 -0500 (CDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=axjWAEATHEMTlXVMOcZCcpstvVIOPoDPfBZDnypplnWWk/rLP9qux9M/7aL2PquqLLJFxKwXN0TeFik7Od2ymtL3/xJ7orEOAjcrI8eq2jN2lkEyTX2UK8VQXB5L1peca66o6R2QIW6lLLXaXzQ+IBnaJIp82rMXpulm5Wz9g0UTk7AKuNYMjPwajYBd7HoRi1fa+VReE6/BAPgG5HTTnAJqkf8P+pkbforjrTTCRx/b3OFEyKSlbzTVotzlWvTMMGrgRDopRGBu7J2zOXRneoiUXRXWK5qi2GZyrsGGI4ZDhUKsQJv7pnRrBw/9yWBZKh8Zcwd+cdp4e2U6najdZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jHZLV3NCv+mPGfd/71PG1CLWsbQgcjwVikEjCL/sZoM=;
 b=tFv/Y3ponE2xCCowUPJF4ZICyQeW2xFBocewz5RNCd90xl0R8V5dKD+1J5ZCTB83aGt1vsNa9NrnI1FsMl4fZ0/ZM4/xjNwJ3gxzAUn0s6nxeQ5sO94hdC/6vTSikCI1o2bIrsfWrKV6uu23wn3F2aK3hvD7nozW1F6AHF2cqCBucuemN8Mc194n2ok169iJAOEyYWMx08FxZCsxUWwIkL5cv+YYBZ9y0RBFeVUyCXdFJFOqDyCx8c6bQfWpKu6vi65cAcbMC00i35FXqsqecqmo85Y90mOM2Up3N1PkyyCLxej0p0tPR5dP2jwHFujeOe0LJHfh/LBhcGEiwmpI3w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none
 header.from=math.wisc.edu; dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=math.wisc.edu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jHZLV3NCv+mPGfd/71PG1CLWsbQgcjwVikEjCL/sZoM=;
 b=I01wnyhn8xdrQluOKRXf8pjbxL3yCXWrVXv3ZleOvga21jwJzmiyS90EeVVJuQK8UMAF7j8+ppNJPlSwgIzn9Ljpf9oFy4blf2xSjcHcEfs4kmKru9i68p+GXYoBaV2MlK1HzB4nZhIhbKSNNlphIMLXvFizA7i5Gk9marW0sozv//xTjLxDYz8HoM2J/ajm76coLD+R1Yw6ej/rJH6Z0vRWRw1i12+Mt2+qH2ZgW62e8RNkihSFAQKcQ1Cdfb00GdNwM1h3gDQSCWOEuuHmXTc7hpRRxH0mtT5t3eAJqnKD2SVBB5tcyy/89RAKHMagxHpYu2HLETfFGPX72JvOVA==
Received: from DS0PR06MB9877.namprd06.prod.outlook.com (2603:10b6:8:1d5::14)
 by SA0PR06MB6970.namprd06.prod.outlook.com (2603:10b6:806:bc::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8678.29; Sat, 26 Apr
 2025 15:03:05 +0000
Received: from DS0PR06MB9877.namprd06.prod.outlook.com
 ([fe80::a347:6162:9bfd:9b91]) by DS0PR06MB9877.namprd06.prod.outlook.com
 ([fe80::a347:6162:9bfd:9b91%3]) with mapi id 15.20.8678.028; Sat, 26 Apr 2025
 15:03:05 +0000
Message-ID: <b8618200-425e-4d21-94f8-27a689e023db@math.wisc.edu>
Date: Sat, 26 Apr 2025 10:03:03 -0500
User-Agent: Mozilla Thunderbird
Subject: Debian installer (was: I break everything!)
To: Cleverson Casarin Uliana <clul+speakup@posteo.com.br>,
        speakup@linux-speakup.org
References: <3b7d9a99-8314-77f0-62ce-e6ca3e6ee1e4@reisers.ca>
 <9677270c-1283-4624-8246-804e41ff3287@math.wisc.edu>
 <ca8ce1b0-dbd1-5fa7-8887-53522e29e8d4@reisers.ca>
 <8f3f523a-8621-4a55-bdcd-5072e5cb024c@posteo.com.br>
 <ac1beeb6-7d05-47cd-8f4e-a10d8f627093@math.wisc.edu>
 <21a643e6-4407-c9c4-876d-6acc87f71804@reisers.ca>
 <71c3ea1a-ca7a-44e3-be1d-240dde57a981@posteo.com.br>
Content-Language: en-US
From: "John G. Heim" <jheim@math.wisc.edu>
In-Reply-To: <71c3ea1a-ca7a-44e3-be1d-240dde57a981@posteo.com.br>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: CH0PR03CA0376.namprd03.prod.outlook.com
 (2603:10b6:610:119::23) To DS0PR06MB9877.namprd06.prod.outlook.com
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
X-MS-TrafficTypeDiagnostic: DS0PR06MB9877:EE_|SA0PR06MB6970:EE_
X-MS-Office365-Filtering-Correlation-Id: 844aa26d-e81f-4a81-71b0-08dd84d37263
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|376014|41320700013|366016|83080400003;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?VlZCSjlPdldBYzdFOC9aL283eEI3YnI2M0huSVhSWTVwWTNZMnFTclQxNU96?=
 =?utf-8?B?NXAvaVEwV3d6bXlDakd4ZnNrdHZ5RGZkK2pHUHEvcTl3NzdpRnYzUnJ6V1NY?=
 =?utf-8?B?eFcvMDFQR3EwSVdWL1FoWXZBNEowbnNsdllINnBhT3FnQWFzdCt1QXpnSDJK?=
 =?utf-8?B?a1pCVytXdkRva0pQdXZSSENROGdOY0pQejBqcmF0QU9WSGpoOGxZWlQxeFNJ?=
 =?utf-8?B?cXFsS2RYc2Z1RFFaWS80Mi84QzZUdWgzL0t5cW50bnZkamNzNXJGOS9Zc2kr?=
 =?utf-8?B?a01nZ2RLNit6TUdjMnUxZDN0ZmYvV0lmdTI3d2Y4QW5udW83N3A4L2FZWVNm?=
 =?utf-8?B?SW1DUVFXaG15bjBYOUk2Nk1KQUtYVjZiQ0QvbVNzWDEyNU8zOFZnZ0svakhT?=
 =?utf-8?B?VjVlSVMzNXd0cE1BdTJlUy9oOVlIUmFtblZKYTZyRm5KOCtjbTJFdlF1eFpR?=
 =?utf-8?B?ZDNmbXFtQlNqSWh4Mi9pWVVsd0RTVGsyZktRN2J1WWgrYlBMWlZkdFdoZ3RH?=
 =?utf-8?B?WmdEYWUzV2lxTVByMXZJWWJNWHdXSFNwOE10TmVVeEtjTjJDamVYcnZVZ1di?=
 =?utf-8?B?c1BNakZMVDV1ZVdKL083U2t0ZExmbjh1NDF6MGRSK04wUkMxT2FSLzM1dWFJ?=
 =?utf-8?B?Q3hCQk9ER3haTVdmZUlRNFkxMEZvdWMrQ2FITlU4WEp1UHNjT1Z4dit3VTd6?=
 =?utf-8?B?WklRdXg3MGJtcTB5T2xHUkQ1MXRGQXVINCt3cVcvaW96L0dkMTlSeDJ5N2o5?=
 =?utf-8?B?WUZNM3JOZFdBT2F4L2pDQU12ODhObUFRbHZXaVlxaVcrUThQcTlsN1RCWE9V?=
 =?utf-8?B?R2RaaG9oUDN0NmlGRkJCN2ZPNEpQOHNyc3ZjTU9ySllFQ2NIdVVmbW5EUE0w?=
 =?utf-8?B?YlJoZVEwN3V2S3VPUkRFLzhLaVdjQ21FTFdod3RwR09VaCtTNUZVSnAxcFE4?=
 =?utf-8?B?K2pRS0dUcHpRMFkyWWZaaTFtdVhKazZkaEt2S0pURi83QWdudkpCVElQL09q?=
 =?utf-8?B?a3A1aTJWS09jcDZ4Rm0xM3VxSjlWL21jTG5pbUtIZWs1VXFhcVdYSVlmc1Fk?=
 =?utf-8?B?ZStCYjNHTFRrQXQzeGVTekdKOUZDVklWMkI1My9DNGlkMmc0a1VrR0RsR21L?=
 =?utf-8?B?MEtoYmJrZ3Y2WjRLYWxqa1RwQmpEK0Z6MjFaMGxGVDJCK0pvTDJyTkVkR212?=
 =?utf-8?B?OUEyUmxiZFBDUG1kMnJiTkRXZCtyWkljRFI0TU1PcUsxUnZmZGpKV1NaZHB6?=
 =?utf-8?B?OEh1LzZrTjkycUJ3ckxkOU5JTE5XYmtObjlwamk0WDZxZ2xuT3lncUdNSnhX?=
 =?utf-8?B?cmd6eXAyYzZJOHFqZnhsMzQyeXRUZnNiSVFTTXZpWkIvZituNXFGb05TeVY4?=
 =?utf-8?B?UG5XVzhhdGhSWG1oU2ZBcjAyK0pHVWtDWEs1R1dSOEdTRjIxQ01zV3BDTDh1?=
 =?utf-8?B?SjhJMmVVREwzaWFPempmbm1mcUxUeFBLeHd6c0RNM3pIcWFpclR1N20zTXNq?=
 =?utf-8?B?c21HeGZ0b0ZDYnZsZlQxMEtqdDJzTTdkeVRLZk4xMFQ5YVZVampFemd3UUZ1?=
 =?utf-8?B?TjRuZGMwb2tGVE1GaHB3NUtpaTlIWDV4SmRGa0I4emljZmZPYnFadnN1cm9i?=
 =?utf-8?B?eThjSjdreW9adjZNU3ZEM3d5SUozYVJNN3hDR2lUeDZRVjRteEVJN0I1Yk9R?=
 =?utf-8?B?NzJ3NG9zUXZjcG5VU0N3dTJnbFNKNDhsa3NXVDh6a1VoR0ZBTlh5UmF2d0tr?=
 =?utf-8?B?REVta0VuUVBEUjRmYk4ybnB0UnNFTHBJSkhWNmc4MlpFZnAzTk5hSzJVeStn?=
 =?utf-8?B?OFVHK0V5MkRkYkM1UHJ1YWNZa1JPME9iQW5pNnZ5cEdGS1hmYm11TDVhb0hh?=
 =?utf-8?B?b2NCTXVYbWtRcndqYjFaOTRGWmlwb01zS2d4MGtoLzlUM2xRclVMdVJiNVVx?=
 =?utf-8?Q?74c8+0E5Esc=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS0PR06MB9877.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(41320700013)(366016)(83080400003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?SGY5R2RLVHRQK1hnaW9nN3ZYTzFOcGx3bWlRVGFYL2s2akJBdDVnc0hHYjlp?=
 =?utf-8?B?dVY2SjhZTTF1UEJ0cEtxbWpGdXVIU2pVUHNLTGRtb0ZMY3RKVDhiekFqeGZM?=
 =?utf-8?B?ZTZYbTdrL2dPeXhpVHVVU3drUnA3MTc5QzJYNy9IWmNxSFo0Q3ZsT1FyUzdJ?=
 =?utf-8?B?Z1pBdHJ5alJKcmw4ZFZHYUM5Z3VxUVhoaCtRcmF4NjNaVjJ0R1U5V3l2alFC?=
 =?utf-8?B?MFNGVjJWL0tzRHRZMTAzSjE1dlFrNVd3Ny9HUkF4MVJVV2dxWGNiSVh6MzQv?=
 =?utf-8?B?VXFSMjhRMkdLWFF3bHlxSzc2dURHWDRySG5PRmk5Q1ZqWnNYam9vb01MeWJ0?=
 =?utf-8?B?MmIzN29CbWJNK3owUW9UOGZuRWdXaURxa3VFSlZYMDFZYzE5azh3N1gvbW85?=
 =?utf-8?B?SnhGUVAzYU5td1lSaVpsTVFURFBBc2hxcWRsMkVTeHc0aTZ3WmZkZ0xXTHZx?=
 =?utf-8?B?b1k1eFJ6UFNMNDJvb0V4S28vVFlPQmFpazFPTTgzRkQrY2lCRWp3TU5jWTNu?=
 =?utf-8?B?TVZuOUwyaEpsN0gwTlRieDZDb3QvTDE3NDJncThURDNmZGQvQnpleW45Rksw?=
 =?utf-8?B?YTYwaXFEZ3R0NEhKS3FuN0VmMDFGaUpuSjJqQjlMcVlWek5IYitkTVNkaEYz?=
 =?utf-8?B?dWlBQjJkQlJKek5iZDBxQS82MmFwNDZVS2dkUkdOODhPTFJvRXN1dU5La1Vy?=
 =?utf-8?B?Qlp1SkNSMDlpU1VNRzUwVnpLNTRnckptWXpvL21zM1B1ZmIwWHRCd0IxUzVF?=
 =?utf-8?B?QW4vUmtnanlpTWsyZS9lMDBWZE9TNTVDSzdNSXdUd3RDUDc2SDMwMUdyTmZx?=
 =?utf-8?B?cGxPLy9EQVpmVW0zMzNZYXY2SjNLZ29aZWd6SU9kMHFYblZxMEhXaVZDbjVy?=
 =?utf-8?B?TWZsakMwSTl2T3FKUjVRd3VDc1J2UHNoUjNnZ2xCUmJST2ludkdNUThuVTNR?=
 =?utf-8?B?QWw2QUFtUnhveTR2a3ZNUG5td1J6azVrTU5MU0UzVWNYZzNVclRXcVNMM3NS?=
 =?utf-8?B?UFZVOFJTU0JmWGVNQ1RRWDdyMk9TY3RWUXdYSUtNSWRIYWhScVA2S3Jtemd4?=
 =?utf-8?B?Wi84M25mZUxFZDJyN0lKVUZ3MnRUVERNOFdLS0hYOUNBVGRwTWtRSVU2QUNZ?=
 =?utf-8?B?QVVHem5SUkdpYzFwY2pSclZrK3lqZCtacmN6U0lrcE9kanh1TWN5Uk51QnZ2?=
 =?utf-8?B?K3luaytzOWV3M04vdUxkK2s0ckJVb1RybWNHUGhIZkY2bWF3dXNUVWF4a0JX?=
 =?utf-8?B?WDdOOWpWbDVNS0dJQ1p5MWUrTTFYc1BBcmxDWVRIS3AxVHhWY2VVM1hvQVBB?=
 =?utf-8?B?bTJPYlhBbUlSZTQ4STlxRmcwVHkrVEdnL1J5eTV2eEU2ODZ2emR4OENZeW5h?=
 =?utf-8?B?d2lXcC9NWHA2b0lnejROenZSSDN3dEhLUEtrR3hQaDRkT1lnQ3B6ZzVPOWNj?=
 =?utf-8?B?QXpkYUhTc0RZOStiNTZqNWR1ZWRVMy9jQTZoVnZEZ3RjRTN5QWZlcUNoQVZt?=
 =?utf-8?B?ZWlsWVpHZm1UcGNNK1dESGFLUWx5Wm5NdXkzSUw5Q2RNZzBhOTNpU3did09G?=
 =?utf-8?B?NUI4S1JwYjlOVmJHemRMeWUvOVRYZDZZOTl0T0tueW9vSU91QXFtbHVQNDcx?=
 =?utf-8?B?M2IvSGRtSjZiZW9Xa25mZ3M5cWg4ZXNaNExSNWpnWVJ1NmZXN2hZd1dna0VQ?=
 =?utf-8?B?dWVjVG16YlQrcm1mMU1NTWF0OWdGNmw3NEhWcWZReExqU0FLWnpzcCtUZ3pH?=
 =?utf-8?B?Qk1iZysrQ2s0Q0VTejU4OFplbkFMbW00L24vMERna2Z0enhMODNPYS9sZk1Q?=
 =?utf-8?B?VDhMZFB5YlRzMEFjSUJhZ1hsdVRWazQyL1k2MnYvSUt6Yjl1V1hXd2w4eWVk?=
 =?utf-8?B?SjY3anpISFprbWVTSFQzT0g0VTdhanI5cUVwMUtVQ0Fhbm0rZDFJSXlRYnZh?=
 =?utf-8?B?aE9kK2IrUUVrS01oLzM5djZkVFBrbTcyVVVjRkZvY0g5dTAyUmNDNCtpTjAz?=
 =?utf-8?B?d0FBWkRuejlpdnI1dzhvNGdrVndleU5ubFppQjcwMEZMZ0o4VFlvUmZGbm5s?=
 =?utf-8?B?QlFBMDI4dWFWaWptaGp0M1Y4N2k3ZDFMdEJsVTFxWkVTdUlWd2hCK1lFSE90?=
 =?utf-8?Q?X2h4=3D?=
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: 844aa26d-e81f-4a81-71b0-08dd84d37263
X-MS-Exchange-CrossTenant-AuthSource: DS0PR06MB9877.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Apr 2025 15:03:05.1352
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fyKte9uvfH6sNJGRN8zroUGWfXe70fhUY41gnWzDQ3iYsmcpOJ/pURECD5T0yo/O
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR06MB6970
X-Proofpoint-ORIG-GUID: quVS0KxaFg6svOmWmxcL3QcCTMw91tIG
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDI2MDEwNSBTYWx0ZWRfXxly8t8CJsjYH oK9AbFjJp6aEgBfCwpuG30aJ2qikXl8EdcyYkA3AFG/uGUq/m4W2w+K1xDjTC2TO3GNX4OGoLiU X0xT72ydsMGoUNlYBLkvU+vO7Kf9xAMO4xHO5CfWK8yHlZhxNanODzjf94W15TGdTU3d94+tXa/
 YzEnv/uSrVqaxox2TsoUBzuEpZfkq0TtUkOanFOLz8PgVyapw5EAD9Pc7JSIylKpbyTm1tos3dT RntzCOPmWtCJuU590VgdoqONg5xSOEZcXj/jmRUQKuZxCw6eqb4D0gc/XEQ5uHNfnGBi+tYDgUV FqlFZ8SByFedYEbWjr1F5LNOyx+mjMrXqxKbSnXVuRsOKTo9DqkSNAVyh+JaTFuTT4veyCft+/i
 HO9uRcpn0AJ8miN6xbHoUcz8L2FjwHbC3AScKd7IYwtye1OdnjAUHSQyMTEoc2BCymd3D8sV
X-Authority-Analysis: v=2.4 cv=f51IBPyM c=1 sm=1 tr=0 ts=680cf5aa cx=c_pps a=TrQpY+9r/vRMYizkUk6pNg==:117 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=XR8D0OoHHMoA:10 a=lre9DRYkaIEA:10 a=tnCFt3xHAAAA:8 a=b2D8wjNQAAAA:8 a=BUl7eiXSRMu2tdHrf5wA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=LI5THXDUc_VBzNxBL9Bl:22 a=d1UimkliOhT9Z7l-BmxF:22
X-Proofpoint-GUID: quVS0KxaFg6svOmWmxcL3QcCTMw91tIG
X-Wisc_ValidFrom: true
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-04-26_02,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0
 mlxlogscore=999 spamscore=0 clxscore=1015 bulkscore=0 priorityscore=1501
 suspectscore=0 mlxscore=0 impostorscore=0 adultscore=0 lowpriorityscore=0
 phishscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504260105
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

I wouldn't say it is common for speech to stop working during a Debian 
install but it is not extraordinarily rare either. My guess is that 
there is simply something wrong in the kernel module for your sound 
card. A good way to test this hypothesis is to try booting with GRML.  
Here is a link to an article I am writing for the www.linuxaccess.org 
web site on using GRML:

https://www.johnheim.com/articles/grml/

The article hasn't been published yet but it should be any time now. If 
there is a problem with your sound card, you can wait for the next 
version of Debian installer to be released or switch to a different 
distro. My recommendation after Debian testing is Debian stable. Then 
I'd try Ubuntu STS. Ubuntu STS is updated every 6 months and the 
upgrades are fairly painless. But you do have to make up your mind to do 
an upgrade and then sit down and do it. It doesn't have the benefits of 
a rolling release.

Ubuntu.





On 4/26/25 6:57 AM, Cleverson Casarin Uliana wrote:
> Hi, thank you both John and Kirk. I'll go for Debian Testing, to try 
> it at least.
>
> Perhaps going a bit off topic, the current Debian Stable installer CD 
> image has a problem where speech, that uses speakup plus espeakup plus 
> espeak, simply stops at any moment in the middle of installation, and 
> there seems not to be a command which bring it back. I tried several 
> amixer and espeakup commands. Even espeak-ng "testing" doesn't talk. 
> Have anyone ever experienced this?
>
> Cheers,
> Cleverson
>
>

