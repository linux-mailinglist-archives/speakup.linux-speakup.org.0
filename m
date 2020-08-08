Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 9595323F8AB
	for <lists+speakup@lfdr.de>; Sat,  8 Aug 2020 21:56:03 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id AC17B1C0708; Sat,  8 Aug 2020 15:56:02 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=hotmail.com header.i=@hotmail.com header.a=rsa-sha256 header.s=selector1 header.b=DeaHJSGB;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id DA6C81C0752;
	Sat,  8 Aug 2020 15:55:06 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 43D801C06EB; Sat,  8 Aug 2020 15:54:55 -0400 (EDT)
Received: from NAM04-SN1-obe.outbound.protection.outlook.com
 (mail-oln040092011078.outbound.protection.outlook.com [40.92.11.78])
 by befuddled.reisers.ca (Postfix) with ESMTPS id E8C021C0170
 for <speakup@linux-speakup.org>; Sat,  8 Aug 2020 15:54:50 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LS1mhrftOahWeFwy2NyflBx0gmeM7g4Wh1dTvEdXulr7ox/ZbdNhDZ31B73pqspAR7J61AfhRJPk99ShLoQw/NGd9xzZDN2e4Le1fhTPyrJ2KhWvyISauai7shOJ5i1PZEpEPrNMZFITtr3iVPcNmnLZvIySGlmS3+FXDlSSiJ5VO+dIbGpGY+3HiTM6gCfv5bhtffIOjEcxINihVUYzanqxkd9xOcz232lp5ax4F0awvPpuRvqimxbuugPRJ/aur/lUVt3CTmncSzwsXaJaD5sI6ucSeFALON62zHD6U4WCekXY9vp+QzMQqKVLA76oSdjvpyD2xIkr3DJfquwJ3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yi3CEJS8LcKRJDKOvHNHluBC7U6vz/Td+QialXsCpgs=;
 b=hlRaQGv5Ul0l8IeeAlYPMYZQBKezwXuqGus5M5DiknHibwqfDsyjRWswnTN2xTsf4GpYFd/pp7q0Nf2X5vnnTzJ5+jXXiUt9rFjXOlCTpK7EVQpeGV7W8lsFQPbOaNcfnvX+7e7wRSeTY9rjvLhe6MR1exPJVOfs/LfU/hoHQ79PxN+oQoDy0r/0Of0bctr3L3IPoHfYLkWRDsCegbmzjTNcroDHZpHxnyvYl4iZgPjKIS5sw9ixw+sgvTZYuuGCftWeVdTrYKP1jiFbAQjGna1MOxlv+oePIKwhZ/Mj0okqLWoBQUNPVp0oYorSi7yRg/Bt+AQAQloEOBCNwZdaxg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yi3CEJS8LcKRJDKOvHNHluBC7U6vz/Td+QialXsCpgs=;
 b=DeaHJSGBvebdLvZpVcNyzx7G1bSSrWqB8wSC+adQqaLkWb7I9rVexDaL83t9m4lbDHYDP45wFOnhlHu1xagkFlGatAV2/FyqHOlEMxmArOy+RsHDCyOcsDiFTzLINkpdWI3zxWF2eZdlBadSHZYgyfQGQssF/1czyozdOA9SevbnKE8jNTxKAILCOXnVki95dBToL92igAPNST5fsKPhvac4j4VS0Z/FVS8Ig5GD7xsjQy2Ul/PqgUrTW34wpxDPKufDWTZQCSVP+0g12i/D1E+72k7BuWqn7SVW0kbO+l0rlJ+Vh3jsfRPkze/s8msQGyvwEL2kbLrPd4L4fiDIrw==
Received: from CO1NAM04FT012.eop-NAM04.prod.protection.outlook.com
 (10.152.90.55) by CO1NAM04HT148.eop-NAM04.prod.protection.outlook.com
 (10.152.90.232) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3239.20; Sat, 8 Aug
 2020 19:54:48 +0000
Received: from DM6PR14MB3647.namprd14.prod.outlook.com
 (2a01:111:e400:7e4d::43) by CO1NAM04FT012.mail.protection.outlook.com
 (2a01:111:e400:7e4d::115) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3239.20 via Frontend
 Transport; Sat, 8 Aug 2020 19:54:48 +0000
X-IncomingTopHeaderMarker: OriginalChecksum:B10060CADF6B4342EBE8818CA7A68BE1DE0F1883143DD9F3AD6287F7BDD36E6B;
 UpperCasedChecksum:D075BB5396469992DC38B318EDCCBF055F0D4985C11CA8A032CBCBC261CF9B38;
 SizeAsReceived:8815; Count:48
Received: from DM6PR14MB3647.namprd14.prod.outlook.com
 ([fe80::48c2:a9c5:f81f:603]) by DM6PR14MB3647.namprd14.prod.outlook.com
 ([fe80::48c2:a9c5:f81f:603%6]) with mapi id 15.20.3261.022; Sat, 8 Aug 2020
 19:54:48 +0000
Subject: Re: Problems with espeakup and CFDisk
To: speakup@linux-speakup.org
References: <DM6PR14MB3647F5E81DF1F02FFDF68F6ADA490@DM6PR14MB3647.namprd14.prod.outlook.com>
 <20200807210312.GC3805@gregn.net>
 <DM6PR14MB36475CB66CAD33CE10C65456DA490@DM6PR14MB3647.namprd14.prod.outlook.com>
 <20200808005157.GA5284@gregn.net>
