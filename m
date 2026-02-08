Return-Path: <speakup+bounces-1550-lists+speakup=lfdr.de@linux-speakup.org>
Delivered-To: lists+speakup@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gCd3E8bjiGmfyAQAu9opvQ
	(envelope-from <speakup+bounces-1550-lists+speakup=lfdr.de@linux-speakup.org>)
	for <lists+speakup@lfdr.de>; Sun, 08 Feb 2026 20:28:06 +0100
X-Original-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id ECD9E109FAC
	for <lists+speakup@lfdr.de>; Sun, 08 Feb 2026 20:28:05 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=math.wisc.edu header.i=@math.wisc.edu header.a=rsa-sha256 header.s=selector2 header.b=RcUVEF23;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 6051338222B; Sun, 08 Feb 2026 14:19:19 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 3A3973815A5
	for <lists+speakup@lfdr.de>; Sun, 08 Feb 2026 14:19:19 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 27DE73817F7; Sun, 08 Feb 2026 14:19:13 -0500 (EST)
Received: from mx0b-007b0c01.pphosted.com (mx0b-007b0c01.pphosted.com [205.220.177.71])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 74B3F3815A5
	for <speakup@linux-speakup.org>; Sun, 08 Feb 2026 14:19:12 -0500 (EST)
Received: from pps.filterd (m0316043.ppops.net [127.0.0.1])
	by mx0b-007b0c01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 618CcqDC3690822
	for <speakup@linux-speakup.org>; Sun, 8 Feb 2026 13:19:08 -0600
