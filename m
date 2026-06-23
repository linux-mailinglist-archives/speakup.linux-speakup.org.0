Return-Path: <speakup+bounces-1615-lists+speakup=lfdr.de@linux-speakup.org>
Delivered-To: lists+speakup@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id FhBrJjW3OmoSEwgAu9opvQ
	(envelope-from <speakup+bounces-1615-lists+speakup=lfdr.de@linux-speakup.org>)
	for <lists+speakup@lfdr.de>; Tue, 23 Jun 2026 18:41:25 +0200
X-Original-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id D8B816B8C9F
	for <lists+speakup@lfdr.de>; Tue, 23 Jun 2026 18:41:19 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=math.wisc.edu header.s=selector1 header.b=EoAYxbaN;
	spf=temperror (mail.lfdr.de: error in processing during lookup of "speakup+bounces-1615-lists+speakup=lfdr.de@linux-speakup.org": DNS error) smtp.mailfrom="speakup+bounces-1615-lists+speakup=lfdr.de@linux-speakup.org";
	dmarc=pass (policy=quarantine) header.from=math.wisc.edu;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 0D782382663; Tue, 23 Jun 2026 12:41:18 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id E1FF7381974
	for <lists+speakup@lfdr.de>; Tue, 23 Jun 2026 12:41:17 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id A44493825FD; Tue, 23 Jun 2026 12:41:11 -0400 (EDT)
Received: from mx0b-007b0c01.pphosted.com (mx0b-007b0c01.pphosted.com [205.220.177.71])
	by befuddled.reisers.ca (Postfix) with ESMTPS id C3EA8381974
	for <speakup@linux-speakup.org>; Tue, 23 Jun 2026 12:41:10 -0400 (EDT)
Received: from pps.filterd (m0316042.ppops.net [127.0.0.1])
	by mx0b-007b0c01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65NGAeVU3297808
	for <speakup@linux-speakup.org>; Tue, 23 Jun 2026 11:41:08 -0500
