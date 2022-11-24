Return-Path: <speakup+bounces-868-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id B7952637CE0
	for <lists+speakup@lfdr.de>; Thu, 24 Nov 2022 16:23:34 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=math.wisc.edu header.i=@math.wisc.edu header.a=rsa-sha256 header.s=selector1 header.b=UqUCqUZf;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 0C9A6382A3C; Thu, 24 Nov 2022 10:23:33 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id DDD2D3829EF
	for <lists+speakup@lfdr.de>; Thu, 24 Nov 2022 10:23:32 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 14C0B3829F1; Thu, 24 Nov 2022 10:23:23 -0500 (EST)
Received: from wmauth3.doit.wisc.edu (wmauth3.doit.wisc.edu [144.92.197.226])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 8DB5D380A80
	for <speakup@linux-speakup.org>; Thu, 24 Nov 2022 10:23:22 -0500 (EST)
Received: from NAM04-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam04lp2169.outbound.protection.outlook.com [104.47.73.169])
 by smtpauth3.wiscmail.wisc.edu
 (Oracle Communications Messaging Server 8.1.0.16.20220118 64bit (built Jan 18
 2022)) with ESMTPS id <0RLU00KA3YQWLF00@smtpauth3.wiscmail.wisc.edu> for
 speakup@linux-speakup.org; Thu, 24 Nov 2022 09:23:21 -0600 (CST)
X-Spam-Report: AuthenticatedSender=yes, SenderIP=[104.47.73.169]
X-Wisc-Env-From-B64: amhlaW1AbWF0aC53aXNjLmVkdQ==
X-Spam-PmxInfo: Server=avs-3, Version=6.4.9.2830568,
 Antispam-Engine: 2.7.2.2107409, Antispam-Data: 2022.11.24.151217,
 AntiVirus-Engine: 5.95.0, AntiVirus-Data: 2022.11.24.5950001,
 SenderIP=[104.47.73.169]
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NCxZlkE4lLsA2H4Q6T1dr+12LsZnyz7h3cYgq4OTgrUSSjZymtGdM00NHkNIMsiqBjJYX4UvluYa32Ej/kCMFheLXC6IqRwNthfr8NOgEeVV6skYfYHJI6RoHruXPmf2UEOWf+ZRH+HrQerwz/rXJoHi0l9ZyQzmsx3M954H+OAJxn18le8lyfRWzFM7k7iLDm68YTxrW153qnuf3XxMW4Wx79ZWhvwp2Jt6cqZ+WzipDYKWBqn1LAo3abij6f+XBvGZF7hACE2oE9AnGhNwOmtE/AAYbbatlVHO+ygWzcSeQXHYOALtFds51L8lfc1R6bQ0h5z6NIrc6olrw/7TVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ntK3r4rWr1fwXkpHLbkIL0sO2qNmogM70aV90DJruII=;
 b=dENYvvth+ZU4z0voFgwKrDFOqxXBJxf7BsS/VH3OKRdLmKJiBkzM4Xvc64tjMAyqg5/copKVM4hLtxyg3P0ldln+grN/G2IF6viegpbd5x8dovS+UjLN3gudzQ1hCNejWGr6XrdqvF4X4sZWXMJ5DHa2hDw9uWxl0I/b9bUopfilz+8oK6FO1NfUmffefNnXo0H9mws1Aja3hhMHy5SeYPpI5NA58TXMcHL/v1+oU8FPteK3aNQUxtWGmC7ifyYHtdfKkGWLSz7hyhh+CD73Ck/rCSrBASy4PoXOaldeF41AfitR4MFK5XJ2O6XUBQvkqMz+VeMPYDNAjp+zyJl1Rg==
ARC-Authentication-results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none header.from=math.wisc.edu;
 dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=math.wisc.edu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ntK3r4rWr1fwXkpHLbkIL0sO2qNmogM70aV90DJruII=;
 b=UqUCqUZf7KDsG1UFU7EWDbVYZkXCNNDNbQ6qDcb4fAVuVyqrvFE2yMSYZYgm7p7fcyoU+pjmk/5os3NFQRGX/QTBZ9G8dHOaLXom1K30Wyk/aDD73UmRDbtSy3oL/RTZwB+jZfh+uEfTJrThc7CtOFWglv3BrEIKHA5PTCp2f2Y=
