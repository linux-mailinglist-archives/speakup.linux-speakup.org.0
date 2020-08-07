Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 2E7EF23F547
	for <lists+speakup@lfdr.de>; Sat,  8 Aug 2020 01:35:55 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 9442E1C06FF; Fri,  7 Aug 2020 19:35:54 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=hotmail.com header.i=@hotmail.com header.a=rsa-sha256 header.s=selector1 header.b=jF8Dw7vQ;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 0795D1C0708;
	Fri,  7 Aug 2020 19:34:43 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 02C341C06F7; Fri,  7 Aug 2020 19:34:38 -0400 (EDT)
Received: from NAM11-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam11olkn2034.outbound.protection.outlook.com [40.92.19.34])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 78EF81C06F4
 for <speakup@linux-speakup.org>; Fri,  7 Aug 2020 19:34:32 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jK4CAvp0L4DFiX1BenqelyJkJA+xbsaj4E3GYw7ps2dxzTZ9CFb/S7ZpxZjeN9o2kJVC4DjddXhyHedtleipXzbuYV7e3RzaOsybIuxmni7l6fD7PnpDOGe/mFRcvvm3+cxQgv6F3Gr0x4JdEkwv5Z5pgfWnnqwwuZ39U5Iw/HazEaebw1+DGAbw49bM5av+548iGOUZsJ6n+cHVOfjkhYdux3y4E75qMb7XczGKNPVC/W9YwzkI6tZwDvM5fYulP09dj2TCsJ4kbq8kYeW3J833EVI9gsdM2QpQTJ7Oi38Nzha+IQh4aiwJPdrqrjqXm1ihzXhfanI5IPQmP3/rNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HfMJ3e/qYiTV1ne5ypJqdLaD1SqYYTXtBxkA7nSJgvs=;
 b=NYnA0q0Fwo2tuHhftJjx2ieViQX+AH16GECQzX8VTNVIBW7xiRi8NJz887ZiCmPU1u+SdyQPMT5d5FjkWg+vlEXwn6B5eKkBmey6xq1XHpsRpAxLkA3JGKANgIOlhUvBm8F7zoOibJwNs6T2v/rmOVgjUxo2UFEL/7GuQbT1DoQpOL37ljRVa7kwktl8iob1BhUoMza1q3+VU7kofRmZwhvImH/WgzGUjX47FQvU2Eclp4TawP2hqQDG5XCbturqG2HZDJXOeglqz04CRMjB537r+FSXF/Vqym175Ty2gdfGPXthV3XxqYK+pZa8F1nBr+a9RRe1oza4PeNeAqPqrQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HfMJ3e/qYiTV1ne5ypJqdLaD1SqYYTXtBxkA7nSJgvs=;
 b=jF8Dw7vQpgD5ul0sY466ymsvRoe8Oql/xjp49aTb0derG32tOsIhZ3KMRKi5y15Ud6uX8tOWk6HjcJg3kF0bWQNFbAqYskvwHLfzcbCMOwhT9FSHZGqEo2Rb3J9As1j/QSQVC3ddqDt1pfyEr5kW8g143yxcA6K/oRm67X3vQtbGWCEsyfMYLGatJ2QojWvstSmkfka98NNllTXPZzte9i7r56Ali3ZswnRK51fh+mi2xcDtk/0pAAKNbE+DrMrt4fxcWNgk31iTngpPmR+XFJlJW6mJlyuai4+/MCazLe9GILjm4W4Mi/dgk5l5KuKF5fq5UZy9+hutm9RSN9jkOg==
Received: from CO1NAM11FT009.eop-nam11.prod.protection.outlook.com
 (2a01:111:e400:3861::50) by
 CO1NAM11HT149.eop-nam11.prod.protection.outlook.com (2a01:111:e400:3861::236)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3261.16; Fri, 7 Aug
 2020 23:34:30 +0000
Received: from DM6PR14MB3647.namprd14.prod.outlook.com
 (2a01:111:e400:3861::45) by CO1NAM11FT009.mail.protection.outlook.com
 (2a01:111:e400:3861::317) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3261.16 via Frontend
 Transport; Fri, 7 Aug 2020 23:34:30 +0000
X-IncomingTopHeaderMarker: OriginalChecksum:EB05D1C991DCA9A54700FB5B3F3114157A058DC3C3B8F3F2E24B401459846D27;
 UpperCasedChecksum:F71699A39CEB33FDFB5AE1C4729784E4225BE9676CD8A7293D11D4CF6C0FA061;
 SizeAsReceived:8714; Count:48
Received: from DM6PR14MB3647.namprd14.prod.outlook.com
 ([fe80::48c2:a9c5:f81f:603]) by DM6PR14MB3647.namprd14.prod.outlook.com
 ([fe80::48c2:a9c5:f81f:603%6]) with mapi id 15.20.3261.020; Fri, 7 Aug 2020
 23:34:30 +0000
Subject: Re: Problems with espeakup and CFDisk
To: speakup@linux-speakup.org
References: <DM6PR14MB3647F5E81DF1F02FFDF68F6ADA490@DM6PR14MB3647.namprd14.prod.outlook.com>
 <20200807210312.GC3805@gregn.net>
From: Criss <crisspro@hotmail.com>
Message-ID: <DM6PR14MB36475CB66CAD33CE10C65456DA490@DM6PR14MB3647.namprd14.prod.outlook.com>
Date: Fri, 7 Aug 2020 19:34:24 -0400
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
In-Reply-To: <20200807210312.GC3805@gregn.net>
Content-Language: es-CL
X-ClientProxiedBy: SC1PR80CA0169.lamprd80.prod.outlook.com
 (2603:10d6:300:10::26) To DM6PR14MB3647.namprd14.prod.outlook.com
 (2603:10b6:5:1ba::16)
