Return-Path: <speakup+bounces-1525-lists+speakup=lfdr.de@linux-speakup.org>
Delivered-To: lists+speakup@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eBa7MyIVeWl3vAEAu9opvQ
	(envelope-from <speakup+bounces-1525-lists+speakup=lfdr.de@linux-speakup.org>)
	for <lists+speakup@lfdr.de>; Tue, 27 Jan 2026 20:42:26 +0100
X-Original-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 614DE9A15A
	for <lists+speakup@lfdr.de>; Tue, 27 Jan 2026 20:42:24 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=math.wisc.edu header.i=@math.wisc.edu header.a=rsa-sha256 header.s=selector2 header.b=Oqne1y40;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 3835738194D; Tue, 27 Jan 2026 14:42:23 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 14D1D381908
	for <lists+speakup@lfdr.de>; Tue, 27 Jan 2026 14:42:23 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 158FA381909; Tue, 27 Jan 2026 14:42:17 -0500 (EST)
Received: from mx0a-007b0c01.pphosted.com (mx0a-007b0c01.pphosted.com [205.220.165.71])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 2EC0938158A
	for <speakup@linux-speakup.org>; Tue, 27 Jan 2026 14:42:15 -0500 (EST)
Received: from pps.filterd (m0316036.ppops.net [127.0.0.1])
	by mx0a-007b0c01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60RIFocK2392746
	for <speakup@linux-speakup.org>; Tue, 27 Jan 2026 13:42:10 -0600
