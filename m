Return-Path: <speakup+bounces-1254-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 9E9E8A9DB90
	for <lists+speakup@lfdr.de>; Sat, 26 Apr 2025 16:53:02 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=math.wisc.edu header.i=@math.wisc.edu header.a=rsa-sha256 header.s=selector1 header.b=B4M1iAZa;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 362A2382572; Sat, 26 Apr 2025 10:53:02 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 122B8382529
	for <lists+speakup@lfdr.de>; Sat, 26 Apr 2025 10:53:02 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id B961438252C; Sat, 26 Apr 2025 10:52:54 -0400 (EDT)
Received: from mx0a-007b0c01.pphosted.com (mx0a-007b0c01.pphosted.com [205.220.165.71])
	by befuddled.reisers.ca (Postfix) with ESMTP id C26C9380B06
	for <speakup@linux-speakup.org>; Sat, 26 Apr 2025 10:52:53 -0400 (EDT)
Received: from pps.filterd (m0316040.ppops.net [127.0.0.1])
	by mx0a-007b0c01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53Q4kwV8026888;
	Sat, 26 Apr 2025 09:52:51 -0500
Received: from ch4pr04cu002.outbound.protection.outlook.com (mail-northcentralusazlp17013063.outbound.protection.outlook.com [40.93.20.63])
	by mx0a-007b0c01.pphosted.com (PPS) with ESMTPS id 466jjrff6p-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sat, 26 Apr 2025 09:52:51 -0500 (CDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=n8v1luBygU5f1tblWhBxhRrKiXuyMhuh8ZIaewa49s6yVWJpwkMKd1W3n0USXyLfX3WmY9bKCTWIe+nUZ21PDBPYCyUuxiRfINnj6JRtYhMzBRuOA+iK+c/H1GhE6YQYRakv7iYcO2H2EiNn5K+B4d7ASgDGk8xZBCNaHyLl7LQSVoDbpwtV2ZdCay0zRS1Hyd3AUKlTg3T5tA5kWzyVLZAqT1b5/fC3NSxUFmboifJCWfHGNdZicP5GfCSIsF6WsgHY2bItZM1w2iurMHe7y2fwtg2AqxV8WXsNNCAtDK9bzOtRY+BEcaBXtygqS3EHfVxPuu8fcAdQ95xjINBdIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wm0f0TPOmMVdzUWKRwWeS2zRcmR8zF9wz9W9qLGRslA=;
 b=GZ/cAtEIWj7AMmV9IXK2U0NpqAMy2wcUqBJgwHowNISiOK6E9J4Kyh0UH/Wp8N/m6GxpfQqaGdMTSEUF4DWAsDbmd49KixQS8iN/JGmmdO0dYjQk4KDPqEU4sWgZBvK36zwaHUU32eKj7fMrvqPryX04EH2AMwt1NdKpzS/FpF30vStIv+w+JN3J9sSILiqDD25TqNmvJZvRs3kF1xADiY+7RlyJA/pOhSJuWEo837+uzMyuE+frYvoFwZbs17VWo4hKG5n2pXzvzNp/3f+wX69aJ2XJfGKsZ6qbJFOg/wv576UsKY5jF5rqfpZ+WxMQzKT2XvG2ES2lgAHSy8Y0wg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none
 header.from=math.wisc.edu; dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=math.wisc.edu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wm0f0TPOmMVdzUWKRwWeS2zRcmR8zF9wz9W9qLGRslA=;
 b=B4M1iAZa0/4ViAaZXDD72veQqbHHUMr+cyxS9Aa9Iegmyo2qXMRHu3DR4s9eizNOSI7NC2ZaoxnBXZ2s96DMlLtmiieLMT1vFSJ30mJKowj9/7OLWhzYvesjtBklKahO5U98lvevRNjHFC1ci5Ygy7yDYpx9FIpDshI/6CvgBSCerPaJf2iVioRNN1xH60Etx8ZAWsgt07jCJ3A37L/MUiv+ga3OItDyxKlfCd34t/1fU6UGIsa/FkzknNR9zgdgaANlw9HNXNfmlAuuy06ZEQsdEHPH3l5Ahmp8ueSF3ic5SzYTCtBMwheWsV+FNVv0NIZI1/hoy3TtwTNWfFf+dw==
Received: from DS0PR06MB9877.namprd06.prod.outlook.com (2603:10b6:8:1d5::14)
 by SA0PR06MB6970.namprd06.prod.outlook.com (2603:10b6:806:bc::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8678.29; Sat, 26 Apr
 2025 14:52:49 +0000
Received: from DS0PR06MB9877.namprd06.prod.outlook.com
 ([fe80::a347:6162:9bfd:9b91]) by DS0PR06MB9877.namprd06.prod.outlook.com
 ([fe80::a347:6162:9bfd:9b91%3]) with mapi id 15.20.8678.028; Sat, 26 Apr 2025
 14:51:57 +0000
Message-ID: <a19fc865-7c35-4dcf-a711-ca12c3fab2d9@math.wisc.edu>
Date: Sat, 26 Apr 2025 09:51:55 -0500
User-Agent: Mozilla Thunderbird
Subject: Re: I break everything!
To: Cleverson Casarin Uliana <clul+speakup@posteo.com.br>,
        speakup@linux-speakup.org
References: <3b7d9a99-8314-77f0-62ce-e6ca3e6ee1e4@reisers.ca>
 <9677270c-1283-4624-8246-804e41ff3287@math.wisc.edu>
 <ca8ce1b0-dbd1-5fa7-8887-53522e29e8d4@reisers.ca>
 <8f3f523a-8621-4a55-bdcd-5072e5cb024c@posteo.com.br>
 <ac1beeb6-7d05-47cd-8f4e-a10d8f627093@math.wisc.edu>
 <21a643e6-4407-c9c4-876d-6acc87f71804@reisers.ca>
 <71c3ea1a-ca7a-44e3-be1d-240dde57a981@posteo.com.br>
Content-Language: en-US
From: "John G. Heim" <jheim@math.wisc.edu>
In-Reply-To: <71c3ea1a-ca7a-44e3-be1d-240dde57a981@posteo.com.br>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: CH0PR03CA0371.namprd03.prod.outlook.com
 (2603:10b6:610:119::19) To DS0PR06MB9877.namprd06.prod.outlook.com
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
X-MS-TrafficTypeDiagnostic: DS0PR06MB9877:EE_|SA0PR06MB6970:EE_
X-MS-Office365-Filtering-Correlation-Id: 7802a008-973c-4ed7-008d-08dd84d1e3eb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|41320700013|366016;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?VVVWOUxmTXNCTzJxWjBVZ2lXdWFjNy9lRXp1SVlvcWRZbDRQSVlKMWZQalor?=
 =?utf-8?B?SFh0Zm5FZFVkVUdOU1pBSTlVY2FoQitHb0t4TCtxeVlObm9vdU5KaWNsRzF3?=
 =?utf-8?B?QThyaWZWWFk3UTVxTzZkZGF6ZHhxSlYyVEluLzFwNlV2NEcrR0Y1dW16UGN1?=
 =?utf-8?B?cjIvMnJVTmNiRkhzbno1ZTVKdUxXVGZsMkNZTDF4NHZUclhLRmhzV1g2Ti8r?=
 =?utf-8?B?YjBOOEZtSGtXVHhUcjFiaVRwWHBUcGxlU0I3ckw5SURvWlZURHZWQ2pzWTFC?=
 =?utf-8?B?U1BOZHJmSnBFSW56Wk95cUFuNCtyZHBvOEJjRTRvUXNGNWlBbVVSUVZMeitM?=
 =?utf-8?B?OGpybVQ3eEJUZWFFa3ZZOE5nMXpiSzBpOTljQTU3MzQ1K3FEd293c2ZqSmEr?=
 =?utf-8?B?NkxlbzBVaTRyZ1NXeU96aWxoeE5iZnhWMGk0L2tEOWJRVU5OV3FRZ2JjZUwy?=
 =?utf-8?B?aVh3QmFoWncvNzV0OU4xYlV1cTQraGZUYVIycElDRVMyeUJoQitFWFdBWE0r?=
 =?utf-8?B?NmRpTnhWTys1aW1meWVpT240a0k5c3lUb0lYSndSOGpyNUxXU252Qytsb0k4?=
 =?utf-8?B?T0pYMnJRRkdhd3hlemZJSmZBREQxekNZeXVLT01jYjJhMWJhTWMxVS8wNTFS?=
 =?utf-8?B?UVI3UkhJbW9uMll2RmpkRGtmZ0d1eFA4ZXZQcEZpa3ZkOWZHWW5MK2thbzMz?=
 =?utf-8?B?NTRHMWZaKzNud3M4OUVJVHVkV3IvWHk2UWUwekhUYXJhdUl0bTBWcWlJUmoy?=
 =?utf-8?B?NlJrcVQyT2tBbEI0bmd0bWI0NkFHdmlDNU9YN2JUeEUwZndjZjNzUC91Qk1p?=
 =?utf-8?B?QzdwcUErTUt3dFlNbVBuSDBsR3dIU2pab2doanY2djRjZ3Q3TDQ5dVhnUUky?=
 =?utf-8?B?aDRMTnpiUFNhRjhyQXREZytXcENubTdHZjFGOVV6Z0U3L2s4VVZaa0lEK1RT?=
 =?utf-8?B?R0k1U3RWSHBVa2k5MWI1Y2MzSERZWjZ6WjlwblRraExjNVl1S204bkVqY2tt?=
 =?utf-8?B?Ujl1cjk5K3NDZTFOcmZZZmNGTmZmSEVCT0FpemtPQlVaZDRhZ1kzakxsQnFh?=
 =?utf-8?B?VkRKT2RhMDlzWkJzMkF1blhjTFZzNnk4b25FeldvRWIzTHhINnNmSGEvQStQ?=
 =?utf-8?B?YlRpWXN2cVZlVGZOM3hyRXhES3hQeE8wT3ZaQURxNDdQcWozUUYrMTF6M3R4?=
 =?utf-8?B?aGdKdHZJeTVTVmVsNWJPZ05DcGlwQUR2ZVZpR285MEd3YWVnT3JzTE9nRkFS?=
 =?utf-8?B?Um9xSGtHUVZoQUdodVMyMzk1MUZROXM4U0REUzFRT2Vwa2YxUGdNcDBrWlZr?=
 =?utf-8?B?TEs0RnNoOWNZMEQ5ZnRLLzVuUTY3SzFJSnpZeXU2QkVEb0twQ2lWQUpMSXcv?=
 =?utf-8?B?bDZoQkpNcGVuWW54cGlnOXMvSDQ4ZFFEaTUzaVZnY3lyNWEraU1yS2h1alc1?=
 =?utf-8?B?eEptMFliUjJ0TCtpQUJ5K1hwNEUvZTNJVVBPV0JIRXhiVlBQTmIrTHdnQ3Ux?=
 =?utf-8?B?Tm80cU5acnc0b1RMR2RwMmdNbXBOeGlwVENtV2hlYitQL04ybnNEM0F2Q0ZP?=
 =?utf-8?B?WGo2ZWlkNG5DendYVmZSWVdSY1ViNFRYMEMyRFFJWEp2Q3hQODdGWi9teUtk?=
 =?utf-8?B?bXpDMys2SnFWWTdlRzE0eVJxYkNQQk5aeUFMeTZSMVppRlhPUHRHSVJlYUtw?=
 =?utf-8?B?OUYvdVJtbHUwWUhDRnNzK045elRxMG1JOEZid21VakwwV2pZaVhXSG5Senpq?=
 =?utf-8?B?WFdwT1Y4N3lLdXhlS2wrSTJOWkkwMnB6bkl3Q3kyQXBKTGZvTkpkYUJFcHg5?=
 =?utf-8?B?UFF4R1ZTUVdNbG1uM1FuVWEzMWdlYXRVaGtqakoycmlBdGhxd2RPUkx5L1pk?=
 =?utf-8?B?bHc4bUxaNFNPcG9uUVR3YTBiSkEzM3o2c2UzR3BKcXVhcWc9PQ==?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS0PR06MB9877.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(41320700013)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?bFZGaWdxZDg1aGsvTmFyZDN6TnBXNDVaVG1hRCtrbENOVFRwbGM0M2Q1akk2?=
 =?utf-8?B?Nys4ejZqcUdLRExSRlZPb29NZGMyUmxqZ2hlSVZBbHBCUXF4Q2J3Rk9ibmF0?=
 =?utf-8?B?ZHoyaWpZTER1U1JWeGNIUmxvQmtxWmtDU1dva1VUMUdXNTJ3UDdFQmRnMTIy?=
 =?utf-8?B?bytZRjhINmZGc2tqVmNaNElCVjFQanFjSU9CcGFmV2RDdk5ZcHRBLy9ueXhD?=
 =?utf-8?B?M3Q3ZzdpSU1PNlhJSUtua3lsVUo5Sy9RYTNGaytOZWxtcWhna1FNVlFXai9E?=
 =?utf-8?B?YU5oSnhIVC9nV1ZhS2VhNHkzZ1h0UU9jR0o5RVViR1YxcG1EU0VxNGlQZUox?=
 =?utf-8?B?VkZ0YlUwZlpERko2QmUvU0l3aHpIM05INEdzUzhoMHB6U1k0YWlUTGpkeFNT?=
 =?utf-8?B?YjdNcjRpQUhyb3g3eHVvMUpZTUI0aE83UnBMQjdnQlNZem41SmVaZVgzR2V3?=
 =?utf-8?B?QUpZWU14K1NwenQwTkFwMUhmZ3A5NGJuTENwWTJUQ2lURENhbGhybSs4eGQv?=
 =?utf-8?B?WHplWHQ0OGZGQVMzMEVvU0JCUDcxUVROQW5oMVNWV2dWTjh1YjZ5K0hGM0Z0?=
 =?utf-8?B?dlNpUzNlOFRvQS8rVzJTKzV1RGtwTlRZdmJYam9MMW5zZlhCL0tlc09odGUx?=
 =?utf-8?B?elJ5b2IyeWE2VFY1Q1hkRzFzZy9hU1o4ZUhjMkRtTkdTTmwyODlwbko4K0xT?=
 =?utf-8?B?bHpHVWJzOTBVVDVOMWU0MVFIZ0ZEMVNrTUJlVDFrRFJESzVEYUY2RzNiUC9t?=
 =?utf-8?B?Q2V2cVF3MzRUUnEzMU5hTGtWNFp6REsrK29IWDJ5ZWFUckxMdmhKYVEwZk5F?=
 =?utf-8?B?c1N3V3hQRWIvc3B6d0ZuN0FML01ROExScW1walc2WXFDd0wyY2hGYzUzSEJk?=
 =?utf-8?B?VzhRY3dXdUt4TUE5RFBZcUhHNk54Y3BMWjMxNzY4MjRRNklSdDNCYldTV1Mz?=
 =?utf-8?B?NnpodFdrMTJhNkRxK1p1K0Y5dzQ4OVlneE40bzBKT0VLN2tqTVgxUDM2T0lx?=
 =?utf-8?B?MTJZNmpZQy95bDViMG1BTW02LzdGdVNiVkNQTkhhZ2dqMjIwbURkaGNHWmRK?=
 =?utf-8?B?TVRMa2R4emFHYkh4NXkvR0ZrUStVQ1dKQkdRREp3V0hNa3NocUtMTDNIR0dK?=
 =?utf-8?B?bUc5VzdnRVlPc3RYNFZXK01Vb1lBTzU2WTBNSStRWXByOFBrbG5tSnNldVhO?=
 =?utf-8?B?VWhSdEl2MjFYZFFCTUp1R1FydEdZQkdUbGNwMUo4NldCNkJxSWZTcU0wbUdj?=
 =?utf-8?B?WmFvb3ZXOU5sbU5QaUU4blBUNUZybCtFRTVSYjM3c2NjaWxBRTk3eFhqY2Na?=
 =?utf-8?B?clFJQUhveWI2Q1ZQUXdxbldibjBQTlZZUjZ0N1F5UFNHRThFYWZWMWtjeFdk?=
 =?utf-8?B?NUc1V2E5cmNLZk00cFZrdzZ6MVRPRUlwY0RJUGo0QnBZSUNzS1dRSjRYRjI5?=
 =?utf-8?B?dzFvanV4L3M4cXBLbm0zaS9RbFZockYrQjFKQTFPSFprdDFybUFuUUNWU0Js?=
 =?utf-8?B?R25rK3U0eGFPTUhuVjBzUDgwZ0xEcXozZGdNdGlIV1V6ZHBxZHFONXY4MGp6?=
 =?utf-8?B?cUozTjNiVWdvL3hRU09yek1LbzFEZ3ptcWZJN1pzVzFZTk44bmFtdEg0MFI1?=
 =?utf-8?B?ZHJTdENvY2xEbzdOeFZySzRocGoyWFBLL1F6NEpnYlNnMjFmS01DeW10MWd4?=
 =?utf-8?B?ODladkk2eFFjY3ZLMVlVdUpQUkJFMFdjZWVVU2ZXd1JUY25pWkxDbzZCMTJS?=
 =?utf-8?B?RnEzWVR1RUUzNXJvZ0VwMGZmNTZXU083SHRMaHkwckRMQ043UXdUaC9uMVVZ?=
 =?utf-8?B?QldMV3EybkZJekpTam1zb2lsSEY1SmdZRGFJWnVSdC80VmlqUEFzVHNKUWRI?=
 =?utf-8?B?dmFWQ3FaTWpnbElZZXU5d2hSbzFsdlZhQ1JxaHlpS3ZFeWtCNkliVFI0RGxZ?=
 =?utf-8?B?Zi95cHZEMHo0bjU2ZVdaL1VzRldXUTEzbHB1LzFScEIzaXdlbWdYR0lsQ2Rl?=
 =?utf-8?B?K0RBdDdZMXdUaldxWTRFVml1aHJTbEl0WmFDc2ZWNkkxWHhQR284QzhQOC94?=
 =?utf-8?B?clhaK0Q4SWtJU3N6RTQ1bGNJK0lDbmE5bkRvVXdDeEw5M2V4UVRsWnJnTlBt?=
 =?utf-8?Q?u/e8=3D?=
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: 7802a008-973c-4ed7-008d-08dd84d1e3eb
X-MS-Exchange-CrossTenant-AuthSource: DS0PR06MB9877.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Apr 2025 14:51:56.6280
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aNKLz/NIaW16LKeaIhAlaQuupgmHbOcSBD+4NovCLxZgKUPqN1nEaGq5HdHqY+AM
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR06MB6970
X-Authority-Analysis: v=2.4 cv=O+M5vA9W c=1 sm=1 tr=0 ts=680cf343 cx=c_pps a=FN31aPQdsEfnd7fT0GsFIA==:117 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=XR8D0OoHHMoA:10 a=lre9DRYkaIEA:10 a=y-0mJjOqBi6oyVL1StwA:9 a=QEXdDO2ut3YA:10
X-Proofpoint-ORIG-GUID: WJj8GqMI0qXHAoPPlZ6OJXrejGKCq42A
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDI2MDEwNCBTYWx0ZWRfXwVCSEt80+0Vu aZj8nEbvOgLLvgzPw9whOpgDvd0fknMh1axGUscnDJ4215vWdBq4FrSrLAsmyhe9msUdAErjDPI vj+f91JuMoOJJD04jPypi10J6uVOM0emFfCXizf6B98Tgx4pk3wfN7xEZbXqMoT5PbZPM88Pbpj
 hsnSra07S/Ik1yX3DLRsWAqwHfoVO8wH2ErTUUukwomPY4UIcjmLXLukkDhiYtUFFPioB8wMrOb +7iDZib6frykMAbZw2YS9bpEZ+6HJeuymVzFgGq4qJzeZs3YpMcq0+s9P8+DQDvYOrLG13BeD9+ Vd+df6oN7NBBKhoqpjUx9/4zH1bK2uqK4WonsiZf7cNaUqJeR3VL16zvnqxWfK2Klal8s5zhtqN
 rh2btAnMCDV4XUOwEUiNc4pOGT04twAAScJRTzi9N01D7NwBJzzAKVigk55oksjddDHKbKec
X-Proofpoint-GUID: WJj8GqMI0qXHAoPPlZ6OJXrejGKCq42A
X-Wisc_ValidFrom: true
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-04-26_02,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 malwarescore=0
 spamscore=0 impostorscore=0 lowpriorityscore=0 mlxscore=0 adultscore=0
 bulkscore=0 mlxlogscore=999 clxscore=1015 phishscore=0 priorityscore=1501
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504260104
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Over on the Orca list, Debian testing plus Mate was the consensus winner 
with respect to accessibility and ease of use. There are always a lot of 
other good options though. And it is just a matter of opinion. FWIW, the 
one thing that was clear was that Mate is the preferred GUI desktop.



On 4/26/25 6:57 AM, Cleverson Casarin Uliana wrote:
> Hi, thank you both John and Kirk. I'll go for Debian Testing, to try 
> it at least.
>
> Perhaps going a bit off topic, the current Debian Stable installer CD 
> image has a problem where speech, that uses speakup plus espeakup plus 
> espeak, simply stops at any moment in the middle of installation, and 
> there seems not to be a command which bring it back. I tried several 
> amixer and espeakup commands. Even espeak-ng "testing" doesn't talk. 
> Have anyone ever experienced this?
>
> Cheers,
> Cleverson
>
>

