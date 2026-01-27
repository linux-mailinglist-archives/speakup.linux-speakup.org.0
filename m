Return-Path: <speakup+bounces-1527-lists+speakup=lfdr.de@linux-speakup.org>
Delivered-To: lists+speakup@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cNU/DCkgeWkQvgEAu9opvQ
	(envelope-from <speakup+bounces-1527-lists+speakup=lfdr.de@linux-speakup.org>)
	for <lists+speakup@lfdr.de>; Tue, 27 Jan 2026 21:29:29 +0100
X-Original-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 408DB9A5CC
	for <lists+speakup@lfdr.de>; Tue, 27 Jan 2026 21:29:28 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=math.wisc.edu header.i=@math.wisc.edu header.a=rsa-sha256 header.s=selector2 header.b=PlUlrvCF;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id B5D8738194D; Tue, 27 Jan 2026 15:29:27 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 93B3C381907
	for <lists+speakup@lfdr.de>; Tue, 27 Jan 2026 15:29:27 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 7D544381909; Tue, 27 Jan 2026 15:29:21 -0500 (EST)
Received: from mx0a-007b0c01.pphosted.com (mx0a-007b0c01.pphosted.com [205.220.165.71])
	by befuddled.reisers.ca (Postfix) with ESMTPS id E7D0438158A
	for <speakup@linux-speakup.org>; Tue, 27 Jan 2026 15:29:20 -0500 (EST)
Received: from pps.filterd (m0316038.ppops.net [127.0.0.1])
	by mx0a-007b0c01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60RIYaO82324605;
	Tue, 27 Jan 2026 14:29:12 -0600