Received: from sa9pr02cu001.outbound.protection.outlook.com (mail-southcentralusazon11013038.outbound.protection.outlook.com [40.93.196.38])
	by mx0a-007b0c01.pphosted.com (PPS) with ESMTPS id 4by2g28r3y-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT)
	for <speakup@linux-speakup.org>; Tue, 27 Jan 2026 13:42:09 -0600 (CST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=u+TfEDNoPcLyz/r8jq8Ey2FUSFvsaV6eHCq5qWSCnFq8aq796EgjnzGGso9Qdg+afq4p4IxFogoKXnOOqzNPCn4ORaoiJJ53fEEXrxoPuMqu3NK3MvGSYRQqrqKyIZ3c72Rv1TQ7gbT1AMPqvRCSLL+Y9h0AMW/KI8IuN918jSmvCFNL9xDiWNNMGUIUwBCPUiYM8OHWwCZhJTXvsgBhv7JAOc3A/Fsz2pC/PtVbzsAVmHbt7EzJSUExjMctZIBaqqK40DKAMKb5Z+ms19zcvre/YH24mcyXacFPdX83+1eEJyiuCpQu4J9h2DQuKv6v2tySe7r5cW2v5PlL9jUa6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LXs6FaviaRv9N2y1Vv7Vq+xQMP1E5xnAH4Zx9pTDDOw=;
 b=E/oxvhK6ZX+md7yzYJUICSV2h7sD18hsXnRund0IYjj18LYqPVk1GrXpI1kSHbL1fKkmrXBT+p7U1Fk0vbzuShjWePHRRnSlJYDsqqxqhIl5R6D+w6GacE8LlzcX8Nc06v9yeSuzaj3qWVNnWzytLy9cF+DZj8WRmPhdz8Jj84bP5cImHW3zD998fka5CsIQpHke/TkCGf+iMEybsmO5XeNVPyoSlXYDWZ1elu4Z7Z7nMTwT1n/4TIIG0HSQ56Tl8YISlIxr26SO2ndXWidAJsN11nwKT6DGKWklKCXaYhV1FN/w+ocmTZMIvUUD11sowKyRP5VgpdW04vuDYKuqqg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none
 header.from=math.wisc.edu; dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=math.wisc.edu;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LXs6FaviaRv9N2y1Vv7Vq+xQMP1E5xnAH4Zx9pTDDOw=;
 b=Oqne1y40lYFXLP8teoMZhZNSB9/pGLfO5VgD/gaxPJ86vUs4cTOw4oy+PGeAzOP1f3POTgFDiIQXSitNRB/kjw9p4ZQn0dhujmI3mbruGlsB+WLOnPAj+yZCPgVBr1HIbXuSzPzYB9JmdMffQHI0RizecM25CpiAkf0PzYjmq7OwCpFBPQgPvETK3M6iXonZzwcJ+DMQe+35O6jHjlieQv2YKqsFG0PejRc+kBq8xdyzGQuENxooS73Q/3FMb07qV0MjCopjNXQeG1ILumnKor6wD9XD5gW3kusf85NVg6vVO/YALNYVFTLONk9u2le+0oyiru9ZiM63aN7xKSZhWQ==
Received: from BY3PR06MB8195.namprd06.prod.outlook.com (2603:10b6:a03:3ce::19)
 by CO6PR06MB7236.namprd06.prod.outlook.com (2603:10b6:5:342::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.7; Tue, 27 Jan
 2026 19:42:06 +0000
Received: from BY3PR06MB8195.namprd06.prod.outlook.com
 ([fe80::a7ad:fb62:4389:fd8b]) by BY3PR06MB8195.namprd06.prod.outlook.com
 ([fe80::a7ad:fb62:4389:fd8b%5]) with mapi id 15.20.9542.015; Tue, 27 Jan 2026
 19:42:06 +0000
Message-ID: <e8e83e43-4afc-4c74-b101-4bb93f1a664b@math.wisc.edu>
Date: Tue, 27 Jan 2026 13:42:05 -0600
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
From: "John G. Heim" <jheim@math.wisc.edu>
Subject: Cannot get indexing to work on my RPI hardware speech emulator
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: CH2PR14CA0038.namprd14.prod.outlook.com
 (2603:10b6:610:56::18) To BY3PR06MB8195.namprd06.prod.outlook.com
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
X-MS-TrafficTypeDiagnostic: BY3PR06MB8195:EE_|CO6PR06MB7236:EE_
X-MS-Office365-Filtering-Correlation-Id: b2a491d9-0161-4d7f-aa50-08de5ddc26f4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|786006|376014|366016|1800799024|41320700013;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?L0FLc2dHY010LzUraE5CeWNvSFJ4U3h4YjhnUVRybzNYTlVnNDU5SENlL0ZM?=
 =?utf-8?B?ZXAySk56OWNtcG9ocHZZdWJjUzRKZ0JVSGlyYW9xeWlhZVZ2VHJ0ZktMNVZI?=
 =?utf-8?B?cW5aMlBVVkt6M2xGRGJCdHViMmY2SlBHZmt6aklCc3dJOW1IUmJDUTR3Z1Bp?=
 =?utf-8?B?eUNjdlNObkxGSzVMd3BlM01ad1E2RWJnWFExVW1tb0RRYjU1MDJrRXBQUUc5?=
 =?utf-8?B?U3J5cUxicXh1M1dKNUk2ay9QcDF5QkJCeVd1aFdlVzZPbzMyTXpzVUxNUU5t?=
 =?utf-8?B?UDBzRURhTGxoTjIxd3lRVGt5T3VZMXc4Qnp5VHQ0c2ZXdXFEckhVRE45Zjd4?=
 =?utf-8?B?YjRBMjVGUzk4OGo0U3VUZ3JqM1hmM3oyNVcyU1VkVlM3amI3QWkyRUJnVTZn?=
 =?utf-8?B?bDNpeE1aMXVsTjZHbU4xWjhJSVFwTHdEcjJSTi82SjRDMjNYZEkwRGcxcmVY?=
 =?utf-8?B?QUh6OXJiYU8yZWdnS3ZvSFhHUDdTYnIzRFM3cHlEVUZhSTA5SjltbTB6c01T?=
 =?utf-8?B?WUJHc3pOMUU1b0VkV0kxUmRES2FNWm5VVWlhb0M5dGdISEM3UjdQTUFWZTFU?=
 =?utf-8?B?eG1DWUQ3RmxkeU1pdU5BNjFCMHN1K0ZmUUlkRmtBNU95b09mV2tnOGtYMU1B?=
 =?utf-8?B?VE1wQW1JcXdscGVid3lnT3p3OU5JendJbnBXVkpFN1d6V3lZZlRXMnRIdEFO?=
 =?utf-8?B?OWNrQWozc2F2TEowQ3dCaEhRSTAwTE4rVDhoRlFoZFdtVWU5bkNSVy9GY2Na?=
 =?utf-8?B?cEp1TnE1WUk5MkdaSlYrVlBzeE1xNURDMEJ2dWorb3kzWkdsQWVYclFVYzhl?=
 =?utf-8?B?SVJ1NXgxdVVtbWZTSGdueWQzNzhjZll0azNSWVRKVlNhdGMzb2d6QzRVZDhC?=
 =?utf-8?B?QTFidmtJdEhYeGxoYWJLRi9tWWZzUnhJT295TXRjVmFZZU1KNzQwZHFlb2tV?=
 =?utf-8?B?UmtlM003dUYxejdjeVBPd2pVcDZvbUh2cjhTRGFXOGc0cExGY2QwdHVyZXhF?=
 =?utf-8?B?cm1yV2YweEV5eEpEdnQySG13eVh2Y3FKY21kK1o0bjBjWGVMZjRlVmo4bnJX?=
 =?utf-8?B?UVk5K2NZbjlEWUM3K3BhZ2x4WWVEQUg2Smc5VTVLdHFYcURJbHM2UmRwOUgx?=
 =?utf-8?B?RHdUd1Q3SFBLQUMrMTVweGJyYUp2NFVaenJtSWNDSEEwTm1MVkJ3clE4dFhR?=
 =?utf-8?B?OGpvUkxrWC9HZ3lPVC9qbGRXeUtmMnRFQklvcG1TWGZ4SHFMbzYzS0d3Q29r?=
 =?utf-8?B?elNmeVM0SXNNWUpLdG9aelNZTVB1cUMwM0pBM2FBMTNMVEtSOWF5RU8vd0lW?=
 =?utf-8?B?WDlhbUFmN2NHMTM0ZjNBblFaOUhJaFBhWDEydU1iQm9ZVDhDL3JXN3NuakRC?=
 =?utf-8?B?UERyOUxiRWF5UXdPcEJ3aE56anJkVXF4eDMvaVNrVnh2blNvcmlXTDBtVFNX?=
 =?utf-8?B?QUlXVFc1Y0wveHVtbExEalZaVWIxU0pudmh4L0JBV1dXT25UQ0loRm5ZL1Nv?=
 =?utf-8?B?YzN0M2wxc1lNVmVzVlMzckgvWGFsZmVUaC9ia2VFY2xKaFlYVHFjMW1NSldN?=
 =?utf-8?B?dklCdytoOFowN3ZOV3FnbDJ3VG5oTUJqZU90eUdZQW1GQ2prbzhMZ0E0eS9O?=
 =?utf-8?B?YVlxNXRnTlhQYzFoUnVSZGczSUlFUnFIYkZoWHNyT1RZVU5FTnNvVDNVd3Vu?=
 =?utf-8?B?R0JrZHB2ZTlaeFpSMXp3S0FsYTZVOWpGczYxK0c3alg4bW5tbStTRFV5eFgw?=
 =?utf-8?B?aHVtNDN4UTZodUJZNDV2NWtiNHVkbmF6UlRyQ0RUQ2sxcjVRVTVTd3lyNmpL?=
 =?utf-8?B?clhES0U0Z2dUL21vdzAvUzk4ZTNoSjdLaGlzbWxoMnJDTm9nMXV2VFdjTHBE?=
 =?utf-8?B?WnhyTTB5RExrQWpHMnpxUFAzTmdFTlJ2alpzZVVIdVpmS0VENzFnSXdYRVZD?=
 =?utf-8?B?VG8vdmU0alB6MC90b0FCSUN0ZlNYNnR5dHN6WGZRR2lsQUpheG9tbDBoT09w?=
 =?utf-8?B?R3QxWnNOYzZxZmlpaGo1MGV3OWhTcHlsYzl4NEp3b1FqcElZOWV2QjdBZFM3?=
 =?utf-8?B?WjlyZ0hyVzFXa0wyTXNsN0ZQelRXaXlKcUljeit5VW83Sk5zNTAydTRFcTM1?=
 =?utf-8?Q?nnow=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY3PR06MB8195.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(786006)(376014)(366016)(1800799024)(41320700013);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?NWcwWTBHYUl4LzRzcDgzT2kxdS9yREFyZUhzUEVWSXV4ZTBrSGJ6VWVFYWIw?=
 =?utf-8?B?cGlkM2gzcWNUNnVLZzJYQ3FHd3dNOGp1K3JMb0lBR2ordlJqWXRpcFJUS3cr?=
 =?utf-8?B?NXEwWEFKUW0weFZ3ZUpaQnRUSzAvTy9JVEhJaVMxdkxNTmlxM3owaVRIeENx?=
 =?utf-8?B?ZktmZmd4ZFluaCtENzBaZmIxa3dNQzFoQ21yWVlGUWx0Q2lUVW94dmpscTY3?=
 =?utf-8?B?ZEVEQSsrT09Db2hzL1ZoTWZIWDNYekZTdlBkdXlLQ3NnUVVmZVd2QWtQckxm?=
 =?utf-8?B?ZndiSVBzRU05VXkyTUVBbVJUL0lIQjFCTFRseWl4aFkxcXVhUWp4Y1FRQ2Vj?=
 =?utf-8?B?em5BdmpuSmZLZUlOcDhJcUhSY202cnZiT3BTZThOeTlSdFQ1Yno4dENkbHBJ?=
 =?utf-8?B?TVFmTjBYM1VZQm5Kemh2ZjMvZm9NV2FNR0hmMlo1cWk2c1h5U2RJdWRNY28w?=
 =?utf-8?B?b2hHcnVDTTlIR0s4Tkx5ZXV1Y2ZUWjBtL2UrMkc4U2ZXdGpIekJ0YlhOVWFj?=
 =?utf-8?B?NDc3R0xvQ01xMTlhVnlNUnp4YkwrNXdwWWFzY3FXMjB2cnhIOXl5RW5QWHNQ?=
 =?utf-8?B?ZnJ0ZUFMOG04V1EvbXZCek9pL09DSWZkOTVkWGRmSGh5T3R0dmw0MzhQOUk0?=
 =?utf-8?B?MWU2dDRRUjZTZEo2Tm1MU2RNTGtpZ1RZS1hLZ3R0QSs2NWlBb1g0Wlc1SENC?=
 =?utf-8?B?SU5XMHRyMCtvVlpuNkNaZ0E1L2YzdGYxWGtrZDNuenNVTjBUTDJ5dVYxU0hL?=
 =?utf-8?B?Z3VLd3YrYVFsR2V3ZU83ZGZ6ZFY3RUk0eDRhdHVySG5tU3phK01xamVlaWg5?=
 =?utf-8?B?K25ISGZWckVUY1hvTnlKOTVEY0RYb1phSHNuWUF6ZEZ3aEZOcnoxYnVXMndL?=
 =?utf-8?B?V2RpZXhvaXMrdXVONnR4V25vWUtJbG8yck9lMXF2OVdERU1jZFhDQTMvTlZo?=
 =?utf-8?B?OERXd0xJTHI0cUU5TklHd04wMGkwV29iMFFBWldJMFpKVStjc0F4WStaUGlh?=
 =?utf-8?B?aWZYSUh0RXFHOU9DS1kzUEJFL2lFQ3FiM1M0Rzg2aEpOTXhCNmdlOHhtbU5B?=
 =?utf-8?B?d0NWY1dlWVVzc0k2TU5RNVp6dTZGTmZ2VmJ5SlRtSkliYVFYMzVPOE1WMHFk?=
 =?utf-8?B?d3pIK28rOVdOVmQzNEFSTUd0d00rTUF6VVBwMTlCZzBxRFYrRm9lNGhRUDgx?=
 =?utf-8?B?cnlKU3RzNEx3dkQrdVMzRUZPcnp4Q1JLQTVIdGhlU3dnWDladTZzRFFWOHRP?=
 =?utf-8?B?NXBrNlVVM2xqc1RzZE5zbFFnb3NwYXZFMFg5ZUI4SEMrUHFZbm4vN1ljZG1R?=
 =?utf-8?B?K2pNRGgrME1lWmdTTnVYRlU2QnF5bDQ5SWVraW13YS8yVFVqSnhTOXdvMElo?=
 =?utf-8?B?amwwUDFLVThUcTd6QUpiZ295djA3NWVlWDR1cXF1WDdTLzM5bVQ2Vjg4cWdD?=
 =?utf-8?B?dnRRTlkyMXRLNXlxbXY3elhCWVAvNHBDSXBxYlBVaDBtaDkwYjk2T21hakh2?=
 =?utf-8?B?SlVta2QxWklOb2JlYmwyN0JEY01ZSENPRUFzTjVTQXlTaFVxMlhENDRUZzNO?=
 =?utf-8?B?eUozZ2huUllCZUdNeHdrb29zdUVuVEtLT0djZGF0dFQ4SGh1ZzI3emFkb0Rj?=
 =?utf-8?B?N1RIU0N0cHc2MnhSL0F3ZWNQT2U1ZmN3K01zNkdlZnp5ZkNsSjluMWc5NkIr?=
 =?utf-8?B?UjVGeXg3czRRallKazFFUFJrelpKYWdwNmthbGdVVFV6TVJlVE9vTnJTVHZj?=
 =?utf-8?B?SlkxdnB2c0NOUHRVRmxXKzhMb1BSV1JxNEtCM3BteTJMVDRDOXVCMHVYREdE?=
 =?utf-8?B?dTM5cmtkbUdTMWJGUkFZZmhtcU41UHRzVitmdTVHaUNCN1BWYmdPY1M0bTdO?=
 =?utf-8?B?NGlFZk5VRzNKMm1yR1hqMU1BbWkwL2pCaGw3VDFxOFpPNVM1UVhUa3NMWU5Z?=
 =?utf-8?B?eFZXTHJ4NEoyUjg2QUlrMFJPZE93RHIrMlFQd3BLa0d3SmtsbTFRakNpWGRR?=
 =?utf-8?B?ZlVHOTdoWlRjV2F1SXptUTFYZ2lkS1JCRW15ZEFEUC8rUFFQc1AyRUprOGtn?=
 =?utf-8?B?Smw5YUhkY29pOHBMMXlyaFNNSFFmWjRiOGNHRjlDWjJ1emo1NmFOMWo4VzZT?=
 =?utf-8?B?ajFJMVhRdDNhUlp5SzdTQTBIYmQ5eWVtVU5kdDBTOEMzWWY3ZmJKV0RiOW9F?=
 =?utf-8?B?M2dNdEVUSTdMazR1Z0NvdmdScGpTNStET2dSNHh6TDVEdmlza0g2SW5iWTNn?=
 =?utf-8?B?S3J5bFRPOVplSUtkYVlPUXBRRVEyZGxwZldvK3hpNnZCYVczalg5Q1N5ZGMy?=
 =?utf-8?Q?kkC9TTwWdz7sreAmKx?=
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: b2a491d9-0161-4d7f-aa50-08de5ddc26f4
X-MS-Exchange-CrossTenant-AuthSource: BY3PR06MB8195.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jan 2026 19:42:06.2275
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YBWuQJkqx6Omj/2I5oCMhYwlgmKb/Yx8KxseoH210mn89zE9MBHJvQ4Cw0yAYpdS
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR06MB7236
X-Proofpoint-ORIG-GUID: DmXx3oKixmCwSGMMN9g9Bub7HiSEU6QX
X-Proofpoint-GUID: DmXx3oKixmCwSGMMN9g9Bub7HiSEU6QX
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI3MDE2MCBTYWx0ZWRfXyg4TvAI18QRF
 gy4mQZFrxTivy5n7LMncTKCbLqID3IgvPapIgGeT5rfIQI17AyKTfaU+KnmzpcGNU8xKKNswH6W
 3FnqTlXMPEXKMYYYonkR1smsW3EDXXbpYfefBWJ5BVai3XzkQX3Zl8qqKxDBw5Td+QhevY88p0M
 eApp3nvQ9Oh/nX2r0zo9a+6ZrU9zGRi4rXrGZm+ww+LSFrlvZAFxvs+rZM+Z7VIc2u3xz5sMaxD
 8zwnLuuLLTBhnmlSFZ+k/2u2+Vup5IIrCAWMU8pmkhQJchzN13IAYNR+j0wv0l/TY1s7TNwwO+F
 Y+KjFweY24AaAnjMep8KOCJUAgjtwDgSvHxhegWHkyrPis9s0UzecCfdIvxTlMM+gQatU/t+xXv
 0D0B8Tg3lLUCrJ6JfhhClGo3cmAHajEI5KOaKqqlLjGUjyMm+fEBK/rvJQqJ87rJ1RiuZ/M7ELX
 WaXbuNTPjXm7+C8BbCw==
X-Authority-Analysis: v=2.4 cv=c9OmgB9l c=1 sm=1 tr=0 ts=69791512 cx=c_pps
 a=iBoLJ+TzW6OYwHE2Vh/RVw==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=lre9DRYkaIEA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=qRjNCaSxfSjcrFB7ZUkA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10
X-Wisc_ValidFrom: true
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-27_04,2026-01-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 spamscore=0 phishscore=0 malwarescore=0
 impostorscore=0 lowpriorityscore=0 priorityscore=1501 bulkscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601270160
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
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_ONE(0.00)[1];
	TAGGED_RCPT(0.00)[speakup];
	ASN(0.00)[asn:5645, ipnet:206.248.128.0/18, country:CA];
	NEURAL_HAM(-0.00)[-1.000];
	R_SPF_NA(0.00)[no SPF record];
	TO_DN_ALL(0.00)[];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jheim@math.wisc.edu,speakup@linux-speakup.org];
	TAGGED_FROM(0.00)[bounces-1525-lists,speakup=lfdr.de];
	DKIM_TRACE(0.00)[math.wisc.edu:+];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 614DE9A15A
X-Rspamd-Action: no action

I have made a  lot of progress on my project to build a hardware synth 
out of a Raspberry Pi. But I have been working on a single issue for 
weeks and have made no progress. Speakup  takes a 40 second break 
between sending chunks of text.  I can shorten the delay by changing the 
value in /sys/accessibility/speakup/ltlk/full_time. The file usually 
contains the number 40000. I can change it to 200 and my fake LiteTalk 
emulator works really well.

But I don't want any delays at all. And I don't want the user to have to 
do anything on the host that he wouldn't have to do for a real LiteTalk.

Something about my fake LiteTalk is making Speakup behave this way. And 
I'll be darned if I can figure out what it is.

The first thing I get from Speakup is an interrogation command. I send a 
response that Speakup seems to be happy with. But then it starts 
delaying the chunks of text it sends by the number of msecs in the file 
/sys/accessibility/speakup/ltlk/full_time. And it never sends indexing 
comands.

I think that thing about it never sending indexing commands is key. I 
think  it thinks  it is talking to a synth that does not do indexing and 
therefore has to do a full_time delay between each chunk of text. But i 
cannot figure out how it decides whether the synth it is talking to  
supports indexing. The code looks as if it simply assumes indexing is 
enabled. Yet I never get an indexing command and speech has those long 
delays.

Any help  please?!



