Return-Path: <speakup+bounces-575-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 3875F59659E
	for <lists+speakup@lfdr.de>; Wed, 17 Aug 2022 00:46:28 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=uwprod.onmicrosoft.com header.i=@uwprod.onmicrosoft.com header.a=rsa-sha256 header.s=selector2-uwprod-onmicrosoft-com header.b=Uhj7c6Ks;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 6F099384813; Tue, 16 Aug 2022 18:46:27 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 4ABCA3847F3
	for <lists+speakup@lfdr.de>; Tue, 16 Aug 2022 18:46:27 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 4E8533847F8; Tue, 16 Aug 2022 18:46:18 -0400 (EDT)
Received: from wmauth3.doit.wisc.edu (wmauth3.doit.wisc.edu [144.92.197.226])
	by befuddled.reisers.ca (Postfix) with ESMTPS id AD7373847F2
	for <speakup@linux-speakup.org>; Tue, 16 Aug 2022 18:46:17 -0400 (EDT)
Received: from NAM12-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam12lp2174.outbound.protection.outlook.com [104.47.59.174])
 by smtpauth3.wiscmail.wisc.edu
 (Oracle Communications Messaging Server 8.1.0.16.20220118 64bit (built Jan 18
 2022)) with ESMTPS id <0RGQ0097XCL4W220@smtpauth3.wiscmail.wisc.edu> for
 speakup@linux-speakup.org; Tue, 16 Aug 2022 17:46:16 -0500 (CDT)
X-Spam-Report: AuthenticatedSender=yes, SenderIP=[104.47.59.174]
X-Wisc-Env-From-B64: amhlaW1AbWF0aC53aXNjLmVkdQ==
X-Spam-PmxInfo: Server=avs-3, Version=6.4.9.2830568,
 Antispam-Engine: 2.7.2.2107409, Antispam-Data: 2022.8.16.223619,
 AntiVirus-Engine: 5.92.0, AntiVirus-Data: 2022.7.21.5920001,
 SenderIP=[104.47.59.174]
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lbW7hT7/Ym+j7IoSD+cr5zvesD9Le5W7fIPz5aJWA6PSWgirpeTMSzPm+m1iaicqvHXt1tLzGIfVuSuaJ3Eo15myXks6GZncd9HiV2ARwIH0uW5qEfB41poasWSClRtwj18TpdCmn5tCs1Sbhtlxa7D0efM9rmlU+Afxb79jKpmV2iXqnPhFMblPQ67sgl9dcOWFl2i/zAe67/5Z8jbWNpGVpMmkZdK87ppMFyEv/DZOouF72eOdzzHhGtPuXhMoFfBmaMT3ru4hHjv57Fl6FCtLljJJNefa2fbdF2Row19r/fV153FpyQLYXAKpuiyhADlMP86VtVJjJh+lEcI7KQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=J7zl5MedbNjg+Ot790FLgc0cXZKADFoAN0JUaUb/1Xs=;
 b=kLjhBfVV8s9YK+xh2clpL9WKyPS8A+iCEnJDCitO44WWUDrORZvS8MQIO9UPOUDYtIhufLfx+x1Xmy5R+4f1q48ku9BJiaiye+Lgg3ntMey66I5BtodAt5eXfsqzBWif9fqpji4Yd66et/bbrJorHN3vuXbSWmecMAjxVwnLB1fGKBsZMZiJ2R/KrmMPxd2kXOSzSMl8UzeHjd5D9n8lvtyKPPye6bizrbaw4NOJ5wJclJtJaK2VoU0HdtoB46IR2w380bL6ntgUJQqt7qC1ZqcXAZGfOgmExL8yAUn6fQq0g+JalplkZuBX6HZ3nEkfspMDMInr1+wA2K73A8MBLw==
ARC-Authentication-results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none header.from=math.wisc.edu;
 dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=uwprod.onmicrosoft.com;
 s=selector2-uwprod-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=J7zl5MedbNjg+Ot790FLgc0cXZKADFoAN0JUaUb/1Xs=;
 b=Uhj7c6KsZaV+yvddoc4+pkVe6yTzBfsWYq4lWBcUPng7a2xtmOo+frGYqPsiPEASMVjbiCIIukQa4yOMvWzBmg/1AoetSRnB0r6ywi25FTkxKQzPANKvyV3hmCcaPOeGrvP1MjQrh7XjbzOse0fTubMLcRbEcmr4IfUxZP3dpyU=
Authentication-results: dkim=none (message not signed) header.d=none;dmarc=none
 action=none header.from=math.wisc.edu;
Received: from SJ0PR06MB8325.namprd06.prod.outlook.com (2603:10b6:a03:393::17)
 by MW4PR06MB8298.namprd06.prod.outlook.com (2603:10b6:303:126::11)
 with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384)
 id 15.20.5504.18; Tue, 16 Aug 2022 22:46:13 +0000
