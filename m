Return-Path: <speakup+bounces-866-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 5F42C6366C4
	for <lists+speakup@lfdr.de>; Wed, 23 Nov 2022 18:16:53 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=math.wisc.edu header.i=@math.wisc.edu header.a=rsa-sha256 header.s=selector1 header.b=RP+TLhp2;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id CC760382A20; Wed, 23 Nov 2022 12:16:51 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id A514C382961
	for <lists+speakup@lfdr.de>; Wed, 23 Nov 2022 12:16:51 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id D301D38298D; Wed, 23 Nov 2022 12:16:41 -0500 (EST)
Received: from wmauth2.doit.wisc.edu (wmauth2.doit.wisc.edu [144.92.197.222])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 013F4380A76
	for <speakup@linux-speakup.org>; Wed, 23 Nov 2022 12:16:40 -0500 (EST)
Received: from NAM10-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam10lp2108.outbound.protection.outlook.com [104.47.55.108])
 by smtpauth2.wiscmail.wisc.edu
 (Oracle Communications Messaging Server 8.1.0.16.20220118 64bit (built Jan 18
 2022)) with ESMTPS id <0RLT008RM9BNBP60@smtpauth2.wiscmail.wisc.edu> for
 speakup@linux-speakup.org; Wed, 23 Nov 2022 11:16:36 -0600 (CST)
X-Spam-Report: AuthenticatedSender=yes, SenderIP=[104.47.55.108]
X-Wisc-Env-From-B64: amhlaW1AbWF0aC53aXNjLmVkdQ==
X-Spam-PmxInfo: Server=avs-2, Version=6.4.9.2830568,
 Antispam-Engine: 2.7.2.2107409, Antispam-Data: 2022.11.23.170316,
 AntiVirus-Engine: 5.95.0, AntiVirus-Data: 2022.11.22.5950000,
 SenderIP=[104.47.55.108]
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=B/Mxng6gV6aX+Y+7z/qMWlS5ts0539c7kvR4JVu8xZ02QQbVH40jItJXF+oRCHGicuhNpomOwvbzWkMDFomAiewlwrR3LbEzq3KyEfTwXOmP3tSZcAquXX88r5FsFq6XRUk874ziDyxUjXDCpA0+eJznHn000nG9WD0kPxfevvuo/LHyXXgb3VJoZBFk0rgCx3tmystaWaVGVrJOt2Na+U3eAkO8MHZnuTMscVEzHe6Wb30jWyTB0fwWnFyzPW1DcgE/j1GZART5lV7yfNschgCQITNzrt7moEr4hV7cNcwSmgHC1LJeX2uZ7A+83VpoZA1e6aX0DAsep/9vuwuoBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+ih93g/RGO8GCIatzi1EC4dcpLuJaTavB4pnEenAbBE=;
 b=A/oLB1LP5QnfyF7cmRPqxgGG7TAyOXj3/lE/BjKKDPWyMpUKZemsgFc1nGxwDLJQ8V+g/RAqOGjs9DPzQbETe5tdALcDIS7+lZDuy0cMygNiDlaVPlWvhrexFCyEFAaGVA3ZFyihnGUDOov8I2jVEUE7WH3InGycKtd9BTuy0UekYyf8x8ix/TElr1K52Jg9jeBleuTY3ZPGECdnC0PDhbRgns6kdlKqZ0CDfTvXpWbz5G/O4IWAboLV8FrnWAOMIjDPAACPruQIrWUEzFuziHh8FIfmbNuL1BUiAiG29NGeHVLuHd0Otu2Q6MeM1ERRw/U4zyYEFi83wrFAK83QXA==
ARC-Authentication-results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none header.from=math.wisc.edu;
 dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=math.wisc.edu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+ih93g/RGO8GCIatzi1EC4dcpLuJaTavB4pnEenAbBE=;
 b=RP+TLhp2tr7B++3S8f+54xNDv5V14oNB8n4h6aO/8WpCOA6z9KfoThLCBf/CdpN2zvhDQKb10WUhQ9MJhE33gVX8yGCe2Nutt/6eXe9S9s+Ge2vsDplQ5Zej65Re3Hns1AhonyNeDENMMSBUaGF2/WtIDt9LKKZlFh+u19WWGLU=
Authentication-results: dkim=none (message not signed) header.d=none;dmarc=none
 action=none header.from=math.wisc.edu;
