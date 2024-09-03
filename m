Return-Path: <speakup+bounces-1205-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 005D996A16C
	for <lists+speakup@lfdr.de>; Tue,  3 Sep 2024 16:59:02 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 18BFD3841DD; Tue, 03 Sep 2024 10:59:01 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id F22783822AA
	for <lists+speakup@lfdr.de>; Tue, 03 Sep 2024 10:59:00 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id D5761383CB3; Tue, 03 Sep 2024 10:58:56 -0400 (EDT)
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (mail-dm6nam10on2131.outbound.protection.outlook.com [40.107.93.131])
	by befuddled.reisers.ca (Postfix) with ESMTPS id A90B3382089
	for <speakup@linux-speakup.org>; Tue, 03 Sep 2024 10:58:56 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DWw4dCXTc+6GdHwnX8MqcZw45AsQxQvHJfnZoRN86e+phHO1HyYTCOAFQPeq9lLCV8M5hHV44FNA6l+BWRd9l7dN1B7JnAVRwFw9ScBITEj2Z8LZ91M2c+LzKtIUfM7X34zL2Ly6PD0S1LufoTJmYafeA47TakXmi/HcHPTuf+fiKurc5zcBz/NekB0g+wF9ThW4uhKCiPr2hMEh8b5Lu+BNb/+OgFq/rV6kit0e3SeKsfAWxELJLKG7s9J2qFqHTZM1jtstEqmCzYGOPizKYasXzHvNp3ZebtIioM2iUSm/aH7Ja2yOUX4zFLzew68pIfaD+Vny6R5t9pXssLD2PQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KaeSpE6qYkJQz8IJ1ZOP4NXrCOvW38xaKa/B/4SNWcc=;
 b=hX/n0ltwafhgGrCh/zYUQZDsphP7gBEYYXH1lOyV2EEsyFX1zPB8BbEF+Sda51LGTNPW69W6KvCOzEx2NmAAXLzUvj4S9PG0dP3jxxmhzhQc3pvVYNEpNVPszdzQSmFllbaJdXUayedhlWf/29+6CtSrVbI0OxAHbKas8ZRKAG1Z57hMIE8ti554vU+boaQqdmjB/RCR5+ot5GSQGZO/mPI59qyPHM4RtWBcMlfff090ZGjQpK1TPBIiauluJKL5jXEQp9IwmpOSj9c+xEAWKeV83DO/OBYuB1OKP2dY7SK+UHO0v22plMVuYEsSHOQVWX3cMaqgr10iUOU9qwt/ew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=crosslink.net; dmarc=pass action=none
 header.from=crosslink.net; dkim=pass header.d=crosslink.net; arc=none