Received: from ph7pr06cu001.outbound.protection.outlook.com (mail-westus3azon11010065.outbound.protection.outlook.com [52.101.201.65])
	by mx0a-007b0c01.pphosted.com (PPS) with ESMTPS id 4by2rx913h-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Tue, 27 Jan 2026 14:29:11 -0600 (CST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BHM4kKrT5qxqvtN6uHuO6vAm5QTH3ZQsugWnr0N/NFCQw1/0PMCoh+y0VTMqhWaQajJJJ8eU75byj0AqwJCzTaxd8Jf4ES71rzVepMVae0ctJTJSAkmsU3xSCA6Xs0TS1xeZ7asCKlMQOItHccc93LWKxjuMrT0+xMmfDMt4Vnlx5OsT9w8L0G0Y+D1X88xiXFl0zq86Fbo2HMORYhR0mXPHLMgCEzvoN29gsoN0KWEQgGvJaL37HoHNLIK56s3tG8fyhXwVCFM6So8Uu7Ecp05IaC9yX2bjGaPe6irT8gCRJVOJWXXjclxxoXV6aztUt9iviMkt+Va6RuW7jKwX2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=T69NgICsFEDxcbKaN8pc8ZWXa2aW+j/n/jiWkIpLizY=;
 b=HTT1YDkuMO7bUHjYTjsMjF8h4q5qY4rOwzKfiF2cydmYC/fITSE15kVY4Woz1+ZRwnP8yNJ8xSz5jcAzW60abd+CgLclafdCp2VGCp3X4+Gc81F0u0j3J0CxcnbW7ZdHTifc6zwRSLYSghIhhvLpyQt8Lspivmh8A09STh0OcBb3SKTKji/fktuZykz7vdv6jQ8nZRNG37VVarkJd5lGvYDf+aIQHw9gNhjsy5M8Kzl7/Gax4buqSQEy2BGa+MyXqv/2K9xQW/lwlA4xkuIbhqCX+qqS8meos1XfbSqMCfCsO8//XQs9ifGSr1qYQAMPzrSOga0SVmn5/PdnzOhESg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none
 header.from=math.wisc.edu; dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=math.wisc.edu;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=T69NgICsFEDxcbKaN8pc8ZWXa2aW+j/n/jiWkIpLizY=;
 b=PlUlrvCFrtamp6zbuEiH74gZHghFeKKvqMW1o0riPVN09TfJ1C5L+0zVf/E308+VHR/iosv92NyKEk8pCK9IwgYkUlHXTS8PFcw7oi9oskYy5EqAI9Qir+5i/b3KU+CntYIgmnKHPqbqKbweQxyenBHcpiFzRnByWRbsS9gL+oZLI5qPo6J7/kT0RalRJsI69rtYNVpmGotVkCX2KACGA6TPelDcqkIUWgyZpqxm6wnxTURY7srwl4qC+bP7N/5PmoKr6aSo8blt1sYIdFWa1GAwcTr/xi+0SOUYwnJ5c7GTNxRu0GGw7cYP54EkW5MJ2UWHEupxyCrNbFejT5mfLQ==
Received: from BY3PR06MB8195.namprd06.prod.outlook.com (2603:10b6:a03:3ce::19)
 by SA1PR06MB7889.namprd06.prod.outlook.com (2603:10b6:806:1c0::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.7; Tue, 27 Jan
 2026 20:29:10 +0000
Received: from BY3PR06MB8195.namprd06.prod.outlook.com
 ([fe80::a7ad:fb62:4389:fd8b]) by BY3PR06MB8195.namprd06.prod.outlook.com
 ([fe80::a7ad:fb62:4389:fd8b%5]) with mapi id 15.20.9542.015; Tue, 27 Jan 2026
 20:29:09 +0000
Message-ID: <36e4c9b5-5ea5-47d3-b7cf-15706d0470cd@math.wisc.edu>
Date: Tue, 27 Jan 2026 14:29:07 -0600
User-Agent: Mozilla Thunderbird
Subject: Re: Cannot get indexing to work on my RPI hardware speech emulator
To: Samuel Thibault <samuel.thibault@aquilenet.fr>
Cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <e8e83e43-4afc-4c74-b101-4bb93f1a664b@math.wisc.edu>
 <aXkaCwIct6Nvqbv1@end>
Content-Language: en-US
From: "John G. Heim" <jheim@math.wisc.edu>
In-Reply-To: <aXkaCwIct6Nvqbv1@end>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: CH2PR17CA0027.namprd17.prod.outlook.com
 (2603:10b6:610:53::37) To BY3PR06MB8195.namprd06.prod.outlook.com
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
X-MS-TrafficTypeDiagnostic: BY3PR06MB8195:EE_|SA1PR06MB7889:EE_
X-MS-Office365-Filtering-Correlation-Id: 3abf9a38-09e3-4464-d20b-08de5de2b987
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|786006|376014|366016|1800799024|41320700013;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?emJISndKYTdqSzVJcExjK1YzdFhxTnhyT0tRQXZrVWgxenRtK0c1M2hEdUNV?=
 =?utf-8?B?V0NGa2Q5UU9zS3pQR0VJWENBNVlLL3prQzliTnQ3cmd4L3ZWRDE5NmwwdVNL?=
 =?utf-8?B?VVhCNXd5LzZyekUvRFUxMlFTTTZjSHNJMVBFZ1BXRld1cGpXOVEzaW15RkxU?=
 =?utf-8?B?Zmp4MVNkV24zYW13TlN5THdHb01mOGdvZWZSaVMxdFJacFE5a0tmOForNDVJ?=
 =?utf-8?B?TGJ1S0VtUXVxWGE1dlQ0NitCZ3EyamJyOS9KT0VEWVNqbExFUnZuRDVaL1JN?=
 =?utf-8?B?cVlBd25McVlNTGd1d1ZXTWlMczlKYU5GaHVCa2dEbXYraUlyMWVmSVNPZFgw?=
 =?utf-8?B?aFpBUmVNWHdhNW1yblY1QUxjR3N6WXBhaE9yNzBDZmpTZUJCNXZCczQxUnBx?=
 =?utf-8?B?RzkrTWppeTNQdy8rdEFEWTNIWGM4bnpVVHhrenorUnMreUczaGlPUG1FcFov?=
 =?utf-8?B?NWlIUm9acDhYVDEzeDdkTkh1bWdsOC9SZVIwVlA5TUtvR2x4bXlwZWo3ekp5?=
 =?utf-8?B?cXBWWUZGMVFVb2s0MUltZ1FtcHJVY3BDMTVyUGJRWUlpTjBlV0k4OVdUSnZ1?=
 =?utf-8?B?MzVXWEF2WStBNzRpaFZCaHQ3SmM3ckFsQWEwWXVqTjJ2MTExWTdkRmVrVEk2?=
 =?utf-8?B?elpsMGRVQU93NTJaRVNmdnhNTzdaZXFkRHF2RUYzV1ZkL0NnaThyTDhhYjZo?=
 =?utf-8?B?RjNZejBERHU3czZvb0V2WjNmUDBicEVuQk81aVJtblordWRVVkNZUkcrTVVn?=
 =?utf-8?B?Q1BkMFpTQWUrcEtIdzIrMmZuUFNkNkFNUlMramVzN0JDekJSQlBiZG9FMjZK?=
 =?utf-8?B?OXdFdUxmcTYxeHBJVXNXNHZKYU9wRFYrL2RkeGRWeVJKWm1zM0JLMC91NjBk?=
 =?utf-8?B?b2xDdFQybDRjSExJY3MyMGtwZGNTa0tUZVk0TGxRSk5VaWF1cmVETmdnZ0dY?=
 =?utf-8?B?N3owUlpZd0xMYlgrMGZ0TWJqblB6T05VMU04TVFrc3Y3MWJuMlhCNHhsbUVw?=
 =?utf-8?B?VTFlR0RLcnYxbkIxdzZiQThKVVBHVE1jaGVYdmxyTGtYWnF3Zm9PaGlXOVNu?=
 =?utf-8?B?aVhOSzl6N2ozMUNEV1dqaC9lbXBldHhSc2N3Wit4TFA2dHpqTXRuL0JHTndS?=
 =?utf-8?B?U01rRitITUU3RUZENGNMaXdBT2tSZTBFY0lYY2l0Vlh0SDNCNlV2clVRVHFj?=
 =?utf-8?B?S2s5VmF4R3VCZXNmR1hiek9WRUdYcnBucnFOVHNZZG5GbTU5UktnVmpqY0ZC?=
 =?utf-8?B?RExYVHJOR2tGQTJsREd2aXZld1J6UjdKNHFPUkVORzJ6Tkh5YkhwZEVNV2pp?=
 =?utf-8?B?NVpTSVhBWHNYeDZEZ3IxZTk1M21WMmJxbDAvSm5xYTZjU0VHTW1BbkJMZ2Fh?=
 =?utf-8?B?WTNrTHhBUDVqZVNYV1BlTWxHaW1saHNhSTBXRDZ4VDcvSzBONktzNmlJZC9j?=
 =?utf-8?B?RVhBMWdJRzdxd3NqRUxxY2prMVdBTG5GOVk4UTBXR09HejhjUzZNWmtDenhh?=
 =?utf-8?B?dXlsUkl5MGRRL2R4dHFHeU4wZ3lON04wT2RPT1NoSkMwKzVsWjNhODF3ZzZu?=
 =?utf-8?B?dFY3cldXTnI5WDZvckg0bDdtN0xzem9uY3p2MGkwMjhTdGs3Unp6UTMyQW5C?=
 =?utf-8?B?ekdMSUNRdExJMDFicFNIQlg2VEdjelE2YjYrTzBkT0poZnFvNFUvVHlCcG9k?=
 =?utf-8?B?YURldDZSdVhITTQvMHE0ZmlTcTcxWitXS3dSK1YwVGJEeWs1WGFsbEd5Yzh2?=
 =?utf-8?B?dU9QUlN5eGRYaGJmVml4cWd6SEFoZk02N01vU0E1NS9ReHJvaFUvWVlQU1A2?=
 =?utf-8?B?Tkw3YmNpRWNPTytXUE43aU5HTllyZkg1T0E4UjR0c2VVaE1zZWNTbU5sMDRz?=
 =?utf-8?B?d2Y3Z1pCcDFhTVMwUEV4VmZENXhERkZSbE52NjJOSzRGUFdwK3J0QjNwSXpF?=
 =?utf-8?B?SEd3eDdtNTRPOGNlS2pMSE1xaW9oWFlOZUk0SXl6akIrTGV0ZFhIQmxHR2pt?=
 =?utf-8?B?YWMybmtUY2NEcDhxYjZhQ25VUHJKY2JGUjljbzhqN0NycXpMNjdCWXZyTHV2?=
 =?utf-8?B?TC9tNVJOem1WSXBLdVUxMmpTWjA0bFF0c1UxWlJ4aVNMSThvaXhzQ3BzK0Ux?=
 =?utf-8?Q?bI/s=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY3PR06MB8195.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(786006)(376014)(366016)(1800799024)(41320700013);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?bjJoemVqM2I0VllPaWZ3MmdiZmtqbGhLZXZjYTVDTFBQSEdkczczWSs0RVRl?=
 =?utf-8?B?cG43bEZQbXA0eHN1SnlOVnRhNHQ0Y1NJc3gwZ2lpWUpWS3U0WUtpV1VvcGJP?=
 =?utf-8?B?cGJzY2Z0cjFvRE0xVXdHNEdRVVNWSzFZNUFkSXB1UGs3azVJM1crcUtDSk1l?=
 =?utf-8?B?QmlPK2dpNG5aTEhNdWE0T3FmTDRDVndHR1JDek9qa2pyQXpUQlNTenhzT0tr?=
 =?utf-8?B?YXp4MGx5RHY2QlRRZ1VCYWFLVmJDcDFtVFB1cnBpbnpURGQyOGlVRk5pZXN1?=
 =?utf-8?B?Rm5DbDQxdnA4RDVvdnVvZS85Z21JcFJpT1NnWS9JVmtLNW9vNHhzRzRJeUdK?=
 =?utf-8?B?UFZuQzAvTHgxeElKTzBiUGc4N24zVGhNZ3NxQXFRbzVRZVljQldHRVFHcEVB?=
 =?utf-8?B?c2pHSHFXM3grZVNPNmtSZlBZeFVSZGxoMDZvOHhRY1JzRStNYndhMEFGaE5S?=
 =?utf-8?B?RU5zS3Q1aGtVY3VpT1JraWVwRE5HbXdoWktMZytRYWx1SU80bTZiV1hjclBz?=
 =?utf-8?B?NVdoQU8vVjhIL0VOQlEzZndiSHJxd2JjdFhmYXMybnQvSjVFR0NvWmVuWTlH?=
 =?utf-8?B?dnNMY0pUaTFvTmZGLzZhMW55UGM2L2hSSHBTKzF0aXpjUzBweENMdnBKYVo1?=
 =?utf-8?B?cGxXc2diTS9XWG1INFllS0xQenA4dmtQcDJvZnRaYUlMeHBiU1RLSzZ6STNn?=
 =?utf-8?B?LzJEWUJ2Vzh4K0x2SGRBWXErempCTnIzSkNrT2d1ZzkvVFpPNGNUSVRtVS9M?=
 =?utf-8?B?ajRaSDFYMURUYkR6RnhGdHEzcWR2c0hnUHd4T3V3dDVxcGxuYVV1MU1LSEVW?=
 =?utf-8?B?LzRVMzNaSXJPS0k2QitFUDAyazVXQ2pjTmJ3Uks2REtnVktzcnRCai84L1JV?=
 =?utf-8?B?dDNCODF1cEZ3Y1ZlVWJraEtPejJZNjRLbnBHZkY4TUxSNHVXWUtlZy96cUFz?=
 =?utf-8?B?UjBzMlNEUHJzaEdRRUtQR0ZSMkV1U3JtK1VudytNUkEzb2JQM1FKQnRiUFhQ?=
 =?utf-8?B?LzlVN1dkcTE1TTJjaGJYME1Fc3RyZG84dVJCUENEbm5JUFh6MzdzMWM2NFQx?=
 =?utf-8?B?a2ppLzR4dnd0cFhNajlDVTU1cnpjdnZkdVB6R1RSV0plS3JtQ3dMdVNNMUUw?=
 =?utf-8?B?eFpCQXFJbC9vS21LWlpCWHVhc1J1WDkzMWs0d3NPbDN2dVFiL05ScjZuSnZK?=
 =?utf-8?B?czZ1R0VhTWR4Uld3TXM0LzUxOHZoRkIrdGdFK0dnc1c1OHNNZzdFdkhieDU5?=
 =?utf-8?B?QWpJZzNWYmhBL0tKTDNMdW5sOUVnb0g0Ujd5b0ZkdXR4SlhQTFY1cS94VlFV?=
 =?utf-8?B?SE9KSWVwVGowa1RUY1pBMUpyU2pFZmdiMlI2MFVOK2dkK004bGQzbzRjUlhI?=
 =?utf-8?B?N1lJcEhVU0JtdUpXUm94ZFNBZFR2QkxZMmxtTHptVEl6T1MxckNRTXBDSHhS?=
 =?utf-8?B?YXBvTjE5VytlUHVpZ1pxQnJyY1E0RytOc1BsMXk3MFF2RlJlUFp6VEhUK0ZB?=
 =?utf-8?B?SS8wWmpGdU9FcmJVWm9hUkNwbEJ4OHFvYm5nTC93TVRYSlJEVzF6VWluQlZ6?=
 =?utf-8?B?ODJoTXdsNzJWZjJWb2NacVRyZCtzSW9mb3Q3aER6eThkWUFwejRwRVpLbFkx?=
 =?utf-8?B?UmxhYlRlNVRLTEVudGZvbWdNMFl3aFVJY3RBVllMZ0RIQ1Y3UGFhejJSeVRZ?=
 =?utf-8?B?cVlvZmpobzUrMFZpWWJibkoxTzMzK09pTWg1NDM3VXlKWi9CUk5yRjVJN2Ni?=
 =?utf-8?B?YkhWbmdWaXZJeWNmSk55TFcxajlocnhheERBVjlMYjJOcXp0TXV3cE5GOUU2?=
 =?utf-8?B?b2NTT1BEQ0pRMmRQK2U0eGVQa2JKZW8vZW13UnBoQ1NweG1rTzR0WU91VHpl?=
 =?utf-8?B?WFJWQmZDYTQvZDN0bFl2V0NXZ08rNnpkcFNhUjI2bENUQkxTQ2FFQWFkTFFF?=
 =?utf-8?B?bC9yalR4QnR1SVBSZWducDdTMnV0RFV2Wmt3ckZKd2tremwzVzJtL09IOWNp?=
 =?utf-8?B?dEY3ZzZLYnB4aUFIM1Z3WnlqMElKUk9xOTVmeTBFb3BwRWVBcDZpSWFnQ2JH?=
 =?utf-8?B?bW5teW12eTFpZERUNE14WWVKaEZRUUJLcnJkaVYxOGZxaFRwbzk0a09qN1ZP?=
 =?utf-8?B?bjRKbnFkQ3J0SW9EMEpPU1JFbGs4dzlhM2pEK1llRDZZZUNZVnlLTVlZMlk4?=
 =?utf-8?B?djQrbklzckx6RStzVWxEUHM4N1B4Z2VhTlNLYUlnMWdmdG5ET1IyeXF2Y1RT?=
 =?utf-8?B?ZEhBY3AwaGdwQTFtQ0RTeWlrTG5teFRjTCtlNnl2WUFuV2VIV1Z0Y1F5K0s1?=
 =?utf-8?Q?2c58fWisxCc3gQ6M0s?=
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: 3abf9a38-09e3-4464-d20b-08de5de2b987
X-MS-Exchange-CrossTenant-AuthSource: BY3PR06MB8195.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jan 2026 20:29:09.2547
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JPou0yv90AmxlRaIRL4R80lkXLQcXDbzA4gFBGJoPOs3Xt5HL62ar2yUaEMUzitH
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR06MB7889
X-Authority-Analysis: v=2.4 cv=avW/yCZV c=1 sm=1 tr=0 ts=69792017 cx=c_pps
 a=Lj9o+5Kg1g76LDS8oSCIAA==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=lre9DRYkaIEA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=ViliteAfzmMfhZgCadwA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10
X-Proofpoint-GUID: _qU5GTImZh1ZYD0pKo75R9Peo-U55I7I
X-Proofpoint-ORIG-GUID: _qU5GTImZh1ZYD0pKo75R9Peo-U55I7I
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI3MDE2NiBTYWx0ZWRfXwbokbdZTH1Ek
 P0+BNc3IKoDFxcDafuc3JpsbD+X7r0q2oCQCST/zHtvlDnxS+FJGrDuFlTuJ6W/9Q9oOMih6hyh
 VJ1nn+4zBm2H81T4aMcqvcAcDCWAu3/9KdxsRB5aodsNA5E528A8KACDZI++6oeUnFzgkSQn38m
 ifpd4JltqdkwYOVRuqtxICEAR8eBQK4mzckvrdqoT6CQn8o7UHw9jivHwABpgNaD9FiLGu3jYPV
 oQh1D1s9EgfHoHgguanqxShRijQT9C+pHFxWJZNYa2tVX2pb6cudJnCKO/tz4jVJJfKm94vwmcg
 yLRxZvmfflBAk7VWxmJpUd9+mfbs7AL69WFjtIATDqXLCDqKTfEdM6Eot4hNCeXWLfdtlbdBle5
 Lxa0znS8t8TnMbbl0HYRADn+zF+ieby5/ffi87ZJKkr6wXpTcN2vSYA8ABxGBMGtVkbPvKCi9fr
 oEG/fSl9bage8/MAjiQ==
X-Wisc_ValidFrom: true
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-27_04,2026-01-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 malwarescore=0 priorityscore=1501 spamscore=0
 phishscore=0 suspectscore=0 adultscore=0 impostorscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601270166
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.89 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[math.wisc.edu,quarantine];
	R_DKIM_ALLOW(-0.20)[math.wisc.edu:s=selector2];
	MAILLIST(-0.18)[generic];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_NO_TLS_LAST(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_SEVEN(0.00)[8];
	TAGGED_RCPT(0.00)[speakup];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:5645, ipnet:206.248.128.0/18, country:CA];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jheim@math.wisc.edu,speakup@linux-speakup.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	TAGGED_FROM(0.00)[bounces-1527-lists,speakup=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_ALL(0.00)[];
	DKIM_TRACE(0.00)[math.wisc.edu:+]
X-Rspamd-Queue-Id: 408DB9A5CC
X-Rspamd-Action: no action

I'll give it a try. But I just tried something else, I switched to the 
Apollo synt driver on the host. So instead of speakup_ltlk, I loaded 
speakup_apolo and it works fine. Things like changing the pitch for caps 
didn't work because there are different command strings for that. But 
there's no delays.

As someone else pointed out, RC systems put out a doc on how to talk to 
their synth.  So I could sort of reverse engineer that. I could look at 
what Speakup was sending me and compare that to the documentation and 
figure out what to do. So I have pitch  changes and speech rate changes 
working.  Having documentation is nice but I can probably do w/o it. If 
you press the Spekup hotkey for changing pitch, capslock+3 or 
capslock+4, you can see what bytes it sends and infer from that how to 
emulate the synth.

So I think I'll try your 0x11 trick and if that doesn't work, give up on 
the LiteTalk. Switch over to emulating an Apollo.



On 1/27/26 2:03 PM, Samuel Thibault wrote:
> Hello,
>
> John G. Heim, le mar. 27 janv. 2026 13:42:05 -0600, a ecrit:
>> Speakup  takes a 40 second break between sending
>> chunks of text.
>> I think that thing about it never sending indexing commands is key.
> I think it's rather a flow control issue.
>
> The full_time is used only when writing text returns an error, which can
> be a buffer-full issue. I see in some drivers that some hardware synths
> seem to be sending XON/XOFF characters. Perhaps you just need to send
> XON characters (0x11)
>
> Samuel

