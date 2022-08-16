Return-Path: <speakup+bounces-567-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 9B43059628F
	for <lists+speakup@lfdr.de>; Tue, 16 Aug 2022 20:37:29 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=uwprod.onmicrosoft.com header.i=@uwprod.onmicrosoft.com header.a=rsa-sha256 header.s=selector2-uwprod-onmicrosoft-com header.b=nOjCNM5B;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id D2A6D3847E1; Tue, 16 Aug 2022 14:37:28 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id AC0043847E1
	for <lists+speakup@lfdr.de>; Tue, 16 Aug 2022 14:37:28 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id C336F3847E6; Tue, 16 Aug 2022 14:37:19 -0400 (EDT)
Received: from wmauth3.doit.wisc.edu (wmauth3.doit.wisc.edu [144.92.197.226])
	by befuddled.reisers.ca (Postfix) with ESMTPS id A67EE3847DF
	for <speakup@linux-speakup.org>; Tue, 16 Aug 2022 14:37:19 -0400 (EDT)
Received: from NAM04-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam04lp2041.outbound.protection.outlook.com [104.47.73.41])
 by smtpauth3.wiscmail.wisc.edu
 (Oracle Communications Messaging Server 8.1.0.16.20220118 64bit (built Jan 18
 2022)) with ESMTPS id <0RGQ00KH6124TW30@smtpauth3.wiscmail.wisc.edu> for
 speakup@linux-speakup.org; Tue, 16 Aug 2022 13:37:17 -0500 (CDT)
X-Spam-Report: AuthenticatedSender=yes, SenderIP=[104.47.73.41]
X-Wisc-Env-From-B64: amhlaW1AbWF0aC53aXNjLmVkdQ==
X-Spam-PmxInfo: Server=avs-3, Version=6.4.9.2830568,
 Antispam-Engine: 2.7.2.2107409, Antispam-Data: 2022.8.16.182718,
 AntiVirus-Engine: 5.92.0, AntiVirus-Data: 2022.7.21.5920001,
 SenderIP=[104.47.73.41]
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YoH3aCaDBnnqxj+6b+spVtF1uh3TJpER2EYl46i6r2X3Q2cyeg4VCzJ2wE1H2iWAB2ETHCLeE4uYnmiQ7YSSjLPSESyjTByUGJ8yY+euR8vYwXcFZNybLKPZsPpctr1Q96biPHOhJxFGGEQRO4Hhp0HSP91EUeRNQBXBLjUZgassU6XP7n+wBShFvqfOlfvWyeveOtWRAPNuKOqkAuiwtNsEwAp3QGuR7tJATD3s5X+bRljSkpepLK3N3rPxv9kIIoEipjwY58ACdi35Pz4EkTUcwIAZagXZll/kd/qAIW1oedVfFiDXzF0G5gunwmnJ+NwC0pasynDQtMaAVZP85g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HtXhYI02oaTr/ADi1oReASadH0jb5r9NK+yQuykAnI8=;
 b=X4DqXI8/tZYjzXkIxt+Al0O4/VdV47AHEZznRjdBWlD7dbirUSJHTMub8pPZnGaf5EUBDnRBJzEZdNWX7CF5Njy58upPdoSa4ARXP7x9YDCZddR+/qm2KOBRImcCkUHygWnEKuUP7+/DsG2m/I64ao6XxJVJGKnPbgeqcY0I6MBIjngP0eoMYFaQrydZqzue19VVGyut535Qte+YFdBG6bZX6yKnspTFRQBD9M6K9oc7ihSMA7eNzFlZvjRBub/ibEKtzNGlrgq0xUjxE8mYDJvCYyUL9RiUqsB1l4rZIZrMYs7LzyMhkf0Ufh/nPLnSGyKb2V6VJ3msmRFfRUZ2UA==
ARC-Authentication-results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none header.from=math.wisc.edu;
 dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=uwprod.onmicrosoft.com;
 s=selector2-uwprod-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HtXhYI02oaTr/ADi1oReASadH0jb5r9NK+yQuykAnI8=;
 b=nOjCNM5B0bZWoBNJWIuPnadiPID/jGSBV0wRP7UJqz7bN02vq23z8mkem4toDDNGQ9lP3f3MH2Ez3oGl9WBCL6IqCUKZPDsFzH16dhjhTHNSH7oPYdQf9jZe3Y/c2GA7tEkG96NrSy5C3IGCQjB5x2uPwOVC58XHMeYQ3H/m/kE=
Authentication-results: dkim=none (message not signed) header.d=none;dmarc=none
 action=none header.from=math.wisc.edu;
