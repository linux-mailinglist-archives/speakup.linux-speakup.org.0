Return-Path: <speakup+bounces-913-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 8287164A557
	for <lists+speakup@lfdr.de>; Mon, 12 Dec 2022 17:55:45 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=math.wisc.edu header.i=@math.wisc.edu header.a=rsa-sha256 header.s=selector1 header.b=XxAupdga;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 0552238285B; Mon, 12 Dec 2022 11:55:45 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id D5142382823
	for <lists+speakup@lfdr.de>; Mon, 12 Dec 2022 11:55:44 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 1845C382838; Mon, 12 Dec 2022 11:55:35 -0500 (EST)
Received: from wmauth1.doit.wisc.edu (wmauth1.doit.wisc.edu [144.92.197.141])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 58B0E382814
	for <speakup@linux-speakup.org>; Mon, 12 Dec 2022 11:55:34 -0500 (EST)
Received: from NAM10-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam10lp2102.outbound.protection.outlook.com [104.47.55.102])
 by smtpauth1.wiscmail.wisc.edu
 (Oracle Communications Messaging Server 8.1.0.16.20220118 64bit (built Jan 18
 2022)) with ESMTPS id <0RMS00DEUF0JHI50@smtpauth1.wiscmail.wisc.edu> for
 speakup@linux-speakup.org; Mon, 12 Dec 2022 10:55:32 -0600 (CST)
X-Spam-Report: AuthenticatedSender=yes, SenderIP=[104.47.55.102]
X-Wisc-Env-From-B64: amhlaW1AbWF0aC53aXNjLmVkdQ==
X-Spam-PmxInfo: Server=avs-1, Version=6.4.9.2830568,
 Antispam-Engine: 2.7.2.2107409, Antispam-Data: 2022.12.12.164517,
 AntiVirus-Engine: 5.95.0, AntiVirus-Data: 2022.11.22.5950000,
 SenderIP=[104.47.55.102]
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FF4ZTv5FHZr2E3az1Z7OOYmdAgOTPE5CZET25wj78styBtHvo8vje1RNbb5FNgoNVMmHIH6tsNVzksHJEvd4H0lxm8E9grh86vxIJkr/rUjd9Jl1r4562XrbbjcID5E0fczMLlFk7HI6LWpL5FZjhg4MoweU6SYHh9bqfTjh7RKAgQJlvQKYezFuMb92YwTpPL5oUzGhToWUFXBlbbjpnD30kAi0hg4pbI3PqCxwZ7V41B+k20fw/9ozvmuAItv9YXmJs7AFb/02JqpzqDpZd+gLSBrtDThL63NCOvygtuf7j8GzAR3CrWmrir6t64Lf2Zb2Jzchlzs8l0Hm/QZZ1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QqH2B6ZTxFPxo7yYYObLQeok+QKzmQDf0aHrP/+VWtI=;
 b=bbHMaXszIoJSPLFbzn1krmVdGoDPgTglD4bnvDbYYffYX49nWAihILcsK5VtiKTAB3F+qxmxfKv4hn6Pj+0mkcFOkKpOMekpx3/9Bm1Yeb67hmrv78jIiAiB+rEjIUvyLpfQ9jl1opPQffQHuDZzolxofo2CIJvdJ+WE2ARwdvZ4w3sgujmsTWkpQwDBQh+E/uGHgRXAGnhUpiZ16DycvW2va2pN0U1ySBUmuAjObam//f1H3ZU2qhLq8OCOpCntjJyJEInkiGnoJCWE7wsTDo4AWIanHIsYuTmrJ2bXk6z2n5yFZK2i6fkJ8+2jVwN/HisDt+OCrPA8yMOweJQd1w==
