Return-Path: <speakup+bounces-1155-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id EE835928E5B
	for <lists+speakup@lfdr.de>; Fri,  5 Jul 2024 22:50:36 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=hotmail.com header.i=@hotmail.com header.a=rsa-sha256 header.s=selector1 header.b=J8dBdhjX;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id C3AC1C81C99; Fri, 05 Jul 2024 16:50:34 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id A3F1AC80BA6
	for <lists+speakup@lfdr.de>; Fri, 05 Jul 2024 16:50:34 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 6D700C80FEF; Fri, 05 Jul 2024 16:50:26 -0400 (EDT)
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (mail-bn8nam12olkn2061.outbound.protection.outlook.com [40.92.21.61])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 59DD6C80BA4
	for <speakup@linux-speakup.org>; Fri, 05 Jul 2024 16:50:25 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IVCQHVKAmz+uOD80Z1paXTg5JDRnQq6ZRFXYJkhg8ATywKBPQRYyyby+uYkxSgd78Piq8+SRUl45pS36R69Rrhfs6rj28r7xKwjx+Xg2a+jDcBfK2+UKMHvNH2lV0aeUMGG2RPBWesJ5ngrQN3gdkTpjBI1u2Q2Ve2qTobJDBhZ79BNdMxEds2V6PoPNZSKYED+oCI6fQwOQQ65/3FQakSghnrKt+fuTfeAdLTmXoRspAsyX9rmYPRLRWtICk4tDKjc3xzJHoFn+JtRsZDkjIyix3OQqNanQ5ZuOLkDn8tLTGWhI1XyLiQ9x1ci1WtTrkME5ERVT2PdtVx+0ckV4Nw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jF636fjiUGOgCeZhypS7sH0lc0np0IT+ewJSWRNMi5g=;
 b=dg3U07GszDog4r88l3+5HXVIcIxwoft8TeAdLQWZZ7Lm8lvZE81Fdg+bZiLwznamBOYuzRhiNlI2iEI+al4c1ryiOr/p7dCCTR5mWEJ7VPc2XiG1qPUY/0iqTp+rIDqfFJIFeU3WnFHuZarG7+UALFyQXtepA4KKHQCKOQ3Wib2DUKj6QF6r5aVQu0Obc0CXqVu/LikTIFfb5Anj2ZOTwl2BwMEclIYwGz+VWNf5MvD06Fdi+Z38C+pp2ioSkfMN3fSIoeRHcbjEiGaBcOJUdhZGcYHpywVoZeHPCJGidG4rCGpQpN/DNZtcRRRB+JIomfh+d/yuYcKUMyYDVjGGfg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jF636fjiUGOgCeZhypS7sH0lc0np0IT+ewJSWRNMi5g=;
 b=J8dBdhjXt5/uYF8OBaWZwxs8yCu8dCmiKBc/GomznX6Myq1qge463u5iKj847EZ8RYIaKinuYwl/TQ07z/3hbaRiDwG8dTUOQA3u7xL1MpcxljKBR7dJpal8zTKS1E0nhmkxHxBQXP1RDKx3RJp5cPXkS0AuhWjqroQCChDv3y6zRvXq2TWvYunThXrr0W+kYN2WSd0njQEhTm+PLisCU221Cgy3BvJ71Lzqkw00kRqbwqwFU+6FV8c90mN1IeMoE7Xf/j6Gnyw/ss/qaDL9jymp4vy7dE5Sk/YbU4ZtpSp8qO+GCEeKCS4OZWel1dTj3gtoOOOv6jX9ycD8AUbqKw==