Received: from SJ0PR06MB8325.namprd06.prod.outlook.com (2603:10b6:a03:393::17)
 by MN2PR06MB5936.namprd06.prod.outlook.com (2603:10b6:208:124::31)
 with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384)
 id 15.20.5857.17; Wed, 23 Nov 2022 17:16:33 +0000
Received: from SJ0PR06MB8325.namprd06.prod.outlook.com
 ([fe80::e991:dce9:1f68:fa06]) by SJ0PR06MB8325.namprd06.prod.outlook.com
 ([fe80::e991:dce9:1f68:fa06%8]) with mapi id 15.20.5857.017; Wed,
 23 Nov 2022 17:16:33 +0000
Message-id: <f260c0aa-dddb-e79a-6998-5a9c2dcb1afe@math.wisc.edu>
Date: Wed, 23 Nov 2022 11:16:30 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Subject: Re: Could someone help with bash scripting?
Content-language: en-US
To: Willem van der Walt <wvdwalt@csir.co.za>
Cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <D9069478-2D9A-4DC3-97D7-BB365C7A4222@gena-j.me.uk>
 <97c24e8f-836c-0464-6aa6-09a0a100b06a@csir.co.za>
From: "John G. Heim" <jheim@math.wisc.edu>
In-reply-to: <97c24e8f-836c-0464-6aa6-09a0a100b06a@csir.co.za>
Content-type: text/plain; charset=UTF-8; format=flowed
Content-transfer-encoding: 8bit
X-ClientProxiedBy: CH2PR14CA0059.namprd14.prod.outlook.com
 (2603:10b6:610:56::39) To SJ0PR06MB8325.namprd06.prod.outlook.com
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
X-MS-TrafficTypeDiagnostic: SJ0PR06MB8325:EE_|MN2PR06MB5936:EE_
X-MS-Office365-Filtering-Correlation-Id: 41ae15d7-f33a-4e95-a08c-08dacd767802
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
 XRv6uN7++HUSTmSQr0o+GejOoMctcafvJ5j9kJ945hkjpw9FK260MTnVwxwzKetQr3wiTJRcRIiEKybJfC4ijcFkL1csODUMqc9SUu8KKIrwLUAESgFkWPVmoQRQunKuLjCbXsumeikyjdc3w6tprvwaiiF7PXeX4e0LmhI9z/aaKwqFwRC4k65jcjgRAzDeQqxcaheuKaAD2d/d7oS5JIxFAfdx0n2cAelIpbWeiljWP2goelfgI0Ht4TluqWmFB/4ZCfjzF1bYu5q/S2DL3J9hGXS3Rta6ri9pD3Ox/W+aWi56WnuajerKJEC9BRsLtTxrc45PivDlapVdOhQB5WN9uE8IBCpR23pBIoJk/N9CvN6hYPpe1vcAqfVljifj+h3RwTQrODkiBr9ZaSCQlKoWU1F0rGQMlEJcjTYzUCT0yPCFD5okEYKfNEw2pn3Iu245VT6gydc0lIMsYznVqtq8aZqE4m3hr8bmrQCcPdJlDLSx36prDGK+esVNzWfvh6PZHqN8rBWYFeRSM0u/yVJJge86CtakpoccDuOR76+Id5o/cU+Bl9/5tlQ7g5L7/v3pEGxDwmqYwu9hmoNMagjGOAReuzfheS3sRz/SRdL7XnFw/wxMVbLpIyF+FVSPp8wdTmxSz5MHgsAbh4TU0tdvKzBNuC9qpltSR2YaVQjvad14vLOedL5glCLYkHRaVhOqwAm6meq6zG9uAjvTjYpINsznsZB2IKm97RehLl4=
