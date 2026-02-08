Return-Path: <speakup+bounces-1551-lists+speakup=lfdr.de@linux-speakup.org>
Delivered-To: lists+speakup@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id P3+kF73jiGmfyAQAu9opvQ
	(envelope-from <speakup+bounces-1551-lists+speakup=lfdr.de@linux-speakup.org>)
	for <lists+speakup@lfdr.de>; Sun, 08 Feb 2026 20:27:57 +0100
X-Original-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id E0331109FA5
	for <lists+speakup@lfdr.de>; Sun, 08 Feb 2026 20:27:54 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=math.wisc.edu header.i=@math.wisc.edu header.a=rsa-sha256 header.s=selector2 header.b=kPxwNONi;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 41AA53821BA; Sun, 08 Feb 2026 14:27:50 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 1DD5238188D
	for <lists+speakup@lfdr.de>; Sun, 08 Feb 2026 14:27:50 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 073AE3818A7; Sun, 08 Feb 2026 14:27:44 -0500 (EST)
Received: from mx0b-007b0c01.pphosted.com (mx0b-007b0c01.pphosted.com [205.220.177.71])
	by befuddled.reisers.ca (Postfix) with ESMTPS id B01FF3817F5
	for <speakup@linux-speakup.org>; Sun, 08 Feb 2026 14:27:43 -0500 (EST)
Received: from pps.filterd (m0316047.ppops.net [127.0.0.1])
	by mx0b-007b0c01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 618CdYaJ3685434;
	Sun, 8 Feb 2026 13:27:38 -0600
