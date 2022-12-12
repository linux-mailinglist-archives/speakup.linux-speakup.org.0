Return-Path: <speakup+bounces-912-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 5DEB564A4B2
	for <lists+speakup@lfdr.de>; Mon, 12 Dec 2022 17:20:43 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=math.wisc.edu header.i=@math.wisc.edu header.a=rsa-sha256 header.s=selector1 header.b=IbryugSv;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 912A438283F; Mon, 12 Dec 2022 11:20:42 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 6D861382823
	for <lists+speakup@lfdr.de>; Mon, 12 Dec 2022 11:20:42 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id A4864382838; Mon, 12 Dec 2022 11:20:32 -0500 (EST)
Received: from wmauth2.doit.wisc.edu (wmauth2.doit.wisc.edu [144.92.197.222])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 88666382822
	for <speakup@linux-speakup.org>; Mon, 12 Dec 2022 11:20:31 -0500 (EST)
Received: from NAM11-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam11lp2168.outbound.protection.outlook.com [104.47.58.168])
 by smtpauth2.wiscmail.wisc.edu
 (Oracle Communications Messaging Server 8.1.0.16.20220118 64bit (built Jan 18
 2022)) with ESMTPS id <0RMS002RIDE40930@smtpauth2.wiscmail.wisc.edu> for
 speakup@linux-speakup.org; Mon, 12 Dec 2022 10:20:28 -0600 (CST)
X-Spam-Report: AuthenticatedSender=yes, SenderIP=[104.47.58.168]
X-Wisc-Env-From-B64: amhlaW1AbWF0aC53aXNjLmVkdQ==
X-Spam-PmxInfo: Server=avs-2, Version=6.4.9.2830568,
 Antispam-Engine: 2.7.2.2107409, Antispam-Data: 2022.12.12.160917,
 AntiVirus-Engine: 5.95.0, AntiVirus-Data: 2022.11.22.5950000,
 SenderIP=[104.47.58.168]
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LOl3lObdBpjafpFsxqBvzrhHtmM3F8cddaCYMxoOuETipIKmPwCNI4TKeNfuqm5BxItjFQc59HFiKfJ6OJgzM21G8IrZmSQibOLRkm7h+2imZKk8z/sxfOMXc9WBjj+cNgJPrhn30OAKw38ZfkqHnoQiqvjJivTa7T0X1jyvhFOt68opnScBc+DBociaA+9YdWzpxQmtcjFXx8lhM/HR8YlzAIIH4RxLfjE8KTGXu39eUEjHo8VeH/BTuN1oL8bSTdXPkw7VgKVykHqQ5bY8nxf1gBkHAjbrPfK/T+3ZylEhliQIhyeZ3tdQxjmwASOBvfnE7c96i+BoP7I0OX8Scw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LwT8pECsAMw/bsCLA1XF2ha0Jgc6PE60OMXMEQsv2dk=;
 b=AkSVOXhi505tOB0BsULpszYv81bmT/dNJGm2YpAt/OH6DMM0kivlfiMW5QtVle0bg3X0Y7Fb/paxfgrjdMuh874uJHF6QFWyvuv2lClxW2K/zyTpoSw3CJMLmIeGUIXKwn4d+zDflBvcDMbXnQmR+qXFqkXvLPgf+ROUDiYZSFnfJOqIxf/G0IgzH8gDovqKy/qsdvJ0IgQGIZCGJeW5EwCdi1LKT4cBM+GP+Miya3ZbF8iJlaYd4TW2Tmumk5ahcVKIcLtArW44wPW6g2RJmSqBuJuJSzYRemyvES/wAhg33r13+j/Laoob0BSq0B0bOL45fH/D1jsvlGyXAaK70Q==
ARC-Authentication-results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none header.from=math.wisc.edu;
 dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=math.wisc.edu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LwT8pECsAMw/bsCLA1XF2ha0Jgc6PE60OMXMEQsv2dk=;
 b=IbryugSvLwiWkScFplbr56/rTDQY1n+JLKfHYfkwSn25K8KybefaWC+HgW10cnNznWQxJAO8XwMifoiFDnScOi/yhxdlpmVQDxIx8FXpD4eCpLfKPvT3wInWZjDGhPnMDU7mtmv3nS9DsPsbUmrEY1fRHCGmR4kx9QIMs3EWX0Q=
Authentication-results: dkim=none (message not signed) header.d=none;dmarc=none
 action=none header.from=math.wisc.edu;
