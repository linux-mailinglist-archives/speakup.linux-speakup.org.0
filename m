Return-Path: <speakup+bounces-311-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id D2B90414B26
	for <lists+speakup@lfdr.de>; Wed, 22 Sep 2021 15:54:13 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=uwprod.onmicrosoft.com header.i=@uwprod.onmicrosoft.com header.a=rsa-sha256 header.s=selector2-uwprod-onmicrosoft-com header.b=DCTIbuUi;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id D2E433811B7; Wed, 22 Sep 2021 09:54:11 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id B09F43811AA
	for <lists+speakup@lfdr.de>; Wed, 22 Sep 2021 09:54:11 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 9D2BE38097F; Wed, 22 Sep 2021 09:54:05 -0400 (EDT)
Received: from wmauth1.doit.wisc.edu (wmauth1.doit.wisc.edu [144.92.197.141])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 885DF380849
	for <speakup@linux-speakup.org>; Wed, 22 Sep 2021 09:54:04 -0400 (EDT)
Received: from NAM04-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam08lp2043.outbound.protection.outlook.com [104.47.74.43])
 by smtpauth1.wiscmail.wisc.edu
 (Oracle Communications Messaging Server 8.1.0.8.20210105 64bit (built Jan  5
 2021)) with ESMTPS id <0QZU006779A23H80@smtpauth1.wiscmail.wisc.edu> for
 speakup@linux-speakup.org; Wed, 22 Sep 2021 08:54:02 -0500 (CDT)
X-Spam-Report: AuthenticatedSender=yes, SenderIP=[104.47.74.43]
X-Wisc-Env-From-B64: amhlaW1AbWF0aC53aXNjLmVkdQ==
X-Spam-PmxInfo: Server=avs-1, Version=6.4.9.2830568,
 Antispam-Engine: 2.7.2.2107409, Antispam-Data: 2021.9.22.134516,
 AntiVirus-Engine: 5.86.0, AntiVirus-Data: 2021.9.21.5860000,
 SenderIP=[104.47.74.43]
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GyGSwSmrKJvYMivDhCgPpu6YlQxNAyeQYuhzi4AUrdF4UaCtZcXUnY5PAF0WK+gRjFUHtUxTyuqmeXiDdu4pQBGZQCNYKf0jLr1AjVaDcZc6TLlZH5xsN23DHpNWPu+cvQiovSPjGEzIcF+saV9AJh6nmMj+JujO5spLKPAAwVTYO5y+WcPYKUoPyE8VcE1dg3ZHOTleglEgWo6PD+R3dyKd51MRlc8ONRVDH19IPpFdOZlAyv+GfpGoWILecG6Zv1ZEoO2oXhqvw5SV090f9qHsscuXQXpEozNnHTebgYEaW0GHHl374UlOtcCursQqd+tqAKdM4vTuoi41dpLo2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=W2ums0/A8ymsjyhwSybsbASGINIb+EDC1zqDZZjwNU0=;
 b=f/obhla8ROPVxG0kCn4++V62EbT2+SZJJKJwmhJYOJaayzW9Dj5UBcm6SXlf9vVx4uoLkgsX/neTH2psllpcnu4QNM5ps7PbcQTDZZQBZVH1ciYdGFC+InuKxboWCmDQ7IbhdzB55b8uMYox7u2lNc8sdOkjX5j/BXxfIRCtaTY2oQMb7kL1qmlMB2EdCb6aaJylGt/y9bp+6WZco233OnknCkRKEeEXy9w1DbkAZpPtmwUVv/dbkxY0DgNB0K1jBe4SwX6gyqsvR4crgDMl7rx6W7bjAkjoAm8Py3Xnyg+xeuJ9QzDanTiPB6R7UmKTewXlXD2DiL3u3Qe5nyrnpQ==
