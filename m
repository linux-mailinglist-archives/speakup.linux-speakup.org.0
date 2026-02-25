Return-Path: <speakup+bounces-1556-lists+speakup=lfdr.de@linux-speakup.org>
Delivered-To: lists+speakup@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SKdtFuhxn2llcAQAu9opvQ
	(envelope-from <speakup+bounces-1556-lists+speakup=lfdr.de@linux-speakup.org>)
	for <lists+speakup@lfdr.de>; Wed, 25 Feb 2026 23:04:24 +0100
X-Original-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 601DF19E20E
	for <lists+speakup@lfdr.de>; Wed, 25 Feb 2026 23:04:22 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=math.wisc.edu header.i=@math.wisc.edu header.a=rsa-sha256 header.s=selector2 header.b=geuINW0A;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 901233823ED; Wed, 25 Feb 2026 17:04:09 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 6E4CA3818A1
	for <lists+speakup@lfdr.de>; Wed, 25 Feb 2026 17:04:09 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 493953818A2; Wed, 25 Feb 2026 17:04:03 -0500 (EST)
Received: from mx0b-007b0c01.pphosted.com (mx0b-007b0c01.pphosted.com [205.220.177.71])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 6C219381814
	for <speakup@linux-speakup.org>; Wed, 25 Feb 2026 17:04:02 -0500 (EST)
Received: from pps.filterd (m0316042.ppops.net [127.0.0.1])
	by mx0b-007b0c01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61PKvniu2718625
	for <speakup@linux-speakup.org>; Wed, 25 Feb 2026 16:03:55 -0600
