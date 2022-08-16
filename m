Return-Path: <speakup+bounces-572-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 12E365963AB
	for <lists+speakup@lfdr.de>; Tue, 16 Aug 2022 22:22:32 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=uwprod.onmicrosoft.com header.i=@uwprod.onmicrosoft.com header.a=rsa-sha256 header.s=selector2-uwprod-onmicrosoft-com header.b=YuajnqUf;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 8417638480A; Tue, 16 Aug 2022 16:22:28 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 5ED043847E1
	for <lists+speakup@lfdr.de>; Tue, 16 Aug 2022 16:22:28 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id D1ADC3847F2; Tue, 16 Aug 2022 16:22:19 -0400 (EDT)
Received: from wmauth4.doit.wisc.edu (wmauth4.doit.wisc.edu [144.92.197.145])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 811153847E1
	for <speakup@linux-speakup.org>; Tue, 16 Aug 2022 16:22:19 -0400 (EDT)
Received: from NAM12-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam12lp2174.outbound.protection.outlook.com [104.47.59.174])
 by smtpauth4.wiscmail.wisc.edu
 (Oracle Communications Messaging Server 8.1.0.16.20220118 64bit (built Jan 18
 2022)) with ESMTPS id <0RGQ051DL5X4WI30@smtpauth4.wiscmail.wisc.edu> for
 speakup@linux-speakup.org; Tue, 16 Aug 2022 15:22:17 -0500 (CDT)
X-Spam-Report: AuthenticatedSender=yes, SenderIP=[104.47.59.174]
X-Wisc-Env-From-B64: amhlaW1AbWF0aC53aXNjLmVkdQ==
X-Spam-PmxInfo: Server=avs-4, Version=6.4.9.2830568,
 Antispam-Engine: 2.7.2.2107409, Antispam-Data: 2022.8.16.201518,
 AntiVirus-Engine: 5.92.0, AntiVirus-Data: 2022.8.16.5920002,
 SenderIP=[104.47.59.174]
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KYOXcZWCWyJ4I3Wst7chqp6Oowm43540LLClkKyLbPeRup965wmLwC+7KeRRupt+7PScp+0hNDmlZsdh1tMKPDVXHM+zCeOgQ8c2vHYoTy+lzZJVdTpOgjWoavMS+52NYOb1qrkEB+4thM27JdEi1wThgBYNFyd21EFEl6w+MMcY+PHpqHDJfbuJVTUrNNmYULyjohyYFBpTAA84Xb9r2dksOQLBb+VsGJ6lTqg8U6JpkFXfN6iNvUL6a7jMKGs5R9snRc+lAtB+ela+QpmYQFPsiAKakGMqFsS6UDF/DhFjNTcWuidXHSfoYuq2u05i1t6iwfVDdQvyKfxSPhGStg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RJJ8MQ6AWIxCjQGMfpe4fY08I2Sb87HUnxnvQAOBnrA=;
 b=SRxz6qEYxR+GxccAy5vCE5ar2SLNXUxRkK9MYRUw2wG5+MbOX6UZONyZb4Z5jF3eiFVezBZT9FDnoTqKIBnaOHEp5GBYb1zRnzDLQ+iWRiwuJS+zt5CWZJWglzBX3szFzELNXCGci9/JOfOKh65LKHUTPyFZELxBA0dGXQ0x47nWQYjLQ9OgroYdCnb2WiMDCpTL5R+hTdsN0pdlpYTBEQtyaMCpUlx1W1PXY+01YwhFMCNHyfUbGvAVWgfj2KHqqA/hS4a1TskmQUi1GLYhDUauSLzz3iYQ/Bn0sGa5tnQbjU7JUsOiVc6uE/Ysfa5Yt6Qfc1C4JvHpg+E7QVMPQg==
