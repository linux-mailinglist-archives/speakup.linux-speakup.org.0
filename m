Return-Path: <speakup+bounces-1427-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id A8D87BA667B
	for <lists+speakup@lfdr.de>; Sun, 28 Sep 2025 04:45:32 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=math.wisc.edu header.i=@math.wisc.edu header.a=rsa-sha256 header.s=selector1 header.b=Nh+GqnPM;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 2EBCC382C44; Sat, 27 Sep 2025 22:45:32 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 085DE382BD3
	for <lists+speakup@lfdr.de>; Sat, 27 Sep 2025 22:45:32 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id AFDAF382BBB; Sat, 27 Sep 2025 22:45:24 -0400 (EDT)
Received: from mx0a-007b0c01.pphosted.com (mx0a-007b0c01.pphosted.com [205.220.165.71])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 355CA382BB1
	for <speakup@linux-speakup.org>; Sat, 27 Sep 2025 22:45:23 -0400 (EDT)
Received: from pps.filterd (m0316036.ppops.net [127.0.0.1])
	by mx0a-007b0c01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58S2bbMQ015778;
	Sat, 27 Sep 2025 21:45:21 -0500
Received: from bn1pr04cu002.outbound.protection.outlook.com (mail-eastus2azon11010012.outbound.protection.outlook.com [52.101.56.12])
	by mx0a-007b0c01.pphosted.com (PPS) with ESMTPS id 49dayxxqaf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sat, 27 Sep 2025 21:45:21 -0500 (CDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=x9VWTqlh+aoaNC/M03GhdLKflXWIqZDt4mzGqwsEVWilFPRaoSfXTti2pRUyk0m9H9WOPKPNSLdZb1elvhWxlcVX5ZVwlDUYAx66AXjNTj6LzL5NweM8XaQ/kMN5LOe7Aadj29VwCmbNuf0cMAXx86ab85MoNKssLSFe1I1A08as+IhUUf8iihoe2LnpGMUSrxipPiKxyuXjEzqSIr0Xe9i3Ryn/QLX6gKpIJhBI6CSR2uwHRUPxVZDKwDNTicqwFhKmYGPJcYEvNHPr1Rky3YzlQ2TKrc7qcEP2NtWmnzJJ67699eoktgTb4YO+tNruGqgjxyXkqATwVJfloKs5mg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CCwnF2LakiTKqt/pdHAfOfIdly0zhmemkyemRWDOee4=;
 b=dZ7Bi8x/ywekHzcTL1ji9mJ7POL6pb7VtV4T7bhGU9UvyevPzCm6FIcoBZGO8Wb2JMtwziGDCJL2haO19r51XRzno674AIjnol4naprYZnbr4sYOxagPb9WDR0HY3PrnvdX+0KSzjTUNpM36/BlG/PH//rZnIvcOuagiHA/x3JhgzZQie89J39ayslTI3EWy7RAhhENDBFN7LViAwmm4kJkxhZx4JYnWtTRx8ZPXK29n8Ec6Y9s3Uq6wlpB+EYGsF73LcqwTGAfCfySMZCewvF9jGr/uLjm3U/EjVzYz2rlPjr40UqWOpAnxTcaJzqBXq7BhNhYDr6Wm+eFn3vXa5g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none
 header.from=math.wisc.edu; dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=math.wisc.edu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CCwnF2LakiTKqt/pdHAfOfIdly0zhmemkyemRWDOee4=;
 b=Nh+GqnPMWZUpO3ol3pPGbddJxvXgawh08p76ktF3pnrUX181Zmq4WrIqSCVr96h4PSr7mpqNia2xYXVvAfKXyfC4OdSprZYFY5hfcSohWKNCfkSjpozQFK+PX5XbkPjTvZhX/oED8j6gO5A0lw8c0yJ1AfXtWglfxTbEokjnHSca0zZTL5xmi8f8Jszn4y4RRIrJuABwDsC9snjY+TUnJJUojp/liSBJOuG3lnIqQHxNyAAIbC2EOwyNk/+uAvP7GHh61Z4tAa11ku22KNiHeiVvJPfu6ZdW6rDFd4pwKAtXKapdUEDlEVA25RBoouSPXiVr7AJ+9SYvjsH9qqh4xA==
Received: from DS0PR06MB9877.namprd06.prod.outlook.com (2603:10b6:8:1d5::14)
 by DM6PR06MB6585.namprd06.prod.outlook.com (2603:10b6:5:25c::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9160.11; Sun, 28 Sep
 2025 02:45:19 +0000
Received: from DS0PR06MB9877.namprd06.prod.outlook.com
 ([fe80::a347:6162:9bfd:9b91]) by DS0PR06MB9877.namprd06.prod.outlook.com
 ([fe80::a347:6162:9bfd:9b91%4]) with mapi id 15.20.9137.016; Sun, 28 Sep 2025
 02:45:19 +0000
Message-ID: <616a9d54-d7ca-46cb-b918-dae2e0b02286@math.wisc.edu>
Date: Sat, 27 Sep 2025 21:45:17 -0500
User-Agent: Mozilla Thunderbird
Subject: Re: Question about blind CLI use (was Re: "your browser is not
 supported anymore" ...)
To: Karen Lewellen <klewellen@shellworld.net>,
        "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <Pine.LNX.4.64.2509272211090.4175860@users.shellworld.net>
Content-Language: en-US
From: "John G. Heim" <jheim@math.wisc.edu>
In-Reply-To: <Pine.LNX.4.64.2509272211090.4175860@users.shellworld.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: CH5PR04CA0006.namprd04.prod.outlook.com
 (2603:10b6:610:1f4::11) To DS0PR06MB9877.namprd06.prod.outlook.com
 (2603:10b6:8:1d5::14)
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR06MB9877:EE_|DM6PR06MB6585:EE_
X-MS-Office365-Filtering-Correlation-Id: fa62c01e-34ad-4ec9-45e4-08ddfe390f95
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|41320700013|376014|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?R2IrUUtwRVpPOHFPYVI5ajBmUDdIZXUwTFVQNTZBOXZId3JWVFF5bjlaTjU3?=
 =?utf-8?B?T1M0dldxV1RwTGk3SGVSVTRlZ2JXYmhwN2ZheDZpL3JMem1yVDFIOU02UzE0?=
 =?utf-8?B?OW9Ra09oQjlaU01xQjROVFBjNGtRWnJxWmZFMGdOMGNWd1lDNTZqaGZTV0M3?=
 =?utf-8?B?cmhCVFAxM2xLTnNzNzdUUmwzaGhIMjljZWhmTndnRkZpc3lhMFNuMW1CUTZL?=
 =?utf-8?B?Z2IyQXk5RzhKdXdndlltcCsranF6YUxWWWpoRXNldmd4STQyV2JmOXNXNEFU?=
 =?utf-8?B?NnVyb2N3RVExVmdjQlhNVkhWRnQxNTNHeWtCNVJENU1jb0FSN1lHaUJLeUJy?=
 =?utf-8?B?WEN4MGtXckhxMDFOQ1l5eVZTYk05aWRCMmdXYTdhSU1ZM3lBNjNwKzlJZ0V5?=
 =?utf-8?B?NmFXV3RuaHJSNjJNTU1tVFlNb2U5TWFLdDBMYWJYcjFSWWZKZCtuTXp4RHhw?=
 =?utf-8?B?eWV2ZUVML1hDUHIveXk0am1uMlZNVW0vdmIwNGtXdG9JTSs4NDZoczRIV1A3?=
 =?utf-8?B?b2FJY3h4MFJnQ3FwbjYzY1N1YTlJblNKQjlaQllLMFJvZmJuZGxnKzJrd1Vh?=
 =?utf-8?B?cWFadm9wWnJReDZXOHlzZ0xmemlVUEZ2THA3SEM5U2dNU0xNUC80aFdaWVpS?=
 =?utf-8?B?UjEyY2ROZW96VmVwTk1YeTVMMWtFTTV6R2dWYnBremwyOUQrT2JtZHJnR0xF?=
 =?utf-8?B?M3VEbUNrc3R2Sjgyb25tWGl6Wm9Bb0hyd0RZYWtUdWt0M0N1REVQMktmQURX?=
 =?utf-8?B?WkJUOVBNM2lsdDNYbzhaL2xmRE5SRXB3Qlh6SnNWUVlMdzNPMUdra2QreW1n?=
 =?utf-8?B?THpVR0VrRlIrUkVMRG1RMnlKNjBLMXhnUU5mdHkwL2k5a1ZWTWM5alFmVU5l?=
 =?utf-8?B?bExJWm42SjFKSzhMRSt3OG4zZ1crODJZUkh1WGdzSjNvcklyQnM1QXM0VEdq?=
 =?utf-8?B?Tm92d3dIYlhiSFdNTlpaQkxXMkpNOUZIdnY3WnhTalZXSWJWM2Ezc1REbFgx?=
 =?utf-8?B?Y2cwOXZnYVZreU9PUHYyckVnRE9JakFQMGo3bTNuMnVHcER3WHExVENBUHFh?=
 =?utf-8?B?UFZUMlJxd2ViMFRYdHFuRVBQWHQ3dk8xcGdFR3NKN3NraWF0cm5TZHNuakds?=
 =?utf-8?B?YTFraE95OWswWVNaMGQwNzBwMms4RFAwZ2hPK2hBTFZxZ1ZSbmJaUVFsenpu?=
 =?utf-8?B?TEx0OVRrRk1CTFRYekVlSUd2Q0oybXZHSWFhcG9Id2RyZjR6TEFTbWxCd2ph?=
 =?utf-8?B?Z24zWW54MUJOWjlUd0NCZzQ0SGRpbG8wYzc0bEVXN2JjZk5heit2NEFHUzVx?=
 =?utf-8?B?WXVpcHl1UGcwQ0JYUG5kSUQxQnNXQzA0eTBnV3A1S21yalFMQXJCSWtQaEpM?=
 =?utf-8?B?UFhpSHlHaUF5SDNEdHVjS1hJRVRFUngrTzJ6eE9oTGMxTG1XMktyR3dWMit3?=
 =?utf-8?B?TjA1QVczcExEbFF4VUo5eGxaY2Y1Z2RURlBJU1U3MnFvRDBGUGN0eGVObW5h?=
 =?utf-8?B?blNEa2xTdlFsb004YWV6a1pZL0VsMXdlZXp3MmkxMjdZelBpVnZ0UmlZZ0I5?=
 =?utf-8?B?S3NWV1RNVWRCdUplcTJBcEZaU2Q1OTRrM21NeDdpcldTWndZZ040S0NKU2hI?=
 =?utf-8?B?T1Z5TUV6L2NwUlJmbHBodGxZcVNob3JFY3kwc096M1VacW9xVzlLRkxEZ0Jo?=
 =?utf-8?B?STQ1THorYy9VOTZ2U0hSZWUyZ1k0N2dxdHFuazZ1MGdOdERvQTU0enBQRXMy?=
 =?utf-8?B?Uk85ZlhkaWVaWGx5SmRadFVsZFNoMTRDa3VhWWszcTFKN3ZxSENjQ0pKd3U5?=
 =?utf-8?B?Y09mM0J0NEcydXpwbm1QSEFpRC84bkcxYWZ2cHNpNjZWdGFROHRmNzRjMWRq?=
 =?utf-8?B?NzFLeHRaWkhXeEl5cjVnUndrRVRyRWRVNVluT1UybFBUT2dYdzVlNW1SblZT?=
 =?utf-8?Q?ja6LBBX1uGaayolWKv8DNk0c1TTxyI6T?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS0PR06MB9877.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(41320700013)(376014)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?SE5LUlpKTmk1bkh6czJCc1M5SXRQaExsN2N0bmtpemZvZUhSYUdYYVRJdHNq?=
 =?utf-8?B?VFdHQjhGbk9aSklKeEFxZFVlYzhLYmM5bG1vaXNVVzRLNWF5VUVpY21ONGNP?=
 =?utf-8?B?WmR5eEJaejZlekRxSkRncGl0d1RzSzYza09uZS81ME4zQkVLczlqRks5T213?=
 =?utf-8?B?b1N4QXJmNVdjUjIvM1RLMUs4QTdrTm1FdnhIZ0cyT0dCaDY3M00yYXNwYXlC?=
 =?utf-8?B?SzNBcXkrNUlVSHQxcWtWaHh1Vjk4YlBPMUxzdHVRVmM3SmtMYncyMHo4Ti9a?=
 =?utf-8?B?bzEycXZqMFE0K0pkaFU3TncwUnpGMlhmM3dkSUt3a0Z3TGMzRGVyNjh6eUR0?=
 =?utf-8?B?Qit5UEVzc0JFK21FbXNOZGFlVXVUSUxadUhISU50VmdseEYyR1l1d2plejJC?=
 =?utf-8?B?ajNsNk1xTlNQZHp5a3NDaUpEbnJvdWR1Z215UktvU2ZFdStWZXdiSjVrcG4w?=
 =?utf-8?B?S2ZHWjBTcUZUZVF6eGJncGNoQ0lGQUlnZEk0aFFzUTZxVFdGWmNCa2VkbHJZ?=
 =?utf-8?B?WEJBUVFDckM3M1llNEYrUjVNOUR4RC9Oa0JuUTRmQjRoUkFBUGlFYlY4T0FJ?=
 =?utf-8?B?eFJoMnlKZkl5UmN6cks0RzdYQjZpT0RPUUVjQkMrUXJSZmJjY3ZmTklZTXFN?=
 =?utf-8?B?UGZnVUpyL1B5MHhENHNqZTZncWJua0trK3p3akxPRjdBTHRiU3ZSR1M5dzlr?=
 =?utf-8?B?WEhBanZsWFI2TFBGZnFVeWRhRDU5TjhjR21TUksyS0ljZW9FMXF4dG4wKytm?=
 =?utf-8?B?NnVEUXNoWkc5bmc4WE5SK3ZheGRPSThjN2pjR0Q0Y2hGNkJzZGRZRXZhTTJo?=
 =?utf-8?B?L29PRE1ncUkrbFJ1MWgxQlVUQWhJSzRMYWt4UndzTGYyUm1iWFd5UGM2bEtj?=
 =?utf-8?B?ZVVWUHVxbE5LN0Q1ZVdja2VtWTI3dEFwV2VCV0RVVUJ2R0I3ZzlySitUOTlL?=
 =?utf-8?B?WDRmdzR0UTRNenUvT0pjV3RuWExEUUlIeEpadWJBanFpU2FjWFpDR3V2MVBM?=
 =?utf-8?B?V3NhN3pTU2JmQW51N1lFUm5zR1pIak5UeFphMklNZGZTR3Y0TXFvK1kycERa?=
 =?utf-8?B?NDNSRGVOV1lQcENGQng3dTNIUUpSU2xRcE5MSnIvL2tmK1dBMUpHbDNTUlpl?=
 =?utf-8?B?U0hSRGhHMk1iZVdTWU11ZmRaK05LSTQ5K2QrQUNBeXVxd0xmMW44cHAxVGpY?=
 =?utf-8?B?eUV1cmxuZHI3ZVNKUk1pb3Y5L3NxK1JEN2JWUG5lUUNaNm5hL1prSSs1dHRD?=
 =?utf-8?B?aDZkWWo0QnZ5OG1GWFpYWi9Kd0M5K3EvcHpQTlRyMnNBQXZlOHpOT2ttZjRJ?=
 =?utf-8?B?MTFJUjkyVFIxYmNxWG84Qy9sT2VmcFArQXJqRlRhTDR6SHBkTkIzYlVVYWNG?=
 =?utf-8?B?NmtidUN2akM3bUZHL0lNZnpwWmE5OUJmaTFqWDJHMmlYVk82RDBNV1VoUFBQ?=
 =?utf-8?B?dzE3UU8zWnhHS3VrcSt5b3ZrNy9JQmNKQm5VMERqeHJ2bU0ydC80OEk5UnNy?=
 =?utf-8?B?dHR3cDdOdUZqZkpNRzJGTnhkeVVyczVRY3hqdG4wSGMvb2Q0MHdrbjJxQjcx?=
 =?utf-8?B?em9XeFZCWkxHZXJVRHByeWI2YlJESWduVW9YazMzQnBHSE9adjU4TEpDNVZw?=
 =?utf-8?B?d0VVYVFhL2VRN0xzNVUrMnpYRU16K1RXcW1sZVJBRzkrM0RmR3pDMDJlSXZ5?=
 =?utf-8?B?eXN3UFBlUCtXU3hPNEFXM3FwTG9WM0h1TzlKc05BSmVrQzE5OGRFdDBURGQz?=
 =?utf-8?B?c0RlMWFHQ3NNSlA0dXNEZlMyNUtwWTlZb0JtNUhSQlJFNWthY1oyR2srY3or?=
 =?utf-8?B?aVFsMVRkZTA2WkEzSk40VWhUNklpZ0M2bXVsSC93NEc5c1JZMEZMekJTNU95?=
 =?utf-8?B?bm5uRmQ5SHJ1bzVKT3JtbS9SSGNRL0tvRE1FbUtnUk9yck9zY0hYTDZLajla?=
 =?utf-8?B?VDloSkJqbXA5RExSRXNjSXVOVjRLM1FITk1FOCticmg3YWFvaFJWUDNZNUQz?=
 =?utf-8?B?SmNHMk9QUTJxMm5CWmJhVS9VRGlNK05nRG5NUHU3Y1ZTT1Y3eWs3d1l3ZGNu?=
 =?utf-8?B?OFJWLzRQS3JjM29sekZ6YnVsTlBuWHZMMStsZlhUYUErU1JFSmJvREQ0U1Fy?=
 =?utf-8?Q?n3mDOUcVfl7YbV23DgJRwL9S+?=
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: fa62c01e-34ad-4ec9-45e4-08ddfe390f95
X-MS-Exchange-CrossTenant-AuthSource: DS0PR06MB9877.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Sep 2025 02:45:18.6193
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ImlQQ/Lnw9ZVkCcDUJHjp9G1Ser60VKTBmcA9Sk3+hLe6yvMv3Y6FkUDK/IMDzrB
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR06MB6585
X-Proofpoint-GUID: XOB0mUdW3MFAkxQnRbnMptLq0OMr4cxH
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI1MDE3MSBTYWx0ZWRfX5asnmfi7Lgw8
 ThSRUk010ZlWNin+2c40ujmNxlzcEvl+MGy/hzgs+csrBNRU+Z2HnNtjbGf4UMzYPyHWrkWif3v
 wr3QMeVDd4+Vi6L+ijlNyvgzhXjy0kiA0SwoZl7XVTAoTHrwwY1k3P0sPxiPRRllAC6syQvH67B
 HafbWcEKUGQ2pPHuOsDwCSbK3Ly/4pj7CZGhOdnFMO+WZ5g9uqo0xWLwgsiCrOEn4hyDDQ6zQ3L
 6ogZgxtlMMJpG3yk6eSSYGYGLntzfT0akxPWyl0J9F6uev12qMrbLjElXFds3YBxzPMzama+o8P
 JUDOhEVC13N6FesoSOh2Y4canQkshadd35TRBwFPxIhEA7cSo4XKio95FGfOhOYkPNCu5hsA5Zw
 KAm5nfosN+uRafqzmX5LcqTnJKh9iA==
X-Authority-Analysis: v=2.4 cv=LeUxKzfi c=1 sm=1 tr=0 ts=68d8a141 cx=c_pps
 a=CjRpyDoPu1ZhyeacGh9KdQ==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19
 a=R3fr6vWxGIgF0CYV:21 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10
 a=lre9DRYkaIEA:10 a=9_GH9xibAAAA:8 a=r7OcDTQ8naxfg7rQiYEA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=dO7qa_Xy17WzffDKgyPM:22
X-Proofpoint-ORIG-GUID: XOB0mUdW3MFAkxQnRbnMptLq0OMr4cxH
X-Wisc_ValidFrom: true
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-28_01,2025-09-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 lowpriorityscore=0 phishscore=0 suspectscore=0 impostorscore=0
 spamscore=0 bulkscore=0 adultscore=0 priorityscore=1501 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509250171
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Again,  "you claim it is uniform for everyone"

No, I am not claiming that. If you really want us to agree to disagree, 
you have to stop accusing me of that. You keep accusing me of that and 
it's bizarre and untrue.

Again, lists like the Speakup list exist for the purpose of people like 
me expressing what I think is the best way to do something. That is the 
purpose of technical support lists.  You can do whatever you want. I 
don't care.

My comments on OutSpoken are a good example. OutSpoken hasn't been 
supported for almost 20 years. It won't run on any Mac that has been 
upgraded for 20 years. For most people, that is not a reasonable 
solution. I have no opinion on your continued use of OutSpoken.

And if you don't want me to email you, don't email me. Press the delete 
key instead of replying to this message. The debate will die there.






I am not doing that.


Making technical statements is not


Again, you keep accusing me of something I am not doing. I am not



On 9/27/25 9:24 PM, Karen Lewellen wrote:
> 1. I commented on my personal experience
>
> only..not projecting it in a way that applied to "blind people" 
> generally as you do..
> I would never project how I do things on to others, each person's 
> experiences  and needs are unique..something you do not choose to accept.
>
> 2. you said, some people ride to la  on horseback, while others prefer 
> to fly, which is far more of a challenge to my mind speaking personally.
>
>  This is not about challenge. I do not care how you *personally* 
> accommodate.
> it is when you claim it is uniform for everyone  representing yourself 
> as an example speaking for everyone that I differ.
> Unless you want your comments on list, stop writing me 
> privately...goodness knows that would, speaking personally, be seen as 
> harassment.
> And, once something hits my private inbox from someone I clearly 
> disagree with?
>  I will do what I want with that communication.
>
>
>
>
> ---------- Forwarded message ----------
> Date: Sat, 27 Sep 2025 20:18:21 -0500
> From: John G. Heim <jheim@math.wisc.edu>
> To: Karen Lewellen <klewellen@shellworld.net>
> Subject: Re: Question about blind CLI use (was Re:
>     "your browser is not supported anymore" ...)
>
> Karen, you challenged me. You accused me. Not the other way around. 
> You just keep accusing me of "projecting your single life experience 
> onto everyone"
>
> No, I am not doing that. I am giving the best technical advice I can.
>
> We are not going to stop butting heads until you stop making that 
> totally unfair and bizarre accusation.
>
> So a Are you going to stop accusing me of "projecting your single life 
> experience onto everyone'
>
> Because I'm not doing that.
>
>
>
>
>
> On 9/27/25 7:51 PM, Karen Lewellen wrote:
>>  John.
>>  That you still feel the need to spend list time seeking to be right  
>> about
>>  another person's life experience says more about our sense of self 
>> then it
>>  does about  anything else.
>>  We are absolutely never going to agree where your dictionary is 
>> concerned.
>>  the difference between us, or one of many is this.
>>  In my world a person could have made a comment like mine, and not be
>>  challenged upon it, because in my world the 2.2 billion people 
>> experiencing
>>  sight loss can chose to accommodate as they wish.
>>  In your world the sentence "most blind people," actually has to 
>> exist for
>>  your personal choices to exist.
>>  Given this bridge is never meeting, why not let the list move forward
>>  without attempting to  be right here?
>>
>>
>>
>>  On Sat, 27 Sep 2025, John G. Heim wrote:
>>
>> >  Karen, the developer of OutSpoken made it obsolete when they 
>> halted >  development on it almost 20 years ago. The common usage for 
>> the term >  "obsolete" does not mean no one is still using it. I can 
>> show you about >  eleventy gazillion references to support my use of 
>> the term "obsolete" in > that context.   I suggest you google it.
>> > >  But that isn't even the point. The point is that it is perfectly 
>> >  reasonable for me to say that OutSpoken is obsolete. The Speakup 
>> list is >  for saying things like this technology or that technology 
>> are obsolete. >  That's why technical support lists exist. And for 
>> you to take that as >  some kind of personal judgement is bizarre.
>> > >  Please try to understand what I am saying? I merely said a 
>> software >  package that hasn't been supported by the developer for 
>> almost 20 years is >  obsolete. There cannot possibly be anything 
>> wrong with that. It is a >  perfectly reasonable thing to say on a 
>> technical support list. And for you >  to take offense at it is 
>> ridiculous.
>> > >  People giving technical advice have to be able to say things 
>> like "This >  technology is obsolete."  You can't give decent 
>> technical advice without >  saying things like that. But it is not a 
>> commentary on anyone who still >  uses that technology.
>> > >  So now I've said the same thing 3 times in one message. Can you 
>> >  understand?
>> > >  I cannot be intimidated by the likes of you. But I resent your 
>> totally >  unfair and absurd accusations. You owe me an apology 
>> whether you care to >  admit it or not.
>> > > > >  On 9/27/25 6:35 PM, Karen Lewellen wrote:
>> > >   John,
>> > >   obsolete for whom?
>> > >   it. is. not. about. you. either!
>> > >   You in no way shape or form can provide anything but your own 
>> opinion
>> > >   here.
>> > >   everyone on this list is equally able to share what they 
>> use..it might
>> > >   match your experience, and it may not.
>> > >   Nothing is obsolete if it continues serving a role for the one 
>> using > >  it.
>> > >   And, for me, especially given I cannot physically use other 
>> things?
>> > >   it is not obsolete as my work illustrates.
>> > >   That you felt the need to add your p. s. means you are making > 
>> >  everything
>> > >   about you.
>> > >   showing the truth of my point, that for you, you cannot stand 
>> the idea > >  of
>> > >   not being right, projecting your single life experience onto 
>> everyone > >  as
>> > >   if everyone sharing the blindness lifestyle are one and the 
>> same..to > >  you.
>> > >   Such is simply neither true, or humanly possible.
>> > > > > > > > >   On Sat, 27 Sep 2025, John G. Heim wrote:
>> > > > > >   Exactly! See this is your problem. When I say OutSpoken 
>> is > >  obsolete, >  that has *NOTHING* to do with you. I don't give 
>> a flying > >  fig what >  software you use. I doubt anybody on the 
>> list cares what > >  software you >  use. This is *NOT* about you!!!
>> > > > >   PS: OutSpoken absolutely is obsolete. When someone says a > 
>> >  technology is >  obsolete, that doesn't mean it is totally 
>> impossible > >  to still use it. I >  can give you about eleventy 
>> gazillion examples of > >  that use of the term.
>> > > > >   1.
>> > > > >     *Encyclopedia Britannica (Technology)*
>> > > > >      "Floppy disks have become /obsolete/ with the advent of 
>> > > flash >   drives
>> > > >      and cloud storage."
>> > > > >   2.
>> > > > >     *Oxford English Dictionary (definition example)*
>> > > > >      "/Obsolete/ technology such as VHS tapes and cassette > 
>> >  players is
>> > > >      rarely used today."
>> > > > >   3.
>> > > > >     *PCMag Tech Encyclopedia*
>> > > > >      "Cathode ray tube monitors are /obsolete/; they have 
>> been > >  replaced
>> > > >      by flat-panel displays."
>> > > > >   4.
>> > > > >     *Cambridge Dictionary example*
>> > > > >     "Gas lamps became /obsolete/ when electric lighting was > 
>> >  invented."
>> > > > >   5.
>> > > > >     *TechRadar (Consumer Tech)*
>> > > > >      "DVD players are rapidly becoming /obsolete/ in the era 
>> of > > >   streaming
>> > > >      media."
>> > > > >   👉 W
>> > > > > >

