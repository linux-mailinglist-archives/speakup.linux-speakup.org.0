Return-Path: <speakup+bounces-586-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id ED8B6597380
	for <lists+speakup@lfdr.de>; Wed, 17 Aug 2022 18:06:55 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=uwprod.onmicrosoft.com header.i=@uwprod.onmicrosoft.com header.a=rsa-sha256 header.s=selector2-uwprod-onmicrosoft-com header.b=ieRcDDpD;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 0A1DA384822; Wed, 17 Aug 2022 12:06:48 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id DA56B384816
	for <lists+speakup@lfdr.de>; Wed, 17 Aug 2022 12:06:47 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 1B488384819; Wed, 17 Aug 2022 12:06:39 -0400 (EDT)
Received: from wmauth3.doit.wisc.edu (wmauth3.doit.wisc.edu [144.92.197.226])
	by befuddled.reisers.ca (Postfix) with ESMTPS id BDC3338480B
	for <speakup@linux-speakup.org>; Wed, 17 Aug 2022 12:06:38 -0400 (EDT)
Received: from NAM02-BN1-obe.outbound.protection.outlook.com
 (mail-bn1nam07lp2044.outbound.protection.outlook.com [104.47.51.44])
 by smtpauth3.wiscmail.wisc.edu
 (Oracle Communications Messaging Server 8.1.0.16.20220118 64bit (built Jan 18
 2022)) with ESMTPS id <0RGR003KVOQZP7E0@smtpauth3.wiscmail.wisc.edu> for
 speakup@linux-speakup.org; Wed, 17 Aug 2022 11:06:36 -0500 (CDT)
X-Spam-Report: AuthenticatedSender=yes, SenderIP=[104.47.51.44]
X-Wisc-Env-From-B64: amhlaW1AbWF0aC53aXNjLmVkdQ==
X-Spam-PmxInfo: Server=avs-3, Version=6.4.9.2830568,
 Antispam-Engine: 2.7.2.2107409, Antispam-Data: 2022.8.17.160019,
 AntiVirus-Engine: 5.92.0, AntiVirus-Data: 2022.7.21.5920001,
 SenderIP=[104.47.51.44]
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=W7ycQrpLnNnzYw8YN6ePforVWZllYllarXTgKidzRFuTmJPtR8hZEPxF7ENfSx/2n8eq6BdndANhDRJzXRZO4L1bwYy/Bqgm1Z3dYofdEuaWS7t2aK2B/geEjKRHsgBEMTTNx1Pmlqeu8I6AMNXROu0Z3eey/R6QIeyCERDTTufUZTkQ51NxxJBMylRA5+PE1s7BWMxVKW6GJfLRy0/Ux0zUg5Wr6Hf1Ty9MadOk6VKZdBh3roJ48EqQ1l3A6xr2ZgYsyADwbq72bLbC74xp+OCYTbLCg/JjbWQmFJtX5v/2YxvGzgTnMyDOJRrS/XTgJuZUvStHToOzSkSDpzXxTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FxD8VONbAiw2LXiISI3ZLWr3qjWgntjBMKBtkTZCBaQ=;
 b=Jh8NIA71mC2OULVxHhpnzrC63Km6Sa+570vtlmUPjEaHN6J7MoNP/9AmnLtX3tsLsZyhnzLedewEYEhqnn9PP+BFralJGXU8M4vmlmbliKx7kS1VaD8DWmSF2gFlDxfR5S5ESdZdw/2t69K/AQvHaTngXrJ/KZ6fBSyea6eB1NDVe19e/WmDdgW/ld0ZCZcNhhkHzyOooM3tU6dauNNhJIKK+34GxONYVtg8HV7szBuXpx+8rlRObJA9KM+sVxGQd1McUyf3k/g5XbQvP7dj7qvavt4WebRiZdhMuR+LkbUgdAKKYLYPxF84OPtSW2u93Kg/S8U/EUY8zdxdMSA3eg==
ARC-Authentication-results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none header.from=math.wisc.edu;
 dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=uwprod.onmicrosoft.com;
 s=selector2-uwprod-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FxD8VONbAiw2LXiISI3ZLWr3qjWgntjBMKBtkTZCBaQ=;
 b=ieRcDDpD+3snpAH6WzbTHyURKh49++mffVsXTXl3rX30jWC4uYd9zOB5x8kZJbQbOtJEw9pTrB0mEoIs2R1Qw7X2sIrfV06CVRPQWSVja7iulDcnSSLoNE8WZf89r8KJUOwyBcKdYgKUQ/U0qVtjjKACPc1ztio5kIdl99vn0n4=
Authentication-results: dkim=none (message not signed) header.d=none;dmarc=none
 action=none header.from=math.wisc.edu;
Received: from SJ0PR06MB8325.namprd06.prod.outlook.com (2603:10b6:a03:393::17)
 by BY5PR06MB6578.namprd06.prod.outlook.com (2603:10b6:a03:23a::23)
 with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384)
 id 15.20.5525.10; Wed, 17 Aug 2022 16:06:34 +0000
Received: from SJ0PR06MB8325.namprd06.prod.outlook.com
 ([fe80::da3:ad93:7ee6:7c17]) by SJ0PR06MB8325.namprd06.prod.outlook.com
 ([fe80::da3:ad93:7ee6:7c17%6]) with mapi id 15.20.5525.019; Wed,
 17 Aug 2022 16:06:34 +0000
Message-id: <d435f555-4d7c-6de3-e070-83d6c8632d06@math.wisc.edu>
Date: Wed, 17 Aug 2022 11:06:29 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: "Accessibility in Fedora Workstation" (fwd)
Content-language: en-US
To: Brian Buhrow <buhrow@nfbcal.org>, Karen Lewellen <klewellen@shellworld.net>
Cc: Chevelle <cstrobel@crosslink.net>, speakup@linux-speakup.org
References: <202208170153.27H1rnAJ019923@nfbcal.org>
From: "John G. Heim" <jheim@math.wisc.edu>
In-reply-to: <202208170153.27H1rnAJ019923@nfbcal.org>
Content-type: text/plain; charset=UTF-8; format=flowed
Content-transfer-encoding: 7bit
X-ClientProxiedBy: CH2PR11CA0003.namprd11.prod.outlook.com
 (2603:10b6:610:54::13) To SJ0PR06MB8325.namprd06.prod.outlook.com
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
X-MS-Office365-Filtering-Correlation-Id: 0ae1bab8-acaf-4ed8-ba71-08da806a7462
X-MS-TrafficTypeDiagnostic: BY5PR06MB6578:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
 L6McukYPivTV3tx/GDJ1StpxYYqXQx5DGXIgndDEGXBE5h9awe5c2zZvzBYy31FYMAHswLAJCrnMhZauoZ9I2oyoHYGgj8HsQpORogM3pGcAYCaxtZKh9/jm1VKN6XobhZdOUQByusy4JUK5o/Tiak3y8pDIwh3orsNOtl0GGj/BQX8dzM1FdP5wYHoxHyoawJ/QX3Kpt19VBR4Dg4lTOaAhYXtK6J2XrpVKe8V1EmVQ/+gWw2SsBC3oTYkR5uCLJKSJy8sEQk6uzSC11HNUAK04nlZzp69izs1X7ll2xN3ZKgc5tshhWlT7E/Z52LmLtB3ogN+N7rWSNNZ7MQ97zweY4j5iDJirumhCOthbd4Kd3xJW+DkybD8j6lvCmOij3qjbAvIpvtqF4xiHHXgWMzhtjN5279jaPjTtC775dHtMI9ymhd2iv3nMJBXxGievOSxR87m7cJdA7ppn7T3ICy3P66qEXNAp6ZMeAxUNE3chVOK4wm0pFhhhC74SIjoI5PLMJpmDS32GHCJmuHCN3yp3tAmkyf5UVKzFO57w+AVdyQKvcp2hIGDvT9mnEFi0OJ1lOK/NlVD2j+ccVuIBMG9x/Yfm9Mn0ZF94jhmJveUcnmgARTLZWbWrSg2jVfeUotd8xpUnA4qarHvchVKqik3ITKNXgsFiyCwpSBTe6hcd0L5HuNrVI8+FCCJjIRhThFp4KydVC23xNYfPkfRwgNRr9FI1NuCVD8nEjHYy8lfu3PKWqDkiJX8B0Vd7mZO5GebeEAjE9dIXa24k/fga2Ri9RhK0HWNgfK2Fe7D9/jC/CEcJ4yIsb/uoM7eNQsHm4Zwgb5VopkiJyCMsNT86Vw==
X-Forefront-Antispam-Report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR06MB8325.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(346002)(136003)(376002)(396003)(366004)(39860400002)(38100700002)(316002)(786003)(45080400002)(110136005)(41320700001)(478600001)(6512007)(26005)(53546011)(75432002)(2616005)(86362001)(41300700001)(31696002)(5660300002)(8936002)(2906002)(6506007)(6666004)(31686004)(83380400001)(66946007)(66476007)(66556008)(8676002)(6486002)(186003)(4326008)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
 =?utf-8?B?VS9HMTVRK3I4MzJob3l0RE85UXJxTExJQjZld3hvNkFWQzZCMkpHbVVyTkFR?=
 =?utf-8?B?UGxjRyswM3BhUENFY1JmZVBOYW5vbUxFUWdSRXMxWXVYTDFwMFo2UlpsZEMw?=
 =?utf-8?B?NEpRVTM1TTZING96cS9Mc1lOazM0ek13N3ZSeWJKdHk0cUJDVXhKTDJuZGpH?=
 =?utf-8?B?SmVSWlcrZ0Q2a1Rsb2dxUjFoWEMvYUtkamZQTThEUHQ2ZHJNaFVzaVkvVmFs?=
 =?utf-8?B?RFZKNEVoNjFGR2F6aVorSEtQYnFNRmQzbUc3NWhCM21QQmQ4bnNPM0NvaXAx?=
 =?utf-8?B?Z0w1enRxZEJSQk1SOHdjTFZvOVVIZm8rcHNQZ2hDTTV1SDBMa1kxMDhqZC84?=
 =?utf-8?B?OHdibUhTWmF2UDZRWG9rUUJwd0lJTFg4dDBHdEY3U2dXUi90bEdESWREN0Rj?=
 =?utf-8?B?M1VsZFdIcFNzYWprVCtLeWtGSCtUSWpMNGR5bDJ3a3lvWkRxV1BHQW9kRjNw?=
 =?utf-8?B?d3JyRmVrWlFFZGdZdFo2cThheWxyTjJjSEVyT2V0VnNhcDY4eFdRQ2JDVTRa?=
 =?utf-8?B?MnVVUmVQak4wSDBKR3hVZ1pCNWk3QjJGM3dBNVlpK09YMEhDUDM5NFU2aEp4?=
 =?utf-8?B?Q1VxWnYwcXFiTzREdTBBWUJpQU5ubjdQb0NPTml6UlBSTlg0UGNIRTE0TkZK?=
 =?utf-8?B?SEVTVEpNQjBTRzMzL2tpVk9sYkdid25QUlkydlk3aFdSUS9hNktmL0lZUEty?=
 =?utf-8?B?clRQY0hzK0d5NzZ4YkdBa1R4ZHZ6L0pORUtBOXZEc2tSTDc3SHNWQitiM2RQ?=
 =?utf-8?B?Yjl2QytCYmd0TnhaR2lyRHAwdU0vT2RGMVRkdk94QmhLZFNnRHhyUUpCdEcy?=
 =?utf-8?B?eWRORk1LM0IyR3krSFM1UTVZSEovdzVrSHFpblBtaFFCamRGdThieHpnTTNV?=
 =?utf-8?B?Y0NOTUdkNHIxK1hUcGFXdjJJa1k3MzFESkV4akJDYWJlTzFyZWErd0F0U3hO?=
 =?utf-8?B?eElHQVh6TVhSN0ExNFdmZmE0TkdzRkdzZ2tRVEtPem5Sd1Z0QUxQTjAvM0tX?=
 =?utf-8?B?TkUvVWFZalBIR0haRzJySjA3SGFya1F1S3pEdE5PT2dGbzNOU1BvbmROWWNT?=
 =?utf-8?B?M1BJZW1zeFg0ZS9kQTg2d0ZVT2p6SkRyZ0c5Vi8wVWdjaXZmaC9FekpqRFB3?=
 =?utf-8?B?a2xiTWtkUXNnKzg0NlM0WXVwSU50SzJHZVdkTGFwOG1HVE1RczN1WFlibmlU?=
 =?utf-8?B?dHhVbzZZRFQzYWQ4M0pKcGJPNXgvZEc2NmhSSEs2WjcwcmQzWlZKVjVRZm9l?=
 =?utf-8?B?VHd1dC8yaEtiZGR2SHY1b21Cb1VJeFN6TFJKWFp4WklNQkFZc0hJL0UxQlBp?=
 =?utf-8?B?NjAzSm5sWlZ1Q1pPU3RyOVYwMktoVXp3ejZKb0hzQm5rK05NaWRaZEJ4cWRn?=
 =?utf-8?B?Tmd6c2U4eVdSNTVJL3ZpN1k0SXU3enRST0ZZN2lHRndSamZKRjkweVQ1dEJn?=
 =?utf-8?B?Y1VDdmZZcnlnaW85dng2bmNSRXI1YTMwd252REhydENTWXQzTkVsL081Slc4?=
 =?utf-8?B?YjZxVGxRa0R2VHFaNlJZY1ZSbnlVOENxM005NlBrWlFJNFV5cG5LMFl2eXdG?=
 =?utf-8?B?RW8zelU2OHo2Ly9ST3p5aGJXeTU1NWU4emdPMktrUS9EWlNjK3o4K1JST2hX?=
 =?utf-8?B?UE1HMW91Zm9jUFlqUXlEcE0yZ1B0cENCb1habmgxNE1XdWRLZW1wRkRMUDlo?=
 =?utf-8?B?REwyc3lFeXFCVUNUc0JUUW14blpNOTRnMlJib20wR3I3dGcxamRIcDJ4MDhU?=
 =?utf-8?B?dEdJZ3RwUWljRnl3dDF1RTk1cW5PWFJwbUVqRElxUWRaTDczc0hUajI5b29L?=
 =?utf-8?B?L2tGMDZFLzI4eTIxdHJsejlLamwyckVFWVVEd05GK28xS2tHY2Jzdk1Yc25D?=
 =?utf-8?B?SkljYXBJalF4ZXZyOUVWMWJOSkdSMG4wb2NxajkrNnZBYVRlYXFHS3JNSUlr?=
 =?utf-8?B?WEhnQmFNdEVXQ2NsKzY1eVJUMEV2dGxxRldBUWxTRWx2K2RXRkhMYnVHakNk?=
 =?utf-8?B?aFNzVjhzRU5xdEhOZWowblFOVk9JZk45eFhNaDVob1BHTWRhT0dKOG9RWXQw?=
 =?utf-8?B?VHpHcWxOOGR0WXdSYjBGTXpzdGwxUFE0Y01JVWNDdk9hRTMrbFM5RmNVbXlE?=
 =?utf-8?Q?VRvo7vPYQphqjYNphFlfd3CSJ?=
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id:
 0ae1bab8-acaf-4ed8-ba71-08da806a7462
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR06MB8325.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Aug 2022 16:06:33.9174 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName:
 YWdTLFjV8gRgMGbIw9yphhaefueXnm3wX2HrEC7ZuIqfJxRFw/XxJyJrNjhZbXqn
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR06MB6578
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

But Brian, the NFB did ask Microsoft to stop development of Narrator.
In fact, it would be illegal for Microsoft to continue development of Narrator to the exclusion of other screen reader. Essentually, you are claiming that the NFB merely asked Microsoft to not do something that is illegal anyway.
And it's not even what actually happened. Microsoft did stop development on Narrator.
This was never about accessibility of the API. It was always about competition between Freedom Scientific and Microsoft. You said so yourself earlier in this very thread, "
When Microsoft began putting a real effort into Narrator, there
wer  those of us who were concerned that it would put Freedom scientific out of business."


On 8/16/22 20:53, Brian Buhrow wrote:
> 	Hello.  I'm going to stop soon, but I'll try one more time.  The conversations I
> participated in weren't ones where we asked Microsoft to stop development on Narrator.  They
> were conversations where we asked them not to develop Narrator to the exclusion of keeping
> other screen reader developers out of the loop.  We recognized that Microsoft was only going to
> put so much resource into developing the APIs and Narrator, and if they didn't keep the third
> parties in the loop, we might end up in a situation where the existing screen readers  didn't
> work at all and Narrator wasn't really ready for prime time use.  The point that's ben missed
> here, is that the only reason Jaws, NVDA and any other third party screen readers work at all
> is because Microsoft has worked hard to make sure they will continue to work.  If Microsoft
> decided to close those APIs, while there might be a large hue and cry in our community, I doubt
> they would get into that much legal trouble.  Consider, for example, how much effort was
> expended to get them to accept third party browsers on their platform.  Yes, they do and now
> they embrace it, sort of, but there is no way the blindness community could mount the kind of
> effort it took to get them to change their minds about browsers, which I could argue, is still
> not entirely a resolved question, since there are times you still need to use Edge if you want
> to do certain things in Windows.
>
> 	I hear and appreciate the argument from those who cannot afford to pay for extra software
> in order to use Windows.  But consider this, today, NVDA is a very viable option which can be
> had for free.  Even better, it came about without the total destruction of the eco system built
> around Jaws, which, whether you like it or not, supports a large number of blind folks who are
> gainfully employed.  It may be that Freedom Scientific strongly discouraged Microsoft from
> developing Narrator, I wouldn't put it past them to have done that, and it's true the NFB
> didn't decry their efforts, but in the conversations of which I was a part, and I realize Iv'e
> said this before, it was always about making sure all access developers had equal access to the
> Microsoft APis and could write the best screen readers possible.  NVDA is the shining example
> of the success of that argument.  If Microsoft had pursued the holy graille of making the best
> screen reader possible, they would have done it at the expense of the third party AT developers
> and we would be in much worse shape than we are now.
>
> -Brian
>

