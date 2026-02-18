Return-Path: <speakup+bounces-1555-lists+speakup=lfdr.de@linux-speakup.org>
Delivered-To: lists+speakup@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qH72LdJXlWlzPAIAu9opvQ
	(envelope-from <speakup+bounces-1555-lists+speakup=lfdr.de@linux-speakup.org>)
	for <lists+speakup@lfdr.de>; Wed, 18 Feb 2026 07:10:26 +0100
X-Original-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 0DE9315334F
	for <lists+speakup@lfdr.de>; Wed, 18 Feb 2026 07:10:24 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=math.wisc.edu header.i=@math.wisc.edu header.a=rsa-sha256 header.s=selector2 header.b=j3WkEMNW;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 99744382472; Wed, 18 Feb 2026 01:04:51 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 7916D38181E
	for <lists+speakup@lfdr.de>; Wed, 18 Feb 2026 01:04:51 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 4A3F73818D6; Wed, 18 Feb 2026 01:04:45 -0500 (EST)
Received: from mx0b-007b0c01.pphosted.com (mx0b-007b0c01.pphosted.com [205.220.177.71])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 8B20D38181E
	for <speakup@linux-speakup.org>; Wed, 18 Feb 2026 01:04:44 -0500 (EST)
Received: from pps.filterd (m0316047.ppops.net [127.0.0.1])
	by mx0b-007b0c01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61HJnMg5896891
	for <speakup@linux-speakup.org>; Wed, 18 Feb 2026 00:04:43 -0600
