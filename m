Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 722483A0AC
	for <lists+speakup@lfdr.de>; Sat,  8 Jun 2019 18:37:50 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id EC8F01C5A3F; Sat,  8 Jun 2019 12:37:48 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=uwprod.onmicrosoft.com header.i=@uwprod.onmicrosoft.com header.b="AqR52KfZ";
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 63B791C5A63;
	Sat,  8 Jun 2019 12:37:09 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 5C1041C43BE; Sat,  8 Jun 2019 12:37:05 -0400 (EDT)
Received: from wmauth2.doit.wisc.edu (wmauth2.doit.wisc.edu [144.92.197.222])
 by befuddled.reisers.ca (Postfix) with ESMTPS id B263F1C42CB
 for <speakup@linux-speakup.org>; Sat,  8 Jun 2019 12:37:00 -0400 (EDT)
Received: from NAM01-BY2-obe.outbound.protection.outlook.com
 (mail-by2nam01lp2055.outbound.protection.outlook.com [104.47.34.55])
 by smtpauth2.wiscmail.wisc.edu
 (Oracle Communications Messaging Server 8.0.1.2.20170621 64bit (built Jun 21
 2017)) with ESMTPS id <0PSS00OCNGTMKS10@smtpauth2.wiscmail.wisc.edu> for
 speakup@linux-speakup.org; Sat, 08 Jun 2019 11:36:59 -0500 (CDT)
X-Spam-Report: AuthenticatedSender=yes, SenderIP=[104.47.34.55]
X-Wisc-Env-From-B64: amhlaW1AbWF0aC53aXNjLmVkdQ==
X-Spam-PmxInfo: Server=avs-2, Version=6.4.7.2805085,
 Antispam-Engine: 2.7.2.2107409, Antispam-Data: 2019.6.8.162416,
 AntiVirus-Engine: 5.60.1, AntiVirus-Data: 2019.5.21.5601002,
 SenderIP=[104.47.34.55]
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=uwprod.onmicrosoft.com;
 s=selector1-uwprod-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dXrg+qaF8l8uIZapAJyMjHWsaAcaQE/yZ+qdh4kR0+I=;
 b=AqR52KfZNhoo+lzGmlEjw9JbG/g2Xvg5KQAcq5KmENQduLO/4zgZ7mmF/PdOTjb+EG9MzMFhtrGRGJxKYZsb6/9+Ts+91Coh7kQpGcGON/O3rejD/sgQ4qfvsnqlgggcVZOXOHBy+6S4/lfJjjWXDskhKBQMLpvx+n3bvp9XMZE=
Received: from DM6PR06MB4169.namprd06.prod.outlook.com (20.176.104.210)
 by DM6PR06MB6170.namprd06.prod.outlook.com (20.178.225.95)
 with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384)
 id 15.20.1965.12; Sat, 8 Jun 2019 16:36:57 +0000
Received: from DM6PR06MB4169.namprd06.prod.outlook.com
 ([fe80::e8a8:7a41:7fd2:f2a6]) by DM6PR06MB4169.namprd06.prod.outlook.com
 ([fe80::e8a8:7a41:7fd2:f2a6%5]) with mapi id 15.20.1965.017; Sat,
 8 Jun 2019 16:36:57 +0000
From: JOHN G HEIM <jheim@math.wisc.edu>
To: Kirk Reiser <kirk@reisers.ca>, Speakup is a screen review system for Linux.
 <speakup@linux-speakup.org>
Subject: Re: no sound except speakup
Thread-topic: no sound except speakup
Thread-index: AQHVG6KtaJQ8xAo6+0unF84VeVH9lqaNHO8AgATcjgA=
Date: Sat, 8 Jun 2019 16:36:57 +0000
Message-id: <f072f5e3-caf0-aab8-4224-c1fc9f142ace@math.wisc.edu>
References: <bb706092-7289-2093-e7d0-e1788722cc37@math.wisc.edu>
 <alpine.DEB.2.21.1906051019050.12923@befuddled.reisers.ca>
In-reply-to: <alpine.DEB.2.21.1906051019050.12923@befuddled.reisers.ca>
Accept-Language: en-US
Content-language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: DM6PR07CA0027.namprd07.prod.outlook.com (2603:10b6:5:94::40)
 To DM6PR06MB4169.namprd06.prod.outlook.com (2603:10b6:5:2b::18)