X-Forefront-Antispam-Report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR06MB8325.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(39860400002)(136003)(376002)(346002)(396003)(366004)(451199015)(66899015)(6486002)(966005)(41320700001)(26005)(31686004)(478600001)(6506007)(6512007)(53546011)(8676002)(2616005)(186003)(786003)(316002)(83380400001)(6916009)(66476007)(66946007)(66556008)(86362001)(38100700002)(2906002)(4326008)(41300700001)(75432002)(5660300002)(31696002)(8936002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
 =?utf-8?B?dXdUVjRpbDNBZW5zNVhFSDhFWjhBUk9hZEhveDFhTi9BeDJvQnRtdGpDMlJG?=
 =?utf-8?B?ZnMvdUZja0dTZ1F6Q3dUU1VQNGN3M2lSSy8wRlpjdksyS01YYjh3TTYwK1Rk?=
 =?utf-8?B?TURaL3NjM3JudU1YUkFHVHVRdGR0aFB0V01nUHkxVVlSakJVVVBDYysyMlNm?=
 =?utf-8?B?Z1V3OEUvNzRGQkNZM2pSOExNV3E4WUd2RnlNU2wwRDhHWlR6U1BmMnZsWkhK?=
 =?utf-8?B?eHRpeEdiRmE5eEd2Vmg2VHJnTmJrQUNhaU9uSUViSWhrT1FMMFEyMzVIcTlP?=
 =?utf-8?B?NUduaHg1L2ExNlhNNXhkTENSRk1acHhiWnU4UE15RGhvSTVydVlHVHBKb2J2?=
 =?utf-8?B?ODZpUDlXYWdvaDRYY1hnb3lKMVFmMHUwdWIranFKd29uS0xNZWtHU0g4SG5j?=
 =?utf-8?B?aEhGYVUvYnJIRWV3bDg3cWFtZ3ZpUy8wWUdSLzZKWDJXSGs1RUxwdThYdSs4?=
 =?utf-8?B?ZGxYdjFuNXN0SEJncWxVU0hUTmQ3U2lxaVFwdzNOYit5TzBycm9lUURKNmpP?=
 =?utf-8?B?UlYwRGZVS2dxNTVKWE1vb01ic2ZYYnN5WnRGT1lwWG9nMWltZTJXNVJHSmNN?=
 =?utf-8?B?c05vSE1yMUFZVmZnMndqcjhyN1BSMlY1OGlyYlRjU01sVnpTMm1sTTQ3QXd4?=
 =?utf-8?B?bHNacENsMi94cDZyZURpd2ZoOUNwUFNteUZscThoMzJSN0cyS1ZqOGJsMWZv?=
 =?utf-8?B?WkJJYW5QY0x4MzhXUlR6akRUSGNmZEdoZDJTV29VeEdkYkNyb2tkdTd3KzIz?=
 =?utf-8?B?S0Q0dDdwMUk0TTErSExBbjhiS0dKdlNNMnpncjhiQTF6VWl4SHU0QkJUdWRD?=
 =?utf-8?B?UWgrU1lDU2E0TVdwbXZkSVFFd29FU2oxSnpiRVBWUDd4RWVYMlAzdjV3NUZv?=
 =?utf-8?B?VTRBVGpqWmlDalFsYXhJc1lDL0M5R0xjQjN5eW0rTkNUWnZCZFl3cHNUR1BO?=
 =?utf-8?B?aHUvekp0THg1YXEwVjZneER5NVFabFQwZjBpRmovVWZYRmpVaUEvYmdXdjBV?=
 =?utf-8?B?amg2WkNJbzgvM3h1TjVQbkZtc0MxdnR0MldNYXNnSUJ1aFlScHphMW1xTkhF?=
 =?utf-8?B?WmNqQVo4cGNRcXUrbXVCakRGSDhpa0MvZVlBL3RIV0FiUEpwTlJRaHZoaHdT?=
 =?utf-8?B?QmFvYiswNzlHc05JbWlmUkNGMWdtNHBNQ09heXVvOC9mOWtXSm0rTU9tbVNu?=
 =?utf-8?B?aENCblo3ZGg1eFdwUGo4WjN4K3QyTXM1eGNiY0FrY1k4ckw5aEEyaE81a1Rn?=
 =?utf-8?B?bGlXY3NmTFVpVGk3S2x6dEtxSlY1SFRUUTExaTJCRzF3WjFmaGFxQlNiZUN1?=
 =?utf-8?B?amFXUXV2R1duY1FMRU5mWFRON2tGYmpLdnExcGVjZjVxMjhQNnR6Mk8rdHNW?=
 =?utf-8?B?Rks5VUZFZTl4UklKR0JMem41Y0VMaHBrNkVuQitVaGNNQmVFSEUxeTNHNi91?=
 =?utf-8?B?YzJ2SFdJbXk1aUJ0U1c1bkZjays3QlFXaHRxM3owcDRDVWpUTGRsTFdXVjdD?=
 =?utf-8?B?WXdvODYzTmNHUmNJVnJ6RmV6cHdDbjNvWGZ4eTNvcE1ZNmt6U0RXelU3T0hQ?=
 =?utf-8?B?YWh3cUF6eEYvUzkwb0dtOW16WElhajVGRTl4TWJPNW5mUFArTTVJT3ZjRURD?=
 =?utf-8?B?Mlg2MmkwZDlwdjU4dXdBLzVPT2c3NDFOaDhOdDVEaW1CaENNUmNoclpSSmlt?=
 =?utf-8?B?UHhFYkZIWStYUUszcElIMjE5UG16YUgwU1VKSlJ1eWpXd3lCMDBqL3JBUnRQ?=
 =?utf-8?B?cmVqVHphNWt0V2J2SFN0ZVFhSmFTRkU3V1RvdWVqa3JaQ2dOVThnUm9IQitR?=
 =?utf-8?B?Z2NMcnhJamhnVjJtOHBIRGJvRmFuUHUzSlQ0MktOZkl2WC9xd00wQ3RLVEZT?=
 =?utf-8?B?bHdnSmVVUFRQditjMjRDWW8raG80Wi9LN1k1NjdNaHdRVlgveUVEQ1NoaGE4?=
 =?utf-8?B?RXRDY3ZKeXJJRENKNGo2YnNDSnZQMlBoYkdlNWppRDdZZ0pkZXlHU3RxMUE5?=
 =?utf-8?B?YmpjUGF5S0g5N2pZRklFOHpRbTRFQkJTaVRVMnU2b256U1R6ZVpUUWQrYURa?=
 =?utf-8?B?SUsrR1RaUnNQeFh0WVdHQjB5dkVVMDR1OTgrTW9yU2ZuWUFlN2dDOHRlYVA0?=
 =?utf-8?Q?ot8cFt5Ca6rLK8vR2XvBEcXbR?=
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id:
 41ae15d7-f33a-4e95-a08c-08dacd767802
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR06MB8325.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Nov 2022 17:16:33.3069 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName:
 XYFl1P9qOTO/jxNer4wSI0KsH66QO+PDD53gnR5TfKDH+G/k7ZEyfJ02aFj8L8mt
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR06MB5936
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Yeah, I used to do a lot of this kind of programming like 20 years ago. 
It used to be fairly common for devices like medical scanners and 
meteorological data collection instruments to be controlled via a serial 
port. I always used ckermit and expect. Just to be sure, I did an apt 
search and I see there is still a ckermit package in Ubuntu but there is 
also something called gkermit. And I just used expect to automate 
connecting to a VPN. So I second the recommendation of those 2 tools.


On 11/23/22 03:25, Willem van der Walt wrote:
> Hi,
> kermit I think is the easiest.
> You might also look at using expect.
> Just do a man expect for details.
> HTH, Willem
>
>
> On Tue, 22 Nov 2022, Georgina Joyce wrote:
>
>> [You don't often get email from gena@gena-j.me.uk. Learn why this is 
>> important at https://aka.ms/LearnAboutSenderIdentification ]
>>
>> [The e-mail server of the sender could not be verified (SPF Record)]
>>
>> Hello All,
>>
>> I would like to write a bash script to control a Yaesu FT-991A 
>> transceiver. I have been using rigctl a part of the hamlib libraries. 
>> However, I find the command structure difficult and doesn't contain 
>> some of the daily commands like nudging the frequency up in Kilohertz 
>> etc.
>>
>> I have looked and researched  that I can change the tty device baud 
>> rate by using stty with the -speed switch but can't really get my 
>> head around the stty syntax.
>>
>> I see from a unix stack exchange listing that I can crudely use echo 
>> and cat to the device using 2 console windows. The answer on Stack 
>> Exchange suggests using screen. I recall some members here were a fan 
>> of screen but I have never used it myself.
>>
>> According to the CAT reference manual. If I send "FA145500000;" as a 
>> set command The transceiver will respond with the same as a read 
>> command. So I want to clean up the responses and put them in human 
>> form. You might note that the radio deals with integers in this case. 
>> But us humans like decimals, so there is some cleaning up the output. 
>> I think I might be able to do that. But it is this issue of sending 
>> commands to the tty device and reading the responses that I haven't a 
>> clue.
>>
>> Anyone can offer suggestions?
>>
>> Thanks,
>>
>> Georgina
>>
>>
>> Call: M0EBP
>> DMR ID: 2346259
>> Allstar: 52178
>> Locater: IO83PS
>>
>>
>>
>>
>

