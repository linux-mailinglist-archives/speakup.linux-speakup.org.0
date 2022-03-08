Return-Path: <speakup+bounces-378-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id ACC944D237D
	for <lists+speakup@lfdr.de>; Tue,  8 Mar 2022 22:42:03 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=hotmail.com header.i=@hotmail.com header.a=rsa-sha256 header.s=selector1 header.b=mxPNJzvK;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 2D068380E0D; Tue,  8 Mar 2022 16:42:03 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 15B8D3809CA
	for <lists+speakup@lfdr.de>; Tue,  8 Mar 2022 16:42:03 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 37866380D4D; Tue,  8 Mar 2022 16:41:56 -0500 (EST)
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (mail-dm6nam11olkn2021.outbound.protection.outlook.com [40.92.19.21])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 59A943809CA
	for <speakup@linux-speakup.org>; Tue,  8 Mar 2022 16:41:55 -0500 (EST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LJ1WhYpcHG5Rx59LmtbH+6u00NUFpMUKxvdQo5AuYn/zxhqMkMl+EPw+g4/kWjiK3izpYcYz+lScPrKHfDRb1gyLU+MTaSuX/HvZtvozCbvjHI4nkjxVmqBN8xUiNqksQT8YuXOTcpQ1SNeSKQD2XUA/sEiVexs89xVZ2kxwvVEBvD5dxa1iM4hkJuiQiQgZkFhxomJb5hHJllz0v8sfnYhVltwUeBI+pgQlicc0OpMfibXysGX6JwuKqXg6fxkK4+5VclSvePdfDSxB2TEV/yARCazmBMkjXKlnLM/dEF8IlgP6NWpxdlwJ/0fWPwqtGZHQZF6l/D1FJlmjvgdDSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IL2buR9G1062IG+v2aR71HqXN3SH2hl2bGBLMuYodMc=;
 b=dqrVY5y0MCzknAx7UcYKwKk9+S4mWxbWLLKIPSOYQ5FzHz7BT8/HDXNkt4IRLVsCAgBLRg1MJgHT32ns6qYfAdONy72abZMyTZx4AwEiWm5DKBCNfHsOaGJiEAcIW9RBnOjOFO3gUz35GbHzbSLj6ukrWh5y058p5FqMEJ6defpLIwTl/DLmD8MqA453J7jAfvOzz8dY++vuv1672Xf6hM/cLuSfmD6bFshk9bbgwhBJ34pie2K4SQ/BnsE/O7tl8sthfrJbdPqOvm98nXTkN2JZTz+h06zv+POr8bSSl/93a3ZMRRvuSDZe0S/caaROKK6+8rxoSEktp4IISiY7uQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IL2buR9G1062IG+v2aR71HqXN3SH2hl2bGBLMuYodMc=;
 b=mxPNJzvKInncLwO64+LQlVjDrrP8UDF1b3bKZQjVmCv1YH+5zNXSZxwGEWf48oA13HwV47/FEnRAI73PkiVCTBXxBN9Wfh2Qc+WlrpDFMd3F/rWxSPEh5nXv8SWWlVQ1Dztzn8Nv3lR6pY8bv5lIaFkpjMOiRo/rMboyyPnrVPSszpoZchaOEsP1JexWSl8LZJxaKcacPFvuGBZ06ZS5qeMhxlqKa/jo4kBQQRb76EUlPhNP8mVqTr7bYw5kbOVLmNWn3NjEB7zI06VVFizjt0yXC0CVFoSRFg+/5Sjro6tZrBEc19jW7fATKS8fpw8toQT+2U+8oOD4GTH88wJkOg==
Received: from DM6PR04MB6268.namprd04.prod.outlook.com (2603:10b6:5:131::11)
 by BY5PR04MB6470.namprd04.prod.outlook.com (2603:10b6:a03:1e9::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5038.14; Tue, 8 Mar
 2022 21:41:52 +0000
Received: from DM6PR04MB6268.namprd04.prod.outlook.com
 ([fe80::c903:c690:b13a:93b1]) by DM6PR04MB6268.namprd04.prod.outlook.com
 ([fe80::c903:c690:b13a:93b1%4]) with mapi id 15.20.5038.027; Tue, 8 Mar 2022
 21:41:52 +0000
Message-ID:
 <DM6PR04MB62685EB3C12FA1ABDED462BFDA099@DM6PR04MB6268.namprd04.prod.outlook.com>
Date: Tue, 8 Mar 2022 18:41:45 -0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.2
Subject: Re: I can't change languaje
Content-Language: es-CL
To: Alexander Epaneshnikov <aarnaarn2@gmail.com>
Cc: speakup@linux-speakup.org
References: <DM6PR04MB6268EB668254EF3EE9FB7127DA089@DM6PR04MB6268.namprd04.prod.outlook.com>
 <20220308104909.33n34sw7ytyaai43@alex-pc>
From: criss <crisspro@hotmail.com>
In-Reply-To: <20220308104909.33n34sw7ytyaai43@alex-pc>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-TMN: [Lf/BLsQdIw3VSpCfOqCZFD8hSwY+rg6n]
X-ClientProxiedBy: SC1P215CA0037.LAMP215.PROD.OUTLOOK.COM (2603:10d6:4:41::23)
 To DM6PR04MB6268.namprd04.prod.outlook.com (2603:10b6:5:131::11)
X-Microsoft-Original-Message-ID:
 <03374f31-5cf9-aa30-e15b-331e6fac22dc@hotmail.com>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 6ea56228-23d9-43a0-6de5-08da014c7511
X-MS-TrafficTypeDiagnostic: BY5PR04MB6470:EE_
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
	bqjYi84TMQ8wCbtn9YbYoEiqrD+qQ3msWOM0veP30v0Bjq3OkSLfzcLDat90rBZT4RjOiwThB2VdtGmLHCN1QfSjcfXYLX2RGKyoEkkwu60s/6w8+RDRdx7s2ecsRJDBlO9iDsGaPlSLN9FukfcbqSRS6MyR795/qwSGtO7EM298jdmn2FGKQ+U2JLoBMMhjiRzS/2IVqQ/TP2ZaWCVd6A7OJbb/cYN7Hb20P6tNxHFHBTxlCC8oZWtnc+SFhzPS2OHVkrpt7iBSbjX93YtWzf/6jNnNL8s1QwJkACHpZcHjg9SB3F9CtpZXDN+oHu70aysX5PzPHsCqT/8tID0J3GnteAQCUFey8D/NqNfGzkH/8JD57U29BHnNLgmVvfXp+Rpeu9DnLIPIx+nNjRUCboT4ywvcoeIoScNfR92DVtfm13fYOwFcsXQd5Hg2xQx7QBOiEuMobOe8yOHJmkZxPofr0+7/VZvi1vM1HVQmrn0665YfKTEtT/lcd3/G3ffTtmnc15dU1BeVOhshiYweytW2E88f4TthKAS2570vv/LrQj1zgnMr1TmzZbTvR/D9rPIxSBbCIYsgblkBjN9oFPMtFRDdqbsMtUNHNeMamiOnTdVzsmnGP5MCcLxO7TiT
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?dmhwZE9jajJJYzZNS21hcDlSS2NzVEVmK08zTlpEK1ZuZTIyNFJRdmlHUkQw?=
 =?utf-8?B?WGFNQ3dqS0RBS1hBUlU2MkRBeDVvdS93OTlETHlvRUh1NkU1c1dGaUFRb0tT?=
 =?utf-8?B?WFZKRExsS3Z3S2c2a1BndzUvTUpQMmFHaEpvNzNhQ3d0ZWJvdDRqVS9lbU1O?=
 =?utf-8?B?WlpiOFo3M3AySk0rdjYxUWRCeDIzYkl0cWhOcGJMSUZmUTdiWVJNbkNVVmVl?=
 =?utf-8?B?WUhET2wwNk5MeE9hTEE1am9TN09yZER0bzRqZU90YU9OSndJcjh6bUF4NFFa?=
 =?utf-8?B?WnQwUWhqY0VRMHdZclRxNVJIZEZYaDFyTzVFQkJKVjVrQmJRL09wMXFoak5z?=
 =?utf-8?B?R0dPTklHb1ZZZ0RDN2RkSWZMMFZnTlpsOVJsOFVKY3c3R1V4TXBQWktOR3h3?=
 =?utf-8?B?YXExWDNhMUFhQ0NFOGhmS256b3BEYko3QkVkVFN4SHIrUU12MmcrNk1IUUR1?=
 =?utf-8?B?RGJnQ3YzQXZOUTZiQitXZHI5azhDRlV0VnVCOGdvTElvS0lLaTBudEhRUzVH?=
 =?utf-8?B?b3lYVG9QWjZlTnhHM3NxZDBzOXAwc3NxSGNPeXRFcVljeDUreGZUdjRuRWxp?=
 =?utf-8?B?MFVFRVIwbWptU3NIbU9tT09kcmFTSVZxU1o2dy9yYkNMODFkOFlwZXJ5R2s1?=
 =?utf-8?B?ODJFQ0EwSDJlTllhR0JmMnVJalhjYVdNRW1uMy93ZzlXLzhGMExXRDMwOFJB?=
 =?utf-8?B?NTQ3Ryt1dWM5TUwwYUNsS3FHdXZzcXl2S0lUcjBQZUEza0M4VUhvYXpOUlpQ?=
 =?utf-8?B?ZXN6RFV0M3FsejR0VitqMEh1MTNLZEdnWGhBazZhdVcwM2UwYjlPZ24wdUw4?=
 =?utf-8?B?dDRmQi9vOEwzTmtWTHNnN1QraHRkN3ZEaUpiN1VYUWx0WU9WUDBiSW9FbW5X?=
 =?utf-8?B?ZU1MTkdjWXgxMjhQbmtyajROMW9GRjVpNnRZaDJkYWpiRGNWRlFoRVVmVFhC?=
 =?utf-8?B?R1VwYVp0RFJvN0M3RHFRZEh1LzFnY3BTTUhuWlU2TmtodkkzUndpWi9TYUY2?=
 =?utf-8?B?d3pkR1lZNHIxTHhZcGoyUFZUMFJLVjFkRzhWL1RqSGlOTnJxS2drZlNIWGZx?=
 =?utf-8?B?NCtKMlBvRzFUOURGNWQzLzR4d1I1Rk5sV1FQUUhONHkzWktiaFhQVDVYWUVt?=
 =?utf-8?B?ellHNHdpMm1rbnZHUndLMm0rbWNORFI3VklCWG1HNGw3Skh4Z3RUNGF6MEtM?=
 =?utf-8?B?dktCaDNqQkRJZTdGTk1wU2pRVC95Y2xJczlKa0VpcVkzUUNONDh0cjI5Ymtq?=
 =?utf-8?B?MXp3RXFoeDVxU0lDSlB5Nmp1M0FQRG10eXdGSGY5UnVPSlpsUT09?=
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-edb50.templateTenant
X-MS-Exchange-CrossTenant-Network-Message-Id: 6ea56228-23d9-43a0-6de5-08da014c7511
X-MS-Exchange-CrossTenant-AuthSource: DM6PR04MB6268.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Mar 2022 21:41:52.5189
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg:
	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR04MB6470
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Thank you for your help, it is working.


Regards.

El 08-03-2022 a las 7:49, Alexander Epaneshnikov escribió:
> On Mon, Mar 07, 2022 at 08:50:38PM -0300, criss wrote:
>> Hello every body.
>>
>> I am installing archlinux, so when run espeakup I want to change the
>> language, I use this:
>>
>> espeakup --default-voice=es
>>
>> But I don't get result because espeakup continue in english. how can i
>> solved?
> hello. have you read arch install with accessibility wiki? [1]
>
> you need to edit systemd unit of espeakup and restart the service. [2]
>
>> Thank you.
> [1] https://wiki.archlinux.org/title/Install_Arch_Linux_with_accessibility_options
> [2] https://wiki.archlinux.org/title/Install_Arch_Linux_with_accessibility_options#Change_speech_language
>

