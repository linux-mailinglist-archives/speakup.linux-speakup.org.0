Return-Path: <speakup+bounces-301-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 65EBB410C22
	for <lists+speakup@lfdr.de>; Sun, 19 Sep 2021 17:19:45 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=uwprod.onmicrosoft.com header.i=@uwprod.onmicrosoft.com header.a=rsa-sha256 header.s=selector2-uwprod-onmicrosoft-com header.b=lrmYladH;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id D984B3811DB; Sun, 19 Sep 2021 11:19:44 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id C1D1F380E1D
	for <lists+speakup@lfdr.de>; Sun, 19 Sep 2021 11:19:44 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 9ACB1380C5A; Sun, 19 Sep 2021 11:19:38 -0400 (EDT)
Received: from wmauth1.doit.wisc.edu (wmauth1.doit.wisc.edu [144.92.197.141])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 321AA380996
	for <speakup@linux-speakup.org>; Sun, 19 Sep 2021 11:19:38 -0400 (EDT)
Received: from NAM12-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam12lp2171.outbound.protection.outlook.com [104.47.59.171])
 by smtpauth1.wiscmail.wisc.edu
 (Oracle Communications Messaging Server 8.1.0.8.20210105 64bit (built Jan  5
 2021)) with ESMTPS id <0QZO00JKYT8NK710@smtpauth1.wiscmail.wisc.edu> for
 speakup@linux-speakup.org; Sun, 19 Sep 2021 10:19:36 -0500 (CDT)
X-Spam-Report: AuthenticatedSender=yes, SenderIP=[104.47.59.171]
X-Wisc-Env-From-B64: amhlaW1AbWF0aC53aXNjLmVkdQ==
X-Spam-PmxInfo: Server=avs-1, Version=6.4.9.2830568,
 Antispam-Engine: 2.7.2.2107409, Antispam-Data: 2021.9.19.150615,
 AntiVirus-Engine: 5.84.0, AntiVirus-Data: 2021.8.17.5840000,
 SenderIP=[104.47.59.171]
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cdN3I7B+avsMAFLR8y5JlMbWpsvK2JXh0gTx4+HyL/sX9LfS8WlV1rPgqvCPqVGQyV8TLpPZ+zq30EJxRCwop2KrlvnbHkYyYvYaQVpdN8218ciGXQ17Ia0V5lxxuqmr+PIWnsTwYywDbIxBP9c+vWFN77rJjjmjTgd246bEhRj6WwHCpL3j4HMooaO3HbRVQcLAdIzhrw8zOGXFvYWWHC6kEilQC+45HAPVNaQnFRsOcq2tXHtBn5IoFiipe+JQaYTnjw7zkBZaDyV/IcD7z4OVrg+ASlHJ8QeJp+wsCZRCi6y608zxqM/KNxnPMFP5lAkIy0VEWaNmKoeyhPDTZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=79p40KCLqjfocxyxh5D2cRR2z0uax7Iixlv2/mTEBL8=;
 b=ikTMuQU4l/itCdmLxyW8NrVATquq2XA401uhuleppQQCD/90upq7QKJdCMy60SZr6z26DskNlqMIVIVKrTxu4aN8DsPeUJ1f5QtdQUMfAOfHxaG3ve7VPx+S+1FT4DGYYDV7Y0XldpIPIyas6rFYQX9ox/R00i4Q2Mc/9Ly4aI797Qxgy8hjeZbITF6Oi0BikAfO9N9Tirznv4IH+iarlsjJsnkXg26S3vKisAzFbFZW1gRnYj+dZAP+WpHvLG+1ibELGNufIxdnq4tBaRkvZt8irDupF0UQ3SMQurVAf+xuEalleQtCJ0pjdvuNzzqRP131oVIDUP4D+4Sxk7XxTg==
ARC-Authentication-results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none header.from=math.wisc.edu;
 dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=uwprod.onmicrosoft.com;
 s=selector2-uwprod-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=79p40KCLqjfocxyxh5D2cRR2z0uax7Iixlv2/mTEBL8=;
 b=lrmYladHGSpBNwhpFB50VJvomNYAbxVLhtx8JULl1tJA95uj1k0lZCgXfqa3rDKGvy2YoNu6CxTLZhZ04/UabDaxi25vBZcMHCNs+pavu2fMEc5jnL81CvKo/B57Apbqqw8iYcSQCM4B9FS7NhGf4u1gOJwi6PmNvoRuF5SWvHU=
Received: from SN6PR06MB4991.namprd06.prod.outlook.com (2603:10b6:805:c1::12)
 by SN6PR06MB3871.namprd06.prod.outlook.com (2603:10b6:805:21::13)
 with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384)
 id 15.20.4523.16; Sun, 19 Sep 2021 15:19:34 +0000
