Return-Path: <speakup+bounces-1541-lists+speakup=lfdr.de@linux-speakup.org>
Delivered-To: lists+speakup@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WNveKYvve2keJgIAu9opvQ
	(envelope-from <speakup+bounces-1541-lists+speakup=lfdr.de@linux-speakup.org>)
	for <lists+speakup@lfdr.de>; Fri, 30 Jan 2026 00:38:51 +0100
X-Original-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 3037EB5BBA
	for <lists+speakup@lfdr.de>; Fri, 30 Jan 2026 00:38:50 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=math.wisc.edu header.i=@math.wisc.edu header.a=rsa-sha256 header.s=selector2 header.b=AwWzeMxu;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 5EBE638218F; Thu, 29 Jan 2026 18:38:48 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 3ADAE38184A
	for <lists+speakup@lfdr.de>; Thu, 29 Jan 2026 18:38:48 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 1678D3818BE; Thu, 29 Jan 2026 18:38:42 -0500 (EST)
Received: from mx0a-007b0c01.pphosted.com (mx0a-007b0c01.pphosted.com [205.220.165.71])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 76BBC38158A
	for <speakup@linux-speakup.org>; Thu, 29 Jan 2026 18:38:41 -0500 (EST)
Received: from pps.filterd (m0316040.ppops.net [127.0.0.1])
	by mx0a-007b0c01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60THVjZC3941313;
	Thu, 29 Jan 2026 17:38:30 -0600
