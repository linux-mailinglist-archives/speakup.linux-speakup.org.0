Return-Path: <speakup+bounces-558-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 3D2F85960AA
	for <lists+speakup@lfdr.de>; Tue, 16 Aug 2022 18:56:56 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=uwprod.onmicrosoft.com header.i=@uwprod.onmicrosoft.com header.a=rsa-sha256 header.s=selector2-uwprod-onmicrosoft-com header.b=gFrRQu4W;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 39B463847D1; Tue, 16 Aug 2022 12:56:55 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 1BE8E3847DB
	for <lists+speakup@lfdr.de>; Tue, 16 Aug 2022 12:56:55 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 074E5380AA7; Tue, 16 Aug 2022 12:56:49 -0400 (EDT)
Received: from wmauth2.doit.wisc.edu (wmauth2.doit.wisc.edu [144.92.197.222])
	by befuddled.reisers.ca (Postfix) with ESMTPS id AE187380AA7
	for <speakup@linux-speakup.org>; Tue, 16 Aug 2022 12:56:48 -0400 (EDT)
Received: from NAM10-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam10lp2100.outbound.protection.outlook.com [104.47.55.100])
 by smtpauth2.wiscmail.wisc.edu
 (Oracle Communications Messaging Server 8.1.0.16.20220118 64bit (built Jan 18
 2022)) with ESMTPS id <0RGP001WFWEMBT60@smtpauth2.wiscmail.wisc.edu> for
 speakup@linux-speakup.org; Tue, 16 Aug 2022 11:56:47 -0500 (CDT)
X-Spam-Report: AuthenticatedSender=yes, SenderIP=[104.47.55.100]
X-Wisc-Env-From-B64: amhlaW1AbWF0aC53aXNjLmVkdQ==
X-Spam-PmxInfo: Server=avs-2, Version=6.4.9.2830568,
 Antispam-Engine: 2.7.2.2107409, Antispam-Data: 2022.8.16.164818,
 AntiVirus-Engine: 5.92.0, AntiVirus-Data: 2022.8.16.5920000,
 SenderIP=[104.47.55.100]
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kMCe3RRxoQ7v+WxPC7pfa83WL8jRIcWMO0sO2vSkCpduzQ655CrrS6BgaaKV+DAW6BB/cbpPD/iX3MZywnF0S1eGO6BQ14z9I9/DNt1f78mBjcUmHHdP85v2EH0bu8iHxbrvmSVYmp3ZzzYgCWMrnXhviVWj7za7LoKeZTJ3Af/RTY1STZx4EoccAHdkW052oJra7jGxLeLxVrNonjgYlAXQ+79zK4U9TwyOKfkz0QD9kgg94hxG0vlBokctHhQYDD7XoybwoKLXYYxq8vgFroN2ISFyyUHtJNdlGS/Qgc8J9l1J6QCDGGegx5vWanVIVolCaLrPpzQQEik0vsnIgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TkRjT7JN3mVJNujmUcLYH+lmZZfj+jONPta5Xs09YHY=;
 b=JIimE76vIQviYmXhMpvVt5OUP2B0neRZiT4Phgf3tCUqzAJj+qFB70yXsu0pTyTTHZiAuf/yfmse2HINg1DjouBynfJwe9WHXOPcdhslPOSGLOlBrMIcalucyRzgAtgu+aPrq4B1B779NmgT1/KQueZaIgLO7+SWjrGUs67cVI0UIfljDnWrz0klx3UZMoTE0z9Y0yFiATxVOOkEoTKxScHkCZ4s72kxWJXzqclDjQK3reA9IEkQY2c/kheiUAMZC2sGFL+bnBTio5ROJbvbpQIGcSvh6j/uDYIiZqReKA8dEKnPh+CIKp+y1SqRFeKc8qt7+K/Yu2zzL+8Gc7Vz9A==
ARC-Authentication-results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none header.from=math.wisc.edu;
 dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=uwprod.onmicrosoft.com;
 s=selector2-uwprod-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TkRjT7JN3mVJNujmUcLYH+lmZZfj+jONPta5Xs09YHY=;
 b=gFrRQu4WMVMoyd4dqqJ7sG4j15CzU9xlm+0RWTVLrNiH2q0iRk48AsSPg0zANMJ+l9ODI4R/1/3v4OhmhRkPYbJn0kFlFboo2U0pPC/Mxpv4uK68xXE1YCyp0NeTdnAwUHPsm1Z6pezHGehtrpdTv/cBF+j1PvK0HBwjSpaskvk=
