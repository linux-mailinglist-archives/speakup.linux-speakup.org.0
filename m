Return-Path: <speakup+bounces-1480-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id C2618CDFFBD
	for <lists+speakup@lfdr.de>; Sat, 27 Dec 2025 17:55:43 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=math.wisc.edu header.i=@math.wisc.edu header.a=rsa-sha256 header.s=selector2 header.b=WpPQfA4u;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 9A1A3381804; Sat, 27 Dec 2025 11:55:40 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 796B03817DA
	for <lists+speakup@lfdr.de>; Sat, 27 Dec 2025 11:55:40 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 6DAB73817DA; Sat, 27 Dec 2025 11:55:34 -0500 (EST)
Received: from mx0b-007b0c01.pphosted.com (mx0b-007b0c01.pphosted.com [205.220.177.71])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 9380C38092A
	for <speakup@linux-speakup.org>; Sat, 27 Dec 2025 11:55:33 -0500 (EST)
Received: from pps.filterd (m0316045.ppops.net [127.0.0.1])
	by mx0b-007b0c01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BRCiT9g1819414
	for <speakup@linux-speakup.org>; Sat, 27 Dec 2025 10:55:32 -0600
Received: from ch4pr04cu002.outbound.protection.outlook.com (mail-northcentralusazon11013053.outbound.protection.outlook.com [40.107.201.53])
	by mx0b-007b0c01.pphosted.com (PPS) with ESMTPS id 4b9a6pfha8-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT)
	for <speakup@linux-speakup.org>; Sat, 27 Dec 2025 10:55:32 -0600 (CST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HaMuJxLyLTXFW0iMA6lQiDLs/MMp2lIGIRHJGUbXpugIH+z5niyTbef0BOR4ASm5IEUVP0p6eF7mzm+PGxTUwOTFsh3GjVm72q8oYx0nlWJgnJJ4NqK6Lz4HZEewb/wCS/ttLMq5kNTVZ3drLyEudxQeP42cAIANvkANAguz7U0jqbZyLs+QoR46iVHakpblsk9gCDyuxD/WKuGlXpOMkbUTULg+Idkodjn7qoD4pAvo0bs0h/GcOrxxbNoL1NLQSTwjaokqJsycq+bApLO1wvLUj1MyVFQIb8MHg/7nlqQu0QavmGjlLWhBtbuJyu53jKRcPkihJXwQxKA3sZ25cA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vI3bYbi3eca3xfPiVWR1DMFz6IWf1WFUeLzWs2D/jrA=;
 b=k8PCjYJhRzvcDtUH6qtM97ZCiaY1kVwvXnf0aoNiVYpUebrvpdgXv7XnBy74XNFPZ1zwkqXeacopinwmQ7f8TTY8g6g8W19krKhRCHfW0kml+Xe7++FDQAsNxY62TpkBTYvGiPADQFeciu1vIZKdblKR2k2kEhfcmmxdTNPrhGE9F53FXaSFSttGzKyb1d/8EYo74ruKtJSujvvjsv3zW0UQQdgwvFVB0vimt7B+Kk1KJhlC5EsonRK8GpUPDRRPREpnxAZ0mQPgra7H4/6KJPkBv6vsOS76TZl4mG0eOXzzUU/CUgT8X994PFA2PJbN8bqqlC8Qg1BZOa1Goh738A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none
 header.from=math.wisc.edu; dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=math.wisc.edu;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vI3bYbi3eca3xfPiVWR1DMFz6IWf1WFUeLzWs2D/jrA=;
 b=WpPQfA4uShUaOtJ8aixjSY/g33DrPsFd0MDCjiEQ3DupiwuGv/x/vJNdNR8QeJDDdzyHlS40N2uu2eKZ/bj8NBjZMjrKKvsTML9/n+YZLQV8aL5Y1WYynBv0YAATJTC1RHzOMwphmCTzh2N/mysjJy/LkwdC4ffIi9HX2/0s+WAF2muNduqR8ahGYjiqBcoGQLhmo7nxU70KqDsmRSpRUtPkU3yO91UQJ26Bd6nLtJdp/wpA2tkwIq+/5RxuirQPX1u557bXIUHLv/hxcYF8xUEPp75AgtHPMa6RIvvXzp6gH1UFJX3Pzmb1MDM64TEXl4jyJJSMQu+O0UByZm19Ug==
Received: from PH0PR06MB8206.namprd06.prod.outlook.com (2603:10b6:510:c2::22)
 by MN2PR06MB6480.namprd06.prod.outlook.com (2603:10b6:208:1f6::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9456.12; Sat, 27 Dec
 2025 16:55:31 +0000
Received: from PH0PR06MB8206.namprd06.prod.outlook.com
 ([fe80::5115:844:491f:44b4]) by PH0PR06MB8206.namprd06.prod.outlook.com
 ([fe80::5115:844:491f:44b4%6]) with mapi id 15.20.9456.013; Sat, 27 Dec 2025
 16:55:30 +0000
Message-ID: <4f9075a8-0252-46f9-8594-1dab9286474f@math.wisc.edu>
Date: Sat, 27 Dec 2025 10:55:28 -0600
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
From: "John G. Heim" <jheim@math.wisc.edu>
Subject: Building a hardware speech synth with a Raspberry Pi
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: CH0P221CA0017.NAMP221.PROD.OUTLOOK.COM
 (2603:10b6:610:11c::26) To PH0PR06MB8206.namprd06.prod.outlook.com
 (2603:10b6:510:c2::22)
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux." <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR06MB8206:EE_|MN2PR06MB6480:EE_
X-MS-Office365-Filtering-Correlation-Id: 5a7146e3-39fb-41fc-39e8-08de4568be0f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|1800799024|786006|366016|41320700013;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?Z0hUbFl4ZkZ1Y1lreXJ5V2FJZ1UrdTJUTzVjMXJldGF0VXNhK0lWOFprTUpZ?=
 =?utf-8?B?REZSS0FSa2hZZVMva2hKN05POXNCczY5aXF2RS9iekZkU1JQdGtia05wS1FQ?=
 =?utf-8?B?SmdnY1lBS09JT2ZXSXBUSFRFQnYyZU9SVG5UNENoVTdzT09EdEVYMjlNQ1Vn?=
 =?utf-8?B?OVJ3ejdmVnR6Y1F4WktnbVYyaWxxUS9mTXByQWkwSk8yRHlOcVNiRUh5bmpa?=
 =?utf-8?B?cC9BNlZGd1YxVnV3bTlubmFsOWVFNS9wcS8rd3BzaTZSZTN4VVE2MUpqK0VB?=
 =?utf-8?B?QWwyUzJUakZsb0xTZDNYT0VlV0lHNWZrRWxSTjlrSnhMMFFQN01KOFZnd0ha?=
 =?utf-8?B?VjNaZm5sV3oyTlBzcDlmZ0twQk8yVE51RXhFd2k5ZUFMeHl1RHJTQXVIZ2FR?=
 =?utf-8?B?S0ZMWlNDSVZHSUlpV01yaVFFMkdSUEF3OVNoK3ZzVVJxSEtRVDVvOEhMdmRj?=
 =?utf-8?B?Mk9oK01kR0kvVkYvakEwM3V6ekhNMEl2bmxrc21IWFZPeG9raEZpR2FLM2w1?=
 =?utf-8?B?a1krenR5VUJ4QnlZVVdod0JvclJmYVlxWWMvUVZjVFlNN3hjeVUxTzdjT1hI?=
 =?utf-8?B?UEQ3VUtxUFpCclhJRmRDSWY3bTFOU3hCTFVkcElPM25LQi9FNFk2cEptVFp5?=
 =?utf-8?B?TGt5dWtnMUJyMzhPVTQrL3lmUzlrWUZsZ2Y5QlNVb0NyVXgvcUpUdW41bkZZ?=
 =?utf-8?B?Qm51VWxmZnVZOHMwUFdiTjRHeGVmcTFtSzZFWmJrd0EyWmpnTTNucmZFS2NM?=
 =?utf-8?B?QUtsTnJKK2RJcnpQRzZMODEzbFI0ejd3NzlwVW1lWWQ3Yy9tNDhoTjJ4UWEx?=
 =?utf-8?B?Q0ZxYkFNOEJSQ0hFYXFVMkVQNytzTHdpbmxBQmVpMGxDS2NIdzcvSHlKUjhY?=
 =?utf-8?B?OEp3cTBBL0FIWHRFTXVwQ0dzZXRXb2EvZkIrYkRGdXNIS3Fjd1pkMlVjZE9u?=
 =?utf-8?B?dDJ4RmFqUDM2VzhRVUJiTDRGeW1ycWNEM2JHRlAvdWx6K2VQSXBUREdzZmdZ?=
 =?utf-8?B?OFNGRGlXalRjemFhdjJYUjQwL3JwUU1tMENiMkNWSHVoSlVoZmpUUVVDZWYr?=
 =?utf-8?B?di9Dd0dpZDhmWEdMUGpLZVNJYWttTEFhc3l3ZHVNUUtkdmlZaFpVeVBqVmZt?=
 =?utf-8?B?WGlGZ1dLTCtoNlRFRjJDSncxdWdtY3ZjVUlxSUZubmhxdXBzdm1tZjRQVzBH?=
 =?utf-8?B?T2UyTVBlM1J0VFlLbXl1LzNLRVRkU2lVWDduTTRsOVJ4d0xFaGp5L1BQZWV5?=
 =?utf-8?B?dWVDQjROa2FuaFpnRDRHWksvdE5KMko3Z202NmxjcW81RmZFVkU5MW9lbVF1?=
 =?utf-8?B?bDR5VEd0cHFmV2NreGtTNW1MZk1CTkxIb2ZMdnpueUs0NmhycG1naXpLWGt2?=
 =?utf-8?B?U2pSeFo5aGtMYmJubjNaSXhHaUtuTTIwVC9waUloODU2RnpqZmpMRXZxVHlD?=
 =?utf-8?B?MWFjcnZ0YXlRekEvcklCVEFzUk54MEVoSkxDZ2NoYzRnQVl6UzdDeThUbVhp?=
 =?utf-8?B?aGY1a3pHWHdpM0RKcTQzSlN2N0gxNTJtcURNUFlCWld2eVZHZ2Y1ckV4MFZV?=
 =?utf-8?B?SUpJOFgyZ2FhQ3EzWDJIRlNRVGJvTTNWTUxGRDZBNzFLWVllc2picFY5LzA4?=
 =?utf-8?B?N2czMUNpaGJQUzZ3QVZQYU5MaWl5Z2dWVnFkLzZjMndLZThCZ3hPcko5dTlX?=
 =?utf-8?B?Q1AzZTQxeUVoUzlzaW84eDBBTm5qeXRBWEF3d3pjWFRDOHdCWStwbFRja1Ew?=
 =?utf-8?B?TXc1WVR2TE5SR2loMUlsZzR6eWlvTFYzdVdKWnF2N3hUaGM4eUtSQmJlUWhR?=
 =?utf-8?B?OGo4NWF4ZFBoeEF4TTZYU3licUlpdUxSa2w1REJKU1RkWFZQcFdVN2FSR09q?=
 =?utf-8?B?cmo0SFJzSUoyMWsyRmhtWlNYand5djJhcHIwZ2o3ZDlGQktOdjdZaUZsaFFQ?=
 =?utf-8?Q?cJmPs4Vm/HPm/T3rDum1i82EOOLVl+Ac?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR06MB8206.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(786006)(366016)(41320700013);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?MkxtbmIrZW9VTWFtdVRoVTIwWXRwN05MV1dHZXoyRTdnaUN5TXNINDd0aDVo?=
 =?utf-8?B?cHFHM2U0MTgzNTNNUWs3c2JQZ1NWaXZKbXJnZ0ZTVGJzdnIrVEtKN1BrK3Fa?=
 =?utf-8?B?c3lJaDhPN0FpdW1vSFYzNTZjb1FGeXNFbzRJMTRFR1U5SG4wbHZlcE5kTEtF?=
 =?utf-8?B?ZXFOVDlOMVJHQnZ6RHBLM3VCVEVlNUFwVTNRUS9tdnFKNkFDRUVNbld6ZHFz?=
 =?utf-8?B?NTh5c1BjbEJKUlZtZUV6elYyNFY3TmI1b0t1RVJoL0tDZFR4UnlzNityanBR?=
 =?utf-8?B?YXM3QWFKdjk0N0xqdEtLejZiVE5tb3YwUDlUMlp4WG5GQlNyL295T3Z6M0dS?=
 =?utf-8?B?VWRhdlNJTDczZmtHaytzeklsRFlLeXBPdzJub0pmQ3o4VUtRbUZOTTJjQVlI?=
 =?utf-8?B?Q01wVGYzSzhmSVUzQU5qVWRUc2ZNeUMwNGd0S1Z3SWYyREQ1bjRMd25FaFZz?=
 =?utf-8?B?UnVsTTRTS05tUXkyeE5nWFh6ckVsVE9ydGRhdzdvT1kzczl6WVJmMHh0QTdv?=
 =?utf-8?B?SUNQalFSYlNobzNJWmFSdERKOXVNNWVSZ0RURDJtRFhZNVpTUXNSMXVRK3dx?=
 =?utf-8?B?dVN4MTcxK2o1NG03UWttMnc3OStSS0RDekNOeDFWY3BwM0VGZWNobmV1TUw4?=
 =?utf-8?B?Y3IxYnk5aU1nbDNFcS9lTGJ2M2RrQXYraU4vY1Bja0wwMVpEcEpSRzdwVTFk?=
 =?utf-8?B?U3JLVU1yeU56bXozazNDNVJRTHNSSHhQQkYzcU92d2tXcytCeVRHWFFGdE9C?=
 =?utf-8?B?b1kwTjBqa3BPMlN4Q2xyc2FkSDByTWsvMlFCY1ppbUFueklGWTNJK2gvb2lz?=
 =?utf-8?B?OHpzWWNuamEwNXNnLzR2N21idFY1d0l4bmUyZTlnMHpJYXdhaXBvd3F4RkdT?=
 =?utf-8?B?eDczMHJUK0tvN091aEYwZjhyb2tnSWg3MHRNZ29ValJaWkRuV1JQMERtQm8z?=
 =?utf-8?B?Y0RlR0lDdmc4Tit4UXRZdnNlUW5wMVZ4YzdwM0V3N2czSHBrRUVvTUxiWE1P?=
 =?utf-8?B?M2I5MFh1R2lDRWRzeUxoc0c3dDg3c1plc2lJSFRwWGlmNnh0MDVPTTQzSjZO?=
 =?utf-8?B?MUZBamR6RmEyNkNJaklsekU5emNrVVY2c2xhaHd6dVNNc05aVE1saDFKRFNN?=
 =?utf-8?B?eW9WaU9qUkhZdHZIZnBkVTBqbllEcHdNQjBpMTBZNjU5OFphTis1Ymw1WURN?=
 =?utf-8?B?VFJkaVVRL2VaejFJSDdJZGJFNnNPWWh6K1ZMTDllcGVqeFdqVkNhZHNRUjl6?=
 =?utf-8?B?cElrR2R2cXFKTExtMGVRY0lhNWN3TG9LUGdqVUgxbW5wQlByYVlhWDMvSjJS?=
 =?utf-8?B?UnFxamlzTnZWeGNCemg5dG04N2lMS0QyOENUQTVNVi9BTlEzTkxBU2hsSTFO?=
 =?utf-8?B?Rk5zb3U4QVlDSFpUQXZ5Vis5aWlKYi93djZ5S1JjcUxWdXRvTlJUcUlsSmZ1?=
 =?utf-8?B?Qkluc0RnU0ZFNjMxajVxRk9yWjZ2bHNmbVd1ZWlwemtKd1pwTnFONEI5Y0Yr?=
 =?utf-8?B?VkFQQUlldGttS3hONmoyUzZ5a0c5cStDRmV5dDNEY1Z6cSsrNGRxSWk2RkEw?=
 =?utf-8?B?RDh4UE96R2F6YXZmTTVGMjJvUTNqQm9NbGVPckJGTkVqUGQ4ek5pSjkrYVpt?=
 =?utf-8?B?L3h6aVhXT2VCcVpCU0o1U29Da1JtSjlkQ01hd25pOXRQdXUyNlJuMGxqWE4r?=
 =?utf-8?B?ek1ZQ2lIWWpKRlRxMTJsSVdXaGRnSWFjU004U2VDZ1FBckRwZ0pBY0xFWENr?=
 =?utf-8?B?ZzdVWnFuNEsyVjNOTDM2eGdoREM3bGF1dFE3WEhkTUhlOElmRzhVRFg2TXE0?=
 =?utf-8?B?VW5lZ3dFcTZDUjNoaDJIa0Q2Qmpkd2NLRmFRMkxjd0c4QnlXNTVQWGJvWVJL?=
 =?utf-8?B?TjFlbkx6QUY5UEVQUkVvelNGRlVKMkZSellSOWxkR0JxTzRJM2FiSDBjVEc3?=
 =?utf-8?B?aXdEQ0xYbEcwcTltU3FCYWllU0RKSCtlcGVWRFZJbS9RZk9VMTFwVlBCbndY?=
 =?utf-8?B?T3NTNXRMemNrUDYrbUlqeUpoLzl4UzVwcWlBTjA2eGxKdThNUTlFZnVydSt1?=
 =?utf-8?B?OVIzdFZEdk8yQkc4c1NtVnJrcTgxbzQ0UWpPTHYrb0UvTTRWeEFuNFRtQzNW?=
 =?utf-8?B?ZElqZTd1SVY5TVRhUnJBUGVNMUNWZ0tWUWpTK09NMU5yZ2RLSEV0NUdYb3V1?=
 =?utf-8?B?cUFqcE42aStxYngrVWxhSk52UllrZ2w2V3hBNjlSZmd1b3p4enhPNGlLVFpa?=
 =?utf-8?B?WnNIRFhIR3BSMjZMZEVqRE9QNTdhdWpxQVAwaHV5VVJpREZaS0tpS2lPZGk4?=
 =?utf-8?Q?q7lr9FusOTKKuFxJqH?=
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: 5a7146e3-39fb-41fc-39e8-08de4568be0f
X-MS-Exchange-CrossTenant-AuthSource: PH0PR06MB8206.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Dec 2025 16:55:30.5430
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Qji5cAdtcT9bLsrnoaXkZwx5KKm8Em/umr8iq3z3UpTJc6antqqNhJvjhox7zX0i
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR06MB6480
X-Proofpoint-GUID: ejGrAB2KFxSVYi8vlLEatT96V3d3VOlX
X-Proofpoint-ORIG-GUID: ejGrAB2KFxSVYi8vlLEatT96V3d3VOlX
X-Authority-Analysis: v=2.4 cv=FfU6BZ+6 c=1 sm=1 tr=0 ts=69500f84 cx=c_pps
 a=5+LGht9gDMVyy/gYI/Qwww==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=lre9DRYkaIEA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=7LXX2XT-bE3OwGuryJ0A:9 a=QEXdDO2ut3YA:10
 a=ZXulRonScM0A:10
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI3MDE2MCBTYWx0ZWRfX33hYjyupAhng
 qntrPTiyYCb++HG3sylhC+DaYczuQa0vjt9z9gOROcIFc1Khf4p0z+ROjs3j9H7NGM3AH2a8PxK
 y7g48T+/+A92ShAC8usJ4K1aDnrA8cTnD60F1QfQZtwMT7fWmVTIWV7qfb/5xbY//zb50UjJQ0i
 X2Hl2l42PwHhEofOy9AXXhpGErhDgl5IVWS/oXmP7mtdteqt6v2ZpgvZ94I5FjuvRRf/34FeGEZ
 0viaX3ufXWlCeXIQhzaQEJCY0YmAKM/QKF1LljZIq0QRGcQaS0S4TvcnL9JndfGkerI5kxRQEqO
 0Ra2IjMzcCNW/4vrl/+ut1Hp4696FAqjUUJgKsidtgBQafXUma1ySfR8/i5V8lxxb+flFNRJnTm
 gMBcqQ2IHxmwwg6B1UEsc6JlmZN9KjT70B/wDbm48SeCK0n8oC7DmndwugmoPXF8vqcl+M/7ll4
 zUWJO21jfhFFMwDxIyQ==
X-Wisc_ValidFrom: true
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-27_04,2025-12-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 priorityscore=1501 phishscore=0 malwarescore=0 suspectscore=0
 adultscore=0 bulkscore=0 clxscore=1015 lowpriorityscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512270160
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

I am looking for suggestions on how best to write code to emulate a 
hardware speech synthesizer.

I am trying to build a hardware speech synth out of a Raspberry Pi. I 
got so far that if I plug my Raspberry Pi into a USB port on my desktop 
and tell the desktop that it as a LiteTalk synth on that port, I hear 
the login prompt on my Raspberry Pi.

But that's about all I can do with it right now because all the code on 
the RPI does is to read from it's serial port and relay the text to 
espeak-ng. Single characters aren't echoed, etc. It doesn't really 
behave like a hardware speech synth.

So I am going to have to write some code to emulate a hardware synth. I 
am looking for suggestions for how best to go about that. Is there one 
synth or another that would be best to emulate? Should I invent a new 
synth type? Can speech-dispatcher help?

All ideas welcome.