Received: from SJ0PR06MB8325.namprd06.prod.outlook.com (2603:10b6:a03:393::17)
 by PH0PR06MB8570.namprd06.prod.outlook.com (2603:10b6:510:121::18)
 with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384)
 id 15.20.5525.11; Tue, 16 Aug 2022 18:37:16 +0000
Received: from SJ0PR06MB8325.namprd06.prod.outlook.com
 ([fe80::da3:ad93:7ee6:7c17]) by SJ0PR06MB8325.namprd06.prod.outlook.com
 ([fe80::da3:ad93:7ee6:7c17%6]) with mapi id 15.20.5504.028; Tue,
 16 Aug 2022 18:37:16 +0000
Message-id: <947d670d-b6e5-960b-5a5e-90af25a6ec4c@math.wisc.edu>
Date: Tue, 16 Aug 2022 13:37:11 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: "Accessibility in Fedora Workstation" (fwd)
Content-language: en-US
To: Brian Buhrow <buhrow@nfbcal.org>, K0LNY_Glenn <glenn@ervin.email>,
 Karen Lewellen <klewellen@shellworld.net>
Cc: Butch Bussen <butchb@shellworld.net>, "John G. Heim" <jheim@wisc.edu>,
 speakup@linux-speakup.org, Milan Zamazal <pdm@zamazal.org>,
 Blinux-list@redhat.com
References: <202208161814.27GIEKUm029606@nfbcal.org>
From: "John G. Heim" <jheim@math.wisc.edu>
In-reply-to: <202208161814.27GIEKUm029606@nfbcal.org>
Content-type: text/plain; charset=UTF-8; format=flowed
Content-transfer-encoding: 7bit
X-ClientProxiedBy: BN0PR03CA0050.namprd03.prod.outlook.com
 (2603:10b6:408:e7::25) To SJ0PR06MB8325.namprd06.prod.outlook.com
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
X-MS-Office365-Filtering-Correlation-Id: c1f2d612-d5b7-4d11-d035-08da7fb65774
X-MS-TrafficTypeDiagnostic: PH0PR06MB8570:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
 l4FYdllQr7SNAI4BBudUYDmqiJ8jmD/WOPpjI5a7BgI2OLHlVx2Swxq+0ceYB7UDv7ErjIqZ1dHMFDMGVAICORS276bFs5aiLiJTwZlhTIDLmj0G5ZEyJDkeNayhzrfumzUsbLh2nUySxzt+oQnu2W8dyJvU7V7AHPSgNrQ50aOQXOBXhJ1Fhih+Uj7ISyNQ1VglIqWwF+5CJzKo5ztbSSj6aEpFU7ak9J2NEN6JZZkrUHImOhY9q58yE6NCdwfMN7a1sPRGf60YFwbtmzv+yRIaMZSPnNcmB0QqHM0StjRRj61MJA6DgKcrni120UgUTyCvzSLfeO5nIx1usEqqOsd+yG8TJ1VAIB0nZhRJUly3+1nshFjMt+yXOUUJvHIL7K3IvJyxFkT8ljy5B2S21t/WkqQqYyex32VucxkQgPr1jcefN23bNwLBFNEULiOFnuzyOuKdO0TfeRRqg0QWDmCoTFXxc355ELW/BFQ0weFpebcCwOf7IUf4/J5WjL5rbRcrlk+RtvKY0AMGp7eKd84Q6SCTUhz7da3a3LDimi1+JHDeIdMPWATT/CoIYeE1TKZlPHPEGUDAB2CdIlbPT97axfN82favTHDwhpFYlRMtwgv5wRAZZJ+DhSlhAqpuh9xO+6GqWUKzQ8wgRfATYZh/27fv+FCdtSBe1TCxnbn5MhTm4HxH/ljkDdzF2d2eGJN6s5yCNLLChD0JqpfVfL6KIy6tf6/R6jnHRr6z5qenrUijyB8+AVToxXo5oaN0xTXPmbnzZ51G55FwyVnwIsvWjRPk+M9jiEqeN8COJHCtHHCm6NvFOYECRtgAa+KjvkV5OBQGS61LZoNNy+xRhQ==
