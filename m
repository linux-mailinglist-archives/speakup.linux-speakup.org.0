Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 12A8D1D1FCB
	for <lists+speakup@lfdr.de>; Wed, 13 May 2020 22:02:23 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id C91651C07F4; Wed, 13 May 2020 16:02:21 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=hotmail.com header.i=@hotmail.com header.a=rsa-sha256 header.s=selector1 header.b=iaZkI9Aw;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 48F1F1C083A;
	Wed, 13 May 2020 16:01:30 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 51E631C07EF; Wed, 13 May 2020 16:01:20 -0400 (EDT)
Received: from NAM02-CY1-obe.outbound.protection.outlook.com (unknown
 [40.92.4.84])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 76A901C0129
 for <speakup@linux-speakup.org>; Wed, 13 May 2020 16:01:15 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VMuscZeUyuLrubf+tzh0A6NZSclpFosR6+Tu7mGQmGZX2XtsUgAAHygmjokLIkMMqNvS3qVJPvfkRJxVLVMB5rlMBfmiBiZ37W8JgWgrLOvYit7e/GgfExA2YdvuCPeWr6reaazxtncNHdZQZ+hVVrFWDt4AL1neXqdaaL0qhBSn80Rv9h83sNmUF85Pq1sUlpvo0gwErBJHQRcLMrKGbPKweZjYDJU78GQMN3qPK54iJfHaQo3MUDG8EGtSGGudm9XHCJUURDXLrvqbxN/LNrLk6l+h39QlMBIY6E+6vFN/vu2ajJmiWyT8CtjSateAycAtFob9NIpysqUrYLbBrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PxxIeZU/D3rE05JyY1+hLpGHxLAO5iFl0bjZHdic6ow=;
 b=M6PXXOdhop0rn0rIGdjcTEvLN8xNnW/cwnsYnSQon1ZsAqezuoZYJKjxmloj1A8goeDpRfCtvHEpl+Bhu4CfHRTRqMX/RMLXX6BntYOpz7NJz0Nhh6SMIJdjiqR94GdiCp9+MOdWNRQ1CGtku2+mHsTy+E0AlA59AV1ucc+dpWGPvHVVur3ZC8R/F8ADXc8UFSPzCH8UHFPdB9d7z3dfbaoN9+DAOda7XargQRcBGKvb63RqWTpL0g8DyfRsRgDbG+DHGbci3jPGGKewZVR+NPmtH75xdtPt3Jbaew+rzM+RzbBJqXQDT6IhvAS15afSqb9y45n6idG7FLILT5ZPJg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=hotmail.com; dmarc=pass action=none header.from=hotmail.com;
 dkim=pass header.d=hotmail.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PxxIeZU/D3rE05JyY1+hLpGHxLAO5iFl0bjZHdic6ow=;
 b=iaZkI9Awino2qxEqHT0oOT9t8HxiNoe8ccu2+h1NO6pjaHAmK6G9OD6pxbVMlcrKaHYNsrOy+mwoWsze2xub1jIdVc40sSwV9+jpuz4vKErZ/R4zWalHW/TdfaO5qUE0oZprGrAsznRBhfgXB47GduLNjdoLsRvXjyxdl19eo5khWDWjd368E9pK8odcs20fG+J7alISwC7O+rBUhdkcJJo9HW9ydX0UH5uemL4bdDVFosMjy6TVBKrcUndhAUToF8ol41HoiyCipy7AMgGx9m/ij8LjiPyGp8tMMx0r8Kl+4iD+DkNgF4Xcg/PXp3l1U2FlEmXln4xPr5PLT5Yg9w==
Received: from BL2NAM02FT043.eop-nam02.prod.protection.outlook.com
 (10.152.76.60) by BL2NAM02HT088.eop-nam02.prod.protection.outlook.com
 (10.152.77.64) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.29; Wed, 13 May
 2020 20:01:04 +0000