Received: from bn1pr04cu002.outbound.protection.outlook.com (mail-eastus2azon11010044.outbound.protection.outlook.com [52.101.56.44])
	by mx0b-007b0c01.pphosted.com (PPS) with ESMTPS id 4cj8k28fcn-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT)
	for <speakup@linux-speakup.org>; Wed, 25 Feb 2026 16:03:54 -0600 (CST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uctmKjFdtLKLU1paFsjPIDrywWPYklqaeap66ba9sL9fd0YTuYQNU+F+5yIr49TfJSexaGbhGlzDC3N9cJakhoUjWkrbwadXxjCOC6JIf01zkaVS9t2B+Uj2ERz3iH7hTAEuCK0ha0wrVsV/z0fpbH6qBB1yrEBC2hxDESeVjJiBFZLme03mN4V+Xq44VsS4FcAX/uLlhOZGmFeFGQ6SirdN1XKvLhW4rCm1qxT3chmEfRMaozSecqg0djyMrwOJ7B5jy5bIsZnfRHakTkK5C1v04OBu6RHyqr4mfcxmoJIsH3uizSQ/WcTGQlH8W70y/pMAyAkeJCTUKh56kRjo1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=g9ez6uiFJlN1A/O901cqVXn3mC9cVztNeZzvmhjP9do=;
 b=YNSQvcWkZE2AWEEIpCiTZLEqWqPf9aRK/2l2eo9w/nJNpbnOYc18bjiUTK8eIUcQqo6iiYHmnu643ZIo8SU+Z7wB5EOxI7N2OMu39odBXImq2MP8uQ6Y0r2gOwLqS8swJBArL6/rieVR8PWXWmtqEHL/PH3WrCaPzfX3ByBfNVYInnB8CQ5MgBToY9Om9zWMVx2kkwvSqfMTJ7R+0qtOPAv1QwTCume5nhusPxtBGSIpn6ih/pF4mwEUm8n4YX3KX0Hegc3xuWNG6nCWgmL9LFD2OiRiD5QU3UHWhgh/bcfRax5jTiJQYh8Hd4G5jMHgt7T4jN1T5ZTO9mwScG5uqw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none
 header.from=math.wisc.edu; dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=math.wisc.edu;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=g9ez6uiFJlN1A/O901cqVXn3mC9cVztNeZzvmhjP9do=;
 b=geuINW0ArnW8O/4YnUWnYt6Acx0GMlPADgDYt0kB9GTlFZTYNUwD9VIPBSAQ5ownZ3zIyxKzPPT/kK9pe6e0RKWE2pZb7UuIA97J1JU2Gu+5VEkr+7IJs+x19fGcxEfgRyRkkgMrdGGt8BHkqZxJbedpYZLrfJGBq+q8HDldVRIGmblHkGhCdAG6qIQw/Ll7nnmLViixu0vmdCesHsA8xktb29mf03z95PB3Nx8y92EoJodPERO3j4mHGfOzzNsRSnqGSQkAjqTiwiquXQ9unUW/zwSxOL7D591eNri0+dvv+2Z+kBxSuvn6bfTqPJkN8N1nouoicx+OQS9CHRzsKA==
Received: from BY3PR06MB8195.namprd06.prod.outlook.com (2603:10b6:a03:3ce::19)
 by PH7PR06MB9298.namprd06.prod.outlook.com (2603:10b6:510:2f4::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.22; Wed, 25 Feb
 2026 22:03:51 +0000
Received: from BY3PR06MB8195.namprd06.prod.outlook.com
 ([fe80::a7ad:fb62:4389:fd8b]) by BY3PR06MB8195.namprd06.prod.outlook.com
 ([fe80::a7ad:fb62:4389:fd8b%4]) with mapi id 15.20.9632.017; Wed, 25 Feb 2026
 22:03:51 +0000
Content-Type: multipart/alternative;
 boundary="------------PIch2zHr1jRxWVNbg5lYFeOJ"
Message-ID: <dc0d85fc-ccee-41a6-8f91-6c5818f49cdd@math.wisc.edu>
Date: Wed, 25 Feb 2026 16:03:49 -0600
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
From: "John G. Heim" <jheim@math.wisc.edu>
Subject: Fact check wrt speakup and user space
X-ClientProxiedBy: CH2PR17CA0001.namprd17.prod.outlook.com
 (2603:10b6:610:53::11) To BY3PR06MB8195.namprd06.prod.outlook.com
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
X-MS-TrafficTypeDiagnostic: BY3PR06MB8195:EE_|PH7PR06MB9298:EE_
X-MS-Office365-Filtering-Correlation-Id: 18c34249-1a72-4d30-fa45-08de74b9c233
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|41320700013|786006|376014|366016|1800799024|8096899003;
X-Microsoft-Antispam-Message-Info:
	IdJxIcex9DSexupst+Lvv2As95G2OSP5Q6YVpBpfaRpmK5tRl6ZQMafupiOVDdK/cvtAhs0lyDmtJEdSXBOf6qc1vwnojUpcBjhT07g49SkhAg+gjjw34a2IFLCMQ83AMPAUatpk/lJPRvKbmv9Tvnp9D++xPa4bhuOz4ayNthWrq/ECmV/e5c6ghlU81rUikCWIhqkEXcayXq/2O7cxf/5/Zlo8y4H74sSkIdl8C6TGpSWwpI9g8iblngiPaROU8KNnEwnurIegeK7StWZwaoaEtb+86Lnxyy/7qmS6iRDCMJUKioaZG57QumNokXxB17k8e6J7ci2ttBgXRz3gMD77UzxaX5oLyJZD72STpoXK2W4+djCPz2RIrl7hLlLKVci4+tFX8TEJCV4B6U+5HB3//X003f7UFxZ2xPrTddD9EFUXe+YVSQl0pncsRZkA34G7fN91wAAJ6l/IGDcBB1uEaLiRrK+8DjaGgCRz/A2F2Iw6zYtBkaZdM6/hPI9ZJUW0mcfCsKipn5Mnh1kjjvcZjI5mW7DKDLaf417Ng5STAI/itrjMdDwDja12dwtCT4g35FO0elJc5E5FSyqUtBy0oi3KoRr81XQZ/LO2IKxq9YYicRuGoWrLyng4nAKSBjfoCw5T35NesWeu9k+dTADIlzp8HGFUIyTt4IyIE5cv4aGsn92mJZjvns+Dug+7VdVeC+5GC9V1vjpO4IwsW+TULxLXyMFekS3E3nfkM5o=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY3PR06MB8195.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(41320700013)(786006)(376014)(366016)(1800799024)(8096899003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?c3BRblJtb2JCQzBoUmU3UmRDamQ5RTFSRnQrdGl2MjcvTVg0L2d4Nytsekc0?=
 =?utf-8?B?L1pVeFFBYWpqazVRb1Q5TnFOU3NqR1VqSEdWc0tSZ0hUMG9RTmpxOVlYT1E5?=
 =?utf-8?B?cTMzaVl0SXU2Vyt2NGxLVVBIdGtFNTN5WjNGOUphSFVGcVQ2Q0tpUDR6bjdp?=
 =?utf-8?B?YWVPaDQ2SWJ6V2VpSHQ0Ym14UnplYlpqK1lPVUVaNW05R3lhSUlTSXlmcXFQ?=
 =?utf-8?B?bmpRL0ordDB2NUxXSVRENWhwbmE3eDc1S09zazlXc0p1OGEyQ0Zpd0JBRDNu?=
 =?utf-8?B?L3ozcUxqVWhiOU5ocTdDRC9GRU9mUXBwNC9TbjZLTDFVTzlOMjZaNkYxYkpp?=
 =?utf-8?B?QlFBWFpNb3FDMVEzNThpNHI5MStwcy9QQU0veElJN2YybXpZU1pjaGdMTGdy?=
 =?utf-8?B?YkV5ME5heEEzWTZrY1FwTWF2dTlrU2JVT2JVc2UyRUF1Y01KczNyQmV5OG1V?=
 =?utf-8?B?ZDRualE2dEsxUU52c3ErSGM2Z0pnQVhUUGxrSzNicnJydE96UTJ5MWZ3VEV2?=
 =?utf-8?B?MUZneEpIY01DSjdWUXEzaG1Lb1FidFByUkRuaG5jN3N5cTFWZitQejhlYngz?=
 =?utf-8?B?Rnp3M2lVdENiWDdDTmhGWEpjb0kvRlB5ZWtMVEt3LzIwWkwyVDB0TDNFdEM3?=
 =?utf-8?B?OUQ4eVBNeUJrV01aaHpPdFpFMHQrb1RoRXJCa0ZQaEdXa01yL0toNzNQUjhi?=
 =?utf-8?B?eFdhNDdicFZkYW1rcnhMZ3VDRFVyS3JPV3JBZmVQcE5KT3B4ejlQQVJKaGlo?=
 =?utf-8?B?aDhiczVyMVNDd3puL2dzVTUyenBuMlZvRDVxUTRVTTVBRWdGQlViQUdzeU9B?=
 =?utf-8?B?eHFVZVQwemVLWDl1OFVqb2F2cFVFelo1ejdNRjkwa0RxcEVlZ2hTVk5VZmZi?=
 =?utf-8?B?d1NZaENyaHVFM0xMdUxIRThPemRwYUFRNHl3Qmh1emM3SHFYTWwxemJZUmJD?=
 =?utf-8?B?ZXhDa2ZIcXluTUxkT2x5bFNGa2pjQ1JKbHVqa2NreEVRb1JyT3EvZFI3SUlW?=
 =?utf-8?B?aHozcnNvV0Fjck8xQkcrQTFDT3VnOXltTU93WGQ1d1hLZTBzV0FxTVNXRFpn?=
 =?utf-8?B?MHpFUDROeXBscmw2OUdwcmRkeS8wZFF4ZURZaCtJSFVCUzFxUWtvOGRjZ2dz?=
 =?utf-8?B?dHdHZmpabkF6M3MyMGFpL2s5empFRnVVakp5K1daN21WekVyNU1NS0NnTGdk?=
 =?utf-8?B?My9sZENrc0d2UWlRWHRsb3hLYUlVOGE2NFQyZWFHb1BxL0haZHdOZE5CRkl5?=
 =?utf-8?B?aXJ5N2pOUlptS3lBTU9ZNEJxWkE1TU5ENUNWVDRWOElUdEZNWUVWOEVXRUo4?=
 =?utf-8?B?ZGpsOWJXbi8zL3ZnYlJGaHgvczB3d2JOdEQ4dEhsZTdCbW5ob1FVYjloSDhm?=
 =?utf-8?B?ZFVPUG9NWnRDZUc2WnJHczlEM3hWWm9XdmlIQjNTMExBVWtCcitJbGI3cFJX?=
 =?utf-8?B?WGJTSEp5K0RVYkp4S1BOZEIxcE5FejI2TFdrUHUycjZQdEFrN0hHU2JHNENC?=
 =?utf-8?B?VXdEM001L0FqbTd3YzdYcWtVTm5EZHNmZ0F2TVloSFJWQzFrL1Qxenhlb3JX?=
 =?utf-8?B?V3hwZG9RcVFLcTl4MzltcFgvcllpdWlXZGo1N2pxcUFINkxxcnpPNDhhT2F5?=
 =?utf-8?B?V3BUT2hOSzI1Q1pWNVF5alhYMi93R0wvdlJ1VkhjU0J4WTZqMFQ0VHJ5Y1dF?=
 =?utf-8?B?clB3NG5BaVZ4aE90OXEvaFFLOWUrYXFCSVNuU24yQ21JMzJwV1dVUUd4NElY?=
 =?utf-8?B?MFQ3V0FoTkhFMmhMSitmbWt6WDBzenNLcHFadE5mMCtGSm93eXc2RklQdjl2?=
 =?utf-8?B?UkgzanpYMmhrN1hjbVU0b0IwSXlQcVE4eDJDNVhleFJzVFZPMmw1MWk0ZEhH?=
 =?utf-8?B?d0xDMHRXaFZPa3grL2RMQVVkWURMS2ttVmFNSmcxcFQ1SGlIdUNmZEU2U2wr?=
 =?utf-8?B?NWMwTlF6MHhVdEtBYWlGYUl1Y1hDK3E2ZEhXNFpsVlZteEx5TDRjVS81ek80?=
 =?utf-8?B?aG5Ub3VXWDNjeVg0NUM3VW9tdUxqZW96VVdIZjFOQStnaGxoTmJqWVVNb09R?=
 =?utf-8?B?KzgzSFdqQ01XdklpUDZWUE0zNlVwc3p5c0lsdkRubm96NmYzVmdibGtsWG1h?=
 =?utf-8?B?Rkx3a2lvQUVCdFY4ZnkvME1rUDFFZ0FQa3F1czZVcTY2bm1YOC85aGtxbVc3?=
 =?utf-8?B?ZFYraCtKcURqRnhkNWNUZ3FPMzRzOTdjekpQbWdTYkVtWmhJMmluNGQ4WXU4?=
 =?utf-8?B?NDY1MUNUTkE4S0pHQ2VyUE9SVXIreUhXejFiUnB0RHdnUVR3ejJHcElEdVQ5?=
 =?utf-8?Q?UmbYH3m3Osuz6OtQwx?=
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: 18c34249-1a72-4d30-fa45-08de74b9c233
X-MS-Exchange-CrossTenant-AuthSource: BY3PR06MB8195.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Feb 2026 22:03:51.1642
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vB1yOiUG050wh70v97BX+VwftKzk8/OdjFuw8EQdhAuhhYh8gLFI4CLze6cZwvYC
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR06MB9298
X-Proofpoint-GUID: lJPpH5d3Gi3RaMwJRNTfnOi6iJWoJba_
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI1MDIxMCBTYWx0ZWRfX4C6f6Oi5yC7H
 tpK2vAnFlBH8PsZLzlaHHgHx+8CZRApZnJsWjzbJJR0o7GWngEcfc9B5iOGt6roE9rQeaTC2ECk
 JKop7HzgZpzyUZsfVy1ArxOfU68ijWbJmFwpEToLVvfc4On9p9o6qQaNVIuAOORB9CImiRXryKc
 MP0aVTArenDMV4/SQvWTV9wO8n7iCc3pkhV8V83lutpNfVfi218o83of/jZthba9V2pPGd4y7qt
 +DZZ7XKIAn40KOgbgsFnklR/W+tYnHFGXtCz2309/oY6tljiDQkIGON/PdObgJ9whsIFRo5GOh9
 E9a+4G2gzioDrFRdapUDRW2OZmNFjNwjG57/+S2RgeJifkP+E3LqrpnPrWCclIJOc2RDnX2bBfq
 +8IlXV3Ii6hxcW9scHUP3VRaPuMHLWXF0RN+sxWJRS9QLcXUPKYnzjE3GVA16W1CPIuBorXm2jP
 +q3pNI1dyEq+2UUG+Hw==
X-Proofpoint-ORIG-GUID: lJPpH5d3Gi3RaMwJRNTfnOi6iJWoJba_
X-Authority-Analysis: v=2.4 cv=C/HkCAP+ c=1 sm=1 tr=0 ts=699f71ca cx=c_pps
 a=wV2zXAf6sYQQ4uINbIt3+g==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=xqWC_Br6kY4A:10 a=HzLeVaNsDn8A:10 a=lre9DRYkaIEA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=2UV7nRwGkPHJIou-o9AA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=zpLmvSzFE3qATi6CzVkA:9 a=_W_S_7VecoQA:10
X-Wisc_ValidFrom: true
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-25_03,2026-02-25_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 bulkscore=0 suspectscore=0 impostorscore=0 phishscore=0
 spamscore=0 lowpriorityscore=0 clxscore=1015 priorityscore=1501
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602250210
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.89 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[math.wisc.edu,quarantine];
	R_DKIM_ALLOW(-0.20)[math.wisc.edu:s=selector2];
	MAILLIST(-0.18)[generic];
	RCVD_NO_TLS_LAST(0.10)[];
	MIME_GOOD(-0.10)[multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:5645, ipnet:206.248.128.0/18, country:CA];
	RCPT_COUNT_ONE(0.00)[1];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[speakup];
	R_SPF_NA(0.00)[no SPF record];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jheim@math.wisc.edu,speakup@linux-speakup.org];
	FROM_HAS_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[befuddled.reisers.ca:helo,befuddled.reisers.ca:rdns,math.wisc.edu:mid,math.wisc.edu:dkim];
	DKIM_TRACE(0.00)[math.wisc.edu:+];
	TO_DN_ALL(0.00)[];
	TAGGED_FROM(0.00)[bounces-1556-lists,speakup=lfdr.de];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 601DF19E20E
X-Rspamd-Action: no action

--------------PIch2zHr1jRxWVNbg5lYFeOJ
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

I asked about getting udev to recognize hardware synths on the 
systemd-devel list and got some pushback. One person claimedSpeakup is 
useless without user space tools. That's not true, is it? I hope it's 
not right because I already said so on the systemd-devel list. Below is 
the message I'm talking about.


On 2/25/26 1:23 PM, Greg KH wrote:

> Yes, the kernel driver speakup is in the kernel source, but it's useless
> without the userspace tools.  So the udev rules should be part of that
> userspace package as that's required before anything would normally
> work, as it's only those userspace packages that do anything with those
> kernel device nodes that speakup exports to userspace.
>

--------------PIch2zHr1jRxWVNbg5lYFeOJ
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<!DOCTYPE html><html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <p>I asked about getting udev to recognize hardware synths on the
      systemd-devel list and got some pushback. One person
      claimedSpeakup is useless without user space tools. That's not
      true, is it? I hope it's not right because I already said so on
      the systemd-devel list. Below is the message I'm talking about.</p>
    <p><br>
    </p>
    <p>On 2/25/26 1:23 PM, Greg KH wrote:
      <br>
    </p>
    <blockquote type="cite" style="color: #007cff;">Yes, the kernel
      driver speakup is in the kernel source, but it's useless
      <br>
      without the userspace tools.&nbsp; So the udev rules should be part of
      that
      <br>
      userspace package as that's required before anything would
      normally
      <br>
      work, as it's only those userspace packages that do anything with
      those
      <br>
      kernel device nodes that speakup exports to userspace.
      <br>
      <br>
    </blockquote>
    <p><br>
    </p>
  </body>
</html>

--------------PIch2zHr1jRxWVNbg5lYFeOJ--

