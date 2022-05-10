Return-Path: <speakup+bounces-412-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 173A0520A9A
	for <lists+speakup@lfdr.de>; Tue, 10 May 2022 03:19:48 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=uwprod.onmicrosoft.com header.i=@uwprod.onmicrosoft.com header.a=rsa-sha256 header.s=selector2-uwprod-onmicrosoft-com header.b=CS9iJ3Vj;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 8FAA9380DEF; Mon,  9 May 2022 21:19:47 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 6DD5A3809FF
	for <lists+speakup@lfdr.de>; Mon,  9 May 2022 21:19:47 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id EAADA380A80; Mon,  9 May 2022 21:19:37 -0400 (EDT)
Received: from wmauth3.doit.wisc.edu (wmauth3.doit.wisc.edu [144.92.197.226])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 7CE0D38099B
	for <speakup@linux-speakup.org>; Mon,  9 May 2022 21:19:37 -0400 (EDT)
Received: from NAM12-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam12lp2169.outbound.protection.outlook.com [104.47.55.169])
 by smtpauth3.wiscmail.wisc.edu
 (Oracle Communications Messaging Server 8.1.0.16.20220118 64bit (built Jan 18
 2022)) with ESMTPS id <0RBN00NX87OMD000@smtpauth3.wiscmail.wisc.edu> for
 speakup@linux-speakup.org; Mon, 09 May 2022 20:19:35 -0500 (CDT)
X-Spam-Report: AuthenticatedSender=yes, SenderIP=[104.47.55.169]
X-Wisc-Env-From-B64: amhlaW1AbWF0aC53aXNjLmVkdQ==
X-Spam-PmxInfo: Server=avs-3, Version=6.4.9.2830568,
 Antispam-Engine: 2.7.2.2107409, Antispam-Data: 2022.5.10.10918,
 AntiVirus-Engine: 5.90.0, AntiVirus-Data: 2022.4.21.5900000,
 SenderIP=[104.47.55.169]
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Gm0rZlcKwAwX1/pRzEYjC/fNX/3ObKf/CSjWkT+QqhTjhJYkyosdXBLP5W/krcdMbRVkCbaq3yaN6y5Qo7eKNu/gIruIeGZoVX896OrUqDCdYHvDKYMQsANkC9F1DSQfooaQk2zP7y4sksLyH1LmX9gh40vJp0tmwkYFJ9N2UQZ2RQryMk/PNC2kO7KGfsaP1wRsclQaAAa498NAR0/C4nonavr8ySpaknyGm5eKjrZlUCG1jAfZBBBgBHP5yPjCOGTVHB/OaqI75zQ7HepVe0h+LZhSi0L9i6c8oO3xvS6ct6+ujxhqaC9gbwYC+n8FT6hQmFeZPjII8AQy6/D99A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yCa1+hp+TJqZmwVUxyYi9xo1vHkWnY2M6yFRSTYRrmA=;
 b=KjCy6hBjvDAC4+8/7RtOyF4X6PHdcmC29cMyeq8VO6Rvjk4gW2si9NgFyPrjgI06SmIlzwiOLYuzLpOD6e9aZKAJEiIJFSB+CxEkjKPjQ2cWRqDkUEVJ2fk07lf1UZcVmupqlWW/JOshzeOBBPorvWYa5pkxVRmGyICDw95o2gc7IhBGy7cFakBDOiePBEnQAbTxrPs9p6shX8rfcpGaukxKYnJDw9rYIZ2F9u4seMfOrQToiKU8MgRbluyWAJ/o+l80PoOG2G9bcBAcvmzGcLwNuIkRW4J6qDhipBqeCbt52oFqBsNhVBNXVIegyLy9zrimynR1zMfsMTGhnB1P+w==