ARC-Authentication-results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none header.from=math.wisc.edu;
 dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=uwprod.onmicrosoft.com;
 s=selector2-uwprod-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RJJ8MQ6AWIxCjQGMfpe4fY08I2Sb87HUnxnvQAOBnrA=;
 b=YuajnqUfh/WdEuB9PF1EBw+zCSRnGksn2xZQzuntgp+IjaocErR4VXFLKRjjyTFDdy3q9AT6yWDINyOd9MpkFproRP6/OBnXINLGCN36h9a3fpTatSvf323hg4zpSNVS2bEgpm93Tt2yAiWHJ55YispiNP4mND5uOYgL0/88+ZU=
Authentication-results: dkim=none (message not signed) header.d=none;dmarc=none
 action=none header.from=math.wisc.edu;
Received: from SJ0PR06MB8325.namprd06.prod.outlook.com (2603:10b6:a03:393::17)
 by SA1PR06MB8038.namprd06.prod.outlook.com (2603:10b6:806:1d5::16)
 with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384)
 id 15.20.5504.23; Tue, 16 Aug 2022 20:22:16 +0000
Received: from SJ0PR06MB8325.namprd06.prod.outlook.com
 ([fe80::da3:ad93:7ee6:7c17]) by SJ0PR06MB8325.namprd06.prod.outlook.com
 ([fe80::da3:ad93:7ee6:7c17%6]) with mapi id 15.20.5504.028; Tue,
 16 Aug 2022 20:22:15 +0000
Message-id: <e68ecbc0-f16f-57c2-2b3d-551262e7361c@math.wisc.edu>
Date: Tue, 16 Aug 2022 15:22:10 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: "Accessibility in Fedora Workstation" (fwd)
Content-language: en-US
To: Brian Buhrow <buhrow@nfbcal.org>, K0LNY_Glenn <glenn@ervin.email>,
 Karen Lewellen <klewellen@shellworld.net>
Cc: Butch Bussen <butchb@shellworld.net>, "John G. Heim" <jheim@wisc.edu>,
 speakup@linux-speakup.org, Milan Zamazal <pdm@zamazal.org>,
 Blinux-list@redhat.com
References: <202208161941.27GJf2ce015606@nfbcal.org>
From: "John G. Heim" <jheim@math.wisc.edu>
In-reply-to: <202208161941.27GJf2ce015606@nfbcal.org>
Content-type: text/plain; charset=UTF-8; format=flowed
Content-transfer-encoding: 8bit
X-ClientProxiedBy: BN1PR12CA0002.namprd12.prod.outlook.com
 (2603:10b6:408:e1::7) To SJ0PR06MB8325.namprd06.prod.outlook.com
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
X-MS-Office365-Filtering-Correlation-Id: 31714267-c411-4556-31ff-08da7fc5025b
X-MS-TrafficTypeDiagnostic: SA1PR06MB8038:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
 GVvFVClhvvYSsdtL7jJcS28ndoSB3WNyyr6TiMcCiXaMagdvLEKr/xI8ngT6N25iX7HbMLJLBwkSazDO2wrK9xDEuC9wexXhF3TTwfYVjUHtih6l6rwlL7mkuGHX5/72CgsQ8kq7zqi6uKg1nq+KvvuOZoFjET5QDiVaiQCBFFrvwQXs4klhBs7lgajOT6fDkTdENZWfzpoEZm5UJVsEEAXl56ZRoVcC5eu9H06afWA2hg88vnSRc5XKQvMCnxhNs5J2yAVvlOu1KkclrrrNKbyhOv25s21ifGha/vvuwkFld0prz75KSXNwi46BKsTYEy56dvsErj1T0A5l4qBtNOLoTBQ8Xr3fLe+lVSIeqdxy88D+oVeAMlqlpD5Wt9V0Y15m18GUTzR3iD/64CI94iSA3egbHoVwRMtMDUUSaB7XV2b6+CkIVU/ENH2dSUS8MTVs/CRGHgArTFKz7misj8u1ZP6MbZaqb1aRflpxXNwkECSSE0kLX9g1/MaT/je3URMOVupEIbY4mWnr0LiQEvFtts5AqMjv9QWB7IJtnAOOMK+kizHKMHK/8Vfzb/PlO9Y82unyAgwmr06xQq1rgkGj20z5OhyNZJcrM+BHQ+R1T9NEKvajhqQXP2Yk6XvlCKSxeMe6UHQfh1wwt8D5jkqsvv82ocv93kM99Q0ewn2WMIytsuQN0xzkIeIWWndYzjMuORcSTbRHPGqa+DBRYO3AGkDxR/kiup4T1G5E4wvGfTkzoHCHqyboL5+f47StEFm2mMHjXy1Vq+UrseKfHkYJvnDjK5AQFlwh1FLsg4aBYMCBfgMqQgJxDVigMuMr2TVkIIbxhTbXMk1/NClHEw==