ARC-Authentication-results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none header.from=math.wisc.edu;
 dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=uwprod.onmicrosoft.com;
 s=selector2-uwprod-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=W2ums0/A8ymsjyhwSybsbASGINIb+EDC1zqDZZjwNU0=;
 b=DCTIbuUitmzuE2EQFqy5ZQEmcKqrmCUhscdcyFNEqKN/sVRPaq8xjBvq5YPm8BUjprwd1b7mXImIvuKl5D78TqAFy3tIN7P7AjZKmQCdljqTSqRC2edTRsXE/4iajxsoPSs7zkyHjgvaGuW24lWUqQL7/FknzzC0p2AccpxumR4=
Received: from SN6PR06MB4991.namprd06.prod.outlook.com (2603:10b6:805:c1::12)
 by SN4PR0601MB3741.namprd06.prod.outlook.com (2603:10b6:803:44::29)
 with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384)
 id 15.20.4523.14; Wed, 22 Sep 2021 13:54:01 +0000
Received: from SN6PR06MB4991.namprd06.prod.outlook.com
 ([fe80::4c4d:3ec0:dcd5:d586]) by SN6PR06MB4991.namprd06.prod.outlook.com
 ([fe80::4c4d:3ec0:dcd5:d586%7]) with mapi id 15.20.4523.020; Wed,
 22 Sep 2021 13:54:02 +0000
Subject: Fwd: [Bug 1942459] Re: Speakup modules not included in Hirsute kernel
References:
 <163231190197.15715.14276903534961016706.launchpad@gac.canonical.com>
To: speakup@linux-speakup.org
From: "John G. Heim" <jheim@math.wisc.edu>
Organization: University Of Wisconsin-Madison
X-Forwarded-Message-ID:
 <163231190197.15715.14276903534961016706.launchpad@gac.canonical.com>
Message-id: <c3f266b0-f27c-2310-1877-7242dcd68830@math.wisc.edu>
Date: Wed, 22 Sep 2021 08:53:59 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
In-reply-to:
 <163231190197.15715.14276903534961016706.launchpad@gac.canonical.com>
Content-type: text/plain; charset=utf-8; format=flowed
Content-language: en-US
Content-transfer-encoding: 8bit
X-ClientProxiedBy: CH0PR03CA0027.namprd03.prod.outlook.com
 (2603:10b6:610:b0::32) To SN6PR06MB4991.namprd06.prod.outlook.com
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
 by CH0PR03CA0027.namprd03.prod.outlook.com (2603:10b6:610:b0::32)
 with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384)
 id 15.20.4544.15 via Frontend Transport; Wed, 22 Sep 2021 13:54:01 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: fbd5c60a-cfff-47c9-9dc2-08d97dd06efd
X-MS-TrafficTypeDiagnostic: SN4PR0601MB3741:
X-Microsoft-Antispam-PRVS:
 <SN4PR0601MB3741C5B9CC061EEA31970F44F3A29@SN4PR0601MB3741.namprd06.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
 nT9Nl1R0HQZ1rGNpWkF7ejwDXWtPgjMzmD4DqckDCXHwk+CGSr36SNnJ42DNUSAZ2/d9mMvZpOWfnU7WMmHG71dmGmVyf/gr7B8uziex0Er78/YfWPpURyTRPtiqb0/79PNHGh27ruN7Uz+/Y/6Fp99/Yze1B5JkRGCOt7NB4z5gezS2ImdpcNxcrYlKEOW6BGezOiZqKS42OjDGoGR3kWUHndLsXIqGMhWl3oRJXv7W9lp2lrK5e+iILFpPQcqq32Bn5Azfz60g2IEEfwdOu033eM8akrHcZNKV8p6Lb2oOn9WD7HXzZC0nx1c+L1mSsqzHXZXf2N2VXYyS9u8SZpW9JZjciWRrzhAdMohUi/iQf7h193dZY/gc5pACy7oHO9t3O8oFwx7qH5JQkfX2ZI9PWYWCcOIduI1A44GQ7bMJuvmDQQOhv++XJldUTTi4NuS4nJKHwBul9uAoZOaR9CrwZ09piNxzVDBiwu7zJMUWhsZlGY2HJGH27Mmv/SEduzQAttfr2lyorpYJK8BBcJhe0f2cVkbjPh9PAAJ21O0LK8M+w3IT8xuQ7c4cih9+PWZ/zDD7owuW01Y6YEjgoAquEtHFS2RmI+WPSg5dZ2P/zT70WmQiWXm3LXS0HwRu9ZOvvh84P8/yOkUXdS4UNRwyBFWij9oYDG9nIAPrY0M4A0A02vGQsBVFB4fScQF9pyIj1cOtSG5Vi6koKstj178VEUOuXcuPAYkUikRGI9Oojg2T/D4hKe/X+C1qdlz+jpHmXkRLnt9LmUDmwWvvIRyISiuW7JfTzGqZxgtNrfrlUzK91S4IgYIBqqGMtTrk