Received: from cy3pr05cu001.outbound.protection.outlook.com (mail-westcentralusazon11013021.outbound.protection.outlook.com [40.93.201.21])
	by mx0b-007b0c01.pphosted.com (PPS) with ESMTPS id 4eywef0709-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT)
	for <speakup@linux-speakup.org>; Tue, 23 Jun 2026 11:41:08 -0500 (CDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YqUFEFtfYMP0ICb+jAdXwejHvrwAsysGfu7UbhpTfK/7q6llSwAqGXfNfCrO4AuZCEoWPdTWt9ClJL8QnfjyXi2noAu75J38UJtLn5jv+hMbo2aBErgIrvCUddRJ3Lop9wihaGBrkhNgInrT4BUT3IA90hySn/5/n2aXL3s/eqkeRij8iH3KPw4o6vMjP3XyshW50Rtvx4DJ1prD/+Zk1oZjJpKkJVlZt6hQn/iiriEN5GtefKd7lSObmu+DzhxAdNYICBaGt67aadU/jyeVH+IovZt74NHlMGm8akwY4lq8UMIghZemzz0jv3+y43/9lSPeyVswlRtUPV4mDH3Xqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3+sdF9ElbFFsIM4c3N3KbpDKaQJomNnmB9Cf8k2BASY=;
 b=lbm7kZcB+3+nM0Tu0BAtf0L4VOyiyZvUEnXYnE1D6tHO098v+wBpPQ5Z3TIdudSz1q6hqvg2ObtHngJSfpxD0CWYSxX1/mowTl8dhqBgzdVgwBQmq/gkxsi/HoMWQbaT8Ie0XcsoewdY8LypVuzqKMEe3Y620FjUvMYm69y+Zedsyd6s0EzVg5Ll2/479KZD+lC3ylcgmqXwbj2foVQRjw54iUGg7YdPzassKVlZjtALChsB55CqhnAY1dNwQI9rTLFrbVXSWnpUVQTWmKzaqnMrpEyTwvfiSDXKhcJykLu1i0h8XPDypSKKQK2qKzn/LFVNfAVlkbLtmWQNt1R4LA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none
 header.from=math.wisc.edu; dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=math.wisc.edu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3+sdF9ElbFFsIM4c3N3KbpDKaQJomNnmB9Cf8k2BASY=;
 b=EoAYxbaNvoqmY07v/R6r6ZdLUdhylmObFRoN/mDPqRAWWIcV5G94j7VZNY41fGx+aEeh+T/N/IE5lL+F5s74MCty1v90iQDG6w0eAXinNfKrpDwRQr1YnMXWZC0uTMsjUhPGUe7jLG6FMmgbj6y5vh8lfQwROcAhvWXYm4lLCcJ4Jd5gX4Enu/lk/qRbZP/FPLFbzDZoxMaooM5lsBU9myOHFJt5E8xFCrZF63L9Cq9jfbc2JdejBEhIfm65RT+nAElI5DXX1FYLlHH6V7ZcSnP4REztXn8B+84lEQMueEOmy/8Krmu+1Lw8Bl/M5CIy7NPnLfA7tJj0N1BfVqam0w==
Received: from BY3PR06MB8195.namprd06.prod.outlook.com (2603:10b6:a03:3ce::19)
 by BY5PR06MB6483.namprd06.prod.outlook.com (2603:10b6:a03:23b::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.13; Tue, 23 Jun
 2026 16:41:06 +0000
Received: from BY3PR06MB8195.namprd06.prod.outlook.com
 ([fe80::a7ad:fb62:4389:fd8b]) by BY3PR06MB8195.namprd06.prod.outlook.com
 ([fe80::a7ad:fb62:4389:fd8b%4]) with mapi id 15.21.0159.012; Tue, 23 Jun 2026
 16:41:06 +0000
Message-ID: <2b25f8f6-753c-4596-a1c8-f3150549c2e4@math.wisc.edu>
Date: Tue, 23 Jun 2026 11:41:04 -0500
User-Agent: Mozilla Thunderbird
Subject: Re: Rewriting docs: update
From: "John G. Heim" <jheim@math.wisc.edu>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <6cfbf1a1-34d0-47cb-99e7-d1797005d7d9@math.wisc.edu>
Content-Language: en-US
In-Reply-To: <6cfbf1a1-34d0-47cb-99e7-d1797005d7d9@math.wisc.edu>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: CH5P220CA0005.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:610:1ef::26) To BY3PR06MB8195.namprd06.prod.outlook.com
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
X-MS-TrafficTypeDiagnostic: BY3PR06MB8195:EE_|BY5PR06MB6483:EE_
X-MS-Office365-Filtering-Correlation-Id: b1b768ad-4a3f-4523-41be-08ded14638c0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|23010399003|1800799024|366016|376014|786006|41320700013|18002099003|22082099003|56012099006;
X-Microsoft-Antispam-Message-Info:
	611SUReIMNxunagpcG2O0JDeaJtQPaPE0lGT6fEMYWgMqQ3sOKN5B4iqxHEHyBClzRX7O74Z/sasm7/8YGk8h5KMSyXaR+mlP3l1BcWjj4rEL0tWlpFfbPCyEIVxFBj1BiGO2AyytmfW645CGE+EtTrWWk9IUJr+/GWmDsZIe8mgxneAh+FZwrh1jOQJGl5dkNZvgJvHUua3NAcvQpFDe8J1Ss2YoT3Ag6wBWILhYalUudWvPirpnrocxqQvZXd1CGLhQejUlRNlc73y0NRru/7tv8XkQb949pjXWUxuILsAyk5/HgB30KvoOYkDxNCxmX3xqgk+9iiVXewKnUxHFLxBwahk/F2Zy+egjHcdp8vgDCbylRRIC6d8RqARXTsw43SBoveWMlbTn8T5rgO5gfk9JmaOls1LC8lxdhrcRD/x1WGJHdIyc2bbL98WMAIHSf5B0X4isp+2jT25Qm1ab1K0dIoTJbWHhkEvVnr/0FDi038KF67XhnFyyQ7ZIOfSR3oIrBSNm3RZGA/eiaBj0IafLo2u55UiViti8nV6ul/2ZMuIe6vhHj8sEv/HG8Ft4TQ3Rdx7+nYdsAZ/JTHXw2/zRC+xwsCs2z/ehmEyaABGNMDuJ+kvuJrIcSh+EsaOdyXBtWXSt/OFz+e3mYiF/BFHIUQDNS+bq4/cEyzaQIo=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY3PR06MB8195.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(23010399003)(1800799024)(366016)(376014)(786006)(41320700013)(18002099003)(22082099003)(56012099006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?dmk3clBEZjN2eGZSUDUxOThvSTVzSHFrY2IzTC9YNklldmVOby91bDBVMm8r?=
 =?utf-8?B?WWRMaEtmU1hGbjZad21ZQ3U3T1hWakpLNEpIRjdZaDd4dEx3NkdqTGVYUDlP?=
 =?utf-8?B?Zi9BYW1uZXd4U21LMFA2cUZVTm0yOXFSL0pmQzBoMTRGSVlWTDRDVDd0TWQx?=
 =?utf-8?B?NDVpMm9HOUp6T0ZwNHFGMEhNNUdFRjRaQjI4dWhVZ2wyU1d6UU5DMThqMFdH?=
 =?utf-8?B?VEhhKzdDZmJrYlMwOTBQWnhFb2F1UTdmNjBOTGIxZUFvNW5pcWkxR0RZNnhG?=
 =?utf-8?B?SVBZUCs0eVFGRU9rYURiSktFNldNbTI2cUY2c3Z2QXZyMWd4eTJpQTFuU0pz?=
 =?utf-8?B?bFNBSmovUnZaMmdSM3kxMThFVVQ1QXVvMFUzdml5NThrcjFCWkppNTFNNVUw?=
 =?utf-8?B?SGs5MDJ2UDErQWEvSjZZUXhZVUJBS2pJVzZ5Sm1BcFFkMWpYdms5bG5LbHl2?=
 =?utf-8?B?dERzSXBvS1ROK21RRElLVUp3a2Q0YktPclVjL0dvbnRnczJwVDVqTzluV1Zo?=
 =?utf-8?B?SFdqKzcwOGRhc21aRjYzL2trWU1EZG41b3NIWmtmajUrZkQ3V2pXVlltcE9n?=
 =?utf-8?B?c24yOERIR25STXNxR0QwL2tFQ3J3bzZ3RjgvZS9vZ01Ecjl4dHRyc0p5YUdo?=
 =?utf-8?B?eHZKeTJsZDNTK0tVTWNUVVFUWXNIMzR4a0F6bEdrNDBSOTFjbUVSTjZhck0x?=
 =?utf-8?B?ZDhtNVQ5bE5GQzRLSmhIbGVtQU90MWVmclp5R0tUN1docEQzNHVudUdHb0cx?=
 =?utf-8?B?RjRyUmE0OGV5bW5qTk9YQ0Q3ajdtVEF4NnJBWmlPU25SSStYcnpuc0YvUE5j?=
 =?utf-8?B?MExoMk1FckM1OTNSL1doSzYwYzlRUURTM1JTN28zOTVlTnNzWkk0N2RKN3lI?=
 =?utf-8?B?aWFuMjVEQ0NIVnJRK2JNNXVhVG1oNG1VWnJRMUNtVnRVTkJDTXVXZmlUMmho?=
 =?utf-8?B?bVdBVmU1azNtTVJuaEtsVkkyWGM4c0FZUEVuN2xXNDd2cnRWejJDZ3lYQWdO?=
 =?utf-8?B?U2hiVUJrUkMxaWxoUkNOM0RQOGs0bW9weUdZSUVOdmtURWozS1NhRzVwUS85?=
 =?utf-8?B?bGFWWTFTV2FUcTBlQ2JvUWRtV0hwQ0hZTk5jK25Gc2xuMzEzWUg5c2JoTmJn?=
 =?utf-8?B?emRQRXlvNXFlaEhZQWRvWWF5di9uMXYySVBZaWk4OFNSbFdiM3dBdjRnaWg2?=
 =?utf-8?B?Q0xueXdmM1I4bWIxTVNWdDI3d0RmeDNMZXo5UjNJbE9FdkY1a0t0ZitNdDZZ?=
 =?utf-8?B?eEV1dnZ5MUVCK0hSajIreTRQZ3MxUVhtcDVOQmFtdzQ3cXhpYnMwVDJtemZv?=
 =?utf-8?B?WURLc1A1NFcyUXlEV2NLMWo5ZUFkSXVrT1NHMytGMGR6c1dHV21rRzE5R2ZI?=
 =?utf-8?B?U01xS1o2dXFoWkhwbDNBQXZ4bmxNbmFsTW8wbDdpR1JEU2Z4ZGpXU1ppVEVR?=
 =?utf-8?B?bERMUDEwL2dpU2RrWUs3SHFteFVRMlljQmN6bWZ4Zlh2UTEySkQrWXF1YlpB?=
 =?utf-8?B?QUhiUEgzRFc1Rkw4UytBcXF3RExZUDFkZGNIZURMMENPNWJERDBFUWZMbmk3?=
 =?utf-8?B?Yk1odC9xSnE4ckRTZ21QbTdrMWVhYUFHbHlkNENvU21rcXZZcENFNGJOVmxK?=
 =?utf-8?B?cVMyaEVINGN1T1ZaMzBVUXQrdFFhMVozc2djdUFQMEJxdzd1UmdsRzNYNHJs?=
 =?utf-8?B?Y1Q3VUJoY0Mzb0FEMk0zK3FiN2FSN2Y2eExvL2hKY0grcXp5eTVReWdOU1JI?=
 =?utf-8?B?ZnluZ0Erbzl0cGl3NTZ6QVk1RC9hUHVCb0wrZW8xSjFZN0JJYnZ6ZUY0a0Y2?=
 =?utf-8?B?Zy9JSzFVbWpxZEZVOEdTemtURzBZczZuamQ0RHNYU3N0Z2l6NlJZQVhDNE5C?=
 =?utf-8?B?UDZvVGZiS3ZWcktWSmUyRzVBS2d5UG5XTjljM2tmcSsraWE0dW5pZnBYWWFj?=
 =?utf-8?B?K1V6cWZibUF6TVRWRHZkL09IS1h2VllBSUZOT3JsdEtkTW1rL1MvaVB4QnM2?=
 =?utf-8?B?amNRNXI5MVZjTys0ZjlNa05NZGgxNnVQVDRUMHplVGhVNnJTT0Jjd1dOSHVL?=
 =?utf-8?B?MVhtczlKQ0ZMbTB6NlY4SUxOUnQ5Rmo2LzI5RHNDWHJic0hGMWVzeGVJNDhx?=
 =?utf-8?B?ZjZlSWdIMU82UzdXaklzYURJTzRvVkZyS29qRTVraGRQcHpIT2NWbHlMdGJE?=
 =?utf-8?B?cDQ5aUFGcm52djlFeGFzUFdoRXYwOHhDQ253Szl1a29CU2RJcVNoTHBCbHBK?=
 =?utf-8?B?bVNrZlBnd1RCUmVtSGE4TnBTZnZBei82YVI5Z3o3VzRBWFp4N2diNlVUL0gw?=
 =?utf-8?Q?ghNMwdUZzneYI7YGmV?=
X-Exchange-RoutingPolicyChecked:
	lQ0A96mIUsQQlkIfgEQb/MoY+Df7zEJQojSSFoxNC+X/QYLSF3SQTntD7zr5Nj5fzzTeKKYXHVh88qy78wTMYz3Iey7r1rqOxvtufa+okWK7jO7btHw7/oDgknWp4vh6XxmNlenpQ5gXqoqX3Szbw+3ohHtnOxJOD15cOtKHo/BsWZ08beIFo8HF0tSKKUkLNOPMsS1mo2ijvYL+11QrTxHuTJe1SEFpswLSLo1I+jgUMON+x90QZ3vd3Gkq9DTJ44q7SRjwZvl8yY4/ozaH9hdkrwm/HQtduRS2GFBW9NtwsFWXdz1ajR4HyMc3kh9iRA2PWP5iThy39xFE2blsmA==
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: b1b768ad-4a3f-4523-41be-08ded14638c0
X-MS-Exchange-CrossTenant-AuthSource: BY3PR06MB8195.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jun 2026 16:41:06.5672
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bWKXmBMpr6BY3Y3uBoWntVD8F6QuNoRXGf+W4J7W4Jm9Wb5WXEYZPy/5Va3D9QzO
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR06MB6483
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjIzMDEzNyBTYWx0ZWRfX0lLhCnAxAX/2
 +G7SZDvwV0Ys+pxhKKuY2pq8KSJfPTXv4WsJQXGUIs01f5Mhxh5HOfpkoI3ScQwALEgjWMZ3EPt
 B5bLkOEg5bZaZDmS19WyFg4kDZCMGBtkncMY5Ix7YRZTyjo4c0fBc0wLivIsihIWBtO2Il7fixb
 nAyuFbflsk+6l/YCPyiZbUWcUhg6JQnS79sD4iiRvMBg7mYiYwL627A3VZe655Tba3x2nl6lfjc
 ht85wFCRRCyyc7RBkpK/4pv01KK/rwd9uUaZFspUmTOVRJq0OnW7tLQyq/a3n9lt/j7F0/5Z0wu
 dZK2zwmuTYFG3awEYyic/zBcejfLpPyDivwoDHoVhj+giLC+P43nKNGXyHM7MNW0Sg/iS+LbgYi
 9y7vPlfSgWmHk6ilEQfXaQSAxp0pyavM4XciMc2MGXDXulBaviBBFSXof4g4YA88EYUSA7zBIqd
 g82oBjs8F7bRksQCSBQ==
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjIzMDEzNyBTYWx0ZWRfXz/G7Su1Sa1t9
 JmIO2kZ8ik5ELVmneC3HvR+kKXfhYM+8FXai1f1mb+i7s0VvGrsujAYeU2dydWQQp1W/eJ5rn+p
 p1Ej+XHKeSx0xIQiH+j3vN/3tEIjw9s=
X-Proofpoint-GUID: T6Qlq1mLgsGKFWB_R0sHZc4mIrEoT8yL
X-Authority-Analysis: v=2.4 cv=Gr5yPE1C c=1 sm=1 tr=0 ts=6a3ab724 cx=c_pps
 a=j8DUK8/cuCuEDQ3LLq2Aww==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=lre9DRYkaIEA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=ZyELlZqCvD1aXIDzc3I-:22 a=88-R7LcPEwPXXGSWJaMA:22
 a=DyznqomoAAAA:8 a=kE5X4cn_eAoGmf7vZjgA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
X-Proofpoint-ORIG-GUID: T6Qlq1mLgsGKFWB_R0sHZc4mIrEoT8yL
X-Wisc_ValidFrom: true
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-23_03,2026-06-23_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 adultscore=0 impostorscore=0 lowpriorityscore=0 malwarescore=0
 spamscore=0 priorityscore=1501 bulkscore=0 clxscore=1015 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2606230137
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
	R_SPF_DNSFAIL(0.00)[temporary DNS error];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_RCPT(0.00)[speakup];
	FORGED_SENDER_FORWARDING(0.00)[];
	ASN(0.00)[asn:5645, ipnet:206.248.128.0/18, country:CA];
	RCPT_COUNT_ONE(0.00)[1];
	DKIM_TRACE(0.00)[math.wisc.edu:+];
	FORGED_SENDER(0.00)[jheim@math.wisc.edu,speakup@linux-speakup.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jheim@math.wisc.edu,speakup@linux-speakup.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux-speakup.org:from_smtp,wisc.edu:url];
	TO_DN_ALL(0.00)[];
	TAGGED_FROM(0.00)[bounces-1615-lists,speakup=lfdr.de];
	ALIAS_RESOLVED(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D8B816B8C9F

Here is a link to the documentation rewrite as it currently stands.  
Constructive criticism is welcome.

https://people.math.wisc.edu/~jheim/speakup/