Received: from SJ0PR06MB8325.namprd06.prod.outlook.com (2603:10b6:a03:393::17)
 by DM6PR06MB5659.namprd06.prod.outlook.com (2603:10b6:5:3b::10)
 with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384)
 id 15.20.5924.9; Mon, 12 Dec 2022 16:20:27 +0000
Received: from SJ0PR06MB8325.namprd06.prod.outlook.com
 ([fe80::e991:dce9:1f68:fa06]) by SJ0PR06MB8325.namprd06.prod.outlook.com
 ([fe80::e991:dce9:1f68:fa06%8]) with mapi id 15.20.5924.009; Mon,
 12 Dec 2022 16:20:26 +0000
Message-id: <e1d24b63-a7af-6752-a775-29c90d7405c3@math.wisc.edu>
Date: Mon, 12 Dec 2022 10:20:21 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Subject: Re: Installing Ubuntu Server
Content-language: en-US
To: K0LNY_Glenn <glenn@ervin.email>,
 "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <000701d90dba$a449abf0$8bffa8c0@Win7VM>
From: "John G. Heim" <jheim@math.wisc.edu>
In-reply-to: <000701d90dba$a449abf0$8bffa8c0@Win7VM>
Content-type: text/plain; charset=UTF-8; format=flowed
Content-transfer-encoding: 8bit
X-ClientProxiedBy: CH0PR03CA0248.namprd03.prod.outlook.com
 (2603:10b6:610:e5::13) To SJ0PR06MB8325.namprd06.prod.outlook.com
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
X-MS-TrafficTypeDiagnostic: SJ0PR06MB8325:EE_|DM6PR06MB5659:EE_
X-MS-Office365-Filtering-Correlation-Id: e3735a6b-452b-452e-ab13-08dadc5cc74c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
 tLgqNp/pjfo4W4rcBQx6BDGpueUWo/wCSUkTHmO1PujoBrM3/MgyJlnURjC4wfFvwZfyksobVdiwh8kiC/QgsV9K4uNTUnmBbMuXUYNetyH7mmYIrkDur/+Mt+YtW/WTkW/GMh4J7J0k64fjVJt7QYy8vdwz9G2rTt98urvXEgsuiwWtje+EGqRKR3GZebJjfXJ+NoOWpcFP732Ro4olaRaWn6hK8yzrsCa1linB+QD/cWHF8Zvy39OP3qrH/F0Y/+SkQcQoO1jlKU8SR+DL947T+hIHsonqEtIaofMNdW8wlfBJTZ+3/gBpMBMGS5ugXBISjRNxSE7+Rp9tXdnZfBrngLtekRKx/sbq/Pqs92gfc33b3fpfhNYhl+7CCwNZgpc1n1vrFbgrz+LLvFOI3HFkoiTAcI5q2TR2ToWBVzOAT5yxpe5P3QgLlLeGAHEC316h0WCU0SvmPRyFlaw9vbn+6+RmPewV1vl90P1lPCJ0uxc6nk9wcBAalyC9OIsZoeWPFTF5YQOHXZDFhtwAl4pauiG7imcmLiox1yWmfdTQVzWMz5Rf02QeKMcS6S+UedJHKC/6R/bsr4CAowb7bkIGuGcj85ADtTobkJasV/yIW0r4D+XLcY3H9VaCUPoAk7ipKGqKNaZl0/ONnUYtyA8pCW5ULTaaty0TRxNrsS7VXQj7bXW/+iA4kl7SuA5lqHmF+BFdh1eg/9pVIEfB7HPsW09bL5+1jf8Krq9ux0w=