From: Criss <crisspro@hotmail.com>
Message-ID: <DM6PR14MB36471781B044E12C084D0D63DA460@DM6PR14MB3647.namprd14.prod.outlook.com>
Date: Sat, 8 Aug 2020 15:54:41 -0400
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
In-Reply-To: <20200808005157.GA5284@gregn.net>
Content-Language: es-CL
X-ClientProxiedBy: SC1PR80CA0081.lamprd80.prod.outlook.com
 (2603:10d6:4:67::32) To DM6PR14MB3647.namprd14.prod.outlook.com
 (2603:10b6:5:1ba::16)
X-Microsoft-Original-Message-ID: <e487e9b4-fc4c-1724-d8be-115706d69f22@hotmail.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.0.7] (190.5.52.129) by
 SC1PR80CA0081.lamprd80.prod.outlook.com (2603:10d6:4:67::32) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3261.19 via Frontend Transport; Sat, 8 Aug 2020 19:54:46 +0000
X-Microsoft-Original-Message-ID: <e487e9b4-fc4c-1724-d8be-115706d69f22@hotmail.com>
X-TMN: [TaaT2zu7TclQVfpUP/sLcp4x+dCDsfO3]
X-MS-PublicTrafficType: Email
X-IncomingHeaderCount: 48
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-Correlation-Id: 7921f137-ea95-420d-8f75-08d83bd4e740
X-MS-TrafficTypeDiagnostic: CO1NAM04HT148:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: B/s3o0lFFHQ23lwZgD2dADZAz0RycNtAGbIcV4lWr3M1I7XS0B8ysEUOnfDj06133atu7IIDL3saXedwYzpCIFkmq4y/AJ4WfED3WDO6z1ZAk4Sy80q+cWd2PdeQhytRhUS11AsaYenCuxXQBo4jf8gtLCSdxl+f2JtcOsBUWXyNsj2Mz/DHNUHL7YBlK8UQahxNIV2xtm+itNBkl6+9MYeemlfKsMlITfD8Rt3OWhWrF0pgurYPY/VsPp6VL64c
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:0; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR14MB3647.namprd14.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:; SFS:; DIR:OUT; SFP:1901; 
X-MS-Exchange-AntiSpam-MessageData: qD1jpEvDz/Wv9rIFm+AD8tcXD8/kZir3DJLKqvF55igfnLT8XJj3lBVpn8u0b38MulFa7dloFmjitNnt4ZPa5YNNlMFOhYBz+t3gvvcGqcgIPlahIX8pKAJ2VeYzgr+cTllyYCZ5va26JwxwZM/R3A==
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7921f137-ea95-420d-8f75-08d83bd4e740
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Aug 2020 19:54:48.0550 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-AuthSource: CO1NAM04FT012.eop-NAM04.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1NAM04HT148
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

VGhhbmsgeW91ciBzbyBtdWNoLCB3b3JraW5nIGdvb2QuCgpSZWdhcmRzLkVsIDA3LTA4LTIwMjAg
YSBsYXMgMjA6NTEsIEdyZWdvcnkgTm93YWsgZXNjcmliacOzOgo+IE9uIEZyaSwgQXVnIDA3LCAy
MDIwIGF0IDA3OjM0OjI0UE0gLTA0MDAsIENyaXNzIHdyb3RlOgo+PiBIb3cgY2FuIEkgY29uZmln
dXJlIGhpZ2hsaWdodCB0cmFja2luZyA/Lgo+IEJ5IHByZXNzaW5nIHRoZSBhc3RlcmlzayBrZXkg
b24gdGhlIG51bWVyaWMga2V5cGFkIHVudGlsIHNwZWFrdXAgc2F5cwo+ICJoaWdobGlnaHQgdHJh
Y2tpbmcuIgo+Cj4gSSByZWNvbW1lbmQgeW91IHJlYWQgdGhlIHNwZWFrdXAgdXNlcidzIGd1aWRl
IGZvdW5kIGF0Ogo+Cj4gPGh0dHA6Ly93d3cubGludXgtc3BlYWt1cC5vcmc+Cj4KPiBJdCBoYXNu
J3QgYmVlbiB1cGRhdGVkIGluIGEgd2hpbGUsIGJ1dCBtb3N0IG9mIGl0IGlzIHN0aWxsCj4gcmVs
ZXZhbnQuIEhpZ2hsaWdodCB0cmFja2luZyBpcyBjb3ZlcmVkIGluIHNlY3Rpb24gMTAuIElmIGhp
Z2hsaWdodAo+IHRyYWNraW5nIGRvZXNuJ3QgaGVscCwgInJlYWQgd2luZG93IiBtaWdodCwgc2Vj
dGlvbiAxNS4gSSBkb24ndCBrbm93Cj4gd2hhdCB5b3VyIG5hdGl2ZSBsYW5ndWFnZSBpcywgYnV0
IHRoZXJlIGlzIGEgdmVyc2lvbiBvZiB0aGUgZ3VpZGUgaW4KPiBFbmdsaXNoLCBhbmQgRnJlbmNo
Lgo+Cj4gR3JlZwo+Cj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fClNwZWFrdXAgbWFpbGluZyBsaXN0ClNwZWFrdXBAbGludXgtc3BlYWt1cC5vcmcKaHR0
cDovL2xpbnV4LXNwZWFrdXAub3JnL2NnaS1iaW4vbWFpbG1hbi9saXN0aW5mby9zcGVha3VwCg==
