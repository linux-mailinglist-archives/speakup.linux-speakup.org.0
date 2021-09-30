Return-Path: <speakup+bounces-312-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id D356441DC57
	for <lists+speakup@lfdr.de>; Thu, 30 Sep 2021 16:32:14 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=uwprod.onmicrosoft.com header.i=@uwprod.onmicrosoft.com header.a=rsa-sha256 header.s=selector2-uwprod-onmicrosoft-com header.b=p2S6BVhQ;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 7F9E73811F1; Thu, 30 Sep 2021 10:32:13 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 5E43B3811D6
	for <lists+speakup@lfdr.de>; Thu, 30 Sep 2021 10:32:13 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id F1DFB380C06; Thu, 30 Sep 2021 10:32:06 -0400 (EDT)
Received: from wmauth3.doit.wisc.edu (wmauth3.doit.wisc.edu [144.92.197.226])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 057D538097B
	for <speakup@linux-speakup.org>; Thu, 30 Sep 2021 10:32:06 -0400 (EDT)
Received: from NAM10-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam10lp2103.outbound.protection.outlook.com [104.47.58.103])
 by smtpauth3.wiscmail.wisc.edu
 (Oracle Communications Messaging Server 8.1.0.8.20210105 64bit (built Jan  5
 2021)) with ESMTPS id <0R090061P4DDEB70@smtpauth3.wiscmail.wisc.edu> for
 speakup@linux-speakup.org; Thu, 30 Sep 2021 09:32:02 -0500 (CDT)
X-Spam-Report: AuthenticatedSender=yes, SenderIP=[104.47.58.103]
X-Wisc-Env-From-B64: amhlaW1AbWF0aC53aXNjLmVkdQ==
X-Spam-PmxInfo: Server=avs-3, Version=6.4.9.2830568,
 Antispam-Engine: 2.7.2.2107409, Antispam-Data: 2021.9.30.142116,
 AntiVirus-Engine: 5.86.0, AntiVirus-Data: 2021.9.23.5860000,
 SenderIP=[104.47.58.103]
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bnvHjHEIAQPMFvGIfTW59puWYD/m9ScOH21Oep0Dma50l56Pm4/iYyiFGPmeowtEFr5T9HsSe5AokPDwgNsh7j65SFhswtt2RFT4TQtzDH4KMeGuJEw+cTWPwuc8jLbCg0aOUPjAWVpfSGtKxfgulXVgAXAqtDGi3McqaAfH8qf8PfioOLN4unpQwAjb3m3IdM+MFsGC6unjL3Nnkik2GKUI3juQwqMx3/kKfRNbvM2P0eSgiP9bNX7Fv2MhN/OHlPicapdtEKrkdtdgPoN2aNhVixqCeBghFtcA8pkQzrrEwuh3LggpVfwyKRcNQXwRMY7nfKrm4VMaOKqo26ugWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=Z2yM6jeDGtjtVsrNE8iVZ588hEE5LUlWff0ci6GXUVE=;
 b=ThmhDeu9u7bIx3gA+wRHmZm1+IXk9nta+0mdy4BUURJd4wdhOPDyr2Kubc8iIn1j3kS0JxCAfo6jVVgl/asOYopksTR4/iXAHnOh9vimuzVIVdftr2QXM4ztDzFjJz6hjGtdxVYMIYcMEMoEgJLWaYZMLY/Whdswspv1T1BSoqV1CnNVJAFcxIKoZodWIICq0rY9r4bYpRKc4W+pKDpC6/0ApxtdoHKastCf//MEiK9atk7Il6Myo3KRqbWVxbbiNwoyH8/ae1xY1kGwhsmSNjQt5EBZqpQg5SZgz7wzr2SII9/AuQtpfKWqt+GlKnL2gtceCiiXN8UojKzYcojL4Q==