Received: from SJ0PR06MB8325.namprd06.prod.outlook.com
 ([fe80::da3:ad93:7ee6:7c17]) by SJ0PR06MB8325.namprd06.prod.outlook.com
 ([fe80::da3:ad93:7ee6:7c17%6]) with mapi id 15.20.5504.028; Tue,
 16 Aug 2022 22:46:13 +0000
Message-id: <5d7172a3-21b8-72ca-7e85-b7ea04b4b37c@math.wisc.edu>
Date: Tue, 16 Aug 2022 17:46:09 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: "Accessibility in Fedora Workstation" (fwd)
Content-language: en-US
To: Chevelle <cstrobel@crosslink.net>, speakup@linux-speakup.org
References: <202208162107.27GL7BUC025757@nfbcal.org>
 <3a0ff36e-6988-477e-6f91-9ec4fd5618ec@crosslink.net>
From: "John G. Heim" <jheim@math.wisc.edu>
In-reply-to: <3a0ff36e-6988-477e-6f91-9ec4fd5618ec@crosslink.net>
Content-type: text/plain; charset=UTF-8; format=flowed
Content-transfer-encoding: 8bit
X-ClientProxiedBy: BN9PR03CA0517.namprd03.prod.outlook.com
 (2603:10b6:408:131::12) To SJ0PR06MB8325.namprd06.prod.outlook.com
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
X-MS-Office365-Filtering-Correlation-Id: f92aa95c-e5e3-4f88-b28f-08da7fd91f20
X-MS-TrafficTypeDiagnostic: MW4PR06MB8298:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
 bI4melEe3uN6iN/xHq0eQAvIGIzn0H1ZM5ZvrXZjD+vajsdSxKj0y6K9+PshyPCPCauNoZqT7iomnT47ZVN4ReRnNQIFw7hXWppTTKaaR6QGNlSFK8kH6wDwLlHXo+oYDTM4xrDHS+26kGOQD69Na1lUzstCwXfqsGTA5l5bFUVyTIeDwVXwTA5DsYClqI/3AeBhQR6grnC0FiPeX9E5tY7ilZt9qT4qT7hYrZWzDUdD8PdG4gzl7fA+cUKMJCtqA9PG8Q4fZYKaBphu8lVwOro27ykNwcIIgamuJ/rhK0XaxMB26qZbQGZyYK4n5DFM9n7ppvtSheDxuuwz4mDxpHG4QfcGKFNTSQ7XnP+iNindVgrOR4oYQBfx7G//BjQKUQ8KSEzQ1lJA5kGprkvg9ptsWOKY/mKsjqsdklmE9KgqmK5ivEe8g6GDvd8RnwHgf6x720iPEqp8e8TqM10JgbghQTZhVvPtgcAJEAt93ansuJrxB+dWgMbzSQdeuKjSF1Tp4088lFj38FN3aly5r3MKzfESwXIOKQDnvSAWW6/LPycCWIwYatE/Go2ISNlytHc+Nf7XnUkBhklYzEkTqQVSwZUoYJ6oX0UOWV73ueujjhG8+xCTdeLmnMy9tPmvQIBP4tgm50j+iicv9vZIXvcdkaKgT1kWcNvBJOlDoeo9WmQQz3JQihiy8qCQ2Llj4fKfqGJDpu78RFu0n7L80Y8zUaoC9bgf9chDI1uUytXtNz84RXNia3oQbXk/p5aS5oWA72Gi5EhOlPA5irYxc6ycktyolR2a9NjQFxz7q3+SrLFpG0PyKwIhqHQu5oPo5S0Nqxu29BRFjSLoiGQ/vw==
