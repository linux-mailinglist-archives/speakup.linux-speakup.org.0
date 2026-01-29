Return-Path: <speakup+bounces-1539-lists+speakup=lfdr.de@linux-speakup.org>
Delivered-To: lists+speakup@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sJWkJIS2e2neHwIAu9opvQ
	(envelope-from <speakup+bounces-1539-lists+speakup=lfdr.de@linux-speakup.org>)
	for <lists+speakup@lfdr.de>; Thu, 29 Jan 2026 20:35:32 +0100
X-Original-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 25E78B407F
	for <lists+speakup@lfdr.de>; Thu, 29 Jan 2026 20:35:30 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=math.wisc.edu header.i=@math.wisc.edu header.a=rsa-sha256 header.s=selector2 header.b=bgUjK1+U;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 46A4E38191A; Thu, 29 Jan 2026 14:35:27 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 227E63818BE
	for <lists+speakup@lfdr.de>; Thu, 29 Jan 2026 14:35:27 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 02A5F3818BE; Thu, 29 Jan 2026 14:35:21 -0500 (EST)
Received: from mx0b-007b0c01.pphosted.com (mx0b-007b0c01.pphosted.com [205.220.177.71])
	by befuddled.reisers.ca (Postfix) with ESMTPS id AB4EE38158A
	for <speakup@linux-speakup.org>; Thu, 29 Jan 2026 14:35:20 -0500 (EST)
Received: from pps.filterd (m0316046.ppops.net [127.0.0.1])
	by mx0b-007b0c01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60THVGK51096997;
	Thu, 29 Jan 2026 13:35:17 -0600
