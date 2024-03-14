Return-Path: <speakup+bounces-1092-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id D649387B871
	for <lists+speakup@lfdr.de>; Thu, 14 Mar 2024 08:20:57 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=csircoza.onmicrosoft.com header.i=@csircoza.onmicrosoft.com header.a=rsa-sha256 header.s=selector2-csircoza-onmicrosoft-com header.b=IUJh1yuq;
	dkim=pass (1024-bit key) header.d=csircoza.onmicrosoft.com header.i=@csircoza.onmicrosoft.com header.a=rsa-sha256 header.s=selector2-csircoza-onmicrosoft-com header.b=IUJh1yuq;
	dkim=pass (2048-bit key; unprotected) header.d=mail-dkim-eu-west-1.prod.hydra.sophos.com header.i=@mail-dkim-eu-west-1.prod.hydra.sophos.com header.a=rsa-sha256 header.s=v1 header.b=4flhChA8;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id A1C9F382653; Thu, 14 Mar 2024 03:20:54 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 7C6BC3820D4
	for <lists+speakup@lfdr.de>; Thu, 14 Mar 2024 03:20:54 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 58E8D38250E; Thu, 14 Mar 2024 03:20:46 -0400 (EDT)
Received: from CT2P275CU009.outbound.protection.outlook.com (mail-southafricawestazon11021011.outbound.protection.outlook.com [52.101.163.11])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 0DB543820D4
	for <speakup@linux-speakup.org>; Thu, 14 Mar 2024 03:20:45 -0400 (EDT)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=WvoJUFc1Vh1nvSafZzDuJtrv0BieghrR+RUCWQm4hQ1HKjjvdHcivquMkU+XoASUM7FGvOl+uhl9+2jlRZV8vjSuBX7osGk4YqKJmayp6qFOgmQAd0M/7jbfoABvw9GEsChNgyI2Yxyr946OL5Rkg3Vbe8Zqhd+jtMFFC+mfP7/SMI9wlNFpwFDP87LfZcFHdYRYbgA76l8ltqAKlu30aF4OOP/t9mm5SDh1ylnQ1R6ZxMAjPNgbtW4b4YrMrP3/iubo2Ad9g5ORTDPCDO4OuDYkaAVB74LZXpvHGiRszIgsDGv+oijWqZ3c7LUAflRaMAxTN917Dp9hBPTNwv6/uA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=g7IOSZd9nQ5QtUgc4g6pnAMFg68qF0ilbw+a7UmNnZw=;
 b=lRz5zjlqnZQo6KBGP065sNR2yB1I0tcdzxtpcP2xW19Xe8g8WYpBp9Rp2NmnVNGeDwV5Tf6xjszWsfZnXrXV0jaaHCxzN/vKyT7HWaBkBbxrURA2kYcRIase8mQ0Pv2fpY+86ie9Jkn3VShBqsjrd9Vc1pLCPAD3WwGXlvGi9cxHBTxMwjPJodgKeff6KxH3LHIKwy8La6b6Jp4urzaCE58xMVwH7PfpU0QRQayDnsFg1U/nYrU277O74yu87pHpJzvJudklUjsXkhbQxOKoklADTaN8gq4kGUsGCEEOrhN88jMEZWaePXCizAk1IHqDeYPq8dZJTLcFc45UVuBs7w==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 198.154.180.225) smtp.rcpttodomain=linux-speakup.org
 smtp.mailfrom=csir.co.za; dmarc=bestguesspass action=none
 header.from=csir.co.za; dkim=pass (signature was verified)
 header.d=csircoza.onmicrosoft.com; dkim=pass (signature was verified)
 header.d=mail-dkim-eu-west-1.prod.hydra.sophos.com; arc=pass (0 oda=1 ltdi=1
 spf=[1,1,smtp.mailfrom=csir.co.za] dkim=[1,1,header.d=csir.co.za]
 dmarc=[1,1,header.from=csir.co.za])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=csircoza.onmicrosoft.com; s=selector2-csircoza-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=g7IOSZd9nQ5QtUgc4g6pnAMFg68qF0ilbw+a7UmNnZw=;
 b=IUJh1yuqR6OjTtpkYxvk5gfGjiTswn9988bcHMPSEv6G8OJOcum6+yyBT4BFsfP0PfeBnuBd9q8fEO7i+W7M3Bg4F67ks3bGPnTvvDD+USXoqMcTkQ6fv2yVtmUdqWK62rOpD4h1omBwHCYqe8hLjBVsReLeGJXoq6mRdufysVo=
