Return-Path: <speakup+bounces-591-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 66144597462
	for <lists+speakup@lfdr.de>; Wed, 17 Aug 2022 18:47:17 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=uwprod.onmicrosoft.com header.i=@uwprod.onmicrosoft.com header.a=rsa-sha256 header.s=selector2-uwprod-onmicrosoft-com header.b=X8iu7HaL;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id DBBBB384856; Wed, 17 Aug 2022 12:47:16 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 334D2384874
	for <lists+speakup@lfdr.de>; Wed, 17 Aug 2022 12:47:14 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 95688384842; Wed, 17 Aug 2022 12:47:08 -0400 (EDT)
Received: from wmauth2.doit.wisc.edu (wmauth2.doit.wisc.edu [144.92.197.222])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 323D138482D
	for <speakup@linux-speakup.org>; Wed, 17 Aug 2022 12:47:08 -0400 (EDT)
Received: from NAM11-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam11lp2168.outbound.protection.outlook.com [104.47.58.168])
 by smtpauth2.wiscmail.wisc.edu
 (Oracle Communications Messaging Server 8.1.0.16.20220118 64bit (built Jan 18
 2022)) with ESMTPS id <0RGR00O4VQMIE350@smtpauth2.wiscmail.wisc.edu> for
 speakup@linux-speakup.org; Wed, 17 Aug 2022 11:47:07 -0500 (CDT)
X-Spam-Report: AuthenticatedSender=yes, SenderIP=[104.47.58.168]
X-Wisc-Env-From-B64: amhlaW1AbWF0aC53aXNjLmVkdQ==
X-Spam-PmxInfo: Server=avs-2, Version=6.4.9.2830568,
 Antispam-Engine: 2.7.2.2107409, Antispam-Data: 2022.8.17.163618,
 AntiVirus-Engine: 5.92.0, AntiVirus-Data: 2022.8.16.5920000,
 SenderIP=[104.47.58.168]
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=E1mbRxCx0qwq1YT9d/HiFHkTWMUhnjAALJTdxVNBzeFPSWnbx6P37Mnn8Ig7KSWoKi0eLikpfGVY4KONJ0b0AizGJeTUvq/lYNntNeCHaFaWhxo+e6xxe2BEKxeUITpZJm+qytzuAn9+B/vYtfmU9R7sfzAGXWtfTs0FdOZ6TRVNcgum2MZtl+RmOvng5CxjNOD3yn/v9TDkdlgW7T32tr8hvmhpVWslUViwzK9Cx766EdFYR1igvFejVU51AdsO0Mvo5jmP2Pe1csB6w4mPHe+mtShHOuf4evBcvtnC8xzX8cuqjz4c1VOP2/2I1u90ZXm9Tred7ETdeRGayLFANg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AdJPu3T6FhSqiMbtZamf47XW8ASkHyFZ5Ir01WxyEUY=;
 b=kITh56fkeFo5i1yt4iwtUKGGAw4dEfhfLIx8cke81CxistPYKR4mD+1u0DwmEQdpdqzbT6G12Lbnn3XcZzicmDIcYS6ebUvu4vExt2fb1mNWwukAQqTIOtOG4hBAXJxF0tSvkVHGKz6vzUS72o+zmrwuRdFkxhONcd/7GExZPq7uNFzN6AmrxbOlK3GxvCD4AzpSMdp9mcJj3MSySnXqNZ1eRm1MOqPNnbhq/zhEYWPVARsL/zOVpbSdZtTFw8hfLXJvYdad7xmTCbMt9qU8IEylmnixJMswdY/zGn+Uz6Vjg9QnrBNJHX2744IPtvAGH2p9CDoJfdNxFss73i60BQ==
ARC-Authentication-results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none header.from=math.wisc.edu;
 dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=uwprod.onmicrosoft.com;
 s=selector2-uwprod-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AdJPu3T6FhSqiMbtZamf47XW8ASkHyFZ5Ir01WxyEUY=;
 b=X8iu7HaLppIjHvs+WYyseLdhVkA7ymE39qx/zbJfM6oF93rh86+9eKHpsXEMSZrheNzyqKY0MbJEwgfB1FWBsVt+jOiJS2HlMvu7fRF0+JOxwVgqoqyUxypQD3f0Z3ecF+7gsPEyru5xkM49sdK5hoPj+dvpYkelq/OXgbv8Q5Y=
Authentication-results: dkim=none (message not signed) header.d=none;dmarc=none
 action=none header.from=math.wisc.edu;