X-Forefront-Antispam-Report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR06MB8325.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(136003)(366004)(346002)(376002)(39860400002)(396003)(186003)(38100700002)(66946007)(83380400001)(5660300002)(8936002)(2616005)(66556008)(66476007)(8676002)(6506007)(53546011)(41320700001)(2906002)(41300700001)(6512007)(6486002)(26005)(478600001)(6666004)(86362001)(75432002)(786003)(45080400002)(316002)(31696002)(31686004)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
 =?utf-8?B?ZGtNSGpUNnRuY3JXQlNKMTErUithN1VmMFhpdEJrWjRrcERldUZYWngzMEg0?=
 =?utf-8?B?QnEzNEppVEhrM09nVThwcVhMSU1ZckZJSEQ5eGNFV1NPYmdoOUp1MXlTanZF?=
 =?utf-8?B?UkFtbmZsbVVwWUhMUzJuaG1BMUxXZzl4dk9rcTVXVVdqR0FkVGRGOHlHZmlK?=
 =?utf-8?B?aUVHRTA1OXRicXVlTUFHYU93Y1d2MkZHOG45TGtuUzhvVGlxbW9ENERxTmFv?=
 =?utf-8?B?TWdMd2QwUk1uS05XUXVLbjdpVHNBNXEwVTlYMzJIY3RxRmRXVVo4RUJOempG?=
 =?utf-8?B?eHQzZFZJSmd2NWpMYWJsanYyWitidjBkRjFUVVFyalVCZ2pGdFdxN29GMDZh?=
 =?utf-8?B?c1h3WkNKR0tSUEN2enZhTW9BeXk0ZDlXbkJnSjBjSnFYcjZaQjcrUlBLT0s1?=
 =?utf-8?B?R01zNkxTYmRkUWdxdlBQSThBUnlQSVdzTEdrdTFXQ1VrOHZOL20vcUJVK3VS?=
 =?utf-8?B?NjZEL3hnR1JEeXNHTS83eUp3LzdiVFFERTlkVXRLQURyazJZTDMwZk4zazZr?=
 =?utf-8?B?b2xBK3FBM0kzd1gweEMxNFZPT2tVcGRCZ1lXcWZnNnRxWGRISEhzZE50ckxh?=
 =?utf-8?B?SVJqMWM1MmpqM3k5SXlUai8zTHc2ZkFNakptNzh2N1hEY0F4Vnlxa1R6TUkr?=
 =?utf-8?B?ZzJEMUZSTTBOTWt6d2RrVXhNWEFPOXF6RFpHQVh5ZFZjTlZkSWQ0clZNNWh3?=
 =?utf-8?B?WTZRbFJkc0xzUmJkT29NcXFkdk1ueDNFT1B6Ym9qRkZXVE93S3E0cUxhUUx0?=
 =?utf-8?B?UW16VHpkUHBNb0t6NXpvVG5vNW1nTnFPcHJDd0JEWiszTTNscEExMXV1UnJu?=
 =?utf-8?B?UVNleEFlQ05aTnl4akd4MlhZUWF3UDBLVDhMNjNyVlBIK2VLdk9pZGcwUnUx?=
 =?utf-8?B?WFVTdTlHSXdjdm5VWE5KajA0TFZ3OWd6dkM4T1IrekRuWWY0RytPTGJ0Tk5J?=
 =?utf-8?B?UDhoQlVFTTBUdmpxdHl0OHVlOWx3aFVtZXIyTklqelVLUlFJZERRV2RZRFdM?=
 =?utf-8?B?Rk9Ybno1MkFZakJqVjBqU3BMQTl3YktNNm1PdlJTY3p4WHY4TXZvdERnWnVX?=
 =?utf-8?B?YlJWN1RpdWp1L0dkNVkvNlpXNGhSazNVb3BuSi93UWpjNUVVZmpOcWxicnZY?=
 =?utf-8?B?TEEvUHE1TTVlUS9ST1BsbG50c1BzMFNRamo4dDNQUEl6WkpTWmpHakY1UVlI?=
 =?utf-8?B?eHdDZ0tvNGt0dytzTTlKdkVpRmI3YWpacGhCeHNUMkNOZ2dPLzZSdUs5aGNL?=
 =?utf-8?B?SmhjQVE3Z0I2amJTTGhhejBZQy9BeWVZMlFUcXZTTE82dnJiODVIcExReDNV?=
 =?utf-8?B?TXhlbFFxMnJoTEZENTVXeGl4L0NRajRKaDRmd3NhdUcxWlgvcFBBYzdaeFk1?=
 =?utf-8?B?N0VNcTRpa2RocjNYZTZGRWVqRllxU3JSZUlqTVdpYmxEQnE1VEN2ODJGYWF3?=
 =?utf-8?B?c05PenF3VFNVRXhtRExLSS9EZ3ExK3ROMEJUZ3d2L0I2b0hqTGFPcEEzLzdT?=
 =?utf-8?B?ZytZcmNHdVBUTzVaZytZNVF6WUx2R0V5L3JlZWU2Y0d4K0Z4ZTdha2xoVmZN?=
 =?utf-8?B?QlZyM3hXWFlJSXVsK0h1ZHZLKzNZYTBvTDEwbUpLR2NhOGxFc08zQjJSbkJv?=
 =?utf-8?B?ZWRGY080RXNuQWMrWkpjREh5dEVjTE9LN0tIOEJxV01NY2FPcHIxdXliVHBY?=
 =?utf-8?B?YTZKTXR6ZktvV21za1lHczBKUDVKeVNtL2hEWXZHRkdmQ0UzdzlGaUFNalRP?=
 =?utf-8?B?TWdPUHRPN0VVRXdVK25oNjhzY2hDRXV3Y2lScG54NExPZytoSVVCYm5USlJF?=
 =?utf-8?B?VmF2b1ZlOVgyM3pkNFd5SWNLSVN1MnlLYkZ3cUUwWGRLc1hqa3Uya3E0ekw4?=
 =?utf-8?B?Yms2SGRsb2hHTlN4RWIxRVNmWHIrZUZYZVd0VFJyRE5taS9XNFlaNDl6QkZJ?=
 =?utf-8?B?dlZvRGJxa3FtMnFOTFZGUVRXRkY0K1NOQk5iMjdNQzJKc3BFL0t1TmhCOUpu?=
 =?utf-8?B?Qk9YRlUweDdFY0NkQ2NVaXNwMkpUL3U1YnVZSjlYMWd1d3hhMS84blVDWEx3?=
 =?utf-8?B?TElMMWgwS0hHN0hLMktQdnJYRFZGT2RkUEVTMkNWYWZ0Nk9rYlZ2UWROa290?=
 =?utf-8?Q?wP+wnV9Dv0H9zl014V5xmoC4I?=
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id:
 f92aa95c-e5e3-4f88-b28f-08da7fd91f20
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR06MB8325.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Aug 2022 22:46:13.5557 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName:
 zX/P5ElGkszTt8Z/Ije/nY34Nq0Z47gdKtNB6S5dSKonmgAXR4lmQSNaIkO6ao4g
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR06MB8298
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

