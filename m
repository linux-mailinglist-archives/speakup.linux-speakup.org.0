Return-Path: <speakup+bounces-414-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 81E30521ED3
	for <lists+speakup@lfdr.de>; Tue, 10 May 2022 17:32:04 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=uwprod.onmicrosoft.com header.i=@uwprod.onmicrosoft.com header.a=rsa-sha256 header.s=selector2-uwprod-onmicrosoft-com header.b=sWUw+jpV;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 9D17A380DDD; Tue, 10 May 2022 11:31:59 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 79837380E02
	for <lists+speakup@lfdr.de>; Tue, 10 May 2022 11:31:59 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id EF62038099B; Tue, 10 May 2022 11:31:49 -0400 (EDT)
Received: from wmauth1.doit.wisc.edu (wmauth1.doit.wisc.edu [144.92.197.141])
	by befuddled.reisers.ca (Postfix) with ESMTPS id B36AA3807F4
	for <speakup@linux-speakup.org>; Tue, 10 May 2022 11:31:49 -0400 (EDT)
Received: from NAM10-BN7-obe.outbound.protection.outlook.com
 (mail-bn7nam10lp2108.outbound.protection.outlook.com [104.47.70.108])
 by smtpauth1.wiscmail.wisc.edu
 (Oracle Communications Messaging Server 8.1.0.16.20220118 64bit (built Jan 18
 2022)) with ESMTPS id <0RBO003M2B50V150@smtpauth1.wiscmail.wisc.edu> for
 speakup@linux-speakup.org; Tue, 10 May 2022 10:31:48 -0500 (CDT)
X-Spam-Report: AuthenticatedSender=yes, SenderIP=[104.47.70.108]
X-Wisc-Env-From-B64: amhlaW1AbWF0aC53aXNjLmVkdQ==
X-Spam-PmxInfo: Server=avs-1, Version=6.4.9.2830568,
 Antispam-Engine: 2.7.2.2107409, Antispam-Data: 2022.5.10.152118,
 AntiVirus-Engine: 5.90.0, AntiVirus-Data: 2022.4.19.5900000,
 SenderIP=[104.47.70.108]
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ofPKDdLSoBvioAtGMsZ8wx5uWo5u/Ccn9iXLnF321fvMrJVsdSyTZU66klEsYtTJUBuEbGFNtd2aSTDbvOr9s8NOb8d/dRX8zdvEO1DSyHAQLU1HczwBdbpLq+wsbsTx7nD5rulw3QtKWBhEYZ2eyTYiNSLSkcAan5yY1rf49EiunlyQM4WhHpgCNO3WzgtUmED5PC8Vu21q9zhNXt0v6V/A5O2nQpM9WTkxuOd2ZK0Z1PkeAwTorjh01w3VNU3PgVlpkaK5NNNNt/mrhsn76C3m2uppyLR2qxdgaC6mjok3Hea9YuEMklml80aUioqVlspepj/WWZZ2G2Z5Adbiuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5Cao6nPwJkT8Yumx39iZzC0MOZ7HcgdoLS2HLYNKdmw=;
 b=jM2L9mKsQc04y33H1l7vvEJ7PUx1cVS3n3cwTs8I/GJRQ49hvMh5Q8HJiJxoVBv3qBDTxhmlbLKQmHM8OdGzTn/AyFdAd1zybPm+MWPG3kgjkuK4QYqOUYbJJ8TFbViVZWSrNaaOhhHhzkyAsClbGzYlwZnSjiaKXHuGPckKVt7MTRu+TU23efLH7UDwWxfx8dXx3IgsU0GE2ypTqo8PGzwqEbsDJUczk6CgEppFKAumTxJYSAr+b7rf3AuzrFf5a2FRl3bK52ZIx8Z5hgFMPxEtFCjY/lm/raJEbWp78hH6T2bD/Es+4u3lQyjKXct7AIWkaQGUuOd/DIfuyUagZw==
ARC-Authentication-results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none header.from=math.wisc.edu;
 dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=uwprod.onmicrosoft.com;
 s=selector2-uwprod-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5Cao6nPwJkT8Yumx39iZzC0MOZ7HcgdoLS2HLYNKdmw=;
 b=sWUw+jpVAqkIY1TfRe1kWvQiK5l+cQ032MKwEER6Roba8xcoJ5g6SxUg3YTYd2FMSxggm1PR9PGwwMeVOXqHMCudfS+l1wUPA/d95WYistD4C2A/ba/0Hlkry/zsPUCrFS10/DsV5ZLHCeG2kC63RDyrHsa9AicG5QNI9/NcXSE=