X-Forefront-Antispam-Report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR06MB8325.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(396003)(346002)(366004)(136003)(39860400002)(376002)(786003)(31696002)(86362001)(186003)(2616005)(83380400001)(38100700002)(5660300002)(75432002)(8676002)(66556008)(66476007)(8936002)(4326008)(66946007)(41320700001)(6486002)(478600001)(41300700001)(53546011)(2906002)(26005)(6512007)(110136005)(31686004)(6506007)(45080400002)(6666004)(54906003)(316002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
 =?utf-8?B?aUZjSWx1Y0QzUHF2dUJSME5uS1pJM08xalo4RURGMFVQWkl2MzFJWWJYdHpR?=
 =?utf-8?B?dXJTMThCMnlDOXJSdHdDNUlDV2ZrejhJbjd1M1JRNU90bTJ4VmFrQ2plZ2dk?=
 =?utf-8?B?eVlCWTFVTlFhUjIzN2xiNGNVVlZxVEhPRUR5ZVNVb3RiaitFOUFnTnVEbW5Y?=
 =?utf-8?B?emFOdlF3alBiTEpSdVd3a0xqUFdoQ1Y3OEI4ZkxSRFRtMHhWQ0NDdk9CNTcx?=
 =?utf-8?B?ejAzMW5TZ05BQ2VlOE5tdWlBWGM1dmFDdnFIajR6OCtCaGdGdVFWVnlsenNm?=
 =?utf-8?B?WnpnTzVscW9xQUFaY0Zjb2pBQnFWU2c4MmNRNWdKVEk5KzJ6OUEwa0U1TlJl?=
 =?utf-8?B?cUwwb2pEalkvRndTS1lITHZPazdvandXL1RXWEwyVTZQWlZRZWVYT0xveGZ3?=
 =?utf-8?B?MmMyUHJWcHhjM1pzWjR4QllDMERyTmk5ZjQ3b1hrMUlNdU8xa0lxZWRkditL?=
 =?utf-8?B?Vk9yZng2cmJBS1QrWkJFd0FCci9Cd3MydFFaeGVJdE1LNEozS0s5WVFLanhO?=
 =?utf-8?B?NGIybjk3M3pRUld1b0wxRzhjUjZNbzR4MUZCZW5YNWRhSlJuamZDdnFJM2gw?=
 =?utf-8?B?SnVpWCs1Y3JUTndIRjROb0s1YURUN2JGeTRMZlY2RER6cXFraFh0YnhOaENY?=
 =?utf-8?B?ckdYUmxtRERXdVdEd2tycisxckloZncrR1lyQVpqTWtKTUVXdFNGUXRUTmFB?=
 =?utf-8?B?WlVmbE5wQkdMOTRmOHBUK3k0OGxiaFhUZnFTeTZYL1dZckpnQUsrOVNqOXdx?=
 =?utf-8?B?ZXI2ZTZHU0xlY2xmdHZqM2tUNzFFa0tzV3h5K2lUbWcxeTdEWWxVclZMc3Q3?=
 =?utf-8?B?aGlEcGdZMXUxdmM1eEVYeWhLcVJ5eGU3SUxZTjI3eWJGM0JzcTZNSlRGditU?=
 =?utf-8?B?ZkhjK3I4aGl4aUwrRVBXVmkrdG1wc2xiOUtHMytvVWxDV3BoTklHbi9PTWJP?=
 =?utf-8?B?OTFuamVNenZnaFg1SUdqemxRL1ZWMFdjOXR4QW93SUg4VmNMa1pOaWRxbUY4?=
 =?utf-8?B?OXl2OTNDUHgwN214ZkdYZFNyeEJ2a3VGUyt3Z2hBNldlSlcrUUtDamMrWW1w?=
 =?utf-8?B?STJlVEZoS0JpUXBnT1E0TXVNZ3ZnQThMZkxxZDVPbTcwbXI2cVc3Slh3L1lP?=
 =?utf-8?B?U2daYjRHNzRUQ2Jzb29mNWhaZ2JuWTVZN1lWc3B6aVNRMlVycjh3UmdzaFd4?=
 =?utf-8?B?KzdQejdGcVVFRHZ3eVpCSndUdWpHZmdpWlRLOFQxTHFwWEZjWkRtbmFhWUlE?=
 =?utf-8?B?RGdTNzI1TWpMTVFKdjM5SjBJQndobWxsa2p3ckYwWExuQ09kZXJpbmRuRHkv?=
 =?utf-8?B?L2JEeG95YmlRTE5tdkZ2cURLL1BGM0R3NnIyL01kTU1lSUJCZGNXMnNWcVA3?=
 =?utf-8?B?WWlQQUJFaTQwd3BPVE1kRmgzckNobUpiRzVqREhJV29TTUN0STc0Ni9xRXdJ?=
 =?utf-8?B?UG9maElVRnp2eCtxd08wSllsQ1NBV1AxVEJDdUR1NG0rbitHbVRJcEFzMXRv?=
 =?utf-8?B?RHhPeHdMZzRycldqNHB1TFVlWWdBZGNuSmRHeVQ5L3JJNmFkc1BlVXowL1Bi?=
 =?utf-8?B?dVJOUEFNQjBZa0g0WDV3b3l5SE9BUVpaRTNDNWNBQXZkb20vd2p4N2NkaWhM?=
 =?utf-8?B?dnVsZjU3ZVdUZ2Uvam1wYVFnMXc1REtEaVFPb2ZUSVRJYjZ0N0tPRVB0a1Rk?=
 =?utf-8?B?TERpYVY1c3RBTXh3eldKdmZKbTdkaXZPV256Q3d4bEQ1U3JveXZ3OGowY2J5?=
 =?utf-8?B?T2QzS1JXclczbzJNNUdUcHV2bml5Y3hnendhRTdobm5KakY4RG1uTWFDc3My?=
 =?utf-8?B?d3FOb1Yzb0c4NHRTdVJQNklOU0c2UnBPTndsbkMrQ001NVNjU1NaWlFkVUMx?=
 =?utf-8?B?L1pnOTV4NjZBMHp4d1lWcCtCQ1pGNk9JQ1cyOVk3dXdFdE5DWkQwT1VJUFp5?=
 =?utf-8?B?azNRNzkrdFQ3aVMzOHpzZ2ZIOUlDZUJwczhvaytHbEwzYmVvRWI2b2M3cmRs?=
 =?utf-8?B?NGt6Zmt6bkJrOFVaL3hXdEcwTmZKT2YvdzFVTnNGOWk5WUV0YlZWVW5ZZnc1?=
 =?utf-8?B?VGZDNDJsaCtIZzc1bmNJSVFqaFRTZ3IrZVRXREtVTFVpckFMM3pzVnpVeUFq?=
 =?utf-8?Q?wn37qpeQdWn83uCddMN/SEFaw?=
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id:
 31714267-c411-4556-31ff-08da7fc5025b
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR06MB8325.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Aug 2022 20:22:15.4286 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName:
 lef9kWnIj143gvdfT7PXgycc+xJvSKRd8+Eytbk5ihACStrfIEvLrKVLlUyHNgvJ
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR06MB8038
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Brian, this is why some people call the NFB a cult. No matter how 
clearly wrong it is, they never admit a mistake.

Think about what you are saying. About the time this controversy was at 
its height, I was volunteering teaching elderly, visually impaired 
people to use a computer. Imagine their reaction when I told them a 
screen reader for Windows would run somewhere around $1,000. 
Essentially, you're arguing that those elderly people should pay a 
$1,000 tax in a effort to keep Freedom Scientific profitable. Do you 
know what $1,000 means to an elderly, visually impaired person?

An effor, by the way, which was doomed to failure if it was needed at 
all. Free screen readers were, and still are, the wave of the future. A 
free screen reader for Windows was coming anyway. Linux, Mac OS, IOS, 
and Android all have screen readers built into the operating system. And 
don't say these developments could not be anticipated. I argued like a 
bulldog for them.

PS: VoiceOver for MacOS is absolutely not a point in your favor. First 
of all, people love VoiceOver for MacOS. I doubt customer satisfaction 
with Jaws was ever greater than that for VoiceOver. But more 
importantly, the mere existence of VoiceOver shows the flaw in the NFB's 
logic. The NFB  simply didn't have the ability to protect Jaws from 
competition from fre screen readers.


On 8/16/22 14:41, Brian Buhrow wrote:
> 	hello.  I get that this is a list for an open source project and I am a strong advocate
> for open source software -- I too make my living using and working on it every day. In fact,
> I'm writing this using an open source screen reader, yasr.
>
> 	Yes, we got many of the details wrong in terms of how things have played out over time,
> but I think the over all concept was more or less correct and I think the jury is still out as
> to whether we were completely wrong.  With the exception of Linux and the BSD's which are
> completely open source, the screen readers available today for commercial operating systems,
> i.e. Windows, iOS, Mac OSX and Android, are totally dependent on the accessibility APIs the
> vendors of those operating systems provide.  If the data coming out of those APIs isn't good or
> if the APIs aren't performant, then the screen reader experience wil be terrible regardless of
> which one is in use.  As I wrote earlier, Apple has already shut the door on third party screen
> reader  development -- it's VoiceOver or the highway.
>
> 	Microsoft has made the argument that by building Narrator, they can learn how bad their
> APIs are and improve them for their own use, as well as the use of the third party screen
> readers.  This is a reasonable argument, as long as they're willing to continue sharing those
> APIs with third party screen reader developers.  But, if they decide they want to go down the
> road of Apple at some point, third party screen reader developers, and their users, are out in
> the cold.  That is more true today than it was, say, 10 or 15 years ago.
>
> 	The irony is, and I'm sure many of the folks on this list wil disagree with this
> statement, that in some way, the argument we made about these concerns to Microsoft helped spur
> the development of NVDA, a project I thoroughly endorse.  Microsoft has been a very large
> contributor to the NVDA effort, something they did, in part, to allay our concerns, and to show
> they support open source software.
>
> 	As to my comment about the jury still being out on the issue, Microsoft continues to push
> Narrator forward.  And, based on discussions we've had with them recently, they are discovering
> just how challenging it can be to make a screen reader work well.  It is my perception that
> they are still toying with the idea of going down the Apple road in some of their internal
> discussions, but that they are coming to the realization about how bad of an idea this really
> is.  It is that realization that gives me hope that we will continue to have choices when it
> comes to access software on Windows going forward and that the Linux companies, i.e.
> Cannonical, Red Hat and the others, will decide the best way to leverage accessibility is to
> continue to improve the access software  that's already out there.
>
> -Brian

