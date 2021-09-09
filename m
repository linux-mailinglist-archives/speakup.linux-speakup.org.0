Return-Path: <speakup+bounces-278-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 9731A4054A2
	for <lists+speakup@lfdr.de>; Thu,  9 Sep 2021 15:30:51 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 397B2380F6E; Thu,  9 Sep 2021 09:30:51 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=uwprod.onmicrosoft.com header.i=@uwprod.onmicrosoft.com header.a=rsa-sha256 header.s=selector2-uwprod-onmicrosoft-com header.b=SaLjaLXJ;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 23901380A82
	for <lists+speakup@lfdr.de>; Thu,  9 Sep 2021 09:30:51 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 0D341380B12; Thu,  9 Sep 2021 09:30:45 -0400 (EDT)
Received: from wmauth1.doit.wisc.edu (wmauth1.doit.wisc.edu [144.92.197.141])
	by befuddled.reisers.ca (Postfix) with ESMTPS id A05503805C2
	for <speakup@linux-speakup.org>; Thu,  9 Sep 2021 09:30:44 -0400 (EDT)
Received: from NAM10-BN7-obe.outbound.protection.outlook.com
 (mail-bn7nam10lp2101.outbound.protection.outlook.com [104.47.70.101])
 by smtpauth1.wiscmail.wisc.edu
 (Oracle Communications Messaging Server 8.1.0.8.20210105 64bit (built Jan  5
 2021)) with ESMTPS id <0QZ600GHK5J74G10@smtpauth1.wiscmail.wisc.edu> for
 speakup@linux-speakup.org; Thu, 09 Sep 2021 08:30:43 -0500 (CDT)
X-Spam-Report: AuthenticatedSender=yes, SenderIP=[104.47.70.101]
X-Wisc-Env-From-B64: amhlaW1AbWF0aC53aXNjLmVkdQ==
X-Spam-PmxInfo: Server=avs-1, Version=6.4.9.2830568,
 Antispam-Engine: 2.7.2.2107409, Antispam-Data: 2021.9.9.131815,
 AntiVirus-Engine: 5.84.0, AntiVirus-Data: 2021.8.17.5840000,
 SenderIP=[104.47.70.101]
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cuZ5sJ2oFbUspKo3jPZSzinwrYH+1/hTtKBKjvd+Rc+dF5+HUWTrymQR1rMpOwNICHnVMcSpV/ign7ByK7Syp3WKy34pf9l58yZJEToZVMzz/rFD0lY74hPOhNgHf7lszibQs1yCtED2Sez3q28bwEpuV+wMSE1gpHsyZ9ziWdhMmb6ohyjTK5+z9kaEGztlRQi6k9LUq88cjVuXaqrdNswMUSSMFfWk4m4uo5H4SJc63tgLVwc1l2f1OwqU3wdMy1URvrVD/otLm1YvrHnMkIijes60taMzDliUiWKKnG2CR1ryERA+/MPiUoTamE7ozHT2oVAmhPnzBtXYmdF3mA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=pP5unQAkGINnUpmBHGkAiYe7v8WggKRN8BwZxoJScb8=;
 b=EaEMCoOcskizuT1NHXnqLPDSmPcdwL/27ui3N6FvG48gy062xYTtcmjmd2IsjcqhN6zOppPOzeE5JW6UFKiAnYK1G57apbJVGFt0Td54xdkGyGjceMq025LSpt0KWH+CPmWQmF8dPnkbHGGQiM7+5oMieeqMN4+uJwMC4QPuzJoYhi5Q7Uj/ZNfkcu3cBohDBdJ0k9RCW1GsqFm5icslAR+jEjHWIBUksXclW5i2kVsEsS4Cr3N6yf+bWfSMlAowl/WQBzv4ig6yHKR1wDOtsPst0YXLhCXdDUuhefLYCUkh9ORGH78q5wssnircv8eUXaoF56mHYdw3nsiuPK3KXg==
