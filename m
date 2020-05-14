Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (tunnel25281-pt.tunnel.tserv21.tor1.ipv6.he.net [IPv6:2001:470:1c:288::2])
	by mail.lfdr.de (Postfix) with ESMTP id 10CD51D348B
	for <lists+speakup@lfdr.de>; Thu, 14 May 2020 17:09:22 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 45D701C0B51; Thu, 14 May 2020 11:09:21 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=hotmail.com header.i=@hotmail.com header.a=rsa-sha256 header.s=selector1 header.b=U/pCX96k;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 598301C0C58;
	Thu, 14 May 2020 11:08:43 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 35A1D1C084C; Thu, 14 May 2020 11:08:40 -0400 (EDT)
Received: from NAM12-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam12olkn2076.outbound.protection.outlook.com [40.92.22.76])
 by befuddled.reisers.ca (Postfix) with ESMTPS id C133F1C083C
 for <speakup@linux-speakup.org>; Thu, 14 May 2020 11:08:36 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iFg1Rs1ucn3R+e21zMUTVUHG0vnvounP+nVJ6OtutzgnLO2S1rBwmX0mAZnQntbXBqH+/UAy69X2IoZBwZ+zK//FtGzvT8/GpfyJHyx6DH7TQPZCNNn9W1mj+hEHeRlXrS1Sdxf2/bU2VvsvOLFRVkB9BI6kN/ciG/4RytRktSLJ2tnoAdQtjTiugn413R9Uj+rJLbhixv4sbO8Wfr6nO2ZUfgt//w0hcmyu4e0pnj4KEKzaxYgsX3yNLYckfk5hqB71JqSNiuJbthlL6m9YMuQlAq6kWHuoYRxavuXctsQRyDX5uvrS1qS2GZRO4V+PokqIdjKu2KLsXvJL7jWqnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=E/e2ZWv787dNim48s0iyWSX4uvnzeRgi3e9wwd6fqRc=;
 b=KOqQPVUh9hcIvxUi7LTgis4Mw/BzBoe92IWm+f6EZRdoTLZx9ws3sBDt6b3WoAcg2niuMN31MVTpwkWj58PL31McPUgAVbCIdW0T2xu1Ba94Fgvhkp6VrCxCLFQwC5z/C5O9ng4pVXw9HgF9myaymHM/69Uhstch6pzSxK1dryORKxSowzrdT0eK7TwkuzqwhtgDUROIzpjScM9g5/7xO7KrB0HV+m//R1pUBXDtfkLIxlG0zOW2XyeVbxaK4eOBSGsqoSfBbSs/I21+qH1Cu+3YUNtZcDaomqxhAWk0tryBKWKkbYMIK8g5BU4vj/J/ud0lJmYp7FJwc6a2NM/wQg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=hotmail.com; dmarc=pass action=none header.from=hotmail.com;
 dkim=pass header.d=hotmail.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=E/e2ZWv787dNim48s0iyWSX4uvnzeRgi3e9wwd6fqRc=;
 b=U/pCX96kqRhKsMEoeOcBCvTo6rz8M3uZ+Zphn11v5Z79YmgUb+xZiPyoOcrOX7qw7TcVfDifFo5uMpT/KCs0I3PGUQnDyYXzMH5ZZBXC8EnTbm33egNeteA2Qy9GsHi9yFef2fJ13XsU3Sd6p6IbH43wGyvSGhtI111bhYBbMgepzwhoWPEfHg40K+Kz66n7DDwQJ/keB/IvVQk/SAr8fapusAXuXhf98z/X4IMbdtYBmc9ifkmoNcA3aIid1442YnRw1p4xs6FBtjUvV4XxdETdCkKbBHmu0E8Q/VsD3N1wUmek/DfhenBT4XPl9i/3t3wk33z7cXCrlmtOR9WrNQ==