Authentication-results: dkim=none (message not signed) header.d=none;dmarc=none
 action=none header.from=math.wisc.edu;
Received: from SJ0PR06MB8325.namprd06.prod.outlook.com (2603:10b6:a03:393::17)
 by PH0PR06MB7189.namprd06.prod.outlook.com (2603:10b6:510:21::11)
 with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384)
 id 15.20.5857.17; Thu, 24 Nov 2022 15:23:18 +0000
Received: from SJ0PR06MB8325.namprd06.prod.outlook.com
 ([fe80::e991:dce9:1f68:fa06]) by SJ0PR06MB8325.namprd06.prod.outlook.com
 ([fe80::e991:dce9:1f68:fa06%8]) with mapi id 15.20.5857.017; Thu,
 24 Nov 2022 15:23:18 +0000
Message-id: <2834f105-45be-2002-3a3d-5e06baa57d2a@math.wisc.edu>
Date: Thu, 24 Nov 2022 09:23:14 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Subject: Re: Could someone help with bash scripting?
Content-language: en-US
To: Jason White <jason@jasonjgw.net>, speakup@linux-speakup.org
References: <D9069478-2D9A-4DC3-97D7-BB365C7A4222@gena-j.me.uk>
 <97c24e8f-836c-0464-6aa6-09a0a100b06a@csir.co.za>
 <c4feda3a-57b6-4a41-5a45-5fbba56d02ea@jasonjgw.net>
From: "John G. Heim" <jheim@math.wisc.edu>
In-reply-to: <c4feda3a-57b6-4a41-5a45-5fbba56d02ea@jasonjgw.net>
Content-type: text/plain; charset=UTF-8; format=flowed
Content-transfer-encoding: 8bit
X-ClientProxiedBy: BN9PR03CA0195.namprd03.prod.outlook.com
 (2603:10b6:408:f9::20) To SJ0PR06MB8325.namprd06.prod.outlook.com
 (2603:10b6:a03:393::17)
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
X-MS-TrafficTypeDiagnostic: SJ0PR06MB8325:EE_|PH0PR06MB7189:EE_
X-MS-Office365-Filtering-Correlation-Id: b0cd5fd9-b64c-428f-741e-08dace2fd056
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
 bHXn6ZWfvkFwZ/4/3c7GMpTiwN47osfIGWOcun9CbQc+GCVlYX4qC7RoYu+MvTex0J1CmW9shINewrCa3W6wgUOEaEZpuyNGc2FhRHQg3C/r4w9Zdn5tWvx9VK7t4Yhs14sSf8ac9ZPeSKPWuNTTbWwQGYxPnnZxQIUTiumbaXXxaTO0GXtqG7TyBF4czYQHRJCR36qfSNVanqtKWobkAy7LasoG9JLi4ytEaBEuq1FigHRsgR8VDsflqLxHqkfKLk32sIy2D7uiB/AGqEWwFh2/+QxTRTQzrJnzqUiOuagJ/GNxpEuphaNGMx9QRayO/Z7tCIAbbXDrwTrlqmRWM0A7c8Z6EC7QdxJv3goMx8L4U/gWjH1Tr4Amdee0E39A0vBGgug1K3DMojZa54ZTMRlckl5gRw+k8mV+De5gJeyyhY6DJxag8AceaK2lZooUCkPsmsII1PoxD8yCAQvGhIuFhGg9oVNE8uryvQ3oi/4NlAe8JIarojhx00HBi3WKeFLs3wV/xk1PPwVBxzUD2pwNoJ/cPFeVIliTWUYHXT9+h+flB4rHUhXt579p3oj1SIs2hW0IXU6Qg+b4lUOh8QosZlwpAVKcWSTuzuhtr9rTNkaLS8e9k82bi84EHRnkOLkFV15JE1kTXyZMKlD5j2yAS8km5reXjqE6vxWPhtpVRaXDwv0oD/oyc/gbd5vjv3e8AG80BNkwY+LbfbauBhPCqiSSmyFB+SaR9ZcI0oQglhwyLxGvXM6vm3lfx2Dg
