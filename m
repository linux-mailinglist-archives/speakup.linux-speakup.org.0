Return-Path: <speakup+bounces-1500-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 3CD83CFF29A
	for <lists+speakup@lfdr.de>; Wed, 07 Jan 2026 18:42:54 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=math.wisc.edu header.i=@math.wisc.edu header.a=rsa-sha256 header.s=selector2 header.b=c7VdoAWd;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id BBFF53818D0; Wed, 07 Jan 2026 12:34:47 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 98A11381827
	for <lists+speakup@lfdr.de>; Wed, 07 Jan 2026 12:34:47 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 84DF738187E; Wed, 07 Jan 2026 12:34:41 -0500 (EST)
Received: from mx0b-007b0c01.pphosted.com (mx0b-007b0c01.pphosted.com [205.220.177.71])
	by befuddled.reisers.ca (Postfix) with ESMTPS id B09A738181F
	for <speakup@linux-speakup.org>; Wed, 07 Jan 2026 12:34:39 -0500 (EST)
Received: from pps.filterd (m0316047.ppops.net [127.0.0.1])
	by mx0b-007b0c01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 607GxgZc1728011;
	Wed, 7 Jan 2026 11:34:29 -0600
Received: from co1pr03cu002.outbound.protection.outlook.com (mail-westus2azon11010040.outbound.protection.outlook.com [52.101.46.40])
	by mx0b-007b0c01.pphosted.com (PPS) with ESMTPS id 4bhugag98d-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Wed, 07 Jan 2026 11:34:28 -0600 (CST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IymY2rzpJOYATJg4UvyB3JTwPbuP+qg0vkxx24Rd5sVBacfgSzomgQUZOqUJ1wkx1/e+KxcTDrzDHhpw5Ac168mDaa49eQf374B9OExCI+r/Tn2+ydypHmfDsFCjQY1ra+vb1SSpCMPYV9JG3QFyU4lja4v6DbbwKDd9Msd6ibfitEAlu0tklUu3RCKX0mmB45rFZZEF9U4iTNuI4ItdJnJW5JeoeC8T3Jv90qWYuZx3sIiBs/EnndrJdHQei2bRJqkOZT1AdUlQcBPIfhneUIkf15qF0EsONKfc7xAw0/iU878ek+38QoELl06J7URJoKCPXVDXhqHTMFInIX2/HQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=q9ur6XVfmWYTMr0XsWWdZf6RYugoeP5i5pd/1a5oJXQ=;
 b=AAysNNY1XDt1UU79u1xNKq5jo20Bj1PPWmJxJ98m0NrfpY/jja0bwmRUUO5RIycdF0W+CDI01brIyMPUEaj9MalUZpwAcvRn5DouVgG5m8vC+ElfJUglNCJxO2yJx4F+axCh+6d0S0LoU+0PSymkAyesrxnTnVvzgHuvN918QhzrnQK4StiFL797ZvdTBaBqaK7gDNoYsume1tfimXG+7iPtWy6XLcZCjnBEiyE92GV+RWsjhVtbfTBKk238mOXxCE1yrDACJY/lHb1HqYjEeCzMSs9wLLg+LN+Zupj4mVCUrHZL3Qo+4lm8i55zteMhBqcmqnl2A7f07IvgowyNQA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none
 header.from=math.wisc.edu; dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=math.wisc.edu;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=q9ur6XVfmWYTMr0XsWWdZf6RYugoeP5i5pd/1a5oJXQ=;
 b=c7VdoAWdYI5ac9diJBLJoaW4PEBsYr0GJMa96k6CO7sgd2eVkOtabQmJd2FxMVklsxuPiLYJXxcXHSRhe8f/n2yRHF2WvomgW/5cKODV0d7YAQFCt7G3f+zM16T6Yd/YGJXZabVrj3ZSNzkC3FXPeiB8Q4A50/kr/i99ROTcJ7cI4DKaBlFYLgpzBNaNRTQdw02YywbF1iYNeUqc3BptYe3ngFnYIzkXj80Rd5FI71EJG1tTb36n5CB7Z07m4+ZBc0L2muKLxyG2FY8SIofdzT0b8X7zHry86y5y8Ar0ZhhZVoUx8WAPHB0m705HJ85RcE1QZ/Dxr0nMDgJVeJQMFg==
Received: from BY3PR06MB8195.namprd06.prod.outlook.com (2603:10b6:a03:3ce::19)
 by PH0PR06MB7141.namprd06.prod.outlook.com (2603:10b6:510:29::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.2; Wed, 7 Jan
 2026 17:34:26 +0000
Received: from BY3PR06MB8195.namprd06.prod.outlook.com
 ([fe80::a7ad:fb62:4389:fd8b]) by BY3PR06MB8195.namprd06.prod.outlook.com
 ([fe80::a7ad:fb62:4389:fd8b%5]) with mapi id 15.20.9499.002; Wed, 7 Jan 2026
 17:34:26 +0000
Message-ID: <93c75fb7-b9da-40c9-930c-87d23181b983@math.wisc.edu>
Date: Wed, 7 Jan 2026 11:34:25 -0600
User-Agent: Mozilla Thunderbird
Subject: Re: Building a hardware speech synth with a Raspberry Pi
To: Gregory Nowak <greg@gregn.net>
Cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <4f9075a8-0252-46f9-8594-1dab9286474f@math.wisc.edu>
 <aVCr5A08QwOE2fi7@gregn.net>
 <3aa08a4a-d309-4472-be93-61118eea32f6@math.wisc.edu>
 <aV2_vLRXEqOHZp7M@gregn.net>
Content-Language: en-US
From: "John G. Heim" <jheim@math.wisc.edu>
In-Reply-To: <aV2_vLRXEqOHZp7M@gregn.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: CH0PR04CA0089.namprd04.prod.outlook.com
 (2603:10b6:610:74::34) To BY3PR06MB8195.namprd06.prod.outlook.com
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
X-MS-TrafficTypeDiagnostic: BY3PR06MB8195:EE_|PH0PR06MB7141:EE_
X-MS-Office365-Filtering-Correlation-Id: 75312e9f-1325-4776-3f8a-08de4e13010c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|1800799024|786006|366016|41320700013;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?RTBtSVkveit4Wkd1ZzJ4RWJTZ1hUTGVWbmwvN2VnMlFTQWQ3T2l3OEdOZ2lJ?=
 =?utf-8?B?cTJyeWlhMGduSVAySnZ3eTFqTzJ2OFU3L3RGNk5yaG5mVGhCdjk3UjJCcytW?=
 =?utf-8?B?MWdiT1hEU2JzWDhnNXZ0LzRieEp4b0J6d3JYNlVKblFTSGJoQk5ZaCtoM3d1?=
 =?utf-8?B?UWxlUGJnQVZ3cHpnVVEvMmlNWVdGR3k0b25vWllMZFVCbmR5Zk5WdVIwZENs?=
 =?utf-8?B?TVBWSlMyVUphSHU4aGZrZDhOS1lVdXZ0WFpNVGlRMXE4dzlXN2JSL3F3MUxZ?=
 =?utf-8?B?TTI5a1VKTlRvN01TTitIQm9PZjhBWjk5NmFKWDdkYTYydnVZajF4THl4WjZa?=
 =?utf-8?B?RzAyd3RialpNSlFDank2Q1BQNHY0YXEwWnpQeGh6cUlidDhnbGFibFB2WktM?=
 =?utf-8?B?WFpQU0QvS0VoeVdwMFNkOXU0VENGTFpUcnY2ZTNWT1dwQjQySU5zQTJZc2Y1?=
 =?utf-8?B?MDV0MURFOEZuV0FyR3pYemEyT0Y2OUROUHlqaUc0TldPeVhRMVF1OFViMjRY?=
 =?utf-8?B?dmdHN0RaSmM2UFZTQ1QxOUhKZTRqUWRPL1Z5bU1YUmhuMEg4dXJ1RnhrRTRa?=
 =?utf-8?B?aTZZYkw1bFpLSG1jNmQ0RDk4MzEzRjRDZndKMUR5UWlaRHlvakZ1SXNBNWdT?=
 =?utf-8?B?UXJDcFdNMmZlQ1BGVFUzQXpPQjVxeUNlVEVsSCtOZGN2K0JoalN4Wk1rMTFG?=
 =?utf-8?B?NC9zQU0rRlhVNXNpeDZHVTB5QS8xUW83ZXMxYzhsMExZdEFUTDNNMFEzdkV2?=
 =?utf-8?B?aVJHdHE1RHExcnNTZWlEeDNKQVUwTlhqQkJFUVVHbFkyTmdZdFZiamcvbkNo?=
 =?utf-8?B?cThHKzRaOEU4ZHdTSUhOZVNORW9SbHg0SXZkaVdsREVRZ3VzdndGRXFtN2FG?=
 =?utf-8?B?aVg4bndnbG1kNUUzNUNwckhyazRORG93clJuSWlPVXBqOFlBRXR4QTFPZklF?=
 =?utf-8?B?NFFCQ0hjTGNmMnJMbW9wUGdud244MmltU2xHNG1GaWpLZ3RiMERkd2JoVno5?=
 =?utf-8?B?UWFmanJZb25SM1ppeDMxWmNraStyVzdldmFMZlZaZXJEa3ErQS9COVhCYmc0?=
 =?utf-8?B?MXp1WjF2TVBkR0w3dXNReDdJbnA0dlZPaXBhWWNueHg4VnBtYmNNQktxT2F1?=
 =?utf-8?B?TmZlTkp3MFd0RVJjYVZNUVVVUnkrOTF2bjRzTVNoYUFUVzNzZ2FISWZ1OWFT?=
 =?utf-8?B?dHZJc21hVmJrcFBwaHZuamNDeEdkQ3J5Vm9XZE9xV0tzRWR4eElMSHdwWGhJ?=
 =?utf-8?B?L2pVckRtc09acThrUy84UGtwVzFCY2h1MTYzWjAweGhnRnovWmlpWnIxVldL?=
 =?utf-8?B?cHAyT0tCZ1dvbHdzUlUyK1docUtxNEd0Q1hPMVJOcXhTb1BBdFZGUHZRNFFl?=
 =?utf-8?B?Y0QvSHlHdk5QdjlYbWFPdHBWa3VCZ3JJWS96YmhpN2dDWjMreHo1SmE5SjZC?=
 =?utf-8?B?KzRlUzdNRnk4MFF4YXNMdHNzMDZhOW9Jc3pMS0hUam1MaGljbUdUNkhrdDcx?=
 =?utf-8?B?dzVqTFRGeXZTNXdQMEEzclZobStaOEhDdStKVVVoZ1IzcW5ZVG9jWFhjM21a?=
 =?utf-8?B?Q3B1Rzd0OXZEMVI3UWpiZnJuVjhqWmlTalp4OVVwREhHeWZTaWUvZkdtWnFs?=
 =?utf-8?B?WHpIeTdHb2lRRHBpdG5IQ2FQODh2bkhvek44OThENXNhY0E3V2c3WnRMYlJ2?=
 =?utf-8?B?eWxsb2M1dVdYWWhSQ2JFQldzRWk4cUs2TUxHWlZPSmwrTkxTUnlZbHRVaUNi?=
 =?utf-8?B?dnpzQVJXNVZQTkdiWWhBb0szdXJUbzZSVjIzRkk0eVhZcGpqQWZhUmUrKzZH?=
 =?utf-8?B?R2hYc05LOEJaeHZvZHRjclBwc3pIbDN2V2piekFsYktVS1I4Wm1QRllKMzV6?=
 =?utf-8?B?YkM2ZStYZVJqalI0WXZibCtRMkNDQUlTdU5CTXJFNXo3TE0vV3JPN05BRWxh?=
 =?utf-8?B?NjBoUDA3UzRkUUVyazNhbDBZMVQ3eWhRZmJrdHBGNEVzTzdRNjJyamY2U2dW?=
 =?utf-8?B?NnNCSWtweXV3PT0=?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY3PR06MB8195.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(786006)(366016)(41320700013);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?VFVLMFpuWlNCK2t1dnpDK0QrM25oVFFkd2t4dmVHQWlidFVmWG5sSUtPLzZU?=
 =?utf-8?B?bjRkVUptNEovNXJzcVF0ZFV0eGRrcTRxZ040cElEeWIzZDVqNFdBRjBVcytJ?=
 =?utf-8?B?dk8xayt3VDJpZGxuVDVUNFVPNFU1S3JpcTY1UGkyemRWbDNmKytWN0RyaEtp?=
 =?utf-8?B?L21yTHN0UWs5bWZtdm9MT0VCSUx3bG85VFd6ejFXOGVjTmQ2em43YWsyeTZB?=
 =?utf-8?B?K3dqd2Rod1RtT1k2R1NpSHJPZ1lOVk03eXNXNkI5aVFmdjI3Z0U4MlI4UE96?=
 =?utf-8?B?UVBhUXZINzQyVjZhdnJMbVVlQzQ5UkxRMjc3SW9ITXk0czR4N1llN3RqcFdq?=
 =?utf-8?B?YWw2a05zZ1FMVldlWCs4eFB3RGZRWW1Tc1VMdi8rT3ZoNFVsQ1V6cTBScmRu?=
 =?utf-8?B?ZG5jb2Nwb25PWDRHMWFYa25lWUU4TWlkNEtxczFFZDA0MTlJTy85VlNzTFRU?=
 =?utf-8?B?QnpSdERqb0ZXRmZlNmYzK2dJeklCcWFRamtoNkUxS2tPRDJmTVdJS09INVJi?=
 =?utf-8?B?SnUwNHlHUms2TmlrbkVHMGNqM0VmZ09LMTA4TkVRbzNkZTNCZDVSLzBraXFY?=
 =?utf-8?B?cU5vekxEWEhoR1RMUW16dmtyQTUxYWZmVjYydStiVUl2RFNMbUVWaHhrQzFY?=
 =?utf-8?B?bzRmZmRNZ2VYdGlodyt6aC9WRlJTYmR1UXE5MUl2TG9aSHlTV21Lam1hZ2tE?=
 =?utf-8?B?RWcwWnV2NE1Yc3BmUVJxVWhTM3kzN1dUV29CcEI4NEtjczVvMVEweS9qU2xR?=
 =?utf-8?B?TDN0YVJRYkVCMUo2VEhpa3NNK3VyVyt0dGV6R2pER0dpUmNEdEhPVnBrOTJ2?=
 =?utf-8?B?dkd5MDdxcGhWVzc5QUp2L1dYZGs3cmFqN3pHbld6QVIvYndTb3M3QnlDN3hJ?=
 =?utf-8?B?SysvdGRveE4vT3dHaVI1ZWxkSHpWQUoxTFd1YVl6a0ErNHdzOThpS1lHVGZC?=
 =?utf-8?B?T1N2NUFTeE1MRG5tVVIzeWc4MHZVZENYR1YrdHV3blA4emtuaFI0L3ZiQ3ZK?=
 =?utf-8?B?ME95QWUrMXdVWm5QTzlXWjhwclZ3amgxMkIrNVZPS0xpSkZ5dDFtdVZiSHdp?=
 =?utf-8?B?OFlSR0Y1Si9raTVyVEtqbUlmQmI2S1NxUnRDcndHckVCOXVSVFRzK0Z6YlZB?=
 =?utf-8?B?OVhRTTJqOUJrZ0lHTTF6MVJ6NmVYVFYzbldIZTZ5T3dMSTZZSHRjSUpVbm9I?=
 =?utf-8?B?amIraTdhVjFqeDFqWnZxWXJtZmNLU3k0U1J1Ky8vWll2aFVaZWRhSVhZNDQr?=
 =?utf-8?B?YldLUW1RcWhFSlA4UHpua3JUM0JIS2wyQXBJSDFmNTFRclArMDVrbTN6UzlW?=
 =?utf-8?B?RE02Q0hlWm5LenhZcnJNUVFvVDE1cHZ3a0dzTWZPRWFtMmdNQk1RYUdHT0Zq?=
 =?utf-8?B?N3hTb1RqYjBHWG5FTE12TkY4L1puZkc2YlRwYTNOSmNvM2JjZXUyUUNKWG1O?=
 =?utf-8?B?TlRPNU11cHMrcFAvWWExQzVsUjYyWTJWQzlqcDB1dkNXcUtPem5ZUzcvZVFs?=
 =?utf-8?B?aDV1VUdWdktyRDJCU3kvVG16OC9MOGJ6UDgwdlpqOTk2THl2TVhmQ2c0eWty?=
 =?utf-8?B?TzdDMDMvc0phb3F1WThOeVk1N280cnB0NmlRRllXcjJmcEozcTAyNjRhNzFD?=
 =?utf-8?B?aG1KTGt0LzlXVDBEcm9jVEtsQmdPS21FZDQ4UStDdC91YkZEUWZBV1FPalZI?=
 =?utf-8?B?N2FMdkhsSWlwbE1kd3hDdWZmelNsaWtuaUxYeWxjV2VxZDB0eWhpSEUwVy9N?=
 =?utf-8?B?ZkltamRrOVB4UDJWa05oRUdiWjlIVWc4M0VpM016NU9vZ2drV1RONklFajl4?=
 =?utf-8?B?QUlkYjh6Wkc5a05FM0poSzlvYlFiTG1oNVJmS3NUeDlaMEJZcURtL0JMMSty?=
 =?utf-8?B?WHg0TVhJSSthaHJSdE1adGx2NTVTUDZZeTNKLzJwMjdlczAzSW84U1FWNlFh?=
 =?utf-8?B?RmZqV3laSjRLU3dSV0pnY25YM0k1QVpmVnRPWkNQOHFwLytpQllIdldOUWE3?=
 =?utf-8?B?Wi8zdFlHampZTkJYZzQvQmlqNjhFalJ2MEdzQWNvRTE3aXZ5cDk3UUlNWEx4?=
 =?utf-8?B?eUp6U1VMRithZEdpVU9KWCtmL0JzU1A1NmJvaWNLdHlwQmI0bFp4elZnYUhw?=
 =?utf-8?B?Q1JDaVhUVWJjcDFMeENkYUlSVGV5TkdORE9mSzNvVW9HMStLTnVscllmTWV5?=
 =?utf-8?B?aW1MaS9sVmRYZWRoRThhNzJmbDhhaHVUY1Zpd2tsd2lDZnd5N3Q5TSthKzNi?=
 =?utf-8?B?KzZMQXNQZWxsM1J4cXJKTS9YaThUTmFCcDVDOHdkU1R0b282WS83MTlCWk95?=
 =?utf-8?Q?dOU3IdGWDpCjQEJkn+?=
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: 75312e9f-1325-4776-3f8a-08de4e13010c
X-MS-Exchange-CrossTenant-AuthSource: BY3PR06MB8195.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jan 2026 17:34:26.3234
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /N/hqHrhTjImlYPWD5Zkqzk1G5lmW31JiOU0xrohlL5xIN6qZumSOF3m1J6Jby8o
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR06MB7141
X-Authority-Analysis: v=2.4 cv=B5q0EetM c=1 sm=1 tr=0 ts=695e9924 cx=c_pps
 a=AQ8jqBFaYtg5UXnSSWtk/A==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=lre9DRYkaIEA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=DyznqomoAAAA:8 a=wkwwUTIBLFk1IX8hqEcA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
X-Proofpoint-GUID: 2EJyZqDV8sfzZklbNeRt_PR0H1_jZsGZ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA3MDEzOCBTYWx0ZWRfXy+NawN0Ny+Pm
 d6jolZn4F2SGnfq8/UwBlQ/znLVj25ILLuTr3EiDaZic6Ic/PwSWSmTE68uqMVcAu5sHdwv+Xh3
 xiIAH3RHZq9+2Uus0+PO7B7s7b4R+WWXT+NuetjEgoOKTsPobkxE2zlN7dOZg+KWbbaEUSIt990
 FLHrjE90z08A63+IuW+oBoEA1o6rSeLR7x4ks5DTa4UB3+2anronzKedZQ508QZjKMTGIjMsa8M
 12YrxfFtKNkuPEZMn+vRQi+xq324uDIxyxfnemDBgF0CP/mfDz/k+dKrwa6A6iL/4Bfi+/uDz6+
 ya1Fk/AFunsucxVJS26JDoZ76j2MjG2zhJW+3Fs6g5w4TnOrFzRsvas/VAA7siFlzzweB4hkibb
 sijaoFdL502Qs3Ar/L2heS+WhULLGVDgH+QJe27W3wrQfZB0HElPF2tbK8c9KWEuvlzvzGzkf3D
 eMe3P0t7u6z7oIK64jQ==
X-Proofpoint-ORIG-GUID: 2EJyZqDV8sfzZklbNeRt_PR0H1_jZsGZ
X-Wisc_ValidFrom: true
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-07_03,2026-01-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 adultscore=0 impostorscore=0 priorityscore=1501 bulkscore=0
 spamscore=0 suspectscore=0 lowpriorityscore=0 malwarescore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601070138
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Oh, well, the key point is that the DoubleTalk and LiteTalk use the same 
command set as documented in the manual. I've already made progress 
making sense of the data feed based on the manual you sent me. So thanks.

And it occured to me to look at the source code for the kernel module. I 
was kind of hoping to avoid that cuz it seems like a lot of work. Of 
course, the whole emulator thing is going to be a lot of work. I was 
hoping it would be easier. And it was pretty easy to get it to sort of 
work. All I had to do was to strip all non-printable characters and send 
that to Speech Dispatcher. It works well enough for me to log in, ping 
another system, etc.

My main problem with the project right now is latency. I don't have a 
lot of experience with Raspberry Pi hardware and I'm using bluealsa and 
a bluetooth speaker for sound.  When I press a key, it is echoed by my 
fake LiteTalk Raspberry Pi but it is unacceptably slow. I ordered an 
audio sound HAT for my Pi hoping that will solve the problem.

I still have a million things to do -- writing a systemd to start the 
emulator on boot, writing a udev rule for the host to start Speakup on 
the USB device when it sees the synth, packagine the whole thing as a 
deb. But I've done all those things for other projects so I am fairly 
confident I can make them work.

The big thin, of course, is perfecting the emulation. That is going to 
take me weeks/months. But it does already sort of work and you can build 
one of these things yourself:

https://people.math.wisc.edu/~jheim/RPITalk/





On 1/6/26 8:06 PM, Gregory Nowak wrote:
> On Tue, Jan 06, 2026 at 11:47:56AM -0600, John G. Heim wrote:
>> Thanks. I think that cinches it, I'm going to emulate a DoubleTalkLiteTalk.
>> Those 2 synths use the same Speakup drivers, right?
> No, the doubletalk pc uses speakup_dtlk, and the doubletalk lt uses
> speakup_ltlk. Beyond the interface difference (I.E. ISA and serial),
> both synthesizers use the same command set according to the manual.
>
>> There does seem to be a heckuva lot of extraneous characters in the data I'm
>> getting from the host system. I haven't figure that out yet. Maybe there is
>> something wrong with the way I'm configureing the USB port on the RPI side.
> No, like Brian pointed out, both versions of the doubletalk support
> indexing, and the speakup drivers implement that support. Also, I've
> noticed that if the pitch on my doubletalk pc/lt synths gets out of
> wack, it eventually corrects back to what it should be. So, speakup is
> almost certainly sending pitch/rate/whatever else once in a while
> along with the text to output.
>
> Instead of trying to decode what speakup sends to the synthesizer, I
> think it might be easier to get the latest kernel source, and trace
> how the driver communicates with the synthesizer. Start with
> speakup_ltlk.c, and trace the other functions in the rest of the code
> as they are called in that driver. Then again, maybe both methods
> would take the same amount of effort.
>
> Greg
>
>

