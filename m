Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 18F9A23F36C
	for <lists+speakup@lfdr.de>; Fri,  7 Aug 2020 21:58:41 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 3D9681C0703; Fri,  7 Aug 2020 15:58:39 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=hotmail.com header.i=@hotmail.com header.a=rsa-sha256 header.s=selector1 header.b=YRK7ZgXu;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id C8E151C073C;
	Fri,  7 Aug 2020 15:57:35 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 184291C06F4; Fri,  7 Aug 2020 15:57:21 -0400 (EDT)
Received: from NAM11-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam11olkn2092.outbound.protection.outlook.com [40.92.20.92])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 257CB1C029E
 for <speakup@linux-speakup.org>; Fri,  7 Aug 2020 15:57:18 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VqyCUhRTU3XnqOhxFeDSYBenY2MerCSmd8SQPVssN76qt5u2ff5Bu4yT7fC1bz9+/6QRurhE0/7FNXXi/UcFwmfA30qQMFK29rHYMQAkPlamF/rJitDqD6IT73ZApUk7jrrz5A5SLD0lbAoYAFdLgp/QzihRFl/QEvrDtQ1EIlAg4oelvns1I1Z3xOt//JoIDLPLuwL1TWszw0pogWRE/fb2GXe+Vo2Uf7jEHXYnYpsmx/l4sWsnR3633cpNCzgAK0ZzAA856oeo9ohdmpOUvQ+NYmBt6dNwVZJblkAtRUU5koEQviEBDW/Kz+6CRXatk/0nxAN8rzvPyu1+lrm//w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=O8EQLSQBg4zPALHVJtknX2NhVONU9Wb7jTp+abRS6Ek=;
 b=Oj1EGEYau/qN++Otf3hkIAKWpqThhQnpGgLAjwjaGH3MlVrx0LrwgFLiQQ91KHUn0OCIUPJOanOTDSY/Go1P61rUo0n+48rwJUbfFvZw1IE3QjSC4y75OpG9BeP8fsr/xUK3BxiDCfN/ytVM7c+PvrcbCcCGWERuf/BehR6zi+DUyrBHthpO5Sn1aj1jYujbgrswWHZUC8GrU98H67pagRvI55Pc82R4dQ4B8ybdKxOvVzTHD43vrcm2od2ALiXhymIECCgrb2oaO1USFYEEj7mxAmr255CSTuKPT8PaMda+dq4RNeR+BmEmaX5aB8RTfmJv34lk2JuniuStB56R3g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=O8EQLSQBg4zPALHVJtknX2NhVONU9Wb7jTp+abRS6Ek=;
 b=YRK7ZgXuwnM+q3r/I+Bf4CmcTUOct7H53ETvmgdBfo06i3gBzl7i9OOmaTR0W9B+EyEMfrewL9oja5kUsbhBx+51XJ6tWi6SVEa/JACvZ9VR+XKmm/PKLFvS0Yz83Dr6/1FkwbTmPZwJA6l9QCOfCl3UhU4xkI6xDUsZLqrEIc+uxZU1TUnLyCqME9yRDMOwf4mk8bdDpr0kZ+dW1lM0smGEA1Y+rJmZu0X1sx+V9b5SGoeMIc/IUtLwTtkg74l7EstDksMMUApV+PnZFjjMLUiYF+JnVXbfzzYY1uoMwctvxqqy2QMm8PSaSen/RtHjZWeSqjMLjV2qKAypqyDPxw==
Received: from DM6NAM11FT045.eop-nam11.prod.protection.outlook.com
 (2a01:111:e400:fc4d::40) by
 DM6NAM11HT188.eop-nam11.prod.protection.outlook.com (2a01:111:e400:fc4d::141)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3261.16; Fri, 7 Aug
 2020 19:57:16 +0000
Received: from DM6PR14MB3647.namprd14.prod.outlook.com
 (2a01:111:e400:fc4d::52) by DM6NAM11FT045.mail.protection.outlook.com
 (2a01:111:e400:fc4d::379) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3239.17 via Frontend
 Transport; Fri, 7 Aug 2020 19:57:16 +0000
X-IncomingTopHeaderMarker: OriginalChecksum:B251643113C374F9FACC9A2D44FE325A53FF1370DC646B684E7601BF2ED4B0E3;
 UpperCasedChecksum:45A8B8AD85D51E0D1C8600C1D5A82D2D3DBB23E5259A4991614CD9C4837E2597;
 SizeAsReceived:8510; Count:46
Received: from DM6PR14MB3647.namprd14.prod.outlook.com
 ([fe80::48c2:a9c5:f81f:603]) by DM6PR14MB3647.namprd14.prod.outlook.com
 ([fe80::48c2:a9c5:f81f:603%6]) with mapi id 15.20.3261.020; Fri, 7 Aug 2020
 19:57:16 +0000
