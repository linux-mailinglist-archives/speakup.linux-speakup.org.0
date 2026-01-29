Return-Path: <speakup+bounces-1538-lists+speakup=lfdr.de@linux-speakup.org>
Delivered-To: lists+speakup@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iOrSGUq1e2neHwIAu9opvQ
	(envelope-from <speakup+bounces-1538-lists+speakup=lfdr.de@linux-speakup.org>)
	for <lists+speakup@lfdr.de>; Thu, 29 Jan 2026 20:30:18 +0100
X-Original-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 4A93EB3FB2
	for <lists+speakup@lfdr.de>; Thu, 29 Jan 2026 20:30:17 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=math.wisc.edu header.i=@math.wisc.edu header.a=rsa-sha256 header.s=selector2 header.b=WaQxr7q8;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 8009838193D; Thu, 29 Jan 2026 14:23:32 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 5E1683818BE
	for <lists+speakup@lfdr.de>; Thu, 29 Jan 2026 14:23:32 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 514823818BE; Thu, 29 Jan 2026 14:23:26 -0500 (EST)
Received: from mx0a-007b0c01.pphosted.com (mx0a-007b0c01.pphosted.com [205.220.165.71])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 8946E38158A
	for <speakup@linux-speakup.org>; Thu, 29 Jan 2026 14:23:23 -0500 (EST)
Received: from pps.filterd (m0316039.ppops.net [127.0.0.1])
	by mx0a-007b0c01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60THV2ie3834607;
	Thu, 29 Jan 2026 13:23:13 -0600