ARC-Authentication-results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none header.from=math.wisc.edu;
 dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=uwprod.onmicrosoft.com;
 s=selector2-uwprod-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Z2yM6jeDGtjtVsrNE8iVZ588hEE5LUlWff0ci6GXUVE=;
 b=p2S6BVhQd4KVtJtJSmopAj6NJkXP7jSOqscxSQmJOBLVxCmig3OtcNdFW4nueSRKTPgwh8GoI73Zab3WPkaw2WdWpQ4BO+83myJrsoIQXJs4QO+iS1erhgLtfdgmgi85ALGXQCa0mVzR4Fyq+xtspi5PjC7nDWUBLV3P9APj7XE=
Received: from SN6PR06MB4991.namprd06.prod.outlook.com (2603:10b6:805:c1::12)
 by SN6PR06MB4110.namprd06.prod.outlook.com (2603:10b6:805:1d::18)
 with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384)
 id 15.20.4566.14; Thu, 30 Sep 2021 14:32:01 +0000
Received: from SN6PR06MB4991.namprd06.prod.outlook.com
 ([fe80::4c4d:3ec0:dcd5:d586]) by SN6PR06MB4991.namprd06.prod.outlook.com
 ([fe80::4c4d:3ec0:dcd5:d586%7]) with mapi id 15.20.4523.020; Thu,
 30 Sep 2021 14:32:01 +0000
Subject: Fwd: [Bug 1942459] Re: Speakup modules not included in Hirsute kernel
References: <163275083666.11577.7456276389244995730.malone@gac.canonical.com>
To: speakup@linux-speakup.org
From: "John G. Heim" <jheim@math.wisc.edu>
Organization: University Of Wisconsin-Madison
X-Forwarded-Message-ID:
 <163275083666.11577.7456276389244995730.malone@gac.canonical.com>
Message-id: <f9621a6a-345a-bc89-662a-d1da1353ff4f@math.wisc.edu>
Date: Thu, 30 Sep 2021 09:31:58 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
In-reply-to: <163275083666.11577.7456276389244995730.malone@gac.canonical.com>
Content-type: text/plain; charset=utf-8; format=flowed
Content-language: en-US
Content-transfer-encoding: 8bit
X-ClientProxiedBy: CH0PR03CA0028.namprd03.prod.outlook.com
 (2603:10b6:610:b0::33) To SN6PR06MB4991.namprd06.prod.outlook.com
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
 by CH0PR03CA0028.namprd03.prod.outlook.com (2603:10b6:610:b0::33)
 with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384)
 id 15.20.4566.13 via Frontend Transport; Thu, 30 Sep 2021 14:32:00 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 80bb3ef0-2359-483b-43e1-08d9841f107e
X-MS-TrafficTypeDiagnostic: SN6PR06MB4110:
X-Microsoft-Antispam-PRVS:
 <SN6PR06MB41106DC22C9BCCFB9F9656A5F3AA9@SN6PR06MB4110.namprd06.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
 Y3Nhyku3auSF8lxlG9MIpVZYeSzMqaoqomQldxA7hfGa6kNM3mtn03rzb2a6OoxDTj8RPrgNFkem8U3ylIBxGNmI+tD7Cpot9op9vv3cjevxxXKJBzKUDqbINan4YXYJH/NBF9ljgX1ZKXLPfGQZ0/4wf2HIxGbvbNxvCYG0KxVgixC+EjaQ9LQa449ReOWhP7xQoyfRADePbB5JEKcErOLOamriktuCLXsDKsaK/TLUhDgC+9P/jdLknbc1vUR7JM1zf9oT6NVt+zaUKX2g+Q8WoWeZHv3aJbuRTYLHTe6xhC7XgeGuZmYgxND+8HFQu9j+FKUqjJ+ScE3IVAfeM0SPE1Ya6SSzZ/0E8wT3PdUGM2gCwNUDgHPMrUU2gX/MANoo5TxsTFf487mTIJRuMLYY+wuUXvm4ToLns2CHy+EAg2t77769SQhuSNd8g+RDkMYB4Zke3KySJ+Cj9TftZDbjJQqbwY/IW2i17Aytj0E5L3nO3UXO7E3cdhMrE9hbnIuT4RTxTGVmvnzr+Ig5JDRCf5H1nRSBuhZrxiJpgj5NCBtcimLa4X/eC/NKksqNM1jGoaekVyxPo7cf3QxIZPd7TSCU8dG6UidZlhMFhl2tFy+leOT9Z3Sz7nti85R5RizlRwAMYDomkppXrpgxjnaU6JhQUB2gN0yfwfTOz7lNRtRJeDX9xjzBLmkPcJb/ZE9CQcppl2HL4Ft6eq7ijihFWJtPxDFoUR8GeYiQyDA0L6JsWDIiW73ysWoEOgua1R9MGECKh5VQj/qibhH/8gXncGBkmIn6IKnBuqdslGJfc3sntaI03sur3ce22EtG
