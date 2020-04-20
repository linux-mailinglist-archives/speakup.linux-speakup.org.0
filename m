Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 58CD51B15EE
	for <lists+speakup@lfdr.de>; Mon, 20 Apr 2020 21:27:56 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id A97E01C57E3; Mon, 20 Apr 2020 15:27:55 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=hotmail.com header.i=@hotmail.com header.a=rsa-sha256 header.s=selector1 header.b=b3fTytRF;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 403781C57F5;
	Mon, 20 Apr 2020 15:26:19 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 185581C57AF; Mon, 20 Apr 2020 15:25:59 -0400 (EDT)
Received: from NAM04-CO1-obe.outbound.protection.outlook.com
 (mail-oln040092010056.outbound.protection.outlook.com [40.92.10.56])
 by befuddled.reisers.ca (Postfix) with ESMTPS id EB3E11C29FC
 for <speakup@linux-speakup.org>; Mon, 20 Apr 2020 15:25:54 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RJKN2FhBeIpkBwTBnSuG5BkmAHJkqnMA5E6Iy9cic93UWTxjpZKGZ7gLsBMdz6qYU1I6yeeU5cV0U7w7Ej8x/v4CKFt1icIeH+siaUIx1MIkMgrwQYaTvkVg/Qe1e3ozDF2LmFmPLkQj4mjCel6qiDyTmb9Vmarn2+mP53+3OBI6b6hLiDOlrpW+HyZ87QtTcakXeVgB8hT1RzdkLpXAhaKID3WotwwpooKr2oAqIqv+E86dfhCUuGFXevFbNWt7ZPCqEDBCMG5BUXS6RKT7aYbsP/w74s/46tXZQww8udqvW8m5JlcOmwKXKf50usuAHgjE+Y/e4/VWpivzEjV3LA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bTnBqB0b7TmioDJFaUCHVSSp51WbA7yQcwG5ucRFokE=;
 b=IMrEwkG8kz+f1PKb+lVnq4hvGYp8FUNwX/JiLHtt3FLSsBsLILzzDqpFBPuh5oSRYwu2vvcMnNz3BB0YL44Z6G0Me4F7IMAseVO8Ud2d7EmadqJT4jvq9TmeBXio3eZ62i6mjcdTwGox+Y/aRXfAOEehPE6NiL4ItMy+1pBu1A+KicIv2vFmityxCDayqmtXv71qSelGnP5XWiN30WR1aQe/jha11PTYwEfILoP5Pt6cubZKtq6K2OT0sBuxErthyjmL+J07gWm0fzllr+ZQbHJK+x3Bd2J2+J/I1yx+M0PWyyL0VTkwfWEQFBp07mk2IiEqaS9X0tCfEhYbhlCssA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=hotmail.com; dmarc=pass action=none header.from=hotmail.com;
 dkim=pass header.d=hotmail.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bTnBqB0b7TmioDJFaUCHVSSp51WbA7yQcwG5ucRFokE=;
 b=b3fTytRFrfCMwdMDIuFaD8ZgbmmJAm1dQ8SG8N7l1VS+030FIYWX/rtbqAsqTLH/pDSExihILqtiaou2hSo3uuj8Y9qutklmYC4cqvjYZTEvnrrE8cLZhnM6hv5Ndyi7nykwL1v4z/I6armiqp5A1pV8ltdVdkOM/KhRPqX6/Km6NJ79XXeWziZOkJZfXC+4sN6LB+fSQJO8X74TCpQuyoMRQfx/jBYTosLgEvFfRxjS9h5WB+BmZz0PfeMMWorJhuxQWipeiG6wpvn+CDAl21ZmeYnFTAfjsbjQWDu8b/XlGXD4pCq2usq+MbbFyDy1ewBgvlYdL7gmnW5DCq7W/g==
Received: from SN1NAM04FT059.eop-NAM04.prod.protection.outlook.com
 (10.152.88.58) by SN1NAM04HT228.eop-NAM04.prod.protection.outlook.com
 (10.152.88.254) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.25; Mon, 20 Apr
 2020 19:25:53 +0000
