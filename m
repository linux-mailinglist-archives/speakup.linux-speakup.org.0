Return-Path: <speakup+bounces-1308-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id DD909AE6B0E
	for <lists+speakup@lfdr.de>; Tue, 24 Jun 2025 17:31:19 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=math.wisc.edu header.i=@math.wisc.edu header.a=rsa-sha256 header.s=selector1 header.b=RMiOBY1X;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 99FB73824A9; Tue, 24 Jun 2025 11:31:15 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 77E5C38190E
	for <lists+speakup@lfdr.de>; Tue, 24 Jun 2025 11:31:15 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 2F4F138191E; Tue, 24 Jun 2025 11:31:08 -0400 (EDT)
Received: from mx0b-007b0c01.pphosted.com (mx0b-007b0c01.pphosted.com [205.220.177.71])
	by befuddled.reisers.ca (Postfix) with ESMTP id 174BF3818DC
	for <speakup@linux-speakup.org>; Tue, 24 Jun 2025 11:31:07 -0400 (EDT)
Received: from pps.filterd (m0316046.ppops.net [127.0.0.1])
	by mx0b-007b0c01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55O9xWXk024253;
	Tue, 24 Jun 2025 10:31:04 -0500
Received: from nam11-co1-obe.outbound.protection.outlook.com (mail-co1nam11on2063.outbound.protection.outlook.com [40.107.220.63])
	by mx0b-007b0c01.pphosted.com (PPS) with ESMTPS id 47ed774sup-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 24 Jun 2025 10:31:04 -0500 (CDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Fqnr1uxNyb6IUMd5eSlHcmA9asYVZJIXt61ey35cAUy6DWcyf9PJ3qvyp8kVYiFjfjsPVlDnRFPpE25ZE7MdS3Hi5LaAyyYYNM0vgLjbpw4L+NJI35oJDB3tcB7S8aBrgDzYbtIhfEuIoC0zCjcBWndYJX+5R27xWLo8Q8M7v2GKTEt4715xx5gtPLPedkJuLDmdfeyRk0653DmBzMnQvMAQLYFCKvdIKzjU+cbKND88Ysrd428rsT9foFpS+eccQ3Tvq59kW+gekmYZ9OD18QCSHl6W1z7tw6tmGcRpE98gPL+CI9yKBWZGCZSQ39uPTXsKOTBriyb7J1sSIGNC7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zeuuMoAIjH8vtrmexpvUZ7KDRn61S+v7bT3XQuff8Uc=;
 b=yv++6omgH6mtYM3NZmUvB3BL3CoJ9ULpg7J7u8tIP1pGo4pXkYEIpzrMZ7lh+qZViD3O8Ccy2skhxkQ10Zbv+y3hX2UDl0detjZgpZUq0imEGfumAJ94ukcZ9IirL56CMj48XCPj7TzwTU4I5eXkEPSZTJwKaoMRoU/WRyMXsikjFH1m9F+fr8dUx8cK36uwRMVw5/J6JJPnBC+JILIACxg7ZQ8c7qMdEcixXj+s+Ka9+8bcwxuF4iK+Gj87Tb5Mm/GLfrogyHh9TeXPm7NzeYEo+No5ydzvL6hmk+tVA2OLusuNys2oNe99mbjMKGIoLcfNsQv89S8TT1q03fyjpg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none
 header.from=math.wisc.edu; dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=math.wisc.edu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zeuuMoAIjH8vtrmexpvUZ7KDRn61S+v7bT3XQuff8Uc=;
 b=RMiOBY1XYmgK26ucAAd4mCNTLmAHfv0TvfLm0PtAlCIj6RXAFGUTGK7zs/KqnI5Eu17wkHGmZOMlDRVqHS7BWJFqtbG2GkgBabnjfkT5QMiXNeIpgE+SW2LT4LouI9wunSFtcng4oGum7G8mJCFoOEWyg4VyTynllkRMexinZVyFXovcFb2h6ENM55iGrjKz+t+oTyGugTbUk+oh/mw/JWYp7HTqlnZHpi6sZ/l6DMUySljYBD/ykyOMMkchSfBWisvJFeBCt0M+4mgMavVyoR8SFwfE8WMFANjStlVlQxpV2/h16sZaBRjernVjs67/HW6DCqeoxXfByu4EFYyz4Q==
Received: from DS0PR06MB9877.namprd06.prod.outlook.com (2603:10b6:8:1d5::14)
 by PH7PR06MB8996.namprd06.prod.outlook.com (2603:10b6:510:12f::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8857.29; Tue, 24 Jun
 2025 15:31:02 +0000
Received: from DS0PR06MB9877.namprd06.prod.outlook.com
 ([fe80::a347:6162:9bfd:9b91]) by DS0PR06MB9877.namprd06.prod.outlook.com
 ([fe80::a347:6162:9bfd:9b91%6]) with mapi id 15.20.8880.015; Tue, 24 Jun 2025
 15:31:01 +0000
Content-Type: multipart/alternative;
 boundary="------------0GI0eFRQgfRtdqsDMRSdSzXc"
Message-ID: <874ed182-9d75-4834-b630-a281f3ceb0f1@math.wisc.edu>
Date: Tue, 24 Jun 2025 10:31:00 -0500
User-Agent: Mozilla Thunderbird
Subject: Re: GRML for Speakup
To: covici@ccs.covici.com
Cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <29a0419a-e54f-457d-9e8f-68a0c98d2dae@math.wisc.edu>
 <m3o6udb785.wl-covici@ccs.covici.com>
Content-Language: en-US
From: "John G. Heim" <jheim@math.wisc.edu>
In-Reply-To: <m3o6udb785.wl-covici@ccs.covici.com>
X-ClientProxiedBy: CH0PR04CA0115.namprd04.prod.outlook.com
 (2603:10b6:610:75::30) To DS0PR06MB9877.namprd06.prod.outlook.com
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
X-MS-TrafficTypeDiagnostic: DS0PR06MB9877:EE_|PH7PR06MB8996:EE_
X-MS-Office365-Filtering-Correlation-Id: 6983ddcb-a656-495c-26aa-08ddb3341fdb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|41320700013|366016|1800799024|13003099007|8096899003;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?eHRHWncyN0JYK1pWdDhEMS9nU1NEcnl0RmQ1dkZYN3laVHZTRWdaZXhSS0Ez?=
 =?utf-8?B?ak5ZbVJOVlRmOExqWDl2OC9Hd1kzUlJISnN0VS9XWVBLTkNmcEdodHJCTDJr?=
 =?utf-8?B?RGRkKzdWYmJ4cE8vRERPSkx6TVlNamRkY1NySk1GSHpCN0JtS3FZRk5JSXE3?=
 =?utf-8?B?b3RzS1J3RFNPSDdjM1RvbkFxSE5yR2M5MjhFazYzSnZSTk9oa2VaUERibEtE?=
 =?utf-8?B?Ujd2ZWgrNFQwd0VocmxSdi9sQkxoeFRuWm5OQnZaOXNRL2pMZkJKSzIzR1Z5?=
 =?utf-8?B?bHY5VnF4eGVhcWNXVm5IVGZISU92OHp4VjBVWmR6UmNRSGZJMG40TUxmNEg0?=
 =?utf-8?B?dlBPMFhzeC9FZktkcituRzFiQUtHN3dvUlZwUThETEtFVnpnNlNlNTVwRHI5?=
 =?utf-8?B?MVJPOUNrYVRhczhkV0t0cUtYaXQ0VDhxSERrZlhNakNrVkNCN2owYndFbGNp?=
 =?utf-8?B?QWowZGUzRG5Ea20yZ0VOQm5jTFlsYUNkd2k1aHo5anNDeVNtdGJUejNRVGF6?=
 =?utf-8?B?dlJKSzFFdWRDWUUwSlNLdjJndHVobU9KTVJ2bnVqU2xpWlFsS0tDTzdMUUFr?=
 =?utf-8?B?WjlUUkd6MnpkZTFrNGpGUnh1d2p4dEV2V3BpYnN3Wlo4ZzB1anBqS0o0Mkk1?=
 =?utf-8?B?a2FrTGIvbnZXRmFMK29PdE1wTG9jS3VuZEowZ2Y2b2xmMnJmZjNOOW1kVHJy?=
 =?utf-8?B?cFBBZlQ2Lzh0MTROTDhOWDBaUGdsaGtsRWI5c3Fqc2p4YjJlaDBteTlZMGxa?=
 =?utf-8?B?ME0zckdUSjkrRzNmanE4SFhPQUcyUGJteHhNUGlYZElMWTNQMWlnTXBuS1dj?=
 =?utf-8?B?aWxSM3BiWC9OdVg4U3JwYWVhdmtOK1cvRTliZE9rLzZacnhtdVVMTEo3RHNz?=
 =?utf-8?B?V2VKcEh4TEhXSmU1d1pERXk2aU1mVE4xVWc2R2JWN0xzWTZFWTBJSndRZmdB?=
 =?utf-8?B?TWplVGpGUDJYQTg5MldlbkFWeWRNN0lUSXZlMnpoT3FrM01OYVJjWW5HMjVT?=
 =?utf-8?B?SUZ3YkZRNHlPeUhuRzJGUHB5QzdaWnZhNkdvcDFuQ2diSFZEQnhqVlNYVDls?=
 =?utf-8?B?Uk5rSy9FL3JTSmk1eWJhUk1jQnk3UjJYL2FEcVFuQ1ZzSmU1OFBlTldRb3h4?=
 =?utf-8?B?ZlR0OUlPaWlzaFJINFZhbDM2cXJHT1BGWnBJaUdYdDdkN3hUU2tQdlN1eGlx?=
 =?utf-8?B?aHJXbEVaSmdTbk9ybGN3MWlVUnpBRWdqZVNRREtNNnV5RGU2MStud0ZuNlQx?=
 =?utf-8?B?V21DaE91QWNMUFRsZE1kSTY5TUxya3duMjNleUxMbzd2dVhiNEc1dzlhNzFu?=
 =?utf-8?B?MjZYR1hZQk5SRkQ5WGlIRUszTlRMcEo2QndQb3VndDcvdDZINUFFUk43ZjZR?=
 =?utf-8?B?ZHJpS28zY3ZtUHlJc3BFZ0FMR2RNbG9LTEpXNkYzaTNaNW5UZGJwajhLSXVw?=
 =?utf-8?B?aGlySXczT2tUOHJRMkRrbXdmQklkUkFJWHc5Q1VseGZtUnd5VTRFRy96K1VV?=
 =?utf-8?B?enprSElXMTVPZ0F0S2w4OGx4RG5kUENJOUhzWGlqMXY5T1pNN2NmdWJEbHRj?=
 =?utf-8?B?VmliUWYwdWQrM0JmU3NKaW13Q3lEc0NQUHRhT2hoK2lKa1luR1hRbE5hSFdV?=
 =?utf-8?B?NDBqUERvS2Y5eGpVc0l6VTVMOXNTWGZJNXFDSU00TDhQQkRIZlQzUFRNaGk4?=
 =?utf-8?B?STFNQzgyOHBnSk1aOUQ1VFoycTF1cmwza3kwZUZBRks0aHpuekErOUdvMkNr?=
 =?utf-8?B?WlUxUDZqQ3paRU43WHFoY1B2eUdBUGIwd01ReDY5bCt1TGFTaEZkZnhJOWtC?=
 =?utf-8?Q?Y4f6n1CHLM0nPM2FIxltkcVeNkz15pFmi2RVI=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS0PR06MB9877.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(41320700013)(366016)(1800799024)(13003099007)(8096899003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?aXNOb3ZESTEzNnM0VDhFbCtuSVlWck9xQk1oUmdXNnUxemZNaE44M3N0R3FB?=
 =?utf-8?B?aDcyd2ROb1lpVGM4a1h5Z1FDNEJROTNzMTZOUEkvVGx3QUpnZy9acUlYSmtE?=
 =?utf-8?B?S0FCd0FDR3h1bUZDa21SK3czcUR3YWczaEVTTnk2N0xEZUZ6K3hvMUVYU0ht?=
 =?utf-8?B?andMOHFPbHBGQkh1L3RUNzFjejNUUXh6QnhwVnFWQTNYbEZTUU1HVnk4S2xj?=
 =?utf-8?B?WEUvRUh3alpIT2VHeWlNUFZONjVCL0I4NTZ0KzUvVFprUE5xbS9XekhYdk9h?=
 =?utf-8?B?UWdhenN6OUN4RHFDcDJENVlEMEdDUHpwSnVzZHVZZlZJc3FQRkZMQkJWTklj?=
 =?utf-8?B?eEJsVXFQUFI0SE9ZRDIvT0REbWNTSEFUOFF1RnVzL2NZNGdLR2F3OGNMbE1q?=
 =?utf-8?B?Vy9KSmM1RU4zNTJYN2FWQU5IZUxOUW9RZGVjUS9OQTZ4Tjg0SzJPZ2NXRTBW?=
 =?utf-8?B?MDY5R0JzNW54VUh4ekI5c2I0UEJ1TUxGbndRNytsQnV2VTAvZGMzTENQL3ZZ?=
 =?utf-8?B?Z0ZaQ2wrRDNBbXVuUGhhMzNsU2d1bm5ISVAzSXUvdVZxNmp0YncwZ1V6MHN0?=
 =?utf-8?B?Wjl2YzhkaW11QytqWkxlbmcwZnFvNzI1UnA1R1BySGNwWDMrTGNhTXZOdUVP?=
 =?utf-8?B?UjFlNG9oQUJqOUdvaEhvclRCbzZla29xS2ZTSnViTEdrZnIrTllEdzJ1N1Nn?=
 =?utf-8?B?V0pRQlFSOXRCcjE0WjQyQm9HYzlpaCtVVlAraHhqRFRlZXFQVXZEVUt5Umhs?=
 =?utf-8?B?Q3hQQklZN01KUzEwL0VNN1drSlRxVkxTVHZ1TENjbTQ2dWVzWlFsaGorUXpi?=
 =?utf-8?B?Rk8zMEpROWlKODU0U1VWdFdPQVRGZTJNMTNhQXF6ZkZ3V1pYT0N2RUFMSW5h?=
 =?utf-8?B?SXAwMTVPZkQ2cU5YZlFKQnloRTVBNTh0L1JKZkM5MHhxR0ZLU3VXck5reW10?=
 =?utf-8?B?K0k2QnZaQVhTM0xBb1FSdVliTVBoakNWZ1JQSGVOdDhGYzRpMVo4NUVCZEt1?=
 =?utf-8?B?dm9oNUdaL1M1OXJuNmZWcFE0SG5tZWpsYzh5TEhsWGlCajlrSmNLa0QrSmla?=
 =?utf-8?B?c0xKTzUzOGtjbWV2dFhFRWltQWtnOFNkS3NxQ2JqVFk5Q2pmRytqbUo3OGxX?=
 =?utf-8?B?RUY4NVJVOUFXNTMva243WlJpYXlXNkNjK3RBcXpqMS9sN0ttTnI3dHRFQjFZ?=
 =?utf-8?B?Qm5ySUZJRnZsOGJMRXFUb0gwUGthZ2JTMVhHUjhITkJmRDFZL05qSXp1bmJE?=
 =?utf-8?B?dU54UGZMbjRNZTc0bDV0cVZSYnFpK1pLQnlMcS9ab2FEdDlaWkk0STd3WHBU?=
 =?utf-8?B?VFc4UWJqREFVNVFpQ1pqNWJHYzRvWmpBK1pkMUpheURkTnk0VytUSE9nZFJD?=
 =?utf-8?B?bWRMSGR3aUNYelV4dk80TVNQNzFRTHFGNTdZdnZqZGhYUDdvcjFqQlpqNWNB?=
 =?utf-8?B?QzMzMEhoNUNZcTdnMktjZFhUQlJ6Y013akh4bHNRSUhGU0o3cXV0Mm9nZCtW?=
 =?utf-8?B?N3NJaXRjYmhKS0xtSm9ZM3ZsQTNtTlM5MUZINGV2N1lLNnR2K1lON0VuQU05?=
 =?utf-8?B?cThxZ2dEWXBPdUxWTWJ1S3JyM3o1U1FSakJwUVdmbExjdlpjODlVQ2dDMGh1?=
 =?utf-8?B?c2pzYTgvT3dqTCtMRWZPV0tRbVd4TnJLUDNHck1SaTFMZHhBMkhTK3RYTWxm?=
 =?utf-8?B?R3ZPaGxENGdrSWY4dkVWL1UyVW5rOVo5czhIZTU0cjI4Rk1uVm9CaTF3aWVQ?=
 =?utf-8?B?ZEd2eFdMcko5bFJ6QXlpSHNwQlNVak9CcmplNjVZS1pOMWhxVThGcUFuT3Jl?=
 =?utf-8?B?VE5rc1UxSXFDL0FZMWg5YzViZk1jdDRHVEtZYnNGUzVxNFAxREE4SGRBdFJi?=
 =?utf-8?B?SVNWUzZ0T0FXZE1qNUtjTGlsREh3RTVpK3AwM2NCRUdZSXlYSlhWclJsdUhz?=
 =?utf-8?B?cEhUNnZxdlBtR1JrV255MXArWktqbC83MW8yTTFRT0YrRno3RHd5aHh3VTJy?=
 =?utf-8?B?d254RmpnL1R5S1F0bzBhdUFkOExDR3ZSbERwZDd2eWpPaW84eER3a0RZdUxa?=
 =?utf-8?B?dEo4dzZ2cVdtM2RXRHBPZ1ZNdGNxNkhXbTRhYllIbGRacVBjalVadUZKamtZ?=
 =?utf-8?Q?1DUs=3D?=
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: 6983ddcb-a656-495c-26aa-08ddb3341fdb
X-MS-Exchange-CrossTenant-AuthSource: DS0PR06MB9877.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jun 2025 15:31:01.3695
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ggcTnAmW+qPrP0JZ8L58p7hEg9TFhcEXAu9Q1Fcw7xS2t+ou3Oh27hSdwUFKLrxW
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR06MB8996
X-Proofpoint-ORIG-GUID: Lre4AJdFUvlb7TbfffPb5HkF6fe2VVCG
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI0MDEzMCBTYWx0ZWRfX5kpfkeS9fhRX JKam4eXzwEasM0e1tzWg6SDZDvYvWFdfOB+EKjsrdEOl8KYARrijuVQeffAc0lB/pYIcG68wwUH y3YgVRL47Q8th9kZNMnxDsgAC+xHUQ2s4EPkqPPgDhyGr61C+UvznKAqD0CQG8DmZP3JH+vwxep
 YRKiqAnOOuyMUC/5cZbTVklJw3k9LjzKfXayWjVPTgLTwhn9OXqMmGPwUeG6DP5VhJnCe0Lq1zX pYSaEWGrYBJXigl1rK4nbEY7bzqkdKlDmOycWoCZVB38ff/JZdzWRR6HBSq7MhTsGRw1T+4U/Xh HjIpvgzXEZ/+qKQmf+E9c2fDUzA4gNS9tZJqVa2g3luukkzn2OJbMnZRdR2NzkcTOE5VpKLo4mF
 oh6e7Bh9Yhxghc+1ykYTXOa57rNhvXZ8kfdosbHLgz5QtXJEBPpn2e0ZC+/YCx6/8WxaBzN3
X-Proofpoint-GUID: Lre4AJdFUvlb7TbfffPb5HkF6fe2VVCG
X-Authority-Analysis: v=2.4 cv=QaFmvtbv c=1 sm=1 tr=0 ts=685ac4b8 cx=c_pps a=v1Stge5IH4fBwzlX9Lmszw==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19
 a=xqWC_Br6kY4A:10 a=6IFa9wvqVegA:10 a=lre9DRYkaIEA:10 a=DyznqomoAAAA:8 a=-zCBEL3wRRjy7NW2JBEA:9 a=QEXdDO2ut3YA:10 a=uJ_w1ttZAAAA:8 a=thDnBwBql3HQrtUBXhgA:9 a=gkl1sjahL0h7Dc5q:21 a=_W_S_7VecoQA:10 a=muQ5ErImgoUO71fbljk_:22
X-Wisc_ValidFrom: true
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-24_06,2025-06-23_07,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 bulkscore=0 mlxscore=0 adultscore=0 priorityscore=1501 mlxlogscore=999
 phishscore=0 impostorscore=0 clxscore=1011 suspectscore=0 spamscore=0
 malwarescore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506240130
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

--------------0GI0eFRQgfRtdqsDMRSdSzXc
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

I don't know what speakout is. It does not seem to be one of the synths 
supported by speakup. But as I said, if you need a version for a 
particular hardware synth, you can download the script and build the iso 
file yourself. Or you can email me, I'll build the iso image, and I'll 
post it on my space at the Uni of Wisc.



On 6/24/25 8:27 AM, John Covici wrote:
> How would I get one for speakout?
>
> On Mon, 09 Jun 2025 23:03:25 -0400,
> John G. Heim wrote:
>> With the help of someone on the GRML list, I created a script
>> that can modify a standard GRML image for a particular hardware
>> synth. If you use this script, you can create a GRML image that
>> comes up talking via your hardware synth or via software speech
>> without having to type in the commands after it boots.
>>
>> GRML is a Debian fork designed for use by people who like the
>> command line. It is useful as a rescue system. You can activate
>> speakup after it bootsbut with my script, you don't have to type
>> anything.
>>
>> I pre-built images for the LiteTalk and for software
>> speech. These images and the script can be found here:
>>
>> https://people.math.wisc.edu/~jheim/GRML/ 
>>
>>
--------------0GI0eFRQgfRtdqsDMRSdSzXc
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<!DOCTYPE html><html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <p>I don't know what <span style="white-space: pre-wrap">speakout is. It does not seem to be one of the synths supported by speakup. But as I said, if you need a version for a particular hardware synth, you can download the script and build the iso file yourself. Or you can email me, I'll build the iso image, and I'll post it on my space at the Uni of Wisc. </span></p>
    <p><br>
    </p>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 6/24/25 8:27 AM, John Covici wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:m3o6udb785.wl-covici@ccs.covici.com">
      <pre wrap="" class="moz-quote-pre">How would I get one for speakout?

On Mon, 09 Jun 2025 23:03:25 -0400,
John G. Heim wrote:
</pre>
      <blockquote type="cite">
        <pre wrap="" class="moz-quote-pre">
With the help of someone on the GRML list, I created a script
that can modify a standard GRML image for a particular hardware
synth. If you use this script, you can create a GRML image that
comes up talking via your hardware synth or via software speech
without having to type in the commands after it boots.

GRML is a Debian fork designed for use by people who like the
command line. It is useful as a rescue system. You can activate
speakup after it bootsbut with my script, you don't have to type
anything.

I pre-built images for the LiteTalk and for software
speech. These images and the script can be found here:

<a class="moz-txt-link-freetext" href="https://people.math.wisc.edu/~jheim/GRML/">https://people.math.wisc.edu/~jheim/GRML/</a> 


</pre>
      </blockquote>
      <pre wrap="" class="moz-quote-pre">
</pre>
    </blockquote>
  </body>
</html>

--------------0GI0eFRQgfRtdqsDMRSdSzXc--