Received: from SN6PR06MB4991.namprd06.prod.outlook.com
 ([fe80::4c4d:3ec0:dcd5:d586]) by SN6PR06MB4991.namprd06.prod.outlook.com
 ([fe80::4c4d:3ec0:dcd5:d586%7]) with mapi id 15.20.4523.018; Sun,
 19 Sep 2021 15:19:34 +0000
Subject: Philosophical questions (was: Broken espeakup)
To: Kirk Reiser <kirk@reisers.ca>, Didier Spaier <didier@slint.fr>
Cc: speakup@linux-speakup.org
References: <74614290-2cb8-c5a7-91e9-e639a673464a@reisers.ca>
 <YUXlLephhiYuV4UA@rednote.net>
 <50b02165-17e9-2561-ec8-6c35cba66944@reisers.ca>
 <YUYXLHoSvcMnUYzW@rednote.net>
 <dd651c4c-1178-8d83-125d-23ad3d2cef88@reisers.ca>
 <14c0aaef-dea9-7b7c-77e3-a1a4edba4c31@slint.fr>
 <6b1e6e66-d12a-3d9e-a3e5-e8d0499177d9@reisers.ca>
From: "John G. Heim" <jheim@math.wisc.edu>
Organization: University Of Wisconsin-Madison
Message-id: <3e2a47a6-4d88-d8ff-765a-857292997e06@math.wisc.edu>
Date: Sun, 19 Sep 2021 10:19:31 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
In-reply-to: <6b1e6e66-d12a-3d9e-a3e5-e8d0499177d9@reisers.ca>
Content-type: text/plain; charset=utf-8; format=flowed
Content-language: en-US
Content-transfer-encoding: 8bit
X-ClientProxiedBy: CH0PR04CA0001.namprd04.prod.outlook.com
 (2603:10b6:610:76::6) To SN6PR06MB4991.namprd06.prod.outlook.com
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
 by CH0PR04CA0001.namprd04.prod.outlook.com (2603:10b6:610:76::6)
 with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384)
 id 15.20.4523.14 via Frontend Transport; Sun, 19 Sep 2021 15:19:33 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 291bdbfb-8077-43fb-11c6-08d97b80e2d7
X-MS-TrafficTypeDiagnostic: SN6PR06MB3871:
X-Microsoft-Antispam-PRVS:
 <SN6PR06MB3871A59BB2D61E4A3E30D050F3DF9@SN6PR06MB3871.namprd06.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:849;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
 9ZiY+QAhgzJmKEqkzi16ntuoTvQmYf47CV5ldvsYDiFl0/Hq7Crf9wiK/v5ggWCFy1TNwBP6tDKgCT3tefJ0nSBtdQ/LP6T5QZaPYCC5RqgTycPtK6X9LWpie5FPg+y7BsexmSjf8k+lQ/QcosuQSJpJgTJSFAajnCUI9krzqiGVGEi9MaQkthaB3OLJjc03EURDue7FvS4wjmJiF1780U2ZtOinicJMCIK33PfhytzL0Aov/JuYeiiRE4WCxO21zMKWnTCIWWwfGskDgs45MR6X8y117Wn5ivw7gbyAwlviwH6fIsi1R9DSGgLeaNAzJi1cjnXjdS1Ip9P25TbHP5WBVi95vezHd6oT92ss+8jB5VbjNMplC1Qq36EfMk9oaY3N/lA5buJIhrr49wxcftf1UcNxGUr5O0h2IVtqUO70JrTk1iCrCaT1iIUBbNkZpQfn585k11DvxKkaUno0Sfk9jOO9eVcNkzwIhJXk1dSLxpusPpnHpx3YukhjrmiwKbl5lv44tygCFT6V0sqiN9owY9Ig3EpaSxdiYeBAQi3ZZc3oj81kMBw5lIjO5w0XzCimaUvIqUDkqJJjmFOcrH9e+TpPzTl3fXrIknIxh3P8+EciGc9h5jJu/i7rPcrcEGYdoVEUxsfOkQbX4nzlzWyfATkVjw8UnTpM6BRgofxAWUkFecGRuD1kP+WWPRzTjlOTgCOowgxoDawxYynxGfgZKbhKvlBstqpWBEdu4cax8zm0oYGRCKnNoHWnp2XcEMmIcmZfczTFqTH46CBuIYHziie0lrPl+Mu6qGj1A4o=
