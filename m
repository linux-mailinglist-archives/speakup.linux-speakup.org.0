Return-Path: <speakup+bounces-1621-lists+speakup=lfdr.de@linux-speakup.org>
Delivered-To: lists+speakup@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id rLArC5D1OmpsNAgAu9opvQ
	(envelope-from <speakup+bounces-1621-lists+speakup=lfdr.de@linux-speakup.org>)
	for <lists+speakup@lfdr.de>; Tue, 23 Jun 2026 23:07:28 +0200
X-Original-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id CF39E6BA31C
	for <lists+speakup@lfdr.de>; Tue, 23 Jun 2026 23:07:22 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=math.wisc.edu header.s=selector1 header.b=SpHxeD5P;
	spf=none (mail.lfdr.de: domain of "speakup+bounces-1621-lists+speakup=lfdr.de@linux-speakup.org" has no SPF policy when checking 206.248.184.127) smtp.mailfrom="speakup+bounces-1621-lists+speakup=lfdr.de@linux-speakup.org";
	dmarc=pass (policy=quarantine) header.from=math.wisc.edu;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 4B11938268E; Tue, 23 Jun 2026 17:07:20 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 29A1B382642
	for <lists+speakup@lfdr.de>; Tue, 23 Jun 2026 17:07:20 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id E9A3238263E; Tue, 23 Jun 2026 17:07:13 -0400 (EDT)
Received: from mx0b-007b0c01.pphosted.com (mx0b-007b0c01.pphosted.com [205.220.177.71])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 7A76338262D
	for <speakup@linux-speakup.org>; Tue, 23 Jun 2026 17:07:13 -0400 (EDT)
Received: from pps.filterd (m0316043.ppops.net [127.0.0.1])
	by mx0b-007b0c01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65NK0NlN3773273;
	Tue, 23 Jun 2026 16:07:12 -0500
