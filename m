Return-Path: <speakup+bounces-564-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id B70C4596269
	for <lists+speakup@lfdr.de>; Tue, 16 Aug 2022 20:27:02 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=uwprod.onmicrosoft.com header.i=@uwprod.onmicrosoft.com header.a=rsa-sha256 header.s=selector2-uwprod-onmicrosoft-com header.b=gB1+Jq2v;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 2FFD638480E; Tue, 16 Aug 2022 14:27:02 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 110753847ED
	for <lists+speakup@lfdr.de>; Tue, 16 Aug 2022 14:27:02 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 232CB3847D7; Tue, 16 Aug 2022 14:26:56 -0400 (EDT)
Received: from wmauth1.doit.wisc.edu (wmauth1.doit.wisc.edu [144.92.197.141])
	by befuddled.reisers.ca (Postfix) with ESMTPS id BE01B3847CA
	for <speakup@linux-speakup.org>; Tue, 16 Aug 2022 14:26:55 -0400 (EDT)
Received: from NAM11-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam11lp2169.outbound.protection.outlook.com [104.47.58.169])
 by smtpauth1.wiscmail.wisc.edu
 (Oracle Communications Messaging Server 8.1.0.16.20220118 64bit (built Jan 18
 2022)) with ESMTPS id <0RGQ002DG0KUOC10@smtpauth1.wiscmail.wisc.edu> for
 speakup@linux-speakup.org; Tue, 16 Aug 2022 13:26:55 -0500 (CDT)
X-Spam-Report: AuthenticatedSender=yes, SenderIP=[104.47.58.169]
X-Wisc-Env-From-B64: amhlaW1AbWF0aC53aXNjLmVkdQ==
X-Spam-PmxInfo: Server=avs-1, Version=6.4.9.2830568,
 Antispam-Engine: 2.7.2.2107409, Antispam-Data: 2022.8.16.181519,
 AntiVirus-Engine: 5.92.0, AntiVirus-Data: 2022.8.16.5920000,
 SenderIP=[104.47.58.169]
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZGtLy9GJIr5dD97517f8QRQ93pGJvqGJn3bYa88Qq2e71Uza/qA+EDcWPfvgAEUHmY/BSufrauhEXStDM/pBWzI3bHenYOeO9PM35WT9ZE2RzRHJqc2iFvJFVErUjRYLOcSVuq7yQiZBTjEN6rs/cPapbIkfs3ex148PPIaSQA63M34vSWGC6FzOExjJUeT2IXdX1bH9QYkKsCs0Ace6ILRLhrR4EoCYGsPPdAr8JZmLp15OnnJ4RByXb6LXuPAl4JmvMMib4CmpXAJXMKsTx021ZUE+5kK+HBd1OaTVb0hIW5ArDtf7Alx7n+4oxcDJF8nxWGUgaKhYUJudiaDhmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/7ETFAmOm8LA7Cly+dFfKpy9ifTnOK6kDf61qTGJ94o=;
 b=i25VaYGHxjhVX5guBnpU0TS3HeMNL/L/8+CLWs2QRbUeb7bVheIz3FQuDnLiIELwkflycps9eahx1MB9gVN5w9Nq/X4BmbN1vIgTKkQMkRaUkOdvRr3f5mjpW4C/c6+JSIhYOPX+S8iZMls6TJaD2tHjs9M8m7iUhl0f8SY2+1NIJq5OXvgyrvckUmN7PQMJUtZpddT/VZgD+BSM+QY4sfNKM49uFaMocto0TPnzD+0Y6SXSkTWcV/DiAjBT17sCYWmKja1GIxDoT7Uwqngpv3a1XrxR7upOVs8b6q/WkutbN1UBT9avyZSEhJO97TR5bR3x9/RdV30xUvvyEfgwOw==
