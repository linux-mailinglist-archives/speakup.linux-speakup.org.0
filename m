Return-Path: <speakup+bounces-1198-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id E5336968A63
	for <lists+speakup@lfdr.de>; Mon,  2 Sep 2024 16:55:48 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=math.wisc.edu header.i=@math.wisc.edu header.a=rsa-sha256 header.s=selector1 header.b=uA99j+IK;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 0B429383CBB; Mon, 02 Sep 2024 10:55:47 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id D97B6383CAA
	for <lists+speakup@lfdr.de>; Mon, 02 Sep 2024 10:55:46 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id D0284383CAA; Mon, 02 Sep 2024 10:55:39 -0400 (EDT)
Received: from mx0a-007b0c01.pphosted.com (mx0a-007b0c01.pphosted.com [205.220.165.71])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 3884D383CA7
	for <speakup@linux-speakup.org>; Mon, 02 Sep 2024 10:55:39 -0400 (EDT)
Received: from pps.filterd (m0316038.ppops.net [127.0.0.1])
	by mx0a-007b0c01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 482BhMrs009364;
	Mon, 2 Sep 2024 09:55:32 -0500
Received: from nam11-co1-obe.outbound.protection.outlook.com (mail-co1nam11lp2177.outbound.protection.outlook.com [104.47.56.177])
	by mx0a-007b0c01.pphosted.com (PPS) with ESMTPS id 41cnp8dg8c-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 02 Sep 2024 09:55:31 -0500 (CDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JwVVvo1+hHWgHEg3M4wg2WZwX6y/3P1UN8bxn3rVIXLu1XIJeGSeIvYAf1eb085Tc1ATLZrUecUYkrei1YzENrz3rutXUFoQOMKzgm0FhQGMXyEJISPTXoQYAS8XeLVyrT/N6VI/olr440RxgBXSujyF/K7TGFLP3P+45HZ/2LgpVHgqqkoOgM5kTlbR0kQ4GjSQ64+8YXR3cHPcDH/0MZ2IKXdh3XGS4DQ7UT9a4cgsQsxtJq48JtBjk+Th1PKveskF4WvXMEzlHrwHZxtNDwqPwiUqCjVOiP78ZRLhKZe/Fu3zxYzKB1lJtsVPL1bc4MFZZ6UBH0+rkt7YaR6Xtg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GaCTA+qII00J7h19BOw88T6PZOPtWzQb1DUOw6zLsJQ=;
 b=KaUzv8XQLl2QkHrmzcDXSUvs9g5b3DJoBINgsz4wBk7FsbS+k1SFJygvqlriADqc6M+IK73n1cMqls1pk9asj7ciMySQVpD8QvPNS+7DoieZONSkEbYmmmi49oSw93bSA5P+LYY66O62COWOxHI1Y1luadJjpg6Je9snIJLRiysOsHV/6+pP4NknF7SuV3hgz53b+q2jCTQguuXgTjZztHTiQyxQ2a7+qqy6ibkNqflAfxAZXQq49LGifHUwStbREvkYLO8/Sb7nGAumchc445xd1qE50+Q31QDSKd3FMtmGj3rq1qzSRn9WZ3JkD50HHtBX3Befyd+Oxu44IfVGQw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none
 header.from=math.wisc.edu; dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=math.wisc.edu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GaCTA+qII00J7h19BOw88T6PZOPtWzQb1DUOw6zLsJQ=;
 b=uA99j+IK0TM6ATB/p8yr2R9NGIkWqnwmQAAgJ9ofRSJWzkpxEPY2LBc0oBwoXw2l+aZZOLutWldyeJNIrZjkLZAK/KCIXCuXVB97ii0eE8YIK1/F+I2iTk3V16x4fxFEUUvoSiRP0phQ+ydHizwHZgP40oEvZ/+UqZFfL0ICG9E=
Received: from MW4PR06MB8441.namprd06.prod.outlook.com (2603:10b6:303:12c::14)
 by PH8PR06MB9128.namprd06.prod.outlook.com (2603:10b6:510:23b::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.25; Mon, 2 Sep
 2024 14:55:29 +0000
Received: from MW4PR06MB8441.namprd06.prod.outlook.com
 ([fe80::1e0d:706b:3a:45a]) by MW4PR06MB8441.namprd06.prod.outlook.com
 ([fe80::1e0d:706b:3a:45a%7]) with mapi id 15.20.7918.024; Mon, 2 Sep 2024
 14:55:22 +0000
Message-ID: <e7b27ee1-63bd-430c-8d66-d6dc9e9829ec@math.wisc.edu>
Date: Mon, 2 Sep 2024 09:55:20 -0500
User-Agent: Mozilla Thunderbird
Subject: Re: SPFUNSUPPORTED MAY BE MALICIOUS CLI Terminals with Speakup (Was
 howto run speakup/orca concurrently in ubuntu)
To: Willem van der Walt <wvdwalt@csir.co.za>,
        Martin McCormick <martin.m@suddenlink.net>
Cc: speakup@linux-speakup.org
References: <ZoieyBFD0TXlL_bd@cudneys.ca> <ZojtZ3RQxdiZaMN1@gregn.net>
 <E1sl62C-0002oX-0Y@wb5agz> <b47611eb-67aa-5c99-07b8-3b31b4168e67@csir.co.za>
Content-Language: en-US
From: "John G. Heim" <jheim@math.wisc.edu>
In-Reply-To: <b47611eb-67aa-5c99-07b8-3b31b4168e67@csir.co.za>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: CH5PR03CA0008.namprd03.prod.outlook.com
 (2603:10b6:610:1f1::26) To MW4PR06MB8441.namprd06.prod.outlook.com
 (2603:10b6:303:12c::14)
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
X-MS-TrafficTypeDiagnostic: MW4PR06MB8441:EE_|PH8PR06MB9128:EE_
X-MS-Office365-Filtering-Correlation-Id: 9f026871-51d5-4872-4d3b-08dccb5f4578
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|41320700013|376014;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?YU5sM2tialNoV0dSSDBvaGZXZ0RMYTA3V2VXUzRRK1VoU25wWG5TTTZaRlhC?=
 =?utf-8?B?TUpyWXcxTjNuNTFuSDBncFNpVmlRQ1pBTlVRTzl5WGY5RmlBbThid1YxZVhl?=
 =?utf-8?B?RE9NWFVMYVR0KzhINHpmc1ZwcG5FYVRhU05TTHFzVmx4L0hnbWl3SXdNUUNK?=
 =?utf-8?B?c1BOc2xKUlBFMHdoTVdmVW1lNXdSVHAzcHYrV1pxYzQ0MGlDNVY2eGViaGJG?=
 =?utf-8?B?OE51dFJpcTNlTEhPZ251YTllOHFaWWFPdjBMbzFGZVE5aUxDZXZFWERmMTZE?=
 =?utf-8?B?b2Q4akRpZVpxdnJKU1J2cEU5dFJvZ2VhdS9sbGs1UnVlZkM4bldnclduUFFp?=
 =?utf-8?B?U1JrZXo5OE5rdldVd2dwdk1uR0RHMms1OXlFTUVNcnQxMjlZQXErNUtPUkZD?=
 =?utf-8?B?T1BPR1dNdjJLSzNLQmRoTGpVSTV5VW1BL2piaHBiYkxUVmdZeVBhTEIrYkJ4?=
 =?utf-8?B?MmtyQjdlQ2hDMC9IaXFiVDl3OXV5MTROUXZpM1VqUDFiOGREcjh4OEZoQlA4?=
 =?utf-8?B?NTlrUWhNaU1xZmlYSU5aV2x3ZUpmYjZ3aGNSdjBSbzBXYnMxMzVycXA4QXo0?=
 =?utf-8?B?Q3ovY1BFQnIxOGlZeFphQXIrMlN2UUJneE50TjRpa1dCdDllZE9abUg5UU1K?=
 =?utf-8?B?dmY0RG55ajFxckdvZDhoSXdGTU5ES2wzREJsV25aRkx5NlRYTjkzcC9kaHhE?=
 =?utf-8?B?WGd3QldqUDBFdlZxNFU5WUg2TTBhVnU4aURJTDNjZHM3YzV5Qm1wSTRTbTRm?=
 =?utf-8?B?b3hlMzNtUkhzZ2JrOStJRk5YNTUvRUVnVmVKODBOVkd1ZTRTRFlzMU5XeTl2?=
 =?utf-8?B?Ujc4RGpBV0xjM3JOU3BQNmhYaDBKclBqczNXYmhtRCtUY2hObmxoSzFsZ3ZF?=
 =?utf-8?B?eEorNGVEem1kbzBYNlZQaGRjUG5TVDlkVE9oZ3BTMFRaQnlkd3FSMnZCZmQr?=
 =?utf-8?B?anVzNTBtUHRMd0lhcU5CL3REeUZralZPU3Zma0lvMUt0WkFia0NPQ1J1Szgz?=
 =?utf-8?B?TVZvWlh5OS9uZkZ2TksyUGJYc2UrcnduWXNqUkt2anJBdEJhODJlaVh5WnBv?=
 =?utf-8?B?Z1QzNUNMU09mZTdxblZVL0NDZkFLeE90blJHaTllYU8xaFpWUFJBaVZkSzgv?=
 =?utf-8?B?bkd0Slhqb1FjaFZwbGNDMjJma2RjOE5uNk9oOFZ4REFxYjl4QWlqSU5ycXB2?=
 =?utf-8?B?Vkt4V2crNzVhY2FHWnJtZHdsQ0FZOEhQR1FsNThZMHY0dkx4M3Z6amRUN0cr?=
 =?utf-8?B?a0ZOV3VQYmVWTlo1a3cwOWZ4eVhQblc5T3JWNklSYVdoSWI5clVXUTZYRVNB?=
 =?utf-8?B?dmlWd1VoQVpSdHczWitYYjlOenIyN2llUHpxMjhVRDlZaU0rVS92REZGOUtT?=
 =?utf-8?B?RjVLWjdRYktrR3lIMHNBMHpBRjR0ME9ocjN0akdUbDM3VHYxOEpaVER5VHds?=
 =?utf-8?B?amorZjAzb0xraklrREJqdERTUC80VGZqNW5DTlRJRGh4Ky9LaXpvT0JWckc1?=
 =?utf-8?B?YnlucUU1M0N4d3lMRnZjSkcvZThIKy9MTHpha25vanR0cTJ4OFVORERSUkNo?=
 =?utf-8?B?OUJla2VBQ1VDNno2Tjh1RlA1c0pGNHBFZ3Z1cEJUNWFkcWtENG0zTlh5SVVO?=
 =?utf-8?B?RlpvNys0SUtaU2Job0ZpR1VlSmxlZlBMZ3IyajVPRTRrR0UyaFRqOFllNzRH?=
 =?utf-8?B?N3NaY2NpQzJDUmFxaVJ5T2x1ajRmUzRVVXRYMjFmeFRnY0NPOGEzbDBCWXgr?=
 =?utf-8?B?VXVyNXRXcEw3VjdPdjBLWHp2bDZuR0d1alA2WkpzUVpJVElmN0VHUEVvelQ4?=
 =?utf-8?B?cmlwck10YWNWNzFXNlNXUT09?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MW4PR06MB8441.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(41320700013)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?TUVPRnJkdVpSYllJRGh1SzUxYVJiUDJBa29VTEFrREJUcmFDUkJjMmR3WGU3?=
 =?utf-8?B?VWRFMTFSNFR2TlFBV1VSU045bk5RYTRPYzljNGNCcUVZWGVoMFNuaC90Zno5?=
 =?utf-8?B?dDZsS0VnNDVIOEdmT2dsZVl6UnMzaHZoRTJJWXJZTmhTTjF6a2kxN1VyNEEw?=
 =?utf-8?B?TXRLK3lNQUpDUEp4YTgyUVd2QXBkMkszOTNHcmROYVhUVE1PS2oyV3Awbk0r?=
 =?utf-8?B?d2MwU1dheFM3Sk9Ubm80K2d0WHh0US9IbEdkMTNVR2FuTGVQSEJIWVkwbjlZ?=
 =?utf-8?B?QTRmRldGOFlXT3ZpZ0hzTHlxT043cjBhL29aSEJ5d1BWRDZVaXU0bVhoUFE0?=
 =?utf-8?B?NFVGa0llNzErL0grZzNwWldOckIwOEd2RHRBL2gyY2lqNVdyNUtoZ21Od0Vu?=
 =?utf-8?B?ZDA1N1gxVnI3bDUyVDVudCtPd0lZbHRyeEE2aEh1bXBheGpZWU5IQ1hIcEpG?=
 =?utf-8?B?SXZqUWM5ODlCZi8rZmlWS2pXS1lIaTgrUk1jMUtMOFFHM0p6MFVldkgvUGxQ?=
 =?utf-8?B?K2QvQWhpQnNaV2J2K3R0dFlETnpUL0p3ZjBydS9tRE8wdjVqWFk5dzFWc3Fy?=
 =?utf-8?B?d1ZselE2a2pYbndCWTBPUURtR3JNOHNMV3ZOVTNsd29XUi9PVXZkbENnTTgz?=
 =?utf-8?B?bmhOSlFsMnlFdjJqMDkveWcrM1RJb3Bxak1ObWVuRDRFKytENFkzcFUza3Uz?=
 =?utf-8?B?c1NCaDlCWTRUbjZ2Vzltd1l1SmZDakZPM3duTFgrNFdyZmZOeVdRbnlObjRH?=
 =?utf-8?B?d3pxZlRQY0JjbmhFNnovZGUvb2JxRGwvMEh0NXYvY2pkTnkrVWg1aWl6bTc0?=
 =?utf-8?B?VlNySStBTVhvNjUxOTc0aWMzQUFpYndDWUhLcHNrZW5CbTgxWm44MzRuWDRV?=
 =?utf-8?B?bTR6elRLVWRGOXRvcjJWOUQ3RVVmdzJFb09NTW9wQ2xjVkFDNFhYYkdzVVBO?=
 =?utf-8?B?NHpwcFVHMkdGNmZBK2FSdFV4U25rOWJKRHRGYmNCM0ZWdXFpWk9vQWJlNngr?=
 =?utf-8?B?WkwxM0JZQ0VmcTFuOWhGK2hpcm9HbmhmQWRVbG5yWWZqR2ROUEtnZjFTMnJZ?=
 =?utf-8?B?b1ZUOE85WmJpM0doRWJ0eFNLbjJ0MGJuenlhMVdOU2NFNElJYWNPY0VUZWpR?=
 =?utf-8?B?Ym1BWWlNQ1BFV3QzUTR3bFRMQnZSUkxDenMwS0pjZ0tMK3k5c2twSHFsNE1G?=
 =?utf-8?B?QTF1N2todS82NW1EcEtyVEhvc1h3UkpEeksvQm9DcFkrWnNUcXFMbTRjY2sv?=
 =?utf-8?B?NW85SkFpWW1EZElJSkhvMUNjRVZLSXd2RDUyR3ZFM0pHTEJGYWtMMVVHczJO?=
 =?utf-8?B?TVpKN1RNZjBIb0oyRkVtZHlFVjg1UEFmNTh6SVVaSzFsTFJOOVJXMTRIWGNS?=
 =?utf-8?B?SlIrVzJtZXgwUHBkMDFDekcrTC9GL2FWdDJ6a1VvRDhjUEMrcjI2NDNtVFg0?=
 =?utf-8?B?Y296RVppREMvTnc0KzBZWkRPbysxK2Y2OVhWQU5QVEtTZGNmejh3OFRZMGlG?=
 =?utf-8?B?c3p2TWVDR0pBMjFJckJYUXJBQ2RKb2FFMFpSK2ZXVDF6blk4MVVGOVNmYkhu?=
 =?utf-8?B?VkRCUENiZEdCRlNmWUt2UUtUcm9rSEJaSEJleks4NU9GblZtSUdBMEVjdmxU?=
 =?utf-8?B?UjhLZUpiYVlrNTNiRDBzT0pmSUtOKzJ3SnE2dkFkUFlidSsxbDUvMFBUTjFR?=
 =?utf-8?B?Z2VTYjJReW9vZ0VtTkNqWGt2cVdtTm1uRnkzTWdqSHJYaHhXdnltSCtQSnZa?=
 =?utf-8?B?VWhQMUdhMXJqcEtpTXBwWjlwZTRvWDYwMzhwdE5lZW01SFBsUG02bnlQbFZv?=
 =?utf-8?B?am10NlUxL1JDWVhLcFl0MERQNTZZOFUzMXBuWWhXSjZFaWEvVUVxdXNuSmQ3?=
 =?utf-8?B?L0owYUNhRWpRdzA2Vk9ONktCTGlvVHZiRDZ4Vy9BTlJVNS9BOVptd2RZVFZS?=
 =?utf-8?B?blFYVlJOcndmYmZwNFNscUhNY3hOOUhGV3VsQlBCWi84UWVwb2dDNWdjWENM?=
 =?utf-8?B?NDh4SWNSM3lkOHBGVERIZWc0Znd2dHpzaGN3MXdJRG1udkIvV3ZXVFF6b3pq?=
 =?utf-8?B?RkU0MFkvQnp2Sm9vUFNFTFFORS9ETi9PeEpRZkFMZUlkSGVwRGN6MHIzeEVR?=
 =?utf-8?Q?qGYc=3D?=
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: 9f026871-51d5-4872-4d3b-08dccb5f4578
X-MS-Exchange-CrossTenant-AuthSource: MW4PR06MB8441.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Sep 2024 14:55:22.8757
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mnPO/E8aGQkpfzuDbre8SQ6VFjASzwg5CgcAzLPjwcdr18u75Ww4jSl4dV+tVrB2
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR06MB9128
X-Proofpoint-GUID: Tcu0TuoL-sipPqIL8BmWtz7jeUQnDUBR
X-Proofpoint-ORIG-GUID: Tcu0TuoL-sipPqIL8BmWtz7jeUQnDUBR
X-Wisc_ValidFrom: true
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-02_04,2024-09-02_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 spamscore=0
 impostorscore=0 bulkscore=0 adultscore=0 priorityscore=1501
 mlxlogscore=999 phishscore=0 suspectscore=0 malwarescore=0
 lowpriorityscore=0 clxscore=1011 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2407110000 definitions=main-2409020118
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

I haven't tried this but it might work to make /usr/bin/pulseaudio a 
link to /dev/null. Then updates would just be written to /dev/null.



On 9/2/24 7:55 AM, Willem van der Walt wrote:
> Hi Martin,
> Get rid of pulseaudio and change your speech-dispatcher config to use 
> alsa as suggested by Greg in the bottom of your message.
> One easy way to stop pulseaudio is to replace /usr/bin/pulseaudio with 
> a file that does nothing.
> Each time you update your software, you might need to put back the 
> file as the update stuff will overwrite it again.
> HTH, Willem
>
> On Mon, 2 Sep 2024, Martin McCormick wrote:
>
>> This message is slightly different in scope than the thread I am
>> referencing which was active slightly less than 2 months ago so I
>> didn't want to hijack it but instead have more questions.
>>
>>     The system in question is running Debian bookworm and
>> Orca 43.1 with speakup and appears to be doing that fine as I
>> have run firefox and done a few other GUI activities with no
>> unusual issues.
>>
>>     For the longest time, I thought the alternate consoles
>> didn't work but Control-Alt F1 through F6 seem to work now that I
>> know to use Control-Alt instead of just Alt-Fx.
>>
>>     Control+alt+F1 or F2 gives one a choice of two GUI
>> consoles and orca works in tty1 and tty2.  Tty's 3-5 are CLI
>> consoles and I know they work because I have a Bell character as
>> part of the command-line prompt and the little piezoelectric
>> buzzer beeps and I can log in to them and call alsa-based sound
>> utilities such as sox and there is proper sound but I would love
>> to have the old-school speakup command-line utility there because
>> that system just works when dealing with plain text, very well.
>>
>>     Right now, I can either get on an older Debian box from
>> the 8086 era and ssh in and run lynx sessions or use gcc or g++
>> and all is great.  The other thing I am doing right now is I
>> have a Raspberry Pi4 with speakup running on it and it almost
>> works perfectly except that it seems to have some sort of
>> buffering issue when reading a long text output such as an email
>> message that covers several screens orthe output from doing a
>> build which may go on and on forever, more or less.
>>
>>     It seems to be a Raspberry Pi problem as I tried
>> everything from a Pi Model 2B through a Pi4.  The faster
>> processor in the models 3 and 4 were some improvement but it
>> still ends up imitating someone who is out of breath several
>> lines in.
>>
>>     The Raspberry Pi4 isn't a replacement for the 8086 system
>> because of that buffering issue but it sure uses a lot less UPS
>> energy and having the CLI consoles would use even less energy.
>>
>>     The systems I am using are not multi-user systems so
>> thankfully there is no security issue but it would be nice to
>> free up the Raspberry Pi4 which talks and should be fine for
>> other projects, just not for long-winded text output.  The other
>> advantage of having the CLI consoles on the same box is greater
>> simplicity of setup.
>>
>>     I also definitely do not want to ruin orca as it is very
>> useful, just for different activities.
>>
>>     Any ideas on how I can have the best of both worlds are
>> much appreciated.  Thank you.
>>
>> Martin
>>
>> Gregory Nowak <greg@gregn.net> writes:
>>> Jookia's page lists one solution to the problem. The other solution
>>> which I personally use is to get rid of pulseaudio since I don't need
>>> it. If you do that, you will want to change the output from pulseaudio
>>> to libao in /etc/speech-dispatcher/speechd.conf if you still want to
>>> use orca.
>>>
>>> Greg
>>
>>
>