Received: from SJ0PR06MB8325.namprd06.prod.outlook.com (2603:10b6:a03:393::17)
 by BY5PR06MB6500.namprd06.prod.outlook.com (2603:10b6:a03:21e::17)
 with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384)
 id 15.20.5525.11; Wed, 17 Aug 2022 16:47:05 +0000
Received: from SJ0PR06MB8325.namprd06.prod.outlook.com
 ([fe80::da3:ad93:7ee6:7c17]) by SJ0PR06MB8325.namprd06.prod.outlook.com
 ([fe80::da3:ad93:7ee6:7c17%6]) with mapi id 15.20.5525.019; Wed,
 17 Aug 2022 16:47:05 +0000
Message-id: <f05977a4-7604-1a9e-3c54-c47901ac547a@math.wisc.edu>
Date: Wed, 17 Aug 2022 11:46:58 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: "Accessibility in Fedora Workstation" (fwd)
Content-language: en-US
To: K0LNY_Glenn <glenn@ervin.email>, Karen Lewellen <klewellen@shellworld.net>,
 Butch Bussen <butchb@shellworld.net>
Cc: "John G. Heim" <jheim@wisc.edu>, speakup@linux-speakup.org,
 Milan Zamazal <pdm@zamazal.org>, Blinux-list@redhat.com
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
 <e3c7521b-cd73-38d7-0e9a-0e7a956e0f47@wisc.edu>
 <Pine.LNX.4.64.2208170740540.1352313@server2.shellworld.net>
 <Pine.LNX.4.64.2208171215290.1353159@server2.shellworld.net>
 <003101d8b255$9973b150$80ffa8c0@Win7VM>
From: "John G. Heim" <jheim@math.wisc.edu>
In-reply-to: <003101d8b255$9973b150$80ffa8c0@Win7VM>
Content-type: text/plain; charset=UTF-8; format=flowed
Content-transfer-encoding: 8bit
X-ClientProxiedBy: BN0PR04CA0139.namprd04.prod.outlook.com
 (2603:10b6:408:ed::24) To SJ0PR06MB8325.namprd06.prod.outlook.com
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
X-MS-Office365-Filtering-Correlation-Id: 51675e20-e1e5-4661-028f-08da80701c25
X-MS-TrafficTypeDiagnostic: BY5PR06MB6500:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
 WR3L9JHxtIzIJtnHvkUnKVMXejP+Mt56xorVyxRgVI8tkVBZgh1bxYRg8/uy7AVoukjP+2eS2MQrjaCrOx0aoS56+Qx4y8rqcRRpN7G+rGpY1i41wi66JKkiIlQyHI0h9q6S8vsGRUjV+L7bAcywwLbtcfR7oJml+eadUGmcp7AZxm7AEEhOWK3OtcKuanwhaHEJjP/qlYX/7wyAlQwPeRdOiuoGwk2ZpZ2tEKi0s5M4DnsfrZRdtwWj7V0jN6Jl5co8Bohxx79pCB/CZ2V2dS+5d5Rt/2UWTbltemHAnfz9qn3XoJHtOhbbvuLkP93+SJFNhJH2E6Iz+ucyw4/1iSjO5aIZc2WR971Qy9Bt8kogw+GTOzn5X8HHA3TtyaGZQ1oNk67BicmWs7BzwRRXwCgZfjZJ0tJGzqZUYR+ukAO/5rHj+pDQftQYh8JvErRNqD86BrL+FtjM3JNdT+uM/HH5/8hRNiJ8C2YoWxTTE/dnezxPnRtUTkrr88Eoi/lXYu/PH7yEU/tR2VB/etw/YhnCYISjs+QYGk5xxuPPZ6qEmLJHUjRMm0xVLTNeWN8hWQr/Y7Vk1ItKYdYJ9WFul+MzBywfKaQV5xSzeGjMVUn3dcT+YWoc6yEGXttyNj7Z0amAnENAseEKyrBsYcKqxN5PEsNlF5KcGHCpGpG0CriUvpFqTbVjS4pTSPLGashvw0dS5UWUpwNa0I/UJdaCSGmqmBJM0Wb6ZqZ591lt9eLHuTp5C3SKBpeTBBRAck7yByCgkfpx/vVZazeHLtMqITrKLLPMugj1swRfBJanENEB/vwscL2rkyFzAxi7Q7Heni9ksFNNGN4z8z/MYJJtcvJIoXHTpyCKlt1YGdIXgew=