ARC-Authentication-results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none header.from=math.wisc.edu;
 dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=uwprod.onmicrosoft.com;
 s=selector2-uwprod-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/7ETFAmOm8LA7Cly+dFfKpy9ifTnOK6kDf61qTGJ94o=;
 b=gB1+Jq2vWKAxKbkRSzyyMk+pxXKhi+iizscVOMn1qXMFcpF4JwS63FFqeHv8rehEY78Tl3iYvVTN/lMuOy6N7CGnc6jhnvpgbHSp6IG+Bftcwbl54iihc9xHfHuLUJ4A78AQgMY5kSs9Xgs1bByeCaXIVelIpnqOudcTqup8DNw=
Authentication-results: dkim=none (message not signed) header.d=none;dmarc=none
 action=none header.from=math.wisc.edu;
Received: from SJ0PR06MB8325.namprd06.prod.outlook.com (2603:10b6:a03:393::17)
 by SN6PR06MB4992.namprd06.prod.outlook.com (2603:10b6:805:bd::10)
 with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384)
 id 15.20.5525.10; Tue, 16 Aug 2022 18:26:52 +0000
Received: from SJ0PR06MB8325.namprd06.prod.outlook.com
 ([fe80::da3:ad93:7ee6:7c17]) by SJ0PR06MB8325.namprd06.prod.outlook.com
 ([fe80::da3:ad93:7ee6:7c17%6]) with mapi id 15.20.5504.028; Tue,
 16 Aug 2022 18:26:52 +0000
Message-id: <62c8f9a5-aeec-58a5-8c5b-59734dab334e@math.wisc.edu>
Date: Tue, 16 Aug 2022 13:26:48 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: "Accessibility in Fedora Workstation" (fwd)
Content-language: en-US
To: K0LNY_Glenn <glenn@ervin.email>, Butch Bussen <butchb@shellworld.net>,
 Karen Lewellen <klewellen@shellworld.net>, "John G. Heim" <jheim@wisc.edu>
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
 <e3c7521b-cd73-38d7-0e9a-0e7a956e0f47@wisc.edu>
 <04a701d8b196$0d63e190$80ffa8c0@Win7VM>
From: "John G. Heim" <jheim@math.wisc.edu>
In-reply-to: <04a701d8b196$0d63e190$80ffa8c0@Win7VM>
Content-type: text/plain; charset=UTF-8; format=flowed
Content-transfer-encoding: 8bit
X-ClientProxiedBy: BN8PR03CA0014.namprd03.prod.outlook.com
 (2603:10b6:408:94::27) To SJ0PR06MB8325.namprd06.prod.outlook.com
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
X-MS-Office365-Filtering-Correlation-Id: 7ac3260a-2b55-4f7a-e085-08da7fb4e417
X-MS-TrafficTypeDiagnostic: SN6PR06MB4992:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
 SN24vV7KXW60O7pAwKEUHi+lltSk7F9ntctYUjms/+qa2VjgEJbdYNqjri3ahsp7p81r6iw9/mC0san4mtU64f115xaIVmh386YOsl5wC96qFwVNlxjBnpJ7ng7ssokKAXgtl6QwHAn0+30PvKOuBvxHR3c7O64DrJqBMYmxuCC0HUQ9bUc8Sea9WMVRumW/2tkEhotcdliw0PSTBFvR5ldy1JOvQfIC9+UjAGMEJNgKwEaBtZ8+6lYqDtQShGYnlEz3BTUJ2Fxl/0o/G733Y/PstHRKXhqx2ypzjbttT+L06KxgswnHO0s8HqiNMkLR8eT15s1RvV4cxbhqDRHrU6ookMhBUBtys5jvkimqnXPDFeEuvVRytafHU44U6EaO/O+b0xHNFugeR2Dfo9qYIx7Ryhe4OoK0xmwLsUF3Lm0Pi+n+CJ9VQ6M/H00qO1mej228on0xFL3S/9aIa27UrJ4mV6CZG8rcB3aUtLScVUJcphSwvIhX5Kf7hm3aKI4VUqXiM668fZ3cD5eyxLcN/jSpTscD6fAvO7Kcp5IB3Ga9kN1GD1/bNxvg/RxlsdufWleAhKd/1XSs3eby/ygLL22wHiAkjrrRTNSYuyy1VF3aVKxP1+fUqroSdmZePpFcU+BYC6XbsnPr4x3e74nzV6iJedCZbyc1EV3j+XoufP6B07HEI5hFhXdFlh2JO+zmFAncIcQbGXzyof/MJo+zk95P6oMkrMa+92RyEkYB1hj1vCb2A2ShRPWcfv8z0j34fReratORZkwcjRrN3GPedgQ+vRfdjXo+QK9n9mZxA/h9phZjTmvJc+3F2XPJBbl+appCJbiw0IDYtaRzgPsVEaKJBvkQYVkKtU8ke9ohnqk=