Received: from DUZPR01CA0100.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4bb::8) by JN3P275MB2114.ZAFP275.PROD.OUTLOOK.COM
 (2603:1086:0:91::12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.21; Thu, 14 Mar
 2024 07:20:36 +0000
Received: from DB5PEPF00014B88.eurprd02.prod.outlook.com
 (2603:10a6:10:4bb:cafe::7f) by DUZPR01CA0100.outlook.office365.com
 (2603:10a6:10:4bb::8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.21 via Frontend
 Transport; Thu, 14 Mar 2024 07:20:35 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.154.180.225)
 smtp.mailfrom=csir.co.za; dkim=pass (signature was verified)
 header.d=csircoza.onmicrosoft.com;dmarc=bestguesspass action=none
 header.from=csir.co.za;
Received-SPF: Pass (protection.outlook.com: domain of csir.co.za designates
 198.154.180.225 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.154.180.225; helo=mfod-euw1.prod.hydra.sophos.com; pr=C
Received: from mfod-euw1.prod.hydra.sophos.com (198.154.180.225) by
 DB5PEPF00014B88.mail.protection.outlook.com (10.167.8.196) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7386.12 via Frontend Transport; Thu, 14 Mar 2024 07:20:35 +0000
Received: from ip-172-19-0-66.eu-west-1.compute.internal (ip-172-19-0-66.eu-west-1.compute.internal [127.0.0.1])
	by mfod-euw1.prod.hydra.sophos.com (Postfix) with ESMTP id 4TwJgl0DGQzHnjW
	for <speakup@linux-speakup.org>; Thu, 14 Mar 2024 07:20:35 +0000 (UTC)
X-Sophos-Product-Type: Mailflow
X-Sophos-Email-ID: 19cef10e51b3490da3a0788b12b75847
Received: from JNYP275CU001.outbound.protection.outlook.com
 (mail-southafricanorthazlp17011010.outbound.protection.outlook.com
 [40.93.74.10])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mf-outbound-eu-west-1.prod.hydra.sophos.com (Postfix) with ESMTPS id
 4TwJgj2lkVznTW9
 for <speakup@linux-speakup.org>; Thu, 14 Mar 2024 07:20:33 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HnHvOh4tLeGszsktbKrv/D7BoOmmqaUjjyW4TI7ggKvlESDlAWpXkzDAzA/AQwcPLgu9Nxd/DmrT91AFfROaEem61AXNMG3Ioz2PXNqq+w6T4bQBBJoKAseQzTcaBHm78Qs5HrBO0cZaJrhVQ4NkOXLHAxAfV8S3oT1Wjv+qKkJ7yzJfUfoW5xMIfte58li5N8SzYkOV51eTugKlCpk1VxhR2trdprB80hFhw/yTF9I48qWrBKXq/Qr4SD1PEbUA8qarZhqy2J4gkTXRk1MUAiyx+acyQ9jTvICxD7XbStLJYfN6WGclBRDmi0umZNFY/qeBQCIkuPsEKrgfn8T2Lw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=g7IOSZd9nQ5QtUgc4g6pnAMFg68qF0ilbw+a7UmNnZw=;
 b=OEMm97M0l1ZLKaB34N0jazyKDUAWJdlUOY77SpJgH6ILW6StUdh1cWGbhRp09NRtp8r/GWxWz8Bxr+engInLnpZTJkIrOVlyqwbdcSQFjVX+7u0DI9gdO1MM88G0i1Q39Psp2+4/OuHOsvJ0IiXKyuK1XsIwJs9/u5PNubjhRc60AyhVqYFSpt6eUcnMJUrPzo5NbfCsREzT29sRR3jwFn+S5x7ElS2KKeq7MvR7nruhvqLd17WzqFsO1+QgIFf6GoETF3vecqgOkRTSPnqNxJRVeWB2p24dGuO2OATEAFlZxmHNxBa6/jFf0vM/cpZv6+C9Mu4K7AyPn+tPN2tYrQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=csir.co.za; dmarc=pass action=none header.from=csir.co.za;
 dkim=pass header.d=csir.co.za; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=csircoza.onmicrosoft.com; s=selector2-csircoza-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=g7IOSZd9nQ5QtUgc4g6pnAMFg68qF0ilbw+a7UmNnZw=;
 b=IUJh1yuqR6OjTtpkYxvk5gfGjiTswn9988bcHMPSEv6G8OJOcum6+yyBT4BFsfP0PfeBnuBd9q8fEO7i+W7M3Bg4F67ks3bGPnTvvDD+USXoqMcTkQ6fv2yVtmUdqWK62rOpD4h1omBwHCYqe8hLjBVsReLeGJXoq6mRdufysVo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1710400830; 
 s=v1; d=mail-dkim-eu-west-1.prod.hydra.sophos.com;
 h=Content-Type:Subject:cc:From:Date;
 bh=g7IOSZd9nQ5QtUgc4g6pnAMFg68qF0ilbw+a7UmNnZw=;
 b=4flhChA8RYvTA73KgKDEEcQTHeQ+1hmhQ68Oky64xrihMPwT0w5wCC4I+XtYCL+S
 NbQoiXl+RTxtHHDPOtijlZqUbnesPtJbNeAjckkBrIvkxUwtjaD5baEo4tJKTf3InA2
 /AHg5Rm1SXZndomX8o2O65wUBrY07ilcvqVLWN2Wni4leOYLD6oOYAtNoyaBhOnoPsi
 n/6w9djcDxrJC3Uq//O4gn9kyn/8elW6V9+55k3kJEDJ9UaUpAc+jel6y0eMqVxMGU/
 gSjVufkzobfrXf76DPB/mJJzlsKi4bPFVEdc16UctRmLZZVsyIzPGokVh+US7dObM3P
 3wFROcOv3Q==
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=csir.co.za;
Received: from JN3P275MB2310.ZAFP275.PROD.OUTLOOK.COM (2603:1086:0:af::11) by
 JN1P275MB0613.ZAFP275.PROD.OUTLOOK.COM (2603:1086:0:24::11) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7386.21; Thu, 14 Mar 2024 07:20:31 +0000
Received: from JN3P275MB2310.ZAFP275.PROD.OUTLOOK.COM
 ([fe80::4f33:8358:b643:710d]) by JN3P275MB2310.ZAFP275.PROD.OUTLOOK.COM
 ([fe80::4f33:8358:b643:710d%6]) with mapi id 15.20.7386.020; Thu, 14 Mar 2024
 07:20:31 +0000
Date: Thu, 14 Mar 2024 09:20:30 +0200 (SAST)
From: Willem van der Walt <wvdwalt@csir.co.za>
cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: SPFUNSUPPORTED MAY BE MALICIOUS Re: UTF-8 encoding of i18n files?
In-Reply-To: <ZfI4d-NIzgmlGucZ@jpw.jasonjgw.net>
Message-ID: <e08071f9-d0f4-0788-8dfc-f4fa82916e4b@csir.co.za>
References: <20240312224254.umw3ezrolerdu4yf@begin>
 <ZfI4d-NIzgmlGucZ@jpw.jasonjgw.net>
Content-Type: text/plain; charset=US-ASCII; format=flowed
X-ClientProxiedBy: JN2P275CA0016.ZAFP275.PROD.OUTLOOK.COM (2603:1086:0:3::28)
 To JN3P275MB2310.ZAFP275.PROD.OUTLOOK.COM
 (2603:1086:0:af::11)
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
X-MS-TrafficTypeDiagnostic:
	JN3P275MB2310:EE_|JN1P275MB0613:EE_|DB5PEPF00014B88:EE_|JN3P275MB2114:EE_
X-MS-Office365-Filtering-Correlation-Id: c87ef064-2721-41cc-e46a-08dc43f73dcc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original:
 uxKpn3bvXuV4a1wKssEhih3lzsFNsvVbfuXE/BgJnJeclSIPd5PUhqhjo9xMjEhMDBzheAr3R0aBxQ++f8nBC7CmuM8U+AmhHfrFVMB++inTLGRu1wKpy8TndCiAXHw3+cIxIUt8lCk8V5fN9ChdhrzAxo+R7I1G/vCyU4g8acadQsOIfOQ9gZuYXUusSsdyxqTxOBEB1Q/RHIr3nHfZHtxUBaZO4Z/9ZaqBu2RHG/9WkGr2KlTGYeRw2VSfbqJ1yWpx0g/g5MELoUKPZWAZL2FUnSxZhKP7EPbz6oxjzE9qpVz4hoaPXrpyMkEJvvVQOyvNubZJZZpHzFfxk33cjMEO4LX7kCd3HmzCekaDUlKlpvNyXVNsTOaCEl3ayxxrw2iH9WHtTDeCwfvuiBqe8s0OeYdiAETc+a1e7pfNWzLRLHoXYJPosYo1nFup66psxTaZTwOjyZoJVFuG2n//rqU1Yl+9ypd+Sl/pgfxXs++aw/EnB4VcGRWOA+c5or/0tmzbCMUCMLZYY7K2LrOZdjBkIsxWq/hTUFgdZAkyuqRITZw74c5ZxshwJIxhTy+6SmwgHszqdWh/zRPVBItknPfAvRTI7/Ewq7810aBF7/T0twsVp/pyDbgz29QiLoh6z/FpEunItC46+4p2ycZwfR8wk990Vk2UJKtCK6rtISKtK2ZJpSTOghmmxr2m31/G2TSKoFB2EnmpmFloJEonSjnIgBHC6yZDdpsl36hCe7Q=
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255; CTRY:; LANG:en;
 SCL:1; SRV:; IPV:NLI; SFV:NSPM; H:JN3P275MB2310.ZAFP275.PROD.OUTLOOK.COM;
 PTR:; CAT:NONE; SFS:(13230031)(1800799015)(376005)(105050200028); DIR:OUT;
 SFP:1102; 
X-MS-Exchange-Transport-CrossTenantHeadersStamped: JN1P275MB0613
X-Sophos-Email: [eu-west-1] Antispam-Engine: 5.1.4.1,
 AntispamData: 2024.3.14.65716
X-LASED-SpamProbability: 0.083173
X-LASED-Hits: BODYTEXTP_SIZE_3000_LESS 0.000000, BODY_SIZE_1000_LESS 0.000000,
 BODY_SIZE_2000_LESS 0.000000, BODY_SIZE_5000_LESS 0.000000,
 BODY_SIZE_600_699 0.000000, BODY_SIZE_7000_LESS 0.000000,
 DKIM_SIGNATURE 0.000000, FROM_NAME_PHRASE 0.000000, HTML_00_01 0.050000,
 HTML_00_10 0.050000, IN_REP_TO 0.000000, LEGITIMATE_SIGNS 0.000000,
 MISSING_HEADERS 0.000000, MSGID_SAMEAS_FROM_HEX_844412 0.100000,
 MSG_THREAD 0.000000, MULTIPLE_REAL_RCPTS 0.000000, NO_CTA_URI_FOUND 0.000000,
 NO_FUR_HEADER 0.000000, NO_URI_HTTPS 0.000000, OUTBOUND 0.000000,
 OUTBOUND_SOPHOS 0.000000, REFERENCES 0.000000, SUSP_DH_NEG 0.000000,
 TO_MALFORMED 0.000000, __ANY_URI 0.000000, __ARCAUTH_DKIM_PASSED 0.000000,
 __ARCAUTH_DMARC_PASSED 0.000000, __ARCAUTH_PASSED 0.000000,
 __ARC_SEAL_MICROSOFT 0.000000, __ARC_SIGNATURE_MICROSOFT 0.000000,
 __BODY_NO_MAILTO 0.000000, __BOUNCE_CHALLENGE_SUBJ 0.000000,
 __BOUNCE_NDR_SUBJ_EXEMPT 0.000000, __BULK_NEGATE 0.000000, __CC_NAME 0.000000,
 __CC_NAME_DIFF_FROM_ACC 0.000000, __CC_REAL_NAMES 0.000000, __CT 0.000000,
 __CT_TEXT_PLAIN 0.000000, __DQ_NEG_DOMAIN 0.000000, __DQ_NEG_HEUR 0.000000,
 __DQ_NEG_IP 0.000000, __FORWARDED_MSG 0.000000, __FRAUD_NEGATE 0.000000,
 __FRAUD_NEGATE_FROM 0.000000, __FROM_ADDY_SHORT_LC 0.000000,
 __FROM_DOMAIN_NOT_IN_BODY 0.000000, __FROM_NAME_NOT_IN_BODY 0.000000,
 __FUR_RDNS_SOPHOS 0.000000, __HAS_CC_HDR 0.000000, __HAS_FROM 0.000000,
 __HAS_MSGID 0.000000, __HAS_REFERENCES 0.000000, __HAS_X_FF_ASR 0.000000,
 __HAS_X_FF_ASR_CAT 0.000000, __HAS_X_FF_ASR_SFV 0.000000,
 __IMP_FROM_MY_ORG 0.000000, __IN_REP_TO 0.000000,
 __JSON_HAS_SCHEMA_VERSION 0.000000, __JSON_HAS_TENANT_DOMAINS 0.000000,
 __JSON_HAS_TENANT_ID 0.000000, __JSON_HAS_TENANT_SCHEMA_VERSION 0.000000,
 __JSON_HAS_TRACKING_ID 0.000000, __MIME_BOUND_CHARSET 0.000000,
 __MIME_TEXT_ONLY 0.000000, __MIME_TEXT_P 0.000000, __MIME_TEXT_P1 0.000000,
 __MIME_VERSION 0.000000, __MSGID_HEX_844412 0.000000,
 __NO_HTML_TAG_RAW 0.000000, __OUTBOUND_SOPHOS_FUR 0.000000,
 __OUTBOUND_SOPHOS_FUR_IP 0.000000, __OUTBOUND_SOPHOS_FUR_RDNS 0.000000,
 __PHISH_SPEAR_STRUCTURE_2 0.000000, __REFERENCES 0.000000,
 __SANE_MSGID 0.000000, __SCAN_D_NEG 0.000000, __SCAN_D_NEG2 0.000000,
 __SCAN_D_NEG_HEUR 0.000000, __SCAN_D_NEG_HEUR2 0.000000,
 __SUBJ_ALPHA_NEGATE 0.000000, __SUBJ_REPLY 0.000000, __URI_MAILTO 0.000000,
 __URI_NO_WWW 0.000000, __URI_NS 0.000000, __X_FF_ASR_SCL_NSP 0.000000,
 __X_FF_ASR_SFV_NSPM 0.000000
X-LASED-Impersonation: False
X-LASED-Spam: NonSpam
X-Sophos-Mailflow-Processing-Id: 9eedfa23d11c44ffb4f4878b87d57c67
X-Sophos-MH-Mail-Info-Key: NFR3SmdsMERHUXpIbmpXLTE3Mi4xOS4wLjY2
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped:
 DB5PEPF00014B88.eurprd02.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs:
	f1bdcfd8-0748-4072-a630-08dc43f73b30
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
	PWyKqDqn1GZN9DTjxXRS+5sx26Uw24Szy59KAd9Bvr2CW4404ffqujxOOxd3Qr3lNhRCA+8l+QnYzxVXd96miICM884LpcZBfad7+M4yhLr7QPq/E05miDMojm8zogsSddC3G8jXSEHrDwY6Aa6lyBp+aASjpmHF+pQ6qfvPvdNPUEmKf6XcH9j/4pHvdfD8VZs+XTbXw1E21hydu/ygk65/pGAvqPo279W7rRdPOHlg3EXMfgyaGyYwEKihGHcNfmQeMkFJAXyGzXRiM7Gi35mX1PEvH+r8irDfxYVOrtOZpKcRxz0uXujHIdVT5ZfYUtyfAMLP8RQQNbyBE4/QtRSZP2QBjjC7c+Jc2p7hFUn8QEHv44M74OWQ6B2M4ZdS8qp2YwWftW3eO7p65uzwj7Zer58m3RR8R2mfbEY+Jse4Ib7zVdEtbKTUoxFUADnCMvhEIF2rQi8qzTm/zJeQhz3o3nbmm4IhtF9ZT1HR8QtSMOqxYrgiQ/+41NLNRoKSz4086WlQ8loBG4+QPwc0HfDGVWgIVj7TegJyvAHDtBxy5wZdsNfgspto+uUFAcvxgWcPUZa2DWplY+qWTrtmgMghuCMwmgTtMFieJUEnO3omD3ftFzJHPOMPoG72ZPPfLpIf3Rd9vkUc457+6BPL7oQBd6vy/ETIaM9GQhKoFm3q4bX7Yn0420+X45axQFlrxc4Wr7wdySJntCKelHfswt3k9Z5KKXwf9WWELXbTyPxuM7yavQorxcXdQKYhSZiD4gGum0H9viSpKIHo737/5m7HMWzFWQV3YSKFFWNXqLc=
X-Forefront-Antispam-Report:
	CIP:198.154.180.225;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mfod-euw1.prod.hydra.sophos.com;PTR:mfod-euw1.prod.hydra.sophos.com;CAT:NONE;SFS:(13230031)(82310400014)(1800799015)(376005)(36860700004)(105050200028);DIR:OUT;SFP:1102;
X-OriginatorOrg: csir.co.za
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Mar 2024 07:20:35.2118
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: c87ef064-2721-41cc-e46a-08dc43f73dcc
X-MS-Exchange-CrossTenant-Id: 2fd3c5d5-ddb2-4ed3-9803-f89675928df4
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=2fd3c5d5-ddb2-4ed3-9803-f89675928df4;Ip=[198.154.180.225];Helo=[mfod-euw1.prod.hydra.sophos.com]
X-MS-Exchange-CrossTenant-AuthSource:
	DB5PEPF00014B88.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: JN3P275MB2114
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

I am in support as well.
Kind regards, Willem


On Wed, 13 Mar 2024, Jason J.G. White wrote:

> Samuel Thibault <samuel.thibault@ens-lyon.org> wrote:
>
>> i18n files are currently encoded in latin1 (aka iso-8859-1), which poses
>> problem for various languages whose characters cannot be encoded that
>> way.  We could duplicate the i18n entries, one in latin1 and one in
>> utf-8, but it will probably be much simpler to just switch the i18n
>> files to utf-8 and be done? Would anybody be against this?
>
> I'm in support, especially if you can run iconv or a similar tool to
> convert the existing translations without loss.
>
>

