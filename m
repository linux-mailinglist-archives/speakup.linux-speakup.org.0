Return-Path: <speakup+bounces-1301-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id CC6E3AD7786
	for <lists+speakup@lfdr.de>; Thu, 12 Jun 2025 18:07:15 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=math.wisc.edu header.i=@math.wisc.edu header.a=rsa-sha256 header.s=selector1 header.b=ZMOXsLKr;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 22A8738249E; Thu, 12 Jun 2025 12:07:01 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 0055538195E
	for <lists+speakup@lfdr.de>; Thu, 12 Jun 2025 12:07:01 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id CA1A838195F; Thu, 12 Jun 2025 12:06:53 -0400 (EDT)
Received: from mx0b-007b0c01.pphosted.com (mx0b-007b0c01.pphosted.com [205.220.177.71])
	by befuddled.reisers.ca (Postfix) with ESMTP id 573A73818B5
	for <speakup@linux-speakup.org>; Thu, 12 Jun 2025 12:06:49 -0400 (EDT)
Received: from pps.filterd (m0316044.ppops.net [127.0.0.1])
	by mx0b-007b0c01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55CEc4dB008390
	for <speakup@linux-speakup.org>; Thu, 12 Jun 2025 11:06:46 -0500
Received: from nam04-bn8-obe.outbound.protection.outlook.com (mail-bn8nam04on2076.outbound.protection.outlook.com [40.107.100.76])
	by mx0b-007b0c01.pphosted.com (PPS) with ESMTPS id 4780tw0rg0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <speakup@linux-speakup.org>; Thu, 12 Jun 2025 11:06:46 -0500 (CDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dU4Lqm07EMj2XAbT76hhBv8sWU/H5f3jgrssd7eG4TbcHiBVhE9aera905b7hRn2hzrXvT8yki87IhChSRUlBWu9DEb2HzStRnSaCmXysiuE0Bvb6n5+CdVMwghVtFYpZV7fdGEvi+Ea88xa8cgWMWD/NloHE7pGFkU0y5dUlPUxa6l+JP4T7JUUOyyYNOBLxwjz1j+kDnjlLZpv5sRuALbEfIy5uJ4MVUvm7bS0J7IpU4cv2gvOwIX4cS6ipPNtVGV4XJXpalLkg+EzC4zts+OQKZ4OaLV6A78EAactFqAKh7IsuAdqr9/NHXByqf1jXm+P2n57g4bca82oJPieeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bZNcEJ5R/ddaBrbXCO7jUlGKkY/RtZK56kBCkoNGsEM=;
 b=QXzOEH1ivGp0Y/NQdvMNqb4foMfNB0k8gX4IAhrGo0Mpir7Pc/ES7B2McDtOtWsI20waD6EMuyu/eg6emuwg11lKEq8Bq6H5hDSCFPsdeOFexdt9GMK5LhzQ85ABMQsc1Ax/1aghLgcFw0Te1l96845wbuOTqm4nyjAtW9h11ftYofuWvehSVXXYOxHfq2TsH+ycdkQTmdZUHZldbqUf/rsnyaqdb8dRI39uhV+sM42XWKPOpMytkyAaLCHvhGIJLcHK4h1bU6pR52apwl7dMku+jwyGjs2qfS+OgEpKhU14keUdWd23CTFSa3o16CQZnTmUTNlFSNx54z5QhrC5ww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none
 header.from=math.wisc.edu; dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=math.wisc.edu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bZNcEJ5R/ddaBrbXCO7jUlGKkY/RtZK56kBCkoNGsEM=;
 b=ZMOXsLKr7uvcX/kmakFZohPMcN/VWWmub12lUOlhjY3ImENUNp2MNSDKW0wgpiSblt9O36qvmn9q7Yk4VLo//0IXu7ukdZXDgy5xh27O2us4Ih6IgtI91Im89m4KvXJc4NqdebXAGPBZSYc5VEnbWvzY/QAo4AUI2o17H1fpyNxUpbKMupCwpyrBTKOTDmRxa6wFSAOus9TYFHhw+Kk6yswRlH120pqHkhAVed/XxC4bPU01QkQQnWFWo0GUv4EVkk6RwYuAO4MFLcID1JiuuAOOGMIBgsEfzTYJbem+PsZbFl6EQcFD41JFxGW+CokbNBl/ve2781n63l9c/MZZ9Q==
Received: from DS0PR06MB9877.namprd06.prod.outlook.com (2603:10b6:8:1d5::14)
 by CH3PR06MB9314.namprd06.prod.outlook.com (2603:10b6:610:19e::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8813.24; Thu, 12 Jun
 2025 16:06:43 +0000
Received: from DS0PR06MB9877.namprd06.prod.outlook.com
 ([fe80::a347:6162:9bfd:9b91]) by DS0PR06MB9877.namprd06.prod.outlook.com
 ([fe80::a347:6162:9bfd:9b91%3]) with mapi id 15.20.8813.021; Thu, 12 Jun 2025
 16:06:43 +0000
Message-ID: <73297c7e-9945-483b-a9d3-e347ab217d59@math.wisc.edu>
Date: Thu, 12 Jun 2025 11:06:42 -0500
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
From: "John G. Heim" <jheim@math.wisc.edu>
Subject: Tripletalk mini
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: CH0PR03CA0036.namprd03.prod.outlook.com
 (2603:10b6:610:b3::11) To DS0PR06MB9877.namprd06.prod.outlook.com
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
X-MS-TrafficTypeDiagnostic: DS0PR06MB9877:EE_|CH3PR06MB9314:EE_
X-MS-Office365-Filtering-Correlation-Id: 85e79fe7-4818-45da-96fa-08dda9cb1fb8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|41320700013|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?UFkvRVYwaURxSmo0akpjdE10R1FDUW44TFJFUytIelV6Y0U3SDBFU0N4U0Vx?=
 =?utf-8?B?RytrSkY3dDY4bEdaclRRdWRESW1iMFBkeFMzS09VSWZXUUtQWTF4dDdNaVhq?=
 =?utf-8?B?anZzcDBkMHk2ZDJCd0dLQS9IbHNZM04yMDlsaU9PeDZQSTlWeUp6Q0hEcmlV?=
 =?utf-8?B?aWk5V1AvenRWT1lmV0VwM2pnSDlKQWt0UjdYZVJSVlNPc1hHYkhoQnpQQU5Y?=
 =?utf-8?B?ODVCa2pCMURhc0t4ejlUM3RISHJwUTdXMzRkcW1CR2dKSGY2d1kwcEFRbGdy?=
 =?utf-8?B?NmF3bjZNdlBFSm5Ucll2ZmhRMUYzUVJwalFDMHcrT1Z2dkYwM1F1a3dRdDFn?=
 =?utf-8?B?ZEttNTZkazNuZGRITUEyOStCTjJCNndib1JPR0lJYVp0Mm1jZzcyeXZRY0s4?=
 =?utf-8?B?QWkwLzB3eDRkOHlQU21tUWgzRmtMMk5sdVVvV1lMeUZPRmE0VWUwbkQ3MTMx?=
 =?utf-8?B?Qkd4TlptTXBJd3hlaGxWM2s5bGIxNVFBUVpWd2hkbjgyMlVka09PckpKVC9O?=
 =?utf-8?B?ZnlXb3EyTU84OFZmbnhabERtYTRqbEViSTFYTVVFNjhzL0s5bkw5ZXViMHdr?=
 =?utf-8?B?blNoUFBhd3Rabi9jYStXYUZtbU1aTDVmRDlOSUs5SHVSMnpyNWVVdzlJV2Zs?=
 =?utf-8?B?aEpKRGV0WTdydVg0TWg0NEtjeHdPVldtUVhxd1EzMzRnYWRmd05CSFZuMUV3?=
 =?utf-8?B?bHZLV1drMUl6am5KbXhUQVZvZm1SMm9RTzNCclllZ0NpWXdxSm5Ha3BYcjRk?=
 =?utf-8?B?dXBIU0t5ODBFV3Y5UXUwRnFOcUZtaE9VK2ZWQUVQdFBxcTM4ZWZyc3hoMVo0?=
 =?utf-8?B?a0dsM1lYUmFyOE9PSnNvWU5WMi9oMGdJcFR1eVRaOWtBR3J1amFxOStUNlNE?=
 =?utf-8?B?WG5oNHpOc25Pa2xsWUZsMWp2NjNZU2FINlNwMlZZQk45amNsaVdSZk5BZnY5?=
 =?utf-8?B?M0JVeHA1QWdBWnlqdnloZGhOYVdvNEFENGZMY041OUhoaEh1YnlSUEZJL0Nk?=
 =?utf-8?B?U0lzUUZOb3FOS0liWlFxamJBcHVuRGs2alNiVDVZMXcrRVNrWUZXbW5BRFNP?=
 =?utf-8?B?azRNV3JEVlQrMFZ1amJ3UlZuM3FQdVNNRXRGeUVCelc1VGtQTC85L3BGV01u?=
 =?utf-8?B?bXZleDBSVmFySHVmYnczeFRNY0tFSCtLR3J4QUF5bFNQVWNDOEh4SXVjMWFX?=
 =?utf-8?B?TSttTDdYMFVYUlRVNmRnanptMThVelc3K2EvRVY0VWhNS3pRRW91T2NDaGRO?=
 =?utf-8?B?OWRPYmhoSUZNRDhCZEZrSVZzVkloWE5LVldEZkN0RW5tOGtlSVpqUWV2MFVM?=
 =?utf-8?B?ZU5aU3c0aXJaWFZ3TWF4NDV6dndIR1gwNEd2SW9kUHd4WEFuWTdCenduNjV1?=
 =?utf-8?B?U1dJaVo0b1V1am9xM3hLc21peXhrcnVwemw1QWh0YXVLNDVvdGh5NGRxRXZn?=
 =?utf-8?B?bnY2RGN6MWQyMjludkdBZXl0dE1VNEwxRWo0ZkVjcENJaTNmOVJoRGsyNkt4?=
 =?utf-8?B?WWhmVEdkNDdXekNjNklzTUhEU2V3ZThiVGpBZ21LRGQzV0ptNmpRQkZRMWhy?=
 =?utf-8?B?OVErQjB2dktuNnNMVXprd0RWc2EwT2lBWTVoa0JQUVY1UnNwbGJKeDdscy9r?=
 =?utf-8?B?aDdCUVNWSDRzamY0VDBXQTc3cWlNNzZzdWYydmF0UXZ6MWQrd1ZBTWNtZkxs?=
 =?utf-8?B?dmdSVTRObzQ2WHRWK0VFQ0JoMVlnRDVKNlF2NEdGdmhaWmtiOHJ5YkdldEZM?=
 =?utf-8?B?eWRFODh0M1d5d0F4L25UemxWZDBuakwyL2FLZFNERGFGSnFzUU8xMmJ5TUJs?=
 =?utf-8?Q?f5D+nZV8SZHzNnnRbZUYD3chOAzqn6jVVHwF0=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS0PR06MB9877.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(41320700013)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?OUloRXEwOUZ2NjQxQjNSbHptL1p3cVJPMnR4bDQxZUlnV3h2aVlXbGNOR3E4?=
 =?utf-8?B?djVad05rQm1VRHVQL2hiOXZUeThIZmNETG5GWlhJSDVVa1lqNklZa3oxdkh0?=
 =?utf-8?B?cW9tblhLN3orckJyNHMyVEtpTldhMlFUR0JFZ0RJTjR5R3R5RnV3MDkxY3pz?=
 =?utf-8?B?ODQ3ZFdIT1h1SW5wODEvSWwrNkRuSlFTMm0xNFN6b3dselhZQWNDRXlUWkdI?=
 =?utf-8?B?aktCTlNsRjFrdm0wM0JlZGx2ak4vdy9yTGx3TFRqV2ZRZTV1N01DRHNQRzF6?=
 =?utf-8?B?Z2hrc1hXcDVIenV1NDJDelRzR0dHdTVGejlvM1IrM2EyakUzUnVvWmpmcmZk?=
 =?utf-8?B?YVJFMGZ2R1RJZzNLSTFWT2JSQjJkL1l6UXVWbHZMVWFTOXZlc2R6Um5CbDVh?=
 =?utf-8?B?QUZ4RVFPRzlYRnFHdlo1c0pwOTRSZ0VlSG5EbEZVY3Jua1BpcUpJakg2RmRL?=
 =?utf-8?B?a0ZYVmNkWGlTT0YxTWF6T3o2M012Q0haTUpUc1lwcFR6WVhraGhoci9LOEFk?=
 =?utf-8?B?dTh2WUw3eHowaWh3VFY0eXJhb0lpbjN0SENvK2RnaGtzU0czcmhUbEJlWkZl?=
 =?utf-8?B?bGRvTVZlUmZNeFNyeHVVR1pud0hHcTJka2h4SHVORmFEWTUrdEhiZGcveTAz?=
 =?utf-8?B?TCthR0tzMndlYjVvTHhHcnRNY1EwWHBaN0M0cGR4SnJ1cGo1WDlJSW00SEFE?=
 =?utf-8?B?bDNyVGVOVWFVdGZrSDkwWlE0VmZOa3N5QmRNQks0bktWVXVONzIwdHdyMFVk?=
 =?utf-8?B?SkpFN1VROEw1Um14KzhPanN0VlNzaHNtSFBGNkh3NzNiWjEzUEFrK05CNzN5?=
 =?utf-8?B?c0hHRjArMDRUdDV0TmxxaFRsK0tueWhOUng4V1VJcFZBa3hIMlRNVS9HSzRn?=
 =?utf-8?B?S2g4Mml3SGNsMlNLTGhTeW85bVpZR3VwRHVOVzBUNldVamxFOEJjTDVQeG1w?=
 =?utf-8?B?THdtait6QlZSQ1dsbCt6VTB5OWRQYnM5ZEo0Mm4zTjIvdFFKOU1ualFsK0w2?=
 =?utf-8?B?bTh5VHB1YW1DLzRBMG0vS09XQllUOHZFcnRkWTJUa1ExWVppSHliNEQ2MVhh?=
 =?utf-8?B?Y3A5L2FmcXl2bEhML1I4bDk5ZG10K3hCSzVQd1NmajlXT2JCZUtTVW5YQ0g4?=
 =?utf-8?B?UVNOVDFFcVRxZGNaZUdTMDMxK3pyTnM0WldwOGptbWhkR3pHOUZaM1Y2TERR?=
 =?utf-8?B?OXhXcjMyL2FmVTBxWHhhc2pKQ0J5SEc3cWR4cm1IZkRPSEpQck5Jb2FCSHJX?=
 =?utf-8?B?RWtEUHhoRE9WeU02cHhCNjQ4MGNsWDFJOTlWNHQ2a0ROS3hObGd2WHlkTXlw?=
 =?utf-8?B?d0lMa3ROYVNIeDJWVHVTajdBQjlUWVN6Q0hsTmlEL0pkMlpHcU9ZTUFtWTVL?=
 =?utf-8?B?YnBhaCtZTXg0b2dxcDJJY3ZPOG1OdGtJVFVYNGFZWmRNOGdWaXcwc0ZxejRV?=
 =?utf-8?B?RUJpRitQYk5DMFZ6ZVE5MnowOU9FYldNemxCc2tiVTZacVRROTcvRnJlNWg3?=
 =?utf-8?B?SmNrUmZLeG56OXRnR1VuSk9HYlVGSVAveXBTalE4RWkvU0NlU2s0QThYVFpS?=
 =?utf-8?B?cEg2RDdCakRMaURvb1EzdW0rWCsrbjFDMWdpUFRtNllnUTR0TG9jbHR6R0Fl?=
 =?utf-8?B?SXNuNzdvS3RMRjgwVmwvREtVamkwdzZEcFloMXovcnlBM0pldVlpanRLTG5x?=
 =?utf-8?B?TFRWcW9LQUlqK1pHYXZWWEovbEVDaHNCNUZIbjJCMmFBekdJL3AyWFAxcFk2?=
 =?utf-8?B?VVZBekc3aUlEN2VjVjRXWHhEMEVDaHB0VjBWdXVhVE5OQmJmVzdBWGs3NTdy?=
 =?utf-8?B?eXI0WjgvaTVxWWRWR0JVeG94RlhDTUtWVjNIaXNCTUdCZ2ppam8ySnVTWjNu?=
 =?utf-8?B?VXg0SVpHNzVwZDFvNjBtT25JY09aZVZmUjYvZitpN1kwL3R0aGpwT3ZpUVFE?=
 =?utf-8?B?dkJDNy8wZC9wcmNWVHRGbXFsOWdWT0xGRUZraHNxY2FVTWVLMmlCb0E5enBU?=
 =?utf-8?B?TG1MQjd5bU1RYXFJdDJrRE5mbWhINERmaUwyM3c4NVpqREM1eEJUZjZjZ0Rl?=
 =?utf-8?B?dUROdEI0SUo1ZkNEZUpkUVVxSFd6WVZlbWE0NEtzNDBEQ2U5QXpzMjVhZzJx?=
 =?utf-8?Q?ChkM=3D?=
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: 85e79fe7-4818-45da-96fa-08dda9cb1fb8
X-MS-Exchange-CrossTenant-AuthSource: DS0PR06MB9877.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jun 2025 16:06:43.5509
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vGYqAOWN7hmagnqVpdf6MRwVNPplG2lhpf5X4pf3HKZ8+Yw1/pLvWRQ3hOyKfvev
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR06MB9314
X-Proofpoint-ORIG-GUID: 8l_MpvDSQ_lH2tkdGFKaXh6pm9WiJuuN
X-Authority-Analysis: v=2.4 cv=dMWmmPZb c=1 sm=1 tr=0 ts=684afb16 cx=c_pps a=vpjtE0IDB9unjKrky2awtA==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=lre9DRYkaIEA:10 a=BCCgzu0JAAAA:8 a=vh6A2P0UY_3Uru2j8e8A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=G38RWgnJungA:10 a=LcVy-NwXSkDgD1TuMyfF:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjEyMDEyMyBTYWx0ZWRfX6S9364B3zeqZ 3so/zTRKIDLfmB8qjfTbH5mT1hjRtL1JsugTrOWbBUm9xL9bf/dsReIJr+CnvZlStod6gsJNm4M NL7DpkR2s5WZbEJ1ErN9zf4sahKh2krKTrYkISk1/TccHccKDKnBAYp01U1gaWxI0eFM7QRj0tF
 a056VdALgVLKCKkBSHMk7CMPU3e85S14t+J03/MAn2aer9636GjPpSvQMxt1ed0Sv0CZ9M2JPz0 qkdheRJNz2JbClCgGuRkP2+Y+BoIfgIY5tfJbA9XHvPFf3mHT7yJD6Qtw6ulpC0aMirTM7XEXa4 7mTQRIlXtag8isuNSknCvPrx9PpY5Yo4F93BuXUdN+Q7vcLWCcx3HNoGqeXaaDZzc2cia55Q28N
 Ve0p3onbisRZ9tSL6BhJFoZxKaYThWmumZdD51+gqauuARqo8QOx6LneL80xx48lLx1GJQ0U
X-Proofpoint-GUID: 8l_MpvDSQ_lH2tkdGFKaXh6pm9WiJuuN
X-Wisc_ValidFrom: true
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-12_09,2025-06-12_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501 mlxscore=0
 lowpriorityscore=0 phishscore=0 clxscore=1015 bulkscore=0 suspectscore=0
 malwarescore=0 spamscore=0 adultscore=0 impostorscore=0 mlxlogscore=783
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506120123
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

I've been poking around to see if there are still any hardware synths 
available. There is something called a Tripletalk Mini on the Blind  
Mice mega Mall.

https://www.blindmicemegamall.com/bmm/shop/Item_Detail?itemid=5323293

It does not seem to have a serial cable connector though. Correct me if 
I'm wrong but that means it would not work with speakup, right?


