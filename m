Return-Path: <speakup+bounces-332-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 18E67457EDC
	for <lists+speakup@lfdr.de>; Sat, 20 Nov 2021 16:17:16 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=uwprod.onmicrosoft.com header.i=@uwprod.onmicrosoft.com header.a=rsa-sha256 header.s=selector2-uwprod-onmicrosoft-com header.b=TkbP+2k8;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 59C35381164; Sat, 20 Nov 2021 10:17:15 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 354A3380EF6
	for <lists+speakup@lfdr.de>; Sat, 20 Nov 2021 10:17:15 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 88B55380AC8; Sat, 20 Nov 2021 10:17:08 -0500 (EST)
Received: from wmauth4.doit.wisc.edu (wmauth4.doit.wisc.edu [144.92.197.145])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 3EEED380331
	for <speakup@linux-speakup.org>; Sat, 20 Nov 2021 10:17:08 -0500 (EST)
Received: from NAM02-BN1-obe.outbound.protection.outlook.com
 (mail-bn1nam07lp2045.outbound.protection.outlook.com [104.47.51.45])
 by smtpauth4.wiscmail.wisc.edu
 (Oracle Communications Messaging Server 8.1.0.8.20210105 64bit (built Jan  5
 2021)) with ESMTPS id <0R2V018U8MGIFD10@smtpauth4.wiscmail.wisc.edu> for
 speakup@linux-speakup.org; Sat, 20 Nov 2021 09:17:07 -0600 (CST)
X-Spam-Report: AuthenticatedSender=yes, SenderIP=[104.47.51.45]
X-Wisc-Env-From-B64: amhlaW1AbWF0aC53aXNjLmVkdQ==
X-Spam-PmxInfo: Server=avs-4, Version=6.4.9.2830568,
 Antispam-Engine: 2.7.2.2107409, Antispam-Data: 2021.11.20.150916,
 AntiVirus-Engine: 5.87.0, AntiVirus-Data: 2021.11.20.5870001,
 SenderIP=[104.47.51.45]
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=K2UZCj9BqsRmgu5sBFdXJlfhlxvoloORJwijHUzVkhhWieccovTV2s/kbGKk72Zl9yzUdhQgshF68IzRLUnK6XNUpfiquk+FmXN6ZHfajaFL3otG+7k6E8j4G+wUcFpBuJDviImTD/7wIUHKREuISdwuOu4++H3WLrk6b+jFuK60WCmOsWJn+Fzji/rf/R7vzgFFQRmRjKs3AsIWHEo8FXdl7t+omrOJIDBn4W8eWB8inNJjnpXvlHlOGAinzB/QVAZb13lMa6fu23rACVWgawzkIsu0aZGprdkHLg3N2EGtWLSnY1NFV/VYZhvEaImgJ0qLVnPByNQcxl4WLM0lGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XlJv19kueS4saUEiw7aDTyEeM9I2Qa4Dk/EGF7hfVSo=;
 b=gXuMZCiVe4aybBhWX4ayQb0SiFOrMfTFseXtx7WM2sGd45gBxlN+nvTPB/REc575qlFCPZwfHD+eiItJ+dGSDg/D7YUqHUzBtbLUnC7EvdI7HlTWgKruvaYacogefxvBIZGIuw9bNVXYRtrgxH/LB7NPxPQv+udqoF8HISBo/pQBZEnLKilRNhLTCV5W14+6x+04TNTsF3ATD8DPvlfEFK6fMoWyc2nGD/I8q7vgImQWH4DT4S2SlL6IX8TJwy3IzHWy1DzAc8o2uJmZJgvfzG7wTW5z3gpwDR6kt8zekgTCoiXaVSu08t996Dcaw2qChW3LUP4RXaaMTQEGiqR1NQ==
ARC-Authentication-results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none header.from=math.wisc.edu;
 dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=uwprod.onmicrosoft.com;
 s=selector2-uwprod-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XlJv19kueS4saUEiw7aDTyEeM9I2Qa4Dk/EGF7hfVSo=;
 b=TkbP+2k8zYlwhSCq3BSrpWXHqM+iw3hmwwCbwiCPzd6397NXG9JUjTDdUSe6IsZ3wIlZDzP2lhSGLQvRDAWnKAuBddtidqUWGpFuPpiAcCzNxpjWL7nbI3lacnULQQAsTHh3jUQr4YedoirFEd3q+tfjsR+wL+jMKMyKFVgbQUo=