Received: from MN2PR18MB3344.namprd18.prod.outlook.com (2603:10b6:208:15a::12)
 by MW4PR18MB5157.namprd18.prod.outlook.com (2603:10b6:303:1b4::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.23; Tue, 3 Sep
 2024 14:58:50 +0000
Received: from MN2PR18MB3344.namprd18.prod.outlook.com
 ([fe80::e77b:5e45:ff9f:4d53]) by MN2PR18MB3344.namprd18.prod.outlook.com
 ([fe80::e77b:5e45:ff9f:4d53%7]) with mapi id 15.20.7918.024; Tue, 3 Sep 2024
 14:58:50 +0000
From: cstrobel crosslink.net <cstrobel@crosslink.net>
To: Martin McCormick <martin.m@suddenlink.net>, "speakup@linux-speakup.org"
	<speakup@linux-speakup.org>
Subject: Re: SPFUNSUPPORTED MAY BE MALICIOUS CLI Terminals with Speakup (Was
 howto run speakup/orca concurrently in ubuntu)
Thread-Topic: SPFUNSUPPORTED MAY BE MALICIOUS CLI Terminals with Speakup (Was
 howto run speakup/orca concurrently in ubuntu)
Thread-Index:
 AQHa/TJ0NpEgjpMMBUGUO5q26eCe07JEdHUAgAAhaACAADd+gIAAB9+AgAAxNwCAAAhgAIABGCAc
Date: Tue, 3 Sep 2024 14:58:50 +0000
Message-ID:
 <MN2PR18MB3344FAF885B2801CAC79DD75C7932@MN2PR18MB3344.namprd18.prod.outlook.com>
References: <ZoieyBFD0TXlL_bd@cudneys.ca> <ZojtZ3RQxdiZaMN1@gregn.net>
 <E1sl62C-0002oX-0Y@wb5agz> <b47611eb-67aa-5c99-07b8-3b31b4168e67@csir.co.za>
 <e7b27ee1-63bd-430c-8d66-d6dc9e9829ec@math.wisc.edu>
 <E1slBYr-0003js-0w@wb5agz> <cb2e836c-c6ce-aa54-a752-3a0d56126c7a@reisers.ca>
 <8aaba50a-94aa-4171-afa0-71530ea1290c@jasonjgw.net>
 <E1slFDa-0001Hb-0R@wb5agz>
In-Reply-To: <E1slFDa-0001Hb-0R@wb5agz>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
msip_labels:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=crosslink.net;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MN2PR18MB3344:EE_|MW4PR18MB5157:EE_
x-ms-office365-filtering-correlation-id: dfd3d08d-75ea-4fc8-e64d-08dccc28eb85
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam:
 BCL:0;ARA:13230040|7093399012|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info:
 =?iso-8859-1?Q?hXa3uqpsA6LuMUOd5uAFjISs/+v32hvHKF8+HCUxORcoE6TXTz/7GM2Xnx?=
 =?iso-8859-1?Q?GPo3VmGceTdJOsMZbWUWBh9KaXCXREppIDOky4eAXPmG8SlcOoU6jamOsE?=
 =?iso-8859-1?Q?A4nmhsBnDbkMEtpBvfBPM7CDRMgelgWVlv3VmMobPajX2GeB2/n7Qu8BKj?=
 =?iso-8859-1?Q?hsuh7u/5OSAyIadKwCdVN3OAjsBveH7KMwc4FehX8P15P29qRGzXm+Rcs1?=
 =?iso-8859-1?Q?L4UJeK6lxt9j9vx2hJ9PGIsD07oSFE7zMPjBNnFb4COQSPqaLa8dYakxm+?=
 =?iso-8859-1?Q?81fP8EMcpwsM7vXRKSJTESR8ba6IyTYfGCFgAYqTND2yXBYkcBlFNWBvIJ?=
 =?iso-8859-1?Q?R5ZQcPFZNuBpImCwfVDbBsOATjqKy/tfOMFCRC3elEVnXyv3WSz7qT1d42?=
 =?iso-8859-1?Q?5rKT5F/1XEJP6eNvx/SJTNBHBMDgewUFcXzj6njHMCHSIk2kigm2ei2A5O?=
 =?iso-8859-1?Q?2e27J/skkoAzM1diOHSal0YCLKJm2Pp1HZbZULJstwK68dBHvxm8tjRInQ?=
 =?iso-8859-1?Q?Nc4sp39WMo9O8UH/gBAua+riITCO+3/DOURGHmPrRQxmQtC/rsunWdYjCR?=
 =?iso-8859-1?Q?LauYVpzx339WoRlcNz4JnxUV0fp/99L3Mm07rjenGiQankH0MjNpcH2hg+?=
 =?iso-8859-1?Q?0rGQ0TaZxZFIHLvvUeal/Dppjk1XJuXAf/NyGKkxy8KW7762JQErCHa6WA?=
 =?iso-8859-1?Q?1hExSxhH9TshidEWq9G7hlyHfaXmTc05blcEmrEF4ARsDK7k5ufGQxN/Mj?=
 =?iso-8859-1?Q?vFWKGLg3LQCeegMcVUl169QFc/wAiVajC3c1BcH4X3aI+u9wCH86CHZTLD?=
 =?iso-8859-1?Q?v9Lrh4h/vyW6wB6nwaNZaKJVl68wDdHVHHCGoMx9KG3rbYV23RFrXx1Siy?=
 =?iso-8859-1?Q?i4PlwRTIGGaVgq3zAWExlhrby6JS9uOnzV6W7BUnJ3YT4knOobhRsc4X9K?=
 =?iso-8859-1?Q?wYzde7vFKRKIt92OkVasVuAIjqoOYJiRMdiZSM7hW2szUznAGnIikIt7oN?=
 =?iso-8859-1?Q?6qka+tUCwDWI7GQhMj2iilMYME1/J1IrY1+7v/+jmVXA+H1v+K8HrEsWvy?=
 =?iso-8859-1?Q?ma4hpUsMDKTgALA6r3kL1YmyoQbz6pEUV2hdb+2fGyHFFktyRCVEKWjGt7?=
 =?iso-8859-1?Q?qqVA/A1cFe4L08vHmrScwW0iocPusFFz2CiknY0oEg8jianMs8yF0AMKqE?=
 =?iso-8859-1?Q?aTm1fspWYxkF7aEV4/2B9J5umvdcqoQcr7JR0L9aXZe8Rth8OQVoun0aCi?=
 =?iso-8859-1?Q?phxx3Szu6E7Kondc5T+c7vbgz/Vz72IIxqqom+LEvqGeFxuPxD8GZ/MM49?=
 =?iso-8859-1?Q?GZKQRp8b/dxrUBFllJzexQcF1+DwdYy5OZi3Eeqg0n9/y7MPXta/BfQRmG?=
 =?iso-8859-1?Q?U8EjpMUCLcoFWIsi6v0TaDqXQmFIYGKZRkXqkcfuwKhRGdTbCn3VHBsXpf?=
 =?iso-8859-1?Q?24xuyzk3Vfu5K0qkjbf/idzZWoKQpdlUCMUNp4w1hvNwMlxII33fD4hV6y?=
 =?iso-8859-1?Q?0=3D?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR18MB3344.namprd18.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(7093399012)(1800799024)(366016)(376014)(38070700018);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?iso-8859-1?Q?z5KsDrAqitGGrUs577NClKKx8pKtsnJFG/sfEdZdYVTWHFW8Rdw82Zrzz4?=
 =?iso-8859-1?Q?X4YtTQsBtIyo8wkoHcXbgZW66i2mWwGm6P7onjAUtNtJD4Viyl5wUCLVtd?=
 =?iso-8859-1?Q?20F8quwW9KxU+zkX05yS7ugyLBq0ZXvFoFxaH3Lg+Ir+qNnpKuR4/NGPnu?=
 =?iso-8859-1?Q?jxaOnguTXlcYTHjm+UAyQjbR5a5L7uisovufMeXo0vi/DpEjG1DVVHS/ZT?=
 =?iso-8859-1?Q?BkLe4gTE4jFrklp/+70GGctzZBc0+K5EQuLYkoNEFuPO93MjNaf8uobEE6?=
 =?iso-8859-1?Q?1nlGXpZQ2XnugM9TZ8kB8y5OF9g5gFwXoQib2GhykBINQ3GzJQir9OVrQX?=
 =?iso-8859-1?Q?/DLv/g08SvRA7CpDtv3PUcy534RdrS8/09js+bdBUzIzEQnKiQGJMC8xZr?=
 =?iso-8859-1?Q?dX5Ci0EWvO7S4hD3unTLpHLCLR9wTHbRNQHnxGwlmXvYzwuN3NGsDHKuE8?=
 =?iso-8859-1?Q?F3Ki6JlMVB3UkjnkiYQNdjXpLJasJzoB0XoD4Z+/itA85jq3L7EuOUT1Vt?=
 =?iso-8859-1?Q?SRwwJmPsXFHw/mg299UMmUhSW/DP1TtkaWDSyhZ8AwSIQkD3RuOnXhLv1w?=
 =?iso-8859-1?Q?2by553RYc/IjV/CGfDUbMvz1SR8wMEaWt1nvA/V+Ffdd1jeEl+ewlr9qCL?=
 =?iso-8859-1?Q?V1B/zogDUmVzyLD98uSp0z5IenXO2fHb3bFlaDTUVJKLrUyEGmfNZTWmPR?=
 =?iso-8859-1?Q?0NGWStIhpt9CTgGAcUi0Ge0BcB+lE+MvyhDQfr2JEbtPa7jPU2gncnD5t1?=
 =?iso-8859-1?Q?cZFro5es2n8OipYLozvCWNNgPjvi6gAExxd9MMBUAAbGojI/ioce/TwK1M?=
 =?iso-8859-1?Q?BiKqSc7+o95LCCPLJaVzwJ0Mzy7Du6LzUXz1U9u5PrzKa5pdLt7hdaxl2M?=
 =?iso-8859-1?Q?x+8DJzVva4QrZVi/sW753Qu/ahUTSP9G1hkraQ/CsdZYqpNbzNDLVUTmPq?=
 =?iso-8859-1?Q?K5qOyPrzmD89DAuf62mqEtNLvwm/X3++GDqlsGj9m1NyJr5Rr/dn58KSal?=
 =?iso-8859-1?Q?9MNloyI+228Qw3hCqQ9bV4/hfg0MZMTdH5L8CV/mvOB0OUSd3iFGpPrTh6?=
 =?iso-8859-1?Q?MdlUF4P2DPBv+815J79JHN0KFAP8+mNXh7Ht/R/XLNBGtGMOJX8aHo81d5?=
 =?iso-8859-1?Q?kcYOmRMVwD7zm1JIfCNzBdy3+2ZixNTwNDns9i2naIvZZ4xa5qPPnWBfwm?=
 =?iso-8859-1?Q?C5lzIZu1YRA4m82oR7JZvBPLMzQOHurIgXEVCjh1d4oXwlI2+bP5nLj+RR?=
 =?iso-8859-1?Q?dGQyER2+iMwOfV9hj3rwnrW5Ppmgbi9guolJa2a6M9e3AYLawVzRYZ/5nA?=
 =?iso-8859-1?Q?QO9wWH5Vg/QK3VA3igzRI2iomkrQ2HsS/SMrSX2rSaJZOBpRLfWfjWx+mt?=
 =?iso-8859-1?Q?DczfMqgXMxVHzBzhB4IM0Hgd9BtRVlMEOVV+kN+c30sPcbIcpI5QKas163?=
 =?iso-8859-1?Q?PfW2Q2OHXTDf5qdaTs9udbm4VWQDaLy84DbYzjtYJN2tAF6O8dBzMlXKXr?=
 =?iso-8859-1?Q?nDR8BgCUGpUieYkVQlFjAGvrNHh07WjolW+ChHgOtWN+I9dDiJUunto/WE?=
 =?iso-8859-1?Q?qlFzuY8pI/lMcUrkIscxHwB6CiqTEF0uatwmF0S9SVrn1Kv/+iusQBs5ua?=
 =?iso-8859-1?Q?oKbgXwLxcmYfdP9i6INO51P8gAgla4TbTq?=
Content-Type: multipart/alternative;
	boundary="_000_MN2PR18MB3344FAF885B2801CAC79DD75C7932MN2PR18MB3344namp_"
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
X-OriginatorOrg: crosslink.net
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR18MB3344.namprd18.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dfd3d08d-75ea-4fc8-e64d-08dccc28eb85
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Sep 2024 14:58:50.1709
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: ffc1c47c-8879-4594-ade0-28ea8c2224c5
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8EKWuPAbVoJOmeAvLDO2ICUkU5Jp2FU/im9XxIEWrPiGlmHlXILewp2qd3xFQmeQdRjf0kj5pRr4Djyv0t7XYA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR18MB5157
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

--_000_MN2PR18MB3344FAF885B2801CAC79DD75C7932MN2PR18MB3344namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

aI have been using Speakup and ORCA at the same time for about a year on Bo=
okworm.  I have Bookworm backports active. I agree with Jason, use Pipewire=
.  I'm not sure why folks want to use Ubuntu any more unless they have some=
 very specific package that isn't on Debian you may be asking for more trou=
ble than it is worth.
I know I read the Debian accessibility FAQ, but I'm not sure exactly what I=
 did off the top of my head.
Make sure that pipewire-pulse is running on your system by doing "ps -ef|gr=
ep pipewire" or something similar.



________________________________
From: Martin McCormick <martin.m@suddenlink.net>
Sent: Monday, September 2, 2024 6:08 PM
To: speakup@linux-speakup.org <speakup@linux-speakup.org>
Subject: Re: SPFUNSUPPORTED MAY BE MALICIOUS CLI Terminals with Speakup (Wa=
s howto run speakup/orca concurrently in ubuntu)

Thanks for the clarification about pipewire and why it is here.

        I didn't realize that pulseaudio is fading into the
sunset as it has been around and served well for quite a few
years.

        To remind those who have followed this thread today, the
only real problem I am talking about is minor compared with stuff
that is supposed to work but doesn't.

        It looks like one should be able to get speakup to work
older world of pure text-based command-line consoles since there
are things that runa little more smoothly there than when GUI
tools are needed.

        By the same token, the present implimentation of speakup
with gnome also does well and all I was hoping to do was have
both functionalities on the same system.

        Thanks for the information that has been provided as it
is useful and I am still interested if there is a way to do this
but at least things are about 95% working.

Martin

"Jason J.G. White" <jason@jasonjgw.net> writes:
> While we're discussing clarifications, note that Pulseaudio is effectivel=
y
> deprecated now. Pipewire has superseded it. Also, Pipewire includes an
> implementation of the Pulseaudio client API, so that client applications
> designed for Pulseaudio still work normally under Pipewire.


________________________________
From: Martin McCormick <martin.m@suddenlink.net>
Sent: Monday, September 2, 2024 6:08 PM
To: speakup@linux-speakup.org <speakup@linux-speakup.org>
Subject: Re: SPFUNSUPPORTED MAY BE MALICIOUS CLI Terminals with Speakup (Wa=
s howto run speakup/orca concurrently in ubuntu)

Thanks for the clarification about pipewire and why it is here.

        I didn't realize that pulseaudio is fading into the
sunset as it has been around and served well for quite a few
years.

        To remind those who have followed this thread today, the
only real problem I am talking about is minor compared with stuff
that is supposed to work but doesn't.

        It looks like one should be able to get speakup to work
older world of pure text-based command-line consoles since there
are things that runa little more smoothly there than when GUI
tools are needed.

        By the same token, the present implimentation of speakup
with gnome also does well and all I was hoping to do was have
both functionalities on the same system.

        Thanks for the information that has been provided as it
is useful and I am still interested if there is a way to do this
but at least things are about 95% working.

Martin

"Jason J.G. White" <jason@jasonjgw.net> writes:
> While we're discussing clarifications, note that Pulseaudio is effectivel=
y
> deprecated now. Pipewire has superseded it. Also, Pipewire includes an
> implementation of the Pulseaudio client API, so that client applications
> designed for Pulseaudio still work normally under Pipewire.


--_000_MN2PR18MB3344FAF885B2801CAC79DD75C7932MN2PR18MB3344namp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
aI have been using Speakup and ORCA at the same time for about a year on Bo=
okworm.&nbsp; I have Bookworm backports active. I agree with Jason, use Pip=
ewire.&nbsp; I'm not sure why folks want to use Ubuntu any more unless they=
 have some very specific package that isn't
 on Debian you may be asking for more trouble than it is worth.</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
I know I read the Debian accessibility FAQ, but I'm not sure exactly what I=
 did off the top of my head.</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Make sure that pipewire-pulse is running on your system by doing &quot;ps -=
ef|grep pipewire&quot; or something similar.</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div id=3D"appendonsend"></div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<hr style=3D"display: inline-block; width: 98%;">
<div id=3D"divRplyFwdMsg" dir=3D"ltr" class=3D"elementToProof"><span style=
=3D"font-family: Calibri, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);=
"><b>From:</b>&nbsp;Martin McCormick &lt;martin.m@suddenlink.net&gt;<br>
</span></div>
<div style=3D"direction: ltr; font-family: Calibri, sans-serif; font-size: =
11pt; color: rgb(0, 0, 0);">
<b>Sent:</b>&nbsp;Monday, September 2, 2024 6:08 PM<br>
<b>To:</b>&nbsp;speakup@linux-speakup.org &lt;speakup@linux-speakup.org&gt;=
</div>
<div style=3D"direction: ltr; font-family: Calibri, sans-serif; font-size: =
11pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<b>Subject:</b>&nbsp;Re: SPFUNSUPPORTED MAY BE MALICIOUS CLI Terminals with=
 Speakup (Was howto run speakup/orca concurrently in ubuntu)</div>
<div style=3D"direction: ltr;" class=3D"elementToProof">&nbsp;</div>
<div class=3D"elementToProof" style=3D"font-size: 11pt;">Thanks for the cla=
rification about pipewire and why it is here.<br>
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; I didn't realize that pulseaudio=
 is fading into the<br>
sunset as it has been around and served well for quite a few<br>
years.<br>
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; To remind those who have followe=
d this thread today, the<br>
only real problem I am talking about is minor compared with stuff<br>
that is supposed to work but doesn't.<br>
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; It looks like one should be able=
 to get speakup to work<br>
older world of pure text-based command-line consoles since there<br>
are things that runa little more smoothly there than when GUI<br>
tools are needed.<br>
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; By the same token, the present i=
mplimentation of speakup<br>
with gnome also does well and all I was hoping to do was have<br>
both functionalities on the same system.<br>
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Thanks for the information that =
has been provided as it<br>
is useful and I am still interested if there is a way to do this<br>
but at least things are about 95% working.<br>
<br>
Martin<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
&quot;Jason J.G. White&quot; &lt;jason@jasonjgw.net&gt; writes:<br>
&gt; While we're discussing clarifications, note that Pulseaudio is effecti=
vely<br>
&gt; deprecated now. Pipewire has superseded it. Also, Pipewire includes an=
<br>
&gt; implementation of the Pulseaudio client API, so that client applicatio=
ns<br>
&gt; designed for Pulseaudio still work normally under Pipewire.<br>
<br>
</div>
<div id=3D"appendonsend"></div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<hr style=3D"display: inline-block; width: 98%;">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><span style=3D"font-family: Calibri, =
sans-serif; font-size: 11pt; color: rgb(0, 0, 0);"><b>From:</b>&nbsp;Martin=
 McCormick &lt;martin.m@suddenlink.net&gt;<br>
<b>Sent:</b>&nbsp;Monday, September 2, 2024 6:08 PM<br>
<b>To:</b>&nbsp;speakup@linux-speakup.org &lt;speakup@linux-speakup.org&gt;=
<br>
<b>Subject:</b>&nbsp;Re: SPFUNSUPPORTED MAY BE MALICIOUS CLI Terminals with=
 Speakup (Was howto run speakup/orca concurrently in ubuntu)</span>
<div>&nbsp;</div>
</div>
<div style=3D"font-size: 11pt;">Thanks for the clarification about pipewire=
 and why it is here.<br>
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; I didn't realize that pulseaudio=
 is fading into the<br>
sunset as it has been around and served well for quite a few<br>
years.<br>
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; To remind those who have followe=
d this thread today, the<br>
only real problem I am talking about is minor compared with stuff<br>
that is supposed to work but doesn't.<br>
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; It looks like one should be able=
 to get speakup to work<br>
older world of pure text-based command-line consoles since there<br>
are things that runa little more smoothly there than when GUI<br>
tools are needed.<br>
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; By the same token, the present i=
mplimentation of speakup<br>
with gnome also does well and all I was hoping to do was have<br>
both functionalities on the same system.<br>
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Thanks for the information that =
has been provided as it<br>
is useful and I am still interested if there is a way to do this<br>
but at least things are about 95% working.<br>
<br>
Martin<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
&quot;Jason J.G. White&quot; &lt;jason@jasonjgw.net&gt; writes:<br>
&gt; While we're discussing clarifications, note that Pulseaudio is effecti=
vely<br>
&gt; deprecated now. Pipewire has superseded it. Also, Pipewire includes an=
<br>
&gt; implementation of the Pulseaudio client API, so that client applicatio=
ns<br>
&gt; designed for Pulseaudio still work normally under Pipewire.<br>
<br>
</div>
</body>
</html>

--_000_MN2PR18MB3344FAF885B2801CAC79DD75C7932MN2PR18MB3344namp_--