Received: from cy3pr05cu001.outbound.protection.outlook.com (mail-westcentralusazon11013056.outbound.protection.outlook.com [40.93.201.56])
	by mx0b-007b0c01.pphosted.com (PPS) with ESMTPS id 4c6pkq230w-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT)
	for <speakup@linux-speakup.org>; Sun, 08 Feb 2026 13:19:08 -0600 (CST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=inqLiOdwnYQwY4+8BtYHNC+kTLeLl/KJD2dPq2z9Z0pSpwI8JuapZx154pvWmb6+PybeB5cRg5FdLk/OxbKqsL1avIHvzDVuB4XoI20D5W58nu0pmjxKbkBz5AwQ8nbDQvcAr4NDrNE0Hque3hVcV1y6PvFleDjplKaShf7HgLgv1NzCu3M7iza749XRiQlaxkUk2YyIIoymuVqfv303S323hspnPGOTcRkpIAvDzq4ZpDaNyznRNaka2F9UB+SR+K5Hz8uzOTsI3NnlrtSmpa2mqucyXimN1Azgusiwxry9HzcXDlUnS9jDJ60w960UvAvhlknAdvWCpuFqzhagoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DClWnWhoMPVrH/MwgcFa2tcVxTieoLcuMJExLivvWo8=;
 b=vvQx8vK1pvEaWE5OBcyrU2UKq+1+zXpQTFJ1airmFuQ8l/QJmJVwAaGLLHmodB4qKcGa/oFMkLBGL5MNtcqy1/Bw66765cdxobdunI4+DQs2a2cYw8hVFObbHWMDTP9YEnMjJYhSV8sahhIcngmODhiWiOCUvg8cEbfGD0ELLS79BWygbnlATCiTxXSx+NPAhnFplDrR3B4vde/lIn4hrWugk5OjxMoQ7456vyGnBfGOf0RohZQ6iZySzwmWHUXaIQsw/7bJRTsNhAwK5rSOdhRXoe6n2yVrfD0K7xKYmEqTO7ir0AagEBv1ffq/G0/M0SOMknsgejOE78QUAP6RAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none
 header.from=math.wisc.edu; dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=math.wisc.edu;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DClWnWhoMPVrH/MwgcFa2tcVxTieoLcuMJExLivvWo8=;
 b=RcUVEF23QTJXuHGaNGgqsFXx4Nvk1YxrW/1ulImzhBQ5ennMRxz3g3lONGzB1aYQZdMH/OlD7jWDQSDoV+1x04Cb2duPb207z0tCyrlE2HPtbuYukz0FLHqSF/pIbraWjFFW7GkpWskTFBWJlzgZVHm1Y/JK9r4UvabqHvoKwLndqFUA/s2T1jv38C/2jqfwGB5f0Ic44J9gqYjHfMdqQ9My5obYJHLBIfxbNOOAH5b2zd8iRJ5aFaAiVNDU2n/U0b3YsieWlE5HKROLKZSNcUroX2amVaGN9iOuIHAG7N8medmoHk43iOeOigW7eoJDHx2YIkqOn1Qz5GodKXkbwQ==
Received: from BY3PR06MB8195.namprd06.prod.outlook.com (2603:10b6:a03:3ce::19)
 by IA4PR06MB10802.namprd06.prod.outlook.com (2603:10b6:208:54d::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.15; Sun, 8 Feb
 2026 19:19:06 +0000
Received: from BY3PR06MB8195.namprd06.prod.outlook.com
 ([fe80::a7ad:fb62:4389:fd8b]) by BY3PR06MB8195.namprd06.prod.outlook.com
 ([fe80::a7ad:fb62:4389:fd8b%4]) with mapi id 15.20.9587.017; Sun, 8 Feb 2026
 19:19:06 +0000
Message-ID: <0d8928e3-25bb-42b0-9ef2-cb63ff9e3a79@math.wisc.edu>
Date: Sun, 8 Feb 2026 13:19:05 -0600
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
From: "John G. Heim" <jheim@math.wisc.edu>
Subject: Hardware speech synth from Raspberry Pi
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: CH2PR05CA0013.namprd05.prod.outlook.com (2603:10b6:610::26)
 To BY3PR06MB8195.namprd06.prod.outlook.com (2603:10b6:a03:3ce::19)
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux." <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY3PR06MB8195:EE_|IA4PR06MB10802:EE_
X-MS-Office365-Filtering-Correlation-Id: ac42b0dc-1d08-4cf1-4f56-08de6746edab
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|1800799024|41320700013|366016|786006;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?YXZLcGcxaVRCZElzTGN3K2JDWWhxWEV4cFZROWdRcitNL29EbVBoeUpjWkQy?=
 =?utf-8?B?OU0zOGU2WmZOUlRRUkE3Ti9XdFFJY2xXUGs2MlB0SXQrSFNLK2Z1SlNxbDgz?=
 =?utf-8?B?RmpweXUzQjgwTHZqWjRIS3pPZko1d0xRRDF0QVFwRzVjaDl0NGFaTm14cGcv?=
 =?utf-8?B?RktmU1pSQmZBbnRqa3A3U2FwaE1Zci9KRnl1L0dycGtBNWdTcEpnR3dMbDA3?=
 =?utf-8?B?YzkzYUlvU2RLUnFQN2ZGa2ExTWg0cC9rUXpzdjloOTBhLzg0QU1ZaVBnVm5q?=
 =?utf-8?B?Rzh4WmE1NVFHMVhlWE4wU0Q3TFdVUzhHRkFJeXVwSW01L2tUNmN0a0JjTmFz?=
 =?utf-8?B?cnY0K3Q1djJOa2hjd1NxR2JvL2wvUGRVQWl3bE9GMXExMzFVYmx1ekthYUls?=
 =?utf-8?B?Q010VjZpV2JLSVVjenl2NVc1WWRlK0FuMktxR0JjZitYTEMwN2ljbUhsQUN5?=
 =?utf-8?B?RjVmalVkS1RKdW5iMnppM2Z2WDhNMWFIdk92VTc4Zm9kVHdjdUVXOUpHeVhR?=
 =?utf-8?B?ZTVFVURNMzhtRXRpSEl6RGpUTGJ3bzRQd2JtQVlEWUdFVndwZzdMTWk0UERK?=
 =?utf-8?B?M2dMZHgyckZwNjJXMm90R1doQ053NXdGTW5sRE05Y2hHTG9xWlgzcmMvVGha?=
 =?utf-8?B?OVJ0OXNYUEFXMmFERG9XaUFBQzdobW5OakJCVDZxQ0EzSHpDMmEzQWNGU2Ns?=
 =?utf-8?B?Q2Ria2dxK1hlTGxyTDJwYjZoWDZ1MkxJa2JOeFMrOWJDZGpJOS91NG5hN3Q5?=
 =?utf-8?B?NVVjK3ZZNmRrYUNsMTB5S1Fya1hZYzZwM2pLKytmaGc4aURZUG5MZ1B1UEMx?=
 =?utf-8?B?b2M0OGY4eVJFYVhLUkhmb0VNTU9HZFJ5M0kxRmYyOEhmOExEYkxXd2phQ1hi?=
 =?utf-8?B?QUFiNmF0UEZraXgxdHVMMHQ5Y2dMdnlXZG5RU2ViMFhLU0FOck10TnNYZkM5?=
 =?utf-8?B?K1VqazQ1NVgzT25ndXZkKzFLVVFhQ1VLcU9PelNIbzJ6R0tXOUNrQ1dUbnJ6?=
 =?utf-8?B?aE4wc0F1bGV5dzNENmU2bk1GY3pJOFpkeUwxcWJMOWE0Umczd0VvYS9IcjJ3?=
 =?utf-8?B?dnBMS0VjUXJFY3F5Q3ZEeFFDeENjS3Nvc1o0MjFBNW5uNlB5cjVNUUdjRi92?=
 =?utf-8?B?cTBPR21Nci9yblU3Rzdyc0NWNk9lNUJWTWxoQzJEaHowZ3QxUTVYT2FGb1Nu?=
 =?utf-8?B?WHY1VUo0d2JjUkNUdllUK2lRTjRYekM5NjdKY3JEMmc5T1ZPVlRobWw0YU52?=
 =?utf-8?B?aHdNZzhHd056ZUY5dmQ4bXdvZkJKcWM1MU5VUjQxVXpSdCswa0xqNllZcmo1?=
 =?utf-8?B?L1llRHF3cUo2VzRscmFyZnc2aURQZUg3SlRUYisyNE5RYkx3ZzRyajcvY2wv?=
 =?utf-8?B?RTFiQU00ZXNYT05tdzY3RzRKUzd3ZzQ5VHJyMTh0STJpSWFPTGF1QmsrWERk?=
 =?utf-8?B?cGQ2VHlGZksxLzZCcm1jTE1yaEZJbzUyZGpkd3BoZm5LYVBhcFNRclVJMmxE?=
 =?utf-8?B?akZEdm52eU16NVhiM3l3bGlkNTFqekNTdC9YSFBGVEp6ZGRsN3ZrOURtVUEz?=
 =?utf-8?B?WmErS1JTVlg3L1RyYzdGZERYSjJMeDlocGVDWXFNanpKcHQ1cVA4a3NSSWN4?=
 =?utf-8?B?WWRlQWU5SEdwelhZaTRDSTJaWmdNRmwwUVMvOHZSclVzMVNXS09WdWxUYnRS?=
 =?utf-8?B?SDVjMWh3YUlXMEs0WERreHZLQ2NBRkZLYVQ2NHJ2Y3hNMm1tRVJ5anRYY2Nr?=
 =?utf-8?B?N211RWZmRDRVbTdsbGh1SmdhY3p6MEtMUVZxZDhmVmJ4UlI2a1BRenc5ZmlD?=
 =?utf-8?B?dDNNOU9lblM1VWQ0d2FZSlRCWTRNcEMwekRQOXZVc0ZOV0JYa1NJSXdLdUJk?=
 =?utf-8?B?bFdKbkxFYnR0bXcvNGhQT2ZOSlE1S0I4UkRpamZnTTZrRnpOYTl4TnIxTWhL?=
 =?utf-8?B?MEhUSDBuRERFZVJNdG8wTy9qYUVNZ1hDK2h1bUVVTmxqQUtBR0thSlI3aW9I?=
 =?utf-8?B?WUhJNEFZdjcwZldKdGE2SUJvRWlpTW9TUnhNM1dIcUJTKzhsRXp6QXRDR3Na?=
 =?utf-8?B?WHd4OHdRTGRTTjdnSEhPMWQyKzNSUXZlekprckMzR0hnWGpmSGp2ekV3Witu?=
 =?utf-8?Q?IUiY=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY3PR06MB8195.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(41320700013)(366016)(786006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?b25UTmdwbWFFd2NDK0VldXN2MUZPSkFLL0pyN2Mxcm1HKy9qZmhaTzdha1RJ?=
 =?utf-8?B?WHRSN3JNUjdpZmdyNTc3bGwrc3k1MFJjZzNidnRNT2JNOGJrZ3l0NzRGL1BJ?=
 =?utf-8?B?c0NYRWNPNWZWS0ZCeGJDeTR4MlF6TC9uMk1aekg3cm1pTGI5WDZjNGQ2Uy9H?=
 =?utf-8?B?T0ZRcmoxS3ZUbXZtQWZsK2dkR2dtU2N3S0Jack9oQ2NzeXV5QkVHQ1B1SVlN?=
 =?utf-8?B?V2ljMzREM3UyVzZNWWRvamNkSzJLTU8zVG1tZWFCUHErbjlwZGQyR3A3RHNs?=
 =?utf-8?B?MWFOUkVCeit0ck4vSUdIL0tIeFZkN3FlTWg3cWoxTGFYd1JwbGVGLzIzclZC?=
 =?utf-8?B?RVU5Q2pQTzRhWGoxODF5SkVxTW94a0lzOUpocWpMQUdzdmhZZkhMdG9GcUU1?=
 =?utf-8?B?blhJM0FnN0t3YmhsWisxU05iMW9lT1JHbEhpU0ZXKzJ2VmJheGRYbURzb01W?=
 =?utf-8?B?U0tJcmtYaVREckhTZUxGZzRYUlRtYkFqQXJheVRyVVVMc3ZnK2ozSitxRjdJ?=
 =?utf-8?B?RE5PeTVYUUVPYWxCbjF5UllsNDlWUVppTkJicWFDVUVlL2ZXYW1UQTBFSWtT?=
 =?utf-8?B?cTN0UWI1S2oweEc2RThTNVVseHIyL1ZIRUlQcGpxTER3K2lRSXQzV2VidlNQ?=
 =?utf-8?B?ekw1RHFpN1FMZktxQzFsRERXYTN2L2lKd1hHTjUyV1VWbnRDNkFMaElBdmx2?=
 =?utf-8?B?SlBjeFRHYjAwMHd1ZzJPSnpoYjdMa1hINHU0TjE5UGEraTAxdmxDNjloeDJM?=
 =?utf-8?B?Qm1WeEhSYjUwdDNxbXNrdG9kc0F5MFBmUDJXdEE2aGRQaDViTGNjbk8zTjBn?=
 =?utf-8?B?dWM0WHBrNmRtbUJXY2EyL2c4b0FML2h5WHNsR2dhYk14MHZmQXRDMlZTUWVF?=
 =?utf-8?B?ODRzcEl1VUhmZDdKVVBWcEFpdW8zR1Y2QjdWaEhCelhpSC96ZU5yZ2NIcVRZ?=
 =?utf-8?B?aUEzRjJldDNTSVBwdDFDV2NsZkNnN3lhcGx5U2pPZ3VEclNSODFOWEVDWEpv?=
 =?utf-8?B?dTkxR1kxUmI1SEVzRUFIN20rWVFlSTVwY2MrUGM4QVMreUxFV3pQaGlqc1Zp?=
 =?utf-8?B?QWlZN3ZiWkdhL1lZdG80VHY5SEVKbDgwSittY2JYMXBpOVFBZ3A0cFVlSlVE?=
 =?utf-8?B?czdjM1RlOXBkZWYzdXZiREVsWmtjVkR3MStXYmZjNkFHNVhSb1dJVkF2N2hH?=
 =?utf-8?B?V21wdmMwS1pha0ZCV1cvWGRidy9MRmNJMVR1VFIwQmNPQytpT29pYTIwQU55?=
 =?utf-8?B?T2tCOUtVNjdLaGNURDl1eUVhYU0yd1lITWVZWWVYTnZtNFg2ZTRJNGpIY3Np?=
 =?utf-8?B?cXlrS0RFQ1c5VHowblhpVVlpcGJUYk81cThEbFR1N01SbHc3Z0dTcHV0VEJ0?=
 =?utf-8?B?eEluN1VFdXVXUHVPM0FneDNvWXU4Wm9JdTdNYnY2NW96eHNpaTR3YzR3L3Rj?=
 =?utf-8?B?SDlIZU8wa3pLcEc5UjN5Q2U4TU5iYzU5MWJUTlJ5eVhmRjZTSTZwTWJCK28w?=
 =?utf-8?B?YXJRb1dNOEd5VmdIenBObTNHbDZpd2puNTlyWG1oVVZaYWtoWWFma1d4bnhN?=
 =?utf-8?B?cUlmOGZ3UTYyMWtJN0orbHRCK2g4MUQ4ektlRWdoOVM1K21yWTd2NWVHWHJW?=
 =?utf-8?B?RjFXY1lDZzJTM3F2bDRCTCttQ0ZpMXppbFlUQTVFSENwZjZUeXJnbFo0Mk5N?=
 =?utf-8?B?Q3pONnlNMWdKcFJuVjFUbmFTZW5mM3hUVmtMUGFDQjQreXJHRXdYbFBNTUJJ?=
 =?utf-8?B?bHV0bDFGazBYanRKUlVkWlR0TVJISTNpMEl0MXlqajZBVUtNd0xFY0NGUkVK?=
 =?utf-8?B?RnhTRjg4cjVYUmVvdGRvZUtYYVJkQUp6M0hxNlRnWHRQcHJhQTVWbTNSNlJF?=
 =?utf-8?B?M1h1WHFlRDRhVlZiTTdDdTNnZjRxVGFPMFdDZUpLanl2dElzYlV0OXpuZVZa?=
 =?utf-8?B?ZzUyMHFZdVJhYmZ3alM4SHg1SWx2anRzcisyVjN5RGVlT242SDVYK3BoT1Br?=
 =?utf-8?B?TkR1Tmw1c09VY05lc084WkRFLzRrYzJacStqSGJ4Y3JadnAvSzNNUk03VEZP?=
 =?utf-8?B?VjZacGNxZkNTdCtTU0QwNzJFR0xMM3JwVXBOQ3k4QW1OemtrUnFGL1h2dVB5?=
 =?utf-8?B?R3ByaWk5UWVGSEdSQmQ1ZmJWYTBzMlYxSHRycU1waFAxbW15c2dSWDk5WmVI?=
 =?utf-8?B?UnFncDZsRFd6ODZUdnZ2aEQySWRCT3lhQVdpMGxGd05zVFN2UlFQSGRTU0JV?=
 =?utf-8?B?Myt0SUJ3UHN1cXNtQ2psNDU1WWxuQi9EL1FOaHowVmdKTkR6cFhGNnBwQ3lu?=
 =?utf-8?Q?jj80bsw+PUAfK9TvYh?=
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: ac42b0dc-1d08-4cf1-4f56-08de6746edab
X-MS-Exchange-CrossTenant-AuthSource: BY3PR06MB8195.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Feb 2026 19:19:06.6787
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IHfn5QPiYrAi/LNmrLCbB9zqKN47g46Y3eafulJu5BN8VgDyhaqmC6L5Aa4oIiK6
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA4PR06MB10802
X-Authority-Analysis: v=2.4 cv=Tr/rRTXh c=1 sm=1 tr=0 ts=6988e1ac cx=c_pps
 a=nYaA4L0hYP7ZHAKl0WLIGg==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=lre9DRYkaIEA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=DyznqomoAAAA:8 a=NEAV23lmAAAA:8 a=5kOAMqVZMgglNjt362gA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10
X-Proofpoint-ORIG-GUID: qXLDwvmd92Yc0mm7mIdw2wv0-UODu0Aw
X-Proofpoint-GUID: qXLDwvmd92Yc0mm7mIdw2wv0-UODu0Aw
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA4MDE2NiBTYWx0ZWRfXweJe0uxGse73
 gcovoY3x6/u3KGH8Z5SVjb6i6o+xJS5VaBDXWzCkAL1NHOkWcO71Edw+SPaP8gacwK+qJZoZmYF
 TVwuPIearhT3npO8h5t8ExxZinYOrz9htCfmmI7MkQJHcFVy2kWG7eX0kNL12/aro/Tv4v0Q58K
 JHdaFZfFMpjtamWHsg1xukNNMB0K//hIAQ5NTz0HiT/qN4RN3XhbF4WGZKoF1VCLJxcoBTcyzTI
 5IUDEx25M4CvLMv1U6p8kCH24V/BXAWMW6ia35RmR0V9B2HgdCk9FHpFSIsJIweRMT+25MZ2CEf
 AfeinRVJBWIBDMqyfRTPTaJ/frdixT/HZUzsSCi6kUvzvpUrVtUflqAHwmLPk0iAAGa6u7awj7M
 O4w4I0DKRoQ3/4DKqYUEa056ffJomVR6Ct6p8nPpx2RRJ6476DeoUu0gJki6hOF0cp84G4LREaS
 U22RyDhSqgwfR5c1IRw==
X-Wisc_ValidFrom: true
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-08_05,2026-02-05_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0 bulkscore=0 priorityscore=1501 spamscore=0
 lowpriorityscore=0 clxscore=1015 malwarescore=0 phishscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602080166
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.89 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[math.wisc.edu,quarantine];
	R_DKIM_ALLOW(-0.20)[math.wisc.edu:s=selector2];
	MAILLIST(-0.18)[generic];
	RCVD_NO_TLS_LAST(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	NEURAL_HAM(-0.00)[-0.996];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[speakup];
	ASN(0.00)[asn:5645, ipnet:206.248.128.0/18, country:CA];
	RCPT_COUNT_ONE(0.00)[1];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[8];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jheim@math.wisc.edu,speakup@linux-speakup.org];
	FROM_HAS_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[befuddled.reisers.ca:helo,befuddled.reisers.ca:rdns];
	R_SPF_NA(0.00)[no SPF record];
	TO_DN_ALL(0.00)[];
	TAGGED_FROM(0.00)[bounces-1550-lists,speakup=lfdr.de];
	DKIM_TRACE(0.00)[math.wisc.edu:+]
X-Rspamd-Queue-Id: ECD9E109FAC
X-Rspamd-Action: no action

Okay,  here it is,  your Raspberry Pi hardware  speech synth:

https://people.math.wisc.edu/~jheim/RPITalk/

There are complete instructions there for building the synth and a link 
to a  .deb  to install the emulator software. Note that the software is 
still  in beta, version 0.9. But it works okay. I've been using my test 
machine pretty regularly.  I've  even logged onto  the Pi and 
reconfigured the speech while using it.

I've published the source on  github here:

https://github.com/JohnHeim/rpitalk

And I have submitted  an ITP (intent to package) bug report to Debian. 
So with any luck, I'll be able  to get the code into the Debian 
repository and you will be  able  to  install  it on your Raspberry Pi 
like any other Debian package.