Authentication-results: dkim=none (message not signed) header.d=none;dmarc=none
 action=none header.from=math.wisc.edu;
Received: from SJ0PR06MB8325.namprd06.prod.outlook.com (2603:10b6:a03:393::17)
 by SJ0PR06MB7679.namprd06.prod.outlook.com (2603:10b6:a03:3b9::12)
 with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384)
 id 15.20.5525.11; Tue, 16 Aug 2022 16:56:45 +0000
Received: from SJ0PR06MB8325.namprd06.prod.outlook.com
 ([fe80::da3:ad93:7ee6:7c17]) by SJ0PR06MB8325.namprd06.prod.outlook.com
 ([fe80::da3:ad93:7ee6:7c17%6]) with mapi id 15.20.5504.028; Tue,
 16 Aug 2022 16:56:45 +0000
Message-id: <28c7b429-636d-ed22-2355-ae1fb6fb975a@math.wisc.edu>
Date: Tue, 16 Aug 2022 11:56:42 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: "Accessibility in Fedora Workstation" (fwd)
Content-language: en-US
To: K0LNY_Glenn <glenn@ervin.email>, Butch Bussen <butchb@shellworld.net>,
 Karen Lewellen <klewellen@shellworld.net>
Cc: speakup@linux-speakup.org, Milan Zamazal <pdm@zamazal.org>,
 Blinux-list@redhat.com
References: <Pine.LNX.4.64.2208112229350.1215855@server2.shellworld.net>
 <1e623296-a020-b22d-52cc-77e3a01c2f61@pobox.com>
 <Pine.LNX.4.64.2208121226001.1229118@server2.shellworld.net>
 <871qtkrs03.fsf@zamazal.org> <02e001d8af3c$0d4cdfb0$80ffa8c0@Win7VM>
 <Pine.LNX.4.64.2208131437260.1254020@server2.shellworld.net>
 <02fe01d8af46$46cde5e0$80ffa8c0@Win7VM>
 <Pine.LNX.4.64.2208131554070.1255408@server2.shellworld.net>
 <031101d8af50$8f3d3fb0$80ffa8c0@Win7VM>
 <Pine.LNX.4.64.2208131909070.1258388@server2.shellworld.net>
 <033301d8af87$4227f3f0$80ffa8c0@Win7VM>
 <Pine.LNX.4.64.2208140031380.1264046@server2.shellworld.net>
 <Pine.LNX.4.64.2208160617250.1327201@server2.shellworld.net>
 <049901d8b17d$8869e7e0$80ffa8c0@Win7VM>
From: "John G. Heim" <jheim@math.wisc.edu>
In-reply-to: <049901d8b17d$8869e7e0$80ffa8c0@Win7VM>
Content-type: text/plain; charset=UTF-8; format=flowed
Content-transfer-encoding: 8bit
X-ClientProxiedBy: BN1PR12CA0017.namprd12.prod.outlook.com
 (2603:10b6:408:e1::22) To SJ0PR06MB8325.namprd06.prod.outlook.com
 (2603:10b6:a03:393::17)
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
X-MS-Office365-Filtering-Correlation-Id: cb494928-73e7-4f43-9e63-08da7fa84d4e
X-MS-TrafficTypeDiagnostic: SJ0PR06MB7679:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
 YzFrEGb8int+mOfbNIZ5UpsTRnhbSMAJy2D3usJ8+4KS6XGxZctfW4QW/gs60K1nw0tUnfPOknUYljhfB4tFNacVf+54sM6WLC0yvws4FOQpSyiv5SDCY2lYX020LhL04Hc/rNPi6xKox0SkpfkXzDB97fLcT+wyUEZ9MYIANxJdX2l6dUD+g7wJJiYi4QTwsEmUIx3Z97RiU+DuIL+nuhufP4CKRnuBKy1GisHZysDa5GfvikMrGCEVBwxXz/d2cIzJI9Tvc08A+MCopV/w5RB6oVLGS1KTDIlmfmW6BN1tYME+Sl/635fk5q0ZNqnklBtoc08Y13JvsKWmhG5qcsldMjt0WQ1Q9aZmbLBvqlQyGCRLINdLjDE3uusw2FOoPZOdFXkmRkRosPIwfuXg+ninh5klnUtmVAPx9/jDdWctyDYlFHXC1aFVKUP3rT6yyn+uMnWoxn8m8aBCzz+jbI7rjqflQ9eoepaAQ6rsVqFMVTFY5+vdnzEvGr1TejbOvt/9BEa8NFgCYMH8gJd/Zr7EeThGhqzBpsmhSFHJBjJyGqrelMx+P7vVUVH4Ydneg6bBGEvnSxFBFRBKVDDMz9llWElLUQeShYXLG5ERC0eod7nMH7Spnzvvfo87TO6J897Q36eD+QRgRYSD9uoYRSi4/et1PubZtbFWYT3/RmCx2bEHHoKNOkyh9eOfheGloLA2JR5+9HgcivolEl/pWHQ1IKp7goMpvpeI/r++mtg7BnbnHWn79SFGBsYyqoGj/jFwBk2D1T+FG7Wt08C3ULKiC6dKw/7RYEBfpL6flYGpiEbVdZGwuLk2Wok5nr4+PkJ10QLYgJfvJsNZ4/2TIe41qq5E7W+SX8yR0izDUCk=