X-Forefront-Antispam-Report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR06MB8325.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(376002)(136003)(366004)(396003)(346002)(39860400002)(451199015)(6512007)(6486002)(966005)(6666004)(6506007)(53546011)(26005)(186003)(2906002)(75432002)(38100700002)(41320700001)(86362001)(31696002)(2616005)(8936002)(4744005)(478600001)(31686004)(41300700001)(66556008)(66946007)(66476007)(8676002)(316002)(5660300002)(786003)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
 =?utf-8?B?VTZlMGwycFBIRFVOeUFpME1sZXNhekwxdnpRVUFzTVJmWVlvTk9OMnkvb1cx?=
 =?utf-8?B?SjhNL3ZXSTRPQk9ZaFFROVFza1NMNkVrWG9EOENKeHV2UzVYY1dtNkxiVHRV?=
 =?utf-8?B?TUNYd0tWZ3lIT0UxQnZMdVg3WklyZmlhaENtZVB2blVIaUdVaVYzYVJFOE4r?=
 =?utf-8?B?L1hiZ3JLUGN2anYvQ2N1RzUraTF1M1k1bUtSOVpPbXhnRTM4bHNjUVI2Yzdv?=
 =?utf-8?B?VDRvOGdhQjAzMklkbSt2NDVXQXVEK2lIV2E5OXlPWk9ZSXhHRmxPWE9lbzA0?=
 =?utf-8?B?UjlhS0laWlVkNUh2NUdzby9VajA1VE5ZR2YrUnZreExEa1hYNWowSUxKWHJB?=
 =?utf-8?B?aUtETXJHZ0Q3QllXYUxDWnVCQitydzZTS2tUS2szVWhJL2hjZE0ydUhONXNv?=
 =?utf-8?B?R0J0bXd1R3RKS0JHK25TeTNrc05nZXVqNDBJaVdoOXNRWS9zSERVdTFYZ2Nz?=
 =?utf-8?B?ZHJUWUJvQWF1TWh2cVd6bk5BMTV3djk3WnhxOGVJMnpUMzY0bDJPNGRZdzBY?=
 =?utf-8?B?S3hVbGFDODVOTmhyVWlSMDlFYlgzYVQyaHo0TFdvRy9oOHZna1JpMXdTYUNN?=
 =?utf-8?B?dCtiUjJhdWVkRVlMK0YxRURvMUxUQ28ySitZTDRUa2JvNXZBUDExWEJvMHRR?=
 =?utf-8?B?c1N5ZXh5QWhrcmt2MW9jM2VTY0JmZzg2Y2lONDJwUUpEQnZXalZWVmpveVZw?=
 =?utf-8?B?WjZYSWZESGI2MDcvQWJLQTdSV0xFbEJkSjJmOGhFQjdkVllPeEwvc1dHdWZL?=
 =?utf-8?B?T3BONXhiMlNwMGZKZ092c2JmQlBxU0E3YnlSRFBRMC9JVHQ5WEVuVlUweVcz?=
 =?utf-8?B?UWQ4VFA3QTVLQThPazZ1ZlpyN21pTDBLdnFCWmV5T2VQemdCOW9tNXlXaENn?=
 =?utf-8?B?cjFsSFhidW12V1Zndjc4NGUwWUVHZEFEc0F2c29aRkJneFFaQlFXMnpOajBG?=
 =?utf-8?B?UVF2SjN0dmZoYW9hK3RlbVRmc0YvQ2plUWZxdG14VUxmZnlSOWdRdzlJV2Nv?=
 =?utf-8?B?cExicTdzNUNtelB3OTFqNzAyalFSVVYvdnJGQmZ5MUpEQWFFSXRyNlVseDRy?=
 =?utf-8?B?dWJvUFNOdUtyMzlFcDlGWnBsMlFGZGRYaHgySTR5R01Gb09rZ0JCZC9LR0ZH?=
 =?utf-8?B?ZzlodS9yNnZKc1Z0eVFlRGlkdVJmT0MzN3NlUzdVNlRBT3BxZzU4Z3JpMnRh?=
 =?utf-8?B?STJMU3NJSkpMVFA1bjFNMnNMTSt3emdadEFwMDlHY0RhTE5HTGhUcURtU1NJ?=
 =?utf-8?B?ZzBQY21GUHRXVHRZNlpCTkV0V2ZHT2FQN2lBZ3RqaWNDbU9zVm1PRlN3MjZ4?=
 =?utf-8?B?UHN5cFkybkwwUUdPdmEybXlyUlhTSjlEYy9XbDBBSFhlWGw0bjQ0dE02QStH?=
 =?utf-8?B?QWpTazBTWExiQTZVNXRwTi9WSXFlOWJmVFEyWWpOeU5kUXBmQXZiNjliVSt1?=
 =?utf-8?B?a2k1N3RmdEUrYzJlYUZCSW50aHBadGs3YW5mQXBtR05ORnRCcUUrTEYyOWJV?=
 =?utf-8?B?eFhzMi9NYjYvWThqa1pPT3kwQzV5WXFkU0Q2S0ZsODZyaUtYNFN0WmoxWi8z?=
 =?utf-8?B?TVc5aDZTNE84NEhrZWg0cnRHb0EzRVNTN2NiQUQwQ01JVS82eGdWcXorcm96?=
 =?utf-8?B?SnpxVlNqUXlNSTZkeVAwczJzUUJTNUhxdXMxOStUcWoxcTI3a3orc0VkSTJR?=
 =?utf-8?B?VXorMW1zbjhGK09ZOEhDZm1IaHViWHlxV2lNK2M2WDlwU2YvMStMOXRLdjlT?=
 =?utf-8?B?U3ljNUtFWkhjM0RrTmMwSGRhUVlScis5MHc1REFnT0xQR2dHbnRpU3YvUjVI?=
 =?utf-8?B?YzdkdDVpOEM2S1luSEJOS0hsWmVYbDZ3MmZTOFg3NGxBSGR6TUtFcklZeDk2?=
 =?utf-8?B?RkZ5Q2F3dUxibWlzR05ZMnMvOEFRa0pRa3pwSnFNcnhVY21IQ2k4aUdGblpF?=
 =?utf-8?B?ME9lVjZ0QUJ1dG9DSkpiSFNhc0JvbFprTHlJenI4U0Myclpzc3IzL2g4TU95?=
 =?utf-8?B?WlVUS1Qybk0zYVc3THFYcWZQaTM1czA2aGFlc2V0RENOajlIWjQzcGo0TGV1?=
 =?utf-8?B?Q1NxKy9WK0tHRTk2czNLMGEySDVDeVh5NXRWaWdzczZFT0M2K29zbEx1VWJz?=
 =?utf-8?Q?UOcp0mMvO/kLhlyGmVu0SzyrG?=
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id:
 b0cd5fd9-b64c-428f-741e-08dace2fd056
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR06MB8325.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Nov 2022 15:23:18.3426 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName:
 OKTg7Yww6mxrn2qd7VucjlV8Z3oeA3XbrmeTH3i+4jSxALCCWFu79en4m30lBIft
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR06MB7189
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Expect is one of the oldest tools in the Linux toolbox.  Don't quote me 
on this but I believe it came over from Unix.


On 11/24/22 01:41, Jason White wrote:
>
> On 23/11/22 20:25, Willem van der Walt wrote:
>> kermit I think is the easiest.
> There's documentation available at https://kermitproject.org/
>> You might also look at using expect.
>>
> I haven't used it, but I've read positive statements about it.
>

