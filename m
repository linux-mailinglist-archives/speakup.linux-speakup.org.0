Return-Path: <speakup+bounces-1558-lists+speakup=lfdr.de@linux-speakup.org>
Delivered-To: lists+speakup@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KAOkKzi3qWlEDAEAu9opvQ
	(envelope-from <speakup+bounces-1558-lists+speakup=lfdr.de@linux-speakup.org>)
	for <lists+speakup@lfdr.de>; Thu, 05 Mar 2026 18:02:48 +0100
X-Original-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 08C12215D2D
	for <lists+speakup@lfdr.de>; Thu, 05 Mar 2026 18:02:46 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=math.wisc.edu header.i=@math.wisc.edu header.a=rsa-sha256 header.s=selector2 header.b=C6T6e1F8;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 49873382542; Thu, 05 Mar 2026 12:02:43 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 280E738187A
	for <lists+speakup@lfdr.de>; Thu, 05 Mar 2026 12:02:43 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id A8F5C38192C; Thu, 05 Mar 2026 12:02:35 -0500 (EST)
Received: from mx0a-007b0c01.pphosted.com (mx0a-007b0c01.pphosted.com [205.220.165.71])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 5C5033817F5
	for <speakup@linux-speakup.org>; Thu, 05 Mar 2026 12:02:30 -0500 (EST)
Received: from pps.filterd (m0316037.ppops.net [127.0.0.1])
	by mx0a-007b0c01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 625GwZS63467144
	for <speakup@linux-speakup.org>; Thu, 5 Mar 2026 11:02:24 -0600