X-Forefront-Antispam-Report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR06MB8325.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(136003)(376002)(366004)(39860400002)(346002)(396003)(31686004)(31696002)(66574015)(86362001)(6666004)(2616005)(53546011)(6512007)(26005)(6506007)(110136005)(4326008)(75432002)(786003)(45080400002)(186003)(316002)(41300700001)(83380400001)(478600001)(6486002)(66946007)(66476007)(66556008)(41320700001)(38100700002)(2906002)(5660300002)(8676002)(30864003)(8936002)(2004002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
 =?utf-8?B?MWN4T2VaV2hhSm5ibmpIeExRYnFteVhCS2xxVUg3ODgyYUQ1REpNd2xWNUhP?=
 =?utf-8?B?WkFIbldYcXBkRW9xYjhSYlU5RG1ZVDJBTzFUc3NLU3dnWGFLa2hPSWNzYUlm?=
 =?utf-8?B?SytKeXkwZWdwNzhVSkY3YUVMUUZNYlhQZDhnQUVQVm0ycHNqZWFkN0pQSmwx?=
 =?utf-8?B?YUJxSFNrWmJqWFlTeVRvMUhVeTcycDhzeEJsaW9NRnlwWTNNK1BaZnI4SEQ5?=
 =?utf-8?B?bFBwa041VU1iSHJEOGxQK1JTenNZV0ViOVAzYkFBV25LdlpZbVl5UTcvWnF1?=
 =?utf-8?B?OEFraU14ek43UmdSandXYmpSZUMzaC8rQkVTS0N2NzJvSGhsd3dwSlVISjhM?=
 =?utf-8?B?YTdGTE12bjFNRzhBbkVCTHRaUDZVWjZBbGEwNk0vM3BhK1RWaFF4Rkd6Z2k4?=
 =?utf-8?B?eDJmY1M0cWxRbG5INGkzaE1SZXA2QXp3QjAzZjZOei9zYXY1UmV1WGFwV0Nu?=
 =?utf-8?B?VUtFSjNzNjFUY2N2Tk8rV1pDdXBjVkpoL0ZKc1V1cEJhbkt1UHZFTlNudGpl?=
 =?utf-8?B?NVVGNEo4SW9tcmVYVDl6ZmhUaEZYdlJKY0FOay9oWllKOEN0NzJUaVdHVHBs?=
 =?utf-8?B?a2tYc1VsK1dnWHpyREd0S1hIa1JwYURCQUc0RG1FdlBsU25oNnMxbW1mU1NP?=
 =?utf-8?B?L1hNMllYLzBwNXgzdkpTcXMvZHhJekdSb3J0U1JwVmxROXJoTVo1cTl4TW9z?=
 =?utf-8?B?RlRtZHpHRVBiNnZGdkNFN2d5a2V5L2kwdk1jUTdheGJCSm8rZ3d5YzJmWSt5?=
 =?utf-8?B?N3ZNeGdQWVJHMTVKMngwZ3lWOGZUbGNPeDhwNFl5bnRwbU5CSU0xKzVMZEhC?=
 =?utf-8?B?L1NiYWY3RUswUVhrMklpVUZsNUl1eklVMFJBQUMwTUt4R0pFOEQwVG9QcWt3?=
 =?utf-8?B?ckFnVHBncjRKWHZoZUt4cW5nc3JVWGhReXlrbmUydHp0S2FzMmhDdUNBb2g3?=
 =?utf-8?B?KzlHZWNCcFluNFhPWi8vdE1MZFRBT0hEalpKa1B3b1BVSU8vQTJnU2VVcjJ0?=
 =?utf-8?B?U1NHSjZ3MUM3d0RHRFlhdzRKT0lRRWE0SHJBUzNiTzdXWHBoSitTRUxGVGFV?=
 =?utf-8?B?V2cwL3JHUlhKcXhzSFVIem1JbndzM3R3R1c4S295VW44YmgrRzh3RlI5bFpO?=
 =?utf-8?B?WDcvbkE5dlArUFlRZHlFazVjNlBRbEZmZEQ1bWtZSGV4MnV3MTU4WkVyMDBl?=
 =?utf-8?B?SG5uQmtCYVk3MlF6NHREMXU0YnZtbWxpSXRIUVdkSEVjM3JUc083SlU4U1ZX?=
 =?utf-8?B?U1JndFNXcnU3SFJmRDgzWkFFM2JtN1NDdnRBMGJicnVzd25vWlFQYVhzbVdp?=
 =?utf-8?B?NXVsZ1RGQnAwVEhOVWNGRVZERW9adGhDU2RQa05QZnhWZythSWxadWNhdUY5?=
 =?utf-8?B?SFJpSE42dmxwN21KaTlnd2ljRDQ3aDZQcUwzakVDQlc4c21tUk9CdkJyQkFD?=
 =?utf-8?B?K09nTEtGS2o1ODE4ckU0ZWNmVTRWZHplQ3BNOExFNFlJbVdkVVNMS2M2aWEw?=
 =?utf-8?B?ZkF1ZEtVNmxLYmZFSHV5QnJpelhBbXJxdWFxRENodWUvNFJCU005UGd0dGp0?=
 =?utf-8?B?RUh2ZTFQd2swcWlzOWxNNkdTZVR4QlJ5QVhwaURKNEtpQ0JEZjZQTFR3cUN5?=
 =?utf-8?B?ZkdHWWk2b2g1TlRWdWt2NWljc2RXRG1tR3RzNDNLSDZINGRqb29sczMxeEYy?=
 =?utf-8?B?NEwxbEplNTJVNEFPTnpna056dWhveFNtbERPY0lWQlY1Qk5wcnBBZUh3VHRq?=
 =?utf-8?B?MGxFUFRhTFNycUJiVWxQUUk4RlN5SlpkSGtDY1p3VS9UQkdBSzN1Mmt1VE1C?=
 =?utf-8?B?S0lZeWRUaFFBd0FIaUMzcG03ZCtwVE1MTTVsMUNOQ3JoRjRkRFZmZHRvMUNR?=
 =?utf-8?B?bUtsTVJ2UjZWZHYzd2luUHM2RjltYjI3eHAybzd6UjZZOTRUL05XcDV0Snlt?=
 =?utf-8?B?by9pT0tDeWZPZTRKaWV3Q0JxaWJQT0UvNXRUTlVnQlMzeDBhUXExQUFLOE8z?=
 =?utf-8?B?ck5PTW91amE2T096WDlwN0tLSnJUUVhna09nTUhQVURKWllwdmFmQVhpbHc3?=
 =?utf-8?B?SDhScW9oRmdtMk5qQjJjVStHUFVvelNGOVYvUGRyR1AwOHlZME1kUVhCeUtP?=
 =?utf-8?Q?kbI8zLUr5JvV5D6GzFUXRTqNj?=
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id:
 cb494928-73e7-4f43-9e63-08da7fa84d4e
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR06MB8325.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Aug 2022 16:56:45.6608 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName:
 HkJ5l9+WXPSHmQ/iG7hT3QmSRimKnoeVkiTgBSIuVzdGHtXzDFSAkIdpaCZrclFJ
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR06MB7679
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Did you know the NFB once asked Microsoft to *NOT* develop Narrator to 
the point where it would compete with Jaws? If you think the NFB is 
incapable of forcing a choice on blind people, you are sadly mistaken.


On 8/16/22 09:36, K0LNY_Glenn wrote:
> This sort of thing would never happen in Nebraska, or any state where the
> agency staff is of the NFB philosophy.
> Say what you want about the NFB, no organization is without its problems,
> but it is the core philosophy that formed the NFB that knows that society
> has low expectations of the Blind, and this is why the NFB believes in
> skills and high expectations.
> And with that, comes giving respect to the Blind, like the respect of
> choice.
> Yeah I know about the information of recent about NFB abuse, but this is
> organizational issues, unrelated to the philosophy.  In fact, the fact that
> it has come up demonstrates that the NFB is no different than any other
> organization in interpersonal staff issues.
> And choice does not mean training center choices.
> Choice isn't always an option, just like if you took a vocational course in
> college, there are things you have to take, so to me, the lack of choice in
> this regard is different than computer software, where all the choices will
> reach the same end result.
> In states where the NFB philosophy is embraced, if a client said I want to
> use a Mac, or I want Window Eyes, then that is what they would get, no
> questions asked.
> They would not have to fight to get it.
> I simply cannot imagine a counselor saying that someone has to use the
> software that the counselor wants them to have.
> When I hear that stuff, I almost cannot believe it, but I know Butch well
> enough to know he wouldn't make that up.
>
> Glenn
> ----- Original Message -----
> From: "Butch Bussen" <butchb@shellworld.net>
> To: "Karen Lewellen" <klewellen@shellworld.net>
> Cc: "K0LNY_Glenn" <glenn@ervin.email>; <speakup@linux-speakup.org>; "Milan
> Zamazal" <pdm@zamazal.org>; <Blinux-list@redhat.com>
> Sent: Tuesday, August 16, 2022 8:18 AM
> Subject: Re: "Accessibility in Fedora Workstation" (fwd)
>
>
> You are right.  In Nevada, freedom pushed jaws to the rehab people and
> took them out for steak diners and so forth.  I fought like hell to get
> them to buy window-eyes.
> 73
> Butch
> WA0VJR
> Node 3148
> Wallace, ks.
>
>
> On Sun, 14 Aug 2022, Karen Lewellen wrote:
>
>> And where do these employers learn about jaws?
>> In fact, provide if you do not mind an example of how  this works exactly.
>> after all, unless I am incorrect, these employers are not personal Jaws
>> users, meaning someone they trust continues to sell them on an expensive
>> program instead of a largely free one.
>>
>>
>>
>> On Sat, 13 Aug 2022, K0LNY_Glenn wrote:
>>
>>>   Karen,
>>>   Most employers don't want NVDA, and will only allow Jaws.
>>>   In Nebraska, if an employer said put on whatever works, the counselors
>>>   will
>>>   use NVDA, because of the cost of Jaws.
>>>   If some of the clients in a call center already use Jaws, but don't know
>>>   NVDA, the counselor will use Jaws, because the other clients will need
>>> to
>>>   learn one of the two.
>>>   So it's all choice, but in the workplace, it depends on what the
>>> employer
>>>   will allow.
>>>   Also, sometimes scripts need to be made, and there are more Jaws
>>> scripters
>>>   available than there are NVDA add-on writers.
>>>   So this perception that Jaws is forced by rehab, from my 31 years in the
>>>   business I can say is rubbish.
>>>   Now, if a counselor did not know how to use NVDA, and either may be
>>>   chosen,
>>>   the rehab counselor is able to select the one that the counselor feels
>>> is
>>>   best for the student and for the counselor's teaching.
>>>   When it comes to part B moneys, which is used for non-vocational
>>>   purchases,
>>>   where a lot of Jaws purchases come from, it is in the agency's best
>>>   interest
>>>   to spend as little as possible, because that doesn't come back like VR
>>>   expenditures do.
>>>   Glenn
>>>
>>>   ----- Original Message -----
>>>   From: "Karen Lewellen" <klewellen@shellworld.net>
>>>   To: "K0LNY_Glenn" <glenn@ervin.email>
>>>   Cc: <speakup@linux-speakup.org>; "Milan Zamazal" <pdm@zamazal.org>;
>>>   <Blinux-list@redhat.com>
>>>   Sent: Saturday, August 13, 2022 6:15 PM
>>>   Subject: Re: "Accessibility in Fedora Workstation" (fwd)
>>>
>>>
>>>   The challenge with that example is that, as one often gets reminded,
>>> the
>>>   rehab systems track record for facilitating  employment for their
>>> clients
>>>   is quite poor.
>>>   With a high percentage of unemployment among our clients.  Making,
>>>   speaking personally, your buying Jaws for personal use not really
>>>   reflecting how the system would respond to an alternative request.
>>>   Now if someone from organized rehab said, okay freedom scientific, we
>>> are
>>>   creating an employment program where our clients will train in Linux,
>>>   needing a solid screen reader solution for the system.  We will give you
>>>   an
>>>   exclusive development contract for s millions to create the tool.
>>>   Fs would likely say where do we sign?
>>>
>>>
>>>
>>>   On Sat, 13 Aug 2022, K0LNY_Glenn wrote:
>>>
>>>>   True enough, but largely, rehab people typically use Windows at work,
>>>>   and
>>>>   probably at home, but they need to cater to the needs of the client.
>>>>   If a client used Linux, I doubt that any rehab counselor would
>>>> advocate
>>>>   that
>>>>   the client switch to Windows, unless that was needed for a specific
>>>> job.
>>>>   In Nebraska, we purchased Jaws much more for personal use than we did
>>>>   for
>>>>   work related situations.
>>>>   So if FS made a JFL, and people were using Linux, rehab would indeed
>>>>   purchase a JFL product.
>>>>   Glenn
>>>>   ----- Original Message -----
>>>>   From: "Karen Lewellen" <klewellen@shellworld.net>
>>>>   To: "K0LNY_Glenn" <glenn@ervin.email>
>>>>   Cc: <speakup@linux-speakup.org>; "Milan Zamazal" <pdm@zamazal.org>;
>>>>   <Blinux-list@redhat.com>
>>>>   Sent: Saturday, August 13, 2022 3:01 PM
>>>>   Subject: Re: "Accessibility in Fedora Workstation" (fwd)
>>>>
>>>>
>>>>   there was an interesting discussion a month or so back on the blinux
>>>>   list
>>>>   about how long it took completing tasks in the gui as apposed to say
>>>>   command line,  the comments were quite informative.
>>>>   Still, fs has never marketed largely to the end user. Instead they
>>>>   market
>>>>   to the American rehab community.
>>>>   how much market research has  the rehab community done to support the
>>>>   need
>>>>   for choices?
>>>>   How many rehab counselors support  training in Linux?
>>>>   one comment made by the subject of this thread about poor quality
>>>> speech
>>>>   is a fine one...out of the box Linux has few speech choices.  everyone
>>>>   brings their needs to the table there.
>>>>
>>>>   if you want to get fs to care about Linux, you  need to prove there is
>>>>   money for  them there, from their main source of income.
>>>>
>>>>
>>>>
>>>>   On Sat, 13 Aug 2022, K0LNY_Glenn wrote:
>>>>
>>>>>   Well since Orca seems to work on so many distros, I don't know why
>>>>> FS
>>>>>   would
>>>>>   not be able to do the same.
>>>>>   If Jaws users could switch into Linux, it would be a real game
>>>>>   changer,
>>>>>   and
>>>>>   I think with lots more Blind Linux users, we would start seeing
>>>>>   accessibility in Linux not being a second thought.
>>>>>   Glenn
>>>>>   ----- Original Message -----
>>>>>   From: "Karen Lewellen" <klewellen@shellworld.net>
>>>>>   To: "K0LNY_Glenn" <glenn@ervin.email>
>>>>>   Cc: <speakup@linux-speakup.org>; "Milan Zamazal" <pdm@zamazal.org>;
>>>>>   <Blinux-list@redhat.com>
>>>>>   Sent: Saturday, August 13, 2022 1:47 PM
>>>>>   Subject: Re: "Accessibility in Fedora Workstation" (fwd)
>>>>>
>>>>>
>>>>>   Well technically freedom scientific does not exist any longer, being
>>>>>   bought
>>>>>   by another company.
>>>>>   Still, I can respect why they, or nvda have not created their tools
>>>>>   for
>>>>>   Linux.
>>>>>   That is because as I understand it, Linux is  quite like clay. You
>>>>> can
>>>>>   mold a distribution into almost anything. there are various
>>>>>   personifications of the system, all sorts of ways and changes and
>>>>>   options
>>>>>   for creativity.
>>>>>   however adaptive tools are often extensions of physical
>>>>>   characteristics,
>>>>>   hands, eyes, ears, brains, combinations of these.
>>>>>   To build solid assistive tools one must have a solid  foundation as
>>>>> it
>>>>>   were.  that is part of why there have needed to be so few Apple
>>>>>   efforts
>>>>>   at
>>>>>   inclusion, they  created  with, and then created in-house adaptive
>>>>>   tools
>>>>>   for various  populations that were built into the system.
>>>>>   Although Microsoft did not bother until much later, in theory at
>>>>>   least,
>>>>>   the
>>>>>   consistency of windows is what makes it possible for freedom or the
>>>>>   former
>>>>>   gw  micro or nvda to create something that can in theory  work.
>>>>>   Floor for the furniture is somewhat solid.
>>>>>   Just my thoughts,
>>>>>
>>>>>
>>>>>
>>>>>   On Sat, 13 Aug 2022, K0LNY_Glenn wrote:
>>>>>
>>>>>>   I would like to see Freedom Scientific make a Jaws For Linux.
>>>>>>   JFL
>>>>>>   I'd certainly pay the yearly rental fee for it, and it would bring
>>>>>>   many
>>>>>>   more
>>>>>>   users into Linux.
>>>>>>   FS could, with its resources, possibly make it more robust than
>>>>>>   Orca.
>>>>>>
>>>>>>   Glenn
>>>>>>   ----- Original Message -----
>>>>>>   From: "Milan Zamazal" <pdm@zamazal.org>
>>>>>>   To: <speakup@linux-speakup.org>
>>>>>>   Cc: <Blinux-list@redhat.com>
>>>>>>   Sent: Saturday, August 13, 2022 12:08 PM
>>>>>>   Subject: Re: "Accessibility in Fedora Workstation" (fwd)
>>>>>>
>>>>>>
>>>>>>>>>>>   "KL" == Karen Lewellen <klewellen@shellworld.net>
>>>>>>>>>>> writes:
>>>>>> KL>  What bothers me most are his lack of actual qualifications,
>>>>>> and
>>>>>> KL>  absolute dismissal of what he has not experienced..as if he
>>>>>> KL>  defines Linux usage for everyone.  That attitude is dangerous,
>>>>>> KL>  because he is educating those outside of the accessibility
>>>>>> KL>  experiences, who will believe his ignorance is factual.  he
>>>>>> has
>>>>>> KL>  to be expert, it is his job.
>>>>>>
>>>>>>   Hi Karen,
>>>>>>
>>>>>>   I know Lukas personally and I admire his skills and
>>>>>> qualifications.
>>>>>>   I
>>>>>>   also know first hand that he is open to constructive feedback and
>>>>>> I
>>>>>>   believe heâ?Td be happy to be corrected about possible technical
>>>>>>   inaccuracies in the interview.  It may be also a good opportunity
>>>>>> to
>>>>>>   find out whatâ?Ts possibly missing in making anybody better
>>>>>>   informed.
>>>>>>
>>>>>>   As for â?oabsolute dismissal of what he has not experiencedâ?,
>>>>>> what
>>>>>>   reasonable free software alternatives to a less or more standard
>>>>>>   desktop
>>>>>>   with Orca and a software synthesizer can you see for a common
>>>>>> blind
>>>>>>   user
>>>>>>   who needs to use a fully working web browser, to read and process
>>>>>>   text
>>>>>>   documents, to be compatible with other computer users, etc.?
>>>>>>
>>>>>>   And letâ?Ts be realistic.  We celebrate every single developer
>>>>>> hired
>>>>>>   to
>>>>>>   improve accessibility.  This tells something about the state of
>>>>>> the
>>>>>>   matters.  We cannot expect that a single person will fix all the
>>>>>>   kinds
>>>>>>   of accessibility problems in all the environments.  Lukas works at
>>>>>>   his
>>>>>>   job focusing on certain areas currently seen there as urgent ones
>>>>>>   and I
>>>>>>   appreciate this opportunity.  Anybody else seeing a need to work
>>>>>> on
>>>>>>   other areas is welcome to contribute to whatever sees fit, as I
>>>>>> do.
>>>>>>
>>>>>>   Regards,
>>>>>>   Milan
>>>>>>
>>>>>>
>>>>>>
>>>>>>
>>>>>
>>>>
>>>
>