x-ms-exchange-messagesentrepresentingtype: 1
X-Originating-IP: [108.85.191.186]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: df94048c-c69d-4a81-89c5-08d6ec2f859d
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DM6PR06MB6170; 
x-ms-traffictypediagnostic: DM6PR06MB6170:
x-microsoft-antispam-prvs: <DM6PR06MB6170CA4094C01DDAB0C11300F3110@DM6PR06MB6170.namprd06.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0062BDD52C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(136003)(376002)(346002)(396003)(39860400002)(199004)(189003)(99286004)(52116002)(3846002)(110136005)(6116002)(81156014)(26005)(6346003)(186003)(316002)(786003)(31686004)(88552002)(256004)(53546011)(6506007)(386003)(305945005)(102836004)(76176011)(5660300002)(2906002)(7736002)(81166006)(8676002)(8936002)(66066001)(86362001)(68736007)(31696002)(75432002)(25786009)(53936002)(6436002)(486006)(3480700005)(6512007)(66446008)(64756008)(66556008)(66476007)(66946007)(6246003)(53346004)(6486002)(73956011)(478600001)(229853002)(14454004)(11346002)(446003)(476003)(2616005)(71200400001)(71190400001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR06MB6170;
 H:DM6PR06MB4169.namprd06.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
Received-SPF: None (protection.outlook.com: math.wisc.edu does not designate
 permitted sender hosts)
Authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jheim@math.wisc.edu;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: G6vM9U2rzZqxKn61H1CbH31ysiauI/9emnYroFvnFVSnEQVBV0e/691sUwabkmlbdVJWlOIgYGFaJBNswoCls26q6Sdu7Eh/7tpRPnUm/QcRDBIPcMmXDwJxnTNZ0xG3DuvsesI0SJGjDh/OsX5apeQt82/eFP//wwB18I3Jd96lWeFdGxwVeVUFY2BX78GYFVSCkf+L55gIJKkWclMn47gkIKIynPtSbhFbC/Kj+c6P8bUj3Bn9Txr5NkIaSUHHbQ4EhpU4M4vIgosZ7IRjQaY/HpvnFoIkgrdye/rOoULutjT5YOSEB70leCf7YA5+LOvlhXvhDaMdoBwxw04dekX3dUP4nGmB1vPIT3nmC/o630TvBWRY9FhsvH/+VSFVdZbK3+9w6deGGPwQS4qKM5sb84m7Ba+XMrSp9Vz/t94=
Content-id: <6CD1A3F3DA3AEA449179519A9BFA23E8@namprd06.prod.outlook.com>
MIME-version: 1.0
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: df94048c-c69d-4a81-89c5-08d6ec2f859d
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jun 2019 16:36:57.4183 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jheim@wisc.edu
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR06MB6170
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

DQpJdCB3YXMgaW5kZWVkIHB1bHNlYXVkaW8uIEkga2lsbGVkIHRoZSBwdWxzZWF1ZGlvIHByb2Nl
c3MgYW5kIHJhbiBhcGxheSANCmFnYWluIGJ1dCBpdCBzdGlsbCBkaWQgbm90IHdvcmsuIEJ1dCBJ
IG5vdGljZWQgdGhhdCBhbm90aGVyIHB1bHNlYXVkaW8gDQpwcm9jZXNzIGhhZCBiZWVuIHN0YXJ0
ZWQuIFNvIHRoZW4gSSByZW1vdmVkIHRoZSBwdWxzZWF1ZGlvIHBhY2thZ2UgDQplbnRpcmVseS4g
Tm93IGl0IHdvcmtzLiBCdXQgdGhlbiBJIHJhbiBzdGFydHggYW5kIGdvdCBubyBzcGVlY2ggZnJv
bSANCm9yY2EuIEJ1dCB0aGVuIEkgcmFuIHNwZC1jb25mIGFuZCBjb25maWd1cmVkIHNwZWVjaC1k
aXNwYXRjaGVyIGZvciBhbHNhIA0KYW5kIG5vdyBJIGdldCBzcGVlY2ggaW4gdGhlIEdVSSB0b28u
IFNvIHRoaXMgaXMgYWxsIGdvb2QuIFRoaXMgaXMgbXkgDQpuZXR3b3JrIHNlcnZlciBzbyBJIGRv
bid0IGNhcmUgYWJvdXQgdGhlIEdVSSB0b28gbXVjaCBhbnl3YXkuIEJ1dCBpdCANCmxvb2tzIGxp
a2UgaWYgSSByZWFsbHkgbmVlZCBhIEdVSSwgSSdsbCBoYXZlIGl0Lg0KDQoNClRoYW5rcyBldmVy
eWJvZHkuIExpbnV4IHJvY2tzLiBXZWxsLCB0aGUgbGludXggc3VwcG9ydCBjb21tdW5pdHksIA0K
c3BlY2lmaWNhbGx5IHNwZWFrdXAgYW5kIG9yY2EsIHJvY2tzLg0KDQoNCk9uIDYvNS8xOSA5OjIy
IEFNLCBLaXJrIFJlaXNlciB3cm90ZToNCj4gSGV5IEpvaG46IFdoZW4gSSd2ZSBoYWQgc2ltaWxh
ciBpc3N1ZXMgd2l0aCBzb3VuZCBpdCdzIGJlY2F1c2UgdGhlcmUNCj4gaXMgdXN1YWxseSBhIHB1
bHNlIGF1ZGlvIHByb2Nlc3MgcnVubmluZyBvciB0cnlpbmcgdG8gcnVuLiBUaGVyZSBhcmUNCj4g
d29yayBhcm91bmRzIHRvIGJlIGFibGUgdG8gdXNlIHB1bHNlIGF1ZGlvIGJ1dCBJIGJlbGlldmUg
aXQgaW5jbHVkZXMNCj4gcnVubmluZyBpdCBhcyByb290IG9yIHNvbWV0aGluZy4gSSBkb24ndCB1
c2UgcHVsc2UgYXVkaW8gc28gSSdtIG5vdA0KPiBzdXJlIG9mIHRoZSB3b3JrIGFyb3VuZCBidXQg
b3RoZXJzIGFyZSB1c2luZyBpdC4NCj4NCj4gwqAgS2lyaw0KPg0KPiBPbiBXZWQsIDUgSnVuIDIw
MTksIEpvaG4gRyBIZWltIHdyb3RlOg0KPg0KPj4gSSBhbSBydW5uaW5nIGEgZGViaWFuIGJ1c3Rl
ciBtYWNoaW5lIGluIGNoYXJhY3RlciBtb2RlLiBTcGVha3VwIHdpdGggDQo+PiBzb2Z0d2FyZSBz
cGVlY2ggd29ya3MgZmluZSBidXQgSSBjYW4ndCBnZXQgYW55IG90aGVyIHNvdW5kLiBXaGVuIEkg
DQo+PiB1c2UgYXBsYXkgdG8gcGxheSBhIHdhdiBmaWxlLCBpdCBwcmludHMgdGhlIGRhdGEgaW5k
aWNhdGluZyB0aGF0IGl0IA0KPj4gaXMgcGxheWluZyB0aGUgZmlsZSBidXQgdGhlcmUgaXMgbm8g
c291bmQuIFRoZSBzYW1lIHdpdGggZXNwZWFrIGFuZCANCj4+IHNwZC1zYXkgYXQgdGhlIGNvbW1h
bmQgbGluZS4gTm8gZXJyb3IgbWVzc2FnZXMgYXJlIGRpc3BsYXllZCBidXQgDQo+PiB0aGVyZSBp
cyBubyBzb3VuZC4gSSB3b3VsZCB0aGluayBpdCB3YXMgYSB2b2x1bWUgcHJvYmxlbSBleGNlcHQg
SSBjYW4gDQo+PiBoZWFyIHNwZWFrdXAuIFRoZSBzb3VuZCBjYXJkIGNvbnRyb2xzIGhhdmUgdm9s
dW1lIHNldHRpbmdzLCB0aGV5IGFyZSANCj4+IG5vdCB1c2VyIHNldHRpbmdzLCByaWdodD8NCj4+
DQo+Pg0KLS0gDQpKb2huIEcuIEhlaW0sIGpoZWltQG1hdGgud2lzYy5lZHUsIDYwOC0yNjMtNDE4
OQ0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGVh
a3VwIG1haWxpbmcgbGlzdApTcGVha3VwQGxpbnV4LXNwZWFrdXAub3JnCmh0dHA6Ly9saW51eC1z
cGVha3VwLm9yZy9jZ2ktYmluL21haWxtYW4vbGlzdGluZm8vc3BlYWt1cAo=