X-Forefront-Antispam-Report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SN6PR06MB4991.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(366004)(16576012)(83380400001)(966005)(5660300002)(508600001)(31686004)(6916009)(2616005)(2906002)(956004)(66556008)(66476007)(186003)(31696002)(66946007)(26005)(36916002)(8676002)(6486002)(86362001)(8936002)(75432002)(38100700002)(316002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
 =?utf-8?B?cDZzSGZSSmlTaThSRU8rMXoxSWlISURxUzNtR1RoU3B3SDlSeHR2SjBoN3pi?=
 =?utf-8?B?dmdDNzlteFphc1BTS1NienhYUzVPS1kyTTlPMVFXcUpoa3FaSU5uV0JYaldu?=
 =?utf-8?B?cFF0SlVXamV6R0xJdUlvN3IwYjBoQk9aTnFWRFFvWU4vRG4xdSs0OHR5OG5k?=
 =?utf-8?B?U3RyZzY4NWFSSXJVM1FNR2lsRUt5dWg5RTd6MlVHVURUOFJJem0yZ0FXZGlW?=
 =?utf-8?B?V0JzTS9PWVAzeGNCYWpmNUZVaFlsZS9GZWtyeXRzTU5ZRHg0YlZMaExKbkpw?=
 =?utf-8?B?N0tTUDVVd0Rsd0kzN1hlY3VzK0NOTjZJM0cvcFFGajlDZG5yNHBOa2Uxc3Jr?=
 =?utf-8?B?QUVwbEdCRnZrSkNxV01FdW5OVnhwZEplSCtxc1huNW1PVVRvZnlDRXpjSExm?=
 =?utf-8?B?d1VYcjVLc3FaeUFvekZvQTdCMjRtUU5FUFJsVjZMUlEyaWxKQW1BaTZZTXht?=
 =?utf-8?B?TDlFOUlQOWw5eWFJL0JMd011ZU1tY3kyKzRQWVVsZmd3aXpjOXRSaVpBY2No?=
 =?utf-8?B?cXpwRzVJWnlBWHNNQUo3YVdPR1YyTEUxN05VbFUybXdERzd4YkJlczhFRWtw?=
 =?utf-8?B?TjFiRnBqMExWNzhyczV5VnZVWERIR3J6bnQ0TC9MZ2dNdXdKQW14SEhKeFBS?=
 =?utf-8?B?WDdjOEVrTDB4MDFBSGp6TmJPTXJsMEhNTmtyOFZuR3NEd0xnYm9KZ1U5WlZ4?=
 =?utf-8?B?dGRUL0VnS0ZGV3F5c05qQUpyY2o0c1o1M2E1ckwyd3RDUWVTSDlaalppQTB3?=
 =?utf-8?B?ZHB3TUxXSUhBQnlISlZNYXFaRVVYbUhhVVlLVnl0RTNHd05xMnBjL293bFhr?=
 =?utf-8?B?OS9jYmRLYlJYRnUyUTZ0aG5Tb3R4UE5UYlZ5UEtrZ3Y1YlNyajRVRkljS1Ir?=
 =?utf-8?B?K254WklzR2Q4SDZWQ1l6QUI4Z1ZaRHlPL1AyRDFVSFp2MUh0cy90WGtqbE5B?=
 =?utf-8?B?RVNSRzFiT3liSWVZSFM3VElvS0d0cXdFbFNlR1NQaFc2Y1J6QjV5NFJLbHBJ?=
 =?utf-8?B?RFBQK3RCZjlPeHJUUVdtcXVvbkNJaE9VdWh6M2RyYTVWejluQWUrUXAzazhx?=
 =?utf-8?B?Q2Z3aHJJWllZbTZGVXhDUGVodHRJa2lNcnBvbkNCd215eExOa2szS05RbWk4?=
 =?utf-8?B?YXZYYzJHL1RXNGNFR1JIS0FaSW1ZcWRCN0xmbUhVdEZzNytlOEtxckhtTU1T?=
 =?utf-8?B?Y2p6MENFSldmWFdDWWhVTmpaWURzYXVoUi9LQUJsa2NKeTB6L1VQS2RINStF?=
 =?utf-8?B?c1hySUEyV0tBajIyRzR2ZlBHQUJBa2lwTjU0M2Y5RnpjZjJPOUZzd0R3QXZ4?=
 =?utf-8?B?Q2kyQjdzTEE0Z0dHWm9uaXhvd2FzQ3IxRHBwcVpuZnZ4MHpEK0hVb3VIYVJC?=
 =?utf-8?B?S01kZzczcS96enpBUmFhUFB2OG9qeGIyV1BENkJYM0FLVXpjRThUK2lCYTlF?=
 =?utf-8?B?Uk02N2J4R0t6ODhEQlRUY1o1L2IxQkdqME1nVWtUdmJUc0NuTHVDS01pTHgz?=
 =?utf-8?B?WmJidUJPbHJqOXk2K2tFVjI3VVNJNHhCTEphMWVXSk9Yb3oxSGpOd0hKU25h?=
 =?utf-8?B?YVN0K2w3MXdPVkpwOURDaUcxb053eGpGUmd0aXdjazhqVGNuYjFUS2EvZEdu?=
 =?utf-8?B?a2gyMHd2a3pUc0xnU1dPbllCU2pLOUdKMitPU3BoMDRXbU1wUVhLWUk2QW9M?=
 =?utf-8?B?MmpkcGNPaGFOTHVHcEM2S2YrKzB2a29GUndLY1lRMHhLWlNXWGFSaDJ0bWwx?=
 =?utf-8?Q?v+VGhRo3kDKuOROUOjHuQXsR012jwh01Wa//9AL?=
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id:
 80bb3ef0-2359-483b-43e1-08d9841f107e
X-MS-Exchange-CrossTenant-AuthSource: SN6PR06MB4991.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Sep 2021 14:32:00.8956 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName:
 T97cyCxkDi2Hj8j1g/sXHUxy5hOSNeaqw8L5T7+aKtmVHDmml+/yjcOH/v4bDHTO
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR06MB4110
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Okay, it looks like the speakup modules are back in the Ubuntu kernel. I 
installed the 5.11.0-38 kernel and got speech via my doubleTalk. I 
marked this bug as verification-done-hirsute, as directed by ubuntu in 
the message below. So, most likely, next time you update your kernel in 
Ubuntu STS, 21.04/hirsute, it will have speakup modules again.

If you can't wayt, you can enable the proposed Ubuntu archive and then 
do this:
apt-get -y install linux-image-5.11.0-38-generic 
linux-modules-extra-5.11.0-38-generic linux-headers-5.11.0-38-generic

PS: There is a link in the message below for instructions on enabling 
the proposed archive.






-------- Forwarded Message --------
Subject: [Bug 1942459] Re: Speakup modules not included in Hirsute kernel
Date: Mon, 27 Sep 2021 13:53:56 +0000
From: Ubuntu Kernel Bot <1942459@bugs.launchpad.net>
Reply-To: Bug 1942459 <1942459@bugs.launchpad.net>
To: jheim@math.wisc.edu

This bug is awaiting verification that the linux/5.11.0-38.42 kernel in
-proposed solves the problem. Please test the kernel and update this bug
with the results. If the problem is solved, change the tag
'verification-needed-hirsute' to 'verification-done-hirsute'. If the
problem still exists, change the tag 'verification-needed-hirsute' to
'verification-failed-hirsute'.

If verification is not done by 5 working days from today, this fix will
be dropped from the source code, and this bug will be closed.

See https://wiki.ubuntu.com/Testing/EnableProposed for documentation how
to enable and use -proposed. Thank you!


** Tags added: verification-needed-hirsute

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