ARC-Authentication-results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none header.from=math.wisc.edu;
 dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=uwprod.onmicrosoft.com;
 s=selector2-uwprod-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pP5unQAkGINnUpmBHGkAiYe7v8WggKRN8BwZxoJScb8=;
 b=SaLjaLXJEe1UAzSN6a8zKQtAm31E7vpSTEc+xwTkorJLbiFaRSE1QJiYmFiqhm736E7kFUxbGG5JsjFRkKCW7fQGmqaw4yiqUdAyKwr6M6rGT5VqNDTyq5AZrZ3LZOCtubG/bCpYXLVVj29xqXmYYwG9mBFLtSLAKWntccku3CM=
Received: from SN6PR06MB4991.namprd06.prod.outlook.com (2603:10b6:805:c1::12)
 by SA0PR06MB7018.namprd06.prod.outlook.com (2603:10b6:806:b5::5)
 with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384)
 id 15.20.4500.16; Thu, 9 Sep 2021 13:30:42 +0000
Received: from SN6PR06MB4991.namprd06.prod.outlook.com
 ([fe80::4c4d:3ec0:dcd5:d586]) by SN6PR06MB4991.namprd06.prod.outlook.com
 ([fe80::4c4d:3ec0:dcd5:d586%7]) with mapi id 15.20.4500.016; Thu,
 9 Sep 2021 13:30:42 +0000
Subject: Fwd: [Bug 1942459] Re: Speakup modules not included in Hirsute kernel
References: <163119287082.11491.2354028281953810763.launchpad@gac.canonical.com>
To: speakup@linux-speakup.org
From: "John G. Heim" <jheim@math.wisc.edu>
Organization: University Of Wisconsin-Madison
X-Forwarded-Message-ID:
 <163119287082.11491.2354028281953810763.launchpad@gac.canonical.com>
Message-id: <e8edb2e7-4c71-35a4-7402-b4f688ef47df@math.wisc.edu>
Date: Thu, 9 Sep 2021 08:30:38 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
In-reply-to:
 <163119287082.11491.2354028281953810763.launchpad@gac.canonical.com>
Content-type: text/plain; charset=utf-8; format=flowed
Content-language: en-US
Content-transfer-encoding: 7bit
X-ClientProxiedBy: CH2PR17CA0010.namprd17.prod.outlook.com
 (2603:10b6:610:53::20) To SN6PR06MB4991.namprd06.prod.outlook.com
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
 by CH2PR17CA0010.namprd17.prod.outlook.com (2603:10b6:610:53::20)
 with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384)
 id 15.20.4500.14 via Frontend Transport; Thu, 9 Sep 2021 13:30:41 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 431ffdca-c720-45ab-6e20-08d973960530
X-MS-TrafficTypeDiagnostic: SA0PR06MB7018:
X-Microsoft-Antispam-PRVS:
 <SA0PR06MB7018B7979CC1653F9F616694F3D59@SA0PR06MB7018.namprd06.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6790;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
 NVQKXwU0rSkRruCskQD3cyzWO2m7wXi0na5L9Q2TfB1+iANEe5MEaSSE4EIRtUGRFg5WkNWBbwMY0wns2vO77Wc09+pVbx1Q/+QhYeG+IqHC1p6lAUm28XiJvgAXpt2Hjy0RkaoBVEIr1Vdn3lpYXCDXRq9knLyxDbD59jDKPZZvUWXAPoxBJB0BQzgP6XRe9/w6ocpTN8DcyYob+vcKVsX3FKchPw2S8Ge9SNHjqwbP5KqY/WahBSkvG8fVJXehBoFMAifBe9E8fVXTG7eVAPlPwWz+0eUnb1QRYc9F59bVpJJDYF+Hi3ZAFpOPE57h+ZpPqG3Gs12ihI7zDfhE9P558vSD0N0TB0OPj52v2YwIimAsHpCv1PXf+EM9sCoBga5u3EErr/z2FmAwX1kyFS4sBaj65DCS//xQQq3kbKHqhfhZEIsEChb1WTNsnpLgFM6VqcUo0qLVbn05ypp9Rtyua+hW6oQB9kxVfdUegPDZ/D86yHCqRXEFucfUu9vuhaY2SqHEnrZVoj4/AMDNE74ZjxiIPbQBmT6++awBU0Q2rSIobtePsc3GHV6VepTsI/H4L4pqB5wpxzjnpQDp9sCSdsTmkoK+Kh4q/vhSB3niuyla1OQdqO4dYAek+KeKDuAZHRw3rNgITPm+1w8buGPoIzV9JuhRd2fkiCvEmt9sDg9kT8hMjH84b+cthRpItZ84wKZi2D+pVrCjd6gPrdcNRNgiytzHcv0cIq6I60afsDf+an3Bcs55hFOC2X8lEMyzRLh3oykiSqT30V1qC5vW9ApV10ul0Z5PIthqMaDCjUptrrnKwuoVRJ7i5j60
