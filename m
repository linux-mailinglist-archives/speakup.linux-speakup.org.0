Return-Path: <speakup+bounces-1418-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 1023ABA075D
	for <lists+speakup@lfdr.de>; Thu, 25 Sep 2025 17:52:34 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=math.wisc.edu header.i=@math.wisc.edu header.a=rsa-sha256 header.s=selector1 header.b=AQc0MmAK;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 1C96E381626; Thu, 25 Sep 2025 11:52:33 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id EBDDD381611
	for <lists+speakup@lfdr.de>; Thu, 25 Sep 2025 11:52:32 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 901DC38160F; Thu, 25 Sep 2025 11:52:25 -0400 (EDT)
Received: from mx0a-007b0c01.pphosted.com (mx0a-007b0c01.pphosted.com [205.220.165.71])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 010CF381609
	for <speakup@linux-speakup.org>; Thu, 25 Sep 2025 11:52:24 -0400 (EDT)
Received: from pps.filterd (m0316041.ppops.net [127.0.0.1])
	by mx0a-007b0c01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58PDhnkb010012;
	Thu, 25 Sep 2025 10:52:00 -0500
Received: from ch1pr05cu001.outbound.protection.outlook.com (mail-northcentralusazon11010039.outbound.protection.outlook.com [52.101.193.39])
	by mx0a-007b0c01.pphosted.com (PPS) with ESMTPS id 49cpy66cex-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 25 Sep 2025 10:52:00 -0500 (CDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RyDQNcFj/mRF6p8/R44gktKsLNgXvwV90XfizX1BWbNdBmFEIP+MW1qpdynxIy7AeVm0iFeTep5G9oQXFDCGI94WMSUKNz12LJ+LGkZLTtLcT8caLCAuhveKhLy01i5iJVUb4pVq37UPafOzhRMFqRFNfNapZaovvvpQGtYvUnsaN1ks4jwypg55u4Z1iRWwxLELUnn55DxTIZPcGqyDdpLrdhGdkTg281Pw21Iq8j5A4JVhfAlheidl2js1rGFYKjOjpmtChcjI7j2etwjcge/PmeNj16NOz17qszoiOUeyjKPwKILOtMYyq3haLqAED35YJVbZr4jFLw3CHvqFTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4L3ZE0M6b3EBBm/YZuhFaEyGpSxskXrAyo5uRrfTHQo=;
 b=Rr+wz+pVZsuUBG8ZJQJufuTdiK3CqlN8/1/W1Vl7lbXMH3MLg9Rv8R+lgLyMHVLykDh13IgAUkTvLIJ8HLoHk4UBVj7z+vFQ96cyJVO4nzxTHT2RllEviI1MXMi/YvHyZZimC/9qC6tlUV7wnNGZ/5ODFu7sBy+2EjyguOYnInitrotT/hvhm9vBDy2ECANg41cjK9ruVe2isU/J38ApaAtmGDVaU8b2j1SDZjUwtVERigAUyQEuWpdSD+fi0nNzO9n/ouDH6JzX+1sBgTwxDp535MwOIUbD6DZUHgr/8WAF/a/WJBBd2/1zLxs3Q4T8WOa8DO6SESNUx6bs0udlow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none
 header.from=math.wisc.edu; dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=math.wisc.edu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4L3ZE0M6b3EBBm/YZuhFaEyGpSxskXrAyo5uRrfTHQo=;
 b=AQc0MmAKo5Y3/n297dC3iR/41Xa3xTZYZGb88qgeaj5aE1pEGek3Pq6LzBV321FsiqVk3d3gh+ZpbCLMhWDONwBHqbn1VXeXrYMAPRCZ8+2uMLL1bM5zULxMd/BWPVSZVMBwdshoht7RgNV3i7QyuRQnytIH4RebA+e2yU7ttF9EU7WWln+aXyiasio2yPhT3IGBLw8McvoxU6mXaFDW9YfNmT3INGJ56ZvTzOG29o9TJq8MAQJi9TAkuK+YngDPwIlopxKcxVNjG8jOLrcyQ4lRU6usF5D6hZA8SGpbEY1fgeDSAedX/wkRFyD4VUN/vRd/CfPyaNIaPVuZ1Zts9w==
Received: from DS0PR06MB9877.namprd06.prod.outlook.com (2603:10b6:8:1d5::14)
 by SA1PR06MB7959.namprd06.prod.outlook.com (2603:10b6:806:1e2::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9160.11; Thu, 25 Sep
 2025 15:51:57 +0000
Received: from DS0PR06MB9877.namprd06.prod.outlook.com
 ([fe80::a347:6162:9bfd:9b91]) by DS0PR06MB9877.namprd06.prod.outlook.com
 ([fe80::a347:6162:9bfd:9b91%4]) with mapi id 15.20.9137.016; Thu, 25 Sep 2025
 15:51:57 +0000
Message-ID: <fd0c0d0c-ff55-40ff-a65e-3e912a03f5ba@math.wisc.edu>
Date: Thu, 25 Sep 2025 10:51:55 -0500
User-Agent: Mozilla Thunderbird
Subject: Re: Question about blind CLI use (was Re: "your browser is not
 supported anymore" ...)
To: Karen Lewellen <klewellen@shellworld.net>
Cc: Jookia <contact@jookia.org>, Gregory Nowak <greg@gregn.net>,
        Chime Hart <chime@hubert-humphrey.com>,
        Cleverson Casarin Uliana <clul+speakup@posteo.com.br>,
        speakup@linux-speakup.org
References: <202509111603.58BG3W3p018143@nfbcal.org>
 <7a04c6dd-c761-4445-b53a-3c4525cf2a87@crosslink.net>
 <579c5d9b-5ba1-4029-982a-01295fea3a61@posteo.com.br>
 <Pine.LNX.4.64.2509112223130.3830807@users.shellworld.net>
 <6d3f190e-733a-e5d5-a8f5-cc6eb2c05e65@hubert-humphrey.com>
 <Pine.LNX.4.64.2509120106350.3832376@users.shellworld.net>
 <aMOwSwrEWTBtFn60@titan> <aMTOpzhGX72PC_2S@gregn.net>
 <aMVgIfSRDN3Uewj3@titan> <242896ae-8567-4e97-a3e1-de09a8efecaa@math.wisc.edu>
 <aNIv2l1tKiR26V-R@titan> <fcf89a57-b683-4590-8d36-3a1a7b613bd1@math.wisc.edu>
 <Pine.LNX.4.64.2509231554180.4080399@users.shellworld.net>
 <d8d6dfa8-db72-43e9-80b6-9a0053e31b2c@math.wisc.edu>
 <Pine.LNX.4.64.2509242315480.4100948@users.shellworld.net>
Content-Language: en-US
From: "John G. Heim" <jheim@math.wisc.edu>
In-Reply-To: <Pine.LNX.4.64.2509242315480.4100948@users.shellworld.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: CH2PR02CA0002.namprd02.prod.outlook.com
 (2603:10b6:610:4e::12) To DS0PR06MB9877.namprd06.prod.outlook.com
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
X-MS-TrafficTypeDiagnostic: DS0PR06MB9877:EE_|SA1PR06MB7959:EE_
X-MS-Office365-Filtering-Correlation-Id: ca8bfd2d-a841-4c23-e7db-08ddfc4b748e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|41320700013|376014;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?SHlNSWVHcDdXeHdPZ2JIWXdHUGgxRTl4L2pjMnJXbTJER1pjZ2ZkdmF0bUxM?=
 =?utf-8?B?ZEpGUnEwSnlEVmF2RVRRdFBhVTFqc1E4S3YyWDZXb0IvYUEwYXJXL3Y2UWhP?=
 =?utf-8?B?ZENMYzk0UGI5YnE2dTFNZU1FcE9rUm56RVo4Q0NJc0wxdWVVWldwSHZBNWlK?=
 =?utf-8?B?MXBVTU1IdXc3bEhvYXlGcnFkTHJhMi9pWGZmVlFZTWVKamFXYXpUbmt4R2V3?=
 =?utf-8?B?Z01FZzd5dEJSQWZ2VkxNcUxIRkhyVmgzVkp6bkpuUDVMcXkzWkRWL290Q2FO?=
 =?utf-8?B?QUZTREJQR0taOUprSkxQTklGTW9PQ2Z3Z2RCYzBFQWN1aE0xcDNJdWJhT2Js?=
 =?utf-8?B?cUYvN3NEL0NJcGpJZVBwemNTZzdZOUhvOW9TZXJFUUEraVM4TENLcWwrU01T?=
 =?utf-8?B?SVIwcllVaXM4cFZOWEozSm0yOCtMWWcxZHR0TjE2SFZMQlU1NXgxbVhxYm0v?=
 =?utf-8?B?VnEvWVJFdkpIQjZmdmZFNTNjZThrUVN3OGF6Ri82S3BsYmlWY05mUVo5VHpK?=
 =?utf-8?B?UWpmTHZwNnpyQTFpM3NoZkVXR2JwOW9oM0VZNWZWNmxBbCszUmRxeXNNcThr?=
 =?utf-8?B?UnMxZDFqNzJQRU1kc0hHREZQbURKVjJhc1ZzQytDREZXN05YMXhKVGJjMzZq?=
 =?utf-8?B?SEJmV1hXemdDdkV6K29hS0dkOEZoUll6dGE2bjk3UzVSVXhnSitpTEdzaE9K?=
 =?utf-8?B?dnlYSkx5c3JmVmdFSndpNnFScGVWdjcvY3NwdEpQd2FnWlhuM0x1NG9ERWx3?=
 =?utf-8?B?Z0gyVGtQZmI2YXNabzNJUC9iQ2Z1RTdBbFc0UnhLT25pVU14cUJJNmE5Q3Jh?=
 =?utf-8?B?TUpRUCt6UVk3QXI5aW1mVmJVYlFYZjJlYTladVZ2WGJ4SkJIb2RXSzlnaWhH?=
 =?utf-8?B?MitFZUpISzJzN0dMdis3QmRaYms1MVl0SSswQjFldVFXTlJ3bXZUK2RFNWhj?=
 =?utf-8?B?YXFzTm5NZlZYc1pqWFdFek1qOW0zTGN3T0J0WFV5dFp2TzJLN3hjSC9QZDUr?=
 =?utf-8?B?WThYQVIvMG5SZkhvenYxcjdxaG9sSWdEMENrMWpoZTVhaFZtZlZaekRHYVJ5?=
 =?utf-8?B?c1JLNXB3MEZacVF3eVVycE43ME0vK0VISXlaME5MZlc1R3V6bHJlL1dWUjZr?=
 =?utf-8?B?anVZdmJtTHVMdy9KZDNoSXBpdGNJSTVFQnQ5cDZ2eGo5QVhhSit2dzVqam0w?=
 =?utf-8?B?dVRLWllaQzNTNU1UeXhKMkpTQlM1WTlZYkNWdXd2U3VRQWJrVUlnd0hrQjg3?=
 =?utf-8?B?a3doMTlHVmJ2WWJ3YmtQMWU1cUtQNGNVUEoyUlRJRFBpQTcrNys4aDNBVlNR?=
 =?utf-8?B?UmtzVzhwNVJ0NXdWNnMraW9kWjRMMy82dXBMQm1XRTByWi9XTDRWQndFTmdm?=
 =?utf-8?B?VWg1OEVUMEtCcGN0Z04wNjZIZWlQWVJBQkU0V2hoOXdmZjFuSDE3TkxSTk1G?=
 =?utf-8?B?MVhFUDM3UWRCV20wZ2tsTnRiSStEY1lQZElLTGtEdkZUSnlaRkE3a1lhdXBy?=
 =?utf-8?B?Q1ZvUDF0TDRBZXpjcGh2Q0VwRDBUc05tcHZ5b1N0R1NLSWFNWVljUnpkZTRF?=
 =?utf-8?B?NkI1eDRobUE3dFVMTm5tZ1FUQUtCRkZyeG91NHZDRkZPSHdHNjh0enRQMC9n?=
 =?utf-8?B?bnZ3OHdEMXUzcTdjQUhEY1JCZWVIR3NHeTNqQWVLZHJTa0NYNko5T2Vkbk9J?=
 =?utf-8?B?V0dXdjBzWG5rYWdTWlVGQjBzRUFaRGZmVjROdFBOYmVNaFYvbGVDcjRXNnI0?=
 =?utf-8?B?M0VodmFCc0lYWTFNMWZaTUhwTFk5dm9vNEVhSzlaSXM0M2lxb2s4ZDFaSUZy?=
 =?utf-8?Q?eKqbkvZxcLUSASWqr0EAc6SAOIFZ5Q3rP+dVA=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS0PR06MB9877.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(41320700013)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?K0tBaE84dUF4RWF1UkRXMzBqZXc1cnp0bTN5YmlJazF1ZHVCSnNqT3k1WWUz?=
 =?utf-8?B?d1ZrSE0yS05JdjU1bW1LTFMrait2MWttVERFbU5EMlAvVVlJUWdQSkluTjJI?=
 =?utf-8?B?a245cHlpNEwySDBISzl5T1V4MzV4N2NWZElVWnR1ZHYxUUN0UWpQZW9UbUx6?=
 =?utf-8?B?OXpzSXlDRWhaMWd6TTlPSGowaWVEaHc1VE9sN2lPeC9GQmFDaW9mUjBqR2Fq?=
 =?utf-8?B?UjJNZ0p5aXBwQW1LMkJPeHVTN1RTMXJEN2IzblVYWDRzdFdWNTV2M2ptTGFD?=
 =?utf-8?B?SzRlczVlZXVUZWlyKzVZWngxWEFUOTc4KzBsMFJibjNxcGpGOUJRZmk0L1A3?=
 =?utf-8?B?TlRiQmYzOXY3NnZ5LzcvNUN6OG1DY2ZXemg1VzZYSHhHbFYwR3NyRDdZTkp2?=
 =?utf-8?B?bUsxeEpNQzM3MlNUZW1nKzJEemhsN2dFUFdDeFliVTdZNUJQTUNBUWp6Ulpu?=
 =?utf-8?B?N2M2RjRhOGF0ZUxEY0doK0Fua0tPcS9FNE9JSE01ZWl5ZC9zNlVkN3RnVUdJ?=
 =?utf-8?B?WlFOSHh1ZCtPMEJSb2l2RkFoTk41OGZIc252L1BJMkEwby9MZE1LY0pOMkI4?=
 =?utf-8?B?WE16NUtOckJvUWd3bWt5N0hYVC93R05rbmhFd2JLV1ltQXZudzIwaUR6bDRR?=
 =?utf-8?B?VlAxekpwWlI1TzlmbWkyYVlVOHlLYmhXa1Ntb1lPN2g5YXZrbGZxZmRqQ3kz?=
 =?utf-8?B?bVN1N0VPc3JVeDlMV1dndHlBUjZ1MjcxUzQ2NzFpTWlPNUtwRUsydHJsNHI4?=
 =?utf-8?B?djM5UE9NbDVQL0Y1b3VTckFHVG56WC8wcVNnMWoxb0ROMnpEMUkyNXY2MzRj?=
 =?utf-8?B?bWF6QlgvVHJjQ1RkYXVOUzE4U1B4eDltN2s1U2VFNzBVZ1I5dWJwWDNMQlV0?=
 =?utf-8?B?dzhyVUFzMzc1c2xGMzBzRVZLQnVsQmVuSzBuRlMrTzF4SmFYWWZUOW1yTFVt?=
 =?utf-8?B?ZmtaUlZ4alNYa0RGOFRZK1hEeSszdzZYNDJ3T05JV0FQWEZxMEQydS81QkZp?=
 =?utf-8?B?QjhDekpZVzNkOGxpWWxUZldCdzBmSThkd1V0SUk0Y2Nia1ovNEc4dFFYNmdS?=
 =?utf-8?B?K05oN2ZOR2xGR0k3M1RIcG43ZWRDdmk5aEViaWpxaWowT2hTdEtyaHdBUmN4?=
 =?utf-8?B?d2VTQ0h6SHVZMnJ6VUxSa3N5NVM4aDhrVHpQMGtabXpiRUV6UldaMnBUTGxE?=
 =?utf-8?B?M2UxS2RQMENIYUN0NCsrQ2h1K1NmZ1Qvd3c4WmNrMFp3SlMzNUQrKzJDRjJC?=
 =?utf-8?B?SHFtUG5NdXFYMDdybjk5WkMyeEhidkRFRXFIbC9JcmhqbElGb2hJRjRCTDdh?=
 =?utf-8?B?S3B2QmhHS1RRZmpreUc1eDgvRUJ5bGlpU0J5Ym5KNmhPTDI0TFZqZThJU1Fp?=
 =?utf-8?B?ZDhCTXlPaFdOMWZMVzNjOWdVYXVBOHVXdGNpRDlzdUFFOHFLaGxNMjB5bm10?=
 =?utf-8?B?TUFNUDd5VENkRWRZazJmc2xhY3NaNUFzS1VkZGhaU3lKMkwwK0Rka2FyaVpB?=
 =?utf-8?B?Mlp4NG5XTDFUYm4veDZUd2hidzVZUW80VWF6NE1CZmJxOUJ4MDI0cDdXOTNp?=
 =?utf-8?B?SG9IdTk1ZnUySU9mSHJZYnFrVWZTckh0cVc3THBMcXYvdE9GSzR3cjR4WUhh?=
 =?utf-8?B?emhpcDNqMEtsQjNGazE2SkVDeXNnU1RRRCtobSt0b09VdE5TYUNEaHhybWRP?=
 =?utf-8?B?enpzUk5tY2pGYUFKRGJDcVNTc3JBdzhxWW5vbmJkZ0VLTUdpT21Ud3hab0dF?=
 =?utf-8?B?L2w4c0cwUU1FNUV1QTdJSnZUZ3l0MVEwZk9TSDd6TnJEQTJCYWFKYXZubGtX?=
 =?utf-8?B?MUtPNStBampoTGpQZFdDdGVQUFhiT2MyNjJIdFRGbC9kVzcvSHFSVEtQd2pE?=
 =?utf-8?B?T09VZ2ZJT2laN25KYkdqYWlRTDlrd2hHdCtnYXQxbDdkbzNLNGQ5NTRJMXV2?=
 =?utf-8?B?SURwdk11dVRBSzlTdUJLbDVvTkV5SHEwZVd2OVkxWWdqZ1ZzQXhNUndyeWVL?=
 =?utf-8?B?ZWhUMHVIaEdRS0dEbzJ1ek5teEdSRTVhalU3cUlKK0Rmdm1uZXZkamlkWklC?=
 =?utf-8?B?UjdMUU5iVmVMRFpGMzBiZGpOazRvS2dYdEZrWFM5SzRJaFJmZjVvV2FnUmVT?=
 =?utf-8?Q?Rt4BgGTMqIlfKsKhaaPTARKGS?=
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: ca8bfd2d-a841-4c23-e7db-08ddfc4b748e
X-MS-Exchange-CrossTenant-AuthSource: DS0PR06MB9877.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Sep 2025 15:51:56.7561
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: reQ5skbh05MbChk1FnBWeNxkroXXyEV5VEH7Ro9klPQqM05yAbpqROeMsbxmf+WF
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR06MB7959
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI0MDE3MSBTYWx0ZWRfX6geCeby8Ctoi
 4abSS7P62R2t/jMtgYPBeewYmqoPLgnhwcMT1SxCWo61PXgu805FKU8Li3G3ymM5uYCIJIA5ije
 bTg9ZSjynG+Jgj5uYIyYJaddZCkTXhxaQDeTR0whlF1IO+N+Pqb7iZHikw/PEPLnwKrrb1dmYMO
 AERWjJrGZ6CXvOejdjSyk8dociT31cy6SpYZ/l4c7TXbhiw2qRhLVTmai5vSa7EGEM8G7sz8pcz
 ZZiqoyKEM9L1YW//jcPA5Q/x3Om6ABcsn4E3nym0E5OZYbcwiAc2HeZ85g9ZirfmqysgRz6Vziu
 Q5VgB1lwwTBrT37vW4VYVXOvGNE+V7aTUsVTBDYHQ6Z4xOvYoYGhkwhxYI+799fQBHVb3oGPBS9
 7DJnAT35
X-Proofpoint-GUID: tZzis78QvPAlWQRiEHnHcdtsVdoF0rDk
X-Proofpoint-ORIG-GUID: tZzis78QvPAlWQRiEHnHcdtsVdoF0rDk
X-Authority-Analysis: v=2.4 cv=KOhaDEFo c=1 sm=1 tr=0 ts=68d56520 cx=c_pps
 a=Bwi9XBBeLLDh9/ECaGV8vA==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19
 a=R3fr6vWxGIgF0CYV:21 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10
 a=lre9DRYkaIEA:10 a=rS6rnCo4AAAA:8 a=hEK2XftRAAAA:8 a=LNhb960rAAAA:8
 a=q5txbtUnAAAA:8 a=q2zC1l5n5LFUNWYtEHYA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=Cn4oInlQH1Hl-535TvAz:22 a=pvvZm7_9ER1OwvpV3Ftp:22 a=duXMUGqUtLRgrHROm9qa:22
 a=RsootnAUgZ_jVqzlXDew:22
X-Wisc_ValidFrom: true
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-25_01,2025-09-25_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 bulkscore=0 clxscore=1015 suspectscore=0 impostorscore=0
 phishscore=0 adultscore=0 spamscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509240171
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Funny, I was going to ask you the same thing. Look, you don't *HAVE* to 
reply to every thing I say, you know.



On 9/24/25 10:21 PM, Karen Lewellen wrote:
> John,
> your point?
> I make a living just fine thank you very much.
>
> https://urldefense.com/v3/__http://www.commongroundmedia.ca__;!!Mak6IKo!PKB0RJD8OP0j6IPvNxWqJv3bVdhkPPGFE-kwr9ifYz1VeMSVsSw_Q_-tz-5BScuyFqCPj2W1RNsVjUvTKtEjtR7w2Q$ 
>
> Further, there are far easier ways for me to commit suicide then to 
> use orca android and so forth given what exposure to the speech does 
> to my brain..in 5 seconds or less.
>  I am deeply sorry someone told you that the only way for you to have 
> any dignity is to claim every blind person is interchangeable for 
> yourself.
>
>
>
> On Wed, 24 Sep 2025, John G. Heim wrote:
>
>> Well, you can still ride a horse from New York to Los Angeles. Most 
>> people would fly.
>>
>>
>>
>>
>> On 9/23/25 3:02 PM, Karen Lewellen wrote:
>>>  Its truly interesting how different life experiences can be for 
>>> people,
>>>  even if  sharing the same technical diagnosis.
>>>  I currently have outspoken on one of the mac computers in my 
>>> production
>>>  studio.
>>>  Its tied to a specific edition of pro tools, and the for me, needful
>>>  control  surface I use professionally.
>>>  I produce professional audio projects with this setup. Speaking
>>>  personally, I could not work any other way.
>>>  Actually, I did not even get this copy of outspoken until well 
>>> after 2005
>>>  too.
>>>  Again speaking personally the more respect for keeping broad 
>>> solutions on
>>>  the  table, no matter the motivations making them needful the better.
>>>  Karen
>>>
>>>
>>>  On Tue, 23 Sep 2025, John G. Heim wrote:
>>>
>>> >  BTW, the correct spelling for that early screen reader for Linux 
>>> is >  Gnopernicus. Googling shows me that Gnopernicus was the 
>>> default screen >  reader for Gnome from 2001 to 2006 when it was 
>>> replaced by Orca.
>>> > >  The screen reader for Apple I was trying to think of was 
>>> OutSpoken by >  Berkley Systems. Wikipedia says development of 
>>> OutSpoken was dropped >  after Apple released VoiceOver in 2005. 
>>> While that is probably > technically true, as a practical matter, 
>>> OutSpoken was no longer a >  practical option for some time before 
>>> VoiceOver came out. The libraries >  at the University Of Wisconsin 
>>> stopped buying Macs and got rid of the >  ones they had because 
>>> there was no screen reader.
>>> > >  Speakup was released in 1999. So the era I'm talking about is 
>>> from 1999 >  through 2005. You could use Linux at the command line 
>>> or in the GUI for >  free. Windows had a good screen reader but it 
>>> cost $1000. There was no >  realistic alternative for the Mac.
>>> > >  It seems to me that Linux has always been a step ahead when it 
>>> comes to >  accessibility. Well, at least since 1999. Before 1999, I 
>>> used Jaws For >  Windows and administered my Linux machines remotely 
>>> with tools like > putty.
>>> > > > >  On 9/23/25 12:27 AM, Jookia wrote:
>>> > >   Interesting, thanks for sharing. I never knew about Gnopernicus.
>>> > > > >   On Sat, Sep 13, 2025 at 10:35:51AM -0500, John G. Heim wrote:
>>> > > >   One of the biggest impediments for a blind person using 
>>> Windows > >  is the >  cost.
>>> > > >   It's less true today than it used to be. A Jaws license was 
>>> over > >  $1000 >  at
>>> > > >   one time.
>>> > > > >   For many years, it wasn't even possible for a blind person 
>>> to > >  install
>>> > > >   Windows. Well, I used to do  it via Linux, no kidding. I 
>>> booted > > into >   Linux
>>> > > >   and ran the Windows installer in an emulator with an answer 
>>> file. > >  That
>>> > > >   worked really well until it didn't. At some point, Microsoft 
>>> > >  changed the
>>> > > >   installer so it had to be run in their pre boot environment 
>>> > >  (whatever).
>>> > > > >   Even after the install, I had to install a dumbed down 
>>> version > >  of Jaws >  that
>>> > > >   worked for only 40 minutes.
>>> > > > >   Also, there was a period when there was no screen reader 
>>> for Ma > >  Cos. >  There
>>> > > >   was some 3rd party screen reader for the Mac. The developer 
>>> > > dropped >   support
>>> > > >   for it and some time later, Apple released VoiceOver. I was 
>>> > >  lucky, at >  the
>>> > > >   time my job did not require me to use a Mac. But the 
>>> libraries at > >  the
>>> > > >   university where I worked had to get rid of their Macs 
>>> because it > > is >   against
>>> > > >   the law to have computers in a student lab that are not > >  
>>> accessible to >  the
>>> > > >   blind. BTW, that's why Apple so suddenly started caring 
>>> about a > >  screen
>>> > > >   reader.
>>> > > > >   IIRC, at the time of the above events, I was using both 
>>> Speakup > >  and a >  GUI
>>> > > >   screen reader called Nupernicus. I remember walking out of a 
>>> > > meeting >   with a
>>> > > >   librarian to talk about screen reader options for his lab 
>>> and > > thinking >   how
>>> > > >   lucky I was to be a Linux user. I believe that particular 
>>> library > > >   replaced
>>> > > >   most of their Macs with Windows machines and paid like 
>>> $1000  > >  each to
>>> > > >   Freedom Scientific for Jaws licenses. They put in one Linux 
>>> > >  machine just >  to
>>> > > >   see how it would go.
>>> > > > >   The computers in the student labs in the Math department 
>>> where > >  I worked >  were
>>> > > >   alwys Linux.
>>> > > > > > > >   On 9/13/25 7:14 AM, Jookia wrote:
>>> > > > >   Hi Greg,
>>> > > > > > >   Yeah this is unfortunately true. I'm glad FOSS is 
>>> still > >  appreciated by > >  people.
>>> > > > > > >   Jookia.
>>> > > > > > >   On Fri, Sep 12, 2025 at 06:53:43PM -0700, Gregory 
>>> Nowak > > > > > > wrote:
>>> > > > > >   On Fri, Sep 12, 2025 at 03:31:55PM +1000, Jookia wrote:
>>> > > > > > >   I know this is the speakup list and I'm talking to an 
>>> > > extremely > > > >   niche
>>> > > > > > >   community here, but I'm genuinely interested to know: 
>>> Why > >  do you > > > >  use
>>> > > > > > >   computers this way instead of like Windows or macOS? 
>>> They > >  can do > > > >  much
>>> > > > > > >   more useful tasks.
>>> > > > > >   They're both proprietary operating systems. Windows > > 
>>> > > > essentially
>>> > > > > >   hijacks the PC these days, and dictates to the user how 
>>> they > >  should
>>> > > > > >   use it (E.G. requiring the user to register an account 
>>> with > > > > > the
>>> > > > > >   developer to set it up, dictating when and what updates 
>>> the > > > > > user
>>> > > > > >   wishes to install, and so on). MacOS is tied to hardware 
>>> from > > one > > > company, and only works on
>>> > > > > >   that company's hardware by design.
>>> > > > > > > > >   Greg
>>> > > > > > > > > > > >   -- > > >  web site: > > > > > 
>>> https://urldefense.com/v3/__http://www.gregn.net__;!!Mak6IKo!PJ5X0c86hX4IZtoBfv1kpLI0rcSQhBtXAThLGAI94dOL6KYPF7-9QJySUhuUeXnUO8FQFZp1QNEHanR6Yeo$
>>> > > > > >   gpg public key: > > > > > 
>>> https://urldefense.com/v3/__http://www.gregn.net/pubkey.asc__;!!Mak6IKo!PJ5X0c86hX4IZtoBfv1kpLI0rcSQhBtXAThLGAI94dOL6KYPF7-9QJySUhuUeXnUO8FQFZp1QNEHOOMsI_E$
>>> > > > > > > > >   --
>>> > > > > >   Free domains: > > > > > 
>>> https://urldefense.com/v3/__http://www.eu.org/__;!!Mak6IKo!PJ5X0c86hX4IZtoBfv1kpLI0rcSQhBtXAThLGAI94dOL6KYPF7-9QJySUhuUeXnUO8FQFZp1QNEHcie2CdA$ 
>>> > > > > >   or mail dns-manager@EU.org
>>> > > > > > > > > 
>>
>>