Received: from DM6PR14MB3647.namprd14.prod.outlook.com
 (2a01:111:e400:7e4c::50) by SN1NAM04FT059.mail.protection.outlook.com
 (2a01:111:e400:7e4c::495) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.25 via Frontend
 Transport; Mon, 20 Apr 2020 19:25:53 +0000
X-IncomingTopHeaderMarker: OriginalChecksum:C73F469559C02ACF32D4C404838A0CDE0B8C9334C3E6D78807C3F44DA45F1FC3;
 UpperCasedChecksum:C25FD6E9FE3C8C30CBA61F07666B9B3F141EB6A08715F0DC843E03357F3B3CE4;
 SizeAsReceived:8583; Count:47
Received: from DM6PR14MB3647.namprd14.prod.outlook.com
 ([fe80::7cbc:9a27:8f87:b616]) by DM6PR14MB3647.namprd14.prod.outlook.com
 ([fe80::7cbc:9a27:8f87:b616%9]) with mapi id 15.20.2921.027; Mon, 20 Apr 2020
 19:25:53 +0000
To: speakup@linux-speakup.org
From: Criss <crisspro@hotmail.com>
Subject: change parameters in speakup t arch?
Message-ID: <DM6PR14MB3647E5350F8CB7B9294C154ADAD40@DM6PR14MB3647.namprd14.prod.outlook.com>
Date: Mon, 20 Apr 2020 15:25:48 -0400
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
Content-Language: es-CL
X-ClientProxiedBy: SC1P215CA0040.LAMP215.PROD.OUTLOOK.COM (2603:10d6:4:41::26)
 To DM6PR14MB3647.namprd14.prod.outlook.com
 (2603:10b6:5:1ba::16)
X-Microsoft-Original-Message-ID: <4010b545-8698-ec1d-dd76-8681736f08d1@hotmail.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.0.5] (190.5.52.129) by
 SC1P215CA0040.LAMP215.PROD.OUTLOOK.COM (2603:10d6:4:41::26) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2921.27 via Frontend Transport; Mon, 20 Apr 2020 19:25:52 +0000
X-Microsoft-Original-Message-ID: <4010b545-8698-ec1d-dd76-8681736f08d1@hotmail.com>
X-TMN: [geYiEGJv0+9inZD999kjT1DEO28zfdAS]
X-MS-PublicTrafficType: Email
X-IncomingHeaderCount: 47
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-Correlation-Id: 30dbbf4f-3775-4eab-79df-08d7e560a420
X-MS-TrafficTypeDiagnostic: SN1NAM04HT228:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: uUixq/oNxEu+GMKWW7TBYXb5OQpIoHSaUW7eAT7dhyuZXZlTIqRhlbFLDRCBOfOFFTdYkOm1iX1zOlDWjPXjIE8+EtpuUevkOlzmDEo+H8xlTa8+xzOKqFICgKaAyTjzZ2PTARykRFeoSZADlcqNsqPCGLZduLUKEuJtwO8RGbkGdNzOLg8ntrjcgIgotAY7gFpuBzJMJOvCOeoKtlc7lQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:0; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR14MB3647.namprd14.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:; SFS:; DIR:OUT; SFP:1901; 
X-MS-Exchange-AntiSpam-MessageData: zgcAqlKzj1eOn1KOSZLMom6qwQipgZBu42vdqRsje0HieYYt+seU9IfFv60XhQo1Iwp9EqY4KN1tVp00aJNAi83EFxaPGGnn1xME9dbgHkSHylXaxvF8fBgVzNIX4GYyrCmjD46DYSlCmOCZkbEb+w==
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 30dbbf4f-3775-4eab-79df-08d7e560a420
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Apr 2020 19:25:53.2414 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN1NAM04HT228
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

Hello every one.


I whant to install Arch Linux with Talking Arch, but when start speakup, 
I wudl like change volume level, also, I don't know if is possible 
change to spanish voice. I know the instalation is in english, but for 
me is more easy understand with spanish voice.


Best regards.

_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