Received: from DM6PR14MB3647.namprd14.prod.outlook.com
 (2a01:111:e400:7e46::42) by BL2NAM02FT043.mail.protection.outlook.com
 (2a01:111:e400:7e46::351) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.29 via Frontend
 Transport; Wed, 13 May 2020 20:01:04 +0000
X-IncomingTopHeaderMarker: OriginalChecksum:D31F3190852DCE4DFDC1D7197849C3812269F190763A95E160CCD949122D0A0E;
 UpperCasedChecksum:72797ED51F5344EE9DD737DA9C3B40AE23260A349BD090C7E8F9205B6DD35E51;
 SizeAsReceived:8563; Count:47
Received: from DM6PR14MB3647.namprd14.prod.outlook.com
 ([fe80::7cbc:9a27:8f87:b616]) by DM6PR14MB3647.namprd14.prod.outlook.com
 ([fe80::7cbc:9a27:8f87:b616%9]) with mapi id 15.20.2979.033; Wed, 13 May 2020
 20:01:04 +0000
To: speakup@linux-speakup.org
From: Criss <crisspro@hotmail.com>
Subject: speakup crashed in Vmware
Message-ID: <DM6PR14MB3647DD1F4448E4D621813D67DABF0@DM6PR14MB3647.namprd14.prod.outlook.com>
Date: Wed, 13 May 2020 16:00:58 -0400
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
Content-Language: es-CL
X-ClientProxiedBy: SC1PR80CA0099.lamprd80.prod.outlook.com (2603:10d6:2::26)
 To DM6PR14MB3647.namprd14.prod.outlook.com (2603:10b6:5:1ba::16)
X-Microsoft-Original-Message-ID: <f2aa7b38-e080-4b20-d4ee-55cebe0865b4@hotmail.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.0.5] (190.5.52.129) by
 SC1PR80CA0099.lamprd80.prod.outlook.com (2603:10d6:2::26) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3000.20 via Frontend Transport; Wed, 13 May 2020 20:01:03 +0000
X-Microsoft-Original-Message-ID: <f2aa7b38-e080-4b20-d4ee-55cebe0865b4@hotmail.com>
X-TMN: [/5Wty1whF12PzbusWOu309EGB83rBlGf]
X-MS-PublicTrafficType: Email
X-IncomingHeaderCount: 47
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-Correlation-Id: 161852a6-bbb4-4fac-7421-08d7f7785db0
X-MS-TrafficTypeDiagnostic: BL2NAM02HT088:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Nj8OsDfVykZKRarkI77k4bUErwN5IXbTapfn9WH1c+J7A5qIj3OkZ1XqEwstSCUDeWZd48HtZN8wQwViMwNm0Xx2XBjM+VR32W9tc16ThjYt+BgqhpFrhNtQXDt80CghEwsp1SluJxLMMFHHv5pdX+zgvBqxI0WVjIoiHdR6yVHR7bpTfPs5iNk31dAOfoHtikhKU5mNNaZNzUOhkuSvQQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:0; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR14MB3647.namprd14.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:; SFS:; DIR:OUT; SFP:1901; 
X-MS-Exchange-AntiSpam-MessageData: wbp3vDGkmMfZig2Dq8M4K2qYlGNWK2AmBDoHIelg+/t4JdZIRkEy+dud0LsRJ0xnKQW0GXO8wAfsHrque9TEH3woff64+sfwdpF65m+Y/KK6tOGWQFd69rU3NSzCwdgPa1nbmYI2j7eVwuPQ2Ywc8g==
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 161852a6-bbb4-4fac-7421-08d7f7785db0
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 May 2020 20:01:04.1980 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL2NAM02HT088
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

Hello.


When I tryed install debian with speakup in VMware virtual machine, I 
can't continue because speakup crashing, (with arch in vmware crashed 
too). Is this a speakup bug? How can I restart speakup in debian 
installation?.


regards.

_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