X-Forefront-Antispam-Report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SN6PR06MB4991.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(346002)(136003)(396003)(376002)(366004)(39860400002)(8676002)(26005)(316002)(31686004)(31696002)(16576012)(4326008)(8936002)(53546011)(36916002)(5660300002)(40140700001)(86362001)(478600001)(2906002)(956004)(75432002)(66574015)(6486002)(186003)(2616005)(66556008)(66476007)(110136005)(83380400001)(66946007)(38100700002)(239114006)(31884003)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
 =?utf-8?B?eEkxazMyblIwd0ZkNDM4VVF4Qy9Fb25pYmVxZEJOa2thWmwzbjkwSHIrL1VD?=
 =?utf-8?B?K2lTNmFCRmVjbThQMHBSdDBMYmpOem9nT1Fyd05tZWQ3QjFvTVFRTDhwamxq?=
 =?utf-8?B?YUpRVnRpNC8vZEhlWFpvdmJRaGF0VkxYTFJ6eUNoWExFa0JzeVQ4TGVZVFdY?=
 =?utf-8?B?Rit3MUtRVVl4QXVPUENnbkVGTzFyZmdKOGtwL2lTTGcvbkc2ZWdtcWdNK1lj?=
 =?utf-8?B?VEpWbGdOVzBCbFJDRHFrZkNiQmJROW54L0xBTTlrVE9OV0s3NkpNMjBQZkxy?=
 =?utf-8?B?S1JQWXRDaGwzQVQvTm5WYStUNENpbjNnaHB6MDlsR2hDUzlFTkFTREVLN0or?=
 =?utf-8?B?elJPOS96Q01ML3RMUkdpQWdjTDNmaDhXSytkekxLNWwyWmxqeGlvY0ZzUUQv?=
 =?utf-8?B?YzIxRkt4OEEyZ093VFhwU3ZIODJuQWxzQ1RWbmtGSlVNakdJVUwzRC9HMVN2?=
 =?utf-8?B?dzF2UzFUZ1F4dUcvZVBtYjZhcGV1cEVtTFY0emk5eS9WS3d3OElhc3NSbVR5?=
 =?utf-8?B?QlU4ZnhNZVk0U2RDRktGbUk0SDkxYkc1VDJrdC9nMGNpdE1KaXo1YW1PclJo?=
 =?utf-8?B?ZDZ6cGRTVXpYN1pDVERrUXNTVklLM1hsWERoaVBYeU5iMFU3TFF1VG1kZmFX?=
 =?utf-8?B?d0kyVjlONU1Jc2p6aFFiZkhwMlFlR2x6NHZ2UTBsSDU5ZU1vMTEwaS9adEtQ?=
 =?utf-8?B?SFZjNGxaM3ZlNlM4aDNTbndGUFllY3pyQTJPWVdvSk5pRXNlS1JWNUdlZzJE?=
 =?utf-8?B?Um5xVzBNemJEdkJteFVKc3NtTy94emtTR253TjA0QmhQYnlzdnViME5yMDgw?=
 =?utf-8?B?WnFtalcxYXVZbklGcExPL0Y1cThQVFVtVHhxb2RnMDFRYThqY1lHdFU5b21n?=
 =?utf-8?B?cVpoRFZCWlZVNWt2bldockhlYXRBamp5U0p1cld4cjNpR2hQanhsVHZMQm9u?=
 =?utf-8?B?bllldTcwUlhMbS9kM0lvSERBUGFRTVlydytyemlLREpNWS8wVVY2R1Juc0FI?=
 =?utf-8?B?QTFpMmJZV3Q0R0dYaWpwNHBmNFdkOEtpeEN3bmdlNC9TRk96ZGx4MldoaEg4?=
 =?utf-8?B?NnIxOVNVbW1RTjRYUWNYSHNqUVNRMlVGeG5OYWtmNW54QTBoTy81SGdYSlM1?=
 =?utf-8?B?OVBUK1QwU1ZDaGZPS1o0ZnJVbEptSlN0UHpmTGpOOGdJRlU0MUIwUGRvVVFn?=
 =?utf-8?B?VEdRS081S2k3Y0g0cWtXTElEcFloRlEwNlV0VitMV1NlVVNBS2FyV2VyelZC?=
 =?utf-8?B?VW1NVnh0L3J1aG1ycVVycUZQUldwMFNLeVF4YldIc2o5bjcxTnY4MTQ5Ym5B?=
 =?utf-8?B?Q2ZqUjU0QWdFUmYwTUxCZW5yTEpRQnA0OERxc2ZDMXJ3NEQwTWNaa3hBWVdt?=
 =?utf-8?B?dTZSL21YYlhlaTBGNlFtZlcxZ2NyU05hZlNFbzF5ZmpMK0xzbmErYVBEZTFF?=
 =?utf-8?B?RkY4WGc5NkVkVVpsOTNoM2FaclVsS1N3QmxXblE2cVVCZU1lTjVvbFBhVG5r?=
 =?utf-8?B?b0RNL2NzZUtFdm1BazBidzNpRTdKWFdEZWV2elZaamhDR2hFTGx4Lys0TFQw?=
 =?utf-8?B?ZXNpZi80a0NrTGNScDhQNCt6WDFhUjNiWUtvMkxFa2g0RnJ4VHQrY09hcGlT?=
 =?utf-8?B?aGo3aXYzdmFYN1l4QjVwZS9OR3hMbnl0NStPUFJOREUxREVXbEJPQmNzd1Ft?=
 =?utf-8?B?Nks0UW1XM1dwemxqT2xsSVA5Q1hhYjZCZTJDQkpCenZFZlU4TFl4WXZJejY3?=
 =?utf-8?Q?bQFMfDL7VJaNNwsowXkV5Tc4bNdRFuI0eC1ECKw?=
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id:
 291bdbfb-8077-43fb-11c6-08d97b80e2d7