Received: from ph8pr06cu001.outbound.protection.outlook.com (mail-westus3azon11012042.outbound.protection.outlook.com [40.107.209.42])
	by mx0b-007b0c01.pphosted.com (PPS) with ESMTPS id 4c0c1815st-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Thu, 29 Jan 2026 13:35:17 -0600 (CST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KXMOG7OQzwxGkXr/T88BM63r5AuRiBlXalxmgxetf0fLmTWCQFVHBi/EKxDKxizr77ulSptfec21dOlEqXXbfNVwRcTuEWgM2UujupDG89JxBGrsH+UUn2lwIIL8wn2UipAcKiC6ecm8nzUbXp9WdCFwBwmZgVi4puncnEX3U10TTQI8+eLqYYpsMn1cTxg1JPX7PvuN3SERO1pFv5Y/G84Mq/nMWLzG6g2xiHn16zaRJtfQ9/9cQBXVZM0p467VxvAdXUrbGdc4XdY5rBdK2XXnd1umozB7+ztaC9NPGJpUEu8Hm9ZcqEB3nuNODwjs6TuucVljDNKDPBTsihKK4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZoD85xzAW1pKyRZWfQv/+pQr0tKJS6qRCDgycs87hac=;
 b=JmIQTibR/SpBE+se4VI2Ljhs3ktHTGpXuUGFbE4jRwFOlkeD9Fuh9O3AlUor0lAdut4wfnlOBqa7plreHzdkLVeCuQWKejYrTzdeAI0bvTePOmTD+RzonvwNmqa92mibhEHJuW3Zb0sk3HZC7VamQ+StS7dNbA3jiZU2CMXmSYG8KpZguN4sEib+Cp4cZZBOSqeORTXuexsdS+CQyTykTr+7znxYS7tBZhS+ZaSd6aJnb5QGWAVIjx5eWMOZE6Nb6iFnGLFDL8HKu+zfQh2bWrPWfa8C9r7GVQ5N+lzY6Kp4XLfv3z9CrpTsOuNAkLbUeKu0jb6+nhY/6bCYUrT65w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none
 header.from=math.wisc.edu; dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=math.wisc.edu;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZoD85xzAW1pKyRZWfQv/+pQr0tKJS6qRCDgycs87hac=;
 b=bgUjK1+UbwoMbECKUKlOBZObV24yt6Sfy82USyk5+IDQIj3PBFtM5ajLlzaa9mkN/IO4ufLYPT9P+StWFBkJU3NnKOO5glGDUMibjrC3wKQtZyfjvgZ/G8QICj0qcw8GcUC+URl58QQHyvormKD+hnfWDWXUbGVjI/mOTW5WU1L53OKbm6ljDfMoHBLwbSm9prfbUUuzvemwJyhwgUnTsqbpo0HYY+w8yT1BqWtJQ1cX9lqDZAB40EAx3TcSDb2y7kamK1fClk6/sbA+dBuRDAwjEWp5ZK3voCeAew2OubyBxh1gSegPi3uZ0GLayDbAnAimmCqX/MnXrPlchIf74Q==
Received: from BY3PR06MB8195.namprd06.prod.outlook.com (2603:10b6:a03:3ce::19)
 by SA2PR06MB7385.namprd06.prod.outlook.com (2603:10b6:806:14a::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.15; Thu, 29 Jan
 2026 19:35:15 +0000
Received: from BY3PR06MB8195.namprd06.prod.outlook.com
 ([fe80::a7ad:fb62:4389:fd8b]) by BY3PR06MB8195.namprd06.prod.outlook.com
 ([fe80::a7ad:fb62:4389:fd8b%5]) with mapi id 15.20.9542.015; Thu, 29 Jan 2026
 19:35:15 +0000
Message-ID: <7a5a7250-a603-49ef-b3e7-2f96451bbb3b@math.wisc.edu>
Date: Thu, 29 Jan 2026 13:35:14 -0600
User-Agent: Mozilla Thunderbird
Subject: Re: TripleTalk USB via USB?
To: Gregory Nowak <greg@gregn.net>
Cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <6c2e05b6-6cc6-434a-96a4-3a7476b18110@math.wisc.edu>
 <aXlLExoJ1i_VdnbF@gregn.net>
Content-Language: en-US
From: "John G. Heim" <jheim@math.wisc.edu>
In-Reply-To: <aXlLExoJ1i_VdnbF@gregn.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: CH5P223CA0005.NAMP223.PROD.OUTLOOK.COM
 (2603:10b6:610:1f3::17) To BY3PR06MB8195.namprd06.prod.outlook.com
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
X-MS-TrafficTypeDiagnostic: BY3PR06MB8195:EE_|SA2PR06MB7385:EE_
X-MS-Office365-Filtering-Correlation-Id: a202674c-64b3-4bc9-e8b0-08de5f6d86e6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|41320700013|366016|1800799024|786006|376014;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?T1FncVJwd0lSMjBENjZaYWF2NVlqajVFK0dEVDVzUWpKbm5USXNYN0tzU1Qy?=
 =?utf-8?B?ZGMyNjhtWDVPZzJEVFZFRXFNVzYyRGFKVmZtRnJIYStKc3o5WngxSHlGRm91?=
 =?utf-8?B?Z3dvcFFaMytpallaajhYVGdBRGpIWVlCRHBBc0pidW9VdVJkRjJ0dTFFUGhI?=
 =?utf-8?B?bU1sT3drUDJFVDlWTURSZTBHekM1aXBsaVJnOHVTc3ZxdkhYWkpNa0RWNGx2?=
 =?utf-8?B?RHNEaGF1MEhucVE4L3JGRWcrcUNZSUdjNG1oZVVyd2R3SGt2ZDROWnJTUlY5?=
 =?utf-8?B?NUxONzhZWlltL05UY0pOb0lsdWZUeWFaVlg0a2FYQjJ4RnU5SjEzZ2VLY2lC?=
 =?utf-8?B?ZExXS01UZ2JFa09qTnNLeVdielkzVHlDUHczclZSeGJjOXBESm9NaElzdG1k?=
 =?utf-8?B?dVN1K3VsNENkS1E0QmRwUkdqbzZIOGhPcjd5WnpuRDhxVDliMlV6TnMrc3Uw?=
 =?utf-8?B?aW1iSldYRmVIRzlmZzBZb0ZtRkVldjhoZy9PTmFBdEFmUnVJWm1GZ2tLNjh5?=
 =?utf-8?B?WmtlTnlDUldaUlhtV08waElhck1ac2psakJabDl5bXNEVHhqeGtFY1kyNSs4?=
 =?utf-8?B?bVdxSmovOTdYOGVHRXJQYlZuSjFVdUxrWGc0a1BNOHdkSExNSEJoWkx0ckhT?=
 =?utf-8?B?aUZHZCsrazgxTTN3enpDczBFR25aaGFIQXdKZlFLYThyWlFFclZKOGJhYXdl?=
 =?utf-8?B?ZG05QStxanVHKzhhR0ZoMnNrcU5sQUExSlBnamdtcWlwWTFHT0dFdlFEanM2?=
 =?utf-8?B?czBuMWRZWXFGandxeWUrWW5MQXYvVHJBWG9zaEdmZ1FtK05JS0dERlNSZVRw?=
 =?utf-8?B?WFZ2L054NTJUZUszTXJOQ3FSRys5cDNUYmcxY0xjMFFOblZnUTl0OEduT0RK?=
 =?utf-8?B?VjZaUmFBaGo3a2lGRW45Q3hwNHU1anNlY1dETkRrOEhMZ2xoQm5sSlNWOFI1?=
 =?utf-8?B?K0ZIU0Y5QWNNSXppU3ZNMTJTbHZ2SDhnUXdOeDZsTVpwczdFQnlCVUkxRlRM?=
 =?utf-8?B?YU02Y2hGclJZU2VNOWplajM1S1F1K2JFSWhjUlZ0UGFTVDFkYnJJdWdNclZY?=
 =?utf-8?B?RGRaTWY2cDhiRnRGT2ExWS9MYjQxUDdvWHNhMExQUExPMEFpYWlIM2luenhs?=
 =?utf-8?B?WUNER2lGRnpCWmg5bXN5MnR0RDRJcXFwTmxZeS9LZjl6U3hZanZlRzFudU1a?=
 =?utf-8?B?SWhiRWk3WDhuSE9vRUZzSzRlVUppYU1keHM4a3gxYlAvNSsvRVZwYiszYlVP?=
 =?utf-8?B?Ym1VbTM4aytyOVJ0Z0FzaDg3OEVhM01SNW5OS1ZSMVh0OGltZjBhanpCeEs4?=
 =?utf-8?B?dVpDREcxVkNSUjloZlQxaXhkV2tobVE2aks2bFFUaDIrc2twWGplQTg0ZTBY?=
 =?utf-8?B?bXFKZVltZklNbDd3UnQwSjlKTStsRHE3c0IvVXZySGR0WUNZdFpPa2NrbFBD?=
 =?utf-8?B?M3F6RnV2dzk1Ymt6QVdpd1g0bTFQTzF2ZEs1OEJNTDlXQUtGMHFHWkpXUWxm?=
 =?utf-8?B?MmY5K0tUVGJic3NsZklPWG40d1lWNGk1WkFETjdEZGtmcXFQeW04VXVIVC80?=
 =?utf-8?B?R1h4a1kvR2NibXJqU1BwMHNUNGZ5Q2ltSFlud0M5NHZFdCtEQmp4b2NDNnNR?=
 =?utf-8?B?cXV1TDhjNVhkUXVXVHZrNGNoNjRaYTNaZ0lHYTdNQWZZTm5sa2lycjNNWTVP?=
 =?utf-8?B?WGdCcTM5U0Z3cUdkcktXQVUrQnp2VTJNTWR4bUd0eS9ZNmNUWjR0WEpVN1RQ?=
 =?utf-8?B?UXpTbytBb21LMTIvU1Bwc0Z0ejFZcFlsRmhqMGdYWFBFZmc2RkVWUW9Nb29X?=
 =?utf-8?B?ajdwVUVQN1VNL1RxWjVwZ25OZGdvV0c2OU5ZbWRtRmZleEdxdU8wc0thQUlt?=
 =?utf-8?B?T0tCNUs2ZXV1K0RNbUZKelYvQmtWdTRTT1p5dHV0MEo0WCt3SFFPdFZQcGlq?=
 =?utf-8?B?emdNWVRndDI1RDZKUlRHQ0Mxc2l1OTBYY0YyQUJKbUgyRXhwTVJxeUR0V2pU?=
 =?utf-8?B?ejQ5WGs3bVU3NkkrM1RGNUVlU2JSdzRKU1VrK1YwT1dXSTJRVkpFSkVLOVdy?=
 =?utf-8?B?dk9JdXF3dGp0Y1ZDbm1TRmR4MVpUVWZvUE9PSWt1bDNoVkhVdldORU11QjNX?=
 =?utf-8?Q?V1/U=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY3PR06MB8195.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(41320700013)(366016)(1800799024)(786006)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?VUhUbVEzaE0zVHlzWkRuVlFWUzkvdUhkQS9SdFR3VE56TUVLOFJjL0hnUWVK?=
 =?utf-8?B?Yy9nUzlYYlB6YTQ1OXo0TlM2M05CdHNoMFJXaDhlT20xaVJMS2VvVzRmTEZx?=
 =?utf-8?B?Z1VIQktuWXVPcExIeUpmL1NDTVpJdlU5aWxaYWFKTmVoOWVqNGYzdDdrUUc4?=
 =?utf-8?B?SGovajVHRHVPQkY1SnV0Rjk3SksxK0U5NzJtZ2hmTUlIQ3h6QU1YdDhuRHNQ?=
 =?utf-8?B?ZkZvdzFrM2dJZGpYVFNZdWZGdkUvWnZNSVBLeDhXRDFYWXNCQTZ3S1VLTFdI?=
 =?utf-8?B?Z3RJZVBOVUNENmh5RWNMTUdHdGZRZ3Nlem1ER0REYy9CcHp1Zis4WmFWbXBI?=
 =?utf-8?B?NGE5RnpNeFVxRFVLNk11Sk03bDIzNFhDam5peWZ2WGVMUGowWjh0NSt2UlRq?=
 =?utf-8?B?NXQ2MUtleDdwRTd0aHN0aXl4dUE2NVJaK3RwSktvWll6aTd1ZVRabnVNTFZi?=
 =?utf-8?B?V3F4UEZ2UzF2ekk0TkY1WmJjU1JQSnlZSDhabUt5dHFxWnY5bFpPai9MSktK?=
 =?utf-8?B?VWNyK0NGZjVRUmE3L1ROUWM1VmtvSjZIcm9lQVg2eHlSbVJ1SWpTdXZCcVYz?=
 =?utf-8?B?OVBLQkpZU1FEeWJJMmc1cUpyb3lHYlg5cEZKYkFDQTY2QXZBK2R0Qk03SFFh?=
 =?utf-8?B?NWJVTHIzU2ZCL1FRS2Y3VnkxTEpxRmtpcm1TcVpsd1MyQ1cwOUs2MkwwaGZI?=
 =?utf-8?B?Q3N5MDUyazQvMTVSMVk4ejR6RXc2SVZhOXBabDhOSTRHamo3aVVFSUNyZjA1?=
 =?utf-8?B?UXZiWEtxQXF1MTdESHZxelZRYVdhZzlDYi83MDJGNW9mdTVBNzBEZzdTUUJ4?=
 =?utf-8?B?ME1leU9rb2M0SkRIWktnRWlLVjc3TE1tTzNzUm5GU21KN2lndlpFYTg2dXpM?=
 =?utf-8?B?V1IrM054clZKSThEVll4eC94NkZXVUpKclR3WnR2VXlkbnNDaklYVlJ1TzQy?=
 =?utf-8?B?TDV3eEZmUUZFWjgrRXBlcEN5ZWZHMVlFMVlGR2F0YlBwTXVVVnBPV2E2TDUv?=
 =?utf-8?B?aklmWVN4Qlh0Y251U2kxU2ZHenk2L1UvWWNNdHV5VUtoU0ZmNXQwZmc4dmlX?=
 =?utf-8?B?TERqQnpKOHd6RzcyMlBDbE95SHNtZFVIZ3dBdnd0dEZXQi9GOStpT0szeFpE?=
 =?utf-8?B?eG0yWG9CUnNnd05sbXJmT1ZMbUdGMXhkM2NYMzJTeXhDbEhENFY4THBxZVhx?=
 =?utf-8?B?L291YytkTGlRM1hDR2UrZlplVkFLdUtxSUU2a0pGU1BVK2JIZGRPL0VvczMv?=
 =?utf-8?B?Ly9HY3VHdjJyTkt4WHhzaEhmelM3NDBoUlkzNnJDYndJQzRuVTdLNGRxYm54?=
 =?utf-8?B?WTZHVXJhdUQ1VEZadm5Ra2ZLSEJ0Q2hUelZkUEZSZFRTVzh6SFYvNWQvQ2VS?=
 =?utf-8?B?Q3NUWjRaaTBVR1FNemlpamNSS0szWVFLNkVyczliSFdDblpnWVZrcGVFV2F2?=
 =?utf-8?B?bklhSGU1SnFLaVZKUWYxY1ppaEZSWDRZek5JTDJFL29KTWRLWU1RUHBnYkha?=
 =?utf-8?B?bFRrSWM2TEVSRnlheVNnMGdPZEY5QmJXdGF5aTQ2WHROcjBtUE8yWUhWUGZI?=
 =?utf-8?B?N3BQcHBmWWYrRmQwYlNrSGx4bkdsczZsamxrU25KNFVhZ0xuamZGR3dNY1FC?=
 =?utf-8?B?OGdIclgzR2k4LzlFcUs2dGE3TnBnbjJLZVVydzlJdUlpSGZnSGxjNWw3VzBT?=
 =?utf-8?B?RXpuT3E2SmRHQzBpS0phZE1XeXRQck5nNWJEQm9lYUJ6ZldTTWRNcGFSd29i?=
 =?utf-8?B?T1JGaXZJNDlQbGlVQ0hyWUVMZi8xYVZ1RDNDV0ZhOU9vSjNkVDk3anM2SXA3?=
 =?utf-8?B?RWhsTStnTFk5eGFwNXdVV0pYRjBkVEpTa1d5Qk81OVJQTC9WSzRYYm9JL2Jo?=
 =?utf-8?B?clBCOEdOTzRJNlg1VG00SDJMWWIwazgrakJmMzVOOU1IR25LckRpenFhcTI2?=
 =?utf-8?B?Wm1hVGwweVl5SGtWSlNYbHRqalVVdEd3WXRySk1FVUJTN0ZFaE5hMTFlVUdw?=
 =?utf-8?B?Q25OWElzMWpFem1obmRaZHBFQkRLdDJZZ3B4U040RUFTeUYvNE9GVUNDay9U?=
 =?utf-8?B?a1VmTG1TdnJhdGR5S2lrZVFNZ2V0SEtVbXNiZmlPejlFcU45U3diR3VJZGNE?=
 =?utf-8?B?ZlFHeVNOaHJTelBRSU5OWmR3NzZ1dWtVblNCaTJZbVpnQ3c0aUM5UXp3UkR0?=
 =?utf-8?B?L2VPakYzL202MzA0VjJwV3EvN3lCZzRqN0tRT3ZFMWtYQm4vZUZmMXFJYmZR?=
 =?utf-8?B?RHN3YTc1a0dHWVg3Y1lJWDZ5bzVFTVBoRDB4Z0JITHFPSHppanp4U2dwcVlB?=
 =?utf-8?Q?SFmbAtTL4SO2SGL28p?=
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: a202674c-64b3-4bc9-e8b0-08de5f6d86e6
X-MS-Exchange-CrossTenant-AuthSource: BY3PR06MB8195.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jan 2026 19:35:15.4162
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CyNB6QjE3Br82+o8uA6HCrMhUZlUSKne4gjYnU7g7yx74auekLjxSudRpwHozYkt
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR06MB7385
X-Proofpoint-GUID: GvWMhz_MC3xZuh45Q6-VwRmeq1MrgARI
X-Authority-Analysis: v=2.4 cv=av+/yCZV c=1 sm=1 tr=0 ts=697bb675 cx=c_pps
 a=+JqGDqswvm8kVNJxtWojiw==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=lre9DRYkaIEA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=mnyAu2X3iddftoNGxAYA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI5MDE0MCBTYWx0ZWRfX4Iui8xsXGDgw
 doLKOq1ceQGlFEuIelzF2mR74BeD97vRDfwwZ4QwJ9efhiRICYefK/bp6DAWWZ5pfdNDnNVWOy/
 vTebmxzhFd6zbHOw3Mh873evAM1D5B7wF15nH5Zq4gRtm1evyY/cdmjftBF+6uMMdrwUJRgrcon
 seaVxrEAAANDdeJ5hhdTDvAN8IGxhjRiwrEq/LtRRQepYUj8rI6VFSzwovg4WYGhsMFTwcDrZPD
 1pkvTymeYdocsQYhU4DIafoyhovesv0NMR2hAbjzqTDxGgNuKG6jS3HO41F9+9y3HFFOVHpHsiX
 h8okBwF7Aq44dpxgaNHdB++gg5xo6FM9AVvqcMQdxwpbo+iEpwQi62zN4HaLPsniUTbtKbVRhIb
 3dnqiuiIyvToDUx3Equb9GNd2lOhafm5hOA8jwTipT6q08JvIFzBz5md83bHN/O7GEgJdIAGYp7
 y8kamUkU5PPdbtX9XDQ==
X-Proofpoint-ORIG-GUID: GvWMhz_MC3xZuh45Q6-VwRmeq1MrgARI
X-Wisc_ValidFrom: true
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-29_03,2026-01-29_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 bulkscore=0 suspectscore=0 phishscore=0
 adultscore=0 priorityscore=1501 spamscore=0 clxscore=1015 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601290140
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
	TO_DN_ALL(0.00)[];
	DKIM_TRACE(0.00)[math.wisc.edu:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-1539-lists,speakup=lfdr.de];
	RCPT_COUNT_TWO(0.00)[2];
	R_SPF_NA(0.00)[no SPF record];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[jheim@math.wisc.edu,speakup@linux-speakup.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:5645, ipnet:206.248.128.0/18, country:CA];
	DBL_BLOCKED_OPENRESOLVER(0.00)[math.wisc.edu:mid,math.wisc.edu:dkim,befuddled.reisers.ca:helo,befuddled.reisers.ca:rdns];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[speakup];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 25E78B407F
X-Rspamd-Action: no action

Well, I got my synth project working as a DECtalk so this question is 
kind of moot. I have half a mind to set up a Windows machine with Jaws 
and reverse-engineer that protocol. But I have lots of other things to 
do that are more important. Even after I get my Raspberry Pi emulating a 
DECtalk, the next project I'd like to do is port it to iPhone. You plug 
your iPhone into a Linux server, open an app on the phone, and it acts 
like a DECtalk hardware  speech synth. I'm  assuming you can write an 
app that reads/writes to the  USB-C port on an iPhone.

I have a friend  who writes apps for iPhone. I could probably get him to 
help me get started.


On 1/27/26 5:32 PM, Gregory Nowak wrote:
> The short answer is no. The ttyUSB/ttyACM interface is for usb to
> serial converters only. As far as I know, no one has managed to
> reverse engineer the protocol the trippletalk uses, and windows users
> don't have problems using one, because the screen reader developers
> signed a NDA to get the required information they needed.
>
> Greg
>
>
> On Tue, Jan 27, 2026 at 01:54:39PM -0600, John G. Heim wrote:
>> Can  Speakup  talk to a TripleTalk USB via the USB cable? I have always used
>> my TripleTalk USB via the DB-9 RS-232 serial cable for data and the USB
>> cable for power only.
>>
>> You can use the LiteTalk kernel module for a Triple talk. By default it is
>> going to talk via ttyS0. To get it to talk via the USB cable,  you need to
>> specifiy the device, like "modprobe speakup_ltlk dev=/dev/ttyUSB0"/ Problem
>> is, when I plug my TripleTalk into my desktop, it does not create a USB
>> device. No /dev/ttyUSB0 or /dev/ttyACM0 is created. I dug down into lsusb
>> output until I saw it says no device is created.
>>
>> Is there some way to get it to create the device? How can anyone use the
>> TripleTalk USB via the USB calbe  if it doesn't create a device? Wouldn't
>> Windows users have the same problem?
>>
>>
>>
>>

