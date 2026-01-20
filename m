Return-Path: <speakup+bounces-1522-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id F0D1BD3BE18
	for <lists+speakup@lfdr.de>; Tue, 20 Jan 2026 04:56:45 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=math.wisc.edu header.i=@math.wisc.edu header.a=rsa-sha256 header.s=selector2 header.b=m77UJwnK;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 36BD1381933; Mon, 19 Jan 2026 22:56:43 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 14CDE38183B
	for <lists+speakup@lfdr.de>; Mon, 19 Jan 2026 22:56:43 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id EB2503818DA; Mon, 19 Jan 2026 22:56:36 -0500 (EST)
Received: from mx0a-007b0c01.pphosted.com (mx0a-007b0c01.pphosted.com [205.220.165.71])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 422673818C7
	for <speakup@linux-speakup.org>; Mon, 19 Jan 2026 22:56:36 -0500 (EST)
Received: from pps.filterd (m0316041.ppops.net [127.0.0.1])
	by mx0a-007b0c01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60JIoVjZ371851;
	Mon, 19 Jan 2026 21:56:27 -0600
Received: from bl0pr03cu003.outbound.protection.outlook.com (mail-eastusazon11012040.outbound.protection.outlook.com [52.101.53.40])
	by mx0a-007b0c01.pphosted.com (PPS) with ESMTPS id 4bst8da61m-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Mon, 19 Jan 2026 21:56:27 -0600 (CST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZYMKn4kIdlWd3ithbdzUrFV6HssfsF1d7I9hUbMA2xj3kO9RmhUcHboWh2Xbr/ivOy1WWSlfL5pgP0xH+3p7OhvMfidcf2me6l2RGeTEfD2r/PeIC9SgyLA6utnwqQNzupNUtsRfPoo7xcPecsIY6JlDcs7kK6qDKLlAm+RhDrm6aSCKi1lodQ5makSIukP87fCfkloth04cV7d54LglNYcsCnfujNkEMZTSpDVPnVSe/i7hJgB3PgHZ/wWpVN2I7XEFThQruZbSPu0bwxTUhy8uSe4PVnktmSBBHwOoaRuVCAUm20ZVd7OJCXK0qCo79Wc4qpZlty9ABs4M/gqzJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ktsJwXf19v875UxHWHe5ePuCXuFkC4UaI8UaR0l3awk=;
 b=l3LTFoxsWYvLBc+xZwN4ZYEYPfZrA3DxqDwm+sYxx0nrqeJ6KtSZoPxloNgC85O9Vu1IIb10ATPaVQdAYuFutTvJzhfidaFZPMGt5M+HG1z62uBJHLI/yas38BriVSFLURX51f+TjmgSG1MGD3MNS7OrSsNqGByPMXn/Ga9mwLplFL1lX5rNomXL4Y+GzPg5LHlLkAmmL15a1N6BMYvpBrSt8wDg1dUlw6etmedMcbTcSBHxEoszHrage8Uol7iUf+DTDa2sl8XTMm2XBkVpsVqcdhn1sc/mK8MG3xgFxWFBknY73rhvaEMXSMDdf4aO57Mcn73StBrIQj7ND4UEHw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none
 header.from=math.wisc.edu; dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=math.wisc.edu;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ktsJwXf19v875UxHWHe5ePuCXuFkC4UaI8UaR0l3awk=;
 b=m77UJwnKJVnUZElSA6nImdoeX/lzpemyOKvyf/2RY6puRqoGRkdQ3/iGvM0oBemJ1zAFVwYopBGYWRQBqnk1Fad2aRoPjVQ52FU6o6+AfNsYq6amCatFUI0YbEy4qRK2cnkjWIuoyybvxrxHaHAj1/VgQJmw8TR+oR9lZ90L/Qn6v17+BWGR3vFm5V8Oal3fIGGo1wH2eVCy+WMVEU6/WZV+gj2Pw92R1x4xcvuJRhwr9CpKd64jl9zrS0/aMBc8Vt9+dFZAw4j/nxNMbcfZlw/yfgqlOcaVVcOD5Bh7TCQBT6ws1htJR49J+FuaOkR41jK35FNOkxiN2uVxnQ2C9g==
Received: from BY3PR06MB8195.namprd06.prod.outlook.com (2603:10b6:a03:3ce::19)
 by DM8PR06MB7735.namprd06.prod.outlook.com (2603:10b6:8:36::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9520.12; Tue, 20 Jan
 2026 03:56:25 +0000
Received: from BY3PR06MB8195.namprd06.prod.outlook.com
 ([fe80::a7ad:fb62:4389:fd8b]) by BY3PR06MB8195.namprd06.prod.outlook.com
 ([fe80::a7ad:fb62:4389:fd8b%5]) with mapi id 15.20.9520.006; Tue, 20 Jan 2026
 03:56:25 +0000
Message-ID: <48bb4d84-0335-491a-b9bf-4ce8ca4e93db@math.wisc.edu>
Date: Mon, 19 Jan 2026 21:56:24 -0600
User-Agent: Mozilla Thunderbird
Subject: Re: test if speech-dispatcher is done speaking a piece of text
To: Samuel Thibault <samuel.thibault@aquilenet.fr>
Cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <f32fb24e-76ee-47f3-8557-c4565ba293d0@math.wisc.edu>
 <aW6xxtBlnDTK9uUq@end>
Content-Language: en-US
From: "John G. Heim" <jheim@math.wisc.edu>
In-Reply-To: <aW6xxtBlnDTK9uUq@end>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: CH0PR03CA0046.namprd03.prod.outlook.com
 (2603:10b6:610:b3::21) To BY3PR06MB8195.namprd06.prod.outlook.com
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
X-MS-TrafficTypeDiagnostic: BY3PR06MB8195:EE_|DM8PR06MB7735:EE_
X-MS-Office365-Filtering-Correlation-Id: 338beb76-04d4-4b27-ff83-08de57d7e1de
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|366016|786006|376014|1800799024|41320700013;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?OTNzZ0pIbWRmMnpJbCtyZG5CVkZoR2pnZHVrdzNoOFFta1lDeHJjNk03dXd6?=
 =?utf-8?B?M3cxYVVDdlh5NDA1bW1QVmRMc1VBWExBMFgvN096N05KK1lXY25OeE1yWXdZ?=
 =?utf-8?B?S2xOTkwwZ0hCLzFHcWhjREhjUmZQTGozME84TW5XTElMWklqRHdXY0h5bzdw?=
 =?utf-8?B?V25hNndqRTZscVloMzNIWEpMVFJaNVpST3FjVG4yN2JFOEVVVWF3bFd4b2FP?=
 =?utf-8?B?R20zbHlzNldGUUs2WVdyTEQrZlBSU3U2NEx5L3lwSEl5TGphdGZ2TGtNL2Va?=
 =?utf-8?B?ODdKR3kvajMyU3cxeWZsQkp6OEoxeUJEcDMwOU45QW55b0trKzhwQUcrbWpt?=
 =?utf-8?B?RmhObTQ1emVpQmE1WFI1QnFsUzJMdHJoNy93M2labEdzbng5QmRiSENpRTNo?=
 =?utf-8?B?emNUOEk1QndwMHFyQ3BKd1hWR25BWXE1MGladThYQTQ1UmtVTHZzZjZiNWo0?=
 =?utf-8?B?d3d6MnY5cjd1TUpuc0V6NWpyRFJjYVNrRjhsNGNRY21EK1dIOWgxOVYrTlpS?=
 =?utf-8?B?Wkl6NURIM0h1TWxTemVVeDREWkxoVjUwQ3l5cnVDenprM3NSMHFSMTRNV2Rw?=
 =?utf-8?B?cXVJVU82V3I3L0gyd1RXdWF1RkR3bHk1VThQc212R1lBbHFwd3UrcjE5eVFh?=
 =?utf-8?B?bDB3K3NOQU5oRk9nL3lRZElMSklNTUZWY09xQ2V6N1pzWkUxTW5OZDZ6NHY4?=
 =?utf-8?B?d3N4bExKd1FjVWJVU0ozNk5aZjNwa0FtZWM5bzM0MFpHUWJNd2JWeXdPS2dE?=
 =?utf-8?B?MHBCZ3RMQzZjQWhRSXBqLyttL3RxY1U5M1Vjdk9GK1JCUE9QaXF4VWtVd2Y3?=
 =?utf-8?B?VWxkWE5JVy8rbUx5VmNJbC9vdzVEdVpDZzZsdWIxbUF2NDgvaWZJTXF4eFJD?=
 =?utf-8?B?ekx2MVpCOWFuVkxCWXprQ2hGbTcvVXpHbVZwbEhCRURON01RVG1xNVMyWVU1?=
 =?utf-8?B?Q0tlUkRXZXVYaFhiQXlQL0VyUFA4RCt3Tk9Wa3RWN3d0WUx6MFJQM0FyNWE4?=
 =?utf-8?B?TUl1M2MzYk51WG5ScllkYnZ4Q2ZRQ3BJZlpCa25yR2FjaWp6MUtsVWorU0Qx?=
 =?utf-8?B?SkRnVkYvQUJFSHhyaWJLNjJGb2ZTdWl0K1d4SDVDNGhwRXVmdHhmUjlra0dp?=
 =?utf-8?B?MldxbkhwMnp1Q0RsOFllZXBYY29oVWdDbnExK1A2cTJZaGFCMHNvV2tCTEtL?=
 =?utf-8?B?RE02VDQrY1pPL2ZzOXhrSXJ4aHViTDRUL0hGZ0hKMXhYQXY1aUdNbEFmc3N6?=
 =?utf-8?B?aklpd2FKN3h0OWVzS2llUWRIS3VONnhaU20vYWRFdk5FOFFFQTFNenFhaGZz?=
 =?utf-8?B?NmwvSERvRHBibnFNT1VERFJ1ZlFQVS9pakVRcXpNbzBEYVNtY3dzd1UzTFVz?=
 =?utf-8?B?RmxNM2twQ1hLUUZLWmQwc3hvTUhsTW1pSkpLSVZCdEtCcW9HRUppYi9PWExw?=
 =?utf-8?B?Nk5MbTFITU00bUVwYzZIYnNJVU9RKzhURjJzQjBZQnp5Mm1uQUF0L2NxKzBo?=
 =?utf-8?B?a29oU1BuYXIyZTVPT1pvaW1HQ1FnOGNZMWFwK3VDczlWeGZDTFBMRi9vLysv?=
 =?utf-8?B?QUk5K3I4bWx2L2xVd0dtejJDcWREYlpvUzVJUXdtbXVwakk0S3FpOVE2b3lD?=
 =?utf-8?B?TXFLTnp4TEJVWjM4NFJkeW5TallBV0Q5RVloYXNZMFpBamM3UWs5cXFpYWdL?=
 =?utf-8?B?NW8ycFlKUGlYNkV3S2RRM0FueklsdWxzbTFkMTR4bXBYU1FCdTh5UjFGdUY0?=
 =?utf-8?B?bkVSMFNvWXNZSUhGUjNMcVFuUDlBaFV0UWFJT1hkNk5rVHlVdlRlZDUrZ0Iw?=
 =?utf-8?B?MkR1QW1rWHp6aFYvaThaNHJkUDZRUk5Bekw2V3dYOC90R3ZUM2dZejFQa0o5?=
 =?utf-8?B?UlJWK2d1K0JIdmUrTXFJNDR3d2dCTkVsUjBSL21LdHdUN3BJV29zUGRoWjkr?=
 =?utf-8?B?L0lJUE1yak5iZjZwZkk5MjFIUmowWnJVRkFxMDlyVmtkYm5DaG5rK1UxSXdW?=
 =?utf-8?B?c2FwTlFjN05adFRWRWRZN2ljaUhIcU1BZEt0Sy9IaERKNmJFWHJjSE1FVUF3?=
 =?utf-8?B?TzA4c28zRFpUa3lsUlcvZzBNclArSmFDWWQyVGxDcU1XZkxyTS9QVktrK0Fh?=
 =?utf-8?Q?9u4o=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY3PR06MB8195.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(786006)(376014)(1800799024)(41320700013);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?Y0ZmL1Y5eVRhaUJ0R3NsenhEY0V1ZDVDQ1hSV1JxQm5YRFdUUWdzSUJCd1VI?=
 =?utf-8?B?Vzg0MFlFNEx5T2sxc2I4aTdMZ3NtYUY0YzZ4cjdaU3BxNVR4VlZzb2lQNVZ4?=
 =?utf-8?B?YUd2Qkk4Tnh2Vm01VkZFMUxRYU83ZGwyWEMxS3VZQ3VQWDlDSFY5b0ZXM1A4?=
 =?utf-8?B?T0NhVkZKYjFNbHMxY1VENG9BbzEzNCtPQTZMQm9ZdzdrOGlrR1BPanJUUU9T?=
 =?utf-8?B?MmNVdzFGei9VK1p1YnAxcCtGazNDU2x4QlZmcjgyemdWODhwTVIwYW5lcGsz?=
 =?utf-8?B?YVBvbGFKNWZEcGJpTHpwK3c1czJ0eGJPRjQrUU85Z2tmRUVsZytlaDFSTko4?=
 =?utf-8?B?TnJZbkRpOGlsOWxxbmZaWXpYUnZTa2U3ZzV4TFRmeGlkUGlEUmdydXgrY3Av?=
 =?utf-8?B?TjJBMUVZY3BZblZPYUMzNnE4MENkalJVUElURlUzZkh5Mm9hSURPK1R3ZnRn?=
 =?utf-8?B?TWE3Q2Fyb2hDNm9OaG9kK3crN3N4RHpiWXBoMVBHWmFCYjlRMHJ4NHFDL1ZZ?=
 =?utf-8?B?cm9VN056TTl6ZnBoQWlET0wvRE5oQlJERVBuN2ZYNFA1d1pKcVhqajVzMmIx?=
 =?utf-8?B?ZmdDSlN2aG1VQ0w4c2Q3MkZTaktFU0FjTi9kano3Nm5SM1FjSDdyMW05WjNk?=
 =?utf-8?B?UzI1cVRMU2Uyb1VuSy9YU2lZbzhUZG5YbUZnaVlub0FzV2NoQ1ZqQ2t5YUtp?=
 =?utf-8?B?c2luYnJsVzhyOTFjRFVJT2ljV2NTU0pUUnlnTGZoT2owMmNtQXZrdHM5UE93?=
 =?utf-8?B?WExIV0tma0pqQXkrblJHU1Rob3FOemNVSmp0SnFJdEFSUWk1NE1ydzhQUW9a?=
 =?utf-8?B?TmxuTUVvUC91MmFKa21Ca214WENVREE2UW1mMmxSdzF1Z0V4Ny9lU3laUTFt?=
 =?utf-8?B?aGxDamp5c280a2srRVZ4UXpXQzZqVkRGSG5GK2Vjbks2NEx0RGdzV3ZjekEw?=
 =?utf-8?B?K2V5SUZVOVFSdzU0bG13V1htV2tCQjRBY2Z0YXZCdmVaWjRMNTdXK0EzSzhU?=
 =?utf-8?B?ZzhvSnNDRTZXdHBybzdHeWtHWTZsaXY0OUgrWURLQnZDRUtFU1hFWWwvQThR?=
 =?utf-8?B?dEtFODFnVXJqbVVmUjhjbjdQeXdQbGU4T3orZWlEUmZpaFl3SmNPc3U2eGVr?=
 =?utf-8?B?blVXdS82RkhRem4vcU1GR3I0d0RyVXJ4dlU4Yzl0aE8waHBXN0JoenMwZEg3?=
 =?utf-8?B?VFIyZkVIb053eTNubmh0dUI2MU13SUY4VzJ5Q3B5d2thMHcvSjdIQ2R6am5H?=
 =?utf-8?B?Um1KZDdNaHBKZ2UxL29SUHdkVlRCeDk4dUd2eFFkYUh3RGVTblJHZWRMd0oy?=
 =?utf-8?B?bm8yMXQ3bFZSNGI3SnV1MHhxME5kY1k5RkpFY2FndFBGeVRKNTZ1dzFIK1ZR?=
 =?utf-8?B?UjdaU1pyUGI4WURpWGsyUjViOE01UlYrNXFWazVwMVRVcHhJU0FGOW04aFNB?=
 =?utf-8?B?dFlpejJlMy9pTmh6d01xWDgxNXd2NkJzdXVaWkVhdW1QVzVib0wvQUk4aG1V?=
 =?utf-8?B?bFNBNmVpejJwQnVGL1dJZ0taQmNIVXlrQnk1dGVZTzRrbENlSmFHVEdURC92?=
 =?utf-8?B?UWZtQkpoY3JJTFRZUUNZRTA2MDlMeVRwdDR1Y3Fwb1g0cjFxNzJPaXVNZzFL?=
 =?utf-8?B?TVJHZmZEcEIveVRVU0o1cWlreUJWN095TTl5QUVRbzh5TFVtU0tYTHRRMHh6?=
 =?utf-8?B?WU5HWEZaWENndW9TbzEvcWNqSlFScERSUVcwSlZZbU5oYWhkcmxuRWNJVXZt?=
 =?utf-8?B?V05Cbkc0WWZRaDdFb2dvVU84WXRuc3dwMlRoRWVsZkJBR2VlanI3cXE4UitP?=
 =?utf-8?B?TUtnTmx2UDJXcTNyOGdkSzIzZ1NoamQ5bEtEK1hxU3I2Tkh1MVZpOFV4TEFT?=
 =?utf-8?B?NFdiN2ZXNGRVd3prZEJwVm1KMmNFaldVckxDMS9jOHowZlM4V3Bmb285UFFO?=
 =?utf-8?B?UXd5TTk2U2I4bVRIR0dQclpOMDN5QmIwOFBqRTNOamVSa2RCbUNuMXlNTFIy?=
 =?utf-8?B?SHExcjFTMFZBSGRJa1FkL0Nsd1NZd2Job3ZCaEVKNDJWV3F5aFZZUXRId21w?=
 =?utf-8?B?MGxrV2MzejM2bDNKUWl4M2VDQ2h6N1UyZ2VrM2hiMnpYdWZMdm16U0Ntcitu?=
 =?utf-8?B?L1dvYktKaTNZKzRGMGRKZE41OVlCVU52REc0NXZvK3kzczJHWThHcWI3L1l2?=
 =?utf-8?B?bWpxM2V2TmZGOStjd1A3bUluMy9Qd1N1L0tCZCtWOThQNjhaL2gvenh3dnhs?=
 =?utf-8?B?SEhyZTB1N3MwcG55cGlGbXcvWmhINGhlQ2JOVy8xSmNHNUJvVXF1S2ppc0tV?=
 =?utf-8?Q?+009ndatjQXrYTbjYb?=
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: 338beb76-04d4-4b27-ff83-08de57d7e1de
X-MS-Exchange-CrossTenant-AuthSource: BY3PR06MB8195.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Jan 2026 03:56:25.3408
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +nZTUwFiV/p3MXWeZMiJKjOajp6iF87JPneQZlcczpy3hsqGe/C/g1u1SRrQywtb
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR06MB7735
X-Proofpoint-GUID: LDetSM4IdpVCw22uPxeBHsBtpSUodU6e
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIwMDAyOSBTYWx0ZWRfX+FFH5U21bniZ
 xf3RyJTDx3/kwWVW+5lJB5fbSRNFRSy1pzW7ciAgN4S/NcGZZL+t68r6I4DXQgPuW0Z4oxm9VTV
 INsl9qJHsKcUTNf1FFkKAIpXgzk0ieMnmkIfzeMt26FFM2A9HyOOT60j7HQvkmr9GCqiBSf7BTC
 f+8q9WeW9adYaIIjotZsVgoIrDZjl4Lz4JspPHzDh7movsuKOxuArpO5wken5mKUpGcAxDpSXo/
 afUP2SDMddoLqj82zFwTMUOkKx61XIOEoGx8WgumNyNFuD7dnx9wWFgjR59vI6E4AW6M8t3fHHD
 IcydNg/ZzOxEbHDaKYRtOinoRSvIL+0rY4X9+IuxmMPs3F10Z3ZuM+oTxCj9U15lm9++JTs1Q7k
 EhLRVgJt0sj3Bu7dvlkawwUUHwKxSJhRiBvNlx/yORu1oS6QMWQxPeDZAVSkqpU1+Df+s+TApDE
 TUXFAk0UkcN50GuF3uA==
X-Proofpoint-ORIG-GUID: LDetSM4IdpVCw22uPxeBHsBtpSUodU6e
X-Authority-Analysis: v=2.4 cv=fv7RpV4f c=1 sm=1 tr=0 ts=696efceb cx=c_pps
 a=94FLU6K3oGZrB1XHaeOsDA==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=FKInb6NawD6oC36L:21 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10
 a=lre9DRYkaIEA:10 a=VkNPw1HP01LnGYTKEx00:22 a=nUoagiwmYyQyV2OpgMcA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
X-Wisc_ValidFrom: true
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-20_01,2026-01-19_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 malwarescore=0 adultscore=0 priorityscore=1501
 clxscore=1015 phishscore=0 spamscore=0 suspectscore=0 bulkscore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601200029
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5


On 1/19/26 4:35 PM, Samuel Thibault wrote:
> John G. Heim, le lun. 19 janv. 2026 15:54:24 -0600, a ecrit:
>> Anybody  know if there is a way  to tell if speech-dispatcher is done
>> speaking a piece of text you  just sent it?
> You can ask speech-dispatcher to send you events on the speech
> start/end, and marks.


Yeah, I figured this out just a few minutes after posting the message. 
It is in the documentation. I should have been more diligent. The python 
object has a method called "speak". The first parameter is the text you 
want spoken. The 2nd parameter is a callback  function notifying you of 
the begin, end,  and mark events. Nothing could be simpler.

I'm close ... I'm really close.




