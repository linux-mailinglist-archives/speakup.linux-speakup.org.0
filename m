Return-Path: <speakup+bounces-1195-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id D26EE96880A
	for <lists+speakup@lfdr.de>; Mon,  2 Sep 2024 14:56:10 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=csircoza.onmicrosoft.com header.i=@csircoza.onmicrosoft.com header.a=rsa-sha256 header.s=selector2-csircoza-onmicrosoft-com header.b=RWeRu+mA;
	dkim=pass (1024-bit key) header.d=csircoza.onmicrosoft.com header.i=@csircoza.onmicrosoft.com header.a=rsa-sha256 header.s=selector2-csircoza-onmicrosoft-com header.b=RWeRu+mA;
	dkim=pass (2048-bit key; unprotected) header.d=mail-dkim-eu-west-1.prod.hydra.sophos.com header.i=@mail-dkim-eu-west-1.prod.hydra.sophos.com header.a=rsa-sha256 header.s=v1 header.b=qeVt7C57;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 6E8B23841BA; Mon, 02 Sep 2024 08:56:10 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 4579F383CAE
	for <lists+speakup@lfdr.de>; Mon, 02 Sep 2024 08:56:10 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id DE1A8383CAF; Mon, 02 Sep 2024 08:56:02 -0400 (EDT)
Received: from JNYP275CU001.outbound.protection.outlook.com (mail-southafricanorthazon11020121.outbound.protection.outlook.com [52.101.161.121])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 006A3382299
	for <speakup@linux-speakup.org>; Mon, 02 Sep 2024 08:56:00 -0400 (EDT)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=pass;
 b=YYSXQjTtr7doh/qJQI/ffbWNlSp/q+MaO/rDXzlP5/NgFgECcygwGct6WX/O+bPrM9U8wfcJu2VvG/00f+WfeO2WsYdep2XypJpCcaWxNQAmleRJNmLkqDjlo1PHWUtXW9BwKSD3DEHmLB7mZELjTRFzoBq/n8XkFZQ651RyU7vH4fKH1vbHDgLGA2VgmiDHKkevCMa46vDKkEmrw9B8pg1X4Cwy1GZph4kZUd85Lrfzp0KugbZ/dAHYjyYUbFkfDW8MWW0XQ6tWJ5TRNT5pfH94ldwoctwtAHYONn2H7zFVm0acnIJguX1WxMAzKK4PzjznnNs6En1WBE+eMiafDA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Gzsd0MtLSr0rh1O3etBOIwBMgmmAl8oZ6UiVb8mT0u8=;
 b=qHx9XBZTJr9I4GhSi0Jq7hx2gjUiwMGiIZPCSmtufFUmpDwxGxWmtU/A6W+KfFZPNYcHKaRxRze3iot6/81AC1srD1G7ggF+ExO6lpq4+KLu7Wg/g6BCHHZE5vY0iOpdQT77TwJmJ545OIWb1i8TPaBTS/fyt0xGW91VcLgRRKJaX9qtTVZky8nxGVpWcIYb6qNYLw9JpeUNm3wHcsymiMUIm2aw8HZiO9A66VnAPe6cCevCFrBJApXJ8Fw93oKkk7llnxenG7OtseQTiyKxwHvP5O+K01uqBWDR9OfAIrOnzJbQgg0NTKSEVXVtgP5LG9v+uM/c5e7IHu7WFSMl+Q==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 198.154.180.226) smtp.rcpttodomain=linux-speakup.org
 smtp.mailfrom=csir.co.za; dmarc=pass (p=none sp=none pct=100) action=none
 header.from=csir.co.za; dkim=pass (signature was verified)
 header.d=csircoza.onmicrosoft.com; dkim=pass (signature was verified)
 header.d=mail-dkim-eu-west-1.prod.hydra.sophos.com; arc=pass (0 oda=1 ltdi=1
 spf=[1,1,smtp.mailfrom=csir.co.za] dkim=[1,1,header.d=csir.co.za]
 dmarc=[1,1,header.from=csir.co.za])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=csircoza.onmicrosoft.com; s=selector2-csircoza-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Gzsd0MtLSr0rh1O3etBOIwBMgmmAl8oZ6UiVb8mT0u8=;
 b=RWeRu+mA7v+YvIHQrSqh4fyki7Y/mpWOWCWY58sIntyA+Jzl1+CqzEnM3Dq1dcCkd8Xy+SKg8iLHCaYoHTCX6Jw3MFaDeRF7c8PHd697L7dOtjtrjscBWFPgtOc3RLjOk+BCHnWXJfKjAVy0xV7Jfg9bS+pO9pC2nyGux2Pusgg=