Received: from ch4pr04cu002.outbound.protection.outlook.com (mail-northcentralusazon11013041.outbound.protection.outlook.com [40.107.201.41])
	by mx0b-007b0c01.pphosted.com (PPS) with ESMTPS id 4ccxtyjv51-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT)
	for <speakup@linux-speakup.org>; Wed, 18 Feb 2026 00:04:42 -0600 (CST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Kz6CVRvXdzRc8OHcRVHetvFchhLSv8hOHz+JXXxIjYVlNfGa3mRd+7pDBFXQwuIGziMcFIIaRz+KfK7HzJMFc6tHwrOanrfBrdjLBvJpU7QidI6sAJ/n3+JI/WfiqNhlRvGEEzTwgEC5/HKe+PUoZl0c/fMQgqJHqPUn6W6m0Wl+Zgj5EVWPRth0XrIizYKU8k/WivKi7HWeXJlfQKS+nKPK45S0o45fL5m8dUKRkG0Z+JJ9lQomqFeHJiZCAz5HhUgsJkHUGew4RGA3/9O4jNmCe2StVKOGqg+2fhgT5jVq3AO27uoXlioapNke1epNLpOKeIufAok+VF8YCi+5lw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=55Qp4BvRnv4l0CQkyGdoCptr+z+XsR8QrsMlpwXf5ow=;
 b=bzKQ7tY1dvOBcEYLBIcl/7YQHWZB0dxzzxida21pzOJm3XWe1Nf3u1WPlASBejpElqnnsFB4DsB4u1JKzfjefN2IiNAyGbS0lD0y+TzdXbGhaPnlWhw61+GGafiVoCsxgMzyZj2uOjBi/XMotgT5+ZwCtoD2jU24GyWgfsRPUcmWyF67+SgCN0Kp26xTfrg0rUFjv5F1Cyq7LkWH0//82ZahCxPd5NfktDNOEVfwNTldZVa+iXi9gl1eAiNRaE50EKgHBfy/YL8FjXA7FDy8vdUifYJVLXupCaYvXZGcQilU8BbFw2QgKFo/yQJBYsg5/WZ4X0TnwN0nN0mgz/PC8g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none
 header.from=math.wisc.edu; dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=math.wisc.edu;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=55Qp4BvRnv4l0CQkyGdoCptr+z+XsR8QrsMlpwXf5ow=;
 b=j3WkEMNW7L+nhw6BGk6XElBFu1/kfU5M4AoFBqFaifk7c2JVDBmTBpnwL8x2JPCay3vo8mBDcXe/Frk6G384R4L6jhQcOamN+zHJQUqO4dg1i2WIT0qXjcZMozNFLvoN+Pvr5htjr9j+LDFeiYtAWfst0uxPQgMwWPGM4DcA8T4HDBkBb8eg4b+/dqHklm+JDixin8FRZ1ksa4AH4nw9FaZvFRW4ljHRxtOPEOFaWqz/bLty9Cukb7N2L33bWrxmrsNYkSxgyBLOdr7TJzd8w2L3bxbjksPUdiNGwNHexJwYb5H4koWK4SXo35Ef/vQ+oj2LoHWi3fTBzY/PRyWlvQ==
Received: from BY3PR06MB8195.namprd06.prod.outlook.com (2603:10b6:a03:3ce::19)
 by SA1PR06MB8212.namprd06.prod.outlook.com (2603:10b6:806:1c3::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.13; Wed, 18 Feb
 2026 06:04:37 +0000
Received: from BY3PR06MB8195.namprd06.prod.outlook.com
 ([fe80::a7ad:fb62:4389:fd8b]) by BY3PR06MB8195.namprd06.prod.outlook.com
 ([fe80::a7ad:fb62:4389:fd8b%4]) with mapi id 15.20.9632.010; Wed, 18 Feb 2026
 06:03:51 +0000
Message-ID: <9e978646-5a23-4950-aedc-350ab289e7f9@math.wisc.edu>
Date: Wed, 18 Feb 2026 00:03:50 -0600
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
From: "John G. Heim" <jheim@math.wisc.edu>
Subject: RPItalk Hardware Synth -- still more progress
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: CH0PR03CA0097.namprd03.prod.outlook.com
 (2603:10b6:610:cd::12) To BY3PR06MB8195.namprd06.prod.outlook.com
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
X-MS-TrafficTypeDiagnostic: BY3PR06MB8195:EE_|SA1PR06MB8212:EE_
X-MS-Office365-Filtering-Correlation-Id: bfd3f5cd-9fdd-402e-769c-08de6eb37d4e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|786006|376014|41320700013|366016;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?bXZ6QUZxaEphVmdZMW1Wd0RaenlyTHhpK3dmUUFFUXlMRFNybzY4YlB6WjZh?=
 =?utf-8?B?N3NLQ205ci8xT2NFVXF6cUxtcVJuTDB6NndGMHNMNGNpejc5VFV0LzJJWUtv?=
 =?utf-8?B?VkcxcU9qcEZRdEVtVTd1SFRGeHdxMGlQKzd1R3BDMlpmeDFWallzaXJEc05a?=
 =?utf-8?B?bjdrN1AwZm1UZWZ2c2FQLzVJRVl6ZzVpeVNwVWM3aC92alVFUEdORlpBM3Jo?=
 =?utf-8?B?dTVoc3d5RnhxMjVFL09DbWJpRzVML3pTTlcyWEhObSsrbEVwU2gyOC9tSG4r?=
 =?utf-8?B?WGEzWGVld2tEZndZUmZqenAydWcvSlpqdWp2emxXMWJuTGpGaEVyOGc4WjEy?=
 =?utf-8?B?YzFNNTNzeHN5OUo2UG5IMCtWbU5KNEw1MTNXcmlQYTVhT1prMWo1UDFFVGwv?=
 =?utf-8?B?bVo2QitRNWxiSHBmN1BxQnNDR3hoL1ZyNGlSNXhpa3lLcnppcTNMZkRGb0J2?=
 =?utf-8?B?UWFlMjNxOTlabWdaYXlIbkoxRStTSnRrWVhUS1ZyL1RBM3Y2S0g2RnBieExz?=
 =?utf-8?B?aW9KZk5WRGwxTHlTMUxSeFoyU216ZHM4aWxoQmlzcFJVWlNJOU9pTnYvMHkz?=
 =?utf-8?B?ek1PL0xNYkJoYlFuVE10bEtOb0RUa1dScTF6NU1tcTEzRzNvcUZxYmh6cGwz?=
 =?utf-8?B?QmZjWHJqVmYzVjFqcUQxVUpxTHQxQnFRZ0hRNEd3WDFOKzkxWlZ5aUUzMDYv?=
 =?utf-8?B?U1VGQnJHd1dqRVVnOW5lekgwako4MDJmSVZIM3J3am5CYUZoakMxSGxmMzZj?=
 =?utf-8?B?L0VyR21jdWpmOWJCQXd4WllKTXJOcFp2VkNOUWpzakZQVWRSbkY2TXRTRHY1?=
 =?utf-8?B?ZGt5MHpmZlMwSDBCV0dUdk1oMnVCbXNHcDI0eFdDbTB4aFFQV0dDOExISm5K?=
 =?utf-8?B?TWpYZjN2bWp5RHk0bUpHSEZzbGZEeEVUVW9tVllPL0tJTGRCYk5SWTZUZDM3?=
 =?utf-8?B?K2lrd2dobENJdTRnUW5qSDFBdmYvV0NkNldOcXYrcFJjdE9KczQ2bU1yckta?=
 =?utf-8?B?ZEZtSDhsVk5xTVlzbHE3TDNPNUdtUjFRZ2lzOWE3Rlg2MXREUXJhOWJHTmx2?=
 =?utf-8?B?aFZOUEpVdXhwS29yT0gwbkpyUkJvWkN1Vk5xaHA5NGpMdVBLSzNrMGd2U3ps?=
 =?utf-8?B?SzV3L3dBNStFVXdqSmRpVW9mdnFWMUE2NWVGVGdvbmNxYXVWR2ZzNjFYY1Vl?=
 =?utf-8?B?dUNYNTJHc1lrdVZqckV2clFSRXVjakxaTW90RnQ4NEZRaTM2MVRqUE96bXJX?=
 =?utf-8?B?Rk53d2RUajZDWlZ4Nlo4UEs2MmYrNFVoNGgvTEtTSFY3UUtGS2dtYUszNFdG?=
 =?utf-8?B?NjJWS3Z3WHhWVk00aUI0c0lGZDBiMHJiUlhla1p6aTN1ZkM0Q0xwd2Z5dUJk?=
 =?utf-8?B?YURvY2lCMlhmWi9KUUxFbUhVcmJUNTZVMlhVVFEyRldXVFhDbHl6NFhiUkQ5?=
 =?utf-8?B?RG0xdmk4SHdEZmtobFBCRFMwWUlZc1NSL3NnQVA5OEIwcy9VTlZESVFJQi8r?=
 =?utf-8?B?bGFmTkF5akpYVVQ0OXhIWkIwaFBQSDdZdjd2VDRZRXJqVUl0K2JRZndkVE42?=
 =?utf-8?B?R3ZXbmluU2EyZDdnVFJlZS9kZGsrQysxN0JYTWltSFV4UmVsNWp5QjRzeGsr?=
 =?utf-8?B?S3lNc2JJSkZSR3FoeHlnMHVaZWdZbDBEamdqRDljbHZiL3ZFdEVpWTFEUnhU?=
 =?utf-8?B?QytIaG4rVVN4dGZQSWdtaGFYRlVNdmNiMTlHaUFobGwycFJqankwRDk0UDR6?=
 =?utf-8?B?aURUSkkxYjd5QldybEVnNWFqbllaeC9uMHBvaGs5bUpKS1dodmM2NVRHUlc2?=
 =?utf-8?B?WGlmSFZBcm93MTliY29OVDMzUytUOHF4VXZEajlHck9oR1l0bDFrUm5vVDhW?=
 =?utf-8?B?cVlLWDZhQVZ3cmZWLzhGM1hNamk0NG5hK3NZYlJsMG9ES3FXaEUvNW12NkJp?=
 =?utf-8?B?NlMvL0d4MmZhSVpBcmljNC9yOTBYOXdUcnBuSklXclR4QkxMUEVwY0xBRkVU?=
 =?utf-8?B?aFQ0aW5kNHR4RTA1OGJvV2tseUJZUyt3b2xNU3gxa2tDNzNHWXFvWHZjNDhK?=
 =?utf-8?B?dFZ5Q2tVaTdnZ3FKbFdTV21XYnBqYzRiUWR5bWQxOE5rNWtVaWF3WmF3Ymdo?=
 =?utf-8?Q?B1FU=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY3PR06MB8195.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(786006)(376014)(41320700013)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?WDd3K29YUFYrUUFrWUJONHc5RTRQSlNxTy9jbnRZdVd2MUI5Zk5kbkZhdUVw?=
 =?utf-8?B?NUxUNTdHbGFNUWFmUlZQQStaZlZxeDRIb0VHYWNQdHdzMnVRejRDYzVjNi9w?=
 =?utf-8?B?aFgzL1g3SlVRclJzZ25GTGF6ZFZWRk5tbkVJYnpuZE5MMm52RktFWlBvWnlL?=
 =?utf-8?B?Y1lDUzF2MWtidThMdzdUV0NxWUxzQlBDYUNVSU1oUmN4a1VmTjVnWUx1cjlT?=
 =?utf-8?B?NngzTk02RFZvWm9yamo3Y0x1Ky92c3NCYy9Gc3AvZUhjZlIzcUxmSTErNDA2?=
 =?utf-8?B?eFFTWGRiMCtEQzFScGlYTHNVc2JpemkrM1JuY2cza3J3SkVxWm9kOWxSUzVK?=
 =?utf-8?B?NjVCQUR2ZUtOOWlFdVdsQ1pUWHZ2SWZsYkJLMFR5TmtVU1hxaEcyMVJJWDc5?=
 =?utf-8?B?RVcrZUNkM0hkREZBNFZQZ05jam55cmdQU2pHK3g1cGhVblNNZHhrU2tYaG9t?=
 =?utf-8?B?Q1VaR09HZEYyZVF2K1Exbmcrb1BhbmlPWDNrL1ZZOUhWMU15djR1bGExdmN1?=
 =?utf-8?B?MzJ3SS9vWnFBcHlmMjZsK0laTjNEWXQ0L1B0RllmNU12SzY3MjVSUlkyYkFG?=
 =?utf-8?B?cjdMRDB5alZiZG53bm9mL2tmNHNhU3dhY0daaDF3aytMU3l3Sk1wVEIrcjZY?=
 =?utf-8?B?SGcwR0E3QUhMNXVNK0ZpTXdSMXFETTVQUVNNYmhOdUZKSjhUUGtqQW1Ea290?=
 =?utf-8?B?Q3REZ3ZZWFJDT0xZUVZSNXcxRVRnSUNFSVdsSThySHNwSjNCMlREaDB6Skpk?=
 =?utf-8?B?T3dZTUY2Z2tXRGYzblZxWDFHSlV5NEIyQjBRTldOcVYyQVVsRFlqTFI0U3VG?=
 =?utf-8?B?Y25paDlXUFlLc2F1d0pVTDQ2cU5Db2FKWHJBc2UzZ0pHdUJxSlp5OXAxR2Iy?=
 =?utf-8?B?UkVmVUZzY1gxK1h1MG1EWEpCZ2JCNDZHTjRwNVcxVXBHZnhUWXdXMDFQL0JZ?=
 =?utf-8?B?RSt6YnUyL3JWSW1KU3FWa1pZbjBXMitHWjUrZ1dEREI1VEVyMDZlMnhxWmJS?=
 =?utf-8?B?NUxzTlBvWmp3Y0pUOWM4SGtkS1RrZjFDT0NYczRJWW9jT3ZpY1I4RjdWMkZU?=
 =?utf-8?B?bWdTR2d5OUhWc2xubkJwOEo3VGFibjByNVBiNmtXWXlBNWo0TWZvRnNIdjFU?=
 =?utf-8?B?bk9ES1ZGT2FzdU9ITVliVzFKcmF0dUJGYlB6ckZodTQxZjg4SkZXb3g3L3Nt?=
 =?utf-8?B?MUZxd2gwTmg5eEhuZnZCQjlxSmZJbUlOUEwzNnh5WnZIRE1qeE1YWWdXUnNH?=
 =?utf-8?B?RDdwTFo2c2xoMzY3UmQwWWc4Vm5QbFRkK0VxdENBVWd3Z0lBaUVObmZJZ3Rw?=
 =?utf-8?B?SmJrQjJGbENUK1NTR1RXZEFkZERjKzlWN1Vhbk04SVhJQi9RL1RDWldJS1gw?=
 =?utf-8?B?eHNtaTFWWVVpVjRxWC9jQ0srYmhsR1ZLTEVFOUxCY1RJQjQ1R1dRaDB2bFJ1?=
 =?utf-8?B?blNiemlSSStqL3RPV3Z2MndENEFnTHptZ3o5NFhYbHdQNVBaQ3NRbmNCMjNJ?=
 =?utf-8?B?K2F0aGh6WTMvV2lXQi9iaU1IOVZpcVJPN01FNWdrT1p3RWc5aFBvUWo2c2t6?=
 =?utf-8?B?WlgzeHVqMWx1eDBJZkx6c0pkVVRCSjE5dUNSTkpEYXlwb1I5UTk1YnJJZjB0?=
 =?utf-8?B?elBYL2NKNWNFVGlDT2VnZ0VCMTdmMDVJcVZtZVZuaWxHNm5MZnJ3V0dPRDNV?=
 =?utf-8?B?dG83aENYb0NweWoyblAzNnZOM1dJekh3dW9XVXBtWXBVL1phSVIvMGhzenRa?=
 =?utf-8?B?ZEhkc05IT2F5VzdYbUx5ZlZmeStRVnZTR1czaXVYa0NPRHRzZllUL2FwTXBY?=
 =?utf-8?B?Y1ZJcjNMVmZ1dzVpdFdGUXhsMkxTeWZXQUNBUEswWEpZazhtUkdlcUhFVjlS?=
 =?utf-8?B?NkJ5SzBTbFJDcXI2aHc0VEFyMlFhTVdacGRsU0FQalNzaXB0OUg2bnZ0NGNS?=
 =?utf-8?B?V3EyUjY0L004ZnhLaGhWUm1lenZZOXJZOW1XSWRrRko5c1FPdlRjUWNJdWNo?=
 =?utf-8?B?ZmVyZW5MSUZTRUdPZWVtaHFKcGRpRndDaVB6a2ZpL0c5bjJReFZYSHZJR0V5?=
 =?utf-8?B?akkyUnNHbTlnTHl3S1BLQ01vOVdDTmdFc0s5RDUzQXBuQnJKOEhJSXYwUDZY?=
 =?utf-8?B?Y092K00yRFBLc1JFM2V1VVhveGM2N1Rtc3J5TzhVWW04ZHFQdVowQWJLcVJt?=
 =?utf-8?B?bEt3TkRZWm1LNjNIV1JVdUtsOW0xZlBvR09EbHNGNDJkVld2YkhsY09mYkdD?=
 =?utf-8?B?blVFWmM0aFJGMHd0Uy83eVRVblE3LzJTZFVPV05ZaldNajVYODhqOFA4YklZ?=
 =?utf-8?Q?VRQ2pLGan9akQB66Xo?=
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: bfd3f5cd-9fdd-402e-769c-08de6eb37d4e
X-MS-Exchange-CrossTenant-AuthSource: BY3PR06MB8195.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Feb 2026 06:03:51.5312
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FqY5DWH6Svt9yJu1bOwTp/CT+enGikez/+R9IoNFpcaqkLlzmYukd5K9odADU9uU
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR06MB8212
X-Proofpoint-ORIG-GUID: _Q6QoymRI-zCr7uGEXMCDs91zHdmXNDY
X-Proofpoint-GUID: _Q6QoymRI-zCr7uGEXMCDs91zHdmXNDY
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE4MDA1MCBTYWx0ZWRfXzGkgmdK2PXip
 vhbgTmhs52uCNGNPglaqNpOUNUZ9xaDk51viMzWlah5Jp31f07J//0c0NVQm7pkPCJAm141qQbG
 ioITGPGI0LWwfyhSUp6LjFmfHeWGpt1bWBdH4SSEoimzRXfELAD6A03GGZSMv+/6gfII8mwepk+
 HdSzdgrYHr21ollwRhpYgynly6PdjRnC2f+9RxXSYJ/y/gD/r6fj86OmN0J6lJ5mBwz+HHo8uYy
 09PPQ+DCu/K/SF/QaXQoKQ9KYAMf9UVb/aEa2yH9lELIDiE31jPUZIrqSOXSRdf2S2ZA11XA0gs
 o5hCnrDp0W4YabSPT6no5PDaASKViw2tJUvNCLWHISluTK3x/Ux7/k4jh999vZ5kXTNZyf2zOqF
 S7fcvyHqQx/JQOrOqD2YNciiY34x21U+mAp54Wt24vQPBufRY8K7qYJKuMTExGH+MHHngJ+U0Ze
 LuL3msKyGJKxOt/icww==
X-Authority-Analysis: v=2.4 cv=Q+jfIo2a c=1 sm=1 tr=0 ts=6995567b cx=c_pps
 a=r8U4PY7g8F27BymEuqiK4A==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=lre9DRYkaIEA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=_YQNMapzMWpNXIJ_EJgA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
X-Wisc_ValidFrom: true
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-17_04,2026-02-16_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 priorityscore=1501 bulkscore=0 suspectscore=0
 malwarescore=0 clxscore=1015 impostorscore=0 adultscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602180050
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.89 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[math.wisc.edu,quarantine];
	R_DKIM_ALLOW(-0.20)[math.wisc.edu:s=selector2];
	MAILLIST(-0.18)[generic];
	RCVD_NO_TLS_LAST(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:5645, ipnet:206.248.128.0/18, country:CA];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[speakup];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[math.wisc.edu:+];
	TO_DN_ALL(0.00)[];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jheim@math.wisc.edu,speakup@linux-speakup.org];
	TAGGED_FROM(0.00)[bounces-1555-lists,speakup=lfdr.de];
	R_SPF_NA(0.00)[no SPF record];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 0DE9315334F
X-Rspamd-Action: no action

Oh man! So today I decided I  needed  to modify how my home-made 
hardware synth identifies itself via USB. I can't have it identify 
itself as a Raspberry Pi because then my udev rule to load speakup 
modules would trigger anytime anyone plugged in a Raspberry Pi no matter 
what they were doing with it. Sighted people wouldn't like that. So i 
figured out how to modify the ID fields for a USB gadget. But then it 
occured to me that I could have it identify itself differently depending 
on  whether it is configured to emulate a DECtalk or a LiteTalk. So now, 
without doing anything on the host other than installing my udev rules 
file, you can switch back and forth between DECtalk and LiteTalk 
emulation and the host will just deal with it.

You don't like the DECtalk emulation? Fine,  switch to LiteTalk and 
reboot. Don't like the LiteTalk emulation? Same deal.

Slick!