Received: from cy7pr03cu001.outbound.protection.outlook.com (mail-westcentralusazon11010025.outbound.protection.outlook.com [40.93.198.25])
	by mx0a-007b0c01.pphosted.com (PPS) with ESMTPS id 4c0c1etr1h-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Thu, 29 Jan 2026 17:38:30 -0600 (CST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BVSwpxg2xjgYexT1AYrIvOytBlzSedMoxWMttsXks+XenRtB9tiq5gkB7RiagwU39S99C7M09Si4ouuaeMJH3CdT0IC3Oa8DZ4geH4/aaK3O0A/RQDOw/2AaDh7SPThH6t3U2ALQ0LuLUFIEg5YoOKZrIM4lcyTUwqcD5DlBwhojFprUj9lI2Fk7I8xlDokxVrgdX4n5kRa688F3v8W49hqv+80zFhfug+qIuYoh916f3OmU8sVxRn8H9Bco0K/C0EB1tzqc7M8DxXcZVjlGJhwRQLkRAJBb64lTX89TJy1jXpdX+07dVXOoWPPKjF6f7FZXiKL6YzfhIQF+QKTNLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1OHJMPQOV+nG/OhElOi/RmPzslrdOO+PDjbdkbkuILk=;
 b=a1Hd+/1qxJyottP6e9oM5zDIwlR9wWTVrxxU68qK2E0AOToo+bUvvfuPcz+YzZkTSXMoMo2yEtfzfAcr7jRBA18pdN2wpV8QpZiDnLmDzCHBCZuAN3UXQ0FDhxQ/i06TMGa/f2/uY+5HiXZfEYrszUCDGVfkAHpCDTJ7by2dq13a1qjPAnljqfoInLSb+r7ds42LmSmz4DEKKkqzJ2GONIuAPVWDr5H6KiNVwuY2Kgpv59I2y5+n2ypiiSuArwCF1XgiRjx6UdNS8H70ISa628a50v1JMgdHjcKgx0YuWAvYDCzCDg7pLPdiIzPR4P3GdKKvorgj0qsowrK4TlUcyg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none
 header.from=math.wisc.edu; dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=math.wisc.edu;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1OHJMPQOV+nG/OhElOi/RmPzslrdOO+PDjbdkbkuILk=;
 b=AwWzeMxul2Q5QT3VDt+4WhDezAHEdLrhneQBT6ISYBaTgt3jKUjNGHU3YeZxN5Z0TsTOb5NG4dqwhl/jdHYcjzB9JETH2vtjFUpKl+pyoYw/QLOySGENviglSv68hkD52jTsNro4dsegC07uWHLn6IW/dOGLHcu1GI4dBl55XnAgbxzIrVoLYZZcH/xdtf8VfwJFmoUsrxMiVOEW4A5khiA201BKEsoTh7PvGgDglXKK6/6p+gbwgqXwsWl4RnJdovNaiKLmlIE+k4WMnSjkhheREPqS9acbT7lWt5h8xMKN16BHWqpXtCSVI1WnLK3tv/R2xs13qGCVntjDDir52A==
Received: from BY3PR06MB8195.namprd06.prod.outlook.com (2603:10b6:a03:3ce::19)
 by IA3PR06MB11215.namprd06.prod.outlook.com (2603:10b6:208:545::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.10; Thu, 29 Jan
 2026 23:38:29 +0000
Received: from BY3PR06MB8195.namprd06.prod.outlook.com
 ([fe80::a7ad:fb62:4389:fd8b]) by BY3PR06MB8195.namprd06.prod.outlook.com
 ([fe80::a7ad:fb62:4389:fd8b%5]) with mapi id 15.20.9542.015; Thu, 29 Jan 2026
 23:38:29 +0000
Message-ID: <0ee5be54-4308-4b1a-8680-05d9add0493d@math.wisc.edu>
Date: Thu, 29 Jan 2026 17:38:25 -0600
User-Agent: Mozilla Thunderbird
Subject: Re: TripleTalk USB via USB?
To: K0LNY ?? <glenn@ervin.email>, Gregory Nowak <greg@gregn.net>
Cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <6c2e05b6-6cc6-434a-96a4-3a7476b18110@math.wisc.edu>
 <aXlLExoJ1i_VdnbF@gregn.net>
 <7a5a7250-a603-49ef-b3e7-2f96451bbb3b@math.wisc.edu>
 <017e01dc9156$b9f2e2f0$01ffa8c0@nucwin10>
Content-Language: en-US
From: "John G. Heim" <jheim@math.wisc.edu>
In-Reply-To: <017e01dc9156$b9f2e2f0$01ffa8c0@nucwin10>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: CH0PR07CA0018.namprd07.prod.outlook.com
 (2603:10b6:610:32::23) To BY3PR06MB8195.namprd06.prod.outlook.com
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
X-MS-TrafficTypeDiagnostic: BY3PR06MB8195:EE_|IA3PR06MB11215:EE_
X-MS-Office365-Filtering-Correlation-Id: 5fc13085-f87e-4b2b-4b6c-08de5f8f8165
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|366016|41320700013|1800799024|376014|786006;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?Tm5nUS8rQVJQdkkvRTdDa3FudVBlTTdWa2VsU3Q4V3NpNGJQNWlWcHpoclJy?=
 =?utf-8?B?MldHczNEMjlzSWJVRFliemFDZFQ3ZStyUGZtMldEUzZXbTFoY1dUTkJRMjFL?=
 =?utf-8?B?Y1Vod1dQeTZ0UGZOMXM0M2VmS1gwMExRRGx0aUxPU2RVU05JU25wbGR6eW5s?=
 =?utf-8?B?QTRPd3BQRVE4ZlpyR3FJQ0JzL01qSUFTa0JMRFFzV2ZLU0F0ajB2dXhYNVRu?=
 =?utf-8?B?anJUUVlmb3BkQWpWQWRqVnNCUXI4eDBMelNqbitMQVllVnMwODQ0SlRMRzc1?=
 =?utf-8?B?eWJjSURzbjg0QVcwRGZiejZHbFN4WUtFaVlJdlZuNHJ2QVFtSXVWK0FRMm1j?=
 =?utf-8?B?YU5MUG1pOG1yUGpQZlhyT1kzbFFWZ1FNdE4ydDAxVXViZVlldEVvRno0ZGJw?=
 =?utf-8?B?NGU0dzIrN2FoazhkMUJDeTB1c1NzYUpDTGVrSXlxVmtJM0VZQjV0N1ZIRXV2?=
 =?utf-8?B?SGc3ZUVlNnpIWjEzWVFKY0RxeEhJMTlPVXhONWRNVm5tMFUvSnZZS3JEcDIz?=
 =?utf-8?B?Z2ZQZmYyMk5hUGxBNWdMVkxKdGcwTUlWdnFtK25pcWt0QXZEQmFldFZ2ZVhC?=
 =?utf-8?B?VisrU0F5dDMxbUlSaVFOQi84UU9ndlNRN1RCQytTR0x0L21mbGRuR285WEcz?=
 =?utf-8?B?ZkJUYTB4ZXBxY1VqdUc0VUNGc2NwOW9LcmtRNURqUTVUTzFXUTFrcGc0MzdQ?=
 =?utf-8?B?WnN2REQ0dFNTbVU2YmM0cklCNEVsZ0IrS0d3K3h3TVlLSDd4VTdIY0w2eUNu?=
 =?utf-8?B?RUR0UmRiYXlqenQwUjdldE9OZmFVc2xneFE0OFdjZ2djN1l5ZEExSmZsVUNX?=
 =?utf-8?B?SWV4TkNyWGp6TFF2N2hTNUZNTW5WR1BzT0xZV2FOMVRDQk9qMklUVnlKSE51?=
 =?utf-8?B?RUZNdFQ0MWE0Y3l3RjJ2aklyaUxLWS9mcWtmVE8rNXUxWGV4MW5jZ0pDWjdu?=
 =?utf-8?B?a1NHdHFjbXJrYi9iMW1KSDI1UlNnUnVlbVJvUlNqNmZxeExkSjMyb1B1WEl3?=
 =?utf-8?B?aXZ0bHNFNTMzS3o0QVVhM1pMSkNUM2hCWjRJTGh5Z1dieXlrRlRGK1B6SXlt?=
 =?utf-8?B?QjB1VVBDcktJTkI5anpxKzBsTUFiZkNOT3FTc055Ylk5d3BhaHBUaUk5Snlv?=
 =?utf-8?B?RFNBVURpMGxwMmFONXdza0FNU2h6dnZ6b01YM0Z2b0VpeTRaUCtpZkxmZCtq?=
 =?utf-8?B?SUs1THJJMlkyM3dJeEx4OElOc3JUY0Q5d1lDK01LRC9JaUpMdjduL3o1eXla?=
 =?utf-8?B?R0hteFNzZ1M3QmFqaHlTSVNYNTg3ZXZIUVdDWm45WTByczF3UWwzOEZ2V01O?=
 =?utf-8?B?clE5OU8wZTJQUGZnTC8vKysyQi9zVy9qWWtQVGpGMkpDK3BSRUFUb3ZyVEs3?=
 =?utf-8?B?c3gyc2J1dlM1NFdoMkV2Y2Z4TURleE1YeUJ1UTVLTXNUZ2FqMDBMZmlIZU9I?=
 =?utf-8?B?UkFJaGdiZnVmdzRSalB4alJWUWlDa3Y1YjRhWFpXbklsL0FUMExMald5OTht?=
 =?utf-8?B?MFJYL2VXck9xNnJYcUJ4VzR6SnUyUHJoS3BHMVcyRi9hQVhWZzZJUzViZHZZ?=
 =?utf-8?B?NUhkeE52dFlLVlMxODl4Wkk5TXlSUlhCZWpGVTJZRWsyS0lEK2o0T3MzS0Vn?=
 =?utf-8?B?VGptOTBhM0NyNWNjRFZ4SU42L0cxSDJSd29VNzYyVDVnYWhic1ZHdi9BZWo0?=
 =?utf-8?B?Y2pkV3QxM0drcnRycDh2clBHS0QyWDFYcytPNXJCajl5emp5VlY1ZHpQNHpS?=
 =?utf-8?B?TTZmS0tBNlBvaFVYVmVUb0lGWEcrR2Rrc2JTR1I0Z1J1aC9WTVl2VFRkM1du?=
 =?utf-8?B?dzY5bGh6ejBZeEpJdnNCSEo0Z2Y5a0t5VnhEU0NmTFZVNEI5RGJRWWI1Qlpi?=
 =?utf-8?B?akNsb1ZjUk9wSzBkeERZeHNqRXBQOStlMndGVlNTYXE5U2l1anViVkZBYWNV?=
 =?utf-8?B?elc2Q2dLV1lBWGdFUUVHYzUzM3hHWmlsbW1WNERrd2ozWHBQTHhZR0lnQm1i?=
 =?utf-8?B?V1ZsN3Z3Z0wzVi9OSXJhSE5sTXluVmpLdGdCZkU4QnFKQlhEWjR5d0VRd1pO?=
 =?utf-8?B?ZlVvOGg2SXZ0OU1CVWFvSW9XRnhCTU4wdlZVb2x5MVJPajlVQ2crTTVUUDhY?=
 =?utf-8?Q?QtAY=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY3PR06MB8195.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(41320700013)(1800799024)(376014)(786006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?ajlCczlPVFJsREt5WmRvdGUwTjVsUnNmYStYVVF0UkdMVW1EWjBFTk9SR3RK?=
 =?utf-8?B?c3dJQVJsR3cxek01VXpHejA1N240OUpKRUsyM2RXbDB6ZGdpVlNpemRzZUxn?=
 =?utf-8?B?T1FIMkVYUjRYMm5hcmQzOXZodWpCTFl4QzE1QUN6UUdjbEdhZHp2T1E4ZndM?=
 =?utf-8?B?QVRCd1pFOUx4Nk1GZjN5SFNocVRtRndFZXJteWRHVEY3Y0FvbnRxczZxc1Qv?=
 =?utf-8?B?dkNKZndFeHE1TGVmYnZLSTZvWVd3bkx5cUNoeTNHR0U0R1FHS09BN1BxcGZS?=
 =?utf-8?B?aHp1by9EV2prU3Jnang1WmE3enBUdWZnZVl4YVRYWnFWUy9lZk5wUWY3ME0v?=
 =?utf-8?B?b21HQWtscURSS3Rhbk9LZDl2aXNTblArVEFVWDI3dE9RZGE5bGpHSURjaDBP?=
 =?utf-8?B?U3lBNHNheC9CZEVGaW5ocmFpQWxEckFxVG1zcGVIY1R1NFJjRWFFOGJmNzV1?=
 =?utf-8?B?SU9yeU5CUVY0L2QwU3JSc05HUmM2VVNidVhZN3NFeWFEdy8xMmhaMzlDcXFR?=
 =?utf-8?B?TUxpTWRPbmYyQW5Ma0c5WXVicGlwZUQzLzJ1UUs0cEhOTFhIOE5sYVRWd3pR?=
 =?utf-8?B?MGdrdEd2SmgrYnRDKzg5NUJOV21CVFZ2TTQ0cVdqK291MjZoUkU5MlJYUVd6?=
 =?utf-8?B?dmVCaVl2b2F5NnhndlBFL1BSYm9pNVdBc3ltZHdZRjdseWpnV1lGZUZiQ0tG?=
 =?utf-8?B?d3I2WnpkRWtnWnNTZ2dmMHo5UVZhQXJYYy8rVUkrYk5YbHF3bjU1MER5Z2pR?=
 =?utf-8?B?c3orL24vYUxyOThWN3phZTZCYnJxVC9FRzYrbDkyQVU4ZzFrb0xSdy9nLzVu?=
 =?utf-8?B?Nmk1elhCQ3ZGMG9jTVRPakpoV3pldjN0ek03T0JSQ0xRZVVtbWZCMWRHTDMw?=
 =?utf-8?B?UHNRUmVXYW1zUkxWN1gzdHRMdDVxMUY3QXJLaVBYWDM4UTFWWWVrNGJUVkhZ?=
 =?utf-8?B?WGJGWmpCVnRZUEpkRnphaUNoQXM3bmdySkFjazlIZjVrVW45SFRuMUZWNmdY?=
 =?utf-8?B?K2gvK3R6SjBKRHplYXJiaVNkRUEwRnNqZFNBNEtjVU9hbXdzSkUyYytGNVd1?=
 =?utf-8?B?SkxyWWdHb3F2MExNbUhveWNraEJqUjRnSHJQQS9WN1dwL1F1c0FzdXd5VDFT?=
 =?utf-8?B?ejVZbW5ndUR0QXFwMEJrbWh1TUZ5V2U0L2Nzay9uL1hHaWtpdVp0d0hOTXRs?=
 =?utf-8?B?MmRjVG5FMjQ2c2RBV3ZXWHY4VUFwMk9KbUk3bWNCL215RFJ3WFM3NGRiQTJK?=
 =?utf-8?B?S3BnVi9VRWUyMUUxNWVPbTR1T2d3MVBkUEtZZk13dDdiekVJVDdFV2Vib1Za?=
 =?utf-8?B?UGhwd0NnMi9oaHN1czNNSW15elkwNW1aeUkxQWZ3K25jVGpKRENKTXZtaDBZ?=
 =?utf-8?B?VnlzTWRsSW8wTi9uWStwTS9vY0Noamk4RHV4SzViU0MwNWZZUHhEZlhidSt5?=
 =?utf-8?B?a3RQc240YllxY0I2aU1rTHFsMnFlZHRITDZOdVUzZ3BaMEFQWXBQVDY0eUZI?=
 =?utf-8?B?WHJFSEgxb2k3TGk2dk9VU0Y4UU0vOXhDNWx5MnFGSlVZS002ZnB6QStCQU5B?=
 =?utf-8?B?Uk5TTzl2NXNldkdTTXZpUmdnQWZ0N0ovaGJZeC9oVnpSRXJoQkx3bDVlcGVJ?=
 =?utf-8?B?WFNNalJTWjFMRzdJMFU0Sk81bC9TcXNtSG1oQ2ZxRlhGQitpbGh0d0JYd2xv?=
 =?utf-8?B?T20xMG14V3l2dHpkMXREQ2NTZ0tmVXdJMUI1UTJTWVcxZHFZWG5NOUZ3MHZG?=
 =?utf-8?B?bFNOa3Y0MERBa1diVmdjT09FZk1xWmhOOFVoMVJuM0djMFIvZHF6SUc5MWtt?=
 =?utf-8?B?L2pNN2YrK293YVp1dUsrWlMvN2pyaGh6ZW5HN3dUTmpXd3F4TXlWTHZNMTRI?=
 =?utf-8?B?Vks3UE1qQi9zTGFra05Ockh6bmowMkluYlorcU9mMUtMbUdFM0czMGJ1V2g5?=
 =?utf-8?B?RDU4MHU4aTFBak03TXpkN1lXbEtGU2kxSHRuVW83bXdLR0dWck8xMnU1Mmd4?=
 =?utf-8?B?UXJWTTlEMVdwMlVzNE5tV0tVSUYyYTB6V1ZIRy9YSkFoR25FS3d6YXUrcDBt?=
 =?utf-8?B?ZUxlNGZtdWxvcFJYdEwxRWN1M0hGSmljTmg5TUlpem5rLzErZDBPZG5IUE0r?=
 =?utf-8?B?R0FURmxMaDdKNG1LSVgzMm5Mc2FPWFpObml3SDJQbjI1OHFMZ09VVDdvN0g2?=
 =?utf-8?B?cWhjZnpTMlFMSTJhY2c3TS9LWXVremduNXJHVGZ1S3FxTTFCQXJ1MXdZcGNB?=
 =?utf-8?B?ZjBEWTRJa0U0UEVteTNaV0pUREtMS053STlackV0RGF0WkVjdllGRTBwaDhY?=
 =?utf-8?Q?CnW/5LvpJXJD4gijho?=
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: 5fc13085-f87e-4b2b-4b6c-08de5f8f8165
X-MS-Exchange-CrossTenant-AuthSource: BY3PR06MB8195.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jan 2026 23:38:29.0286
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: He8/KhA+cL8nshi9vtqK9o//c1FH3Y0/JrDz8RdTgK0e3YgaySZPPzRgk0ZEWej7
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR06MB11215
X-Proofpoint-ORIG-GUID: f25EZ9cV-Amaim6BdFMe-zJ0q7Mdsrwo
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI5MDE3NCBTYWx0ZWRfX/UpneJKtAmwR
 ZNSFg702B55LGK/oWBs0OboaiKM6AYZIuQFju9E/GJCoeDg8fcVj2djwBQEgxNCbA5qX38CaUZe
 22Iwx+QkW7mV/C/i7EK/NA1E68vws5jtPIzCDpAF2Zdb7ZYXMLyZw/dQH5m3BKaF8hwqUmby+ev
 r2BBPwW77IPiNP/hMkiXLVyY2A+xzK0aRxyf2wzmQK1Y4+3LwIaSOafrOoDv60jIeHNgqh00Jbu
 nS1v38HUBfbjQ8w3JDteqQCkQDbTK78tnzEZmRGA1DCDy5ynIemNDKb8n961wKN8LfsO2dfv2bu
 3aoPLvrhXHOZUV1G25OQfS8LDisc86glaJn8WCssQLt2/9VEylrAFBSzU+MDbTt3Jz3crlb4f+0
 MTsRJpJEjKVx2YrODlx4ZnxweTCbsxIwQKzFEdIx0M2S/Q94VAW9jHa5yajjirPHztOmaNAuAuF
 zi2Re+XjqhjLkA5udzA==
X-Authority-Analysis: v=2.4 cv=asm/yCZV c=1 sm=1 tr=0 ts=697bef76 cx=c_pps
 a=Eox/QAxx2gIfswQ7UCXYtg==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=lre9DRYkaIEA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=hEK2XftRAAAA:8 a=qPKtzgQbAAAA:8
 a=8f_iqh_bNNkgkq5msTAA:9 a=QEXdDO2ut3YA:10 a=pvvZm7_9ER1OwvpV3Ftp:22
 a=OTAqJWGB1laLS8RTg9aS:22
X-Proofpoint-GUID: f25EZ9cV-Amaim6BdFMe-zJ0q7Mdsrwo
X-Wisc_ValidFrom: true
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-29_03,2026-01-29_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 bulkscore=0 clxscore=1015 lowpriorityscore=0 phishscore=0
 priorityscore=1501 impostorscore=0 suspectscore=0 adultscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601290174
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.89 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	SUBJECT_ENDS_QUESTION(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[math.wisc.edu,quarantine];
	R_DKIM_ALLOW(-0.20)[math.wisc.edu:s=selector2];
	MAILLIST(-0.18)[generic];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_NO_TLS_LAST(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-1541-lists,speakup=lfdr.de];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[math.wisc.edu:+];
	TO_DN_ALL(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[jheim@math.wisc.edu,speakup@linux-speakup.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:5645, ipnet:206.248.128.0/18, country:CA];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux-speakup.org:email,wisc.edu:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[speakup];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 3037EB5BBA
X-Rspamd-Action: no action

You don't have to make any modifications on the Speakup host end if you 
make the connection via a USB cable. That's why I'm taking the approach 
I did.

To work with my Raspberry Pi DECtalk emulator, you type "modprobe 
speakup_dectlk dev=ttyACM0" -- which should work on any Linux machine 
running a modern kernel.


On 1/29/26 1:37 PM, K0LNY ?? wrote:
> There is an SSH app for the iPhone, perhaps you can make the connection that
> way.
> Glenn
> ----- Original Message -----
> From: "John G. Heim" <jheim@math.wisc.edu>
> To: "Gregory Nowak" <greg@gregn.net>
> Cc: "Speakup is a screen review system for Linux."
> <speakup@linux-speakup.org>
> Sent: Thursday, January 29, 2026 1:35 PM
> Subject: Re: TripleTalk USB via USB?
>
>
> Well, I got my synth project working as a DECtalk so this question is
> kind of moot. I have half a mind to set up a Windows machine with Jaws
> and reverse-engineer that protocol. But I have lots of other things to
> do that are more important. Even after I get my Raspberry Pi emulating a
> DECtalk, the next project I'd like to do is port it to iPhone. You plug
> your iPhone into a Linux server, open an app on the phone, and it acts
> like a DECtalk hardware speech synth. I'm assuming you can write an
> app that reads/writes to the USB-C port on an iPhone.
>
> I have a friend who writes apps for iPhone. I could probably get him to
> help me get started.
>
>
> On 1/27/26 5:32 PM, Gregory Nowak wrote:
>> The short answer is no. The ttyUSB/ttyACM interface is for usb to
>> serial converters only. As far as I know, no one has managed to
>> reverse engineer the protocol the trippletalk uses, and windows users
>> don't have problems using one, because the screen reader developers
>> signed a NDA to get the required information they needed.
>>
>> Greg
>>
>>
>> On Tue, Jan 27, 2026 at 01:54:39PM -0600, John G. Heim wrote:
>>> Can Speakup talk to a TripleTalk USB via the USB cable? I have always
>>> used
>>> my TripleTalk USB via the DB-9 RS-232 serial cable for data and the USB
>>> cable for power only.
>>>
>>> You can use the LiteTalk kernel module for a Triple talk. By default it
>>> is
>>> going to talk via ttyS0. To get it to talk via the USB cable, you need to
>>> specifiy the device, like "modprobe speakup_ltlk dev=/dev/ttyUSB0"/
>>> Problem
>>> is, when I plug my TripleTalk into my desktop, it does not create a USB
>>> device. No /dev/ttyUSB0 or /dev/ttyACM0 is created. I dug down into lsusb
>>> output until I saw it says no device is created.
>>>
>>> Is there some way to get it to create the device? How can anyone use the
>>> TripleTalk USB via the USB calbe if it doesn't create a device? Wouldn't
>>> Windows users have the same problem?
>>>
>>>
>>>
>>>