Received: from bl0pr03cu003.outbound.protection.outlook.com (mail-eastusazon11012019.outbound.protection.outlook.com [52.101.53.19])
	by mx0b-007b0c01.pphosted.com (PPS) with ESMTPS id 4c6p3tt6c1-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Sun, 08 Feb 2026 13:27:38 -0600 (CST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XwXShAYtIHd3B220/DI+IRNbH+dZKvaW8JHnCnJJ5ckdQLHrJz6pOIslZvqvvvv+WmYzdkYVLzqGfuw7KMROF0gGBkXpiNx9om/nvXd1f1000ikP9YfvyQwU/2E27OHe1OSvWmz0dTCWsLx8mqitW9Kwkrpd09B239B2g2KCGkLuU6nbZ3C+ZZp5uufDDYIZBEc2IaBG6wFoMdW5m9XKlUpKWVsEIfcT6xkDDxb5obkJnxc2kmELXGJg//VAcMbXrpFZqFszFhd3eF2UAXur94C4NMs2FEX67wXVlgWfkpYPMw8TMbhsiDg5zF//T0aI1UUQ3OTppbjBDCyQ63ORuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LU6beljfJWSBhNrtRNz2Na2xJD54IOvQAMBD7Tzrgzk=;
 b=sWTxsbbfEC3/VOppFxQGSTBTS/slBkjcI1nLodkAqbjxa0WCwNRBwhPVTHHDKhR6uVHlt+6A7mYHczxfqQKPUW/ErfTVjLU+xzjfJMsxl402M2yRxZNACxBsjdn+Q1aGZKwfM+1yO60Sb7WBsZFpfJoUpHaPzaebhsY8rXNr1RR3aeuS8ybMR3wVoFMJv22LSct8cP28yvHq1DIdY6cK8e94JhEoUwsVbB07R4s+ifmRDNa0mpFo2gvUsgt7ur/PDEqWbb+6Ztupwh5N8gDdD3SmDQc/m5oJvKqYIyVMCpTV4nzeawWPsR8+VhAVGAdVRbiSLmmzEGByDUBbehj8HQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none
 header.from=math.wisc.edu; dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=math.wisc.edu;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LU6beljfJWSBhNrtRNz2Na2xJD54IOvQAMBD7Tzrgzk=;
 b=kPxwNONiwS3hYD7AHCPRKaGUbhFDI83yw4CingisuPgwl6kU55nkiRLLNqdrMiFtZK6HUTCtA2ar7K5YgrVBhHAXD8dNHJfABPeYJLhUB7M9Mt+0LjAIwlQzvvblriej4LzXzhG3Lp/7dutib1dLDoPjhaJYy0mdflxfygI2svtJnaX5KsohNHuFY82S3NnkBOU4bsXxg3wFdQtUk4cwSdEQWI0TUPtJoy23HXPq9VbMIcNTfC9CM4S2MOVdYIWksxkyI/brw3lJR901BfWAxT96SPoO0LnSgnjs8Kgs7Jegu+1zCBRkjgXckMuJu5c2pSNLkSczZQ20NQh7pyPYug==
Received: from BY3PR06MB8195.namprd06.prod.outlook.com (2603:10b6:a03:3ce::19)
 by SA5PR06MB11236.namprd06.prod.outlook.com (2603:10b6:806:477::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.18; Sun, 8 Feb
 2026 19:27:36 +0000
Received: from BY3PR06MB8195.namprd06.prod.outlook.com
 ([fe80::a7ad:fb62:4389:fd8b]) by BY3PR06MB8195.namprd06.prod.outlook.com
 ([fe80::a7ad:fb62:4389:fd8b%4]) with mapi id 15.20.9587.017; Sun, 8 Feb 2026
 19:27:36 +0000
Message-ID: <367a36fc-013a-4bad-b224-e133da861827@math.wisc.edu>
Date: Sun, 8 Feb 2026 13:27:35 -0600
User-Agent: Mozilla Thunderbird
Subject: Re: Udev rules
To: Samuel Thibault <samuel.thibault@aquilenet.fr>
Cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <84b20d97-f12a-4e88-a108-c14c221a784f@math.wisc.edu>
 <aXv3GxD2sT5VeG3S@end> <601aeaf0-7bca-469c-80f3-07c6a25aeafb@math.wisc.edu>
 <aX3cmauIykh-pzfk@end>
Content-Language: en-US
From: "John G. Heim" <jheim@math.wisc.edu>
In-Reply-To: <aX3cmauIykh-pzfk@end>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: CH0PR03CA0063.namprd03.prod.outlook.com
 (2603:10b6:610:cc::8) To BY3PR06MB8195.namprd06.prod.outlook.com
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
X-MS-TrafficTypeDiagnostic: BY3PR06MB8195:EE_|SA5PR06MB11236:EE_
X-MS-Office365-Filtering-Correlation-Id: 79ff1a97-d26c-4970-0439-08de67481d8a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|366016|41320700013|1800799024|786006;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?Z1kyWEx1WCtUWG5GdDdqbG9kWXZpWjNSTk1CQ1M4T1VQQVArOGVVdElVbnF1?=
 =?utf-8?B?RzlqM3Q1SWNSSTNUeXlEWmJrQmRXWjNmMHloaGhNRXVOZkxNbFpJd1BUbHVP?=
 =?utf-8?B?c3VTTkg3WFI4c09PcllxSnRJZ1QzTFhiWWhHNzRBWS9CS1U0T3c0R1V1QVZG?=
 =?utf-8?B?V2FjdEMzbTBJTjRQNXZSTmdmUHAycWpRRWpTc3ArdTFSS3ZXR21nd1c5NkNz?=
 =?utf-8?B?WXQrMEg4K29WSndqMGZNdVBFVGI4VmZ6WXVvc3A2eC9hM1lqeFJmWWFiT2FI?=
 =?utf-8?B?UURkOUUwRlFYY3lkQ1hMQWtBUWdRQTRqczlJWW5vSzJ1YkVoVzBaajk5ekVZ?=
 =?utf-8?B?OG5RY2JzL3NIaUVFSVg0ZGE4NmEydU5HR3dEeDRDeUEzVHBuczlFQ1JkKzIz?=
 =?utf-8?B?OEltMzBOT1VsNVJ2YTI2Ung5aTc3OUxpNXh0ZUFRVmlqUTkrVUNvRVZGYU4r?=
 =?utf-8?B?S2dFRllnNTVTVVVpZGRqU0NwQVBvN1VQMG5TalNuaURrWkpSeUVNYzd5dWZv?=
 =?utf-8?B?emhVU3F0Q3ZsZTBlTWlNQU0wUjl3TUZDRy83WldqeW5KdWd5VWwyK0hJUmFo?=
 =?utf-8?B?Z0lsT3VFcVZCbG1rZlpyWXh2czV0OXF6OGZubXYvSm95Si9DditMdXYyRHpw?=
 =?utf-8?B?WjkxTCttTVRTWDRaT0t6aDQ0S2RLUGR3OUJueXZTeXQ4Uk1uOTBacXhuWjRL?=
 =?utf-8?B?M2ZhSkxWUGZJczU4bWFvTXlZQ1loTkp2dUlKWE12YzhBSk53RWkvQ084aUtR?=
 =?utf-8?B?c1JhaUU0TGNXbnRPL0dnbXhhMFd4S3lySFBWdHRWcWoyOWpiMVJDRVpERE15?=
 =?utf-8?B?WkJibUc3M1Vhb0FEOU9mZ0JGUEhISjNKL3pFVGlPeTl3MTBlcFloRXJaM2hG?=
 =?utf-8?B?Yk5BTlZ4TnJWQ1g5QmEwb3JSNVZ6Q1RrTWpPanN1ZHhib1NGVWQzV1czU1B4?=
 =?utf-8?B?eXJuTjlqbENQdlBTbFExRWdVUEV2OWpBNFpZU0tTdy9lZkYxZGxFMmR3aU8x?=
 =?utf-8?B?Y1V1dzVmbU0rWXJkVkJDaFlDUUNvdjV6c2hvQnRiT01yOWJVQmJHTklxUHhL?=
 =?utf-8?B?a1BnSUNvc2lBN3ljNWhBbGsvTDg5b2hYSEEzbm0zUktzVzVYRmZ1cjV0c0hH?=
 =?utf-8?B?Y3RxeGg2d0s5RTdReUZneGdOUzNhTm1XWkM5Yk02SklkeTNoa3hTM3lFZlJI?=
 =?utf-8?B?TlZSMUw0YTR0OWV4SFozcC81a1NvNFZ2VHdpekNiaE4rK2RoeDVGZGtMeHRC?=
 =?utf-8?B?L3R0RE5KY2VpVmFDUVVwTE1ZTVRZVTc1cjEwanpsaWVldzl4clNveTNieDhQ?=
 =?utf-8?B?eFUvZVphS1Z3RnkxeXVXb1hYblh2OWszaUpMWG1yTWthaXpDRTdxMlIyZ1lX?=
 =?utf-8?B?ZVJpdWZocE90Sm1lZFRXU21YbVdDeHU2emdPM3YwNlNWMXlrQkcybi8vRU9Y?=
 =?utf-8?B?bnFTUHJ0dUZ5UXk0V0NIS2VLWGdrK3phS3hYcW5vRUZydEVqMGVidXpUTXov?=
 =?utf-8?B?c0RBRjhrRTNmYU5GdXpKWTdLL2JKRXlJR2tpS3dURjJ1WVVoQ0lYRUVMYzV0?=
 =?utf-8?B?eGtyWjdPWkpIZzZGVFdGbHJMM0s3dkJRZWVKcXFNUC91emFJTkdURUQ5bjhm?=
 =?utf-8?B?QllnRUdLbWNKV0tGNmZyWE4yRENPMVp2UXB6MzVPMkZRTGtWeTgvOHpKL2JO?=
 =?utf-8?B?dkxJZEpiSzhJWmt2SGRLdVZickhaWDIvRXh3czBzRThjSm1ZREdHTk1Bc3ZL?=
 =?utf-8?B?SUZNMHl1NEVnZHcxT2VEdUFRenN6alo5VmJNWHQxNnB1TVZVdmFYa2lWYWpo?=
 =?utf-8?B?Rktud3dPWDlWZHRtSEdKMHlDM2lLb05OYmZ3RThyV3dMd0RoOG85emdwenEr?=
 =?utf-8?B?bkU5clJuWVBzaGdRSFROeUNKdytyRllkNWdpVExURW0vOTN1Zk0yL2ZJdFIr?=
 =?utf-8?B?b2FONG9CZU1EZm5rbGZrY1ZJU3RLMmZlRTJVRUdrUng0bWJnNWFjeGp0YmVB?=
 =?utf-8?B?eFJkWHhqVG1ScEFQNUJDbGFTUDJ6L3FTelVkQzBDSHU0MEtSelBvbzFyR21t?=
 =?utf-8?B?UDZITjl3eXFXa0lWSzA3ZXFwYWVqMVIxMFpkVXBBNG11WTlrQW1pR0J6ZTlk?=
 =?utf-8?Q?jMpI=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY3PR06MB8195.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(41320700013)(1800799024)(786006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?bWZ6WnJTY2lHZHRNaDlScTdsT0p5RHgwaHEzdlV4Q0NlMjV3ZTNwK0JqZ0VO?=
 =?utf-8?B?R0hRSTd4cnpLRXVWOFZ2d0FiSE44aktrczRMUDR1L3VRa2FLNkE3cXRBbFU3?=
 =?utf-8?B?K2JmRTJUcWh6RTh2Z0V5bTlQUGxnajN4bWQzQnpqcURMTERpTjZUY2NMeFcz?=
 =?utf-8?B?R1ExRFNFc3dacndoUzhIemtNcnFyblprNWVEcHoxb0JBNFZXMTZKUXpPY2FI?=
 =?utf-8?B?bFpPeWR6Q1NvUHluaUhLMWJ4d2pDelVuR0pZZzVsS0ljLzJuUnlzNGVvMnM2?=
 =?utf-8?B?b1hYWjN3Vi9KOGF6eis4NDl2eGNWenRpdndnRUtlU3UxNUlDMnEyRmtWMUx3?=
 =?utf-8?B?QXNXVDQvMUdWbzUzYW0xRm8wUlQ0UTkzMXltdzQyQmVMUUZDaGFHMGF2Y01n?=
 =?utf-8?B?RnRHQTlWUDRjTngwVnZyaHVEVGwrNHpsK29CS2c5eS9Fc3dmNzNkdlQvc1hL?=
 =?utf-8?B?SE8xRm5CUXV1K082VTdQbTlraVZGMkdRbjVWb1ljSEVJWFM4ZVcvVitpT0py?=
 =?utf-8?B?WENaVzFKcGZ6dU10bS9aMVFtc1kzMzhVaXh4eWQvQkd6M05sVnJjMmZ2RzJD?=
 =?utf-8?B?MzkrVGlRWVdkcXAwTVpqNmNCUXZXNEtLNkRsUGEwd0tIb1N1YjJ6NVU0WEtG?=
 =?utf-8?B?eGtYZGc1L1lqTE5HanlJTmpwcjVQSzVDd005QVY1dG5GbmZzYlhDWVYrZFVk?=
 =?utf-8?B?cmtkdkZ4Y3pOcXF1K3FqVEI1WlU3VHpadUN4M3hZMitaOTVWY3ZKQVlPeEdn?=
 =?utf-8?B?SXlTMzhZamRxTE9Jc3l4d2dHZlJ4M0JVeC9jZGE2VmVIQTFqWDF4N2U3QUdn?=
 =?utf-8?B?bWxISVVqNWluMGZNNmFuaWo2ZGdQaGNFbk1ZazFRUXMxMncwanc5RzBqeUxk?=
 =?utf-8?B?MmV3YkRnaXZlZVJCWFNFNVp1WU52Y2VWMGpzRzBDdkk3bnJtaTA4b1lKcG40?=
 =?utf-8?B?MWtFUE41K1JpZ2hweVZ1N3pHc2FjaTROZmdlbUFGQ3p1M2tqc3QzYTJBeFRl?=
 =?utf-8?B?L0FrSFV0UnRZVVRiZk9ESkFJRVdRamFZSCtVTTM2QXVoOHFBa1RGVGRPT1Bi?=
 =?utf-8?B?ZGc0SjVlc3B1UzhBYW41TVlWWU9WV1ptcUxKc3RCZkI1SHFycFJHLy9KRFVm?=
 =?utf-8?B?RE1ldzFQd0NYcWdXRnVoWkpVVisxaG11TU1pcWhGbnBjQ0dFMlZXcTlPenJL?=
 =?utf-8?B?TEpUMmdXTDYyUi9VRWR0SUUwYUVLSWlYYkx1dTdkalNNWjhORDVSamN3WDBW?=
 =?utf-8?B?ek9JeVAzSENxOWtTbXFrWTRiYWZYMVZQMXlqbmJRaVNqeWFTYjN0cUdIelpw?=
 =?utf-8?B?Ly93WVBNTFZ1bzU3STV0V0ErOGhzSEVicTl1QW9tQnp4aUJMUkxscGFlb0Nh?=
 =?utf-8?B?R2wxU2RGQVBCWmdxcFhobWVSbll5bzZmQkhSU0pIcUhtcnJLS1pQenl3QjhG?=
 =?utf-8?B?aVRUZU10WjJQdGdTVTdWWm10U09ucThlMWFsZHRneXY1RlltTVh0cHhOWlVV?=
 =?utf-8?B?bllhdUVpMW1uVWk2THp3ZUhHdkNGOG5vQ2YzVFNaOGU5NTFDMHFIVkpLMW91?=
 =?utf-8?B?enQzd0g4cXB3bmNCS2luWnpUNGtua0VWSFVFUXZ3THp5MW5BWHBJWkZLRmdO?=
 =?utf-8?B?YnBqL2tNRkw5MEhuZlBpc2dOamVDUzgwd2o1NTljeHZrK3FsT1hBN1I1OWpo?=
 =?utf-8?B?V0NWM3oxZEtlY1RjYWkzeWNNSXcwM2RocjVsTDVFbXY2NlYrS2d6SXV0Zlk0?=
 =?utf-8?B?cENkcDFLTnBUT2xXR21NSjZIbE1ZcUh5aTA1TjZGc0RvYTB1aGxkam5aQzhx?=
 =?utf-8?B?WHRjSlRnUmZ3WHJWSTZINWZ4R3psR1JJamxiSWRWQWNTSHpyMEg0U1daNlJR?=
 =?utf-8?B?bGNzTGFJWnhWcW5zSjBwMUhVUHQxY1Vpc0JRSzh1QkMzVm5HWUF6UU96YnJu?=
 =?utf-8?B?c2FlRnBnYngvdnpXUkJ4WlRDam9Nb2lBcDBVYzFHMWUwM3ppaVovd0IzSFR1?=
 =?utf-8?B?b2ZkTXZEWDJOeFU2WkZ4LzVtNmxZd2ZMM3hPNEpnRGUyMjVPcUtmdm9NaTZa?=
 =?utf-8?B?UVhVTFpGQjZDYmlVNmprRC9yQnJDUGxmYTVEaVVySG13T3BReU5xK2ZIRHNV?=
 =?utf-8?B?QTdnckZURmFsWXhtNXhzZGk2SVpxcmtwaHh0U3JySmlEV2lxbitwb3FHaG1B?=
 =?utf-8?B?OWNIRjdPLzlRdnREYi9SdTJhZXUrRnNiWk05Y2ZsT0YydkxNYml3RG1wVlFV?=
 =?utf-8?B?ZmsxVktoQVl5ejlMendNdmF5aEFsMjBOZlcyOGRlRmxRYk54K0hJNTNCRE5n?=
 =?utf-8?Q?KueKWka1EyJgBzgnAe?=
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: 79ff1a97-d26c-4970-0439-08de67481d8a
X-MS-Exchange-CrossTenant-AuthSource: BY3PR06MB8195.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Feb 2026 19:27:36.5961
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IEHwFkQmULkG88KMNUEuiUyXXn1P+CHg0lqlaC6CwGYogwk4jaHqKomvDYMuLLHN
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA5PR06MB11236
X-Proofpoint-ORIG-GUID: JQa5ypbDfevRPjRDnVEwyvpinHSVV2jz
X-Authority-Analysis: v=2.4 cv=CLsnnBrD c=1 sm=1 tr=0 ts=6988e3aa cx=c_pps
 a=zrUOGFyhpnkGsAL0isy7CA==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=lre9DRYkaIEA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=dP4q0JfO-S7kmHzIWBAA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA4MDE2OCBTYWx0ZWRfXxO/tNo7hCSX2
 VH1JmEt8nOHhusCGMgh4kqDX+cWr8kUjzPRrGx9R4yZNPTOs+MGM/3EBoVacK7/DkFeh7MkvZJn
 OzEzkLImmmHg1aSngfr0zpwlDQTokMYKAm2lbnouV1Oxi9ha4UvZkIDoZrjfu2MbADhQxrcVO9J
 XlLOdKGp8qGRO1b7MB/UXGyVi+z9/Pz3to9bDPiFTYj9HEB7yo+5JP98hoQrVNgr3bxg48hJNPc
 QsXNeyOa5ineW74utj08mNFm5tk3fbTs/lS7pHSAlHlzFHMzHo0ES/6+QvhQnkRWr42wHQ7ngwv
 lIsxxGCuCvRzksAWv/LODcICySyVNoFn0/i2q0cPlRDv/qC37clvig3+VKgaWRZjTMhvTS9F5r5
 gw8s6ldb3tC4/485qWCwgTNaHYqlwYoL6he8S6CnjaW1m2ssfY9/Gn+91KvYPa6T+u8zgXq3Qb6
 0Ci9nU9UifhnO7Gn6sQ==
X-Proofpoint-GUID: JQa5ypbDfevRPjRDnVEwyvpinHSVV2jz
X-Wisc_ValidFrom: true
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-08_05,2026-02-05_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 adultscore=0 clxscore=1015 spamscore=0 suspectscore=0
 impostorscore=0 lowpriorityscore=0 bulkscore=0 priorityscore=1501
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602080168
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
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	ASN(0.00)[asn:5645, ipnet:206.248.128.0/18, country:CA];
	TAGGED_RCPT(0.00)[speakup];
	MIME_TRACE(0.00)[0:+];
	R_SPF_NA(0.00)[no SPF record];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jheim@math.wisc.edu,speakup@linux-speakup.org];
	FROM_HAS_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[befuddled.reisers.ca:helo,befuddled.reisers.ca:rdns];
	DKIM_TRACE(0.00)[math.wisc.edu:+];
	TO_DN_ALL(0.00)[];
	TAGGED_FROM(0.00)[bounces-1551-lists,speakup=lfdr.de];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: E0331109FA5
X-Rspamd-Action: no action

Samuel,

How do  I go about getting permission to update the udev rules so they 
recognize hardware speech synths? I want to get the kernel to recognize 
my  Raspberry Pi speech synth so I figure I might as well  do as many  
other synths as I can while I am at it. I know that I can at least write 
udev rules for a TripleTalk as I've already done that.

I  am guessing that I write a bug report, include the fix, and then 
someone will have to sign off on it.



On 1/31/26 4:42 AM, Samuel Thibault wrote:
> Hello,
>
> John G. Heim, le ven. 30 janv. 2026 10:10:54 -0600, a ecrit:
>> On 1/29/26 6:11 PM, Samuel Thibault wrote:
>>> John G. Heim, le jeu. 29 janv. 2026 17:52:51 -0600, a ecrit:
>>>> Does the Linux kernel automatically load Speakup drivers for hardware synths
>>>> connected via USB?
>>> No, that was still on the todo list when Okash went to other projects.
>> Are you looking for volunteers? I'm willing.
> Sure, all contributions are welcome!
>
> Samuel