X-Forefront-Antispam-Report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SN6PR06MB4991.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(366004)(6486002)(16576012)(83380400001)(508600001)(5660300002)(2616005)(31686004)(66556008)(8936002)(6916009)(186003)(26005)(66946007)(66476007)(36916002)(31696002)(966005)(38100700002)(2906002)(8676002)(86362001)(316002)(956004)(75432002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
 =?utf-8?B?V1pNaTN1N2tCSUJQampLaExUSmg2aStIZEowejhJQkdwM0QrbFV4N2Q2M0g2?=
 =?utf-8?B?dFYzUDR2d3NWa21aWlhRTnh0Z1hNbkdQY1dYdVhPWFZsSHBEaGNkb2JUOUUx?=
 =?utf-8?B?UENpSkU3dWZVbE5vWlZJNlR0RG9va1V2aXFzTjYwdUR3NWUyd1ZDMzZpc0dJ?=
 =?utf-8?B?Yk1jR0IxRVhvTVpVUmYxeTFHV3VGRU43Y1I2WXZTQTVsY2JuaXgyVGFuVnND?=
 =?utf-8?B?YXhILzRMRVd6bGNMYmU0eEY2SlFhMG9JM25ycHN6dXhZRjBHenBSK0daOEJ5?=
 =?utf-8?B?VFdaYnJLRDE2RzZYWGc4Vm11eUhwOElQMlZHcEl1d2JCUVZJK3lkZVFxNmdF?=
 =?utf-8?B?RmdtdldPUWhXZmYxMHZNSjFmNHR1UlZSbU05aFVuRmNIeGx3UUNCMlBHYVpI?=
 =?utf-8?B?bzBaY2RmN0JFTXM4bFBIN3VtWlJEWlB3N3RrMlJROWVMSHIvdjFoQjRDR0Ft?=
 =?utf-8?B?WlFEbmRLTEN5Q0tSNjE1NDNMaGZKNVl0bDlOd1Vtb2tKaWJqSzFjQUQ2RmtM?=
 =?utf-8?B?WUNzYXRqSEVUN3M2U1Q1V3dGN1BXY2VqLzF1R3BRZnJ2bVAvQVlldXE2Smps?=
 =?utf-8?B?VDE4Sk9TWFZyKzdMMU5ScEJHR0oyUnRFc2tDSHlQKzNPTUhjUDgxU1B0ZXlt?=
 =?utf-8?B?NGo0NzN3bzVuM3NvclJ3YXNrS0djaE5hYlhZelgwc3ZVTGcvTUVaSlhNT1dz?=
 =?utf-8?B?TndUT0JrbGFDci9vN09iNHVaL0JhMm5sN3JEaXpsMVZybGRjSDVDcHN1WXJN?=
 =?utf-8?B?L3NpcWxVSHl4bUJJb1l6R2s5U0xvMGFSREI5cUk3cDBxSVdybHp2TXhmRGVz?=
 =?utf-8?B?VFgvZUtjcWFpTVl2anhZdjBSUHBmWWp2ejFVVDgrbVRqYkdFdFJLWWlzaEtS?=
 =?utf-8?B?MjV3WnlNcjNXVVA4VHlRamdOdWw4MEJwZjAvSG9uUFhMZG1rWk1QSzlzVXE3?=
 =?utf-8?B?WWhJLzl2enpQQUx6R3U4ekJLL0lETVFiUytJOEJNOHRLaG9Sc09ON0pTU1NF?=
 =?utf-8?B?d05adDV2ZktUR3poMDg1UmxrNVJyMWdoNkN0cFg0dFdkVWZXNDJyalhBakov?=
 =?utf-8?B?aU52Z01NNzRuTkZTNkRvUlk1RFdMTDZhUFhOM2lpZW5LS2lRVWZkM2lGUlVJ?=
 =?utf-8?B?RTFELzFEdWtEUERTd3UxM3BhMzZlOXJOY1g2UFk4OURGSy9ZdU9VVXFRZVE1?=
 =?utf-8?B?SzVMZkRTVGdoUkpRTFp2YnF1NUdEbHFGYXIwRGo1aVJRa0R2VzhxaEx5L3Q5?=
 =?utf-8?B?MHFvanNlYVNFaHZ4cUJ5YlpFQ0xUNTJDN01kWERCa3BSZlFxb1I5TVdHUzhQ?=
 =?utf-8?B?bXp5anpuQXBnR09iN3h4SVJac0ZSaDRINXp2Zk4vY2hmVE5GTGg4NnM1a3Vh?=
 =?utf-8?B?ZzU2V3B6RWJ6VEczR21HaE5acTNVYXhlYUFMN1h0UTVFcXEwU2tnekRoUVRG?=
 =?utf-8?B?TnZaaXRNa2tYVmpkRU9heWtiNStKOFFrZ2ZjeU82d3Q3ZzhFaUVjMm1xT1Mr?=
 =?utf-8?B?bUg1MHRJb3RRMVJHbEZLOE44K2hVSVB5VnFBUHJyQjhqV0U1RUk0akhyS0hP?=
 =?utf-8?B?YmszeTZkQzVycUlEMWIxcmZUVllTZHlvdWhsN0dNc2pVWDZrUFVna0V0WjZR?=
 =?utf-8?B?ZERUVXllSnRuYW1iY0VNLzBaMmkvZWFIKzEyQzgwR2NPczFwSFFiSlJJTXlh?=
 =?utf-8?B?TzVBVHlacVJSR3llOFhxMmhNdUdnQ21qTUUrNjVYNW1JRUFqZ05zUThWK0NK?=
 =?utf-8?Q?dU3Ggdx+qc2/Uh36NDeuYoyLJUsGiqA5krJFwSi?=
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id:
 fbd5c60a-cfff-47c9-9dc2-08d97dd06efd
X-MS-Exchange-CrossTenant-AuthSource: SN6PR06MB4991.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Sep 2021 13:54:01.9669 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName:
 7N6QftWEPFyoCchSo5fPONSTNsQKEFT77NpnxrkKeaFwSH7NIDQYyr5W3WDf98q0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN4PR0601MB3741
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Alright! Light at the end of the tunnel!


-------- Forwarded Message --------
Subject: [Bug 1942459] Re: Speakup modules not included in Hirsute kernel
Date: Wed, 22 Sep 2021 11:58:21 +0000
From: Stefan Bader <1942459@bugs.launchpad.net>
Reply-To: Bug 1942459 <1942459@bugs.launchpad.net>
To: jheim@math.wisc.edu

** Changed in: linux (Ubuntu Hirsute)
        Status: In Progress => Fix Committed

-- 
You received this bug notification because you are subscribed to the bug
report.
https://bugs.launchpad.net/bugs/1942459

Title:
   Speakup modules not included in Hirsute kernel

Status in linux package in Ubuntu:
   In Progress
Status in linux source package in Hirsute:
   Fix Committed
Status in linux source package in Impish:
   In Progress

Bug description:
   [SRU Justification]

   [Impact]

   The kernel modules for the speakup screen reader are not available in
   Ubuntu 21.04/hirsute.

   $ modinfo speakup_ltlk
   modinfo: ERROR: Module speakup_ltlk not found.

   ProblemType: Bug
   DistroRelease: Ubuntu 21.04
   Package: linux-image-5.11.0-31-generic 5.11.0-31.33
   ProcVersionSignature: Ubuntu 5.11.0-31.33-generic 5.11.22
   Uname: Linux 5.11.0-31-generic x86_64
   NonfreeKernelModules: nvidia_modeset nvidia
   ApportVersion: 2.20.11-0ubuntu65.1
   Architecture: amd64
   AudioDevicesInUse:
    USER        PID ACCESS COMMAND
    /dev/snd/controlC0:  john       3207 F.... pulseaudio
    /dev/snd/pcmC0D0p:   john       3207 F...m pulseaudio
    /dev/snd/controlC1:  john       3207 F.... pulseaudio
   CasperMD5CheckResult: pass
   CurrentDesktop: MATE
   Date: Thu Sep  2 10:46:10 2021
   InstallationDate: Installed on 2021-08-25 (8 days ago)
   InstallationMedia: Ubuntu 21.04 "Hirsute Hippo" - Release amd64 
(20210420)
   IwConfig:
    lo        no wireless extensions.

    enp0s25   no wireless extensions.

    enxf2766f074582  no wireless extensions.
   MachineType: Dell Inc. Precision Tower 5810
   ProcEnviron:
    TERM=xterm-256color
    PATH=(custom, no user)
    XDG_RUNTIME_DIR=<set>
    LANG=en_US.UTF-8
    SHELL=/bin/bash
   ProcFB: 0 EFI VGA
   ProcKernelCmdLine: BOOT_IMAGE=/boot/vmlinuz-5.11.0-31-generic 
root=UUID=de5924a4-e0f6-4c11-a364-ea107efc1086 ro quiet splash vt.handoff=7
   RelatedPackageVersions:
    linux-restricted-modules-5.11.0-31-generic N/A
    linux-backports-modules-5.11.0-31-generic  N/A
    linux-firmware                             1.197.3
   RfKill:

   SourcePackage: linux
   UpgradeStatus: No upgrade log present (probably fresh install)
   dmi.bios.date: 12/13/2018
   dmi.bios.release: 65.29
   dmi.bios.vendor: Dell Inc.
   dmi.bios.version: A29
   dmi.board.name: 0K240Y
   dmi.board.vendor: Dell Inc.
   dmi.board.version: A02
   dmi.chassis.type: 7
   dmi.chassis.vendor: Dell Inc.
   dmi.modalias: 
dmi:bvnDellInc.:bvrA29:bd12/13/2018:br65.29:svnDellInc.:pnPrecisionTower5810:pvr:rvnDellInc.:rn0K240Y:rvrA02:cvnDellInc.:ct7:cvr:
   dmi.product.name: Precision Tower 5810
   dmi.product.sku: 0617
   dmi.sys.vendor: Dell Inc.

   [Fix]

   CONFIG_ACCESSIBILITY=y
   CONFIG_SPEAKUP=y

   [Test Plan]

   Extract modules from linux-modules-extra and verify that speakup*
   modules exist.

   [Where problems could occur]

   Enabling CONFIG_ACCESSIBILITY could affect console output.

To manage notifications about this bug go to:
https://bugs.launchpad.net/ubuntu/+source/linux/+bug/1942459/+subscriptions


