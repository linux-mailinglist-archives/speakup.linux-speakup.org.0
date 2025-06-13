Return-Path: <speakup+bounces-1304-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id CB51FAD90AA
	for <lists+speakup@lfdr.de>; Fri, 13 Jun 2025 17:03:35 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=math.wisc.edu header.i=@math.wisc.edu header.a=rsa-sha256 header.s=selector1 header.b=V7+jt1zx;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id F11513824C6; Fri, 13 Jun 2025 11:03:34 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id D06FF38203F
	for <lists+speakup@lfdr.de>; Fri, 13 Jun 2025 11:03:34 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 87DB738203F; Fri, 13 Jun 2025 11:03:27 -0400 (EDT)
Received: from mx0a-007b0c01.pphosted.com (mx0a-007b0c01.pphosted.com [205.220.165.71])
	by befuddled.reisers.ca (Postfix) with ESMTP id 9573338199F
	for <speakup@linux-speakup.org>; Fri, 13 Jun 2025 11:03:26 -0400 (EDT)
Received: from pps.filterd (m0316040.ppops.net [127.0.0.1])
	by mx0a-007b0c01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55D9dwkP024213;
	Fri, 13 Jun 2025 10:03:00 -0500
Received: from cy3pr05cu001.outbound.protection.outlook.com (mail-westcentralusazon11013025.outbound.protection.outlook.com [40.93.201.25])
	by mx0a-007b0c01.pphosted.com (PPS) with ESMTPS id 4780uaet0e-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 13 Jun 2025 10:02:59 -0500 (CDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=C8iKJl9D00HHGBUFHKmmQA4WjBypefXBzTDn/VcXaaiLSzAVwzw/E1RAv3X8/GkNAUNDyq7uXv9G155zSfCR4mfoD8r9XrcWMCKO5olXBFZdUPYS0X9sr7GQ5XDhQHX30mnLy9qk2s/EcGMaSY9h4UECgh7VNx40pnuIvQueTpc0LS4KNomOqkEasYuwUNxNdnVZqKCupPRNPEn65t222bpv0AnFfOWcbUFX2hOyDI7x+3ryujlK1FrCn/Ns0yjQXKsWeV5wvASVsyttmOT3vd6XpD+RBv1e8KIOZs07uV5Ab2phLWY6ifgX4+cN46WOZ+Zvq3Xw9fbAUMs0nMgNqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AxW/5t1fceycpMUx6BgpDDUv/mKE60a4VkWNufXc74g=;
 b=MKxFP4pTcl+gBPvBq2Y0gxBIy7+Lv80bNfWHcOKK6C7rgsxx/3gu/1SMkvxRs9Wqti0PPl2LMGQV7T19D33H3FoN4HbhC+twGqTqTsLqfIvvyIKSSYspUiGnoszg1B45BP+peH2ieYhGr1hQa9IawWMACKuUt7V6lA59/W03YKzEvKOsd/p9ooGTXq1rfpMLYVdL9uYc3hmUqcphrIeNDil+E7lOlmt4tVWUN/oUoT9zIn+Hf2oQjw3Hoyou2jzm0lZirNOVcQB+BW3eXDXoB7UiMSqerVssxSAd2KBd5PuMIz5RcCMZKxF6NzYSAyJI1EGUXGcRHWTdM/OClVEhEA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none
 header.from=math.wisc.edu; dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=math.wisc.edu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AxW/5t1fceycpMUx6BgpDDUv/mKE60a4VkWNufXc74g=;
 b=V7+jt1zxUxex3zojeU5tJP+FlJT/zX/6QB2+u33Nui5vH8oJEvQnifMKx4YqgYEw0cXT0KwdEgTyqCVB20XsbHCfTtr/uLR3q9VobLSvLytskpxJ10Ftf5Egtpvt9kglpinoylURnxyJvRr2K43E7D3TnJZd+/o5S8MCsvtcBKaWQsAXXKe0NvHG28sBqV9YQSC28+7g9Z5ND+ePx9xtbAveBeP3GFfo74u5g3gbog4d2+KZMHqL8wAY/uGIIQGaCCtpe8TrDWropm26kJNr4H6kXxm1ipQyuQJjUhDY45N4E8mzTZYYXCU/ISAUpYvVyEcxUUSoDqTkqnDBfsTT4g==
Received: from DS0PR06MB9877.namprd06.prod.outlook.com (2603:10b6:8:1d5::14)
 by SA1PR06MB8038.namprd06.prod.outlook.com (2603:10b6:806:1d5::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8835.22; Fri, 13 Jun
 2025 15:02:58 +0000
Received: from DS0PR06MB9877.namprd06.prod.outlook.com
 ([fe80::a347:6162:9bfd:9b91]) by DS0PR06MB9877.namprd06.prod.outlook.com
 ([fe80::a347:6162:9bfd:9b91%3]) with mapi id 15.20.8813.021; Fri, 13 Jun 2025
 15:02:57 +0000
Message-ID: <d4491887-9789-4252-ab73-d175a3bedcdd@math.wisc.edu>
Date: Fri, 13 Jun 2025 10:02:56 -0500
User-Agent: Mozilla Thunderbird
Subject: Re: Tripletalk mini
To: Jookia <contact@jookia.org>
Cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <73297c7e-9945-483b-a9d3-e347ab217d59@math.wisc.edu>
 <aEwFDuQX7iT3xmzY@titan>
Content-Language: en-US
From: "John G. Heim" <jheim@math.wisc.edu>
In-Reply-To: <aEwFDuQX7iT3xmzY@titan>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: CH2PR20CA0008.namprd20.prod.outlook.com
 (2603:10b6:610:58::18) To DS0PR06MB9877.namprd06.prod.outlook.com
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
X-MS-TrafficTypeDiagnostic: DS0PR06MB9877:EE_|SA1PR06MB8038:EE_
X-MS-Office365-Filtering-Correlation-Id: 8f8c3cd4-f75a-4379-49ac-08ddaa8b616d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|41320700013|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?WUF6ZnhPTUk2ZVg3WW51eW5reXhjODd1YlJDcERrSXZGSmROenowM3RPMWl0?=
 =?utf-8?B?NnI1TXp5bXd3TW1nN3g0QlQ4T081YVVyY1BpK3FpR1c2NitFVTNpYzVVKzdw?=
 =?utf-8?B?VjdPc00wQmlRc2gyS3ZJR2g1QW5kSy9Va08xU1BTYnJWeDMyWThaQm1GcHhT?=
 =?utf-8?B?MmdFTXZ1cnVrbUNBWG5lMFlEZkxBc1UyYytlcHFOK3ZueDUzc2hUM1MrRG5E?=
 =?utf-8?B?clkvWVFaRnIrUkhRRVlHMmpBU3YxbTZrNW1JZkJUZGw3SU03b1V4T1FJTXhI?=
 =?utf-8?B?NU1QZTlCWk9FdkJtT293TktobVZORUxiQlBMQThwN21NamJLaW1oQVM3YS9J?=
 =?utf-8?B?allrM3BmdHhnVkhzNGJ1TW9HdFVmQzlNNThreEF2UVBYVzd4dGFNaHV4RFBD?=
 =?utf-8?B?SHZxSk13a2NKRnE0T2tZd0Y1YUJuL05McDQvWnpQdUo2TmJkM3JGMEh0ZCtG?=
 =?utf-8?B?OTlxTzB4TUVXdW5HVzhKTHBORHJwM3RSeDF0dG16WG9zRW9tZWVMUnRGaXU1?=
 =?utf-8?B?UE5kbUJIZUkxdVNMLytlYWdaNVpGKzU3Y0paaTdIYWVxZEQ2WU5DakptRWN3?=
 =?utf-8?B?SDluSCtHRFRWbC9DcE5jb3RmNnBGcVhFa3p2a1ZpNnlJR3Z6NkhyM0Fscjdh?=
 =?utf-8?B?enFNTnJDdXErRHJmeDFnanUvOUF1ZlJlb3oybEp5L3prNnB1bTh6cFdBMHc5?=
 =?utf-8?B?Zm5ncTRLNzU4T1RjQU45aTVHdmtlWU5TcUlEWU53a2VIckJrMTRjZ2RPc3Ev?=
 =?utf-8?B?ZHl3dVJrbE5qL1pONngyNlNDdWcrOFh1RTJwckY4WFc1ZHFHMzUxL0FHem9E?=
 =?utf-8?B?Skp4UW1yMEhWVFlLZkRva0V1djB3by9uaTRiL0YyWEdobVAxUUs0cGdWSUxR?=
 =?utf-8?B?ZGUxRVFra0UyL2pFcFNQOHhheWJsdmYwNVk3c0IreVV6MTBCQUM2b2VzY0lh?=
 =?utf-8?B?VEduMTUralQ5cDE1UlhVSTFpY1EwaGZPOUozN3h5Wll1ajZaZGNiWDVLdEI2?=
 =?utf-8?B?Zy8vemJxMmtkRHo1MGZXcmZBMXd2ZGxnWTM3SGw0RmxPL0g1QW9zWVFscit0?=
 =?utf-8?B?U2dkWjArRHA1b1ZzbkRFd0twSjNqWFQ5UC9Xd3dZaHBtVDBiK2VFdkp2MG91?=
 =?utf-8?B?eDhpNVJFRDhuQ3VlM25QRUFjZmJHT0JsUysxSzVvc0o5VHJlckZ0WUozbkx2?=
 =?utf-8?B?WS9uT0g4M3hlUFdKdVhWN3FEVmh3c1FRdXE2VVVhYXJnMEgyYzNiWEQvWjAw?=
 =?utf-8?B?TEVTVEZjODQ4TmM2NmdmQXdHVklGOFZBa25ScEo5L3FIK1RqNnZ3TXVwb3hZ?=
 =?utf-8?B?Unlkay8zdjR1OGs1bkRnMmZnNTlXK1pnNm9oTlUvV3VBb3c0SEVjc2Nnc0RU?=
 =?utf-8?B?UmdrUllkTlVVelE1em5mdFVGKys4QWVGNXpRMzN5Wk9Yd0Z5aUpQb0p5bVZH?=
 =?utf-8?B?UU5MMUlHaTV0b3F4enNRVGllNTRUUzZBNTFJcDhTdU81QnZLUVJNYmYxZFNr?=
 =?utf-8?B?aWFpSm5LcWZWbGxiNlpBekdGTmpXNFZsUW82QlgyazRHeERiTnlvZ0IzVU9B?=
 =?utf-8?B?cTJ3VjBwb3pUODhNT0RxazA0L3JZeVlBSDVBOFl6SHZKdE0valJpb3dMK2I1?=
 =?utf-8?B?UitqUDB3dlpwTU1RY0FUd1V3aE1wSVFKWVNTMW9ucHBkWmZENmRFZk01T01l?=
 =?utf-8?B?M2t2WmpWS0lDakhCMXpIUGhkVEZsVDFQYUhFVU9RWURwVUZUVW0wVG1FaWRF?=
 =?utf-8?B?ZHIrTTZpUWpsY0hnckJ3dWZUSTBjN0YwRUVPNUVJSXVzZGFjbHNkOVU2Y0sr?=
 =?utf-8?Q?WYSh290hEKAk1Y/j3Yu00rx8a5GRkZkf/afz4=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS0PR06MB9877.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(41320700013)(366016)(1800799024)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?VWlCSzVGV01iQmp2bnpzM29FbWpaSkVKaVhTZ1ZmM1EySG40TFhrdllYbGM4?=
 =?utf-8?B?QmV5d1N2bnFmb25HMjRTSXFhRGJGU0w1d2pkeCtyd2owdktpVk9KajFpTFQv?=
 =?utf-8?B?S1NyakZENmh0NXlkUVdRbCtzSVJpZGZVaTFsNXNrZjhadDRpVkljMVVXNktU?=
 =?utf-8?B?S2RHMk9iNEJDTWZwOEhMcmdWMVRuWDZ4U1dsc24ycXQ4bUdkQU1nUE8yaGVD?=
 =?utf-8?B?cU1OTXY5ZUo2U1hRNGZhN1ZMRkRXMVBMTlNBSmlLZDlCUGdTb1NGV0RJWVBt?=
 =?utf-8?B?V3VKRExHSkhKR0pUV1FkbnAyV21UNWlMcXpGZ0pmcitBVWt2T1VEaXV0clpl?=
 =?utf-8?B?Ui9reFcyMUpRTW5hU3gydWtEemovS1hTSEtUK21YZkVQQStwdVlsd1luYmk5?=
 =?utf-8?B?ckcrL3NPWStpOXQyeWwzZzFwck90czlkeCtURWsvVXE1NUFYNHp4WmlLVTZK?=
 =?utf-8?B?MW1PRHZxNjlTZC9qYThEakhOOVcyV094NzI1YVNvdVlGYlQvcFIyN2dEMVJT?=
 =?utf-8?B?NlNvMHYyNm42WEtaSmV3SGQvdEdYdHV3ajRJOTRhYXdYZW5OY2dkUHJRWEdX?=
 =?utf-8?B?ek1uMnRES1JPcit4N1V3RVRXT0dNbzAweWhra3NkVnkzT1Y5VWtXUXJ0bXJ6?=
 =?utf-8?B?UG9SSkRhWThoOUJNeFcxbjI1MGptWmRJNTZBK0ZBQWNGZkRuYmcwbnl2KzM3?=
 =?utf-8?B?elEyaTlwZnlFM0tncGVyMHc1aytCUEpHN1ZwVGJNLzlTUHNPRjZQR2VUMG90?=
 =?utf-8?B?SXNxaDhNcklXeXI3MjV0bklIMTRTSGRqcGtWb0phMDYrNDJ2R2VkendjWk5D?=
 =?utf-8?B?dU9tWk9TMXI4dnNMeEFIM1loYXFSeFNvNnlBWThDTDVSaHdYZktqUGZYNHhy?=
 =?utf-8?B?TWNCam1CQWFFWWtBeGVEU3ViY0VNL1JVUkh4Q1ZDZWRKMXJPbllNbDJkc0Nu?=
 =?utf-8?B?dUI5bHVvNjkxczlyRzZvNjM4Z0s4NENZVmRncjFVMklrZVdldVVOZGxNZmMy?=
 =?utf-8?B?SkVvSTYwNlVTYURkaGN5b1ZVdE9TMXVTZzBKYmZyTFgreDNDOHNQZm1qM0dq?=
 =?utf-8?B?MUdlT1JBTU5Ib0hMS0dDY2tKdGpTaDBpWEFDTWlxeEdjQ2xibTVQMGljUlJj?=
 =?utf-8?B?TUNQcVRrS2ZlWENtNHlGa2VCYktnYlFrd1duclVQNkd3YUx5SzM3UHBNaWJv?=
 =?utf-8?B?SGVITXFLckVYOG5BWTNxS1pwd1pWeVB5U05VeWxXZjR4UmxwUnBKMng3OHBM?=
 =?utf-8?B?S3JxSFFuRHJONU9OY2dxYXpaMmN0ZW8rTXk0K2hQSTlsdDR2dmZMUlJMdmdP?=
 =?utf-8?B?UzI3RnZtekh3MGxWcEpKdm41Yy9KZVoydTNXYW5Dc0FSOWNFbFpEVGJyckhG?=
 =?utf-8?B?MU11RW05ZEpyQVZHKzlFU1ZQRTN0dEE3VnFsdVpRQzdLYmlibitTS1NYK2V6?=
 =?utf-8?B?SFM5OGpVZVlQdWovRGJDUWFSYWl1ekJzNGhkbmlweVc0TDMvWm9uRmJNd0h5?=
 =?utf-8?B?WVM0ZGlrNWZyd3RNVzJtOHBUR2QwR0xRc1NnUnluYmwrTkJDTVBVUlR2Y3ZI?=
 =?utf-8?B?YzVOcllZMmNQM3RDZmo1OEJyTkVlbEdEVWlyMk5JNjdmekJSU1pWTW02WUQr?=
 =?utf-8?B?VVlyb2llNmxoK25jRFg1R2VaTDQ4aTdtaC9oaWViQ2NFVGp4VXZxYkxDMHZP?=
 =?utf-8?B?VDZUcEFzMTRvd0xSS1MxeEE0ZVI5YUhsTzE0SjkycHRTTnhFajBjN0RMMVBt?=
 =?utf-8?B?NVBqaUx4aG80eDdUSkU1NVZRV0ZKeG1hNnZVSlFlTXlwRmhQRHZ1NmdFYklw?=
 =?utf-8?B?TDA1U09YaForV2xGd0dxeGVUSzFPdkI0K05HODFHTXpjbUVEOHQxWWtNdW9i?=
 =?utf-8?B?UkhoVThzcDN1NGNNY3RUWmZxa2Q4Qjk0Tnh5ZFZpdWNVRm1yQjhOWUZCU2JR?=
 =?utf-8?B?dXp0U01zS2U0VkpWdVdtMGs1dWhpaEdJNzNKanpUVVRSbDYrODVzZWtET2xk?=
 =?utf-8?B?UDI1a0t1eWZ2MXJpdk85VTRvc3Z5djloTUJ4ZmlZZmp6VUdiUjVhdmI5bG82?=
 =?utf-8?B?L29CNk9FZ3hwRGxrQnZzTEE5ckVzMGJRNUI2TEFnSzllRUEvYnRwS1RKL3BX?=
 =?utf-8?Q?rn3k=3D?=
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: 8f8c3cd4-f75a-4379-49ac-08ddaa8b616d
X-MS-Exchange-CrossTenant-AuthSource: DS0PR06MB9877.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jun 2025 15:02:57.0396
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Y+rlXOWMxfbfW62gr0q+4LI+Uls6Q6yhwE2o1+Rqk62V2ojh7sI0uk3QlTLnvqOj
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR06MB8038
X-Proofpoint-GUID: KB_auOuHzjugvdouaREfXfUkMgVTPLAm
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjEzMDEwOCBTYWx0ZWRfX2osAgTkDFxSW fTkBoBxaq1rXezegDtZkZxbhjGxqdS83og2xxoue8FLO6VGtTGyYFK1tFwP7eJgbIN6QKttYaNc sWTAZdoYeRvoHjijWqMzXZwNYmIMZyaPnD8RXA2J6M6QXFGy3xrovfxRfknfjUqLKm7b23KQFsl
 lLFiJPU0k1VjCubzbXrxOVbjdf3YCrVRzzFmFMPWVfHx1lxOraRjusAj7pCspcrNKDn5SePchI1 ZN9U8l++NXKy4AgZK3cCenPgQT5V5tpG4IeUjXs4PNrzUUZJKTd+T78lTlM614nI95KKMhOTKke XllBtRlFXES87JXCi59LfOWsebhYsC5EOqBsLChrN0BB1GQWzjxvI60eso1k9bODaxa09xL62Kd
 4PAyUkZKX/maNGqz7zv3cVATsYLaa5UDUWtGpmJpB9kLYzmX3+hluMKY8612EQ2KcOR5L6nu
X-Authority-Analysis: v=2.4 cv=coSbk04i c=1 sm=1 tr=0 ts=684c3da3 cx=c_pps a=7LdyZ4/2TJtu80KvlWUjDA==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=lre9DRYkaIEA:10 a=BCCgzu0JAAAA:8 a=0A7z8c8kOOdJKTHOwYIA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=G38RWgnJungA:10 a=LcVy-NwXSkDgD1TuMyfF:22
X-Proofpoint-ORIG-GUID: KB_auOuHzjugvdouaREfXfUkMgVTPLAm
X-Wisc_ValidFrom: true
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-13_01,2025-06-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 adultscore=0 lowpriorityscore=0 spamscore=0 clxscore=1011 phishscore=0
 impostorscore=0 bulkscore=0 mlxlogscore=827 suspectscore=0 mlxscore=0
 malwarescore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506130108
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

The driver would be ltlk. It uses the chipset from RC Systems.



On 6/13/25 6:01 AM, Jookia wrote:
> I belive speakup does support USB serial devices nowadays.
> I don't know which Speakup driver you'd use for this.
>
> On Thu, Jun 12, 2025 at 11:06:42AM -0500, John G. Heim wrote:
>> I've been poking around to see if there are still any hardware synths
>> available. There is something called a Tripletalk Mini on the Blind  Mice
>> mega Mall.
>>
>> https://urldefense.com/v3/__https://www.blindmicemegamall.com/bmm/shop/Item_Detail?itemid=5323293__;!!Mak6IKo!J1CKLPtFQXtjfl79NmBKEOuXPxkDGgTY4J7SOGqmFVzqcnJ7Kg0NQ1fZsDg-y3GXg9KBJlpbWE4LrXVWNoI$
>>
>> It does not seem to have a serial cable connector though. Correct me if I'm
>> wrong but that means it would not work with speakup, right?
>>
>>