ARC-Authentication-results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none header.from=math.wisc.edu;
 dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=uwprod.onmicrosoft.com;
 s=selector2-uwprod-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yCa1+hp+TJqZmwVUxyYi9xo1vHkWnY2M6yFRSTYRrmA=;
 b=CS9iJ3VjWljAnh+Wq0IsDAqlrO7RdhsCZ+VqreLbUV1pVCeNhRFrY3Ps8pMEs4VppalnnVBF8IVD7IYd0SE60zh6cv5D8hZQ5PWs4+Fu5XoBUe9YRPmn1hW5OsTsF1sKkdE7EczErUdc6uBfg+upN7suhC0ONVdXj17FArlb37E=
Received: from SN6PR06MB4991.namprd06.prod.outlook.com (2603:10b6:805:c1::12)
 by MN2PR06MB5469.namprd06.prod.outlook.com (2603:10b6:208:c7::31)
 with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384)
 id 15.20.5227.21; Tue, 10 May 2022 01:19:33 +0000
Received: from SN6PR06MB4991.namprd06.prod.outlook.com
 ([fe80::d56f:a62f:5f20:5484]) by SN6PR06MB4991.namprd06.prod.outlook.com
 ([fe80::d56f:a62f:5f20:5484%7]) with mapi id 15.20.5227.023; Tue,
 10 May 2022 01:19:33 +0000
Message-id: <81afd3ae-b377-800f-dc94-0dfe301011fe@math.wisc.edu>
Date: Mon, 9 May 2022 20:19:29 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Content-language: en-US
To: speakup@linux-speakup.org
From: "John G. Heim" <jheim@math.wisc.edu>
Subject: Speakup Left Out of Ubuntu kernel (again)
Organization: University Of Wisconsin-Madison
Content-type: text/plain; charset=UTF-8; format=flowed
Content-transfer-encoding: 7bit
X-ClientProxiedBy: BN9PR03CA0508.namprd03.prod.outlook.com
 (2603:10b6:408:130::33) To SN6PR06MB4991.namprd06.prod.outlook.com
 (2603:10b6:805:c1::12)
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: db8db188-0ce2-4ac1-cdbb-08da322322ed
X-MS-TrafficTypeDiagnostic: MN2PR06MB5469:EE_
X-Microsoft-Antispam-PRVS:
 <MN2PR06MB54692DAD2D349867875B0A30F3C99@MN2PR06MB5469.namprd06.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
 XblRdGkYKRtkoFcnry9KdHXagwovkriMIZsqrdkyQEAYPg2Fre30ibEImyoPafF7RWytweM6K1eR8LrH3BA5AfYbq28iOgiNHKiq/F3YTCKSZn1SCadt1tw/qjTJq62Z7OSXr5jiCOecKM6s+jj5pbVTS+GgCQ78SEbIsCi5Uh7H3i3549Ig6YNQimIqOLMOzKEW3UC9zNrb1YMbF8JRZtSPbDDXY1U69cD7ycNmHdAzm1StkQP3/c7/QmElcjCUX7JhdQkLTatUWje1UAFd6DszzWuZw6ZLwC4RZtGJXnVDzpyrRZIdeZrFXd2d3uCNQeMNt3UK0GXyAy4agkx6JI2327j8HOL+rkEakCgRIC72JXPNCl9pVu+YX8VvzdK/TuRXDL8q30JJMmonneijvxPjrm5IJ0Xe4iU5OLo4KSXYjKmHsKjVX+SZCVpa13wjJFdRb9JUnQnnfESBT2euKkrO5YX/xC8O+Br7sfK5KiAf3gRrFLLGrNZUn8PH0spSc236+2PyeL+lZAWLYrEiKnZX1QYRCsKqqIu/ddUV7HH3sMHvWtUWyzU80PrVyjaaC91BbBdz2mH2Wb42G9Bsp1pmlC5JhPkIBKarSL/d6M7l/KrDOFV1i9isp+K1hoPp3jszt7nbWzXPNakgB9FbVOG+s8lF9tnJHff4AxSOO+pzQy++hGcTMxFjfMLw1ae/KDwK9TkRE3j928mKhna9rP2H7z49uNm4ioY5UouT1QA=