X-Forefront-Antispam-Report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SN6PR06MB4991.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(39860400002)(376002)(136003)(346002)(396003)(366004)(956004)(5660300002)(75432002)(86362001)(2616005)(38100700002)(316002)(2906002)(16576012)(31686004)(26005)(966005)(83380400001)(66556008)(6666004)(8936002)(31696002)(6916009)(478600001)(186003)(8676002)(66476007)(36916002)(6486002)(66946007)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
 =?utf-8?B?cFlScGtLYVNSSXR0QkZJV0xydWd2UWpCVEZSZTNudjZudzNkRmQxamlOVTJm?=
 =?utf-8?B?bGpoWWpJTldpTXl3c2V4OWozekd2YTZIaGo3VUd5WGsvbmZMSC80SDRhRmIx?=
 =?utf-8?B?bG5wOTBBd1ArVldGdVBzSUlwRlN2bEYxd2dCSVU5NE9RVUhkOWZFb0ZBTzVz?=
 =?utf-8?B?NzlLb1gxREh0V0ZMcUpFNkd3MW1oUVhEUHRkQ2pQVTZ1ZXJZUHpnRVV6VHg5?=
 =?utf-8?B?Q3BHUkQ2UUpoZ2hDR2I4L25TV1JidVQvWU1XTnBzMkdnbkpXdURBZEthMGZa?=
 =?utf-8?B?ZjQzY2ozWm1mRFVvaFB6ckFLUGpvbEZJOEhuZHRPZVFBTEZQNGFMcldrMFhN?=
 =?utf-8?B?ZSsrUVZzMkJSNGIxL1FpR3o5b1AwMHhYVDU5RnkvTW5SOGFPcVJRQTQvWFZW?=
 =?utf-8?B?QmRhV09VOVFtcE5hSFdvT0JWeFYwdXZlcDg4bUY2bEJiaWZUWGYwdm1BYWl3?=
 =?utf-8?B?bVR1cWdJZ05pZE9HNUNNQzRhSlVRVTBneHJaNGt1U2hHU2tIOHY5VXhQLzFa?=
 =?utf-8?B?MlpBeHVGZWZ4eFVhSTk2UytMVzJzRVpRY2c3QnVXdmw4TnlibE8va1N6R1Ra?=
 =?utf-8?B?SWpXWnhxWnYvT2E5YmlXYlpPS1czc0l6Q0V3QlFJTU9rTVExdk9sSnkwZEFo?=
 =?utf-8?B?dFlyOEpoSW90VzVwK29SUkYyTmp0cVdEbjBTV25Ga1ZKNUttV3ZqWDZPUmQy?=
 =?utf-8?B?cTQvTys3N3RGQzVXTkVUUWxEUmJvQTlZUzRhYW9COVBYM2pQTVhJL0RBUnlT?=
 =?utf-8?B?VzNzWUZUK3FNQ21DclBDWllDby9wemNlT3UyRlBsNDZuYWdPZHpxOW9sQ0NJ?=
 =?utf-8?B?STFyWTNaTWorcms5b3VSM1BGbTZITXBXNnFhaXM1M2llb1VIZGRXdEFMcXpa?=
 =?utf-8?B?MEZjUThmelJPL2NZdzM3dG1Lc0ZhUHRSWGhZbHlSUnM0Uk9EUXA5aWF5NWk3?=
 =?utf-8?B?RjlyRDBpSmRING9EU0JOeGtkekZYOTJBOWZOY1hGZW9qVHFLWjU4ekZRRkRl?=
 =?utf-8?B?SHNYdk5aNDdIWUtJWUdqYmV2eW1BbjY1Mk9pTUZYdFE5WUx0RzFMdHpwZGJU?=
 =?utf-8?B?bEZGYzR4cHlSRnZUdUlvdW5lS1FOTzlPckdVOVYrZE9aNEU2eWRCRDZvbEdy?=
 =?utf-8?B?MkVmZHA4RFZUc05ST0EyTVpTZEFuSldBa2FUVEdicy9JZys5cGVlS2UyZEND?=
 =?utf-8?B?ZVIyZ1VLSTBJTDVKMktsTDFFR2FkbjY2OEw4Q202aG9FdURlWDQyd3dabVpF?=
 =?utf-8?B?dVd1aFhYdnZhOHBXZUM1TFMzdDJoRkorWk94ZllBQURGSmFpUVdpN1Qyellq?=
 =?utf-8?B?RVM2SDNtckZQU0FCUXdRa25HaitIOGpqK2tOMXFNblhTRDFDUEhkMFB1ODhN?=
 =?utf-8?B?MGRmeWJ0ekx3V3pZKzJvYjNwcmNCMWJ5MENockxkZ3hkN3MzSHlnTUprRDZH?=
 =?utf-8?B?QlhuRDBMQUlNL3hpQVI0Tkl4SDFRR1ZFbWc0QktIckpoamE0d1J1ZGdLdFFS?=
 =?utf-8?B?dW5kRlI0aEg0aGZhalRGYmVibitkbXhGVkRLYmRBQ2NWL0ExWWlqeWJoV0px?=
 =?utf-8?B?alh0NW1tN2NzSllQN3lId1VaaU9oeG80VVlWMG91eDZmNE5ZOVE0MWkrNlZq?=
 =?utf-8?B?TWtDQ3RKYTFIMXJMNlQvakxxTUt1S0RTTzJaVzQzMmZzTU5PQUhwTEw2UjdY?=
 =?utf-8?B?a2s5SkVtYVZuWmxUNlE2QzZXV2NqRjdMNDFscU9IbTRFakZXNndQb1Jad0g3?=
 =?utf-8?Q?8M0P38skTb80e4JX1SnanYHSIbkxTYJiK0O39NW?=
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id:
 431ffdca-c720-45ab-6e20-08d973960530