Received: from SN6PR06MB4991.namprd06.prod.outlook.com (2603:10b6:805:c1::12)
 by SN6PR06MB4336.namprd06.prod.outlook.com (2603:10b6:805:b4::19)
 with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384)
 id 15.20.4713.22; Sat, 20 Nov 2021 15:17:05 +0000
Received: from SN6PR06MB4991.namprd06.prod.outlook.com
 ([fe80::2c78:ee55:edd0:1718]) by SN6PR06MB4991.namprd06.prod.outlook.com
 ([fe80::2c78:ee55:edd0:1718%6]) with mapi id 15.20.4713.024; Sat,
 20 Nov 2021 15:17:05 +0000
Subject: Re: speech/braille live rescue?
To: K0LNY <Glenn@Ervin.eMail>, Mike Keithley <mlkeithley@comcast.net>,
 speakup@linux-speakup.org
References: <228234727.2.1637378390667@localhost>
 <092501d7ddc4$929696b0$7101a8c0@NUCPPYH>
From: "John G. Heim" <jheim@math.wisc.edu>
Organization: University Of Wisconsin-Madison
Message-id: <f12a316c-f52b-1cc4-6db1-5c1191f4c0c6@math.wisc.edu>
Date: Sat, 20 Nov 2021 09:17:01 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
In-reply-to: <092501d7ddc4$929696b0$7101a8c0@NUCPPYH>
Content-type: text/plain; charset=utf-8; format=flowed
Content-language: en-US
Content-transfer-encoding: 7bit
X-ClientProxiedBy: BN0PR04CA0181.namprd04.prod.outlook.com
 (2603:10b6:408:e9::6) To SN6PR06MB4991.namprd06.prod.outlook.com
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
Received: from [192.168.0.14] (108.85.191.186)
 by BN0PR04CA0181.namprd04.prod.outlook.com (2603:10b6:408:e9::6)
 with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384)
 id 15.20.4713.19 via Frontend Transport; Sat, 20 Nov 2021 15:17:04 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 218e6668-b727-40a0-8375-08d9ac38cf8f
X-MS-TrafficTypeDiagnostic: SN6PR06MB4336:
X-Microsoft-Antispam-PRVS:
 <SN6PR06MB433626DC0F661EF9B2A5378AF39D9@SN6PR06MB4336.namprd06.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6430;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
 OX4PBcNbh7odsyqs9HJTTsMhjkZQNdjggL72VAGxPg94YQzFw+SY5xMzIfjNCfD87sVUjGNmRsEOPmeeHEJrsoiy3LlDcwPIWJXhDoFv1TSxJQKZn8iXQPMRGxR3zGPremtt0RB2Edidh+j+0M0nDcNZgE6qlTtYxFVbLNrvwsk17sJeC0FLJFvPWRi+RXwNI8PEBZqhSnzOgMLRJn2jXvZCNI2ouFRcKV5aPf+i/CEURLKmAfeeyBu1dwYEjpLzvdWx/B/F7Jmz0InnMLROPuC737jKG2NlrDv6cjxjitbG7eNbt2UosX+9jwETjI9dR4vCozQEygDWX+Fm8TwHTiUvS7c0j7zxRvQ1Y/TfkzALLIot3m21JN1SdmMlDBaufwLckCkyrNuJuvbNCCyX9iAwpsL8QKB//rNY5G9ScEUhRo/+ISX0JiLvIqjy+D4pGuWGNdnYFHjzuH45uZXpo/puIguDuOU5UlzVaQD+WyZpYRHB0wp0mgizwGRdrzr478oZ2vNhk7xguDAIsa/zqBWSs+jP8w4OcfouNLxylVT6Rb+ZdlS/vRQAlO6EQxgFGAiSFMnf+a6u9dJ3JkPC/MLY6CVdmCJjUp9fv0HQ51rFGDC8AU0HZiQjmoUwEbSmyJ0/bumYIT/Tj65lfj1wginpkAdK6qLJzw65LpKbqjQXylCr2VeWiPUVeEf5HHKMMQdIMjcFvXeu0HA5iSr31E50dFzWSYhLwUU6riil8XKLkURaftQZiAQJgrDeDsKF
