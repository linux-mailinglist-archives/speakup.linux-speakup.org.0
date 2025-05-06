Return-Path: <speakup+bounces-1281-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 8143EAACC99
	for <lists+speakup@lfdr.de>; Tue,  6 May 2025 19:57:47 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=math.wisc.edu header.i=@math.wisc.edu header.a=rsa-sha256 header.s=selector1 header.b=n0EA1gMn;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 1C322382991; Tue, 06 May 2025 13:57:46 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id EBEFD38295E
	for <lists+speakup@lfdr.de>; Tue, 06 May 2025 13:57:45 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id D3966382962; Tue, 06 May 2025 13:57:38 -0400 (EDT)
Received: from mx0b-007b0c01.pphosted.com (mx0b-007b0c01.pphosted.com [205.220.177.71])
	by befuddled.reisers.ca (Postfix) with ESMTP id 8004B382943
	for <speakup@linux-speakup.org>; Tue, 06 May 2025 13:57:38 -0400 (EDT)
Received: from pps.filterd (m0316045.ppops.net [127.0.0.1])
	by mx0b-007b0c01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 546Hh4Mv003684;
	Tue, 6 May 2025 12:57:23 -0500
Received: from co1pr03cu002.outbound.protection.outlook.com (mail-westus2azlp17010004.outbound.protection.outlook.com [40.93.10.4])
	by mx0b-007b0c01.pphosted.com (PPS) with ESMTPS id 46e56kpsqd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 06 May 2025 12:57:23 -0500 (CDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dhR+n5qFlCv0AA9CX8YYcAC7eszAu8t6e9XM2XR0/pCJfXEoHMlRQAls/DNtsNRlqFXiO/sBzk7nIiZf6n6Chly/Ypy+VVpQVRtDK6CK6lIf7SIXpG5xC+FFUbFEj2QIM9n4IfW5w5MndxLiPhjnkSX3QFUfAh1+4Lwb/VBPaK+hEen9EPJYmrJ5wW1S8ZIrRjqBzvGu+c9BnRf4Ao3KDOz5ZKySrVwJrHEoTe3gE8cizNpztsRvjnKMTUDlECWCsLa8q8J+6Jb03FJZDNYqFpk8/ULq9ySDWGlFURT220x8HapwR474m6+FDaLka+vEmQ/ZUbV3BffFNvJ4ottIYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qu1MwxvRh9N1amV1bbRi96jjylEnC1QJ62GpENlAxag=;
 b=qKloZfUkeP6P2MGUDMjmMtk7lDD58yLe98sOV82cBnHGcgJZEmKUif58r2yytBSEPIGJYLQxmfMSQKMimfSAWZ2vZJA7nx9fTaHyhULCwVk5nWWDLVUy+uohDWSUcu4Vdha6UJmlRDtSu6HT4wQhsByjyFvimHAlx+bD5Slw89TxvMssSHY6iAFl3OpVyU8KVk/+xOch5e7PtT69aW1RZOTXawjFH8gprltmOH3HswtlS2oxYz7L2fFQzGG3gJ+wKHDtF9CCgMQhi90k3QjNkr0oMVFEsNRJlq9/cwH5QKyiPgZ3QN4oOTanhF30kIV23Y9RtKXUlMNlaJSgve5qjw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none
 header.from=math.wisc.edu; dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=math.wisc.edu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qu1MwxvRh9N1amV1bbRi96jjylEnC1QJ62GpENlAxag=;
 b=n0EA1gMnQg8MQuIXk4t80hw6kD8x/+R4bF66MvSDciQ1l0xXdjp9GVMwsXTKH7CLJADn2gNALp5yuWyb6meu47vzy3Dk9IQx4LHNkZoG8uzjbll6f87re7iMnTYjDZw3O2kVj8bs2MgD6NUBAubseTiP61f+F4E3deYdVL1/tVV6TVRPLQ9hwCMlgF82cuinJ9erFMj31l0tbWn8KXX1Jk6xM89y6JQXyJGOgcXgZjdZGs5dP9i24lT5yBU5OVo2MsD6OuDx9DtOD1aJm9QqNnH0WnRnOiH+fggjlmv44B57UF4T4ULb+QLR122Y9tPIQGLW2K6AJItkpz+b5xUlhg==
Received: from DS0PR06MB9877.namprd06.prod.outlook.com (2603:10b6:8:1d5::14)
 by DM6PR06MB6540.namprd06.prod.outlook.com (2603:10b6:5:22e::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8722.20; Tue, 6 May
 2025 17:57:17 +0000
Received: from DS0PR06MB9877.namprd06.prod.outlook.com
 ([fe80::a347:6162:9bfd:9b91]) by DS0PR06MB9877.namprd06.prod.outlook.com
 ([fe80::a347:6162:9bfd:9b91%3]) with mapi id 15.20.8699.019; Tue, 6 May 2025
 17:57:17 +0000
Message-ID: <d8ee99cd-3883-413c-80a8-df492a861f5d@math.wisc.edu>
Date: Tue, 6 May 2025 12:57:16 -0500
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
Content-Language: en-US
From: "John G. Heim" <jheim@math.wisc.edu>
In-Reply-To: <009a01dbbea9$feae2e20$01ffa8c0@nucwin10>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: CH2PR05CA0065.namprd05.prod.outlook.com
 (2603:10b6:610:38::42) To DS0PR06MB9877.namprd06.prod.outlook.com
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
X-MS-TrafficTypeDiagnostic: DS0PR06MB9877:EE_|DM6PR06MB6540:EE_
X-MS-Office365-Filtering-Correlation-Id: c1780bba-d247-4a15-08bf-08dd8cc77074
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|366016|41320700013|376014|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?OVhMY3VOOXhJQVdlNG5pUDUyS0pieklWc2pWT3YyMzh5b2plZGFTQVlpZTA1?=
 =?utf-8?B?K0lrZEEvaHpyaXdMbUFQVXhvWS9xS0VUVVkxM29ybnByU0RKRWlZZFRQWExm?=
 =?utf-8?B?Y3VrUXFPK2RFVmlFRmF2dEEwbDNxemxBVDZjMnltNE8yaFhTZkRXMXZuWnNR?=
 =?utf-8?B?TzB6SER1SjRlUngzdytRWjV5Q2tTaHRZUlRwQ3BrNVJ0UVFiOVQvZzdvT3Zn?=
 =?utf-8?B?a04zRWZMTTVRZmlOaGxMV29scXd2aTVGa0cwVWhFYndoOGlwVDZ0V2tVS240?=
 =?utf-8?B?N1JsVURFVlcxNmFBUjRvYVhLckl6UUR4emd6TU9uN095RkRhNUpoR09zUitC?=
 =?utf-8?B?SzBydFlpKzcxazZXd2F5dTNGZ3d4VmRkRG9iSnZBSHBGRUw3Znp1cUpZYXNE?=
 =?utf-8?B?b3RYMnNHbnlFMzA3VkVqYkNiREVnNmpIMEdEam9qRGVrNkdRM0hSclFDOUUz?=
 =?utf-8?B?ekhSQ0lMOXhZOVludHdyWUt4U0tCdmpaRUFCb1VtWGk4UDE5TTFyc1RvUENw?=
 =?utf-8?B?Z3JSMFNoUk8zSVdKdFdPR2NHUURDenlqL20wcDlIUXM2VHpqWXVubEd4Tm1z?=
 =?utf-8?B?Um53VWFCZDdkNEIyeTdKL0lqUmRWMXpYaUVtUEdBZExKKzkyZDBHa3RGZ2p2?=
 =?utf-8?B?WFVrbkk4OEkrZVVXK0pnQ2xPTXN2S3IvZVpPTTRDNHlPMWtJLzA2MGdzc2Ux?=
 =?utf-8?B?UmUrc0ZNaFpJRGlkRU55c0MyclJIcXBIUXVPQnRVaXNYQVpRQXlJdC94MTM5?=
 =?utf-8?B?UkR6T1VtdlhpSFBpakVlNCs5U2d3cGFiYmRGdUQ0b1FaT2w2azhrSXZVb09y?=
 =?utf-8?B?VnZlSktsVkRwSDNDc2c4bE5PdW9MaHdlZ3p5bDZJbm5haDVNSFo4MmpSK25E?=
 =?utf-8?B?Zld5aXlNSXYyZjRMS0RuSG9mc3V2L1AzWTFtU1ZEQWpReStFQlViRWc3Ymcw?=
 =?utf-8?B?V2FnUTBPTHB5ZU5aQ0hNUWxDdmNSVWg5aWpXTEJYTUljazN2Q3BnYWUrMEEz?=
 =?utf-8?B?YVhBZWd5Nm5YWEJzWHZMN05pYXQ2ci85aEt4TVMvc2RWTmVrV0tybDBkS3ha?=
 =?utf-8?B?NmRvdHJ5TTN0eTZlRkNDUnc1N2hqL1lFTzlNUEdQcWcydWJDcTdyR3hQZHNt?=
 =?utf-8?B?L0U5MXF0NXhxWmd2dkVUYzRVL0ROOVFOdFhtdnNJQll4LzdvWGtoZmdGaHJv?=
 =?utf-8?B?Wlo5TFdXYThwTUJvVFFBWTJhb0xTdVVxVWtodWVLZTFYdmJGWWd6a3ZBRmRv?=
 =?utf-8?B?Wmg1ZFZDd0pldDJabytrWGgyM3VuN01GRlF1TG5Iak5PU1ExZ3FXQmxmUHJI?=
 =?utf-8?B?TVc5dzdod0JWQ0VqMGhpaVR4OUNKazlWUG9ZMkd6MjA3VnRZZlRPdkJ3Z3Qr?=
 =?utf-8?B?Z2FxUHlYNVNFN0pBK21VdnIvZ2o0ZDEvbDdjVnNQMWpURGZaUW5CUU5FdnIz?=
 =?utf-8?B?T0I3ekxuMzdHbG54Qnplc1BzQ0hlbnZhYWJDUGRFNWk2dTR4Qkg5dnNWVDAw?=
 =?utf-8?B?VHJZekNyQlVEamMzRjlRckp5YWlYSVB0L1dLWXNCM2NXRHBpdkI5TWhkNDBY?=
 =?utf-8?B?Wm1qRGRHbzh5QTJuSE9FVWFha2VSWXAzSjNPV1c2dnRzb0JXeUFqOGx1SW1a?=
 =?utf-8?B?cTdzelV5TkV0cXJYeDFnVGcveDRVaVpDYjgxT2xIcHFoejRQVVUxOTM2YU00?=
 =?utf-8?B?am43b1I1Mnc0RHZhRktaTjRzdzJmY0R1WDNPNWJhR3FSK1ZpNVAvcGxQSFEz?=
 =?utf-8?B?VW95MHNBd0M3c2NyWGd0c28zZmZiVTVyNEk3WWZWMjlxNXQ5cFZKM0ZQUzJ2?=
 =?utf-8?B?eG0xWmppWTVTeHJzVmRQcTVhV09OR0ZXQVc4YStvajRFdjAyQTFmTmNnRy9r?=
 =?utf-8?B?Z3BLZGRCZ0IzVE9wY2cwOWdxREU5Q0pvSUU0T25BZFJhdFFMUTNseDFQVG5y?=
 =?utf-8?Q?claLPoLGSdg=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS0PR06MB9877.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(41320700013)(376014)(1800799024)(7053199007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?VEVKVllFV3JpOEc4Zk01QXFpQk1ScFFhY3g2WGdFdU5PdFBOT2owVCt3c0lO?=
 =?utf-8?B?NmFVeFR6b0RjcmFrNlovWUxQT2g4Ym1acmZkb0UyQjhzVU85dU5OZ3k4UTFz?=
 =?utf-8?B?cnExS0JCTHRldmw5QnBJWjNtbTYyb0E2ZGtYa2lNMmpvdG9uSDFZSXUvY2Nq?=
 =?utf-8?B?S21ZeDF5REc2Z0JRQ0EwNXhqR0oxN0pGeS9VM0xwa3Ztc2k0czYyemxjNVBo?=
 =?utf-8?B?UTlHK09tRnlSQUZVY3FtbmxxVjgwQnFaTThsZ3NsL2RSSEdhcloyaUVZeHVq?=
 =?utf-8?B?ZHdOdmljWUlET3QvZ0ppNENscVFHSU5VMWhBcGtlb3NEaXpLTko1ZWx5MDNN?=
 =?utf-8?B?eFJ4eDY5a0plRVZCdW1BSzMwOEZrSCs4NTZ0SzZLcXUyQzZUOUM1dThiazZK?=
 =?utf-8?B?bnFrWTc1emwxcG54K1VybUUvczIxdVR6THhSQXh6MjlLNWZtMTM0RVBLS0I2?=
 =?utf-8?B?NngxOVRVdkorNkVFZWRSQVVmUmFldER3RzBORnVoc0NnSm9hNVhnZS81SVFG?=
 =?utf-8?B?VmdQL3RNdnR2NzJPUG42eXJ4bi9VOGRWQ25RUjh0ZEZqemRiQ2dYTmFpSFFI?=
 =?utf-8?B?TklUc201b2psRkdCV0QyMENxR096d00rZUt5V1AxeFArVjJJY0dWN05OWVVa?=
 =?utf-8?B?eS8zb0FwM2Z6Q3I4KzFXZGM3NURjNEppSmo2T3U3ZzBuM0lNL1IxMG8rQytX?=
 =?utf-8?B?aVFhaFI2L0oyUlY4YjB6YzZsZFdYL3hNTCswd29peTZWVjhXVmlxN1AyVHpU?=
 =?utf-8?B?cnFJT2VIMEZtYWg1U0xPU1dYZ2x1ZktuLzhxUkZmN2cwblFIYTczS3BneTVo?=
 =?utf-8?B?Z09tQS85RGs1U2VVWCtHY0RKaTU2d0JrVHdTTjBoRG0vL2RoTEtlcUJ4Vjl6?=
 =?utf-8?B?YVIreXVhRjBFaXlkRENobjgxaVo2SUxMRkZoT1Q5Y09oQW44c09YZ1E2K3Nk?=
 =?utf-8?B?QVBRZ2xKU0FGTlQ1OWxLdnZBc2h3a0pzQVFoR2pKdDd6R1RXVFlmNVBtRFlj?=
 =?utf-8?B?b1k4UkFhb0V1WU1DRHRSSytqLzlnUWJzQWs2R1JuYit5aFZXdHNxQXlPcWhz?=
 =?utf-8?B?YjdRUWVibTRKWVJMYnM4RWNZVmhTQmNFTlJpc0RIZXA0dG1iOHlHSUJHUnlJ?=
 =?utf-8?B?aDRMZEVLUHc2NXR6TjB3ZmFQSGtuTTJ2SkFhSkNOR2VVZTdwZHV6R2hlUGNn?=
 =?utf-8?B?TlZkSmVVVTYzMXEvVjgxSUg5dWpFYVRldUcwL1pCL3RKZC9iUWtjQy9vODlu?=
 =?utf-8?B?ZWxFQzJrd3BlR2J5RXY4Mzc0UGdFQkYyQUJwZjBpaGFJbmpiNzk1VDFOU1BE?=
 =?utf-8?B?M3ZjMXZQVUJ6ZngyVVhReVgxTU42eTlGMmtMRW1vVWVvYm1lNzFpWUxTcXZk?=
 =?utf-8?B?QWxNbGJkUXY4cVVwNnExRWo2TEk0Z250eE5zY3dsa0I4NVhEZ3h1TGd5UTB0?=
 =?utf-8?B?OTRwMGNUQW5DbUd4L0hWZDZxWmRTQnBWUjRLQUk1M2NGbVdnYXI2SGgvSUYr?=
 =?utf-8?B?eUIwTnpOdGl2MTljbHhXRndUWUhaS2hMVTV4Y05GNk5rYU96cCt3NkN3SXo0?=
 =?utf-8?B?R1ZxaTU0VkFFcThBQmxIcXFlS1daaXFlbkFQQlZiU0JsYUZKeGJIb1lhNWlG?=
 =?utf-8?B?OHgzeWZYQThGMmpyZ1V4MERCdGMxUDBKKzNLcjNEUnlmSXl0US9LdzNyYVdz?=
 =?utf-8?B?V3BSQ2FBU3NiVkpjMHl4RDRNbnJQcEtWeDRkM3lLbVdWWjY1WDNaU2pmMy9U?=
 =?utf-8?B?b2swUXlEd2FDVm5PeXVWT3gybU5EejNxWTM2cHFmZkVpbWovM1BsaUVlQ3lU?=
 =?utf-8?B?aUcvV1hTQ2pZbThoWUdlMDZLMThaczUxN1NJNmhjYnBwNGlVcjUrWmpldGZx?=
 =?utf-8?B?VDlYS3A1K1BjZkpWdHpQZU4wUDlBRTBDeHhXeXZiRmowcEJKOFgxcUdHVWVl?=
 =?utf-8?B?ajhyc3VTclNYdE1rUHFnWFN2a3NJcCtlR2QvbzdIQkZyYjlDQ1o4V2JWaVE0?=
 =?utf-8?B?Nk9kNDN0U2piRDBhNUNVNUx5am1mUWgvV3d1VEZUbmh0Rmt6VlNCWXNtdmRi?=
 =?utf-8?B?VFl0TEFrNVJZUzgrcmdoTlJQZXlvTXJvUUJpa05KQ3pUMk5CWlU3RUxJd0x6?=
 =?utf-8?Q?JGyk=3D?=
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: c1780bba-d247-4a15-08bf-08dd8cc77074
X-MS-Exchange-CrossTenant-AuthSource: DS0PR06MB9877.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 May 2025 17:57:17.0905
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /hFooOYwKZx12pnSISUKHJn54OqemShL8eT4IVXC4RvGo0TJ+1oGOslk1fpcPqyc
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR06MB6540
X-Proofpoint-GUID: jH3W0KWIPQXd5iQ5HLZInTCKKKldvJnc
X-Proofpoint-ORIG-GUID: jH3W0KWIPQXd5iQ5HLZInTCKKKldvJnc
X-Authority-Analysis: v=2.4 cv=VZj3PEp9 c=1 sm=1 tr=0 ts=681a4d83 cx=c_pps a=2UemalefZ2tksy65qfitKQ==:117 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=dt9VzEwgFbYA:10 a=lre9DRYkaIEA:10 a=hEK2XftRAAAA:8 a=qPKtzgQbAAAA:8 a=fjLhTV7krdU90CWPwLMA:9 a=QEXdDO2ut3YA:10 a=pvvZm7_9ER1OwvpV3Ftp:22 a=OTAqJWGB1laLS8RTg9aS:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTA2MDE2OCBTYWx0ZWRfXxmCrqzH/N7AC NoAI1dXO0c1E/OJcLkK1MyLPUY7/08QQiopuAiYpK/BU51h9yr6n+GAhckNk8ox/U2xZ8VhLybf uXyD3UwFnMBAqxZSncF3noaq+VLrpPIxdug+TvXOxShjBF7hkh17/hlzMR6zKUrFcZOvNz6YIgX
 OHf45vQkKQye9VTSw2vo/Z9TM6mC4HoZTC4AZ4lmiFenjdW0Odw8d7Q1Iej5z4Qw6RkqPygq7s8 cmssMhqo2zyjghGTrfULgtUHQ0iktfF1EJ8nZqdBGPQL2xQ3gWufwc5HQR14jdmAtOLJd+iEUXv fb0z3UhaH0cbrv3XeRmaqPtJ4hBjEgQ4mYCntjnSI9w4zSmCCCXz9Ij1fPPQExpB/vlRxHzKY3b
 sSwPp8IKmzmHdx2FxIMTBYS1y0RnXw8wVyqKPSqrr3MIMBQt33dqQOJspqZTzntnLHYPnjTb
X-Wisc_ValidFrom: true
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-06_08,2025-05-05_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 suspectscore=0
 spamscore=0 clxscore=1015 mlxlogscore=999 adultscore=0 lowpriorityscore=0
 phishscore=0 bulkscore=0 priorityscore=1501 impostorscore=0 malwarescore=0
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2505060168
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

An iso file contains a read-only file system. GR ML uses a squashed file 
system w/i it's ISO file. So you'd have to mount the iso on a loopback 
device, copy off the squashed file system, unsquash it, make your 
changes, squash it, make a writable copy of the iso file system, copy 
your new squashed file system into the iso file system, and then 
recreate the iso file.

As I said, GRML has it's own customization options. I'll use those.



On 5/6/25 12:12 PM, K0LNY ?? wrote:
> Also, you don't have to write an ISO to read only media.
> You can do that after you have made your changes.
>
> ----- Original Message -----
> From: "John G. Heim" <jheim@math.wisc.edu>
> To: "K0LNY ??" <glenn@ervin.email>; "Gregory Nowak" <greg@gregn.net>
> Cc: "Samuel Thibault" <samuel.thibault@aquilenet.fr>; "Speakup is a screen
> review system for Linux." <speakup@linux-speakup.org>
> Sent: Tuesday, May 6, 2025 12:06 PM
> Subject: Re: Load speakup module as kernel parameter?
>
>
> If you booted a ubuntu on a CD-ROM, you can make all the changes you
> want to /etc/, /usr/bin, or whatever and the next time you boot from
> that CD, it will do exactly the same thing it did before. You can fix
> stuff on the hard drive of the computer you are booting on but that is
> not what I am working on. When you boot Ubuntu, you can press
> control+alt+s to start Orca. But GRML uses Speakup, not Orca. That's
> fine because it is designed to help you rescue a broken computer. I just
> want to start Speakup during boot on the live image. Like if Ubuntu came
> up talking instead of making you press control+alt+s.
>
>
>
>
>
> On 5/6/25 11:32 AM, K0LNY ?? wrote:
>> If you have the image on writable media, you can edit it.
>> I was working with Raspbian on an SD card and I messed up the fstab file
>> and
>> it would not boot.
>> So I plugged the card into another raspberry pi and used the cp command to
>> copy my backup fstab file back in place.
>> I could easily put a service file in /etc/systemd/system.
>> You would have to wait until first boot to run
>> sudo systemctl enable file.service
>>
>> Glenn
>> ----- Original Message -----
>> From: "John G. Heim" <jheim@math.wisc.edu>
>> To: "K0LNY ??" <glenn@ervin.email>; "Gregory Nowak" <greg@gregn.net>
>> Cc: "Samuel Thibault" <samuel.thibault@aquilenet.fr>; "Speakup is a screen
>> review system for Linux." <speakup@linux-speakup.org>
>> Sent: Tuesday, May 6, 2025 11:26 AM
>> Subject: Re: Load speakup module as kernel parameter?
>>
>>
>> Well, this is GRML, it is a distro designed to be run from a CD-ROM or
>> USB thumb drive. If you change something in /etc/, you will lose it the
>> next time you reboot. I don't know if it's even possible to change
>> anything in /etc/ while running a live GRML image. It might be mounted
>> read-only.
>>
>>
>>
>> On 5/6/25 11:22 AM, K0LNY ?? wrote:
>>> One could use a startup script in systemd/system or maybe a line in
>>> rc.local.
>>> Glenn
>>> ----- Original Message -----
>>> From: "John G. Heim" <jheim@math.wisc.edu>
>>> To: "Gregory Nowak" <greg@gregn.net>
>>> Cc: "Samuel Thibault" <samuel.thibault@aquilenet.fr>; "Speakup is a
>>> screen
>>> review system for Linux." <speakup@linux-speakup.org>
>>> Sent: Tuesday, May 6, 2025 11:17 AM
>>> Subject: Re: Load speakup module as kernel parameter?
>>>
>>>
>>>
>>>> If you want to start speakup by passing parameters to the kernel, the
>>>> speakup modules you want to load have to be compiled into the kernel,
>>>> unless grml does something nifty I don't know about. If the speakup
>>>> modules are just modules, then the earliest stage to start speakup is
>>>> inside the initramfs. That's still not as early as the kernel
>>>> decompresses and loads, but it should still be enough for most
>>>> purposes.
>>>>
>>> Hmm, I guess figuring out how to load hardware speech drivers isn't
>>> worthwhile. It might be possible to install a custom kernel into a GRML
>>> image but probably a more useful thing to try is to start speakup with
>>> software speech automatically during boot. It is not too difficult to
>>> start speakup after your machine is done booting but it would be better
>>> to have it start automatically and during boot. I'll have to get back on
>>> the GrML list to see if I can make this new approach work.
>>>
>>> Man, I should have asked here first instead of spending a week trying to
>>> load the speakup modules at the kernel command line.
>>>
>>>
>>>