X-MS-Exchange-CrossTenant-AuthSource: SN6PR06MB4991.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Sep 2021 15:19:34.3250 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName:
 dp75fMKTl7Fc6jebsbEPCSwEcamsHZxhv7mjxTsGHBPKsahixfNywtfICJdDuaqm
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR06MB3871
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

I get this thing about speakup belonging in user space practically every 
time I discuss it outside this list. Even with other blind people. I'm 
like, okay, if you can tell me how I can get speech during poot, I'm 
willing to listen. Or are you telling me that as a system admin, I don't 
need access to boot messages? Lets disable everybody's video during boot 
and see how they like it.

I think the question of whether it's better to work on a custom distro 
for the blind or on fixing mainstream distros is a tough call. The 
problem is clearly that a lot of custom distros for the blind have 
disappeared once the original developer lost interest. But while they 
last, they are probably doing some good. I do think though that on the 
balance, it is better to work on fixing mainstream distros. You can have 
a greater, longer lasting impact that way.

On 9/19/21 9:09 AM, Kirk Reiser wrote:
> Hello Didier: Thank you for the rc script. That's an impressive shell
> script. 'grin'
> 
> You are of course correct that there is no mention of systemd in the
> espeakup source code. My comment was in reference to the systemd
> service provided in the espeakup repository. I think I was just
> surprised by it more than anything.
> 
> Still, as far as I can tell espeakup indebian sid appears to be broken
> with some recent upgrades and it seems so are some of the other
> distros. There is probably a good chance that how to handle the
> stopping and starting of speakup has been dicussed on other mailing
> lists I'm not a member of. I am only on two lists, this one and the
> blvuug list which is fairly new. If there has been discussion on some
> other accessibility lists I would appreciate it if someone would give
> me/us a synopsis of those discussions and their
> recommendations/decisions.
> 
> It also seems to me that we have two different situations wrt distros,
> general communities like debian, ubuntu, arch etc and those that are
> specially put together for the blind community like debuan, slint and
> others I don't remember there names of anymore. I'd kind of like to
> know what people think of those situations is it better to be separate
> or part of the whole? The inclusion of pulseaudio for example in
> packages could make a difference those theose who want it and those
> who don't. This is of course an issue that doesn't just have merit to
> the accessibility community of speakup. Huh, does anyone use
> pcaudiolib other than espeak, just wondering.
> 
> The whole question of whether a package should run as root or a
> regular user is another interesting question. I don't think that
> espeakup would have broken if some group hadn't decided that one way
> was better than an other for everybody. Once again personally I like
> the idea of running as an individual user but I also want access to
> devices from boot-up on and not loading accessibility until a user
> logs in is a non-starter there imo.
> 
> Anyway I seem to be ranting, sorry about that.
> 
> Didier, does slint have a bootable image for the RaspBerry Pi 4B?
> Espeakup on raspbian and debian is fucked in completely different ways
> on that platform.
> 
>    Kirk
> 
> 
> On Sun, 19 Sep 2021, Didier Spaier wrote:
> 
>> Hi Kirk,
>>
>> answering inline.
>>
>> Le 18/09/2021 à 21:26, Kirk Reiser a écrit :
>>> Huh, are you running arch on that box as well? I am wondering if
>>> speakup is even loaded. I noticed in the espeakup build systemd
>>> services that it loads speakup_soft when the systemd service is
>>> started.
>>>
>>> I'm not crazy about that being the way to load speakup particularly
>>> but I'm not that familiar with various distros way of doing things but
>>> it appears the espeakup maintainers figure everyone is running
>>> systemd.
>>
>> To be clear you mean the packagers of most distributions right? there 
>> is no
>> mention of systemd in the source code, of course.
>>
>> As a counter example the daemon manager for Slint is attached.
>>
>>> That's one of the reasons I mentioned getting folks opinions in my
>>> last message to you. For people that don't run systemd it will
>>> certainly break things.
>>
>> Cheers,
>> Didier
>>

-- 
###
John G. Heim, 608-263-4189, jheim@math.wisc.edu