Received: from CH2PR12MB4133.namprd12.prod.outlook.com (2603:10b6:610:7a::13)
 by LV2PR12MB5822.namprd12.prod.outlook.com (2603:10b6:408:179::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7741.26; Fri, 5 Jul
 2024 20:50:19 +0000
Received: from CH2PR12MB4133.namprd12.prod.outlook.com
 ([fe80::2eec:f34c:ee7a:d818]) by CH2PR12MB4133.namprd12.prod.outlook.com
 ([fe80::2eec:f34c:ee7a:d818%5]) with mapi id 15.20.7741.017; Fri, 5 Jul 2024
 20:50:19 +0000
Message-ID:
 <CH2PR12MB4133D2FC94966A833CD563A7DADF2@CH2PR12MB4133.namprd12.prod.outlook.com>
Date: Fri, 5 Jul 2024 16:50:15 -0400
User-Agent: Mozilla Thunderbird
Content-Language: es-ES
To: speakup@linux-speakup.org
From: criss <crisspro@hotmail.com>
Subject: Espeakup not working in Arch
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-TMN: [Ln15Ab+NTQDsTa19yR411t1EDiTnRh91]
X-ClientProxiedBy: SCZP215CA0005.LAMP215.PROD.OUTLOOK.COM
 (2603:10d6:300:50::16) To CH2PR12MB4133.namprd12.prod.outlook.com
 (2603:10b6:610:7a::13)
X-Microsoft-Original-Message-ID:
 <baa2b9f9-5122-4a1f-a546-ab6e3b6bc860@hotmail.com>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH2PR12MB4133:EE_|LV2PR12MB5822:EE_
X-MS-Office365-Filtering-Correlation-Id: 3c1d58b4-4af9-46e5-627f-08dc9d34145a
X-Microsoft-Antispam:
	BCL:0;ARA:14566002|461199028|19110799003|8060799006|3412199025|440099028;
X-Microsoft-Antispam-Message-Info:
	DqwWjZ11eSwmm3Ql9RYrDluxp/zeoY1GU+a7Uh3tx8vaRD8LEcDsU0izYzdp9h9Kakjno7GWLmAdsEeSvMx6DgZdjgiSw6E02zDxMsxAugl13AdVYNbcitZiWbJkFRTm0I3+tSFMImcuzzCPqQc2Nlhr0R7nbuAglc/YxX/3dKlU4zRebT1pliXQU1T8hrp/pyrfh2dvZQdzaJNUQR4BVadHGLtyawB7f6OpmPAed3D9ddL1S9hSFDHwZWdogMMPs15jWjWQhwb3OSVj14iHvfejT6x5GRpXkwPrykjnTwN3mKJ1Y9XHPzexBUoDQyC9+yViWRBa7ud77i/Zd6XClNjZDo6lOex9R757cAHD1f4rW3Uif157Jsec5TVmsNrYZDVxr10miwjU9Efy8svuUujfq2Hy5y1YvPWdREyYykaFn4Z1Mwpvual6pbpuKClOpS6stSMOHmsSB9GhGF0chIbVXxXBrS9BPnYpR0Ra9PlWJk9BiEV88wnmSAhuW9jKR3JWiPKFH3L+p/0l85gpaSb18ve3uxkuuwzKDDMafaA5Oa2benBsyNtZlRCT2f+foDG2hm9E83uoP2IBjlnJ3lfgGOAI2xvdavlQK5ksGpfW33y3Y9QZrQPpHaC86h2MknJqtfmQ0BU4wPvBy0FRHg==
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?WFlYeUl4UUQzTUxnZkoraUkzbys5dEZqYm9jYVYvd3Q1STNYVDNubTJLd3pG?=
 =?utf-8?B?ZjNBMWw0TnN5MmtSY005aWZCeWRuMEIxQ2pETDBXT1AyOVMxaHF1cWdTY2xh?=
 =?utf-8?B?T0FhazlDU3YzZS9TMThDWVkxQXJyZTljbXdNQ29tdDRjbjZaNnhjVGtsR2U0?=
 =?utf-8?B?Wlp5eTZvbzZCZVc3NUp0a09XNzhpaU9NNm9iQkVPMzNWbVJqMEVBbEcyZVRD?=
 =?utf-8?B?OXJsWWxOUFZ0SUQxQitySXp6N0ZiQ1d5TWhKYS8yczh1NlQ5MnFwVVhrZFVR?=
 =?utf-8?B?cmJMcnJ5OHNlZVZqK0RQb3h4QUpRNHdnbHdDTTlRWkc5TjVCVVVDc0JRODc1?=
 =?utf-8?B?ZFg3Sm8vUEs1VUdOM3RHd1NPbElaUzBkcG8rNEtlNTZsdnd6SU10Z3dMWnBK?=
 =?utf-8?B?b1pSSThWbU9Tb24wM1pHcWpVTzhsMzg5Q3Q3KzJ0dzl0Z3FJYVNjNXFjdW04?=
 =?utf-8?B?NTRwcjFEOWoydUNJYkZ5U1YwSHo2Y3plR0s2bDB6WjN0dUVrbTNCaW1aSDQz?=
 =?utf-8?B?S001MFNLWHpWZk04WnZzL0o2ekpTblNRa0NUNllJS1FYU0l2WkFSYitqMFVH?=
 =?utf-8?B?WGU5UkdJTXhZbGpWc25Ud29qWEVXajVtWWY0Y0xtd2dicHc0bitXOWJQVlNQ?=
 =?utf-8?B?cDdnK2JnRDI3b2NpaDVLL1Q1ZFBKQ1VCUFJQRHdaY01acUdtSUFVMCtsSmNG?=
 =?utf-8?B?VElsS0VCSnNZVDRBSUp5QVRsMUFYSm9XV0Z1bWl5d3ZYUDdoUzFpYzdZc1Z0?=
 =?utf-8?B?RjJSMC9rbWpDakVpbmM4K2lzUkNVdWdlMWJNL3pJOXl1RmdZSGcralFBc3c5?=
 =?utf-8?B?ak9wY3hNcG1YdERkbEJXcHBjTC85Q2FFUW9IblYzMG5jd1FZVGhOa1FaTS9l?=
 =?utf-8?B?b2tGZk5JSDVJTG1jcUpqVzFaMHpWcFFQUWRRaDNFMDNJVkttZW9lem0wSnNj?=
 =?utf-8?B?ajFsR0poT1gvY1FIaUtJL056MmVBdWRUYmFrdW15M0RoMlFpdllhR3hGWkV4?=
 =?utf-8?B?RXRPMGNQQUlwcDFQWVBCbnN6YzJFNWxPeHQrVkRRemtsYTc4eEoyWkpLYXh1?=
 =?utf-8?B?dHIrMzkzeW94cFIydE9LMnRXM2JRRCtmY2Y4ZVUxbGUvZXRuWGVqUDR4d3RU?=
 =?utf-8?B?Z0RvQ09lSnI0TURQK0ZwNjZML0tKbHVBcTFkcmExNE13Nm9lNVNIRkx6NVZ6?=
 =?utf-8?B?MXQ2NHUya1d6RFlkTnU2V3FiZURGS0l0UG05NVYrUDdPNG1qejVuZTlxY1Qy?=
 =?utf-8?B?Slc1U0Fqa2xRbmhucnQ4eUREM29jcVgrK2prQjlLNS9PWTRZd0kvWWhwTVUy?=
 =?utf-8?B?dEtFUTBGaTk5bWJ2NjFXYWU0Tnc0c01NTkVCWWNaazRmYXI5alR3WFc3ejlB?=
 =?utf-8?B?RUpZZlhPejd0Kzh3TE0wQnNKKzVzZi9IdlV2ZlBLY2xSUmFDWHlZY0xWU0lZ?=
 =?utf-8?B?Ui84OGJQcnlneW9ybFNHMkxtaEtkWHZETUlDQVptYlMwdW9RV2dOSkJ5THZu?=
 =?utf-8?B?MjBZZTJ2YjFFYk8xNHJXdnI2ZjVaN0o3azQyRE92cFZ0TUt2Z3ZEYmwrU0p2?=
 =?utf-8?B?NjZzc1dkN2NtSU9kdVU1am1Yc0RDTlpld3RjQ08vME5tVDByT1BaQndleVR2?=
 =?utf-8?Q?duviNNCfjE5IP5p1kjSHxpSJI7vzNx1cQf4YjfGkCZYY=3D?=
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-71ea3.templateTenant
X-MS-Exchange-CrossTenant-Network-Message-Id: 3c1d58b4-4af9-46e5-627f-08dc9d34145a
X-MS-Exchange-CrossTenant-AuthSource: CH2PR12MB4133.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jul 2024 20:50:19.0134
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg:
	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV2PR12MB5822
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hello.


after install espeakup in arch, I enable the service "systemctl enable 
espeakup", but when run Arch, espeakup not speak. espeakup.service is 
runing. is there another configuration?


regards.