X-Forefront-Antispam-Report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SN6PR06MB4991.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(366004)(6486002)(31686004)(6666004)(66946007)(26005)(66476007)(66556008)(31696002)(3480700007)(8936002)(40140700001)(8676002)(2906002)(86362001)(508600001)(53546011)(38100700002)(186003)(786003)(316002)(16576012)(956004)(75432002)(36916002)(2616005)(110136005)(83380400001)(5660300002)(151823002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
 =?utf-8?B?bXdzNmdOL3h0YW9wNkVoM1pXSTE5N3lReVNBMHFDbGZSellKeFlRRzZYV3J2?=
 =?utf-8?B?UXdMZVVzVnQ1NG5FeWpRS1lFMlB6LzY0TEZRYTY5NUhzaWFNZnlmOHJLQWVj?=
 =?utf-8?B?WXJ5TzNjeVRNb1I1bVVVbDlsQTg5cDY5eDR6RXp2RUVUdjJSOFFObXYweHRG?=
 =?utf-8?B?aUYzMHpxVzBvcXZ5M2FOcW91bDkvRWFza2xwdUJWN1haWW81SUFwdHo5Wjlu?=
 =?utf-8?B?SEVrQkJ4YUt3elhKbCtEZFZqTUloMEx0RHkrdE4zdm82N0RlbkdzMng1SGFo?=
 =?utf-8?B?dUphMnIrMTZXcE04MlhHaS9CbTF4ejBodGovSzc4b2did2t2bmx5bDJRblZz?=
 =?utf-8?B?cDY2OE1ZaXhwY0ZweDBwQThMQm1EZWIrRU92WmQ4S3Arb0ZOdWhFWTRTMkhB?=
 =?utf-8?B?bFhiTmt5ZlhwMXE2ZHFGbk1KRlZzK3o1TDFReEdVYmJwdFZycDRrZG9lM29h?=
 =?utf-8?B?NG9PN3ppR3J6aWllMlc0alphVW5CcWt2TWV3YlIzN1Fvc1ZCa3lmbHJ2L1Zk?=
 =?utf-8?B?MHU3UUdBekxMR1dmNmluaVVUQWp1MGpxeEZtTFJ6YnovSmJmTExsWDI0eU5x?=
 =?utf-8?B?S0dMWk9FZ3BnZXNNVVdxR3ViMm93anQrUjhDaGpYOGpESzV1d0hIRFRnTThw?=
 =?utf-8?B?TEJjT3g5RzJKK2dPbUtBTnRZNTQ1RC80ZUJwaEpscXVFVnlaY1dHcXJYaHpD?=
 =?utf-8?B?TGJXVVpFZGVFUVZBNjFQUUEvRTA1Y09wVDJENllwb2ZBclUvVlNCMVNJUWx3?=
 =?utf-8?B?TXlrTTZuRUZhN0pNQUNadE5SLy9ucFJmV200MkswUk5hZmpFQ1ZNa2I5UElH?=
 =?utf-8?B?ekhHSFd4RTZ5U2xXVjZGZVo1WTNQYVFPK1RxbmhLdkJLRnhDSktsbkg1c2J6?=
 =?utf-8?B?THBoaGV0NFMxUTlHVGovZitydnptWGoxS012RmdlZXVOYlUvd3pHVXUvTElq?=
 =?utf-8?B?UkRXN0VEb3FuMFRBMkYzUkovZzFnWDJWOHJMYXRKSHJOWmlvNmtvMDIzRE1v?=
 =?utf-8?B?WnU4QXdGUnJSbnN3bllYRmxEaUJRODdFN2xZRDViNTNqNHRKSUNHZ1d5R29Z?=
 =?utf-8?B?dElZTTg4N0Z5eEkxMEtVclphTy9XWW9NbGh1NHYyeXpaNEZyeWxzd0RTSDh1?=
 =?utf-8?B?R1hMRTdrb3F6WHUvbjVCSjYzZkQ0NXVjMmNoTXFBaTFJem1qUGEvQk5Dd2hY?=
 =?utf-8?B?NXJRandYR2UyWE45YlBEUmtBQzZKN2hHUy9YYnJGR21RTzV4UUp1YmdMWVRl?=
 =?utf-8?B?eE5FU0VhSTRreXErVTJIdmViZHNiRy9PWk52QTREU3FuQzVPRFNQbFFXTGZV?=
 =?utf-8?B?NkJjZEhFbUxYc2lDQWdvN0pOSDB6NkRiY3A2MmVXMGprS085TFlUM0JTa1VC?=
 =?utf-8?B?QmFVUlNlaGVoVllzSW1LVHpCTjBVcDhIVW9MZkQzOElVQzFob2JoSUFEakZJ?=
 =?utf-8?B?ZXQ0Vk9HcGhtbkFWdXZYTXRvUERLd1crU3ZxK1k1T1N2dzlDUEVkLzBsVnBN?=
 =?utf-8?B?V04vZ3I4U0VWUzIweWtOekphWUhYczZ1T0tRZWxqdE1PK2czci9WbUhQaEhn?=
 =?utf-8?B?akVVTkE0Sjljd0dXNlRXV1FWaE9pang5M3BFakVybmpPWXVRUDQ0ejNvVVNM?=
 =?utf-8?B?VWZVZFNNMGZpOTFuUjFqQ0tCeFdVZ0dkN2xpVFdIQWR4R1Z5MSttOTcrVXFD?=
 =?utf-8?B?WjQ2T2ZJWVFwK3dkUE56ZjVoK0tUTC9KUFkvdlFsR3NWYTAwV1k2c1oyT1Mz?=
 =?utf-8?B?OFJsTTNDdm5SeW1kcSthUEFkbUk5TUxPNVZYNE1ab1JQT2ZCMHRXR2VCc2Js?=
 =?utf-8?B?S2ErbU5sRHFoN2wzRDNSZDhPYnlzeWpzUGIwOXk5S0JKM1V0Z1NBUFIrMkE1?=
 =?utf-8?B?M2pKN2REenh6bzhMNXhhVnVVblVQSnowOXRJTHFBZGVCZTQrS0lDN1JlRENP?=
 =?utf-8?B?ZUFzVm9TK3RwZkRQWnZiN2hRNzRIUk5pQnNTTGFaR3pVT0F3OXEyR2JrZm1H?=
 =?utf-8?B?TldDWGpRZ3RJR2k2Q1lxVi9ucnFPR0RrWmNLWlVOSTZWRnllMGpQWnVSK2k2?=
 =?utf-8?B?dks0ajREaldobndiM3lhWSsvZForaCtML0tVMmFlVDQyVVRKRnJkVVNkTUZE?=
 =?utf-8?Q?jrdY=3D?=
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id:
 218e6668-b727-40a0-8375-08d9ac38cf8f
X-MS-Exchange-CrossTenant-AuthSource: SN6PR06MB4991.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Nov 2021 15:17:05.2189 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName:
 HTdy1x7b2Zk87BCAEbmscjFqlBZ3p53qm+uGnzLzdyeo9duB5LqumKDNQyBuGWT3
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR06MB4336
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

GRML hasn't had many releases lately. They put out a new release only 
every couple of years now a days. I am on the developers email list. I 
haven't actually done any development but I test every release for 
accessibility. So I am pretty sure the latest release has both speech 
and braille.

I am pretty sure the way you get speech is still the same. Wait for grml 
startup tones, press q to quit the menu, type "modprobe speakup_soft", 
type "espeakup".

The last couple of times i needed to boot a machine to rescue it, I used 
a Ubuntu disk because I usually have one of those around. That is 
probably the big disadvantage of GRML, you have to think to make one of 
those in advance. I like using CD-ROMs because you don't usually have to 
fiddle with the BIOS. If you have a machine where you can leave the 
drawer open a little, you can just keep the CD-ROM in there and simply 
push it closed to boot from the CD-ROM. Only problem with that, of 
course, is that you might as well go watch an episode of Discovery 
waiting for it to boot.



On 11/19/21 10:10 PM, K0LNY wrote:
> It used to be that GRML did, but I haven't used it for so long, I can't 
> say for sure now.
> Glenn
> ----- Original Message ----- From: "Mike Keithley" <mlkeithley@comcast.net>
> To: <speakup@linux-speakup.org>
> Sent: Friday, November 19, 2021 9:20 PM
> Subject: speech/braille live rescue?
> 
> 
>> Which linux rescue systems have speech/braille as a live bootable 
>> image I can put on a USB stick?
>>
> 
> 

-- 
###
John G. Heim, 608-263-4189, jheim@math.wisc.edu

