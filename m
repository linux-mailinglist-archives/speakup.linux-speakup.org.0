Return-Path: <speakup+bounces-1406-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 7BC1FB9703F
	for <lists+speakup@lfdr.de>; Tue, 23 Sep 2025 19:23:59 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=math.wisc.edu header.i=@math.wisc.edu header.a=rsa-sha256 header.s=selector1 header.b=GJg7Kl5w;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id A1E973815AF; Tue, 23 Sep 2025 13:23:48 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 7B9A23815A5
	for <lists+speakup@lfdr.de>; Tue, 23 Sep 2025 13:23:48 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 3017E3815A6; Tue, 23 Sep 2025 13:23:41 -0400 (EDT)
Received: from mx0a-007b0c01.pphosted.com (mx0a-007b0c01.pphosted.com [205.220.165.71])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 7E475380D5A
	for <speakup@linux-speakup.org>; Tue, 23 Sep 2025 13:23:40 -0400 (EDT)
Received: from pps.filterd (m0316041.ppops.net [127.0.0.1])
	by mx0a-007b0c01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58N9gXNl003716;
	Tue, 23 Sep 2025 12:23:32 -0500
Received: from cy3pr05cu001.outbound.protection.outlook.com (mail-westcentralusazon11013029.outbound.protection.outlook.com [40.93.201.29])
	by mx0a-007b0c01.pphosted.com (PPS) with ESMTPS id 49b7rhj3b4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 23 Sep 2025 12:23:32 -0500 (CDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qbK5GDtlG4o/HtlVaxvxkjce495p403kIn7JedBBoqQAvafKV//DvOvQWYh8Ygc3W4snArtVkC/o1m7AQ2CLuxknhQZGoEU6QP3FZATCt2NFSy6yO+qrY19Z39uQYDZU+T5FLnQQ71TIgBuad1/mZqeaxzcymgbX0IGH6GqmPVJiujZ5qA/mKzRUGDNr5vnEzbJFAoQgN/aXSAZJXFpqs0XOJGbEARbOPBOthL00smhw8+EMCkYvIPtIsisKZDhuqe6fnQYm+VvYHusVxYGJdzU8Ca1ATBL8uuMeGuT2E4LT1WndlL4PMS5FoWeXMAp5HJ69bKa6PKy/gTk1hmFxkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UYObD2uMFUgDpXT+sWwE8jiyyoQdVUprMbwncUyX+wY=;
 b=ggtKf7uPTWVXrZyqJD+LpJ1i2tapF0PeHMi/6ynMJkM5FSGZpjMKkY7MExbisiudi1wQlRdlI1M0pWmX8yx8gLjP7fDWHbf0M95iwQvO2Ata+aSgSWW4gHMu5kVT6YUAjB8tnCaeI44UkOGGUr9aftwFcI0M7X1LDvFHhfBmYPlradlf6hX/5lKBhydW00Ey523DmTw3j8V895Zc/zkUHSEXTKmbM/r8wgkENUQUZi0nU0i7W+iV9qO03zxT9B+huDpB3L/PNra6uxACYINkqx6iPzOYBF3PzvqbcSuBm78txhRtZlP3C2KZgOS42JkqaxsB/1kSPP4KWLEWHfurZg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none
 header.from=math.wisc.edu; dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=math.wisc.edu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UYObD2uMFUgDpXT+sWwE8jiyyoQdVUprMbwncUyX+wY=;
 b=GJg7Kl5wAey3OfFfhSPBjVQ8d7AoX5xSpimJ4N4E2mpNgyNyNiGhAaT5RXtbmrbADDhjxEqzzGqeEMkThzs4Uai/evNPP94vXz504oIjU3sZ17ZYMeII38GbYImQrQ6qo8YOqsHfIUzcStdjswo2BZ0S/qYLw7556iR00JkZP/Rlwb7qwlHmDEs2pb9TnAiInWFXa59PA4lyJE5hz6QJ0/CUMEJvP4adbVfb6ioHYBppJ7buE4DktJ6keM+INjiB/DFlwK95TgJJyoufZ1R83QIxcvtKl1q9OoPHgUxPDL2RnE2l3PpiRK2TxT3UbfkoIEfMoAHUCt8yHNnsfv5bFw==
Received: from DS0PR06MB9877.namprd06.prod.outlook.com (2603:10b6:8:1d5::14)
 by SJ0PR06MB7550.namprd06.prod.outlook.com (2603:10b6:a03:324::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9137.19; Tue, 23 Sep
 2025 17:23:16 +0000
Received: from DS0PR06MB9877.namprd06.prod.outlook.com
 ([fe80::a347:6162:9bfd:9b91]) by DS0PR06MB9877.namprd06.prod.outlook.com
 ([fe80::a347:6162:9bfd:9b91%4]) with mapi id 15.20.9137.016; Tue, 23 Sep 2025
 17:23:16 +0000
Message-ID: <7a4fb9af-6b1e-4ff2-a996-ae2780aa8b6d@math.wisc.edu>
Date: Tue, 23 Sep 2025 12:23:15 -0500
User-Agent: Mozilla Thunderbird
Subject: Re: Question about blind CLI use (was Re: "your browser is not
 supported anymore" ...)
To: Jookia <contact@jookia.org>
Cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <202509111603.58BG3W3p018143@nfbcal.org>
 <7a04c6dd-c761-4445-b53a-3c4525cf2a87@crosslink.net>
 <579c5d9b-5ba1-4029-982a-01295fea3a61@posteo.com.br>
 <Pine.LNX.4.64.2509112223130.3830807@users.shellworld.net>
 <6d3f190e-733a-e5d5-a8f5-cc6eb2c05e65@hubert-humphrey.com>
 <Pine.LNX.4.64.2509120106350.3832376@users.shellworld.net>
 <aMOwSwrEWTBtFn60@titan> <f8b9b65e-3ad3-4af2-968a-2e57cf6c8a01@math.wisc.edu>
 <aNIvVtPL-qzvuGFM@titan>
Content-Language: en-US
From: "John G. Heim" <jheim@math.wisc.edu>
In-Reply-To: <aNIvVtPL-qzvuGFM@titan>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: CH2PR19CA0023.namprd19.prod.outlook.com
 (2603:10b6:610:4d::33) To DS0PR06MB9877.namprd06.prod.outlook.com
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
X-MS-TrafficTypeDiagnostic: DS0PR06MB9877:EE_|SJ0PR06MB7550:EE_
X-MS-Office365-Filtering-Correlation-Id: 28a19ee4-f424-4bd1-012d-08ddfac5e1df
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014|41320700013;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?eG50M0VJWXd5WExJbGZsaHRoSnVSNjlxRUZCaUdYdXJQVmduVm9RWjRsNWNB?=
 =?utf-8?B?c1lsSnIwNzNVZEtFTVJWRjUxMHZkOWlYM0VXaHF0YUtNVFFlYWlDZ3hVS1po?=
 =?utf-8?B?WFUxTlhmS2dWWHMwaVBYWG9xV2lOQjJHMlVNbWl3SUt1WDNhZndzUjZxQWFa?=
 =?utf-8?B?NnRndWhNVHF0d0ZTaDJNUTJvNTlBM2dZYU9HTUlWSEhaK2t4UFZEVFVUR21n?=
 =?utf-8?B?Y0ZyeVZDaFM2UWxBQ09ndlMvdDdvbFR4K3VCVW9ucThoMWdUdVpYMExUUlN3?=
 =?utf-8?B?Z3o4NjFSSjNjV1hlZXpRczNVSjByb3p2OFR1RU1KdmdCS0h4ZjZZVTBpcE1V?=
 =?utf-8?B?SWFab1ppRkRQVWRSZWo5aXFPYUdVRExhd0FBS0hka2FUM1Y5cTdYYndXa0xl?=
 =?utf-8?B?L3NtcENYajNaYzdBM3BkbmR4S00rWjVBamp4Y002KzB4MHRhbDk3T29WK25O?=
 =?utf-8?B?LzJNV0JwMmF6elg1RjVTbXRsZmVTSkh3OVJDM0h6L1lHWVg1UEw0ZTBIUFpj?=
 =?utf-8?B?ZHdkNjQ4MHJNc2dNUi82U05GTkFkQVBqb3c5WjQ3ajJ1M1FBVTdiWXVrQmtk?=
 =?utf-8?B?VlNtcWFVSmVaUDlBVEVvZ291dEhsNUhjRE9VWGxGNkRTb0Z3VE8vOCsyKzZv?=
 =?utf-8?B?endXcFljcGZ2WDZxNEZ2N3RaaWQ4N3BSdnIxcGxaQWk3VGpXUzk3ZFRGU3F2?=
 =?utf-8?B?QVMrZ3lHaXZPbzZvZ1crM3VuVnRKY3MwSkhEbElLM1NvWkh2VjE3WUs3anc5?=
 =?utf-8?B?WjdXNnorL1R4eXZ5RU5WdDFIWHVOWmRaeFJqN0E4eE41RVg5blVFa3RKUy9R?=
 =?utf-8?B?S0IyS0VVcThhRlpxZ0R4a1RQQzNwYjJmTFFFOHhqejUrRE1LUFdXdEw4a2dw?=
 =?utf-8?B?ek53SnZOZzVqakoxdmp5cXY2azBiV2RwKy9rU2RobDd1WnFWYkpxcGR4VzEv?=
 =?utf-8?B?M2F5VXB6UFdod0t6SS8zYjBpZkxrSlJRRWh5aTJtRDdMVTdJaDBUUDEwZ2tQ?=
 =?utf-8?B?S2pqeElnaEZqRW56aWxBR0hSTmhNNkpUZmJaN0tiL2tUb3p4eFJPQ1RnZkNi?=
 =?utf-8?B?MEpQc1JIZDlNSndVZWJUd3RKTDhkWXJTTE04Q2FNRktHdnY4M0lpVzZBQVAx?=
 =?utf-8?B?N2QzdEd2MFZWZHJmUjNUWUx6Vyt4N1NFQndoWnlCYVpjZlJNRW1sbmJuUzRa?=
 =?utf-8?B?MkRQRHJyVlRDbXpqdEpRcFpWOVptS29BRHIwLzN4b0VZeFJEbXNXNnB3dW4y?=
 =?utf-8?B?c2I3M2VtWUg0NDBLNHVOOWp3emQ5T3RYd2h0ZnJzMWxVWEFCdXFjYXpRbTdu?=
 =?utf-8?B?NjE3aGNyZzBjbGVIV29QUTlWSVdiNWRFbFBibnF4a3R5U2RqUFBNV0hUVzAv?=
 =?utf-8?B?MUx1RVFLTzA0TmZMNUxyV25xbmJ1cVZveVJac1QwNy9YV2ZoM2NjRUNUTjBj?=
 =?utf-8?B?T1kreXFFd3hhTDJpVzdJY2czVTZpUGdRS0NuamU4UUM5ZmtJQXI0ZTViaWNW?=
 =?utf-8?B?TlRSWEJmWEQ4UTkzRWFaR0p0NnNzRXBmd0JYc21WRFlhQVZQYW5wWkJwVk4y?=
 =?utf-8?B?RTdyTUNsNE1VOUNVR0JaY29Qd3V6c3ZscHZFNmV1T1NsVzVNNW5VR0RhS2xX?=
 =?utf-8?B?bVpZVmdmNy9rZEoyQm5vL2crOVhGbmNOQThnZm01a1B1NjM5dmt1Z0M1NHdx?=
 =?utf-8?B?NVhGbGQwWGtkTmZhN1RRM25OYW8wVSs1M2Z5UzBJRVRhV2tGTkNuRkNEZUNV?=
 =?utf-8?B?Q0xpZ0tVcjIzSjl5elk2WWRjbWdhZUtCQkZYNGdKbkRBK01tK2c2NmJEM3la?=
 =?utf-8?B?dGFWUzZ2cEJDc0xGcFYzVkdWdUs5RWhPVjNVZzJVdzV4VnpDdWQ3ZTlqdFdW?=
 =?utf-8?B?bjRhL0dRWVlLSGkzRGMzNmt5OSt0aG5SZ0x2M25haXN1L0E9PQ==?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS0PR06MB9877.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(41320700013);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?S29QbG1yRTNxZmQrQXpiSUVSNm41b0Uxbkh5aGJ5YnFrUU9BbE1GdWpWakE3?=
 =?utf-8?B?bElpOC9mMEhsMjBXeUhtTjh3anFLM3JFbS8wMmYwblVFa2dXdW5xSE5JSFYy?=
 =?utf-8?B?czdKRy85WE5Jd2ZmOXp5cDhPQkliYzd6K1lBclRLU0s4bkdKUFZ4TkNKcjY4?=
 =?utf-8?B?V3V4dzVmNXBlNnQ4cloxM2pNdUtOejR1QTg5amo5YmtIUGRmcVo2ZkV1WnEw?=
 =?utf-8?B?SFgwaUQ5Z1F2dVJnRjBBNm1taGtWTS9jL3E4b1pOcjNvWTVaYkZmckRFeGpY?=
 =?utf-8?B?K0FheFpUU1JhT0VId0gwckVYM1MyR1h4Z0txOU9kYytlSXd0UndZKzdHZjV1?=
 =?utf-8?B?TlYyakFLU0pESHFWb0pSVnRUK2xSN2NvVUtpajhqRlJYZ3ZhaVFZNGludjJJ?=
 =?utf-8?B?aDRzMXE1Z2N4Q1Y5RmNvVkdRRnFTRGxFY2JOOXR1TUpMMy9qZFVzUm1SMUFH?=
 =?utf-8?B?bW1SVzJTbnBPRHNDd1FGbHR6b1JpS2ZqYlFHN1NtcmZwYzNRdlFSWVRnUjlZ?=
 =?utf-8?B?S0VIWE5VcTZyMTExUWFyM1psMFc4cTVteDhLNTYzWHBCMFQxS1dmY1QxRUlx?=
 =?utf-8?B?OGZhYTNYWnU0Y2o5M29iT3k2K2RsWTdDbDhwQm1aWHJuVDl4S2VjUGc1NHZF?=
 =?utf-8?B?OGtTT3dNRVhDVHVWQzVYaFhMcFFyK1V6Ly9iUkhaZzN1dW5MeFlTQjJkbnUz?=
 =?utf-8?B?MjFRN3V4d2R2Z0MvNkNreFQvUVhKRzVhcVBNMDhtYWtpWExOWFRqaGlHQmEy?=
 =?utf-8?B?NnNaa2M0S25Ua082SUJPaUxqazkwN2p2U0NheHJiQnBVTFBPWkx1aHlhYmd1?=
 =?utf-8?B?eWZ6L2VtS1lKSnpid0dObTlYU1BGdStCN1NSanpEVHl5VDFadExNc1puMytZ?=
 =?utf-8?B?ZDI1TEZaY05MNWRDaDc0bCs4SXNWTllKYVgzQUJPekhNWkl2QnBJcXBrWnp3?=
 =?utf-8?B?MElQclNkemVQT2MrcEhkWVdXTHR1QWlVUlpkbDVZdW5BMWl1SmozN05zb0Fp?=
 =?utf-8?B?bXcwNXZCZTFIdjYrNUF3UmNkMFBxNW0vc0tBdEJTK0k0K3A5bUMyOTdBbWND?=
 =?utf-8?B?K0taN1JpNkF4Q1g4TCtXR1hSbUh6RVFVUytXbmdiM2hrSDdhc1Avb0kvTmhE?=
 =?utf-8?B?ekZJdWJzeTBNNUZDTVRldmdUaVhNTndEZ0hXcngzVzZYWmllWEdUdkU0QnEx?=
 =?utf-8?B?TzN1R1dPRkRISUdjS0VOYWxFc2xFYi9HRk9kR3RUbDlpQ1FWbkJjUktDMS9k?=
 =?utf-8?B?ZnBCZEM2ajU1MEh6cTg3cUJ4aXQ3R24wSTR4ZEJwTW10M3pNZGZsY1FJbnlJ?=
 =?utf-8?B?cjM1ME1XNXlZbnVlWG4vU25RV0xIN245ck1JaHNveERodlRFQVVkdWN1cW4z?=
 =?utf-8?B?aURJQnAvSm42YzdseXdtaFQrRWtvQnBzWTkyVjdsUFFvL0twN2hGNytneEpl?=
 =?utf-8?B?YzdwMC83b3JhMncxZVVnK0FJOERMOTFqYU8ybE8rVzVVdE1HYkRBaENDRjM3?=
 =?utf-8?B?OGR3T1BTdDZHV3BYWDY2Sy9PY0F3Rkl0b0pGNnlBVitySkxkM0NoeVB4SGpF?=
 =?utf-8?B?SkkycWYzTWVBRUovTjVON0t5b3BXNjl3MFJmb3QzY3Z3NTl2N25vd0hHY2tN?=
 =?utf-8?B?SEpOc3ZJTERqdlljQ2N0Y1FXQXlUcDdCQjNNK3BGT0tkejdlTmorMnRPU3RB?=
 =?utf-8?B?NXdZd0FORWtPQ00yR1hKbWtqOUxzbU83TGs2R2tJMVlEZkUyM2xHV3pHNE1p?=
 =?utf-8?B?MzRjaWtPOEF3M2tjem00NldubU5raWkxVUNFRkQ5dmF4LytsRDVydHp1ZlhE?=
 =?utf-8?B?WUJlb0kyMkhWaG1VRFVuTTMyT25QdlVhcytCTDFjMldBRWc0bzA1RU56Zldz?=
 =?utf-8?B?bHRtamh4Slk3R3psU1pLbDd0eEpBeUNDaGE3c2VuTUxmeUpvVzNKcVlkV0Rn?=
 =?utf-8?B?cFp1dlZUTW8yaFd3dVJHeHdNTnJMc1lYdzBMak8vb1ZLMWxUbGJCTmhQM2tR?=
 =?utf-8?B?MytrWS9mTnZ0QytLQUFCSWFsZllnSzZzN0lsYXlZRmxPbjJWYWJneDh3QVNB?=
 =?utf-8?B?MnVlWnhCYWZqcDNDSk1GR1RWNDdpcXVtcTEvOUdXckhzY0oxN00wQmVPYlpr?=
 =?utf-8?Q?Lq97jpNk2bp5mYCIEn1lxHiJw?=
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: 28a19ee4-f424-4bd1-012d-08ddfac5e1df
X-MS-Exchange-CrossTenant-AuthSource: DS0PR06MB9877.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Sep 2025 17:23:16.3003
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: OfEzIlSDRwTepDGSHAsqwQ8Nigpx8QHaOTqIu2azLOHyL6ZeE+sIHKCHXETFs9lQ
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR06MB7550
X-Proofpoint-GUID: EKEO9vwNbVU5qurGv0WOjHV-0Vuw121T
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIyMDEzNiBTYWx0ZWRfX9r+sFizTujQH
 qB31lw4XV7EOoq2TwRcSa0U410pJabBlNmjtTpat43rPJ5tzYvkeuXXmVlztKLGSFarzjxwwOK8
 jq094KJ5uaYkKcylQWAf/TSzvtG9XC2m5ywHCCqpUwy10eSQZUvRj66oNkFhMLyRi8c6NSoRQfC
 1ixsziAyfQPfPmn10xRVqFBROZ9DBu4KxfQ5b7z4g3Cw0wt3GBv019xsj+FulG/Tyj8pUBmTDk6
 Co2yITKJfH0NoZOlH6CexVielWhZn3Ke9awLKOq9HVcSVYLfEcwSbJhXE6EpNj5u+lPCFYn0Q2G
 xEe+uHhIy6WUqo1++qx+pVCiTCSU7UDljZJYpxPdebnOdpEVSlK1u/je+b7WOMVEp7rOVTb3qTV
 yEflANLf
X-Authority-Analysis: v=2.4 cv=POIP+eqC c=1 sm=1 tr=0 ts=68d2d794 cx=c_pps
 a=jY48VJWlCesAGUsWasdw0A==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19
 a=R3fr6vWxGIgF0CYV:21 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10
 a=lre9DRYkaIEA:10 a=D_VmOLqjAAAA:8 a=B-KptlkNqxDqZLFuN2sA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=d_xflH664_jzgZDB7q-c:22
X-Proofpoint-ORIG-GUID: EKEO9vwNbVU5qurGv0WOjHV-0Vuw121T
X-Wisc_ValidFrom: true
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-23_04,2025-09-22_05,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 clxscore=1015 phishscore=0 adultscore=0
 suspectscore=0 bulkscore=0 malwarescore=0 spamscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509220136
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

The only time the character interface is more accessible than the 
graphical is during boot. IMO, it is inefficient to use a character 
interface to do things like read mail and browse the web. I don't do that.

But being a systems admin, I find access to the boot process to be 
indispensable.  Speakup modules can be compiled into the kernel or added 
to the initrd to get speech as soon as the kernel is loaded. Speakup 
works with a variety of hardware speech synthesizers and does not even 
require a sound card to work. Speakup is an absolutely essential tool 
for a blind systems admin like myself.




On 9/23/25 12:25 AM, Jookia wrote:
> Hi John,
>
> I subscribed to blinux@freelists.org to see what's going on over there, thanks
> for the recommendation. I'm well aware of Orca but I've been interested in the
> specific set of people that use command line Linux blind with Speakup.
>
> How do you find the character interface more accessible? I'd be interested to
> know how you think of it, do you think of it in terms of lines, cells,
> characters, something else?
>
> Thanks for sharing your experience!
>
> Jookia.
>
> On Fri, Sep 12, 2025 at 11:25:50AM -0500, John G. Heim wrote:
>> IMO, you are asking in the wrong place. You should ask these questions on
>> the     blinux@freelists.org list.
>>
>> On this list, you are going to get a lot of answers from people who are not
>> typical blind Linux users. There is a very good screen reader called Orca
>> for the Linux GUI. The vast majority of blind Linux users use Orca, not
>> Speakup.
>>
>> The main reason I use Linux is that until I retired recently, I managed the
>> supercomputer cluster for the Math Department at the University Of
>> Wisconsin. As you may know, every supercomputer in the world runs Linux.
>> Often, to manage a large group of computers, you have to rely on the
>> character interface. In fact, because the character interface is so
>> accessible, for a blind systems administrator, Linux is far friendlier than
>> Windows or MacOS.  I was lucky Linux is so dominant in the world of high
>> performance computing, it kept me employed in a fascinating job for my whole
>> life. I always said I'd work for nothing if that was possible. Like in Star
>> Trek, nobody ever talks about getting paid, everything they need just seems
>> to be supplied. That's how much I loved my job.
>>
>> I liked my job so much I am still sort of doing it. I recently published a
>> script that allows a blind systems admin to set up a thumb drive so that if
>> you boot from it, your machine will come up talking in the character
>> interface. Then you can fix whatever problem the operating system has.
>>
>>
>>
>>
>>
>>
>> On 9/12/25 12:31 AM, Jookia wrote:
>>> Hi everyone,
>>>
>>> I don't meant to hijack this thread but I'm a sighted person who's been
>>> struggling to try and make the world a bit better with accessibility
>>> stuff. I haven't really done anything useful yet, but I've spent a lot
>>> of time talking to sighted people who scoff at the idea of people using
>>> 'old' technology or being left behind because of their workflows.
>>>
>>> I know this is the speakup list and I'm talking to an extremely niche
>>> community here, but I'm genuinely interested to know: Why do you use
>>> computers this way instead of like Windows or macOS? They can do much
>>> more useful tasks.
>>>
>>> I've thought for a while that this is simply because Linux has dropped
>>> the ball hard with GUI accessibility, but I'm starting to wonder if it's
>>> really just because GUIs suck for blind people altogether. I know that
>>> screen readers themselves are kind of a nightmare for me to use with
>>> having to remember a ton of buttons, but having to tab through a GUI
>>> just to do things I could type is a headache. Maybe text is just a
>>> better interface if you're blind? It's certainly more precise and
>>> quicker. But I'm also aware there are things like hardware limitations
>>> like systems not supporting hardware synths any more.
>>> So I'm genuinely curious as to why you work the way you do.
>>>
>>> ---
>>>
>>> As a kind of side note, my current project is making an emulated
>>> serial to speech synth API for the DOSBox-X emulator. I aim to implement
>>> just enough of the DECTalk protocol to work with DOS screen readers and
>>> speakup, then pass that to SAPI/NVDA or speech-dispatcher/espeak. I do
>>> have pipe dream plans of turning this in to a USB espeak synth that
>>> could be used to read early boot messages and panics on Linux.
>>>
>>> But more widely I've just been thinking about how to make an application
>>> like DOSBox-X accessible that relies on a little fake GUI for its
>>> configuration menu. At first I thought of adding support for AccessKit
>>> and Orca/NVDA. But that only works on some systems, and it's hard to
>>> test and convince developers to test. They won't notice when it breaks.
>>> It also kind of sucks to use as you have to tab through everything.
>>>
>>> So I've kind of been more interested in adding a new interface a bit
>>> like a command line or menu-based system, with output by TTS or Braille.
>>> It would live in the application, be usable by sighted people too and be
>>> easy for developers to test and reason about.
>>>
>>> So if you have any feedback about any of this please tell me.
>>> Jookia.
>>>