X-Forefront-Antispam-Report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR06MB8325.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(136003)(376002)(346002)(366004)(39860400002)(396003)(66476007)(2906002)(86362001)(8676002)(31696002)(66946007)(4326008)(38100700002)(75432002)(66556008)(8936002)(83380400001)(53546011)(45080400002)(316002)(54906003)(786003)(6506007)(2616005)(186003)(110136005)(41320700001)(6666004)(5660300002)(26005)(6486002)(6512007)(41300700001)(478600001)(31686004)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
 =?utf-8?B?WG4rWTdTV05VMHZ3M3JqWnR4S1VjZEFjNW1QdmdaVjVzVFoxNEUyNXJSQmlj?=
 =?utf-8?B?YzNCeE1PVTM4NmhkYithak5hREFsaHYyQlNabjFJT0NqalVLWTRTOFdFVHA5?=
 =?utf-8?B?ajg0RzRFVk4wemtJOVlSbElQeDFJaEgrWVBQMFA5aFNXaUJtTVA2dEkwRmxw?=
 =?utf-8?B?WjJJdzg4LzVkMVYwR2RZM2dpY0N6TUpvQWtFcjU0L2RSYjdhV1pZTDBQMXEx?=
 =?utf-8?B?ZWEycU9McWNxamtqbU9sSXpPYTh1OTcvRVJNbEF0SW5HVjQ0WlBtakZSR2Z1?=
 =?utf-8?B?RVZneitDVFVla2F5dUVCT1M2OXpCZWNFL2swN3hKRVg4TEVoS0hvSXo0THpM?=
 =?utf-8?B?OGpibmRvSUVaTjkwR2FQSGhLL3QzT095NlZUdXBwQXdqTkdSQkFMeWN5NktZ?=
 =?utf-8?B?QjdvVTRzWnBwRnlyOGdBR09pRmFhYVE3ZjR3NzE4NWRhR0lZbXdDak1LMzhk?=
 =?utf-8?B?cFoySHhETm9LZytUTHRET2pXWDlPSTNacVRIMEZyVFdhbXdtYmo0WWkvSjJ1?=
 =?utf-8?B?c3dDYk50MFA5S2dUeW0wa2wyQ254QXB3MnAxMndhR3NvbnNabEF6RnhOa0F4?=
 =?utf-8?B?QTFoNGJkRWs5TXZJOEZZTGJ2cDYwYm1iQm4yY3BTa2swVk9qcENOeE51b1g2?=
 =?utf-8?B?aDR6Z2gxTmN1V1d0QmVTKzE3SGtQMmd2alNwOEdKUmQwUklFL2Z5VHJjZnZO?=
 =?utf-8?B?aUZKcllkVVRPK0J4MVZpTjcwNHhJNnZYUlVPOTJKRnF4QjZHeXhVbXdUdzVq?=
 =?utf-8?B?SGlhU2N6cFBMWk9kVnhKNkJqcVVHQkkzcWtLeHNlSHIwUVZwQ2FCYUlxWW9Y?=
 =?utf-8?B?Q2szU0tud0xQWEJnVE1ZZWUrZ3pSaVFrQjZxeENaQ2tIaFZrTGxCZ0lQWEth?=
 =?utf-8?B?OU9BNGxBaFgvbktMcjZBTVhvWGRWSFFMSmxCZlkzS05RcVBiK1RzU0xMQ3ZE?=
 =?utf-8?B?MDhIdFg5SjV2MTVXZ0lhc1QxT0xxNm9jZnBVd1BQREs3NXJVN1JHRWhnT2dy?=
 =?utf-8?B?WmhWZmFpRDd1cEM5RW9HblpLRVNBd3VoYWo0aHlQNUE2a0RzZkhTc0tPUUNM?=
 =?utf-8?B?N1VlRElGOTJJeTErLzdhcVA4MllzcTV4NzlFVWMrck1XbFBaVkRlbXRTZjZG?=
 =?utf-8?B?YXB5UDkyKzMvVnJ6REVjRWdoT3d5bE1uZVNzczlCSUNhTUpNLzcrTTNNdlgv?=
 =?utf-8?B?QnZlZUxnRHFDajFFLzB5RHhydjdvOGtqU2ZIQkN5dWFYWG9VRXcxSXRPdzlD?=
 =?utf-8?B?WVFzWEhxQnRGNWtVTkZUdXQ1YUI0RDFZQ2VRcWk3U1c1MEZXeWF3T3VpSVZ3?=
 =?utf-8?B?dGRlNnBiT1hmTkM1bU02b3dHVm5QS2ZtNnZ3eWloTDRSNjAzYmV1ZmhHK1N5?=
 =?utf-8?B?Ry9GdkQyZTArK0tPTkVUQURDT0JBUmNYR1JJOFlBSU9MYmJIMDJ4T2thczB6?=
 =?utf-8?B?QXBTK1BYZ1lUWFJmbUU4WnhJbVo0NVNFbGNBZ3pUSWpmbnFpOUlTenNvdUxD?=
 =?utf-8?B?SVRuWWd3Q2hMV2xXaDQ2aGNlSVFXOEV6NCtPQ1hWN2hqVW1pZ25VNlJnQnE1?=
 =?utf-8?B?Y2JDczZwaXBjWW1RRFZTeThmd1NWWjBoMFVpdFRlUVdkTTcvRkI0NTVYYlpQ?=
 =?utf-8?B?ZVVHb3lNQzAvdTIwdVJPOUw2c2tnYVlCN3hwN2tIaFltbWxiR2NtNkxzYUdv?=
 =?utf-8?B?MG01d1M1UmtnazZFTWJtUERYYW9QWHNNd2RhS2xVbUx5TU9qN1NiV05PRWxO?=
 =?utf-8?B?dW1IZ3BmNzZHNVlqaDhCcTBwaGp2L0J6akYrbEo1cStEQ0hXalpLT2tYM20v?=
 =?utf-8?B?U2ZNTm9JZ0hEVGh2ZS9YMGhWbGJjUWhKVDgxNzZBT0U0VXdNeWVYSEgxUS9t?=
 =?utf-8?B?MXZ6ZDlTSWg3QmptK3I3RFlvRFIzWWVEV0hpUmRhbkN3cGNveFBGbDQ4eHlG?=
 =?utf-8?B?c2R1KzgzenAvMlhjVDVxZmNRamlTdXY2V0FVTDd4dXI3TkVpeVFVaDEyY1kr?=
 =?utf-8?B?aVdHR3hxTWVIL2IrUnIyeUdrZ3VJUTFMYXFCbTllWG81QUw5bE93VWUyWjRF?=
 =?utf-8?B?T0FKSEZBOHFNSXhXTVlWc0k4RUkvWEtsRmErZ1YvdC9PTFhFUmttM21GN0tR?=
 =?utf-8?Q?LxVOW/eVKAMfQmNEQWFUafxXf?=
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id:
 c1f2d612-d5b7-4d11-d035-08da7fb65774
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR06MB8325.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Aug 2022 18:37:16.0175 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName:
 PMlxJ54NucXUBqKJ24T+sQgBQvU1ImDu9zXd0gzauVoH3CelIRwBPzOVjbEgT+j0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR06MB8570
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Brian, you're not actually still defending the NFB's reasoning, are you? 
It could hardly have been more clearly wrong.