X-MS-Exchange-CrossTenant-AuthSource: SN6PR06MB4991.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Sep 2021 13:30:42.0253 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName:
 nNuneEEKT0/NTWeNpZ/pT/Sh5TsHOTvF0DyJRef80BnQPx5mEtp8FM81V8bkZqV3
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR06MB7018
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Okay! My bug report was assigned to a developer.


-------- Forwarded Message --------
Subject: [Bug 1942459] Re: Speakup modules not included in Hirsute kernel
Date: Thu, 09 Sep 2021 13:07:49 +0000
From: Tim Gardner <1942459@bugs.launchpad.net>
Reply-To: Bug 1942459 <1942459@bugs.launchpad.net>
To: jheim@math.wisc.edu

** Changed in: linux (Ubuntu Hirsute)
        Status: New => In Progress

** Changed in: linux (Ubuntu Hirsute)
    Importance: Undecided => Medium

** Changed in: linux (Ubuntu Hirsute)
      Assignee: (unassigned) => Tim Gardner (timg-tpi)

-- 
You received this bug notification because you are subscribed to the bug
report.
https://bugs.launchpad.net/bugs/1942459

Title:
   Speakup modules not included in Hirsute kernel

Status in linux package in Ubuntu:
   Confirmed
Status in linux source package in Hirsute:
   In Progress
Status in linux source package in Impish:
   Confirmed

Bug description:
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

To manage notifications about this bug go to:
https://bugs.launchpad.net/ubuntu/+source/linux/+bug/1942459/+subscriptions