ARC-Authentication-results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none header.from=math.wisc.edu;
 dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=math.wisc.edu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QqH2B6ZTxFPxo7yYYObLQeok+QKzmQDf0aHrP/+VWtI=;
 b=XxAupdga2eBeN8t/reJTeKzoAuVkYd0+wlizSgznSEg0yCkQd3qhx4veVpzxfL7Hb3R/a69dSNEs29D9SxH+sYEib24qUxGdrdUss5G7j9glcB1575nWeSw1TXNrRxsjPjrztLc9Y3yiMvSk/hvKQblVXYcFWdr7dnmNc2r+o2Y=
Authentication-results: dkim=none (message not signed) header.d=none;dmarc=none
 action=none header.from=math.wisc.edu;
Received: from SJ0PR06MB8325.namprd06.prod.outlook.com (2603:10b6:a03:393::17)
 by BYAPR06MB5144.namprd06.prod.outlook.com (2603:10b6:a03:c2::29)
 with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384)
 id 15.20.5924.8; Mon, 12 Dec 2022 16:55:29 +0000
Received: from SJ0PR06MB8325.namprd06.prod.outlook.com
 ([fe80::e991:dce9:1f68:fa06]) by SJ0PR06MB8325.namprd06.prod.outlook.com
 ([fe80::e991:dce9:1f68:fa06%8]) with mapi id 15.20.5924.009; Mon,
 12 Dec 2022 16:55:29 +0000
Message-id: <8472dc26-01a1-e0fc-0247-60b6b6581a06@math.wisc.edu>
Date: Mon, 12 Dec 2022 10:55:25 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Subject: Re: Installing Ubuntu Server
Content-language: en-US
To: K0LNY_Glenn <glenn@ervin.email>, Jookia <contact@jookia.org>
Cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <000701d90dba$a449abf0$8bffa8c0@Win7VM>
 <Y5Z7cfzORuPgHUeo@novena-choice-citizen>
 <002001d90dc4$dbf1d370$8bffa8c0@Win7VM>
From: "John G. Heim" <jheim@math.wisc.edu>
In-reply-to: <002001d90dc4$dbf1d370$8bffa8c0@Win7VM>
Content-type: text/plain; charset=UTF-8; format=flowed
Content-transfer-encoding: 8bit
X-ClientProxiedBy: CH0PR13CA0026.namprd13.prod.outlook.com
 (2603:10b6:610:b1::31) To SJ0PR06MB8325.namprd06.prod.outlook.com
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
X-MS-TrafficTypeDiagnostic: SJ0PR06MB8325:EE_|BYAPR06MB5144:EE_
X-MS-Office365-Filtering-Correlation-Id: e5024d64-0482-4363-d4a5-08dadc61ac6b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
 FZIyKY8ZoHLNkoDyXfI+abxLOe7jdoivI5J0EDEAfw0bigszDEJPNgkUJwiXb7upfcLK9L3IoA/ONDsEt2ftDJzDrZj6BJyI4DNPoxWZdxlwro41KUGFCnOq/PLIVkxSlbFcwfel7cYet4KqNewUAt4sK9kWW09qHxdthA7oZ4jt09kKG3OQ6TU6XPmmKBEMlra/G5N00ywyO1RhNobpPASYBHvoYbJCjiunLTgrd2MLf9jMVIXZBec8nBBCkw5VbI/Hb25JXwELNMqLDxKiYtfstp4Uu663AtJzCSEmRT/8mydpnR4+AvHcCDZQxY/Hvi7puuJOsJ8MJE3tr20nBpsGmMzy+91NKkUj/RDx56Oc7sNBYv3RFOJwzAgHUxI2KxI3vt31HgObzxBw8UTsUJZSQ1Ml6mJ00uY/J7Q3QKnz71cVPclk8qTBItjkBbovC3ruieHx3diQEcloDzyHuXsVn4FoPVP5NXA3dJg7kHGwUhD8+wZ619y3kB2bnh8Rds74BvHRjUQ156d75Kxczl6o6axACnBLJFTuJpyeKvQZ0ZEMP0P+RwL1QjetYWDZblgyBvbBTGDVzT1Tr4DhHF+J/TJjxNE/gS9HEmPTTs91Z8/Jw2HTQsy2SEqiYNTXiu6HBVqCnlfHdOaGhJIXbxwQmRWwfD7MOv2XVdXDBxXAdRETPm8rhuALXNWs/8vd86QlO20s9koB98FVKVsHBNvx0GNCz++K12hucUmETeo=