X-Forefront-Antispam-Report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR06MB8325.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(39860400002)(396003)(346002)(136003)(376002)(366004)(86362001)(53546011)(186003)(31696002)(31686004)(2616005)(83380400001)(6512007)(66574015)(6506007)(6666004)(316002)(45080400002)(54906003)(478600001)(786003)(41300700001)(30864003)(66476007)(66556008)(8936002)(110136005)(66946007)(8676002)(5660300002)(2906002)(26005)(41320700001)(38100700002)(4326008)(6486002)(75432002)(2004002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
 =?utf-8?B?aUdJYkIxNndtY2ZBandRWXJWeVl5SCt0Y3ZnVlh0RTNzM1dyRHFpcEFlb2RR?=
 =?utf-8?B?bFBlN1U5VVg4dktjN1JMNlQxN3RaeHM4cjEwelFWb1owb0dpd1ZWNUxVR1Nn?=
 =?utf-8?B?dGdmRXpkMlEzVVU0Z1d2Q1JwbnFOOXhxU2lvSXZvTExIdC9oeUYwVER3cVMz?=
 =?utf-8?B?OHJZMUJKa0NUM3lWOVNUOXVVcXFIdW1CL2NWVGJLRDVjOUk2eTJNU1FZZEk1?=
 =?utf-8?B?cWw2UEZ2QzluUUNXaC8xRUpiei84UDkvOUdoMkJPZlpzMUJZdHhvNHYvVFRq?=
 =?utf-8?B?WFRMUnMxcjF4Q0krWGpnbWFmeWo1TUR1M2xnVTdRQzZ5M1A1UW9hSitNWGpH?=
 =?utf-8?B?cURCaS95N3JTMDZsc3JhdnkrVmxLT2N6VVdWODVzK2ZpUUIxeXJnNUtldmxF?=
 =?utf-8?B?UEduSjA4cURJZ0Z5eGpvQjdITnhZeGNZMWdIengvYVZUaTBzMVZ3d1BzdlVF?=
 =?utf-8?B?WEdoZC9ZelBlZDd5WVdtdEVkQlhMMUhWcURiTjV0ZTgrVFVxaEJNTjNUNk5B?=
 =?utf-8?B?UlFLejRKQXJUR1czeXhYTGE0WVJvdnJ0Qk5uRi9IMlEzMjNQR3c3V0pwWEpG?=
 =?utf-8?B?d0daSkVUNEJCQlJPV1F4R3VmaEhpNW9sS0oraytDZ25SRjRnOE5qOEV2bU8y?=
 =?utf-8?B?T3RTR2FIRW9sVGtBRFVZRW9BK29RRlNGVy9icG9FWDRIWXdpZmZBTDg5aThS?=
 =?utf-8?B?N29YYm5PcDdEOXRLR1MzOEEyVm1EMUJ3cEZhb2EwYmlZSDdxNUF2KzNISjdq?=
 =?utf-8?B?VEFUdnpDRjE4MHVvSWdqeUJ3RStSWXpKT0FVb3g2YWsxRUVCNWlUN0tTUDZj?=
 =?utf-8?B?bC9jUldRMVFZN0hFV1hSaVU2aDYxUVVVcnY1RG1YVDFMeFdBbXNub3F5dENr?=
 =?utf-8?B?ZFpicEd3WFd6UkRONjg5MUNZYjBwRmNQRUwzc3VrbHkvUmpoL2tOM1RjSm1N?=
 =?utf-8?B?ZmhuTWNEd2VEMXh5ZTRRSll6UEtoOEV5TDhwcSszMTJWa1pwVGR5M3dvZzcx?=
 =?utf-8?B?UlMvNGkvM3hYZm5va1VNbkJieFlFQlEyRnlEV1FmVU92a3I3b3hVN2syT1Ba?=
 =?utf-8?B?QWFSQUdhZ1pscFBBTzQ5R2JnVTM4MjhXa0UycktZNkhRZVlZMlM2VWI4bWxh?=
 =?utf-8?B?TStydHhUVVJ6SUIzUTF3Wm9FdHZMN3pFd0tWdWpGOEtrZThidTdZZTkrYkp0?=
 =?utf-8?B?YWg0MVBTNDlNTU1STWdmci9qMEYyc1ZBWWcwMXROYTUydjF2UDZjb20zUmNx?=
 =?utf-8?B?OXBWNVpyYTJKc2xhZGJKS3RhTHpyYkNrUmZaODJiT2Y5R2tIZkFEY3lLQlVQ?=
 =?utf-8?B?b2NETEdBS1BaeGE2bUpoeVVvT2o5eDF1TExNeTNLSmZVbzRndnBEQVFIZHE5?=
 =?utf-8?B?NW9DUEpUV2g0eGI3cWJKRHZ2OVVqbUM0ZlR4dlUvdVZnazFKM25XbTN5RGJE?=
 =?utf-8?B?b0RRTEI2RHJjNlFVaGdBTkxONkRKRzBIQkJRVUhOaHc1M3pqVk9pbHUzS0ph?=
 =?utf-8?B?Zzg5T3NXQjdzMXdxVG1hSXcwTGRqU3JzMTdadlFoVVc4UENja2Erb0pGZDRs?=
 =?utf-8?B?ZG9rVmsrd3FxdU4xRS9pc0hFZWdtUk43UytpcFNFcVZMYXM3eTV6ODluajVw?=
 =?utf-8?B?bHJuNjZBOCt0TlpLWmEzOUdKaGNHZE1MSnNHRmZyK2owLzFYOUczRUVNUlBu?=
 =?utf-8?B?QTNqVVI1cmRoNnVYblcrV1NwTytQaExQcHJrMHV6OERKRUJrLzVsbSs1Z0NC?=
 =?utf-8?B?WWhpdjArNFQ4R0J4a1Nubm9jODdrU2FPalRSWmRnQnl1clZtSzl0eXBOeTJR?=
 =?utf-8?B?eFJ4V0E5dlRuNlBLS3lXSitUSVRtMlBudGtLZ21QNm5td3lJYVV1QXkvSjY0?=
 =?utf-8?B?Q1NsMHB4eEJDdUVLK2NFUUVlQWx5TjM1R1RlakRnMXVsb0ZFaURYYkZiZ01F?=
 =?utf-8?B?Y1U5dlNtSW5sR3hXSCszNWFIVkx1QzhoWCtCZVFLQ00zVXAvSGwwaFoxNTdj?=
 =?utf-8?B?V0QyU1VZc0JhcU4wSFVxMjQvY29udjhxL3B5eHNkc2hncGtlLzF0aHBiY1R3?=
 =?utf-8?B?OXpGSE9WTFQyaHg0RHVQeFFZbGdoam1xL2hNM3hMakY3VEp2NWFYSXk4bTh4?=
 =?utf-8?Q?9tMtxcOnJS4A1gjXW4IlkehSH?=
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id:
 51675e20-e1e5-4661-028f-08da80701c25
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR06MB8325.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Aug 2022 16:47:05.2181 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName:
 nCviX0zVPUvmsdPxaaSZPIyc/jYtZKONtILZi0PB7rtDEFr7DIl7jew+x4bRg2IX
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR06MB6500
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Well, I am hesitant to mention anything other than screen readers on 
this list. But this whole thing started when someone attributed success 
in his home state to the NFB philosophy. But the NFB philosophy is 
meaningless.  It can be used to justify anything and it therefore means 
nothing. It can just as easily be used to blame blind people for their 
problems as it can be used to empower them. In the past 30 years that 
I've been associated with the NFB, it has done far more harm than good. 
We would all be better off without it.

The NFB should start acting more like a normal advocacy group and less 
like a cult. It would do a better job of representing blind people if it 
did.


On 8/17/22 11:22, K0LNY_Glenn wrote:
> Yeah, I had been to a state NFBN convention that year and did the PAC thing.
> Then when the NFB did that, I called up the state treasurer for the NFBN and
> cancelled my PAC plan.
> I told them that they don't care if I can read my money, then they don't
> need any from me.
> Glenn
> ----- Original Message -----
> From: "Karen Lewellen" <klewellen@shellworld.net>
> To: "Butch Bussen" <butchb@shellworld.net>
> Cc: "John G. Heim" <jheim@wisc.edu>; "K0LNY_Glenn" <glenn@ervin.email>;
> <speakup@linux-speakup.org>; "Milan Zamazal" <pdm@zamazal.org>;
> <Blinux-list@redhat.com>
> Sent: Wednesday, August 17, 2022 11:18 AM
> Subject: Re: "Accessibility in Fedora Workstation" (fwd)
>
>
> My personal favorite is the rejection of money that could be identified
> by touch.  never mind that for honestly thousands of years the practice has
> been common so those with limited education could still engage in commerce.
>
>
>
> On Wed, 17 Aug 2022, Butch Bussen wrote:
>
>> Yes, I remember that.  And what about their oposition to descriptive
>> video,
>> even filed a law sute to get the law thrown out, which it was at that
>> time.
>> 73
>> Butch
>> WA0VJR
>> Node 3148
>> Wallace, ks.
>>
>>
>> On Tue, 16 Aug 2022, John G. Heim wrote:
>>
>>>   Holy cow! Are you aware that the NFB once asked Microsoft to *NOT*
>>> improve
>>>   Narrator to the point where it would compete with Jaws? If you think the
>>>   NFB is incapable of forcing choices on people, you are very sadly
>>>   mistaken.
>>>
>>>
>>>
>>>   On 8/16/22 09:36, K0LNY_Glenn wrote:
>>>>    This sort of thing would never happen in Nebraska, or any state where
>>>>    the
>>>>    agency staff is of the NFB philosophy.
>>>>    Say what you want about the NFB, no organization is without its
>>>>    problems,
>>>>    but it is the core philosophy that formed the NFB that knows that
>>>>    society
>>>>    has low expectations of the Blind, and this is why the NFB believes
>>>> in
>>>>    skills and high expectations.
>>>>    And with that, comes giving respect to the Blind, like the respect of
>>>>    choice.
>>>>    Yeah I know about the information of recent about NFB abuse, but this
>>>>    is
>>>>    organizational issues, unrelated to the philosophy.  In fact, the
>>>> fact
>>>>    that
>>>>    it has come up demonstrates that the NFB is no different than any
>>>> other
>>>>    organization in interpersonal staff issues.
>>>>    And choice does not mean training center choices.
>>>>    Choice isn't always an option, just like if you took a vocational
>>>>    course
>>>>    in
>>>>    college, there are things you have to take, so to me, the lack of
>>>>    choice
>>>>    in
>>>>    this regard is different than computer software, where all the
>>>> choices
>>>>    will
>>>>    reach the same end result.
>>>>    In states where the NFB philosophy is embraced, if a client said I
>>>> want
>>>>    to
>>>>    use a Mac, or I want Window Eyes, then that is what they would get,
>>>> no
>>>>    questions asked.
>>>>    They would not have to fight to get it.
>>>>    I simply cannot imagine a counselor saying that someone has to use
>>>> the
>>>>    software that the counselor wants them to have.
>>>>    When I hear that stuff, I almost cannot believe it, but I know Butch
>>>>    well
>>>>    enough to know he wouldn't make that up.
>>>>
>>>>    Glenn
>>>>    ----- Original Message -----
>>>>    From: "Butch Bussen" <butchb@shellworld.net>
>>>>    To: "Karen Lewellen" <klewellen@shellworld.net>
>>>>    Cc: "K0LNY_Glenn" <glenn@ervin.email>; <speakup@linux-speakup.org>;
>>>>    "Milan
>>>>    Zamazal" <pdm@zamazal.org>; <Blinux-list@redhat.com>
>>>>    Sent: Tuesday, August 16, 2022 8:18 AM
>>>>    Subject: Re: "Accessibility in Fedora Workstation" (fwd)
>>>>
>>>>
>>>>    You are right.  In Nevada, freedom pushed jaws to the rehab people
>>>> and
>>>>    took them out for steak diners and so forth.  I fought like hell to
>>>> get
>>>>    them to buy window-eyes.
>>>>    73
>>>>    Butch
>>>>    WA0VJR
>>>>    Node 3148
>>>>    Wallace, ks.
>>>>
>>>>
>>>>    On Sun, 14 Aug 2022, Karen Lewellen wrote:
>>>>
>>>>>    And where do these employers learn about jaws?
>>>>>    In fact, provide if you do not mind an example of how  this works
>>>>>    exactly.
>>>>>    after all, unless I am incorrect, these employers are not personal
>>>>>    Jaws
>>>>>    users, meaning someone they trust continues to sell them on an
>>>>>    expensive
>>>>>    program instead of a largely free one.
>>>>>
>>>>>
>>>>>
>>>>>    On Sat, 13 Aug 2022, K0LNY_Glenn wrote:
>>>>>
>>>>>>      Karen,
>>>>>>      Most employers don't want NVDA, and will only allow Jaws.
>>>>>>      In Nebraska, if an employer said put on whatever works, the
>>>>>>      counselors
>>>>>>      will
>>>>>>      use NVDA, because of the cost of Jaws.
>>>>>>      If some of the clients in a call center already use Jaws, but
>>>>>>      don't know
>>>>>>      NVDA, the counselor will use Jaws, because the other clients
>>>>>> will
>>>>>>      need
>>>>>>    to
>>>>>>      learn one of the two.
>>>>>>      So it's all choice, but in the workplace, it depends on what
>>>>>> the
>>>>>>    employer
>>>>>>      will allow.
>>>>>>      Also, sometimes scripts need to be made, and there are more
>>>>>> Jaws
>>>>>>    scripters
>>>>>>      available than there are NVDA add-on writers.
>>>>>>      So this perception that Jaws is forced by rehab, from my 31
>>>>>> years
>>>>>>      in the
>>>>>>      business I can say is rubbish.
>>>>>>      Now, if a counselor did not know how to use NVDA, and either
>>>>>> may
>>>>>>      be
>>>>>>      chosen,
>>>>>>      the rehab counselor is able to select the one that the
>>>>>> counselor
>>>>>>      feels
>>>>>>    is
>>>>>>      best for the student and for the counselor's teaching.
>>>>>>      When it comes to part B moneys, which is used for
>>>>>> non-vocational
>>>>>>      purchases,
>>>>>>      where a lot of Jaws purchases come from, it is in the agency's
>>>>>>      best
>>>>>>      interest
>>>>>>      to spend as little as possible, because that doesn't come back
>>>>>>      like VR
>>>>>>      expenditures do.
>>>>>>      Glenn
>>>>>>
>>>>>>      ----- Original Message -----
>>>>>>      From: "Karen Lewellen" <klewellen@shellworld.net>
>>>>>>      To: "K0LNY_Glenn" <glenn@ervin.email>
>>>>>>      Cc: <speakup@linux-speakup.org>; "Milan Zamazal"
>>>>>>      <pdm@zamazal.org>;
>>>>>>      <Blinux-list@redhat.com>
>>>>>>      Sent: Saturday, August 13, 2022 6:15 PM
>>>>>>      Subject: Re: "Accessibility in Fedora Workstation" (fwd)
>>>>>>
>>>>>>
>>>>>>      The challenge with that example is that, as one often gets
>>>>>>    reminded,
>>>>>>    the
>>>>>>      rehab systems track record for facilitating  employment for
>>>>>> their
>>>>>>    clients
>>>>>>      is quite poor.
>>>>>>      With a high percentage of unemployment among our clients.
>>>>>>      Making,
>>>>>>      speaking personally, your buying Jaws for personal use not
>>>>>> really
>>>>>>      reflecting how the system would respond to an alternative
>>>>>>      request.
>>>>>>      Now if someone from organized rehab said, okay freedom
>>>>>>      scientific, we
>>>>>>    are
>>>>>>      creating an employment program where our clients will train in
>>>>>>      Linux,
>>>>>>      needing a solid screen reader solution for the system.  We will
>>>>>>      give you
>>>>>>      an
>>>>>>      exclusive development contract for s millions to create the
>>>>>> tool.
>>>>>>      Fs would likely say where do we sign?
>>>>>>
>>>>>>
>>>>>>
>>>>>>      On Sat, 13 Aug 2022, K0LNY_Glenn wrote:
>>>>>>
>>>>>>>      True enough, but largely, rehab people typically use Windows
>>>>>>> at
>>>>>>>      work,
>>>>>>>      and
>>>>>>>      probably at home, but they need to cater to the needs of the
>>>>>>>      client.
>>>>>>>      If a client used Linux, I doubt that any rehab counselor
>>>>>>> would
>>>>>>>    advocate
>>>>>>>      that
>>>>>>>      the client switch to Windows, unless that was needed for a
>>>>>>>      specific
>>>>>>>    job.
>>>>>>>      In Nebraska, we purchased Jaws much more for personal use
>>>>>>> than
>>>>>>>      we did
>>>>>>>      for
>>>>>>>      work related situations.
>>>>>>>      So if FS made a JFL, and people were using Linux, rehab would
>>>>>>>      indeed
>>>>>>>      purchase a JFL product.
>>>>>>>      Glenn
>>>>>>>      ----- Original Message -----
>>>>>>>      From: "Karen Lewellen" <klewellen@shellworld.net>
>>>>>>>      To: "K0LNY_Glenn" <glenn@ervin.email>
>>>>>>>      Cc: <speakup@linux-speakup.org>; "Milan Zamazal"
>>>>>>>      <pdm@zamazal.org>;
>>>>>>>      <Blinux-list@redhat.com>
>>>>>>>      Sent: Saturday, August 13, 2022 3:01 PM
>>>>>>>      Subject: Re: "Accessibility in Fedora Workstation" (fwd)
>>>>>>>
>>>>>>>
>>>>>>>      there was an interesting discussion a month or so back on the
>>>>>>>      blinux
>>>>>>>      list
>>>>>>>      about how long it took completing tasks in the gui as apposed
>>>>>>>      to say
>>>>>>>      command line,  the comments were quite informative.
>>>>>>>      Still, fs has never marketed largely to the end user. Instead
>>>>>>>      they
>>>>>>>      market
>>>>>>>      to the American rehab community.
>>>>>>>      how much market research has  the rehab community done to
>>>>>>>      support the
>>>>>>>      need
>>>>>>>      for choices?
>>>>>>>      How many rehab counselors support  training in Linux?
>>>>>>>      one comment made by the subject of this thread about poor
>>>>>>>      quality
>>>>>>>    speech
>>>>>>>      is a fine one...out of the box Linux has few speech choices.
>>>>>>>      everyone
>>>>>>>      brings their needs to the table there.
>>>>>>>
>>>>>>>      if you want to get fs to care about Linux, you  need to prove
>>>>>>>      there is
>>>>>>>      money for  them there, from their main source of income.
>>>>>>>
>>>>>>>
>>>>>>>
>>>>>>>      On Sat, 13 Aug 2022, K0LNY_Glenn wrote:
>>>>>>>
>>>>>>>>      Well since Orca seems to work on so many distros, I don't
>>>>>>>>    know why
>>>>>>>>    FS
>>>>>>>>      would
>>>>>>>>      not be able to do the same.
>>>>>>>>      If Jaws users could switch into Linux, it would be a real
>>>>>>>>      game
>>>>>>>>      changer,
>>>>>>>>      and
>>>>>>>>      I think with lots more Blind Linux users, we would start
>>>>>>>>      seeing
>>>>>>>>      accessibility in Linux not being a second thought.
>>>>>>>>      Glenn
>>>>>>>>      ----- Original Message -----
>>>>>>>>      From: "Karen Lewellen" <klewellen@shellworld.net>
>>>>>>>>      To: "K0LNY_Glenn" <glenn@ervin.email>
>>>>>>>>      Cc: <speakup@linux-speakup.org>; "Milan Zamazal"
>>>>>>>>      <pdm@zamazal.org>;
>>>>>>>>      <Blinux-list@redhat.com>
>>>>>>>>      Sent: Saturday, August 13, 2022 1:47 PM
>>>>>>>>      Subject: Re: "Accessibility in Fedora Workstation" (fwd)
>>>>>>>>
>>>>>>>>
>>>>>>>>      Well technically freedom scientific does not exist any
>>>>>>>>      longer, being
>>>>>>>>      bought
>>>>>>>>      by another company.
>>>>>>>>      Still, I can respect why they, or nvda have not created
>>>>>>>> their
>>>>>>>>      tools
>>>>>>>>      for
>>>>>>>>      Linux.
>>>>>>>>      That is because as I understand it, Linux is  quite like
>>>>>>>>      clay. You
>>>>>>>>    can
>>>>>>>>      mold a distribution into almost anything. there are various
>>>>>>>>      personifications of the system, all sorts of ways and
>>>>>>>> changes
>>>>>>>>      and
>>>>>>>>      options
>>>>>>>>      for creativity.
>>>>>>>>      however adaptive tools are often extensions of physical
>>>>>>>>      characteristics,
>>>>>>>>      hands, eyes, ears, brains, combinations of these.
>>>>>>>>      To build solid assistive tools one must have a solid
>>>>>>>>      foundation as
>>>>>>>>    it
>>>>>>>>      were.  that is part of why there have needed to be so few
>>>>>>>>      Apple
>>>>>>>>      efforts
>>>>>>>>      at
>>>>>>>>      inclusion, they  created  with, and then created in-house
>>>>>>>>      adaptive
>>>>>>>>      tools
>>>>>>>>      for various  populations that were built into the system.
>>>>>>>>      Although Microsoft did not bother until much later, in
>>>>>>>> theory
>>>>>>>>      at
>>>>>>>>      least,
>>>>>>>>      the
>>>>>>>>      consistency of windows is what makes it possible for
>>>>>>>> freedom
>>>>>>>>      or the
>>>>>>>>      former
>>>>>>>>      gw  micro or nvda to create something that can in theory
>>>>>>>>      work.
>>>>>>>>      Floor for the furniture is somewhat solid.
>>>>>>>>      Just my thoughts,
>>>>>>>>
>>>>>>>>
>>>>>>>>
>>>>>>>>      On Sat, 13 Aug 2022, K0LNY_Glenn wrote:
>>>>>>>>
>>>>>>>>>      I would like to see Freedom Scientific make a Jaws For
>>>>>>>>>      Linux.
>>>>>>>>>      JFL
>>>>>>>>>      I'd certainly pay the yearly rental fee for it, and it
>>>>>>>>>      would bring
>>>>>>>>>      many
>>>>>>>>>      more
>>>>>>>>>      users into Linux.
>>>>>>>>>      FS could, with its resources, possibly make it more
>>>>>>>>> robust
>>>>>>>>>      than
>>>>>>>>>      Orca.
>>>>>>>>>
>>>>>>>>>      Glenn
>>>>>>>>>      ----- Original Message -----
>>>>>>>>>      From: "Milan Zamazal" <pdm@zamazal.org>
>>>>>>>>>      To: <speakup@linux-speakup.org>
>>>>>>>>>      Cc: <Blinux-list@redhat.com>
>>>>>>>>>      Sent: Saturday, August 13, 2022 12:08 PM
>>>>>>>>>      Subject: Re: "Accessibility in Fedora Workstation" (fwd)
>>>>>>>>>
>>>>>>>>>
>>>>>>>>>>>>>>      "KL" == Karen Lewellen
>>>>>>>>>>>>>> <klewellen@shellworld.net>
>>>>>>>>>>>>>>    writes:
>>>>>>>>>    KL>  What bothers me most are his lack of actual
>>>>>>>>>    qualifications,
>>>>>>>>>    and
>>>>>>>>> KL>    absolute dismissal of what he has not experienced..as
>>>>>>>>> if
>>>>>>>>> KL>    he
>>>>>>>>> KL>    defines Linux usage for everyone.  That attitude is
>>>>>>>>> KL>    dangerous,
>>>>>>>>> KL>    because he is educating those outside of the
>>>>>>>>> KL>    accessibility
>>>>>>>>> KL>    experiences, who will believe his ignorance is
>>>>>>>>> factual.
>>>>>>>>> KL>    he
>>>>>>>>>    has
>>>>>>>>>    KL>  to be expert, it is his job.
>>>>>>>>>
>>>>>>>>>      Hi Karen,
>>>>>>>>>
>>>>>>>>>      I know Lukas personally and I admire his skills and
>>>>>>>>>    qualifications.
>>>>>>>>>      I
>>>>>>>>>      also know first hand that he is open to constructive
>>>>>>>>>      feedback and
>>>>>>>>>    I
>>>>>>>>>      believe heÃ¢?Td be happy to be corrected about possible
>>>>>>>>>      technical
>>>>>>>>>      inaccuracies in the interview.  It may be also a good
>>>>>>>>>      opportunity
>>>>>>>>>    to
>>>>>>>>>      find out whatÃ¢?Ts possibly missing in making anybody
>>>>>>>>>      better
>>>>>>>>>      informed.
>>>>>>>>>
>>>>>>>>>      As for Ã¢?oabsolute dismissal of what he has not
>>>>>>>>>    experiencedÃ¢?Â,
>>>>>>>>>    what
>>>>>>>>>      reasonable free software alternatives to a less or more
>>>>>>>>>      standard
>>>>>>>>>      desktop
>>>>>>>>>      with Orca and a software synthesizer can you see for a
>>>>>>>>>      common
>>>>>>>>>    blind
>>>>>>>>>      user
>>>>>>>>>      who needs to use a fully working web browser, to read and
>>>>>>>>>      process
>>>>>>>>>      text
>>>>>>>>>      documents, to be compatible with other computer users,
>>>>>>>>>      etc.?
>>>>>>>>>
>>>>>>>>>      And letÃ¢?Ts be realistic.  We celebrate every single
>>>>>>>>>    developer
>>>>>>>>>    hired
>>>>>>>>>      to
>>>>>>>>>      improve accessibility.  This tells something about the
>>>>>>>>>      state of
>>>>>>>>>    the
>>>>>>>>>      matters.  We cannot expect that a single person will fix
>>>>>>>>>      all the
>>>>>>>>>      kinds
>>>>>>>>>      of accessibility problems in all the environments.  Lukas
>>>>>>>>>      works at
>>>>>>>>>      his
>>>>>>>>>      job focusing on certain areas currently seen there as
>>>>>>>>>      urgent ones
>>>>>>>>>      and I
>>>>>>>>>      appreciate this opportunity.  Anybody else seeing a need
>>>>>>>>> to
>>>>>>>>>      work
>>>>>>>>>    on
>>>>>>>>>      other areas is welcome to contribute to whatever sees
>>>>>>>>> fit,
>>>>>>>>>    as I
>>>>>>>>>    do.
>>>>>>>>>
>>>>>>>>>      Regards,
>>>>>>>>>      Milan
>>>>>>>>>
>>>>>>>>>
>>>>>>>>>
>>>>>>>>>
>>>
>>>