You are posting this to an email list for a free, open source screen 
reader. I made my living as the manager of high performance computing at 
the University Of Wisconsin with Speakup and Orca. And Jaws still 
exists. The price has dropped to $99 though.

Look, the NFB made a mistake. A *HUGE* mistake. That's about as obvious 
as it could possibly be.


On 8/16/22 13:14, Brian Buhrow wrote:
> 	hello.  Having participated in the debate with Microsoft about narrator, let me see if I
> can provide a bit of context.  When Microsoft began putting a real effort into Narrator, there
> wer  those of us who were concerned that it would put Freedom scientific out of business and,
> thus, potentially, remove accessibility choices for blind users, especially for folks who were
> currently employed using JAWS or, at the time, GW Micro.  Exhibit A was, and is, Apple with
> VoiceOver.  If you want to use Apple products with access technology your choice is, well,
> VoiceOver.  If it doesn't work for you, well then, tough on you.  That's also true of Android
> with Talkback and Brailleback.  Yes, Brltty works on Android, but it relies on the access
> provided by Talkback and Brailleback to get its data, so if Talkback and Brailleback can't see
> it, it isn't visible nonvisually.
> 	It takes a lot of effort to make a good screen reader and it takes even more effort to
> keep it running well.  The argument ran like this: if Microsoft put a huge amount of effort
> into getting Narrator working well, would they continue to provide the hooks and data Freedom
> Scientific and NVDA needed to make their products work?  And, what if Narrator was deemed good
> enough by Microsoft, but didn't work for folks who were trying to hold down jobs, but JAWS and,
> at the time GW Micro, couldn't  continue making their products function because they weren't
> getting what they needed from Microsoft?  what we said was we didn't want Microsoft to work on
> Narrator at the expense of continuing to develop and share their access API's with third party
> screen reader providers.
> 	While it's true the accessibility scene hasn't played out exactly as we described it in
> terms of the time frame we laid out, it is true that, over time, accessibility options for
> Windows users are dwindling.  Case and point, if you purchase the tablet version of Windows, or
> the stock home edition of Windows, by default, you cannot use any screen reader other than
> Narrator on that installation unless you flip a magic switch in that installation to enable the
> full Windows experience.  In addition to allowing third party screen readers, that switch also
> allows the installation of unsigned software outside of the Microsoft store.  Microsoft claims
> they will never disable the ability to flip that switch, but the fact that we are one switch
> away from not being able to use the screen reader of our choice on Windows, is, in my view, an
> erosion of access.  Remember, there was a time when Microsoft said it would never release a
> Windows version 11.
>
> 	So, while it may be that our message was mis-interpreted, and we may have not stated it as
> well as we should have, the goal of the message was, in fact, to expand accessibility choices,
> not to diminish them.
>
> -Brian
>
>