Received: from DM6NAM12FT012.eop-nam12.prod.protection.outlook.com
 (2a01:111:e400:fc64::4f) by
 DM6NAM12HT231.eop-nam12.prod.protection.outlook.com (2a01:111:e400:fc64::237)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3021.11; Thu, 14 May
 2020 15:08:34 +0000
Received: from DM6PR14MB3647.namprd14.prod.outlook.com
 (2a01:111:e400:fc64::42) by DM6NAM12FT012.mail.protection.outlook.com
 (2a01:111:e400:fc64::417) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3021.11 via Frontend
 Transport; Thu, 14 May 2020 15:08:34 +0000
X-IncomingTopHeaderMarker: OriginalChecksum:A2A72D0E4C5F6995C5859469EBFE79270AC52E9D35EC1085D413C2438CAD5B19;
 UpperCasedChecksum:2172E03B78FDCB1179EFECEAAAE7A1C133F03163C061745363E3B9782257E0AB;
 SizeAsReceived:8774; Count:49
Received: from DM6PR14MB3647.namprd14.prod.outlook.com
 ([fe80::7cbc:9a27:8f87:b616]) by DM6PR14MB3647.namprd14.prod.outlook.com
 ([fe80::7cbc:9a27:8f87:b616%8]) with mapi id 15.20.3000.016; Thu, 14 May 2020
 15:08:34 +0000
Subject: Re: speakup crashed in Vmware
To: speakup@linux-speakup.org
References: <DM6PR14MB3647DD1F4448E4D621813D67DABF0@DM6PR14MB3647.namprd14.prod.outlook.com>
 <20200514012248.GB2720@novena-choice-citizen>
From: Criss <crisspro@hotmail.com>
Message-ID: <DM6PR14MB3647BE185173CEBC3FD51548DABC0@DM6PR14MB3647.namprd14.prod.outlook.com>
Date: Thu, 14 May 2020 11:08:28 -0400
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
In-Reply-To: <20200514012248.GB2720@novena-choice-citizen>
Content-Language: es-CL
X-ClientProxiedBy: SC1P215CA0007.LAMP215.PROD.OUTLOOK.COM (2603:10d6:4:40::17)
 To DM6PR14MB3647.namprd14.prod.outlook.com
 (2603:10b6:5:1ba::16)
X-Microsoft-Original-Message-ID: <8ca69459-876e-b2d4-7edc-b17033fd931f@hotmail.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.0.5] (190.5.52.129) by
 SC1P215CA0007.LAMP215.PROD.OUTLOOK.COM (2603:10d6:4:40::17) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3000.25 via Frontend Transport; Thu, 14 May 2020 15:08:33 +0000
X-Microsoft-Original-Message-ID: <8ca69459-876e-b2d4-7edc-b17033fd931f@hotmail.com>
X-TMN: [iKPShm/7tGgTiyB9g2SCRUHiGeL8IHRg]
X-MS-PublicTrafficType: Email
X-IncomingHeaderCount: 49
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-Correlation-Id: 1e2e65b8-82f1-459f-c172-08d7f818ab91
X-MS-TrafficTypeDiagnostic: DM6NAM12HT231:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: bj1zCEdly6CsYyeg1CKq5PvjCjlZCybayaesSM451+/PVJn9rLQ6kE9C+h/OXl0vuhP1hSSR7BHWIZi2AA9g7i+u/v7HkXgGukAOwJreowhB0EwT+b9EEKarJYxS61mC7oZ2RHW2YiLAhgB4G5sxASHsRomU034uq12saCo+XrqnKaqExUqmKaPejDE+uSfGtWetslYxzBT7ilZLDzRyDkUDTT37M9yv4E+4KvSMqR/2tXya5U/3qnkn9NNrPcGf
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:0; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR14MB3647.namprd14.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:; SFS:; DIR:OUT; SFP:1901; 
X-MS-Exchange-AntiSpam-MessageData: 4FQqt6RvevWL4gsHL7S+dp1pKJdyCTeBXC/xYWsNFjPwHggfpHvLWGZs4Y53u5AYu0w2VVaSrn4iUhusasvhz/czPmGu5iphgxKD46+fydAXiGZKCLLewIK72erb0b/qPepXKFWXQRq6cj7drN5nLg==
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1e2e65b8-82f1-459f-c172-08d7f818ab91
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 May 2020 15:08:34.1148 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6NAM12HT231
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