Received: from SN6PR06MB4991.namprd06.prod.outlook.com (2603:10b6:805:c1::12)
 by DS7PR06MB6965.namprd06.prod.outlook.com (2603:10b6:5:2c6::5)
 with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384)
 id 15.20.5227.22; Tue, 10 May 2022 15:31:47 +0000
Received: from SN6PR06MB4991.namprd06.prod.outlook.com
 ([fe80::d56f:a62f:5f20:5484]) by SN6PR06MB4991.namprd06.prod.outlook.com
 ([fe80::d56f:a62f:5f20:5484%7]) with mapi id 15.20.5227.023; Tue,
 10 May 2022 15:31:47 +0000
Message-id: <58ffce59-cc8f-a61c-a382-275bde9a1b1d@math.wisc.edu>
Date: Tue, 10 May 2022 10:31:43 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: Speakup Left Out of Ubuntu kernel (again)
Content-language: en-US
To: Didier Spaier <didier@slint.fr>, speakup@linux-speakup.org
References: <81afd3ae-b377-800f-dc94-0dfe301011fe@math.wisc.edu>
 <08011ab8-4189-8ac7-38ac-e97424afc729@slint.fr>
From: "John G. Heim" <jheim@math.wisc.edu>
Organization: University Of Wisconsin-Madison
In-reply-to: <08011ab8-4189-8ac7-38ac-e97424afc729@slint.fr>
Content-type: text/plain; charset=UTF-8; format=flowed
Content-transfer-encoding: 8bit
X-ClientProxiedBy: BN1PR14CA0025.namprd14.prod.outlook.com
 (2603:10b6:408:e3::30) To SN6PR06MB4991.namprd06.prod.outlook.com
 (2603:10b6:805:c1::12)
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 40dbbd2d-ec1e-4fec-eb13-08da329a31ba
X-MS-TrafficTypeDiagnostic: DS7PR06MB6965:EE_
X-Microsoft-Antispam-PRVS:
 <DS7PR06MB6965DCAD33775DBD904996BEF3C99@DS7PR06MB6965.namprd06.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
 g2SmF+1Ah56/YXFfjDrPJVI3eSxW3+pm9Ajp0hyCSIjagT+kIvF/0iQwDCNSaSel2C+dPWoaRI2RHan9Xi0OZVJFhkpJq67l9TSQa/MPKhNiT6gWsoqU/alXGfY1MLhV1429CvcWTuWh7QAuoYSup7M8rc/e+ZPBD1vWac0d4VUzVVSdhTbezLTI3UoetzpbDqAMEuOEragy9cdIuhV5nooxZCngBeotUQ8sepyp5a8tvn+xQGf6wvjdRr37zCa/uP1/PtYGwhRygm2Q1tqXJ54YwivmHIh91hW3xizqJdzs4egAPnNkVGN8tCQSF2yIVVhB1wxiQtj7wqBGCc0lhfq21zFKl3FzixlmzBs02LgmZTTN4J7x9SjomYs0P+upx4MbQodrget9RS0lmvm32+76Vj5Jph+rd/d+T2HuIioxsP20YtntqQiO7HtMGV+zhEuXCYiJzUVPMuLJ44FiwvxW43ZUW6BBFNkbAhO6YoQ1nKHwSiVL2NydZmjxPZKfGel4rT/nh8Cygp2l+Ato28xXKL/f5+WRpealnoCvsysrq8RlbaqkB9xoVZU0GGysnNCOeh+UAasflRR15v/BMAlZAB2m7bvZbhhBj2J7wQmMiod8DbULMDlctqj50bQalUciGEc8tCk+BqKE1ijeDRs8AV21+gCKsvKKMKqw9RmWO28VuHljwZgkL8w1yjvVICPr2ZqTmiRSzgC3OSRe3jSVs7bNG5L/g5TdFAc5frA=