But again, Microsoft was going to improve Narrator. The NFB asked them 
not to. Pointing out that narrator doesn't have the functionality of 
Jaws only shows that the NFB was successful in getting Microsoft to drop 
their plan to improve Narrator.


On 8/16/22 16:36, Chevelle wrote:
> No matter if you like NFB or not, they were correct in the need to 
> have independent screenreader options.  Hundreds if not thousands of 
> blind people forced to use Windows by their employer would be out of a 
> job if JAWS did not exist.  Narrator still doesn't have anything close 
> to the functionality or scripting capabilities of JAWS or NVDA.
>
>
> On 8/16/2022 5:07 PM, Brian Buhrow wrote:
>>     hello John.  While we'll probably have to agree to disagree, I 
>> believe we're talking past
>> each other.  Our argument was, and is, to encourage Microsoft to 
>> follow a path which would lead
>> to the most choices for the blind Windows user.  If they had pursued 
>> the development of
>> Narrator to the exclusion of other screen reader developers, 
>> something they talked about and
>> which was absolutely within their control, that would not have been 
>> good for the blind
>> population in any way.  The fact that Freedom Scientific benefited 
>> from that argument, both
>> because it was the dominant player in the screen reader space and 
>> because they were used as an
>> example in the argument, was orthogonal to the argument itself.
>>
>>     With respect to VoiceOver, I agree.  For those who use VoiceOver 
>> and like it, that's
>> great.  but I know a number of folks who switched to a Mac and found 
>> they had to switch back to
>> Windows because they couldn't work as efficiently or do as much as 
>> they had been doing under
>> Windows.  And there's the rub; if VoiceOver doesn't work for you on 
>> the Mac, your stuck if you
>> want to use the Mac, unless you're willing to hire a reader to do 
>> your work.  Under Windows,
>> you can use Narrator, Jaws or NVDA; all of them have their issues, 
>> but, between them, you can
>> probably find a way to get what you need done; that's not an option 
>> for a Mac user.
>>
>>     And,while I appreciate that I get VoiceOver included with my 
>> iPhone without having to pay
>> extra for it, I don't think of VoiceOver as a free screen reader.  
>> Apple products are very
>> expensive, relative to the Android or Windows alternatives, even with 
>> the cost of Jaws added to
>> the Windows side, but, of course, there's NVDA now, so I don't have 
>> to include Jaws in my cost
>> comparison.  But really, the problem I have with Apple and Google is 
>> that I am potentially one
>> update away from having an unusable phone or Mac.  That is a very 
>> scary place to be  if you're
>> using their technology to hold a job.  And that is why we argued 
>> against having Narrator become
>> the exclusive screen reader for Windows users.  You have the luxury, 
>> as do I, of having the
>> knowledge and skill to make open source access technology work for 
>> you, allowing you to pursue
>> a successful career.  Not everyone has that option, but we who can 
>> influence such things,
>> should do all we can to pursuade technologists to give non-computer 
>> blind folks as many choices
>> as possible  in their use of access technology.  In my view, and the 
>> view of the NFB, which is
>> where you and I disagree, encouraging Microsoft to develop Narrator 
>> with the possibility of
>> shutting out the third party screen readaers, is not the way to do that.
>> thankfully, they have not done that and we still have choice on the 
>> Windows platform.
>>
>> -Brian
>>
>>
>