X-Forefront-Antispam-Report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SN6PR06MB4991.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(366004)(66476007)(66556008)(6512007)(26005)(5660300002)(66946007)(2616005)(186003)(8676002)(31686004)(558084003)(6916009)(40140700001)(75432002)(8936002)(86362001)(36916002)(2906002)(316002)(508600001)(6486002)(786003)(6506007)(6666004)(38100700002)(31696002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
 =?utf-8?B?VVJobTQ1WFFNb2gyMUVWeUFRKzdVNnl5L0F3MHVEeDBHb3pMc1JFdTFEdmQ2?=
 =?utf-8?B?OVE1MFZTODVYVFp4WWVyc2VIM0U4YUt4T2FTeTNJa2c3bEppem1mWHJ3d1R2?=
 =?utf-8?B?MS9MWC8rTFVDSHJ1ZHEvN1lNeDBINmhIclcwYXFhYzdSckh1VithOGxiblI0?=
 =?utf-8?B?T3grQUNZM3ExaVAyNFpITjZza25FVndFTFRWZ1phcThqOXNxWGdzc0JPWDZw?=
 =?utf-8?B?Z3N1b0ZaR25pY3VsRjlCNlRJVitvSWJjaGlPVUpVOXAwT1lmL2NvZE0wTHVx?=
 =?utf-8?B?SGVqSjcwak5DMTFLdXEwcWlqYlp3VnRIcVJ3Y2RyVndPUitlQ0N1aE0zL2RB?=
 =?utf-8?B?R1RJWEwxTVdQaFJrZHdDU2hJNUpSUU5uU09weUZHRHhKYWRQZzF4R0oyTVZZ?=
 =?utf-8?B?ZkJ3SmtyNzhPRHdFRUpUYWI2aTFidDFxRFZGTVV5TkJOeG1jRlJzamsxY21p?=
 =?utf-8?B?a3JwVXhoRE5MSzFUTUNUU2EyVnJVdkpsdG83Nm9pWWZoNEhUQVhtQStBZjc0?=
 =?utf-8?B?dm1MUnJLU0ZjY0lYNEdJc3FZS2MvcnVwWHRFbGZGNmRzdTZ4bFIzKzJCdkFB?=
 =?utf-8?B?RGh1YnRVbFRiTUtOZ3Qrakh0SHo5L2xjV3VTSFlFVVBqZk5BdXB4ZmgzQ3gx?=
 =?utf-8?B?bkFNK2RPaWV4dEU3SmE3TVl0RXl6NDdQNzMxSUJjVzUyRDdkYUJOM0hQWGk3?=
 =?utf-8?B?QkxsOFVmZ0N2Tkl5a2psS1MrTHBxdTBZNldLWS96dUZ2YjB4M0lUYUplWjgw?=
 =?utf-8?B?SjVrU0cxRG5hVVNPTmZLajJuSVVEMFM4R0NoK3JVbjdGVlRzTFl2ZlNiSlBt?=
 =?utf-8?B?V1pTOFplbWNqT3gvK1ZvdG1MaTJNZXAyTjJCYTdtSVNyQldXbERXTVdsZUgr?=
 =?utf-8?B?bkVxUFZ2aGZ5MDNBMWRNRFFrK2c5VUd3L0lGenJaTzcwamxyMEx6NzViTHh6?=
 =?utf-8?B?Q3Nlb0Q5L3puenVIZDI2SU54Y3VpTUd4cG5vcnpRZ2hmQko1TVd6b2R3YTVP?=
 =?utf-8?B?S2p6a04rdGd6WjhTRnR0V0VqT09uMmdvS0pQOW1sN3plRFl1cFgzNENFazJz?=
 =?utf-8?B?REZSaXg5cS8wc3hZZEpadmsvNDZXUlBsSXpmVVEvemZlMmZ0YlUybGVwWVZx?=
 =?utf-8?B?MVNFdElrQ2RSV2k1V0ZpU3JWYzd4NjBYamhRQ1RoMHdQRjRuSVIyNXZ5bXZ2?=
 =?utf-8?B?MWpFNzNOdDVjVXFOTTVhUXVoZnY4L0ZGWFNVRXc2TTRtOE5nWWFkeElicURU?=
 =?utf-8?B?dmNaWlRldjhoOERZU3RnSmdjRUJsdTZsQjdwWVd2cjRhVkxJRkN6RE13Q3lQ?=
 =?utf-8?B?SEttSk9IY3JFYTVaL0llSUg2cytOZjJ3dUJRVGNMVE0va3dHUnlEdEZuQ2wz?=
 =?utf-8?B?NjRwb0VSNzNtNWdXaVhLMnZvSnVyUlRtb3l1WFlaK1RDNGhYVU1ST3ZoYjlh?=
 =?utf-8?B?ZGc3bEpZbmVWa0l1WGhhNnNNem1iRlVETFdsZElqdlk5bHNaNXBNc1RlQ2tF?=
 =?utf-8?B?cENZYXNBYURYRmlzamJxZWRzWEJyT1NhV01DYjdkZWJaMW1DbXFlanQ2ck5Z?=
 =?utf-8?B?SmZoUllCZENIZC9JSDdCNUpMblUwUVdUREM3ZUlpaXJ6RXFkSkRiVVlhNHNv?=
 =?utf-8?B?NlZCdkNPZXpWSGpXZCtpajl6UVBNeFVJZFpKSzZUTlNnTk9LMEFkUVdNYk5w?=
 =?utf-8?B?L0Z0TW5qa0hXYjJXZkpLeExmRjlRalltSjBkK0JEK0V3TG5RZHl3MnRqZmdT?=
 =?utf-8?B?ay83emVjUTF2elhRc2JrOENLcFBKcCtyVmtPa0ErcHQ2RnlTeFNBTGsvZ0kr?=
 =?utf-8?B?eEQ5K1JwNG9YSnVDSjdvSUVKemJ3ai9RRlBtbWJpeERSeVhvazJaaWRudkE3?=
 =?utf-8?B?QjViRDF2b0h0WlU2cVVCQmdzNG9HQlpOSWp6U3Bxak93Rm1GMUh6cStZbW9V?=
 =?utf-8?B?VVVody9Uam4xVjBFbjB4enUyOURxMU9FVzBhaVhXQ2hwRzRIZEZSZzNkcTNr?=
 =?utf-8?B?Y1BoZldZbEg0ZThiU0pmWUVJTUxmWCsrY1VBL0xsb2hqdXZsclh1MjUyVjk0?=
 =?utf-8?B?eE9CUUtTdnhoU2tqYy81Y1ppSUNPZSsvTmc1SXVjS1hLYWR3QnBhL1FjTEV5?=
 =?utf-8?B?a0ZLMEdBOHZmVlgvZHFZd25HdUd6R2ljYU5iaXBEMjhCcFNDaE55akJWS1RO?=
 =?utf-8?B?NkN0YVVBMTh3d1pwSUN4cUFvQUxTUCtrWHRKM3lsTTZFbEM3c2w3QXNZREhX?=
 =?utf-8?B?Y2V0U1Rrdk1KTExUQ2ZzTEJUdURObHNyc0k0TEMydzNyZ3FGTkptTFhaczNT?=
 =?utf-8?B?UkF0QklYVUhsRUlWNUxCSndlR2lFbE8yanRBaWUrY3duQlV5TzZqdz09?=
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id:
 db8db188-0ce2-4ac1-cdbb-08da322322ed
X-MS-Exchange-CrossTenant-AuthSource: SN6PR06MB4991.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 May 2022 01:19:32.3381 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName:
 7sBUDYE0Md4YPTfLGGhbObpZGflyDbAyLpKOA0LOHpYqxtdmvwiUY+teWrv98JIV
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR06MB5469
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Arrgh! Speakup seems not to have been compiled into the Ubuntu 
Jammy/22.04 kernel. Same thing as in 21.04 and 21.10. Man! Well, I guess 
I'll have to file a bug report ... again.

-- 
###
John G. Heim, 608-263-4189, jheim@math.wisc.edu