X-Forefront-Antispam-Report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR06MB8325.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(346002)(366004)(376002)(39860400002)(136003)(396003)(451199015)(110136005)(7116003)(786003)(6512007)(2906002)(316002)(186003)(31696002)(6506007)(26005)(6666004)(6486002)(478600001)(31686004)(53546011)(38100700002)(2616005)(5660300002)(86362001)(8936002)(3480700007)(83380400001)(41300700001)(66476007)(75432002)(66946007)(66556008)(41320700001)(8676002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
 =?utf-8?B?VU1LY1ZBYTYzUmowM2luQ3BLdzBWVEk2VkYrMlZ0RXdOOXE4SmlPMTM0M0NR?=
 =?utf-8?B?QndGeWg4TXd0R2dNbXpRNjdieTBEcFNoYnVYcHBWUUh2UzN1YlQwK1RhVGtp?=
 =?utf-8?B?UmhmUm5hSTJEUzZ3WWJtbjlWLzQzZzhiQzVmeEpuN2JaekFLNzdUUHhZdXNO?=
 =?utf-8?B?YWM3d2dSZDdJcFF0QU1Wc1diR2wvOXlZeXpmcE5RSjJ2T3VXbmlPSEpwNkxq?=
 =?utf-8?B?bkRBbDdqL295c0IwS1JLR0NoeHQ3ejFmWWNPSjljanpVVnBTOXQvVzB4V0Jy?=
 =?utf-8?B?VjQxS3MwbGFDYllXVGk4aTlIeXNUWENCME4xaDgwdHMwN1BEYU9YY0ZqTEIy?=
 =?utf-8?B?aGJvMXpXTERNbDZMVTJoUTJ0dDhkeS9HR3Z3Yy9Jb0ljU3RSQUl6MXV1bGRk?=
 =?utf-8?B?NmUrbEVvRW9GL1VUZEg2anpLSzczaHlmcDJoNForb0JFZ0NiUjVNRkJSNnhN?=
 =?utf-8?B?RzlmaHljNVdFZWFjaDJYVjRySHV5R05aKzd2dHJUQklVTTkxMFU0WGxHbExp?=
 =?utf-8?B?dlRaR1drNVNiK2pSb0V3dkhkU0dpQnB3NlJ5SmZIQTliMzlMUmx4ZDMyemtv?=
 =?utf-8?B?Q0h6Rk12cno4ZVJzU0NFWUFPTDVqbHlLcjdKQzM1akw3Y21rQmY1cGhqdW54?=
 =?utf-8?B?TDJhcnJVdjh6VXVMamhWK3BtZEp6Sk9RRFNpTFArNG9Wd1cvWTB1MzNZLy9Y?=
 =?utf-8?B?R3J1K0x5RzVQTk91dHUwNTNCczdTR3BWQmswQlprVytDbVh3aWwwT01iVFJM?=
 =?utf-8?B?WXhuVk9yTFhlNmwxVWxBSG9wcHZ2aWQ3MDJuNXZRM2tXOVpJUkRlTUxxaGZo?=
 =?utf-8?B?VkZ1dVVGZjFabkpiWkcyMDFsejlrakFnbW1KSnpNOWVKZEZFc2xHd2xtNjQ3?=
 =?utf-8?B?SnBMeTVGeWN5ZWhZRkh5SzFSeW1WdGVBcWxnaitRdnVtTHlPNTNLd2YzWXVh?=
 =?utf-8?B?U0k5YWtvR05MVFpkeWNWalJnZHRMa1pVTFZ5VUFvdVhvWkROUFB3b0prVS90?=
 =?utf-8?B?dVJCRVJNemJHdmVIVmk0bE5uMlV3UG12b0hGRXZTbktMdWZKd1NMaVFkcWE0?=
 =?utf-8?B?a29QQlV5NXFCQTZoTWRFM1VjRFhXSnprcU03K1RVaFpuYW9XRlhLZzRNNGJo?=
 =?utf-8?B?OE0yQ21vanpSbHpZb3owcVU2SzQ5bHJ6V29lMU1pYlNjQTFUaW5SMEdjTXJl?=
 =?utf-8?B?eFZRQ1hvTmtjOWF0NGZiU3QvVjlyL21oUFZ5VHhOUlpJRUVmQW1Ma29yNnhJ?=
 =?utf-8?B?WGZIQzVvR0ZmNnZ4a0p0YzVWL1h3c3BSa1IxNU5QVWNZOUpoSWJmZ1UxNGEy?=
 =?utf-8?B?OFRsNE4vU1EreGowd2lURmdsVXlrSmU1OTE4OWdLci9tMVVQWXc2Y3RDbmcy?=
 =?utf-8?B?eVA3WkFUU1lvQUJMYW1mTGphS3EvSjF6RVhCSmszQXMxV1BiLzEwdGhFMUwy?=
 =?utf-8?B?clczMktpVWxqZklTWUlEM0VGNlpuK2Zrem9tb3hYUTRQcVFCVmhHMytvdDFB?=
 =?utf-8?B?c1NGN0ZPdEwxMk96VHVmd2dyS3BiKzdWZlBsUFRab09GT1lid1pLVGVnQjlG?=
 =?utf-8?B?aFVBUjdYOUJOSnE3T1RKUWdpZEN2aWlHZHhhY3VWeFd1ZkpPNzdpa3N5ODdk?=
 =?utf-8?B?MENzanJwcXA4eHpaY3RhRlpuc1o1Vjk0Skh1ZzlSV2NkK0M1Z3pVVm9XbXNy?=
 =?utf-8?B?ZkZKVCtTbWhCbDJlMXpHUk9qWkZIdXVqS0l6RWozSjUvOGl0MzlVZ1ZZT0w4?=
 =?utf-8?B?dWNRWWloNWVaZEtUNVQ2Syt3TkR2MzFyaFVLenMzVVZoRStxT29jeTFyejZW?=
 =?utf-8?B?bGF1R2F5dzBGTk5JcUV6ay9WYkgzdE5MOGl5MmliSWxQejNvVytVUGZQSzUx?=
 =?utf-8?B?UGpVM3pKMnJNY0pKUVdHdFdlY3lhR00wWGhCZGNlUDE2S3Z4NGFGSkxYOEZP?=
 =?utf-8?B?VjJVUUpnS1ptbExKQ004a1pyT3pHY2pNRWJZTVRIYlZFRUZaWllUNFdJaDU5?=
 =?utf-8?B?d2doa1pWckJ3VEp6NjJjTmRlN0htMzBsWGs2SnNKVzh5dldwV1AvNXVEU3h6?=
 =?utf-8?B?eS9EYTNQOWRCQXdjZGhKcFVQR1FsY1FLbUxIbVZhTzNBcTBPMEUwY3AvM3B4?=
 =?utf-8?Q?h/l5Li0NZVZyfx5qV3v2sh0e8?=
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id:
 e3735a6b-452b-452e-ab13-08dadc5cc74c
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR06MB8325.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Dec 2022 16:20:26.9044 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName:
 1w7witeHMKDGsrHIOLpv8dPjhp6jy84lZDgjRIaNMylBh7wR60ehAZIjfzjoAKka
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR06MB5659
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Three things:

1. There is very little reason to use Ubuntu Server. It is really a 
holdover from back when you needed a special kernel for servers because 
of things like memory allocation and drivers. These days, the Linux has 
dynamic memory allocation and module loading. So Ubuntu no longer 
creates separate kernels for servers and desktops.  Installing Ubuntu 
server can save a small amount of disk space and set you up with a 
character interface. If you care about those things, I would recommend 
using Debian instead.

2. One way to do an eyes-free install of Ubuntu Server is to use their 
auto-installer. You can configure a text file that answers all the 
installation questions. It is non-trivial to do this but once you have 
it, you can use it over and over. If you are setting up a Ubuntu server 
farm, this is what you want.

3. Another way I have installed Ubuntu Server in a virtual machine was 
to take screen shots, run them through an OCR program, and then answered 
the questions one by one. The Ubuntu Server installation doesn't have a 
huge number of questions, usually you can just take the default. This is 
not going to be easy but it can be done. For the OCR program, I would 
recommend gocr. It seems to work way better than tesseract on screen caps.

PS: Back when I first started using Linux, you had to compile your own 
kernel. That was just part of the normal installation process. You had 
to configure how many file handles you wanted and how many simultaneous 
users you would allow. You had to specify all the drivers you wanted and 
if you left one out, your machine might not boot.


On 12/11/22 17:45, K0LNY_Glenn wrote:
> Hey Group,
> I thought I'd test out Ubuntu server in a VM, using VmWare.
> The first problem I noticed is that there is no way to call up speakup
> because it is configuring a few things, like disk space to use and user
> group and an account.
> When I have installed Windows, I didn't have trouble with this because
> VmWare took the information from the running windows system.
> Actually, I'm not sure how one would install Ubuntu-server non-visually
> outside a hypervisor.
> I was using:
> Ubuntu22.04 64 lite server
> I might be able to get through the VmWare installer, I thought I had it
> using the Be My Eyes app, but I couldn't tell if I was at a prompt, and
> speaker-test produced nothing, and the soundcard was checked for the VM.
> I also have Ubuntu Mate on the same computer in a VM, and sometimes I have
> to enable the soundcard again to get Orca talking, but that didn't happen
> here.
> Just hoping someone has installed Ubuntu-server and gotten speakup to work
> on first boot.
> Glenn
>
>