X-Microsoft-Original-Message-ID: <eb3d817d-9fca-d3da-d17f-2da144e7e1b7@hotmail.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.0.7] (190.5.52.129) by
 SC1PR80CA0169.lamprd80.prod.outlook.com (2603:10d6:300:10::26) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3261.19 via Frontend Transport; Fri, 7 Aug 2020 23:34:29 +0000
X-Microsoft-Original-Message-ID: <eb3d817d-9fca-d3da-d17f-2da144e7e1b7@hotmail.com>
X-TMN: [wcCk+IZi5nzTEHmUINFtrzu7Rp8qXEfb]
X-MS-PublicTrafficType: Email
X-IncomingHeaderCount: 48
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-Correlation-Id: 9d60df81-a8e6-4f2b-0e95-08d83b2a6e54
X-MS-TrafficTypeDiagnostic: CO1NAM11HT149:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ssQ5wilAemXPbjACTPO1i5/ZO9lNAyrmQBvlZvpu7UI/J9oMPR5y21BxD9usgIFrx8qWQomaClJAr1ZrPLp2NTuP6qNfRw2YMoROC7wchl6gqmHs8ScM6n34wqSIOi0VvXuqV/FYgE+DTndoS+Yoaw5y1KQityvQVdntiC4yaaTBXEwob4dOxnIJ4BEanPD4V9Z1h80bmTfjhkPJ9qDER1cW1R9mBX9ix62MIWWiIr966T32jwrm74wgtIaF15tD
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:0; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR14MB3647.namprd14.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:; SFS:; DIR:OUT; SFP:1901; 
X-MS-Exchange-AntiSpam-MessageData: yrUFjUa0xry8llT8oGHoldTaha2IrOC40WMgUPpBkYLuUweaaRvuxb77fez702yUKhZMYFaLl2S/EUBB57J3rd+uFydapli/qj/Lyg70Oty5xVP0kPECxvSduRUz09aLZ2Aru8sRkl6LcFuqP2iybQ==
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9d60df81-a8e6-4f2b-0e95-08d83b2a6e54
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Aug 2020 23:34:30.2515 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-AuthSource: CO1NAM11FT009.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1NAM11HT149
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

SG93IGNhbiBJIGNvbmZpZ3VyZSBoaWdobGlnaHQgdHJhY2tpbmcgPy5FbCAwNy0wOC0yMDIwIGEg
bGFzIDE3OjAzLCAKR3JlZ29yeSBOb3dhayBlc2NyaWJpw7M6Cj4gU291bmRzIGxpa2UgdGhlIG51
bWJlcnMgYXJlIHRoZSBwYXJ0aXRpb24gdHlwZXMgdG8gY2hvb3NlCj4gZnJvbS4gU2V0dGluZyBz
cGVha3VwIHRvIGhpZ2hsaWdodCB0cmFja2luZyBtaWdodCBoZWxwIHlvdS4KPgo+IEdyZWcKPgo+
Cj4gT24gRnJpLCBBdWcgMDcsIDIwMjAgYXQgMDM6NTc6MTBQTSAtMDQwMCwgQ3Jpc3Mgd3JvdGU6
Cj4+IEhlbGxvLgo+Pgo+PiBJcyBwb3NpYmxlIHVzZSBlc3BlYWt1cCBhbmQgQ0ZEaXNrIGNvcnJl
Y3RseT8uIFdoZW4gSSBydW4gQ0ZEaXNrIGZyb20gc2hlbGxJCj4+IGNhbiBzZWxlY3QgdGFibGUg
cGFydGl0aW9uIHR5cGUsIGNyZWF0ZSBhbmQgZGVsZXRlIHBhcnRpdGlvbnMsIGJ1dCB3aGVuIGkK
Pj4gdHJ5IGNob29zZSBhIHBhcnRpdGlvbiB0eXBlLCBlc3BlYWt1cCByZWFkIG5hbWJlcnMgKEkg
ZG9uJ3Qga25vdyB3aGF0IGFyZSkuCj4+IEVzcGVha3VwIG11c3QgdGFsazogbGludXggc3dhcCwg
d2VmaSBldGMuIElmIEkgdXNlIG51bWJlcnMga2V5IHRvCj4+IG5hdmVnYXRpw7NuLCBFc3BlYWsg
cmVhZCB0aGUgdHlwZSBwYXJ0aXRpb25zLCBidXQgd2hlbiBJIG5hdmVnYXRlIHdpdGggYXJyb3dz
Cj4+IGtleSwgYXBwZWFyIHRoZSBudW1iZXJzLgo+Pgo+Pgo+PiBCZXN0IHJlZ2FyZHMuCj4+Cj4+
IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+IFNwZWFr
dXAgbWFpbGluZyBsaXN0Cj4+IFNwZWFrdXBAbGludXgtc3BlYWt1cC5vcmcKPj4gaHR0cDovL2xp
bnV4LXNwZWFrdXAub3JnL2NnaS1iaW4vbWFpbG1hbi9saXN0aW5mby9zcGVha3VwCgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BlYWt1cCBtYWlsaW5n
IGxpc3QKU3BlYWt1cEBsaW51eC1zcGVha3VwLm9yZwpodHRwOi8vbGludXgtc3BlYWt1cC5vcmcv
Y2dpLWJpbi9tYWlsbWFuL2xpc3RpbmZvL3NwZWFrdXAK