To: speakup@linux-speakup.org
From: Criss <crisspro@hotmail.com>
Subject: Problems with espeakup and CFDisk
Message-ID: <DM6PR14MB3647F5E81DF1F02FFDF68F6ADA490@DM6PR14MB3647.namprd14.prod.outlook.com>
Date: Fri, 7 Aug 2020 15:57:10 -0400
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
Content-Language: es-CL
X-ClientProxiedBy: SC1PR80CA0103.lamprd80.prod.outlook.com (2603:10d6:2::30)
 To DM6PR14MB3647.namprd14.prod.outlook.com (2603:10b6:5:1ba::16)
X-Microsoft-Original-Message-ID: <c89f99c8-3f1f-631d-9c2f-dc71ae17a536@hotmail.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.0.7] (190.5.52.129) by
 SC1PR80CA0103.lamprd80.prod.outlook.com (2603:10d6:2::30) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3261.19 via Frontend Transport; Fri, 7 Aug 2020 19:57:15 +0000
X-Microsoft-Original-Message-ID: <c89f99c8-3f1f-631d-9c2f-dc71ae17a536@hotmail.com>
X-TMN: [u39+t9C7VA01zXc2O8+dZgWLW/WzzOen]
X-MS-PublicTrafficType: Email
X-IncomingHeaderCount: 46
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-Correlation-Id: f627e2e1-e074-44dd-f58e-08d83b0c1559
X-MS-TrafficTypeDiagnostic: DM6NAM11HT188:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: MM1LMRM79f7dakbel0MGh1V7OMfCeCzdj25xeeX6NE6J0SYwrh9iaxPmLMQIfalsqWVeam9AEESKjm3L5SZHcr4cxqeX00Qqq7+UbJwzvELBdh4a4JzwhYS72NHT3Gt6eWZxi34px+vw3PpSmTFQxD/NQtcNDdwWH/mxoLOKSpxGAbEt/MH/vEsn4cRPOIlcD8IoIaxDLbLXHIgj4GXzzA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:0; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR14MB3647.namprd14.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:; SFS:; DIR:OUT; SFP:1901; 
X-MS-Exchange-AntiSpam-MessageData: A5PYb+fbxoDY57qyac9i/vkIBc1TOn80CMMf3/T/TpfN2cY/e0XeMzAqHr8zCYSbhClQavDiI9F/KrN4LyAgRxKvh+iJXhJiO3CPJDDTKuZ6+a5HhLeSKzJC34fwwx5V+3+lL+AFthXCutRfzLQoxA==
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f627e2e1-e074-44dd-f58e-08d83b0c1559
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Aug 2020 19:57:16.2613 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-AuthSource: DM6NAM11FT045.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6NAM11HT188
X-BeenThere: speakup@linux-speakup.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <http://linux-speakup.org/cgi-bin/mailman/options/speakup>, 
 <mailto:speakup-request@linux-speakup.org?subject=unsubscribe>
List-Archive: <http://linux-speakup.org/pipermail/speakup/>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup-request@linux-speakup.org?subject=help>
List-Subscribe: <http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup>,
 <mailto:speakup-request@linux-speakup.org?subject=subscribe>
Reply-To: "Speakup is a screen review system for Linux."
 <speakup@linux-speakup.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

SGVsbG8uCgpJcyBwb3NpYmxlIHVzZSBlc3BlYWt1cCBhbmQgQ0ZEaXNrIGNvcnJlY3RseT8uIFdo
ZW4gSSBydW4gQ0ZEaXNrIGZyb20gCnNoZWxsSSBjYW4gc2VsZWN0IHRhYmxlIHBhcnRpdGlvbiB0
eXBlLCBjcmVhdGUgYW5kIGRlbGV0ZSBwYXJ0aXRpb25zLCAKYnV0IHdoZW4gaSB0cnkgY2hvb3Nl
IGEgcGFydGl0aW9uIHR5cGUsIGVzcGVha3VwIHJlYWQgbmFtYmVycyAoSSBkb24ndCAKa25vdyB3
aGF0IGFyZSkuIEVzcGVha3VwIG11c3QgdGFsazogbGludXggc3dhcCwgd2VmaSBldGMuIElmIEkg
dXNlIApudW1iZXJzIGtleSB0byBuYXZlZ2F0acOzbiwgRXNwZWFrIHJlYWQgdGhlIHR5cGUgcGFy
dGl0aW9ucywgYnV0IHdoZW4gSSAKbmF2ZWdhdGUgd2l0aCBhcnJvd3Mga2V5LCBhcHBlYXIgdGhl
IG51bWJlcnMuCgoKQmVzdCByZWdhcmRzLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KU3BlYWt1cCBtYWlsaW5nIGxpc3QKU3BlYWt1cEBsaW51eC1zcGVh
a3VwLm9yZwpodHRwOi8vbGludXgtc3BlYWt1cC5vcmcvY2dpLWJpbi9tYWlsbWFuL2xpc3RpbmZv
L3NwZWFrdXAK