X-Forefront-Antispam-Report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR06MB8325.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(396003)(376002)(39860400002)(136003)(366004)(346002)(451199015)(75432002)(31696002)(86362001)(2906002)(478600001)(6486002)(6512007)(6506007)(6666004)(41300700001)(7116003)(26005)(186003)(8676002)(110136005)(66556008)(66476007)(66946007)(5660300002)(786003)(316002)(8936002)(4326008)(53546011)(38100700002)(2616005)(41320700001)(3480700007)(83380400001)(31686004)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
 =?utf-8?B?Tnd4eHhoMVVGMDRBaFhZU0RmV2ZIQldDNTYxejhjUU5WN0F1REVzRkI5QkZW?=
 =?utf-8?B?VStUQ3hpREhWL0dReFhnd04yNndRVVhHVkZLekZSMWJ3bUFSQWVFc29YeS9H?=
 =?utf-8?B?SGRFcmJlZmxSbU5kMHhmUzRwS0hDcG1yOGpDMWVuYmNFYTJlK0hkSzNrV2xq?=
 =?utf-8?B?a0gxNE95K0dPYmZFaDBWU0ZTS01YSWhKZzdjWnVjWE5rVnJPN2hsL2Voem1X?=
 =?utf-8?B?ZlIvM0JVWmIrMWVYUjlmSFJiV0Z0ZnNvZDFjOE9id0kzdGRIeUxQMFphSmlH?=
 =?utf-8?B?RkI2cnk2cnJ5NElQUzFKRWtXQ1huY3RXdzJmcXFYNk9vdTZMbUtwSjZDMS9i?=
 =?utf-8?B?SmkyS0hBT3M5bi9FWVJtTUFzZ21KRythci8zcWNLVE1KT2N2aWx5ODcyS3l6?=
 =?utf-8?B?V3c3Q0hpTk8xcXhqUkNMQitFalljVUo1bElyeFdyY0wveCtlSC9MZi9LVEVV?=
 =?utf-8?B?MEJVZzJ1bUZidDRTMWFldW5jNnRKcjZQZC9tZk1rS1JNWU9vRFBmMGQ4Z05B?=
 =?utf-8?B?WWdFUUp3c01hcksvZEZQVWdvMGV1bCt3c3dmWUVaSkh6dDlMbnhPNlMzL3M0?=
 =?utf-8?B?YXN0WXFzem05ZTJRVk9rWnlyTlZVa3NrSzZIODNLL0xTZlVRL25rMHAwMm4r?=
 =?utf-8?B?L2tobnNZcjUyMnhpNXNJckZqaFZNaE9RVEtuZklERnU2Z1VLYkVzQWdoMDNT?=
 =?utf-8?B?bW10ckFhZ2gzUStLQ05ld0YxWWUrMUo5RFNwcmtzTHc5blNLeHV6WlJCL2xw?=
 =?utf-8?B?TUM2akhYNzNsWElvSmk5QW5qWURwaGE0S20veVJ4ZGFpOFZlVUJSQzE1VEND?=
 =?utf-8?B?Sm16TzZGQzR1Mmx2cEZYWS9zZHRxUVd0OGZSNDJQdXBIMHg3WERTbEtXSEZw?=
 =?utf-8?B?M1RRZUNVU09WL1Fqai9pWUpuay9pNm9pYmR3NHN6U0Zlcmtrblk4UkdOVEtY?=
 =?utf-8?B?ZGtQaE05QXhwcFhKRDZET1BDOHllMU9DOUtOdHd0TU5GTGlGQ1VZbFp3VzBY?=
 =?utf-8?B?NDNSVnUwMi9hY2hMWjUzb2Y4NWRmZUFKeEZ2aXM4YngvVXRUQ1pyTkNtSGpr?=
 =?utf-8?B?enNHK1ZnNFcvZnBXYU02ckMwMmhtT2g2UythUU1BeHRxUWV2U2M4YzFycmxk?=
 =?utf-8?B?YVNza1BHbHB1bm1aRUVwbVZnd2FwTElUbXJKTldzWmVKeDFlZkRueWw0VVY0?=
 =?utf-8?B?c0hMM1VZTUt0UkorYVV6ZjBLYUI4QXBtRHVTSVF1cGlnZGdTMUtSbW84cUtl?=
 =?utf-8?B?NjFCb1dnOUFvTVV4Q1gyT0k1RGRrSFFwQTVua2hqdFNjS3loRzdISkg0V0JZ?=
 =?utf-8?B?VmhsNEZ1b0h4ZlY1Qng4TEIvTTVmbW1qUThPQnV1RG54TG83WHp2azY3UWlm?=
 =?utf-8?B?TCtPQlllZnFJUlJQL2JwemU1czExbWlPbkh5QXNOOGdwZmp2TmZQaldjSmxO?=
 =?utf-8?B?bkVad0pkN3E1RFQ3OFhrOWZ4eXpueE1UT0ZuU1YyUWUwQjRsUFA5S3VlUHNQ?=
 =?utf-8?B?ZDdRMVFQdndwQnBCTFdFUHhicUdqZGxyMXFacTR6YmlmKzFva2MxNTFISjdX?=
 =?utf-8?B?L2FBaGVtWTBmWmJFd045TElZYlBoWkp3RGpGa3RnSWNMSGVVcm5zZVFveXE0?=
 =?utf-8?B?VTZkMDdqTW94K0lyS0N5RXdPYnhCVEdxVjFlK0ZaMmt0K3d1eUNkSGUyajE4?=
 =?utf-8?B?MkhlZkFraXRoMlpqQ2ZUMkUyUnFKNEtaeHFEVE9OS0c2MjhQRnVtbDRUbzZa?=
 =?utf-8?B?MXh5aTZJL1JRU0dYdHh5d00wSVovaEk2UWNBNFdXd3I3SkJaWis4dlpkVXVK?=
 =?utf-8?B?UVV6Z0tpWWZoNlRVRlFTUU9TZm56WHBIYXQ1cHdMVWhXY1UzK0t0TkZDOUtx?=
 =?utf-8?B?K2NHNFU5WWN0clZWTlU2MStyamN0VHVFNndXT09NTGJTTk9EK2l2cUU0b0VX?=
 =?utf-8?B?L3p0TG8vZTl5SXd0WVZSWVI0RnY0S1RPSlB4bjdxaDkzQVV3T05ybHBZOHYw?=
 =?utf-8?B?RzFMcVkxeFNaUVRZOEtuelY5M3NGNG0vWnE5ZzFkR0haaXhGbHlnbGdQQ1ps?=
 =?utf-8?B?TVVPcUoycGJUbU1uS1hhdXR0Vk5ELzcxdmlneTBKU3Uwa1lwN0sxWlYxdTFq?=
 =?utf-8?Q?ZRzwRBeJH8wKH3T9T7SDdvZiw?=
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id:
 e5024d64-0482-4363-d4a5-08dadc61ac6b
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR06MB8325.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Dec 2022 16:55:29.1219 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName:
 6SwXW2a+RFKfkxLbOK2Qfx76SdOJlc4ExCp0NthKqoPOkX7xn1D0S+AEqwsW0JZa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR06MB5144
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

