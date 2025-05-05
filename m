Return-Path: <speakup+bounces-1266-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 792D0AA9E1F
	for <lists+speakup@lfdr.de>; Mon,  5 May 2025 23:28:34 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=math.wisc.edu header.i=@math.wisc.edu header.a=rsa-sha256 header.s=selector1 header.b=aM65C6By;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id E1001382944; Mon, 05 May 2025 17:28:33 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id BEF4E382121
	for <lists+speakup@lfdr.de>; Mon, 05 May 2025 17:28:33 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id A266238216D; Mon, 05 May 2025 17:28:26 -0400 (EDT)
Received: from mx0a-007b0c01.pphosted.com (mx0a-007b0c01.pphosted.com [205.220.165.71])
	by befuddled.reisers.ca (Postfix) with ESMTP id 3C1EE382042
	for <speakup@linux-speakup.org>; Mon, 05 May 2025 17:28:26 -0400 (EDT)
Received: from pps.filterd (m0316036.ppops.net [127.0.0.1])
	by mx0a-007b0c01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 545JIcJ9029051;
	Mon, 5 May 2025 16:28:22 -0500
Received: from nam04-dm6-obe.outbound.protection.outlook.com (mail-dm6nam04lp2040.outbound.protection.outlook.com [104.47.73.40])
	by mx0a-007b0c01.pphosted.com (PPS) with ESMTPS id 46e4qsrfxs-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 05 May 2025 16:28:21 -0500 (CDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hmPTG9HCeztpy+ts/z+U5KAkww1lgwOb+RfOMqPDv+5k+/lZG/EQ6i83oPQGfOb7Mhg9f6c5q+eSJ74wVWAyvD7KFccNatf+r11y37nYX19+S7jEFQ/HzBuJnJ+SjktGGOTBZZ3pGr5/2/Ikkk9itiWBhI3bfXJO48zKptab/KFu1vyThlF/ojq8TzX/xT9NgKQaoIAulOP9ED36IFuZJfhk7Sikf5Yba2AbYdhQQE81mFxhSgCVk3mJq8I9ImRGQsYNCzEskdRXiDIZHH6rb3MNTmk0BRGe4MOuSKdleXY/8s77hBGNByvhx/jNEH0GOgE7WpvQNWPpsTNpMSg4jw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eEfJ1k+y70YBv2jYVkXhRosOB7lDZesNbI3rtw93aNk=;
 b=LTSHFRlgAFkQvtv9hfUo8tJGfdyJYKBBsjk+0kb/gw96gTaV9/vhYhvtB8WUo6dwTC0hdZB164wFoq646QKLt+ne4rHpcc9Q+HISCApvpd5AwzeZHebWV6oA+trtaRMZCffFNUJkUE4SmJqmJv3UgnymBrsI2bKo6zuKFYv/ZVCGH7LrFhHx59HlAIU2liOR4QRTUYXXrQt6CVrK4lHwpH8yJsnrQz1iOBShUWnH9P6/HUEvXI0NRcLl9QIlf/T3uLMWheX+te7LM99xuyKiW80l8YcepNC5aR50VU/4Ynp6ftNlSBWSVKlkkU54O1w8sxpRM6v6mfA+EVdGTPMZNQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none
 header.from=math.wisc.edu; dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=math.wisc.edu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eEfJ1k+y70YBv2jYVkXhRosOB7lDZesNbI3rtw93aNk=;
 b=aM65C6Bynvu3TuaTZRVw7P+xsOtTlUT2UEfVynRwx8paGIdXlkfyaG+rKISTZinGNP9HjRFrwa7u9SCKsUHxu7bHgP0OjhafDwW5i71cVvgJqxNO6/pUiU2HDnWIXeG4/FczEuSy9FGtbqHBTu/rKLuBacfgxroqMmd521Ju/aWQVinnvPVlItLtSgMKipYmJKZ1tG8ZNWro6dtT8jZR+bjXoJfCAiPdvTLOeN5kTG0fJPoDUtV9bzlg7XM05uZqcqLf/WmonVNNHWsfGrx5eKb2lIqkZYXsAzFIyrazDuaCk3lGpXAZEXyF+Y/JIO6S3ByVjzcVCYkJmV0uT75e4w==
Received: from DS0PR06MB9877.namprd06.prod.outlook.com (2603:10b6:8:1d5::14)
 by SA3PR06MB9442.namprd06.prod.outlook.com (2603:10b6:806:380::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.20; Mon, 5 May
 2025 21:28:20 +0000
Received: from DS0PR06MB9877.namprd06.prod.outlook.com
 ([fe80::a347:6162:9bfd:9b91]) by DS0PR06MB9877.namprd06.prod.outlook.com
 ([fe80::a347:6162:9bfd:9b91%3]) with mapi id 15.20.8699.019; Mon, 5 May 2025
 21:28:20 +0000
Message-ID: <781e661c-7ee3-44ab-8da3-a69e7dd21d39@math.wisc.edu>
Date: Mon, 5 May 2025 16:28:19 -0500
User-Agent: Mozilla Thunderbird
Subject: Re: Load speakup module as kernel parameter?
To: Samuel Thibault <samuel.thibault@aquilenet.fr>
Cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <55a2cd5c-4b26-4c77-a55b-cfaf59d74316@math.wisc.edu>
 <aBklhtM_CN4OmF3L@begin>
Content-Language: en-US
From: "John G. Heim" <jheim@math.wisc.edu>
In-Reply-To: <aBklhtM_CN4OmF3L@begin>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: CH2PR07CA0062.namprd07.prod.outlook.com
 (2603:10b6:610:5b::36) To DS0PR06MB9877.namprd06.prod.outlook.com
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
X-MS-TrafficTypeDiagnostic: DS0PR06MB9877:EE_|SA3PR06MB9442:EE_
X-MS-Office365-Filtering-Correlation-Id: c3dbb6ff-8f23-4640-f2b5-08dd8c1bc1c2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016|41320700013;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?a2pncFVyQWh5Ty9FaDUxSitLTVlaV1JMNS9tZDUrNFN2NG0vRUw2OFNSaHZE?=
 =?utf-8?B?bTlXSmViUVNQQk9YOEk3MWdkYkxEVlJDK2lNbC9KYmlKa0xoaUo4b0YyY1Vz?=
 =?utf-8?B?eWNJNnROR0RXUVhKS3Zsb2UwUDRWRlB6RDJ6LytkeTdQVFN1VE0xcjFsV3Fq?=
 =?utf-8?B?cDNQZ2hLeEsyU2NiNlVMN3R5VU8vWFFtYzJFL0c5amNyRTZmL1hPZ0U4QmNL?=
 =?utf-8?B?by92bjBla3B6ZlhLYUZCMzgrdGVkWlFkL0NpMmJKaU5rNTZKdmRPeS9UY3hv?=
 =?utf-8?B?L2ZVYU5Yc1BRRVU1c2V5U1JyQjhYWXJuK09xcDNOVkhRNThNRnNzWVRZRmIx?=
 =?utf-8?B?TDZRM2pSME1ZMitPeXlUWUVDUnhOZnN5UnAwZ1NURENZTk1PbWUybmRsZ0s5?=
 =?utf-8?B?aUFvQ1g3ZTFNZ052dEp1QmV3S0FpOVRFNjdVV3lsVUZMTWtGYUJZZzRiUVlR?=
 =?utf-8?B?VUVzc0pWNmVobS9GWG1zemRnS204MWpJVkdFdzN3R2I4VXVDVy90SWcvTzQ3?=
 =?utf-8?B?UTVHU1RSQmlQWmNHeEFjOFhycUxDUG1wRjZ3aU9PRkZUSWZkN3lxOFFiN2tX?=
 =?utf-8?B?M3hvaURQWU1laFZPdmhWWDBGMWtGT1d0RlBlMlNLSVUvOXN4ZG1SSEVxb1pj?=
 =?utf-8?B?OXE4Z0lnd0svUEltK3JSRHZmU1FYRnphcU1ZOEdpbkRxeGtNUE9wZnAxQktw?=
 =?utf-8?B?OEdvZlN1NVRBbTFqTlVoZ1BUTFliSEt1a3RjalRZbitDb0hxRFMzTU84bVFi?=
 =?utf-8?B?OVA4SnI0ZlVLMjF4VTVJbmptMmlqY3UrMWVSczJpNGw1QU9XSDY1Yit6cHJ5?=
 =?utf-8?B?R2IyWk9USjc3bmdQcStoMFdmVkZhQzRLVlhtbEorYXVrVlZwNzRxZEI3WVhQ?=
 =?utf-8?B?RHNhU200eVhscmQ4NUROZHh4VE9HbVhDeDB5Ty93OXVIc08zYWV4bzNVYnpY?=
 =?utf-8?B?bFprR1VRVW5GR0plR1p3ZFkzR3FmMmkvM2xBT1dWWTRXOEkyc1ljQ3g4RFYx?=
 =?utf-8?B?WWROc2RPeHRWUGVkUlJTd3FDYmxmSmNLRFZsalZkU3o4ZFlldDJ3VkRzWnhS?=
 =?utf-8?B?RTZPaFhaY1dtejJIaXlZRCs1SURTNVhsT2NOUlI0eUtabmVMSCtpZzZHdUhV?=
 =?utf-8?B?T1d0MmlQQ3J5SU0zclBrUk1TangzdWgxcE9ia3gwM2gxYXZmYlBNUENKYndq?=
 =?utf-8?B?eHViYVRMcTdBd00vVmN1Z3NiYTBEbmMydzBtZmlhdW80RWJSVWsrbnhJcTNu?=
 =?utf-8?B?eDBqb0xjOVBtZ0xINnBMeDB3YUtCRWtyMG11N2FFTHp1a0d2bDlYYUtQd3BJ?=
 =?utf-8?B?bmRBbmJJK0NrazRuTkdWU2tLZzVkN3NyMWJCbWgyeXBtNzBWQ1BVd1UrdVQr?=
 =?utf-8?B?WStGZkNGUlZTTmQxdlRJQmFWZm5leFY2ZWh1Ni93SWlFYWRVUjBKWkZEZm00?=
 =?utf-8?B?RVJieTBHQ1FaRHlvbmQvV0xrcFdXYnJNK3ZGR1VaZEJJZkh4N3plZDhzTHU2?=
 =?utf-8?B?cFFwanRRbmNPb20wc3ErNWZYSjllZHJCR29OL2ZlNDg4dUt2MkNONG9lcE90?=
 =?utf-8?B?RkpzbllsUjlyOVhjN0Z4T0hlcHZnSVlsUkFlaVFzOXF1bHlQQTRSVnZlUnFZ?=
 =?utf-8?B?azdCOWc2ZW9DUGZObkZVbjlTWVdNbjlOd2hJOWxDeGFVQlE1QWlBOWJqdXZW?=
 =?utf-8?B?UWpjN1VaU2FDbnhuZ3haNjJhVWxYR0lmazVXaGVnOFI4R2VYQWVFTkZRZE15?=
 =?utf-8?B?MkRkZTFJTklnQWdzZXlSK0xlMkcyUkxMV0R0ZTUyVlRJVVVhdk9EblZhTzda?=
 =?utf-8?B?M1p6YW9jZGY0cmRxaHhRVEZRM1lZdWlTTU1RbU1FcDJQTnc3aWNHalZXUExS?=
 =?utf-8?B?MjZaWk9iRlZSdUZpcFR2THNCV01WTTBQekh0dVNJdWpodjZudjBGbExNYXdi?=
 =?utf-8?Q?dx7INbIGNdM=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS0PR06MB9877.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(41320700013);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?YkRpZnE4MlFQNFBDZEtYM0RGQTBwZlpQcXNYdTA3OHZoazZ2d0Z2UjU0WmVQ?=
 =?utf-8?B?OHdvSTRjb01SRmdnR3c3WHVZWTJtWEV0bzN1SHhqMUNiUUhzbnV2cFBXbWlN?=
 =?utf-8?B?cUhuM20vRzU2ckE2SUxrSWFxVWErZU1DQmlCUWlwM0lyUnhDNHYxZjVlZ0ZY?=
 =?utf-8?B?dGRNRGxLMWZXd2toeW5VekthZklJcWEycVhrZGFQbTlrTzZoeGUwRzI4a0lu?=
 =?utf-8?B?SGFLdnZxSzRiYms1elZjMHdtYzVIMkJ5YnNsenZOclJ2ZUJDU3EvRFNpZXF0?=
 =?utf-8?B?emNDUHdTVm1sd1JKaWdJRzBXY01EVmJTak4vNVluQ1BRRENrYjd3bThwWXM5?=
 =?utf-8?B?aE9YbDNRTHA4TkptMjFtbVZsSU9TQUVrSis0MWhRZ3E2ZUFaTnNCN1cxOENZ?=
 =?utf-8?B?Z3hHL3FJbVVMSWdMalIySXBCT3V1TWh6czNXMi83RzdCY09yVzlvL3NxZlhi?=
 =?utf-8?B?Sk5aUjZ4VVV3MDRESXBET2dRVW1MQmEwY1lXY3FIUm5IZHAxQklkZnE0RWhY?=
 =?utf-8?B?ZVlmdlpSOUthTW04NGQ4VVNvMGtGdnpoa1BiK3NrMzhVMHhVRnpDb2gzMjRQ?=
 =?utf-8?B?eEN2K2IrUENQMHVkU3ZNaFNiMUd3MmxvWEd0clF3bEc0MTZGSkNkMUFrU3gr?=
 =?utf-8?B?Q2xEWGVRT0dJRHFFdWgyVVc3Rm03dlMvY0tqZ2J6dzJBZGxFOEpTemZTSjlx?=
 =?utf-8?B?TWNCUXBQV2c2VmtjQUsvTTA5K2EwcDN5YytybTNZVTFPVy9PcUhaUzlQYkFk?=
 =?utf-8?B?amRQMzEybEQ2QVM1TGdhNGFudWxCT0lzTmJ0QXl0QS9FbHMyR3IzaFo3ZkU2?=
 =?utf-8?B?SmV5NmlFbmFVRjhzcC9OMUtEMmErM3o2elpQb0dFS2xnUEREcFJIMEhjNzhF?=
 =?utf-8?B?R3pMUHdjdmFkbm52czBaVXRQSTd6QzBhN2ZLY01HZjFNQlFXZkE4S1FJUUJR?=
 =?utf-8?B?QWprbEtNeDNkYktqZ0d1Njh1eVFHMlg0aS9MLzgyVDU2UEdXNDZpMnBkdWZB?=
 =?utf-8?B?UEMvY0VTQ0tZRytKZFN4dU1TVHRiVC9RYTY0MEZuV04wa2Zheng4b1RHTC9y?=
 =?utf-8?B?THloTkNlaVBYVzVPTkdJbHFhQXRDSDVnVXQwS25uU3A3RHhOZ0RNWUlvWVFZ?=
 =?utf-8?B?N1ViR2wwQlRuVWVDWThXTmtyZFJIcitPOUlVWHlvbkNJdG5LZDVKdHJCSUpy?=
 =?utf-8?B?cy9hRzZrNEYwWkZQejU2bEZOemlFRUtyRW9BMUJkMjdnOUlUS3FSb3l0czBh?=
 =?utf-8?B?RTZoNzN3V3BveGMweXdsdi9sc0d3Vngrd3hGWGY2YUNXekh1OGY5RHloQXlN?=
 =?utf-8?B?eElCbUVzMzlmK0daVGk5Z0k1bk1CY0wwUTBYOGhLUVI2aXBVY3dHeGd1SDFq?=
 =?utf-8?B?N2FhOTcwMmEvbXl0MHlPTXRlUE1sM0hjT3B6OEZsL2NoaFU2Q0VCSTJnQzg2?=
 =?utf-8?B?MHI3c0F4cDBaYXBJem5BOTVNYldnT0tyWE5SakRLMmFlZXJheXdXb3djd2NF?=
 =?utf-8?B?cldLcmUrMnJlTFlRK09GV1B6eEhidnRldWswdFJsT3lnMlNaeTNxemhHWWtT?=
 =?utf-8?B?U3poNFJkQkVkUjBLUiszNmU1aW9wcUw3R3htTXNpZ3RnUjdDVU5nVVhKK1Ar?=
 =?utf-8?B?bWFvMVJMZ2dMWFVqenBRRmtGWWtjdS9tNWFyVHhOenkxZmlHRUNnUnp4NFZr?=
 =?utf-8?B?cWtQa1lCR0VSQWYyelgrbC9KUkJQc2xxZjlMZUkzODV3aWNITlBLVGxHVlJE?=
 =?utf-8?B?c292YWx3YjN6Ymp4RS9hMW5BbUUrUVg2enUwWUxidXdaTFIrOGk4dm41TGUy?=
 =?utf-8?B?cVNmc3VvWGt0eDd5M2tnSWp2Nk9hZFpLUnRGTk15cTFaZExaemZFNWxnb1Fv?=
 =?utf-8?B?REZGdmNwRmJCYlFmc2luUndyc0NkZEt6djdkZmd4MFlybDJTU0tIK0lVWGE1?=
 =?utf-8?B?Nk52eW9MMmRvUTRkTmhEQ1p4ZU5mOVFpWENkVEVmVkpyaTFTaWdyOG9XOEpC?=
 =?utf-8?B?S3locEVLMEl3VjlMR3ZxZnQ1b093TkFPYkpxSzJGaFh1RnVqa1VxdkNhQzVw?=
 =?utf-8?B?OXFGNXVXRU1YNXhyREpBR005QXpFT2Y4ZnVsWTBNMkplZktkbmxiMml6cXJP?=
 =?utf-8?Q?zRVc=3D?=
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: c3dbb6ff-8f23-4640-f2b5-08dd8c1bc1c2
X-MS-Exchange-CrossTenant-AuthSource: DS0PR06MB9877.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 May 2025 21:28:20.0964
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fEPnsStVr9T1RpSV+UuRVoFgiaigQ+yZe5Jhbu7qyawGLwycOvA3t4t92uNEF2To
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR06MB9442
X-Proofpoint-GUID: AwL4WS7K-Err69s0XUpxzBJ-Dy6u40T0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTA1MDIwMiBTYWx0ZWRfX97qi93gF8uh/ gHzmrzk+cEQNTaa4ghOhcdUh/FEAsgu9IjOcYSOOmFC6J5iEF/SbzzlsRTxn3Ots7gZN8dqJLcH aj0FHCzLw+QYWfLSsCn77VxqC3mMBXBcFsXVZ7RqezS5TcV+WTpaR6iQ3jiMjWMhLruzD5tYjRC
 GEBrENaHxiBiWXOj52Od5aZIu70udDgwOeFtyHncI88a50KyzVUrJpJCDu0nyDQ7SHnLEnDxg8X Yx8O7OC926h5aieZcU0rBVHwC5bC2TCVrBiFW2fEQzuJvGDYbObK818jMR69uTgNWKf6vLvo3/E NLb+D+jkdK5D1ag9ekvraLqsmFPyHhMT00Jo6NmLuOd4E8SxxS/Y5UqiiP7MnFqxHHK1Zz8cRxv
 CiuhSXUX1BV3mf++9pS7HeBb6QaV3uJHtsBDmzUJxHFGEJZvxVEY0/dIapW6ZElUQ4VNAOs6
X-Proofpoint-ORIG-GUID: AwL4WS7K-Err69s0XUpxzBJ-Dy6u40T0
X-Authority-Analysis: v=2.4 cv=Kb/SsRYD c=1 sm=1 tr=0 ts=68192d75 cx=c_pps a=CmjB6Nkc3E8pi8fe8piFzA==:117 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=dt9VzEwgFbYA:10 a=lre9DRYkaIEA:10 a=0NmG2P8jj_p9AWN2p2kA:9 a=QEXdDO2ut3YA:10
X-Wisc_ValidFrom: true
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-05_09,2025-05-05_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 impostorscore=0
 bulkscore=0 suspectscore=0 priorityscore=1501 malwarescore=0 adultscore=0
 lowpriorityscore=0 mlxlogscore=999 mlxscore=0 phishscore=0 clxscore=1011
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2505050202
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5


On 5/5/25 3:54 PM, Samuel Thibault wrote:
> Hello,
>
> John G. Heim, le lun. 05 mai 2025 15:48:21 -0500, a ecrit:
>> Anybody know if it is still possible to load a speakup module as a kernel
>> parameter?
> It is still up to distribution initialization scripts to notice the
> speakup parameter and load the module accordingly.
>
> Samue



I don't know what that means. I am guessing you're saying i have to ask 
the GRML developers if they support it and how to do it, right?