Received: from cy3pr05cu001.outbound.protection.outlook.com (mail-westcentralusazon11013059.outbound.protection.outlook.com [40.93.201.59])
	by mx0b-007b0c01.pphosted.com (PPS) with ESMTPS id 4eywegj5g1-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Tue, 23 Jun 2026 16:07:12 -0500 (CDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rndmQZh/IoiQJZ+/ObPKI6aQscvmhQCZCo++h5yLX8/XMdaVcBDcZCLV0Mu8EUmazX2GPvpVs32d0kZBOKPHAHdN1n59ewWMk2FBSM3/ZxCYWpGHbZvHjqRlqHVBIXcKrxhqrXVKKs+OHol+xSLq6C/qF4nnccb9azipLqsRj2ZzO+iAq6WJZB5wv9i5jIl/12hGP2TDLyex8uKFZ135e54e/h5foN/9nj1fT9sQ7OHp7vJiVB+WGymqkSnEWUGRnNdnopQ63dU9VRwHeRKtUO/ZsifKAHZAp5vXCNd784Ue+Pi3cH/Qp0n0G7aazQtPjCoSpa3h+L/k4ECDI7x5zg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vs4MHNd6MRskp2XadUA7K43V8veHAH8N+hdBOYsN26k=;
 b=cU6UYWl+guFIC+bQJsnKRaOhm3tzfRYcI7CNkTzeM/E0nx2Sm1eNcl+nAU2IZjoRA84h1/3BVMxHU5DeYInIvYXgbyFa1m/ARXEIXVOAVkJLLH8MumVSa3ru1jgFnL9WcGs7f/C7gr8DV+b6As4lYk6V6c5jcWzs1bTLQHYNDSt9btjDXD2TgXRJEbug1ifQnA+25Z991O5Z961pYBSY9em5Ap8RbtdZXeCaRH4iIGDd7OaodXhXqGyY0D3niGT4RajMF8/dD+IvjC/Qvu4jfA6aCpiMmjcMi1GIY0+ocntbdJwsO0Zws9QRdTxonjs3ytEhxm2L03CTBnskCb+U7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none
 header.from=math.wisc.edu; dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=math.wisc.edu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vs4MHNd6MRskp2XadUA7K43V8veHAH8N+hdBOYsN26k=;
 b=SpHxeD5PEYbj70VrZUD60ShPbZh5SzaFp7FCfqlK5V2fvOxNffGPyIlD2x04LbvNfDRcr2ty8vcdP90oUzUFuC7aMyJWGINV78SedTAgvEXw0tKf5Ne+IAOhn3SeYfMuRQ8niYQUSYp4SCxB9T4IxsKqNJ1QxwbkP/NnK0p2QLb2qimzVd/b3IWX1hFyDwc+RJkqQiWB7tK7vshMX+NraTT7gKCqABCWKvVE3SoEgqcHoaoHJ6a5bl9P77cPMoZU2eAs9O2EHncw5mlyezGHcQfbCrCmSDsUM1TjO/uBZMONic7jxl7hHIv2aagNTJpwyqlxkaltasluiYm9/et92g==
Received: from BY3PR06MB8195.namprd06.prod.outlook.com (2603:10b6:a03:3ce::19)
 by LV9PR06MB11174.namprd06.prod.outlook.com (2603:10b6:408:366::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.48.18; Tue, 23 Jun
 2026 21:07:11 +0000
Received: from BY3PR06MB8195.namprd06.prod.outlook.com
 ([fe80::a7ad:fb62:4389:fd8b]) by BY3PR06MB8195.namprd06.prod.outlook.com
 ([fe80::a7ad:fb62:4389:fd8b%4]) with mapi id 15.21.0159.012; Tue, 23 Jun 2026
 21:07:11 +0000
Message-ID: <c329fefb-8d70-4d24-b148-7eaf01f5b4f9@math.wisc.edu>
Date: Tue, 23 Jun 2026 16:07:08 -0500
User-Agent: Mozilla Thunderbird
Subject: Re: Speechd-up -- nice!
To: Rudy Vener <salt@panix.com>,
        "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <aa9f5623-dba3-4686-9b5c-8144e409425f@math.wisc.edu>
 <031401dd02c6$798d33a0$8b01f80a@nucwin10>
 <d6e07425-3566-407a-a371-a4d8055e9764@math.wisc.edu>
 <036601dd032c$a63f17e0$8b01f80a@nucwin10> <ajrSKnrqwLcVFaAN@panix.com>
Content-Language: en-US
From: "John G. Heim" <jheim@math.wisc.edu>
In-Reply-To: <ajrSKnrqwLcVFaAN@panix.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: CH2PR20CA0002.namprd20.prod.outlook.com
 (2603:10b6:610:58::12) To BY3PR06MB8195.namprd06.prod.outlook.com
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
X-MS-TrafficTypeDiagnostic: BY3PR06MB8195:EE_|LV9PR06MB11174:EE_
X-MS-Office365-Filtering-Correlation-Id: 3e48c13b-5e88-4b21-65c3-08ded16b6415
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|366016|23010399003|41320700013|376014|1800799024|786006|5023799004|4143699003|22082099003|18002099003|56012099006;
X-Microsoft-Antispam-Message-Info:
	zA8DTOQVdlw1LZpg6EnQubLOt0qTt90c0hbabPt63SPXw5PE42P6AVChIbdUGcMeJZvL1C70wDPAqJ6NU0maar1X4e/x8Qf2exXFRUN6nVuWiyTW0dIvPY16BwUWoA84a4TyaImNLd2FDbFMrq8ZJbeVYEO2f+zA1ZBwPC/YTOW0f5HbqAaH7AOgUUdjvlB2m4VozVtbJolDevCcN8od0lUn0xCNJSaASBblMCcGa+l8hxXO7gmBtkP45CQJ7U6YZ8ycNnmZOSwSgSNtx/e+Am1tJQnZtu1g63Sb2bzlO2F14EGD0Tiz2XA3gccztQq3dzqlx8pdTAOPVulo+2q1HR5sN/jR8FeWuzK3XT8ExaUXIE2E47z2l5vMULf2pVAFib2TNcvNFNKoElkbsKi4CbkcOeabWKapaRF8IaPDiTeMI/PFLonw2/eHn4iQkQoo1tlhKyvLfLx4iM9Uw9vvwfRBqzZ8uWXVWpa79i9cJFx+5b7i91URKIbdj/5sAOl9ivYwSsc5PVdz2RNq98q5yy11bhmy6QewM8WstbLluB1cNzH3Lntttp731l2l6R48D415V/K16Ujjc41CoeJg1IawiT815jv4NTc3+EjYaW3Zm+/xzs1qQaq8kA9zJ7MgbY9W7Ee8IEAXer2KhRLtXDtm3UljtQQ6sBuElanpnok=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY3PR06MB8195.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(23010399003)(41320700013)(376014)(1800799024)(786006)(5023799004)(4143699003)(22082099003)(18002099003)(56012099006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?VjFoaDhZNExaV3lvMHRnWkZjbmJmdWFLSElTcHd4VDlTekRuM1Rid2pmcnFO?=
 =?utf-8?B?M1p1cGNvVko2NUpSN3doVEhyN0dFdmh3NTIweHJiM2JXNngvTDJ0M1ArR214?=
 =?utf-8?B?MWNFQ3c5M0lzclRjWmIxelpDVEIySStuLzYrTE4vem9pUHdDOTUyRjlnMW01?=
 =?utf-8?B?NGVVR0RVZFNodEE5WlQvSlVkRHhKdVA5N29ldVdtNnFlWHFpWVR6NUx1S0Y2?=
 =?utf-8?B?ZFJmSnd5R3dMcXQ1enNkSVNMQnZ3NHJXaERkV3U0RjJBeW5RUHVLQzF1YUVO?=
 =?utf-8?B?Q28zWFdyOFlJQUFCVEJYMW16dlJWQ1pES2hINTVDeUlGeUl3TDJqbUd0L2pO?=
 =?utf-8?B?UGdwbWYrRW9yRE9Memx1OEd0TlpmR2lCekpvNFFzMUFYUllHTE1nU2o5UUpw?=
 =?utf-8?B?MlNNWWRwUDNibGsvNVZsNXdJZXByS25yRXljaEhGWmFLR2NDRHBybWFraTlZ?=
 =?utf-8?B?R3FldytXWWg5UFZ0ckRiMzlRVXZ2VklqaUR3UENGYTUyR280R21qM29BcGZP?=
 =?utf-8?B?T0doQUxBZWJ1RG9pcmNtTTdENzJUQXhPcmxaN2dPb1hCdjBZL1k1bm1qb3RX?=
 =?utf-8?B?S3pwcitJUnZMekkzYS85YUd6dzVRNGhxcXBCdWNwWHZWUjBDb2o3Yk1RZEwz?=
 =?utf-8?B?Tkg0cFZ3aXlxZXNJMWlNcVJvN0VIOW9TNFo2eXJwc080Vm54RGFQeWNSRGFj?=
 =?utf-8?B?RUVZYWpCUVNhSnFTUnlmdGkyQ29jSUhqMzhaa1FWOVIzYVZwRWNtTkFiMGhz?=
 =?utf-8?B?THBXYVhTN3JsRWltVmdhOWJxY0VYdGZZbFA2MklFV1hWM3JUTkZFbENGZDFV?=
 =?utf-8?B?UUxCWlB2MmEyTEdNREI0aHhRK3cvaHpsZDQyak5hT1FpWEgzNVozNWlPOHYz?=
 =?utf-8?B?cC9vU2hKbTNLVm1wQWZlYkxtWUxsM3Nta1pjeXpyMjBPK0Z3ZVlIVk9XSWJw?=
 =?utf-8?B?TEpteHRUaVg5Zm54NldoZVMxemtubUIwK20xVlFWN0kzWU1zWFNTQzU3Q2NZ?=
 =?utf-8?B?ekYxWjJRRzhmOFk2czNQMGRuc3MwM25wcFJoZmJzRDRNUjlMaGo0a2UvRGY5?=
 =?utf-8?B?WVhEcFR2eW1MYjE0cVNRUUVYeFliVTZnZFJmU3JXSWovQlBYcmtNalJCcnVN?=
 =?utf-8?B?d0tOa1cvalpVcnM1VHlpai9xZzlrbDUxQjlzeS9raGJGQ3BHSlRDb3JvR3FP?=
 =?utf-8?B?VnpLOHBXb3Nrd0pUQmlBTmpXSTBqdmJzODVDVHFRZ012ZDgwS3RnSm9SYmxn?=
 =?utf-8?B?TWJqQTFjMFFwa202citaV0MzOWhmRVI4QkJUNFBrWFptRDQxMmtXMW5paFpz?=
 =?utf-8?B?b2NPSHZ6QStpYkFpeVRqeldKYVJ2RGxLN1dycjREYnBkYTVnWHZnVnBYZlU4?=
 =?utf-8?B?bW1qSzV3d2ErR1B4aTZtN1dMSTlHS2lZNXJYTUdWNVZRN3BkR0JtcWUvS2Fn?=
 =?utf-8?B?b0p0bnZlbDV1Y1F5b3ZXTWNjN2JCUzNHRE44ZkhtYTY1K1hiR3JuVWNWM2tI?=
 =?utf-8?B?N1Ntb0tKbkIvdzhTTjJVb2s0bk9EY09Jd0Jyc093T0l5MHB0V0Z6Qm9rMUtr?=
 =?utf-8?B?b2lhQm83VnN4a09OVHczSXJ4c0JCYUE1ZW1XTkpDWSs0YWFwVkpOSElLa243?=
 =?utf-8?B?U25VbWszRmRzbzVOTThTMitmTkZNTVFjMnlMSGkwTGxxT25oRFF3aTFLZzJ1?=
 =?utf-8?B?TnVUallNTnVGd0tMOXdSaFFaVXFuYUNCQ3B6SXFpTXpqc1pIQVZLZEJ4ZEtS?=
 =?utf-8?B?cFBiNVBoaThBVWdXZ2duR093cU1hc0ZyWjFRRCtwQXRnemEzOEJCa3h3aU12?=
 =?utf-8?B?cGg2Z2Q0TmlCNVdzV1lGUGw1Q0dqM0tTOVV5aGUzSGhHd0RYZGV4MVQvUnND?=
 =?utf-8?B?TFN5Z0lhSkFtbzhoamZ1SzBqZW14WjRQYXNTZ3hkdEYrL01IVnQyaTF5SmJo?=
 =?utf-8?B?QWRUUjBKdHF6dERPM0ZVSGg4N1ZsdWNCOWg1clZQV08vN0RROUIwQTlQdDYy?=
 =?utf-8?B?UUExYm9ZbllJYmt0eEZ6UEduaSs4RmhMNUp0V3luZHErZUp3RUxLN0kwcGhC?=
 =?utf-8?B?dTgyeE5BK3kwYzdMY2FVeXVtVng5akZIRkRkMmlxQUlERWRrNElwd1VTektw?=
 =?utf-8?B?amdlOUNnVTNPdTVsMjBGeHY1TWpYaXQ4ZW9jOTFualROUjA1ckVqMlZSOXhF?=
 =?utf-8?B?emsrSHhxbTI3THE0Z21OdXl2V0NHWFREejFFalJIVW5HYWRaQzJFWUZsblo0?=
 =?utf-8?B?Q0Z0TWhiZUlHemlicC9kQTBxcXNNMmMrNGlNazRlRHdHUTNpaFVJT0paajV1?=
 =?utf-8?Q?wrLKc62X1qwbJd/Uzb?=
X-Exchange-RoutingPolicyChecked:
	KMu0dTgp3WIgQsQlKnhFAuwyyd5CPmCNt4RgSsTWShuP4P/opTmB45CGICJYO1usqoQ1BUT+iaMXc+OX+A9rJDsnN+fzq/Iw5R2XjraKJgVIBO78FXTxyrLDpAmXIkZlBeaqbxRpgc415AcP2vGG/KwWeFb4NYxkVNw8dtnHMWKIswf5jFyLaK91Mzy5oV7haVcm8/+BWCgXdTOkX081JRrua5PEpmKk9ch9Vj688YsHcRI9uxl6P4MjqtbwQFYsIXRg5ruCneJb1lG+VF0tKjIEuciDleHEVItX+xqxXg+FOvJUllTih+XCYKzn87rajC6vvx/WZIzvj+I74FdHow==
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: 3e48c13b-5e88-4b21-65c3-08ded16b6415
X-MS-Exchange-CrossTenant-AuthSource: BY3PR06MB8195.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jun 2026 21:07:10.7049
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: iap4zez1gLZ/zxxRYEGE67ZF65s76a+qZv0UE9EpnqJREnAgIpJgeFfAOyxFWXMw
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV9PR06MB11174
X-Proofpoint-ORIG-GUID: bv33LjdM-fch1hNrkctgTNTHqMD4Uj52
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjIzMDE3MyBTYWx0ZWRfX2guc6sAch8tN
 xG0nJVwmduWJS+Cz7EVcUsgm2Sig4RyfvF0h59E7stgOmp1i9QY7QnYayKhfD8bNoNUTVog3BLO
 CCw84lK3w6H8jLdB5mDgHQ468FHt5Hc=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjIzMDE3MyBTYWx0ZWRfXzKCuAwwILvcC
 hNMgrLOhzVaAsLzS03urD5dQCRPx4Qu+l3SHxVnuw9nJ7XZnEU6A+G/aN+rj+1em/W826Ngovwz
 HU8umPTyzaP6M67ayhbeMD/UfFNdljOGtZ4RJx5ta2VGjfPjpCl/yzXDtF8s7MT+hgYgaPuQLy5
 FWAcqgwaPK0e0JpC1BpWnSkduDCpxq2UCcQXRybpcFRAcZxT3ze+qd1Ku3JbRg19cvVZ/n/bmL9
 fp2zZsaV0bbTBNjYlp8DkQro+k3US2wn3dlSAev5Wv/BdohsuGllWHOBsOCR0PXkWM/fFBRXWeR
 ZM3ksutuf8+cutPkMDcQPT+KBBAeQZ1yV2Rm9Eeaz7DglgEWhYZvkB8WPxSIfnFwaGfmHTtOF2o
 E9jXV04OsLcBSJRR3tUNG4u1W0m7Gu9sBoYDinftn5b6/yKXaFyLX5P+TNO40tkVhY1LuZ4Q1xA
 aPNDWfaSqly8NzrVmBg==
X-Proofpoint-GUID: bv33LjdM-fch1hNrkctgTNTHqMD4Uj52
X-Authority-Analysis: v=2.4 cv=a9AAM0SF c=1 sm=1 tr=0 ts=6a3af580 cx=c_pps
 a=sTSJOlcUIwiiAZkT7IHz4Q==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=lre9DRYkaIEA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=ZyELlZqCvD1aXIDzc3I-:22 a=UDYdy8M5e18q1hqNPuRN:22
 a=uk8KKz5Grhztlvla2GwA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
X-Wisc_ValidFrom: true
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-23_04,2026-06-23_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 suspectscore=0 impostorscore=0 spamscore=0 adultscore=0
 clxscore=1011 bulkscore=0 malwarescore=0 lowpriorityscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2606230173
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.89 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[math.wisc.edu,quarantine];
	R_DKIM_ALLOW(-0.20)[math.wisc.edu:s=selector1];
	MAILLIST(-0.18)[generic];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_NO_TLS_LAST(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_ALL(0.00)[];
	TAGGED_FROM(0.00)[bounces-1621-lists,speakup=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:salt@panix.com,s:lists@lfdr.de];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[jheim@math.wisc.edu,speakup@linux-speakup.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[math.wisc.edu:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux-speakup.org:from_smtp,befuddled.reisers.ca:rdns,befuddled.reisers.ca:helo,math.wisc.edu:dkim,math.wisc.edu:mid,math.wisc.edu:from_mime];
	SUBJECT_ENDS_EXCLAIM(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jheim@math.wisc.edu,speakup@linux-speakup.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:5645, ipnet:206.248.128.0/18, country:CA];
	TAGGED_RCPT(0.00)[speakup];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CF39E6BA31C

The only thing I can think of is that the  punctuation setting got 
changed somehow. The punctuation level is stored in 
/sys/accessibility/speakup/soft/punct. On my system, that's 0 (zero) 
and  it works fine.

Other than  that, I  don't know how you could make this happen even if 
you tried.  While writing the RPItalk  code, I saw that Speakup sends 
the string, " space "  when it wants the TTS to say the word "space". 
Given that, I don't know how you'd get Speech Dispatcher to not say the 
word space when you hit the space bar.


On 6/23/26 1:36 PM, Rudy Vener wrote:

