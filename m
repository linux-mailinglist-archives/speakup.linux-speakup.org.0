Return-Path: <speakup+bounces-865-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 678E66355DD
	for <lists+speakup@lfdr.de>; Wed, 23 Nov 2022 10:25:50 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=csircoza.onmicrosoft.com header.i=@csircoza.onmicrosoft.com header.a=rsa-sha256 header.s=selector2-csircoza-onmicrosoft-com header.b=Z15IJJPh;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 6D2AB3829F1; Wed, 23 Nov 2022 04:25:46 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 4B69C382961
	for <lists+speakup@lfdr.de>; Wed, 23 Nov 2022 04:25:46 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 901543829C5; Wed, 23 Nov 2022 04:25:36 -0500 (EST)
Received: from pta-smg3.csir.co.za (pta-smg3.csir.co.za [146.64.81.182])
	by befuddled.reisers.ca (Postfix) with ESMTPS id E4959382961
	for <speakup@linux-speakup.org>; Wed, 23 Nov 2022 04:25:34 -0500 (EST)
Received: from pta-smg3.csir.co.za (localhost.localdomain [127.0.0.1])
	by localhost (Email Security Appliance) with SMTP id 84148250D8A0_37DE700B
	for <speakup@linux-speakup.org>; Wed, 23 Nov 2022 09:25:20 +0000 (GMT)
Received: from ZAF01-JN2-obe.outbound.protection.outlook.com (mail-jn2zaf01lp2046.outbound.protection.outlook.com [104.47.19.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client CN "mail.protection.outlook.com", Issuer "DigiCert Cloud Services CA-1" (verified OK))
	by pta-smg3.csir.co.za (Sophos Email Appliance) with ESMTPS id 2D84625BB2A4_37DE700F
	for <speakup@linux-speakup.org>; Wed, 23 Nov 2022 09:25:20 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ByV3lQFgud0hfHdHRp1L7d5g6Di/8pmeba1ZCH/wisYiklHtb5lVtlafVxOg/95xMY7WQDhoRxqvFyLbTNZ2BlHMFUqYauYu7iAuD81KKqIWF0MYmJwXfJDtoD9kIUGAUDcDnxFZ5WB1+kvwrEs1rO1oSf9lDUb4XIr8ha0hVFPNsisTkz1L6TVSaIs5wG1/n42MCEEWqxBVOSlsz7m1S5iQDQ4BWZgfX40SDQ9DW8PT+ibogXMIydEPKUXGwbOcOGH7XA2mvw9CrmtriMMMNhIPYpgQV57Fa4dZoMPSxDH5adPxRrAOlpnN//wa0QF5QrXPyjXhueLuzaWQ7vHY0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Lw2bTC/k4g/91wxPwqN524oMlY5ktgf65PBVnTWBAqQ=;
 b=RewG+Vip1pVXU0/Z7nlPpC20biA/6i8Ll7M0izkSWrwxPdSL1F0bwiWjSDQn9oW17u0/FOrdxlPEgpIcCbWrzl560+28z9m2su7re1KMOxZ5e89g7q5SkPFarxl1xb0Wp+lqAp1BrBT/rJsff8tn+CRt7S5RsX12krAnwcbGxXvQBwqezXCNApV+sxUthfRQsFMXRMMoRbTrKobhE8NCXE5YRnpGaA493AOPrA8blQ8sZtL64UDOswYzM7HP4OpZk3QHvWaVhFL7Kv4yjHUJ1rUmBITUxjvctZJNzqg3QuhQzr3jenjKRndZ8wvx0EflOPuFQBMV0QC3WPke7DOkqA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=csir.co.za; dmarc=pass action=none header.from=csir.co.za;
 dkim=pass header.d=csir.co.za; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=csircoza.onmicrosoft.com; s=selector2-csircoza-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Lw2bTC/k4g/91wxPwqN524oMlY5ktgf65PBVnTWBAqQ=;
 b=Z15IJJPhD/M4CgfhpckOSJIn2t26Kp4CTaUwiM7EAWGLAOrf/gfLyp0ZtsAd68bODzhnsG8pB8kriZ2cid5dBAHjtRPBW4u3AtsjA58+Hk2dySEi9zX54fYvyNSKBBPEfSXBmpNJB0UZ9piWkbhYre0sxtLRuH7oqifmiqdxmYo=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=csir.co.za;
Received: from JN2P275MB0171.ZAFP275.PROD.OUTLOOK.COM (2603:1086:0:10::12) by
 JN3P275MB2134.ZAFP275.PROD.OUTLOOK.COM (2603:1086:0:92::12) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5834.15; Wed, 23 Nov 2022 09:25:19 +0000
Received: from JN2P275MB0171.ZAFP275.PROD.OUTLOOK.COM
 ([fe80::864b:3796:8180:1d10]) by JN2P275MB0171.ZAFP275.PROD.OUTLOOK.COM
 ([fe80::864b:3796:8180:1d10%4]) with mapi id 15.20.5834.015; Wed, 23 Nov 2022
 09:25:18 +0000
Date: Wed, 23 Nov 2022 11:25:16 +0200 (SAST)
From: Willem van der Walt <wvdwalt@csir.co.za>
cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Could someone help with bash scripting?
In-Reply-To: <D9069478-2D9A-4DC3-97D7-BB365C7A4222@gena-j.me.uk>
Message-ID: <97c24e8f-836c-0464-6aa6-09a0a100b06a@csir.co.za>
References: <D9069478-2D9A-4DC3-97D7-BB365C7A4222@gena-j.me.uk>
Content-Type: text/plain; charset=US-ASCII; format=flowed
X-ClientProxiedBy: JN3P275CA0023.ZAFP275.PROD.OUTLOOK.COM (2603:1086:0:71::18)
 To JN2P275MB0171.ZAFP275.PROD.OUTLOOK.COM (2603:1086:0:10::12)
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: JN2P275MB0171:EE_|JN3P275MB2134:EE_
X-MS-Office365-Filtering-Correlation-Id: 68e10100-af5e-4f68-8bb1-08dacd34a31b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
	qPjSCPe+Rcpc/wWdsibQmcN5gfxCgFnfJ5VZqxVKglEIdZkvRdyIL3OLvvH6eUYk0mZSSg9RoO9CHc4Xp5ChnW+5wBy+NCbCuJ9Rm8i17WKoBUCGj+fLEdPJbg8NwMeibGR0LvOk8EPIjgdRa5j37QhB2zvy73XtCe6wUuv1RgJXiT2eaCCBmLnB4FYrtVeSx4djmGKm+aq9iFJM6sq4O5ZLT3Sl+N3Ly2UGnuEsdT4kmvjw/LHzVvbrVMej0VNA8tFvCW9/g/4nl8Gif5BxZHdcj3e7Nfw/1PaGtzY7IQdRFBRwEFuCVyagEpgDoaLsNeYVzbtIdGRu+66MMjT8WpQ9fmVquhnNfO5Z7924SrA3LN40hTP3DIhUd8QeNRBjJCOYhPqnelMBgJkUUcG8oFTZJOowWkzSE/zWG4LOS8SLbzxhRxRP+W8T7QG1Xqvmr6PcpR3oK6NStzWoOg6O25IGsEM3kVAgB5f/41d6wkwDVTsS/zF7hNXZFHYnLuCMvqkHEzOie8IGDQDX9sRKCqdUnqJSnC14h5QV9cgQvnwiQuVHNGVa0rgQYuu0VPUalPPuNxKTMWg6l9wa9VCzm6pZyH6uLSt0QM9yN4ZTM164cblCzlg+9AuJ473Pa/J2wspqnNRWjUe0O0CImoLXjgI8YSbAkOke5WXCU5slgrg70tbSOY8dB+PZw/1R3bQv
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:JN2P275MB0171.ZAFP275.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230022)(396003)(366004)(39860400002)(346002)(376002)(136003)(109986013)(451199015)(41300700001)(478600001)(66899015)(6486002)(31686004)(966005)(4326008)(66476007)(8676002)(8936002)(186003)(66556008)(66946007)(5660300002)(36756003)(6506007)(316002)(83380400001)(2616005)(86362001)(2906002)(6512007)(31696002)(38100700002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?3+bo4FLKjSrhqhUgaphljd/Nz8Ooi8nDnftAZOwPQHtRkx/Npnuk6hZTWhl/?=
 =?us-ascii?Q?XEPSnFAwEHcMDLzrN3GPRu/DzfrpRWL0KXeQVk/iX+N15XXUH5leiHfSZ6Dm?=
 =?us-ascii?Q?b3VR0sZwsCvg0HJu2GKHh3hgLBUG6ZLzr4s20LCpWTTvavok9/udxLKq++iN?=
 =?us-ascii?Q?OHT9ufmkna417ktBLQYBsRL16jbdJBvwa6H42pV8DJiMnKqjt1Hm6BpYYxue?=
 =?us-ascii?Q?xcYmvzo/oO1aLa6tb8xUit44SYb7R5SEDRmtia6xv9RgBw7QTSh78Adhhdec?=
 =?us-ascii?Q?Xo+9/8N5JIT50hEu/S3bfYxOhsB378lP2x5GFF2mIQnIqhCsdqi05q+fdMdc?=
 =?us-ascii?Q?Zav0LBiiUqg+yY94Kz8jfBOC6FgZWZwP9TkkAGMQd1o73sqFtvLtZqBc2Mod?=
 =?us-ascii?Q?lvZx7tJiP/m0fLv75Qa4DaRzeaUN8H+NJ8twnf4lwoG1uqrwSrhxP/RsqF2E?=
 =?us-ascii?Q?N5sztF7QS6IBdq52sb2i238Spk5U7g8ykSYT/cfEH2JQ3qhyDQg6Clb5DdxG?=
 =?us-ascii?Q?69U5sI7aQGD0ce518asi2alP6OW2NJaJqAfQoWwviBNnvkFEi7U6Ws8iLFv0?=
 =?us-ascii?Q?bbW+drxqlFXxFMJfiJBYMiyUpok6L1WJikidKblmc58IkSUJlAObib6CM/8B?=
 =?us-ascii?Q?jyIPsDtpWRIKz4RLn4HPnNUM92C+WaG88H1oSAu+Dd/0HlGf58e8VlHbQC8z?=
 =?us-ascii?Q?eGGp1NV0ks4t+MJSuxNcvJjDECdb3BU60jC9llHnmHg43jFa2hBJBG4T/Owr?=
 =?us-ascii?Q?SDWTloCy4CQSclsJ275Inly0YRFLzcPNbBbb900yalGAbxPCMIcOgWcxi3IC?=
 =?us-ascii?Q?OakyeykYwF48b3GVpdGVlEe7bSQNnK46heixndgIWJ35Ll5BLuZKacwEuO3o?=
 =?us-ascii?Q?8WujxueUsp0NQKvVo+Qkqcy8XXydbhGCN0Sqa3FYKj3P1es0pUBY6gdglcky?=
 =?us-ascii?Q?BwUwJjSbVgs8RRJxXG7dXrYpPiecWvRcTK8xZy6wcXsI6bngQwXBL/UU/Nj0?=
 =?us-ascii?Q?os73R0/wD5iur0ss591pi9W1W+AKGDENtkY7ufS+QqFENEO8l/ypnD9gt8gR?=
 =?us-ascii?Q?tMIb/OLwUoFRmgfTuYPLtmPLUl5nk810SppsvlNKR2yJn//phWxfxt5cPAm1?=
 =?us-ascii?Q?z8G/sVCaQ/uX7CIKScqd9SH06Koua1DzwjxintAjMUIljBY/9Eqx4isLrNAW?=
 =?us-ascii?Q?vG8Jgkny+rEy6cNKikgeiTI5pJeLMdvKuUZIa5MhDjyqVeskVtE5zIsw/UvS?=
 =?us-ascii?Q?OEriLryYZYsUK8h2dYiFZk2S8SIVWXpBUCRolElse4CFrtzz+8N62zRw5VzT?=
 =?us-ascii?Q?ci0hmCVasO6luta5JRTnyyilK1BLVLQvLI3NDIRG1AiKgSPNCbm1vJCFcFMj?=
 =?us-ascii?Q?U8Lc4xK8PdM0fcynaBTCr9hzhrbhuFbGQ+wPukWR62DQJ3LjegAgi+Awmy3c?=
 =?us-ascii?Q?7TCZQPtvh5jIKYLbC1z1t5lI75rda+vYPF2W/s8S18vPdy68Azp20rxIHaip?=
 =?us-ascii?Q?UaRG/En4UlkQZ+eZA3aHdEtDH+2T/fEOGconDNwzIH4la9SMkM5be3cBtbHF?=
 =?us-ascii?Q?ggxpHliTaZ4phXl9AzDZ2IgfE0DTSJMEVGT9qGGPbRjM6wNs23Uczi1nBCrG?=
 =?us-ascii?Q?7EgeYkoiJgzOxgY4orO/8Q5Dj9KN0YHrVi+ZWBY+OCWf?=
X-OriginatorOrg: csir.co.za
X-MS-Exchange-CrossTenant-Network-Message-Id: 68e10100-af5e-4f68-8bb1-08dacd34a31b
X-MS-Exchange-CrossTenant-AuthSource: JN2P275MB0171.ZAFP275.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Nov 2022 09:25:18.5925
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2fd3c5d5-ddb2-4ed3-9803-f89675928df4
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: eXKw20DerznTG5s87TWBBUKdnkVymsr+m8f56GXMckoGFXQjJn6q/K8lxiKU7rwH515zHbwrmGFpq9kb33PJmA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: JN3P275MB2134
X-SASI-RCODE: 200
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi,
kermit I think is the easiest.
You might also look at using expect.
Just do a man expect for details.
HTH, Willem


On Tue, 22 Nov 2022, Georgina Joyce wrote:

> [You don't often get email from gena@gena-j.me.uk. Learn why this is important at https://aka.ms/LearnAboutSenderIdentification ]
>
> [The e-mail server of the sender could not be verified (SPF Record)]
>
> Hello All,
>
> I would like to write a bash script to control a Yaesu FT-991A transceiver. I have been using rigctl a part of the hamlib libraries. However, I find the command structure difficult and doesn't contain some of the daily commands like nudging the frequency up in Kilohertz etc.
>
> I have looked and researched  that I can change the tty device baud rate by using stty with the -speed switch but can't really get my head around the stty syntax.
>
> I see from a unix stack exchange listing that I can crudely use echo and cat to the device using 2 console windows. The answer on Stack Exchange suggests using screen. I recall some members here were a fan of screen but I have never used it myself.
>
> According to the CAT reference manual. If I send "FA145500000;" as a set command The transceiver will respond with the same as a read command. So I want to clean up the responses and put them in human form. You might note that the radio deals with integers in this case. But us humans like decimals, so there is some cleaning up the output. I think I might be able to do that. But it is this issue of sending commands to the tty device and reading the responses that I haven't a clue.
>
> Anyone can offer suggestions?
>
> Thanks,
>
> Georgina
>
>
> Call: M0EBP
> DMR ID: 2346259
> Allstar: 52178
> Locater: IO83PS
>
>
>
>