Received: from AS8PR04CA0078.eurprd04.prod.outlook.com (2603:10a6:20b:313::23)
 by JN1P275MB1366.ZAFP275.PROD.OUTLOOK.COM (2603:1086:0:7a::12) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7918.24; Mon, 2 Sep 2024 12:55:54 +0000
Received: from AM3PEPF00009BA1.eurprd04.prod.outlook.com
 (2603:10a6:20b:313:cafe::af) by AS8PR04CA0078.outlook.office365.com
 (2603:10a6:20b:313::23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.25 via Frontend
 Transport; Mon, 2 Sep 2024 12:55:53 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.154.180.226)
 smtp.mailfrom=csir.co.za; dkim=pass (signature was verified)
 header.d=csircoza.onmicrosoft.com;dmarc=pass action=none
 header.from=csir.co.za;
Received-SPF: Pass (protection.outlook.com: domain of csir.co.za designates
 198.154.180.226 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.154.180.226; helo=mfod-euw1.prod.hydra.sophos.com; pr=C
Received: from mfod-euw1.prod.hydra.sophos.com (198.154.180.226) by
 AM3PEPF00009BA1.mail.protection.outlook.com (10.167.16.26) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7918.13 via Frontend Transport; Mon, 2 Sep 2024 12:55:52 +0000
Received: from ip-172-19-0-243.eu-west-1.compute.internal (ip-172-19-0-243.eu-west-1.compute.internal [127.0.0.1])
	by mfod-euw1.prod.hydra.sophos.com (Postfix) with ESMTP id 4Wy7zD29ckzYdZH
	for <speakup@linux-speakup.org>; Mon,  2 Sep 2024 12:55:52 +0000 (UTC)
X-Sophos-Product-Type: Mailflow
X-Sophos-Email-ID: 45b675cc31d449c9a6ed4386bfe1006d
Received: from CT2P275CU008.outbound.protection.outlook.com
 (mail-southafricawestazlp17011026.outbound.protection.outlook.com
 [40.93.75.26])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mf-outbound-eu-west-1.prod.hydra.sophos.com (Postfix) with ESMTPS id
 4Wy7zB3Bh0zvPry; Mon,  2 Sep 2024 12:55:50 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PKtnxIWwGKiSuwgFI38cdIo2baXi6m9BO4+nDazJeYEWjJN1gGAyBwZuPKKutsGNFsWDpb0n7CIJ8knMk9FW74dsXCfiYrYHL5qCIMc1uyDUcGLk4ueldDboidirkqfJMmhp3DGY9aNVAk9DLQTyyyJX2vJm835vOof7htPqz+kp8+NwpJN/5Fs48Jnsn5gJuTqWY1p7sa0t52UsIDWr7D5CKcFhR1ilc+aH3wSMhQ29wU18Kk4L2YIr4nld755XJ8QaajUnZYDOfmQ5Ia7CwiRnM0181vYHwLIQSxdT81VhLIPpIbK4WwdXd4TDoTbW7IEqTVsoAEF9jIsb8iG3Dg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Gzsd0MtLSr0rh1O3etBOIwBMgmmAl8oZ6UiVb8mT0u8=;
 b=r8kIVOCM3WW7L8U96FGSjDZpN+Mn3B9Gkt9sSkJEAD/xYBbVLr79ys0xvW83leIt1hXQQe/s82o/o7LgnVVFLoKGDF+J48LkDFreZ35IIMWRNFDf/yJf+Ezp5/JExqWQp6wwvMIUqwkcYrYPmzLq5QJOQPwxI+zMmdihAxUjTu12Ab/mGD5VmxcjXRSj9Sg8hYlsNjBO0Itp02hyzz/22ajQLYjHbHqEe/XM0H8FlJvBW7haRk47AKdftyPbxJ9Zike585/V2V/d+AJkFU7kscs19pcHKQTV2HQArd8U2y0p/xgHRz8LI43I4BHLyT8mU0AVLH1AaB4frqTeuspqUw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=csir.co.za; dmarc=pass action=none header.from=csir.co.za;
 dkim=pass header.d=csir.co.za; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=csircoza.onmicrosoft.com; s=selector2-csircoza-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Gzsd0MtLSr0rh1O3etBOIwBMgmmAl8oZ6UiVb8mT0u8=;
 b=RWeRu+mA7v+YvIHQrSqh4fyki7Y/mpWOWCWY58sIntyA+Jzl1+CqzEnM3Dq1dcCkd8Xy+SKg8iLHCaYoHTCX6Jw3MFaDeRF7c8PHd697L7dOtjtrjscBWFPgtOc3RLjOk+BCHnWXJfKjAVy0xV7Jfg9bS+pO9pC2nyGux2Pusgg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1725281746; 
 s=v1; d=mail-dkim-eu-west-1.prod.hydra.sophos.com;
 h=Content-Type:Subject:cc:To:From:Date;
 bh=Gzsd0MtLSr0rh1O3etBOIwBMgmmAl8oZ6UiVb8mT0u8=;
 b=qeVt7C57+f0bLrVeHBQVcgHGZYTcU9PIcIRhttDRrne61KgJRBUAmyn+Gh+5eyY3
 QQ4C4W07PrxSsX9qaVKcaKBPTyZlp1A53bh+NrPxJMsW90MudO/KfTvlsEKtryNJAFf
 bTh6MZ/79DeXCjAgWAFzF2zRfKksT4OkLBwpF/B9pg11FBaYb9/cBELJT0WzyFel5Od
 s1kQJkmh8csxquytLAujAKhC/VHYTM0ctanHiR+eglEmFPL5oBkqFordhTm4+ldoErw
 /mKrek3IfOWlLBcwQqE+L8l8ZA8AVBzUHaaIlXNvMhp2KqYgOVLlU5XpwACQEgecXHq
 yZDT5DyR4g==
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=csir.co.za;
Received: from JN3P275MB2310.ZAFP275.PROD.OUTLOOK.COM (2603:1086:0:af::11) by
 JNAP275MB2030.ZAFP275.PROD.OUTLOOK.COM (2603:1086:0:96::10) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7918.24; Mon, 2 Sep 2024 12:55:47 +0000
Received: from JN3P275MB2310.ZAFP275.PROD.OUTLOOK.COM
 ([fe80::5a5:5b4:7ba0:2b32]) by JN3P275MB2310.ZAFP275.PROD.OUTLOOK.COM
 ([fe80::5a5:5b4:7ba0:2b32%4]) with mapi id 15.20.7918.024; Mon, 2 Sep 2024
 12:55:47 +0000
Date: Mon, 2 Sep 2024 14:55:46 +0200 (SAST)
From: Willem van der Walt <wvdwalt@csir.co.za>
To: Martin McCormick <martin.m@suddenlink.net>
cc: speakup@linux-speakup.org
Subject: Re: SPFUNSUPPORTED MAY BE MALICIOUS CLI Terminals with Speakup (Was
 howto run speakup/orca concurrently in ubuntu)
In-Reply-To: <E1sl62C-0002oX-0Y@wb5agz>
Message-ID: <b47611eb-67aa-5c99-07b8-3b31b4168e67@csir.co.za>
References: <ZoieyBFD0TXlL_bd@cudneys.ca> <ZojtZ3RQxdiZaMN1@gregn.net>
 <E1sl62C-0002oX-0Y@wb5agz>
Content-Type: text/plain; charset=US-ASCII; format=flowed
X-ClientProxiedBy: JN2P275CA0004.ZAFP275.PROD.OUTLOOK.COM (2603:1086:0:3::16)
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
	JN3P275MB2310:EE_|JNAP275MB2030:EE_|AM3PEPF00009BA1:EE_|JN1P275MB1366:EE_
X-MS-Office365-Filtering-Correlation-Id: adc8ac28-7646-4bdc-17eb-08dccb4e93c3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info-Original:
 =?us-ascii?Q?KtfdmAciZTAxZfg3ABpgxqEkYvvIqySeNRZ9z8i4ioVijtiy8Fn5zrttUyjL?=
 =?us-ascii?Q?EeDNirLRYagAkej6CPtwWec4ukNIZy7P/pgaAzlphl7UlM9MDPMGCWdps7hO?=
 =?us-ascii?Q?Dyf0fntDqSdKp9RIfrpUC7g2IUHhHk28oVk0dIxdlQzPZCJNyy3wXOWgdeqJ?=
 =?us-ascii?Q?5BEdUTRep/Ixzeu3SYlLblW/kfn4mxEH9ahJGh8kk/gUZuFpEtSvGPqlQwBi?=
 =?us-ascii?Q?xyZ816gElxfj+KVqy4xr3eFePWUhduguI1mjfeQ/4vY0aOgpqn90OMeOrrIq?=
 =?us-ascii?Q?75RK0wMblJsPMPZ12bOvebUa50Q9D2nrgYCzNe36O42OR46qFrUv7aAqFP2l?=
 =?us-ascii?Q?saAsyi3TLuSKqbNR+jgrfN6Vur1FiyJ4432nOO2PcvLM0xnqDRjhbFlA3KJ0?=
 =?us-ascii?Q?JULDlrGR8nt9k7GHugV4EKjtDFZ74qgG5bzvf6R96TgRrzwH+F7Sz/TMbuC1?=
 =?us-ascii?Q?DojzBiPHf+lCPSiLphcliGHZdgAikWpsyzWRCl0sh0p2lXRcc/wa6FIpKQYb?=
 =?us-ascii?Q?6ezdwZx09s9kTUJ8UH/3W4U79I9WcpofjzGKEWgj1Mn1jcukHHvVUqple4ou?=
 =?us-ascii?Q?N4SjV3Ttdh21t5Ej/OuYvh8iUb3lHY9OiC0utelQQqeel5MllNLfXThan1+U?=
 =?us-ascii?Q?kYE+1+WZVmlaJwKJGCD5w7zezU/RIuQnzMOjdM6tPzjyeLuL2an/CmBbq/Es?=
 =?us-ascii?Q?vdq6YhRMXXhGq46K9J44uj4s8Wn+hANGVZYgVQdZZiPuMCpouVDeLPL8Sbc/?=
 =?us-ascii?Q?71a85160IuM/Bzy6PLQS4K/d4YJwkaWzojxVxu544igrAHchqnfao+xJDEY9?=
 =?us-ascii?Q?LRbdu+7Zkh6XfNkNagCxQSTwGaJezc3EfP6OqhmS+HypvcTRmDUKdg/4fts5?=
 =?us-ascii?Q?VDxp8uvssuvI1IW1/GpNEeGGYiMi4oCBYOXWfi/rb92tz77ltM2YBcc6wZw+?=
 =?us-ascii?Q?+BmJI/m0XxR23XB5wTYKAzODZb0qVmhEk6nr4Fx5GM69C8eZsgigc2dIIEAI?=
 =?us-ascii?Q?D+x5vFxManAJHBk8/KGKkc0NBnzyhdR2z6vocIjoACSIy5CGpXCy/bokSeWj?=
 =?us-ascii?Q?edOi2mNqWhYEvyEWYwRVOrVvzA7OmvEL6SCpaoswirMJUxDNE12UMBvs4nfZ?=
 =?us-ascii?Q?cCCQlwPT3x7A0UQfcmnDdtq5H3s9PwqT5Hq7AVG4p5tlqw7bTSf8iFNSKXv2?=
 =?us-ascii?Q?GtAbAn9u+3o4WJk8ppP4Ut7/MEDJ5a+3Zf5FcQpqbyiv9kuyOg3XRW7H/fuY?=
 =?us-ascii?Q?mgmdFHp85PFs3Z2ZJg4WYsX6/u7GT1SwocmZ1jAeOo1h8xxo3PniFh+Z6+rR?=
 =?us-ascii?Q?Tz1SggSOLofR95bx/x+JNQOr8f7m8okOm2Ogi8hpb7csIQ=3D=3D?=
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255; CTRY:; LANG:en;
 SCL:1; SRV:; IPV:NLI; SFV:NSPM; H:JN3P275MB2310.ZAFP275.PROD.OUTLOOK.COM;
 PTR:; CAT:NONE; SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT;
 SFP:1102; 
X-MS-Exchange-Transport-CrossTenantHeadersStamped: JNAP275MB2030
X-Sophos-Email: [eu-west-1] Antispam-Engine: 6.0.0,
 AntispamData: 2024.9.2.122421
X-LASED-From-ReplyTo-Diff: From:<csir.co.za>:0
X-LASED-SpamProbability: 0.083173
X-LASED-Hits: ARCAUTH_PASSED 0.000000, BODY_SIZE_3000_3999 0.000000,
 BODY_SIZE_5000_LESS 0.000000, BODY_SIZE_7000_LESS 0.000000,
 DKIM_SIGNATURE 0.000000, FROM_NAME_PHRASE 0.000000, HTML_00_01 0.050000,
 HTML_00_10 0.050000, IN_REP_TO 0.000000, LEGITIMATE_SIGNS 0.000000,
 MSGID_SAMEAS_FROM_HEX_844412 0.100000, MSG_THREAD 0.000000,
 MULTIPLE_REAL_RCPTS 0.000000, NO_CTA_URI_FOUND 0.000000,
 NO_FUR_HEADER 0.000000, NO_URI_HTTPS 0.000000, OUTBOUND 0.000000,
 OUTBOUND_SOPHOS 0.000000, REFERENCES 0.000000, SUSP_DH_NEG 0.000000,
 __ANY_URI 0.000000, __ARCAUTH_DKIM_PASSED 0.000000,
 __ARCAUTH_DMARC_PASSED 0.000000, __ARCAUTH_PASSED 0.000000,
 __ARC_SEAL_MICROSOFT 0.000000, __ARC_SIGNATURE_MICROSOFT 0.000000,
 __BANNER_TRUSTED_SENDER 0.000000, __BODY_NO_MAILTO 0.000000,
 __BOUNCE_CHALLENGE_SUBJ 0.000000, __BOUNCE_NDR_SUBJ_EXEMPT 0.000000,
 __BULK_NEGATE 0.000000, __COURIER_BODY_UPS 0.000000,
 __CRYPTO_ADDRESS_OBFU 0.000000, __CT 0.000000, __CT_TEXT_PLAIN 0.000000,
 __DQ_NEG_DOMAIN 0.000000, __DQ_NEG_HEUR 0.000000, __DQ_NEG_IP 0.000000,
 __FORWARDED_MSG 0.000000, __FRAUD_MONEY_BIG_COIN 0.000000,
 __FRAUD_MONEY_BIG_COIN_DIG 0.000000, __FRAUD_NEGATE 0.000000,
 __FRAUD_NEGATE_FROM 0.000000, __FRAUD_URGENCY 0.000000,
 __FROM_ADDY_SHORT_LC 0.000000, __FROM_DOMAIN_NOT_IN_BODY 0.000000,
 __FROM_NAME_NOT_IN_BODY 0.000000, __FUR_RDNS_SOPHOS 0.000000,
 __HAS_CC_HDR 0.000000, __HAS_FROM 0.000000, __HAS_MSGID 0.000000,
 __HAS_REFERENCES 0.000000, __HAS_X_FF_ASR 0.000000,
 __HAS_X_FF_ASR_CAT 0.000000, __HAS_X_FF_ASR_SFV 0.000000,
 __IMP_FROM_MY_ORG 0.000000, __IN_REP_TO 0.000000,
 __JSON_HAS_SCHEMA_VERSION 0.000000, __JSON_HAS_TENANT_DOMAINS 0.000000,
 __JSON_HAS_TENANT_ID 0.000000, __JSON_HAS_TENANT_SCHEMA_VERSION 0.000000,
 __JSON_HAS_TRACKING_ID 0.000000, __MIME_BOUND_CHARSET 0.000000,
 __MIME_TEXT_ONLY 0.000000, __MIME_TEXT_P 0.000000, __MIME_TEXT_P1 0.000000,
 __MIME_VERSION 0.000000, __MSGID_HEX_844412 0.000000,
 __NO_HTML_TAG_RAW 0.000000, __OUTBOUND_SOPHOS_FUR 0.000000,
 __OUTBOUND_SOPHOS_FUR_IP 0.000000, __OUTBOUND_SOPHOS_FUR_RDNS 0.000000,
 __PHISH_PHRASE_NL4 0.000000, __REFERENCES 0.000000, __SANE_MSGID 0.000000,
 __SCAN_D_NEG 0.000000, __SCAN_D_NEG2 0.000000, __SCAN_D_NEG_HEUR 0.000000,
 __SCAN_D_NEG_HEUR2 0.000000, __SUBJ_ALPHA_NEGATE 0.000000,
 __SUBJ_REPLY 0.000000, __TO_MALFORMED_2 0.000000, __TO_NAME 0.000000,
 __TO_NAME_DIFF_FROM_ACC 0.000000, __TO_REAL_NAMES 0.000000,
 __URI_MAILTO 0.000000, __URI_NO_WWW 0.000000, __URI_NS 0.000000,
 __X_FF_ASR_SCL_NSP 0.000000, __X_FF_ASR_SFV_NSPM 0.000000
X-LASED-Impersonation: False
X-LASED-Spam: NonSpam
X-Sophos-Mailflow-Processing-Id: 228d446ddace4c7395c4bb94076d7b59
X-Sophos-MH-Mail-Info-Key: NFd5N3pEMjlja3pZZFpILTE3Mi4xOS4wLjI0Mw==
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped:
 AM3PEPF00009BA1.eurprd04.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs:
	3866ba08-9872-4c60-e85c-08dccb4e906d
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|35042699022|36860700013|376014|82310400026|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?98pAY9WrVkrGgBf/e/PsouWI2ejNBavZQZQ4VjC1TaZjuI6HZvwCZeIFtM5y?=
 =?us-ascii?Q?4gknTg/Heh8pmwSa28rNs17XysS58Irre451cy1OLdLq4RbKFhsIIT+NEFK6?=
 =?us-ascii?Q?P95TwgWA0xNjV7pdpyCoKoMAHfLwwnLkGRDFcajRpkJVhVd6x4XmIuxwC/38?=
 =?us-ascii?Q?Yg504avJ4JCc+j8Qb4ZhFlxkeBt5sl+0/+5Xa7H8OYMCmAd642JQq+YjVD7U?=
 =?us-ascii?Q?q+rhkKvz09HXbj09C92vuab9MTN2fuio53Ns6Q1u/sJcWRtU/KX+aYUt5Tty?=
 =?us-ascii?Q?H2eEtdpT+8t7pxy1aeAz9JvCfg/rBXQ8g7LterXHvB8OguUmd3UtYB1Wp1No?=
 =?us-ascii?Q?6WMWICk4I1hCAx9I0hetcFXBr5g8dnlgBx6vEI49C8MXBS9DVj46jktiiCTR?=
 =?us-ascii?Q?y5+CUD6BGM67Kz4/n7Bst7fQl8veAnx9nRy7lcX641XYteyGgLvj8JMBZIDx?=
 =?us-ascii?Q?x/gnnFsGJ8xWFkG0dRjr863hjvMXTCEwW5ueQqPhHxv5g7tTzvpYhI/XTivb?=
 =?us-ascii?Q?CSny0oXX7R45Zi18L7g2iehjD6RMhg1YhsKzgeSRY38WyvPeHbyeSAQxejl0?=
 =?us-ascii?Q?JzDlKoIEv7iNziOuHeVZm4mQ96VKZo+pJDs+NmbuSDbc0X56ueZPIh5mpvED?=
 =?us-ascii?Q?lT/7OtHbzaSRAenBIoJAw3fCZMMGmUIRmXqjNHksMUQMjMhHuLFFdCI2iTLK?=
 =?us-ascii?Q?xrTCwX1YziKo9IP+HIrE10AxD7A52G2zQ6GFrxnUTAx4i4hs9If1ekTIFK5v?=
 =?us-ascii?Q?qq5K77jdzzGbTJjYxKGfNEVGJ1XY4zpqvxMCpifDy+hRcHnKKc32tetd6Xp/?=
 =?us-ascii?Q?BUsKhTbE8lizjjMxceAl2KNOqDCTovV/V5Dswk6AMBlu5m2JnlOK9JpcG5N2?=
 =?us-ascii?Q?sVHND1/dFBObe3rXVUrIq8Ull0BYTgoUGAEZ2EWFe7XfFABgtObhPyVoy6qO?=
 =?us-ascii?Q?U8CSb8hJVhWSH1AK9Ct5m8EeVLZgZku5wmL1d81kIF7Dub/HlOJfPpU7zweM?=
 =?us-ascii?Q?zRNSYW3P9D8O7hwRVumUlLdhRUBlofIv7OTgrKbXSDL1Oc473ToxOWzCCaga?=
 =?us-ascii?Q?cympKxIZfF+zeSObH0QWShEYmbTNNyArBET1wK24s5My65rJ7seWkswoEkpX?=
 =?us-ascii?Q?LpC5A606GR30UfWMtCfjdWZ+zNEkde+aZMYeg9Vwtj19K8VaZ2ugcROkQ46X?=
 =?us-ascii?Q?8vbF12ns044luaQ+VIkdaAu9KsGfJtf4A4Evhwz/Ayv7AOmI8ctrlqMxhNxB?=
 =?us-ascii?Q?Rkrw1uzV5zDNrDeyd88kHj2hNA49YxQROrQrhXVdInSGv9KXXWI7SoMwzIL4?=
 =?us-ascii?Q?xUOFe5bbSF9lY9jjdpnGegkdmwoqAfDmy+LFpxSbWuDUSw/xpKreTAbnrbeZ?=
 =?us-ascii?Q?KpuFKQsr6Ry6wp7Po4ziVr1y1DJm9b7YYBp+qeKwKM5Eqhj3fZwzHDpb8ITc?=
 =?us-ascii?Q?QKovWP61IJt0Qd1ht8eu4dIAtX+xIjzE?=
X-Forefront-Antispam-Report:
	CIP:198.154.180.226;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mfod-euw1.prod.hydra.sophos.com;PTR:mfod-euw1.prod.hydra.sophos.com;CAT:NONE;SFS:(13230040)(35042699022)(36860700013)(376014)(82310400026)(1800799024);DIR:OUT;SFP:1102;
X-OriginatorOrg: csir.co.za
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Sep 2024 12:55:52.5754
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: adc8ac28-7646-4bdc-17eb-08dccb4e93c3
X-MS-Exchange-CrossTenant-Id: 2fd3c5d5-ddb2-4ed3-9803-f89675928df4
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=2fd3c5d5-ddb2-4ed3-9803-f89675928df4;Ip=[198.154.180.226];Helo=[mfod-euw1.prod.hydra.sophos.com]
X-MS-Exchange-CrossTenant-AuthSource:
	AM3PEPF00009BA1.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: JN1P275MB1366
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi Martin,
Get rid of pulseaudio and change your speech-dispatcher config to use alsa 
as suggested by Greg in the bottom of your message.
One easy way to stop pulseaudio is to replace /usr/bin/pulseaudio with a 
file that does nothing.
Each time you update your software, you might need to put back the file as 
the update stuff will overwrite it again.
HTH, Willem

On Mon, 2 Sep 2024, Martin McCormick wrote:

> This message is slightly different in scope than the thread I am
> referencing which was active slightly less than 2 months ago so I
> didn't want to hijack it but instead have more questions.
>
> 	The system in question is running Debian bookworm and
> Orca 43.1 with speakup and appears to be doing that fine as I
> have run firefox and done a few other GUI activities with no
> unusual issues.
>
> 	For the longest time, I thought the alternate consoles
> didn't work but Control-Alt F1 through F6 seem to work now that I
> know to use Control-Alt instead of just Alt-Fx.
>
> 	Control+alt+F1 or F2 gives one a choice of two GUI
> consoles and orca works in tty1 and tty2.  Tty's 3-5 are CLI
> consoles and I know they work because I have a Bell character as
> part of the command-line prompt and the little piezoelectric
> buzzer beeps and I can log in to them and call alsa-based sound
> utilities such as sox and there is proper sound but I would love
> to have the old-school speakup command-line utility there because
> that system just works when dealing with plain text, very well.
>
> 	Right now, I can either get on an older Debian box from
> the 8086 era and ssh in and run lynx sessions or use gcc or g++
> and all is great.  The other thing I am doing right now is I
> have a Raspberry Pi4 with speakup running on it and it almost
> works perfectly except that it seems to have some sort of
> buffering issue when reading a long text output such as an email
> message that covers several screens orthe output from doing a
> build which may go on and on forever, more or less.
>
> 	It seems to be a Raspberry Pi problem as I tried
> everything from a Pi Model 2B through a Pi4.  The faster
> processor in the models 3 and 4 were some improvement but it
> still ends up imitating someone who is out of breath several
> lines in.
>
> 	The Raspberry Pi4 isn't a replacement for the 8086 system
> because of that buffering issue but it sure uses a lot less UPS
> energy and having the CLI consoles would use even less energy.
>
> 	The systems I am using are not multi-user systems so
> thankfully there is no security issue but it would be nice to
> free up the Raspberry Pi4 which talks and should be fine for
> other projects, just not for long-winded text output.  The other
> advantage of having the CLI consoles on the same box is greater
> simplicity of setup.
>
> 	I also definitely do not want to ruin orca as it is very
> useful, just for different activities.
>
> 	Any ideas on how I can have the best of both worlds are
> much appreciated.  Thank you.
>
> Martin
>
> Gregory Nowak <greg@gregn.net> writes:
>> Jookia's page lists one solution to the problem. The other solution
>> which I personally use is to get rid of pulseaudio since I don't need
>> it. If you do that, you will want to change the output from pulseaudio
>> to libao in /etc/speech-dispatcher/speechd.conf if you still want to
>> use orca.
>>
>> Greg
>
>