If you're just doing this for fun, then I'd recommend not even trying. 
As I said in my other message, there is no longer a meaningful 
difference between Ubuntu Desktop and Ubuntu Server. The only difference 
is in the set of packages that are installed by default.

But if you are doing this for career advancement, first of all, good for 
you. I am at the University Of Wisconsin and there are Linux sys admin 
positions that go unfilled for years. I don't know if it is like that 
everywhere but around here, if you are a Linux sys admin, you won't be 
unemployed for 5 minutes.

Anyway, if you are doing this for career advancement, you should look 
into the Ubuntu auto-installer. I used to do this because I ran a 
Beowulf research cluster. All the machines from the giant research 
servers to the office desktops  had to be running the same version of 
Linux. But I can't think of any other reason to use Ubuntu on a server. 
If I was running a database server or a file server, I'd just run Debian.

The way the Ubuntu auto-installer works is that at boot time, you tell 
it where a text file is with all the answers to the config questions. I 
actually haven't set this up for a long time but, IIRC, I would boot via 
PXE and configure the PXE config file to point to what is called a 
kickstart file. Of course, this means you have to configure a PXE boot 
environment which is, in itself, non-trivial. All good stuff for a Linux 
sys admin to know though. If you don't want to mess around with PXE 
booting, you can remaster the Ubuntu installer ISO image instead. IMO, 
that is just as difficult as setting up PXE and less useful in the long run.