Received: from sn4pr2101cu001.outbound.protection.outlook.com (mail-southcentralusazon11012005.outbound.protection.outlook.com [40.93.195.5])
	by mx0a-007b0c01.pphosted.com (PPS) with ESMTPS id 4cqdtw01pr-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT)
	for <speakup@linux-speakup.org>; Thu, 05 Mar 2026 11:02:24 -0600 (CST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PU3k4pN+hd/M2baH81qm44GN57a29tMU6Kf+jr7Rza8EV8rurft0kGIQzd0tEUKLZJrEQqruzdntDVcqWeI7f6gMkcRvRHLcjIBOKdBmF3O/+0ikAmXR9i7wEnAx2jfbR+YEpsmnYX+5NT69wGjqc8DAD0RT5opQ5ONUU2eJkGtfk9s+FL76uu5WYl3lLPfcBebmWCqEf4IWMrvxXoQFJPnXfHjrkwwDNprumiO52rqpzkK0hXsM7I6wq3XHiVoJEA4Yq8iF494Aol0B9c9PNLy7cDkB1CL3gvFXjk4Mg6W+Ir++VgP65s3F5rVsqsCx6kdNBCwiYPy5/N/ABg99ZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Zel1JbyVvHJmLVVRdIZ96Jr8zJcjiElrY+iORPqtdss=;
 b=TF0erGjhqJ7YH6odIWHUXzNu6dbGFnS8vAAqHobGkVE28vA9xnZZiOBQ3iWYGcCrQ7pW/b99xGpRGk6rX7gUvipFM61yYLmF+5JQ8MfIrLWL9aggSW2hwuLr4/KDe36iqjuq3mfdQhfbcBPneEuL8d0+GNExpSvn9gM9kTO5k1tmBxocpWw7ARI+Gd9kphvD9iXi9Lrb7a96hjwFAhaBxk6cqsw8R20DGAru4BLZYRmhy4ia7atXebnhMd8t0VIK8pr9+AEz2RS/CbDvEuTxpcR7QDohMFSd4VxtrSkOiKg7YatjNuyCXFqeHx/veX23Hvq/KJxFd/v8OdnW3FUdCQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none
 header.from=math.wisc.edu; dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=math.wisc.edu;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Zel1JbyVvHJmLVVRdIZ96Jr8zJcjiElrY+iORPqtdss=;
 b=C6T6e1F8JBWVDcqWSFf8phpSKIfhxTLaZp9gkXnanyYINxSjW+Ps28Vk8z+c7gi9yR+VoiiSQzSfseiawSzA39zzgNy8kGeJwNmFEr44juod3E+LUWPs6BrM3LqJaexP7M3Etr2Fq7GvufsLGVPbeuwMe6L6wWi1Podc6sO/iPnCr1d45Tccp08As2sqJ3P3ve5gzwdLzKtMYldPm0W0DTc+xKekXHcdgTWYp8gXRz/5HphLCf2qZZxd8Zrm0SLvcHti9GgwFMFLwPIVgKnkpOshA10xB0XDJAZiY5Pqb3TIK+x7gzsyCHy3dktMcoGoxAzvmwuqLO6N9ZCEGA7B+Q==
Received: from BY3PR06MB8195.namprd06.prod.outlook.com (2603:10b6:a03:3ce::19)
 by PH0PR06MB10222.namprd06.prod.outlook.com (2603:10b6:510:332::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.22; Thu, 5 Mar
 2026 17:02:19 +0000
Received: from BY3PR06MB8195.namprd06.prod.outlook.com
 ([fe80::a7ad:fb62:4389:fd8b]) by BY3PR06MB8195.namprd06.prod.outlook.com
 ([fe80::a7ad:fb62:4389:fd8b%4]) with mapi id 15.20.9654.022; Thu, 5 Mar 2026
 17:02:18 +0000
Message-ID: <c9ca0abd-8b7f-4058-bb9f-89889c225b99@math.wisc.edu>
Date: Thu, 5 Mar 2026 11:02:16 -0600
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
From: "John G. Heim" <jheim@math.wisc.edu>
Subject: Notes on automatic load of kernel modules
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: CH2PR18CA0060.namprd18.prod.outlook.com
 (2603:10b6:610:55::40) To BY3PR06MB8195.namprd06.prod.outlook.com
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
X-MS-TrafficTypeDiagnostic: BY3PR06MB8195:EE_|PH0PR06MB10222:EE_
X-MS-Office365-Filtering-Correlation-Id: 7a278ede-68ed-4034-e726-08de7ad8f53c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|786006|41320700013|366016|376014;
X-Microsoft-Antispam-Message-Info:
	2rQ5BFVTbPC2Tpo7t4W5pkWuIDChZWhoIdZhdN+5CWBXv22D1/mDZaE6CjaFWdOKRW/I56jvCK4uejmbWkwGRM1L+6tMxNfvyB8e5Xyhzhya0BQayFqs3sY/9XGBGLJeyQuLzXj75b+KAJ2GkxJDXEhYCSJ5EJe8S2q0qBjp35Oc3cCeGV0ek//2fesC3xPtyIR9f+n4YipWkNPBTuRwgzeFZ0XnIRXRoIIyiAHLpAkGY/MP1/CuJz27qIs4jVCjcln9Z4DomSI1zE2QtrwLCdO4mnyd7MZ/m0twulkBwsjLpYJJJccEsXpckziUEmFMtzpzf8ZmsbXGM2gdA2JtI3h8TJduk0hEs9eP1MuNLKq0T+redVDzgUbvy35oMqGzAq+OpbDeKqgebTGTpKdcDkczmoEiIWY2AiSeevmqqfTHixq/+Z0PEo7Usoogmn7X7Pio99OCtbO4KMeOAcymnqtThxYqmSz/P8N9kP2XC4OFjjZ/i9ZuMyXlWACRkicTfnZCVgljSs3lfP7PSWSWUfxEXoT0g2oMuKbSfaPsJZ7oM0I9ydwT+mPrPK0T3sr81G7L674RLA6lNWsHQMgqFjcuoLdRon+QWDQdrjA1nonPBESzrwvLALeh0dbfqyrmQnX94+RuA3ajJNEJZByNW6qim20hv58CjB3LBPsbYhlKgyioERjw0OjkWAQIm4TSZ804w2s5FfarD8SCXESxQN8qDWXLXcJMYs2nFYk+kGc=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY3PR06MB8195.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(786006)(41320700013)(366016)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?VUFqek9KdWN5NHRvcy9QQXVjR1MwNVhNUURNWFNzY3RvNy9VVmZNVmxhT2hP?=
 =?utf-8?B?aU1NUU53TFQ4UzNwWDVIaE1NTU9DdlRjNEpWQTBhUTRtU0xqVFQ0NDNuZGtN?=
 =?utf-8?B?YkJ2TlZDSlAvTWlTU3lwcTQ4aXE1WEtMK01CaXZydkRJandxY0FwSnprRkxj?=
 =?utf-8?B?bzhPT3dKU0pwYnNlUGtmZzdLSlFjbkU3VXQ1dDc0cXhydkxHUEtGMWhscCtB?=
 =?utf-8?B?SGJoeDdXVjM1N09UK0NkWlNjdi9kRFl4UEV2OWhsM0o3aU51NklEN2FnQnNI?=
 =?utf-8?B?NDVBaEk3T3REWVN0WHBsM3E0OUdCdDBVYWJOWTNBYy8rZTYrWUZpTGR2U2xY?=
 =?utf-8?B?MHBOd094OVV6d2tnSmo4SDE0Vk5kOHQ0b2FMYmh0bTBtVHBDdFFNTnZaRmJu?=
 =?utf-8?B?MmV6UUR6VjF1aVlaaWIydUdsZGdDUXRxL3dtWC90c0Q0blFyeFoxQy9Ya2tP?=
 =?utf-8?B?N0JuYU9JY1c0QThzcmhkUVRYSlk5K25TV2lmZUJFRmF6cHlhMzc3cDZaRjZw?=
 =?utf-8?B?MVI0NWpzbE0vdXRsVERTWDhoVFVoSHhSb29LVTBxNVdwMlhLeExyZFhtK0pj?=
 =?utf-8?B?RWZZcisrMXBPaXV5YVZkeG5ZRXdIQTVHcDI3VkFIbWR0WkRITUlMN0hMTFlE?=
 =?utf-8?B?RGNjRjVZMUZsVUtLd1pIN05ma29IQVFYZ0phZFlLQ3lPdlUrU0c4SG9CQWFj?=
 =?utf-8?B?QXozVTFEUVNoSWNaVEZxSXpIMzJPRXZaL1o2bXNDR011YUlUUW1YaS8ySjV0?=
 =?utf-8?B?WGRGc1NndFpDU2ZDcE5BNzMyVmxuUnlWdjdnVHlPZVk5eVdFL00ybVdPZkhX?=
 =?utf-8?B?NXJTMjN2RldpMlJKVTFCVDc3d1h5cEM4U2NFQUhZVTd2cUxTS2Z3bHBOWUJq?=
 =?utf-8?B?YjRvcFhSb3U2cUFINGo0SDRYY1I2OHBLYjJIeFhTaEV4YUxTdE5aV0N3Wm9H?=
 =?utf-8?B?a2gzU1hyaXc5d25uMURNQWNRL2hhS3ppVU9QcmVIWWIxZkhUbnFZdDFtYnJa?=
 =?utf-8?B?ZnhiUWczeUhrTWJ5KzVwMFV1d2xXZ3FnVjhUeWo1UGhhY0FGRlBUK1R0N3lw?=
 =?utf-8?B?MHdTaUZjRUpZZVVXcmQyZXhhTXNvUlE2SURTaHBBelZvZ29JblNSYWxmTzQr?=
 =?utf-8?B?WWRGcVJGS1o2MEFWZFRDbXJlN0tFWkJiN1R0NlREUHJXbnYrV3FkdTRjUFRk?=
 =?utf-8?B?dDYvUDBucnczemE5K05xalRkOG9DdVgyblo3WlJHeDk5ZDFFdzZ2YlhsRktE?=
 =?utf-8?B?cVRrK2lKWVFQVHhNemdHS092dTM3YzYwZGlmYnV6WnQxSlFzNU4rY1J3Mldy?=
 =?utf-8?B?ZnpQc3hXWTJOQWl3d1JmYzMzWUNJeTFqYlpKRVozRzJCeCtveitjNVFhd0dO?=
 =?utf-8?B?RDRtLzVpSFBlMWtES3pCQk5HN1BrR0FEdUtPMFI4akZXdGtPVnlBUFpvMmh2?=
 =?utf-8?B?cDlEN0FwQmhxM1FKbWlIcHA1OWJkQWk5L3JGRnVPdjRMRkZnWEZUdlpybGk0?=
 =?utf-8?B?SWNCVmRRcUh4SHYwSWVobUszcXZmZHZtMy8vWC9OOFFTZXRhVThqWU1zMjJG?=
 =?utf-8?B?VFZNRW90MlIyVUFPT1NrV2YvaDVQK2RZU3c2VXNMWUJkWHI5WHR6MzJHNzlw?=
 =?utf-8?B?OHpiWHd5bXRlR2VTZ2NSZWFuYXVrYmt1ZUNGUWpZUDM0UTZSS3lnV0V5V1FB?=
 =?utf-8?B?Ujl4T1o2Q20zKzNqQUIrNWh2VC9EcWRFeFd6c1M4a0xBL09jc2VFZUk4WTN4?=
 =?utf-8?B?Sy9vZ01WclVrWUNZWktkcUVmR0FkYURIdjlBcjhTV2hQeVhKOTgrYStLV1lD?=
 =?utf-8?B?aW04clpYeWhWeDJ4TjVoWk1sNHlZMDIzNzFxV1JKVzBucVNVSE9KWGZnYk9Y?=
 =?utf-8?B?S2Nvc0w4TGxuQjVoaE1ZM2lVYlNMY0ZUelYxYXBnakxCaWU4SXp1UE12WnRX?=
 =?utf-8?B?OTNzK2tSZlQzdnllRnhxTkk5UUxlSFBvWXFJSkMvRjdxcFZ2U1JRREVCVE5h?=
 =?utf-8?B?MDhJcUFJb0hlSU5kTW5mV1BSeUN0V2FRc1FJOW9iU0p0OEtjM1BiWFpISFFD?=
 =?utf-8?B?aW90L1A5OEQzYldONjhMcHhGL2UyUnovZDhEZHlIWmMrWWx4M3V0SkZ5K0lD?=
 =?utf-8?B?bXF3M0ViNUhscFBhcHkwQk55bWF6MVMzODZ3WjNvU2NrWi92VW50OFRjUUdx?=
 =?utf-8?B?NnNlK1RiSnNqVU15YUxtMXQrYUxsV2szbkphUUMzSzlHNGdkTk9WVUcwRUEx?=
 =?utf-8?B?K05BMldsZU8vMkJmcVRndXkxSmFMY3RKMkNqY1J1Y1dWa0VrdEZZYnRaSk8w?=
 =?utf-8?Q?bErqLvExNV8f5xWGkj?=
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: 7a278ede-68ed-4034-e726-08de7ad8f53c
X-MS-Exchange-CrossTenant-AuthSource: BY3PR06MB8195.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Mar 2026 17:02:18.0352
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1E77vO7EOOsQqCgr8O1v6fTn7AGdWxgQkQbbyNZz4d8W9C6OwwhuLZPOnpkLoswd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR06MB10222
X-Authority-Analysis: v=2.4 cv=Z+Ph3XRA c=1 sm=1 tr=0 ts=69a9b720 cx=c_pps
 a=Wms0yhV2hyGqr6ZNmSx9tw==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=lre9DRYkaIEA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=ZyELlZqCvD1aXIDzc3I-:22 a=ITryANUCd-Ynqp4Uyibb:22
 a=5pVHBQ84ZkGRSGp4WpYA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA1MDEzOCBTYWx0ZWRfX84+sldc6u8Z5
 jtAZafHJ0E1MA1qNUNQrHFW9GFypgvU1diB+It7i6zNAeHW7nsBa5oYsSQkPxAGF765CshWlIbq
 GOAxEGQaRwZ+STpsIaJyN+7Zn3v+YnhTI8bRIvzBsEoYkrx1/l7Iao/x9pRyD+jNb3AXpqm0b3C
 vM8jaXxy0R3jT04yrgi263xhWoe2wpHZDJuVrt2z7elxWFfN7PVasTLj12Yk/gPWpaCsr8uKWj0
 YIfXG6tNpyHc9qbJEe0j0O+5DBeayOxO2/ofWPQm79uiRZ2BRncI0m80sFDqgsneGxZEpeuIzua
 iNGPiUmHY7NL1qq3GA6RaydtgKe7U0jhD3r+6Cm4fUMi8bWRf6SI2wg1YLT9GlWKolAVTpjR44a
 IIB5wdbFGd3sziqicVLS7ZwweEjULzs1M/qurMVm9g7Apx8k6hiZxMTvY97dJ10oC2N4/4ga9m4
 4ab53UHsSpaKi5Szs6A==
X-Proofpoint-GUID: ZUFpJBV7zEblQsz5Q_Zs8lAxJm1u9Gfg
X-Proofpoint-ORIG-GUID: ZUFpJBV7zEblQsz5Q_Zs8lAxJm1u9Gfg
X-Wisc_ValidFrom: true
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-05_04,2026-03-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 suspectscore=0 impostorscore=0 phishscore=0
 lowpriorityscore=0 clxscore=1031 bulkscore=0 adultscore=0 malwarescore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2603050138
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5
X-Rspamd-Queue-Id: 08C12215D2D
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.89 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[math.wisc.edu,quarantine];
	R_DKIM_ALLOW(-0.20)[math.wisc.edu:s=selector2];
	MAILLIST(-0.18)[generic];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_NO_TLS_LAST(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-1558-lists,speakup=lfdr.de];
	RCPT_COUNT_ONE(0.00)[1];
	TO_DN_ALL(0.00)[];
	DKIM_TRACE(0.00)[math.wisc.edu:+];
	R_SPF_NA(0.00)[no SPF record];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jheim@math.wisc.edu,speakup@linux-speakup.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:5645, ipnet:206.248.128.0/18, country:CA];
	RCVD_COUNT_SEVEN(0.00)[8];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[speakup];
	DBL_BLOCKED_OPENRESOLVER(0.00)[math.wisc.edu:dkim,math.wisc.edu:mid,befuddled.reisers.ca:rdns,befuddled.reisers.ca:helo]
X-Rspamd-Action: no action

I've been on the systemd development list where  udev  rules are 
discussed. And  I've learned that what we, as blind system engineers 
need, is not udev  rules. What we really need is for the speakup modules 
to be included in the Linux kernel.

I know the experienced people on this list are listening to that 
previous sentence and saying it's totally unrealistic. But what if we 
asked for just one hardware synth to be included? The core speakup 
module and one other synth?

A blind sys admin would have to have one particular synth (or one that 
emulated it) in order to automatically get speech upon boot. Limiting it 
to  one particular synth isn't as unreasonable as you might think. For 
one thing, there probably is one synth that is way more available than 
all the others. I am guessing that is a BNS. But it  might be LiteTalk. 
We could decide that among ourselves. And then, if you didn't happen to 
have the synth we settle upon,   you could build it from a Raspberry Pi.

I think this whole question really depends upon how important Speakup  
itself is. Is it even really worthwhile trying to solve this problem at 
all in  the 21st century? I don't know -- I'm retired. It no longer 
effects me.

The thing is that Linux systems engineering is only getting bigger and 
bigger in this modern world. Who knows what AI will do to it. But right 
now, Linux systems engineers are  in extremely high demand. Every data 
center on the planet runs on Linux. And there are a whole lot of those. 
I think the big deal with that is the trickle down effect. My job at the 
University of Wisconsin was to run a cluster of machines students could 
learn on. The guys who invented ChatGPT started out as undergrads 
somewhere and somebody had to give them  a place to  test their code. 
That was my job.