X-Forefront-Antispam-Report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SN6PR06MB4991.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(366004)(186003)(40140700001)(8676002)(66476007)(66556008)(2616005)(66946007)(508600001)(83380400001)(86362001)(6666004)(6512007)(26005)(6486002)(786003)(316002)(36916002)(6506007)(53546011)(31686004)(2906002)(75432002)(5660300002)(38100700002)(31696002)(8936002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
 =?utf-8?B?WUNDRTBoTGNIQndtdDZZczZIOElYMXNmdHV3OFo3NHNKYzVkVE1rdkg5WVVk?=
 =?utf-8?B?Q2FhRlh4YzRkRS9ycWdyajJMOWNtdmdDWksvdGMvNmJIbnFqTnVpSXkvNUFW?=
 =?utf-8?B?NGtXWUlJRnJULzhMQ01waUdoL1hMeS9nUDNUaE5vdnBjVHRSZWZOckVwWDNK?=
 =?utf-8?B?WmxZWFJwcDhxTjNINTV5UnJJR2x5cHFsaUxSWUZ0SUxDanJUNnhXMjhJZUxF?=
 =?utf-8?B?K2VnZUN3WFk2eGg2UTNzR3dPMm9LdTV0OXp2V3JWMm1kT2pXWEpUcmlDV29w?=
 =?utf-8?B?ZDh4bTRFN09vNWtQQ0xjTE1uSmdzSDNRNlYxV2V3VXliYnZCYW5uSFNvUzg2?=
 =?utf-8?B?VE1nTTNVMVBySlJpMXp1aTRqOFdiVDhORGphRSsyQi85Mjk2Q2NrK05qMmsy?=
 =?utf-8?B?M1A3ODlXWDA0MWd0ZU02M2RBSFJxNUphVFc5dGtvdzFnajN3ODlqcU1KR2gz?=
 =?utf-8?B?Nmtxa3dnemMrRCtmVmlmeWRKQmh4OG1yZnhzS2NQWHpXektEajRJaSs4eDRu?=
 =?utf-8?B?UE0yTklZM3lmazlpa0E5QTlUZzZ4SStXcFpaM2xvbVlja2hocC81REcwaDdS?=
 =?utf-8?B?bldaZHl2N2x0TnQ5bC9POFpiOG1pU3BodjdsZE5aTGszMUNGM2U2eU5henVH?=
 =?utf-8?B?Z0FDZXpBdFV3U1B4OUhqV3FRRjJpS1NnbklSV1Vta0xrNUZrVFA0VUdRNXhM?=
 =?utf-8?B?d3VFbG1BSThMK21aTFlnVGppMy93eTk0SmhTOGM5TnZqZy9YMGlrZS9HS0Nk?=
 =?utf-8?B?clRDNm1ETzNBSnVVdzBNZjJrTkJEeUFtSUZySXgrWW15cGZVZTJSZzkyVGM3?=
 =?utf-8?B?Q0JZWWhaekw5Tk1mNFJHdGJKRnErS3lOV3pPSHdqSUM0UU8xZnpvb0ljdFdD?=
 =?utf-8?B?M2pvcnpqazNIZUdma1NteldlbXk1MVprR0pFSHJPemJBNURlY05XK1BKRXV0?=
 =?utf-8?B?M1NFMFBkU01kdStXY3JBb3ZJTzNsamVaWlBEaTBtMXRPUU9NbHI2cWNnWERT?=
 =?utf-8?B?Mk9uTnFYRTdRVitmMmQ3Nkl6aGQvSmhnUSs1dUhXV2Zob0FuSFlvak8yME9l?=
 =?utf-8?B?M0tvUTZDQnpqUnZTdEpMSS9uQUQ2VXBsTDY0U0tvRXRDSlFGeVU5WGVDWjlB?=
 =?utf-8?B?aGh4SU02UmZlbmpKcXN2OXh2UlB0ZGlQckVLWk52U3BieHgvRDVFckIydzlT?=
 =?utf-8?B?YVhyVnpZa0pPZEsvTFZ1MnA5dnc5RnduYVdDLy9qbDBZbGtod0VJdXZZbXVQ?=
 =?utf-8?B?SDNQUG5OQTdrNnI5dDdQT0UyUHhoQkNFcjg3WUJkWlFrb0NzL3l3blRRL3pY?=
 =?utf-8?B?YzV0TmV6RnJGdXJyS0ZIZ3N5Zjl5WXQ5TnBYblU4bDVwQnhRaEZQVG8rQ3pB?=
 =?utf-8?B?cVMrZ0VoOHpuZzBPOEhTcDJnUmJEeGJwL3dpL2M5K0JDM0xhTSt5MTl5ZWJw?=
 =?utf-8?B?VnpsdmNOS2E5UXhzNGpFeG9ycE9PSno5Tm9kTXYzNHBTVVkwcW5LbFRJNU0v?=
 =?utf-8?B?aTFjUUw5c1dEeFR3c3IrcVN1NlZJZE4yclhLN1cxZFEydC9rVGtGWUJsVzhB?=
 =?utf-8?B?ZWhrNDVJSndYaE11YUZob014aGxzQXlhNjZkeDBMVHh5L0ovMTdKN281N0py?=
 =?utf-8?B?MzF6dzRDR3djei9tSEgzcFRTblB2ajN2NnhKSjlZempLZ0VLb3pYUGpBRWJJ?=
 =?utf-8?B?cFk0Uk1wUjZSMjM4T3B6SFVDZVRXZ21jOHpnM3MyaFEwZnluN3hQRFh4RzNT?=
 =?utf-8?B?bEVGWW8wS05UbThFWFNsbFA0cWlSUGpaRFhIUXBoQ3YyaTA5WHRuK2Nwc1pu?=
 =?utf-8?B?dUJWT3k1TzRiQlpwVVJUdzBPUkxGTmpaT3BvUnZrTHQrRVoyUXlvWVp2VjZZ?=
 =?utf-8?B?ZHlDc2xTRWFMZzBBaGQzbCtvWFAzTG1tQ1FFSjBHNE5nMGNzcUFuM0lDWkNF?=
 =?utf-8?B?QjcwVkJZeDlScjVsTE5QcW9RcHJGdUpzZ0dkNENXYWV1ZnNxUjgvQjVJQy9a?=
 =?utf-8?B?bU9KdEJxamg0THNkaVF6Y09UYTFOYXBuVXpnU2VkS1Vrei9lb044REMwR2RD?=
 =?utf-8?B?K080UUc1ZGxjL0VCY3h4MXZUTWxqeExRckN1ZmNGeUc3ZXphSUNZaWp6UGdj?=
 =?utf-8?B?OCtmQzdFbzVQK3owZCtjTnBDcHU5RVlmbjltb1IvN2I2bTd6d0FsbEltdkNL?=
 =?utf-8?B?cTJVaE0yYTNzVlNMYjVHYTk4aFJVK0g2UkRkNjVZazlzSWtqeWwzVnVJQnda?=
 =?utf-8?B?T0hzd2tQRnVIbkZVUlRGMDgxS3kvcnFLWGlWeUx5SUpsT2hSak44YU8rczRT?=
 =?utf-8?B?NGpNZUFjVTFEWDZTSjFSdWNlTG5QekZTaDlxR0xxL2dzeGVjeU95dz09?=
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id:
 40dbbd2d-ec1e-4fec-eb13-08da329a31ba
X-MS-Exchange-CrossTenant-AuthSource: SN6PR06MB4991.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 May 2022 15:31:46.9688 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName:
 EA+Ej2I8I+Dq0DeTysSYuCbI+B+ObobsGVkMaRU1OOuyNXppCZscu9O5zCMFiN8c
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR06MB6965
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Come on, Didier, you know better than this. It's rude to give someone 
unsolicited technical advice. I'm no idiot. I don't need to be told I 
wouldn't have this problem if I was running Debian. First of all, I need 
to run Ubuntu for my job. Secondly, I literally cannot get Debian to 
work on the machine for which I filed the bug report. After installing 
Debian, the kernel won't load. I think it has something to do with weird 
EUFI settings, maybe something to do with kernel signing. I don't know. 
All I know is that after I install Debian, grub seems to work but the 
kernel simply will not load. I get a blank screen with some cryptic 
error message that doesn't mean anything to anybody I can find to ask 
about it. If I posted somewhere that Debian won't boot on my PC but 
Ubuntu would, you know what some people would say to me? That's what you 
get for running Debian instead of Ubuntu.

I'm not trashing Debian. Personally, I feel Debian is the best distro. 
But it's not perfect. Nothing is.

Besides, we owe it to other people who might not be on this list to make 
  sure Ubuntu keeps up it's accessibility. There might be other Linux 
systems admins out there who are stuck with Ubuntu. As a matter of 
principle, we shouldn't be telling people that if some distro has 
accessibility problems, just switch to another distro.


On 5/10/22 01:43, Didier Spaier wrote:
> Le 10/05/2022 à 03:19, John G. Heim a écrit :
>> Arrgh! Speakup seems not to have been compiled into the Ubuntu Jammy/22.04
>> kernel. Same thing as in 21.04 and 21.10. Man! Well, I guess I'll have to file a
>> bug report ... again.
> 
> And/or switch to a genuine Debian.
> 
> Didier
> 

-- 
###
John G. Heim, 608-263-4189, jheim@math.wisc.edu