One last thing, if you really want to figure this out, I can send you 
sample files. Ubuntu totally revamped its auto-installer protocol right 
when I stopped using Ubuntu Server probably 10 years ago. I had to throw 
out all the stuff I had developed over the years and relearn how to do 
an auto-install. Shortly after that, I stopped using Ubuntu Server at 
all. I am sure I can still find the files though.



On 12/11/22 18:58, K0LNY_Glenn wrote:
> Hi Jookia,
> I don't see how, unless I was doing a VM in a VM onto my Ubuntu Mate that is
> a  VM.
> This is just running windows 10, with VmWare Player, and I have Ubuntu Mate
> desktop and two versions of windows as VMs too, and I wanted to try
> Ubuntu-server in a VM.
> I don't know if VmWare can run an install script, sort of like the windows
> answer file for a windows install.
> There may be such a thing for Ubuntu, but the next thing is how to run it
> during the VmWare install of Ubuntu-server.
> Thanks.
>
> Glenn
> ----- Original Message -----
> From: "Jookia" <contact@jookia.org>
> To: "K0LNY_Glenn" <glenn@ervin.email>
> Cc: "Speakup is a screen review system for Linux."
> <speakup@linux-speakup.org>
> Sent: Sunday, December 11, 2022 6:53 PM
> Subject: Re: Installing Ubuntu Server
>
>
> Is there an install via SSH option?
>
> On Sun, Dec 11, 2022 at 05:45:24PM -0600, K0LNY_Glenn wrote:
>> Hey Group,
>> I thought I'd test out Ubuntu server in a VM, using VmWare.
>> The first problem I noticed is that there is no way to call up speakup
>> because it is configuring a few things, like disk space to use and user
>> group and an account.
>> When I have installed Windows, I didn't have trouble with this because
>> VmWare took the information from the running windows system.
>> Actually, I'm not sure how one would install Ubuntu-server non-visually
>> outside a hypervisor.
>> I was using:
>> Ubuntu22.04 64 lite server
>> I might be able to get through the VmWare installer, I thought I had it
>> using the Be My Eyes app, but I couldn't tell if I was at a prompt, and
>> speaker-test produced nothing, and the soundcard was checked for the VM.
>> I also have Ubuntu Mate on the same computer in a VM, and sometimes I have
>> to enable the soundcard again to get Orca talking, but that didn't happen
>> here.
>> Just hoping someone has installed Ubuntu-server and gotten speakup to work
>> on first boot.
>> Glenn
>>
>>
>