SGVsbG8uCgpJIHRyeWVkIGluc3RhbGwgYXJjaCBpbiBWbXdhcmUgdGhpcyBtb250aCwgYnV0IG5v
IHdvcmtpbmcsIGZpbmFsbHkgSSAKaW5zdGFsbGVkIGFyY2ggaW4gaGFyZHdhcmUgYW5kIHdvcmtp
bmcgd2l0aCBvdXQgcHJvYmxlbS4KIMKgwqDCoCBJIHRyeWVkIG5vdyByZXN0YXJ0IGVzcGVha3Vw
IHdyaXRpbmcgZXNwZWFrdXAgZHVyaW5nIERlYmlhbiAKaW5zdGFsbGF0aW9uLCBidXQgbm8gd29y
cmtpbmcsIFNvIGdvaW5nIHRvIHRyeSB3aXRoIHFlbXUuCnJlZ2FyZHMuCgoKCgoKCkVsIDEzLTA1
LTIwMjAgYSBsYXMgMjE6MjIsIEpvb2tpYSBlc2NyaWJpw7M6Cj4gV2hlbiBkaWQgeW91IGluc3Rh
bGwgQXJjaD8gVGhlcmUncyBhIHNwZWFrdXAgYnVnIHRoYXQgY3Jhc2hlcyBmYWlybHkKPiB3ZWxs
IGluIFZNcyBvbiBvbGRlciBrZXJuZWxzLgo+Cj4gT24gV2VkLCBNYXkgMTMsIDIwMjAgYXQgMDQ6
MDA6NThQTSAtMDQwMCwgQ3Jpc3Mgd3JvdGU6Cj4+IEhlbGxvLgo+Pgo+Pgo+PiBXaGVuIEkgdHJ5
ZWQgaW5zdGFsbCBkZWJpYW4gd2l0aCBzcGVha3VwIGluIFZNd2FyZSB2aXJ0dWFsIG1hY2hpbmUs
IEkgY2FuJ3QKPj4gY29udGludWUgYmVjYXVzZSBzcGVha3VwIGNyYXNoaW5nLCAod2l0aCBhcmNo
IGluIHZtd2FyZSBjcmFzaGVkIHRvbykuIElzCj4+IHRoaXMgYSBzcGVha3VwIGJ1Zz8gSG93IGNh
biBJIHJlc3RhcnQgc3BlYWt1cCBpbiBkZWJpYW4gaW5zdGFsbGF0aW9uPy4KPj4KPj4KPj4gcmVn
YXJkcy4KPj4KPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KPj4gU3BlYWt1cCBtYWlsaW5nIGxpc3QKPj4gU3BlYWt1cEBsaW51eC1zcGVha3VwLm9yZwo+
PiBodHRwOi8vbGludXgtc3BlYWt1cC5vcmcvY2dpLWJpbi9tYWlsbWFuL2xpc3RpbmZvL3NwZWFr
dXAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IFNw
ZWFrdXAgbWFpbGluZyBsaXN0Cj4gU3BlYWt1cEBsaW51eC1zcGVha3VwLm9yZwo+IGh0dHA6Ly9s
aW51eC1zcGVha3VwLm9yZy9jZ2ktYmluL21haWxtYW4vbGlzdGluZm8vc3BlYWt1cAoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwZWFrdXAgbWFpbGlu
ZyBsaXN0ClNwZWFrdXBAbGludXgtc3BlYWt1cC5vcmcKaHR0cDovL2xpbnV4LXNwZWFrdXAub3Jn
L2NnaS1iaW4vbWFpbG1hbi9saXN0aW5mby9zcGVha3VwCg==