Received: from ph7pr06cu001.outbound.protection.outlook.com (mail-westus3azon11010022.outbound.protection.outlook.com [52.101.201.22])
	by mx0a-007b0c01.pphosted.com (PPS) with ESMTPS id 4c0c1510ka-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Thu, 29 Jan 2026 13:23:13 -0600 (CST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SohI32wu2pJGFO6HaVzVplG55GtLork2vrDtZU7EEBGEN2E7jjbJX2Hg/TBglNxOAyjsARcQW0s6CBEwWWdGHUoWu68VcXcbCUbCp/ECWneLfvYG9GGkoooMl4FGUhuhmofWkvzYT1mmJg+VYgV9ucO2+f5iH6ImLcSo6WBaiqIlCNo3QXs39T/zq1FFmJZDsOKab0UPKVfu2NcMubu7Oye3mLkGqccLpbjJghXRXALpNsVBtcj+ql67i0+UwGKsXSzVxMadmm33KRaVFX5s4+6c7jfilOzgizs+S2r4FhkfAzhQ8+1szZ1jbM9gfatMBoxb2i0JZJrSysV1V70tCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3MxYyZwpnk+Z5wEs2f4nlkrUO/detlQupQFuimuGg+w=;
 b=dyCiQgW1K+5KZ/EroLBaErAMn5jR9MDLd5An7IQ516EFw223Y0XIa3jge0KTX70IpzeF3jd7NVZyZLrBnaKuPLTqY6S++JejMMsuYp6JqvGSH/WG5O4tzqXlV0HTTN5WvbRoZfOaK1OsfaR/YSiPn2gxmIdMWX36zRuPxSaC2xHu1eO1T5NVNHfk5UcROtyOMYtKjr64qgtjH/9RL+71vv5xLVdPrFdyiYLLgo1Z7q0F8z5/Og5kurM3kRMWDOFX/CVQp1ecfDbtgvkwjcT6rqPVkZGgfHK+R4yX3sR5u6Y4HXWXvYJao54uiuydd17oYQpHkXt4reZMP0AsJvDCUg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none
 header.from=math.wisc.edu; dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=math.wisc.edu;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3MxYyZwpnk+Z5wEs2f4nlkrUO/detlQupQFuimuGg+w=;
 b=WaQxr7q8rTnY1d7VLLNpqZe3N0He1ugwagrjO0ZBqz5MCLqCisc5+6ddrrB6Sqk6KFckGV75+NsXwXzuutu0JMWDgDmVYV6/JvXz+PnOLjeGpWkkOpLe/X06/PfufCoYXtIApdCSi2CSYz99JXOklsO6g81lPyu6OSO3KpQstc+z00UA4CYiqX9IO9CebBVCubIDOlosRmLDncn7vgiFTwSprAqIDCnBvztnH+373RO6+OGOsVhA14fyqJNu6LR+iiHzjQ9Z9TiJ1VPAyILOYGJBDTQE2lnuYf4HHff2uFqNMZCWPD9hvUtqryNi4hX0676mJ/feOTngUR6HhRM3TQ==
Received: from BY3PR06MB8195.namprd06.prod.outlook.com (2603:10b6:a03:3ce::19)
 by CH2PPF68FD57311.namprd06.prod.outlook.com (2603:10b6:61f:fc00::472) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.7; Thu, 29 Jan
 2026 19:23:11 +0000
Received: from BY3PR06MB8195.namprd06.prod.outlook.com
 ([fe80::a7ad:fb62:4389:fd8b]) by BY3PR06MB8195.namprd06.prod.outlook.com
 ([fe80::a7ad:fb62:4389:fd8b%5]) with mapi id 15.20.9542.015; Thu, 29 Jan 2026
 19:23:11 +0000
Message-ID: <e2333330-e735-43bb-8425-fbfe58a2a8ec@math.wisc.edu>
Date: Thu, 29 Jan 2026 13:23:09 -0600
User-Agent: Mozilla Thunderbird
Subject: Re: Cannot get indexing to work on my RPI hardware speech emulator
To: Samuel Thibault <samuel.thibault@aquilenet.fr>
Cc: Brian Buhrow <buhrow@nfbcal.org>,
        "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <202601272220.60RMKBLE022931@nfbcal.org>
 <873ea9d1-ba70-48e7-9556-704f32a35dac@math.wisc.edu> <aXnSOrz7hn5Xi50S@end>
Content-Language: en-US
From: "John G. Heim" <jheim@math.wisc.edu>
In-Reply-To: <aXnSOrz7hn5Xi50S@end>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: CH2PR04CA0015.namprd04.prod.outlook.com
 (2603:10b6:610:52::25) To BY3PR06MB8195.namprd06.prod.outlook.com
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
X-MS-TrafficTypeDiagnostic: BY3PR06MB8195:EE_|CH2PPF68FD57311:EE_
X-MS-Office365-Filtering-Correlation-Id: f96bcab2-4388-4a87-0024-08de5f6bd74a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|41320700013|366016|376014|1800799024|786006;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?UEh4ajZUc2V3QmpmNkd2VzUyZ0x6K1YzZlFsNUQ2OURzMS9oZTdPQ2hWRVlt?=
 =?utf-8?B?cFdYOWhlVzZINEE3MWN4Wm5XSjJZY2k1cmNyUTYxWGJGOGhoLzdFSFEwZjhV?=
 =?utf-8?B?U2FuTHdQUTM1RXg4RmJaVlozRkZMWVJ0T1ZWYTdvL2c2Wm5jMGM0UElHN1Bk?=
 =?utf-8?B?T1NVbXJEZTBJQjhzOXl4R25yUXRQYUh6ZUlqdiszK3BEaEM3YWY1V2dYZFZt?=
 =?utf-8?B?VFkzWUNmVzlWbEJzalNVdWVWVzRKL3EzcytnQmFkNUVQbU9JMGI0Z2lhZFlW?=
 =?utf-8?B?RG5rSmdRSzRKUUdUa2xET3F6R1RKeWpsUUFMVGhoSGtSNGgzZHF5Wm1Nc1Ey?=
 =?utf-8?B?ZFVTWTJJOUhiNU1IZHlwK2J5ZVZOMmIxaEQ0ejhPSDExQTNTejl6azFXczc1?=
 =?utf-8?B?eXZydUJzVFJBbGdZejdubUhpbFpDS2E0ZEVWZUxvckpnMW9Ic002UFMxTmkz?=
 =?utf-8?B?dDBIREFDblpWYkVDdFVacDZNS2UvL0VLNUlNZk9xWnZaeWZUeGZKbjAxczBl?=
 =?utf-8?B?WXpOS0NQVTRsN0Nhc3I4NkszNWR5aW1ScVlpdldIeUExRmNHQmVtYWprQ1pL?=
 =?utf-8?B?K0RGblpVOWhUc0lEbm5JWEdjL3lFTkRnais2SjBvSGc5Tm02S0wxQjFSL3M2?=
 =?utf-8?B?L1dwbHlWYWlaL0xPc25PUXJWU0dGM0E1Sm1CTkJtL2ZKU2FpTnFzOHBRUVNL?=
 =?utf-8?B?eXR5REp5aGdVb1ZHUWZPdHU4OUVEQkVIenhqSHJyd0lYOFNKUzFRZWJsSGRY?=
 =?utf-8?B?R2N6amtRRThtSTM1aEtrb09OVEg3MEc0c01qMHJseDhLT0ttUlB5ZlRXOEt6?=
 =?utf-8?B?RllHRzVsbEFkdFkyQXdWZGtXVERhR1hUSldGV2VlR0JQY0ZOdXVBV2tqblBC?=
 =?utf-8?B?R1Rmb3RDU05oQWs2dGVSZTNHaHpHMFo0YlJQTjVZR2J0d2V6NjJpUEdNTHFC?=
 =?utf-8?B?dkhIc044OC9naEp0YXh6ZVZtSGpUY0UvV1h3Y2taK2psM3hsWlhiMlNEcDYx?=
 =?utf-8?B?OUlzb1N0eGpqSmluU2hGSUllVWFKY0J1ekNDTjh0OHhmcmVUZ1ZLMEp5T2Jt?=
 =?utf-8?B?OWR6bU9qd3FtcEhvZkNZWUxHUWhLUlR5bnN6MVpxZS9aNWZuRU1oV0pJZFRY?=
 =?utf-8?B?cVVzYXFzVzFqOWt5MUJBZ3d4MlpldEJZbTNKSEdjY1VPTENtTENlejVIZDlY?=
 =?utf-8?B?d3NwTTJ3MXpockloRXh1YmpGemxuc29LVVlUNldadWNBRmlzTnFQcVA5b04x?=
 =?utf-8?B?TVNSU0RFNk04cU1yeTJya0F0VlBNSzJ4ZmJ4d0pieW9jMUxqOWU5MDZPdVQ4?=
 =?utf-8?B?NmJrWnE0dStMdXdrMFlnN3NDWVhvSW5Td0hFc1Y1bFg3ZUtZdy9XaGJadXFa?=
 =?utf-8?B?eG9MdDNtby9IQjVLVVkzcERzM1lQSjlrcG5nc0p0R0dmUFRnMDVTbFVRUTZy?=
 =?utf-8?B?ODdZWWtqbXc2NStHcE1hYTRyZDA5cDBjdHJhclNBUEdoUFhmNVc0QmJNdmcz?=
 =?utf-8?B?T2dCR2QxSGhNUk50R3lhOHJwcXpocEF3UUo2MXh0aFd4Nkt6aEVYNDVTZE5p?=
 =?utf-8?B?c1IyWGd2S1JsUFJFb2l3MHV5d0U1YlphU1hhVWg3a3pRVUxIQ3B1ZEFKMkFU?=
 =?utf-8?B?cThkOUVIUVNDNEowT1VPS3RxZEhqS296Mk45djJWaDVSb1E0MUp6QWp3K0hl?=
 =?utf-8?B?TTYwZVQwa2xmR0NidnI2aE9wL1pySjJUbzZFcjZ1aW4rT0YzNkpGNVhnbWpo?=
 =?utf-8?B?YW9jai9MTFdOSUZvOUhuQ2g1VnpmRis0d01iNytFWmNHVjMxbmlwNldWZjR0?=
 =?utf-8?B?TVN3K2NLR1FLQmtBM21PalZOWHdvbUQ0a0ZyUW00eTM3RXFNdVBMTkZkaVFp?=
 =?utf-8?B?TDNIajYyWGI2cFF1K3Fibk83Qmt2bGZhS0VCekRzcDg3TDZXbHlFTXc5UXdF?=
 =?utf-8?B?MHlwcWdQdFNwV0JwT3NUYVdXVGtBWVgvWTU1M3dnM3g2K1ppQkcweDhMRDRE?=
 =?utf-8?B?dXNCN2h3V0Nyc0dUeHJwVVk4V0ppbnY0b2g0U3U4Mkx0NzY5bGZGWFZoWUdQ?=
 =?utf-8?B?a2lSeEF3dnVZbXZDL3MzeVE3RHpJanM5QWVVZFo2MHd0azFWcHdVTktWcTF1?=
 =?utf-8?Q?y/mg=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY3PR06MB8195.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(41320700013)(366016)(376014)(1800799024)(786006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?YTh2YzJzMHpNUk9DcHVEMk90cXk4SGV2RWNoYnFENDVzZUZKQisrdWVQTysz?=
 =?utf-8?B?N1VnVWN0NWI4ZnFPdzBFeEFPbks1WjVCZ24rWUdnV0dkZWtaSGNpNU12N04r?=
 =?utf-8?B?WDIxYmJqZk56UElhY2NUQ2paaTNiZlNnWDE0UDB6azJNdnJieENCNkxwVTll?=
 =?utf-8?B?SGlXM1IwcEZDU3RueFFSb3BjNndveG9yM3ViNDBaTW00bTdoek1FVGNPUXNR?=
 =?utf-8?B?cld4TG5LVDB3UWRPK3FIbUFTVWxIakVydU50aDZEeDlId1hzVWVWMDlobzBu?=
 =?utf-8?B?cnFPVVZGOUxnbkl6cFZESVJpc0JodE1sUWlIQ2pyV2cwM1NiVlZ1NHVwTWZI?=
 =?utf-8?B?cXVBSXNhYXFKQVc2ZGJoWmhQV1YwMUs1NW5HQjc1aHhiSFZWS2xMYTdSS2hK?=
 =?utf-8?B?VVpXNlZjeVlZallrZWRHa1NZbE1OeDQ2VkIwOGhxSTdJNTdrdzRLNzd3UDIr?=
 =?utf-8?B?N0kvVHVEemZ3ZFB4TDFjN1QySlNmS3VoeDduSTdxUWlyVkhzTUpmY0ZSeGhC?=
 =?utf-8?B?ZWphVTJ3R0p2TFBZRnN6ZHhDNjc5WnFLMnpsUkZCcGhZMC9nYlhWbTQvZEQ5?=
 =?utf-8?B?TzVPT2dWUCtjK1Jrb0dVdGRHMmVGU05hMWJjRUx2R3lUVjBsRmRpUnNpQWE2?=
 =?utf-8?B?eEdZNkRyQnoxeXc0SkNkVlpJemp3SHlWc0hzd01EVUY4elV1UjJPOXdxL0xK?=
 =?utf-8?B?ZStiWnVnNE1YYXlZRTZLK0tBMzVXRXJhbkRVdHFDNFlPMWY2OUp6cTF3ZmxO?=
 =?utf-8?B?VHA4TzU3dzhWcCt2RkVvZ2htaW9yRzJ6akVVbWNQT2s3ZHMwN2NCYVdxTDEw?=
 =?utf-8?B?eis5ZnFNbTBvRFpNa1BZNlRXZXFKMUMxWUtyQmlLaXVZUFlJbjdqU2N0OWlv?=
 =?utf-8?B?TWRWdG12MEhackRZTjRhSFpZSk9SOVVpNzRubmFNYWp6VFhvZzBoNkY5K3dK?=
 =?utf-8?B?aDRMa3M1cFVrRmVCNGdOKzdqUitYb1N2a1IxcnB4YjhCbXk4UlM5SzN1cVJm?=
 =?utf-8?B?ZzhpbHYrVHZ6bUsyMjhXSG5SbmI2UGRvdHdDSEtmVDZxekdleWcxUDRtcjZz?=
 =?utf-8?B?UUo0UEZPbktVYmFJZHRtZkRPTUVmWmVDUEVESUo4b3VxYnhHY2JRSGkzNU9V?=
 =?utf-8?B?QU40ZWNvM1VBZWJzNEd1clhDb2UrT1Q4bjJ2eE5UK3NHS1FHSmhNVFBud0VP?=
 =?utf-8?B?N3pMNU1kNzcyYUVmRXJmRk1rMHQyKy96QndRV3V0cGVaa2h5dE1MbDd5SE5i?=
 =?utf-8?B?S3pGS3JEMHhEc2g2NkZNc29NU2FVRUJqVUE4c0xsQkp1bnZPeWFtdnBjVlVV?=
 =?utf-8?B?dXdFSGsyRmhYcW9TbDU0RlFxRkNVSE5OLzZPclhiYWRzZzRtczJycnA1YVFt?=
 =?utf-8?B?T1g5SWxuSkN6SnhXeTB0dlBYRFVpOXpOUmhuSVR4V2o1S0VZSFpqaWpiZldB?=
 =?utf-8?B?UkxuZUc5bGkzRWpwYzI0QUdxaUY5MVBGWkZuSXpEbGRmOVN0TnRUNWpMbkRN?=
 =?utf-8?B?QTNQUmRqR3lBNjBobDQ2QWRybDdNNDNhN0lvTXZmWThwdi9GMXNHT1dWOTBB?=
 =?utf-8?B?TTdBV25lRnFxR2U3dGtRZmR0N2xETkREenNLU0xnWDBwMTRLcUJFQmhWSy9r?=
 =?utf-8?B?TThrQUg3MWRVNEJEWElNelVrUXJQUjJUR05aK3V5L294a0g0MjZMR0ZJWWxj?=
 =?utf-8?B?VkJLTUZQaVM2TGdiQzkyWlpMZE9Db21pcGp1MUxlS3ZmY2taVC9GaDc2SGs5?=
 =?utf-8?B?WTV4d3VvYTRVS3pFNGVoYzhFTlF5ZHR3c29LK1hCT0lNRXpULzVwRTdsOXp5?=
 =?utf-8?B?d3pTY09PUWRzUkUwbVdyTUZlRlM3Uk5QK2p3enJIN2NQdDhaS2lYd0FIOEdH?=
 =?utf-8?B?bkgyYjlRMnYrMnN5OFlHQlltZUtvOGdORDZxYlhiYmduYTlzNGRWK2Vxd2hr?=
 =?utf-8?B?VlhZMVhWL3ZrWGdhLzRMZlV2d2duNUsxNnRBMEhqZm5DbllZbGYzS3VFck00?=
 =?utf-8?B?dDRWTVJxMklOY3ZsZXRXNkllelVOdVNta1YwVGE0UWNTUGlKTURKN3NJRG9m?=
 =?utf-8?B?amozRWNOeTgyelVaS2hJWW02OURhTGNITmlPeFk0SFM5TVBRcEFYQW1zaVZ4?=
 =?utf-8?B?b0VPSHhONVNXMnFYcmUrdUNGelZRSm54WHBXRVJxcWxCNU9aWFA2cHdDSzcv?=
 =?utf-8?B?L0h4Z0pRZkJLYnJsK20vNEphV3d6WUR0SC9Rb0Y4eU1yN2Q3bmVvM3V0c3di?=
 =?utf-8?B?NnB6ckpEYVVnQm01Ni9CejhYeXhNQjhnakdiZG5zUGxVUWg4a0xPMTN0dTNX?=
 =?utf-8?Q?JuHvM7ZHSqSGW+lFEK?=
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: f96bcab2-4388-4a87-0024-08de5f6bd74a
X-MS-Exchange-CrossTenant-AuthSource: BY3PR06MB8195.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jan 2026 19:23:11.2477
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TvCmMBPLbivrTLEOjs85V7NrJ0CDZ/QUBrEZnJnPVEvsdlSG9+TUoFRfyUD2y1Fo
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PPF68FD57311
X-Proofpoint-ORIG-GUID: DiZCBXWS9AWbgVQNQQ2cqVTCOeNxTd8D
X-Authority-Analysis: v=2.4 cv=BoOQAIX5 c=1 sm=1 tr=0 ts=697bb3a1 cx=c_pps
 a=e6472ZuTPXVkOcUbIheXHA==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=lre9DRYkaIEA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=xTsuWFkDPVVI9PQL7IAA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10
X-Proofpoint-GUID: DiZCBXWS9AWbgVQNQQ2cqVTCOeNxTd8D
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI5MDEzOCBTYWx0ZWRfX7vy9z36DRGeM
 GrCt0uAgBDXmcH0TAkD9wcQHeBX/F2W6BQKdmCu0l0SIAwZOssjrb3iWUncsYqiRXmMFYX0yHth
 dFusPpFeBex/p3Hdqw3clU+c7aPz46LTeU5QedHcdVWHYcV7QsbLFHINHXIcmVxEv/SxCwarLHH
 1pypoMO7BqSCyylNeeEu99Ijarrjc6fLPM7P0rrmbdSj1kmRPgpa42OpMvqc1VhoslP8/iUeQcn
 HE8UU0dO3Q0D1bY/3i+aEezhosJxl5M3IPYFFxNu4hyFP/d1kzdTGuzhEz4YoDZpsr1VPgytXMj
 STXmqEiHdpdy/KNFN2zn72Ved0C3092cUQ7Xos2LGMkXbO0r/dugnQKE0NVMiLPoxDxNhi/wU9j
 gKq3F4OJKwyCps7zt6XppdYfP3Yj7xQlkkqtGuLap00mASCWmfSWKncczN/jkLSN3Auwx7blL1D
 ARKZzvu2twaX74B7MSA==
X-Wisc_ValidFrom: true
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-29_03,2026-01-29_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 impostorscore=0 lowpriorityscore=0 priorityscore=1501
 suspectscore=0 phishscore=0 adultscore=0 spamscore=0 bulkscore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601290138
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
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:5645, ipnet:206.248.128.0/18, country:CA];
	TAGGED_RCPT(0.00)[speakup];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[befuddled.reisers.ca:helo,befuddled.reisers.ca:rdns,math.wisc.edu:mid,math.wisc.edu:dkim];
	R_SPF_NA(0.00)[no SPF record];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_NEQ_ENVFROM(0.00)[jheim@math.wisc.edu,speakup@linux-speakup.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-1538-lists,speakup=lfdr.de];
	DKIM_TRACE(0.00)[math.wisc.edu:+];
	TO_DN_ALL(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 4A93EB3FB2
X-Rspamd-Action: no action

Ah!  switching to emulating a DECtalk did the trick.

I found plenty of documentation on-line for the DECtalk  synth. The 
communication protocol and commands aren't as nice as LiteTalk but I can 
work with them.  For example, the DECtalk has several pitch parameters. 
The one I guess I have  to work with is average pitch. But it's a number 
in MHz between 50 and 500. Speech Dispatcher expects numbers between 
-100 and 100. Also, the commands for pitch, rate, volume, etc are easier 
to parse on a LiteTalk  than on a DECtalk. For LiteTalk, a command 
starts with byte 0x01. It's followed by a number which might be null, 
and then the command code which is a single letter. So that's easy to 
parse. DECtalk commands are enclosed in brackets and there's a colon as 
the 2nd character which seems to serve no purpose what so ever.

Well  anyway, I already have it working with the speakup_dectlk module. 
I've still got a million things to  do but now I know this is 100% 
doable. The hardware should cost less than $100.  Software is all 
free/open source.


On 1/28/26 3:09 AM, Samuel Thibault wrote:
> John G. Heim, le mar. 27 janv. 2026 20:30:30 -0600, a ecrit:
>> Very helpful. But  my research seems to indicate that the Raspberry Pi
>> gadget port does not have 5 pins. It has only 3, (TX/RX/GND), no modem
>> control lines.
>> I take it that means my whole project is in trouble.
> No, you can emulate a device that doesn't use hardware flow control but
> software flow control, such as dectlk.
>
> Samuel