X-Forefront-Antispam-Report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR06MB8325.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(396003)(346002)(376002)(136003)(366004)(39860400002)(30864003)(83380400001)(66574015)(186003)(8936002)(66476007)(8676002)(38100700002)(66946007)(786003)(66556008)(316002)(5660300002)(75432002)(2906002)(6512007)(31696002)(6666004)(6506007)(2616005)(4326008)(53546011)(26005)(41300700001)(110136005)(31686004)(86362001)(6486002)(478600001)(45080400002)(41320700001)(2004002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
 =?utf-8?B?aTgyVXZySXd5Ty9HWkowSU9FUGFMbS9YSXFxaGJWTGtZRDJJeHFncEJ4ZUpi?=
 =?utf-8?B?RytxUDdMS1FpS1puckdiZUppYnZQUlhXNElNWXo2UkhzVHJLZGVpVGRwR3VY?=
 =?utf-8?B?bWtvOHhaeE9wOGVHbFNjd3BKbm9tRWo1NDRvS21ZTkwyQ0Y2dEhuVWRCWjlS?=
 =?utf-8?B?K1pSengzSzg2eXNZbExYQjcycjFBdHd5WGJWQ0NOam1PR0NSdjJ1NWNUcjBx?=
 =?utf-8?B?VlNXVXRnUzNxTnlWWktMajBRb2lEaklkbVFkQjRSNEJ4MUVQalA2VU5jZlZJ?=
 =?utf-8?B?SUFHaUdHbmpzRU5XY3pDcHhoQWFyZHZER3FYN3NmeVU3WVlkaDNyeWRtS045?=
 =?utf-8?B?OWNEUGNFVFRJS1p0SHJ3N1dBdXh4UjR0TzBvZEExVFVsTCtNWWpHOVpYcUpS?=
 =?utf-8?B?V0xPT2lFRUlZaTRDS3lqejZ0dEJta0loektHc2Z6WTIyaTRiMVJ5Z3RXalZL?=
 =?utf-8?B?bEZFNWtWS0pEcUlIcVVTTnAzVzZVaWpzNXNPcnVOK0kxTjVzNmlRWDNqdlYy?=
 =?utf-8?B?aXZWQ29VOW5WeUp1LzV6YkVwdHY4aWNoZmhEbjQrNnRwbjFNQ1BXaVVYMVdM?=
 =?utf-8?B?bjdFaEpvalFCWUhsTVFTS1BZdmhtK1VRY01OVGhBQ3JvcjV0aGNCV2d2a2Zm?=
 =?utf-8?B?aFNwdDFyNGtXYURqOC95RDBoR3BCZERkZW0rcU5USFJwa1g2NFJndlI1NHpS?=
 =?utf-8?B?Yk03U1hNV1BuWXpVeUpSNlNTRnR5UExWTUhMck1iVHdkNjJCZ0NlbjdMOGJt?=
 =?utf-8?B?WlNGaEY0SkRRcUZLd1Nrd2NaYlR5NXFzd3IxMDZFa3R6WE9TdkdmQ2ZSZFBn?=
 =?utf-8?B?Q2tXQjB3RW8yQkxBNmE3WWdHMmdrbk1Tb0xoUENPRDh5U0MrS1Faenpxbll2?=
 =?utf-8?B?aitlN3drZEhad2FseVY4R211ZUU3QmdpUEdoZU9qNm5hMDRJN1BWVzloaVhK?=
 =?utf-8?B?V1dtc3FWVlE5MVJNbVdLdnAzOEM3K08xYnJoeE82V2Rib1AwVzdQNHZJYXdI?=
 =?utf-8?B?dHFjM2taQmMybm1PajBDOUg2Ty9UUEduQUhVeFdla0V1dW9QemtDdEFuY2Yz?=
 =?utf-8?B?NWRrY3JhVndTWUlmVnczbFdFRjRYQmFuTWFGQUN2c0hsd1Z4R1VhYlJvdDh6?=
 =?utf-8?B?dzh3bUZscGZnNGJkRFFiQjNFSldaL2VnclZkSVJ5anNoTDdvcjdrNGpWb29n?=
 =?utf-8?B?OGlmMFMxLzJrOU9qQXR2NUUzWUNtRGxuVjcxbzNlNEZvME40L0FiUnlHNDdZ?=
 =?utf-8?B?bGpMUjYyVXNwMzd6OWNnVW9sR3hmaXNRd3FWamZhK2oxQUhqOWcvMVFGWldn?=
 =?utf-8?B?eitBeUhNRTNJdWlDNHdpL3RzWE9YdVgxVTUyYWVadHU3N0h1S2NDeXBSNGNF?=
 =?utf-8?B?c24rNExHM29PcVhOVzVqTGRUb1haYXlqd2tjZ3E2RGkzM3FvVUFjWHpRKzFu?=
 =?utf-8?B?anVwVi9PS09mcVZxeE9NSWRYYXBXSURhdlhTeWQ1a0VHTHZ4NXJ6UVRzeEox?=
 =?utf-8?B?Z2owNmFFR2JTNXFIS3hVMExoOFR3TzJ1V3gyczFXUFBqbFFmdkFMV3lrZG9B?=
 =?utf-8?B?a2gzYlN2b1YvalZER3ZtWEZpdEcvSHVKNDNLTEZOZ2ZKUkdyckxINEVWczVB?=
 =?utf-8?B?N3poTmljZHlGckFoZEpYcW03UFNHbmVXOHB0SUhVZHVrRG9OaWw1ZUw4WGUv?=
 =?utf-8?B?MEV6WFkwRnV6VW96Wmx0Z1dlWk0rZ0tKMHB6MFpyQ2hvbWMrTWxCYUFXMFVt?=
 =?utf-8?B?T21VdnI2VHVtdW5tMytwSnFKNCtGM1lLRkJNanBoY1Npb2ZGdWpHaFRrbDA4?=
 =?utf-8?B?N0NOK1ZzM09PNWxXSktocG1IbEx0UEg5Rjd4RDQ0MGMzZTM4SWdjSGsxaDg3?=
 =?utf-8?B?RkR3RXZtZnNDNVhIcEdsbUM4UXNVNDlWZGZpRGFWUjhBN3JpOXNmaHhUT1Nn?=
 =?utf-8?B?ZDFnU2lTMC83ZjNhNE5mVDFuSWhtWktmMHhsQ3JsSUt3b2xmTDd5QUlyTkl3?=
 =?utf-8?B?Ym9JMitTV3dPc0xkL05MdThWaTdJNnArT3lzRzBNR0p1OUtXTWFBYlJIcnN0?=
 =?utf-8?B?V3gvN0Z3N3JSK0RONzFIMDFWU1FPUDE4MVBHVzFuTkJUbTZKczlMOVZnS3BI?=
 =?utf-8?Q?uXM8VDHhRh40Fs1sG94ZU6AKk?=
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id:
 7ac3260a-2b55-4f7a-e085-08da7fb4e417
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR06MB8325.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Aug 2022 18:26:52.6158 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName:
 4Wslsx3+HVHwffoDRR6RNZG9FAiAZaC0z3JEuyMY9GucHo7Efocl/DCgK7ijLMRm
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR06MB4992
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Actually, I'd like to know where you got the idea that it's just a 
rumor. It is not. I was personally involved at the time, arguing 
strenuously against the policy. I can give you names of people at the 
NFB who backed the policy if you'd like.

The NFB's reasoning was that a free screen reader would not be as good 
as one you had to pay for. They reasoned that Microsoft had little 
motivation to keep on improving their screen reader but it might be 
enough to drive Freedom Scientific out of business. As a Linux user, I 
felt that reasoning was flawed mainly because I felt free, open source  
screen readers were right around the corner anyway. I believe I was 
using Speakup and something called Nupernicus on Linux at the time.

This is absolutely not a rumor.


On 8/16/22 12:31, K0LNY_Glenn wrote:
> That is hear-say, an old rumor that has been recycled countless times.
> Glenn
> ----- Original Message -----
> From: "John G. Heim" <jheim@wisc.edu>
> To: "K0LNY_Glenn" <glenn@ervin.email>; "Butch Bussen"
> <butchb@shellworld.net>; "Karen Lewellen" <klewellen@shellworld.net>
> Cc: <speakup@linux-speakup.org>; "Milan Zamazal" <pdm@zamazal.org>;
> <Blinux-list@redhat.com>
> Sent: Tuesday, August 16, 2022 11:49 AM
> Subject: Re: "Accessibility in Fedora Workstation" (fwd)
>
>
> Holy cow! Are you aware that the NFB once asked Microsoft to *NOT*
> improve Narrator to the point where it would compete with Jaws? If you
> think the NFB is incapable of forcing choices on people, you are very
> sadly mistaken.
>
>
>
> On 8/16/22 09:36, K0LNY_Glenn wrote:
>> This sort of thing would never happen in Nebraska, or any state where the
>> agency staff is of the NFB philosophy.
>> Say what you want about the NFB, no organization is without its problems,
>> but it is the core philosophy that formed the NFB that knows that society
>> has low expectations of the Blind, and this is why the NFB believes in
>> skills and high expectations.
>> And with that, comes giving respect to the Blind, like the respect of
>> choice.
>> Yeah I know about the information of recent about NFB abuse, but this is
>> organizational issues, unrelated to the philosophy.  In fact, the fact
>> that
>> it has come up demonstrates that the NFB is no different than any other
>> organization in interpersonal staff issues.
>> And choice does not mean training center choices.
>> Choice isn't always an option, just like if you took a vocational course
>> in
>> college, there are things you have to take, so to me, the lack of choice
>> in
>> this regard is different than computer software, where all the choices
>> will
>> reach the same end result.
>> In states where the NFB philosophy is embraced, if a client said I want to
>> use a Mac, or I want Window Eyes, then that is what they would get, no
>> questions asked.
>> They would not have to fight to get it.
>> I simply cannot imagine a counselor saying that someone has to use the
>> software that the counselor wants them to have.
>> When I hear that stuff, I almost cannot believe it, but I know Butch well
>> enough to know he wouldn't make that up.
>>
>> Glenn
>> ----- Original Message -----
>> From: "Butch Bussen" <butchb@shellworld.net>
>> To: "Karen Lewellen" <klewellen@shellworld.net>
>> Cc: "K0LNY_Glenn" <glenn@ervin.email>; <speakup@linux-speakup.org>; "Milan
>> Zamazal" <pdm@zamazal.org>; <Blinux-list@redhat.com>
>> Sent: Tuesday, August 16, 2022 8:18 AM
>> Subject: Re: "Accessibility in Fedora Workstation" (fwd)
>>
>>
>> You are right.  In Nevada, freedom pushed jaws to the rehab people and
>> took them out for steak diners and so forth.  I fought like hell to get
>> them to buy window-eyes.
>> 73
>> Butch
>> WA0VJR
>> Node 3148
>> Wallace, ks.
>>
>>
>> On Sun, 14 Aug 2022, Karen Lewellen wrote:
>>
>>> And where do these employers learn about jaws?
>>> In fact, provide if you do not mind an example of how  this works
>>> exactly.
>>> after all, unless I am incorrect, these employers are not personal Jaws
>>> users, meaning someone they trust continues to sell them on an expensive
>>> program instead of a largely free one.
>>>
>>>
>>>
>>> On Sat, 13 Aug 2022, K0LNY_Glenn wrote:
>>>
>>>>    Karen,
>>>>    Most employers don't want NVDA, and will only allow Jaws.
>>>>    In Nebraska, if an employer said put on whatever works, the counselors
>>>>    will
>>>>    use NVDA, because of the cost of Jaws.
>>>>    If some of the clients in a call center already use Jaws, but don't
>>>> know
>>>>    NVDA, the counselor will use Jaws, because the other clients will need
>>>> to
>>>>    learn one of the two.
>>>>    So it's all choice, but in the workplace, it depends on what the
>>>> employer
>>>>    will allow.
>>>>    Also, sometimes scripts need to be made, and there are more Jaws
>>>> scripters
>>>>    available than there are NVDA add-on writers.
>>>>    So this perception that Jaws is forced by rehab, from my 31 years in
>>>> the
>>>>    business I can say is rubbish.
>>>>    Now, if a counselor did not know how to use NVDA, and either may be
>>>>    chosen,
>>>>    the rehab counselor is able to select the one that the counselor feels
>>>> is
>>>>    best for the student and for the counselor's teaching.
>>>>    When it comes to part B moneys, which is used for non-vocational
>>>>    purchases,
>>>>    where a lot of Jaws purchases come from, it is in the agency's best
>>>>    interest
>>>>    to spend as little as possible, because that doesn't come back like VR
>>>>    expenditures do.
>>>>    Glenn
>>>>
>>>>    ----- Original Message -----
>>>>    From: "Karen Lewellen" <klewellen@shellworld.net>
>>>>    To: "K0LNY_Glenn" <glenn@ervin.email>
>>>>    Cc: <speakup@linux-speakup.org>; "Milan Zamazal" <pdm@zamazal.org>;
>>>>    <Blinux-list@redhat.com>
>>>>    Sent: Saturday, August 13, 2022 6:15 PM
>>>>    Subject: Re: "Accessibility in Fedora Workstation" (fwd)
>>>>
>>>>
>>>>    The challenge with that example is that, as one often gets reminded,
>>>> the
>>>>    rehab systems track record for facilitating  employment for their
>>>> clients
>>>>    is quite poor.
>>>>    With a high percentage of unemployment among our clients.  Making,
>>>>    speaking personally, your buying Jaws for personal use not really
>>>>    reflecting how the system would respond to an alternative request.
>>>>    Now if someone from organized rehab said, okay freedom scientific, we
>>>> are
>>>>    creating an employment program where our clients will train in Linux,
>>>>    needing a solid screen reader solution for the system.  We will give
>>>> you
>>>>    an
>>>>    exclusive development contract for s millions to create the tool.
>>>>    Fs would likely say where do we sign?
>>>>
>>>>
>>>>
>>>>    On Sat, 13 Aug 2022, K0LNY_Glenn wrote:
>>>>
>>>>>    True enough, but largely, rehab people typically use Windows at work,
>>>>>    and
>>>>>    probably at home, but they need to cater to the needs of the client.
>>>>>    If a client used Linux, I doubt that any rehab counselor would
>>>>> advocate
>>>>>    that
>>>>>    the client switch to Windows, unless that was needed for a specific
>>>>> job.
>>>>>    In Nebraska, we purchased Jaws much more for personal use than we did
>>>>>    for
>>>>>    work related situations.
>>>>>    So if FS made a JFL, and people were using Linux, rehab would indeed
>>>>>    purchase a JFL product.
>>>>>    Glenn
>>>>>    ----- Original Message -----
>>>>>    From: "Karen Lewellen" <klewellen@shellworld.net>
>>>>>    To: "K0LNY_Glenn" <glenn@ervin.email>
>>>>>    Cc: <speakup@linux-speakup.org>; "Milan Zamazal" <pdm@zamazal.org>;
>>>>>    <Blinux-list@redhat.com>
>>>>>    Sent: Saturday, August 13, 2022 3:01 PM
>>>>>    Subject: Re: "Accessibility in Fedora Workstation" (fwd)
>>>>>
>>>>>
>>>>>    there was an interesting discussion a month or so back on the blinux
>>>>>    list
>>>>>    about how long it took completing tasks in the gui as apposed to say
>>>>>    command line,  the comments were quite informative.
>>>>>    Still, fs has never marketed largely to the end user. Instead they
>>>>>    market
>>>>>    to the American rehab community.
>>>>>    how much market research has  the rehab community done to support the
>>>>>    need
>>>>>    for choices?
>>>>>    How many rehab counselors support  training in Linux?
>>>>>    one comment made by the subject of this thread about poor quality
>>>>> speech
>>>>>    is a fine one...out of the box Linux has few speech choices.
>>>>> everyone
>>>>>    brings their needs to the table there.
>>>>>
>>>>>    if you want to get fs to care about Linux, you  need to prove there
>>>>> is
>>>>>    money for  them there, from their main source of income.
>>>>>
>>>>>
>>>>>
>>>>>    On Sat, 13 Aug 2022, K0LNY_Glenn wrote:
>>>>>
>>>>>>    Well since Orca seems to work on so many distros, I don't know why
>>>>>> FS
>>>>>>    would
>>>>>>    not be able to do the same.
>>>>>>    If Jaws users could switch into Linux, it would be a real game
>>>>>>    changer,
>>>>>>    and
>>>>>>    I think with lots more Blind Linux users, we would start seeing
>>>>>>    accessibility in Linux not being a second thought.
>>>>>>    Glenn
>>>>>>    ----- Original Message -----
>>>>>>    From: "Karen Lewellen" <klewellen@shellworld.net>
>>>>>>    To: "K0LNY_Glenn" <glenn@ervin.email>
>>>>>>    Cc: <speakup@linux-speakup.org>; "Milan Zamazal" <pdm@zamazal.org>;
>>>>>>    <Blinux-list@redhat.com>
>>>>>>    Sent: Saturday, August 13, 2022 1:47 PM
>>>>>>    Subject: Re: "Accessibility in Fedora Workstation" (fwd)
>>>>>>
>>>>>>
>>>>>>    Well technically freedom scientific does not exist any longer, being
>>>>>>    bought
>>>>>>    by another company.
>>>>>>    Still, I can respect why they, or nvda have not created their tools
>>>>>>    for
>>>>>>    Linux.
>>>>>>    That is because as I understand it, Linux is  quite like clay. You
>>>>>> can
>>>>>>    mold a distribution into almost anything. there are various
>>>>>>    personifications of the system, all sorts of ways and changes and
>>>>>>    options
>>>>>>    for creativity.
>>>>>>    however adaptive tools are often extensions of physical
>>>>>>    characteristics,
>>>>>>    hands, eyes, ears, brains, combinations of these.
>>>>>>    To build solid assistive tools one must have a solid  foundation as
>>>>>> it
>>>>>>    were.  that is part of why there have needed to be so few Apple
>>>>>>    efforts
>>>>>>    at
>>>>>>    inclusion, they  created  with, and then created in-house adaptive
>>>>>>    tools
>>>>>>    for various  populations that were built into the system.
>>>>>>    Although Microsoft did not bother until much later, in theory at
>>>>>>    least,
>>>>>>    the
>>>>>>    consistency of windows is what makes it possible for freedom or the
>>>>>>    former
>>>>>>    gw  micro or nvda to create something that can in theory  work.
>>>>>>    Floor for the furniture is somewhat solid.
>>>>>>    Just my thoughts,
>>>>>>
>>>>>>
>>>>>>
>>>>>>    On Sat, 13 Aug 2022, K0LNY_Glenn wrote:
>>>>>>
>>>>>>>    I would like to see Freedom Scientific make a Jaws For Linux.
>>>>>>>    JFL
>>>>>>>    I'd certainly pay the yearly rental fee for it, and it would bring
>>>>>>>    many
>>>>>>>    more
>>>>>>>    users into Linux.
>>>>>>>    FS could, with its resources, possibly make it more robust than
>>>>>>>    Orca.
>>>>>>>
>>>>>>>    Glenn
>>>>>>>    ----- Original Message -----
>>>>>>>    From: "Milan Zamazal" <pdm@zamazal.org>
>>>>>>>    To: <speakup@linux-speakup.org>
>>>>>>>    Cc: <Blinux-list@redhat.com>
>>>>>>>    Sent: Saturday, August 13, 2022 12:08 PM
>>>>>>>    Subject: Re: "Accessibility in Fedora Workstation" (fwd)
>>>>>>>
>>>>>>>
>>>>>>>>>>>>    "KL" == Karen Lewellen <klewellen@shellworld.net>
>>>>>>>>>>>> writes:
>>>>>>> KL>  What bothers me most are his lack of actual qualifications,
>>>>>>> and
>>>>>>> KL>  absolute dismissal of what he has not experienced..as if he
>>>>>>> KL>  defines Linux usage for everyone.  That attitude is dangerous,
>>>>>>> KL>  because he is educating those outside of the accessibility
>>>>>>> KL>  experiences, who will believe his ignorance is factual.  he
>>>>>>> has
>>>>>>> KL>  to be expert, it is his job.
>>>>>>>
>>>>>>>    Hi Karen,
>>>>>>>
>>>>>>>    I know Lukas personally and I admire his skills and
>>>>>>> qualifications.
>>>>>>>    I
>>>>>>>    also know first hand that he is open to constructive feedback and
>>>>>>> I
>>>>>>>    believe heâ?Td be happy to be corrected about possible technical
>>>>>>>    inaccuracies in the interview.  It may be also a good opportunity
>>>>>>> to
>>>>>>>    find out whatâ?Ts possibly missing in making anybody better
>>>>>>>    informed.
>>>>>>>
>>>>>>>    As for â?oabsolute dismissal of what he has not experiencedâ?,
>>>>>>> what
>>>>>>>    reasonable free software alternatives to a less or more standard
>>>>>>>    desktop
>>>>>>>    with Orca and a software synthesizer can you see for a common
>>>>>>> blind
>>>>>>>    user
>>>>>>>    who needs to use a fully working web browser, to read and process
>>>>>>>    text
>>>>>>>    documents, to be compatible with other computer users, etc.?
>>>>>>>
>>>>>>>    And letâ?Ts be realistic.  We celebrate every single developer
>>>>>>> hired
>>>>>>>    to
>>>>>>>    improve accessibility.  This tells something about the state of
>>>>>>> the
>>>>>>>    matters.  We cannot expect that a single person will fix all the
>>>>>>>    kinds
>>>>>>>    of accessibility problems in all the environments.  Lukas works at
>>>>>>>    his
>>>>>>>    job focusing on certain areas currently seen there as urgent ones
>>>>>>>    and I
>>>>>>>    appreciate this opportunity.  Anybody else seeing a need to work
>>>>>>> on
>>>>>>>    other areas is welcome to contribute to whatever sees fit, as I
>>>>>>> do.
>>>>>>>
>>>>>>>    Regards,
>>>>>>>    Milan
>>>>>>>
>>>>>>>
>>>>>>>
>>>>>>>
>

