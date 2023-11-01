Return-Path: <speakup+bounces-1049-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 431BB7DE30F
	for <lists+speakup@lfdr.de>; Wed,  1 Nov 2023 16:35:47 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=math.wisc.edu header.i=@math.wisc.edu header.a=rsa-sha256 header.s=selector1 header.b=lINjdjxK;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id C992038264F; Wed,  1 Nov 2023 11:35:46 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id A327D3821A3
	for <lists+speakup@lfdr.de>; Wed,  1 Nov 2023 11:35:46 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id B09A73821AA; Wed,  1 Nov 2023 11:35:38 -0400 (EDT)
Received: from mx0a-007b0c01.pphosted.com (mx0a-007b0c01.pphosted.com [205.220.165.71])
	by befuddled.reisers.ca (Postfix) with ESMTPS id DC8B3382127
	for <speakup@linux-speakup.org>; Wed,  1 Nov 2023 11:35:37 -0400 (EDT)
Received: from pps.filterd (m0316037.ppops.net [127.0.0.1])
	by mx0a-007b0c01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3A18uorW021840;
	Wed, 1 Nov 2023 10:35:28 -0500
Received: from nam02-dm3-obe.outbound.protection.outlook.com (mail-dm3nam02lp2041.outbound.protection.outlook.com [104.47.56.41])
	by mx0a-007b0c01.pphosted.com (PPS) with ESMTPS id 3u1mnn2jgf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 01 Nov 2023 10:35:28 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fr5kfoyFZzgce6/ZUuA1lYKN1mEx0XtTobFAIGnjnodQR+YRB0egvS9y+kWQstPXy3a0qDiZjWgj53kW13jkXTCVMhPfuKFGXqVHWa4lmvPXU/s8el2AuLom7HoLKHYsByqMSccgNcGA4kYKiGw5DYqcfjeGXd9R2SuoO2M0JR9tTDCCInsvc8AYF0CILnyfcSptlf+PvB+tCZt/D+5zqLupASwWA3NwyLYVcZvf8fzTNup1kEPJys+4G237+wQEHSW5ZMEMozyOK9c2ikWP9YPvYcykV+EEjUJLhJRJsfyubE2KDMBefuJz2S6VTNiYYLNTLbqMf7axtbv5uwzEBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Mw3wtSN+EZh5xDR/fSWYH1URHvUQ0byOhqQ+N0Wi3KA=;
 b=XnTa7cH22wBz/UW40Hv75ptPeZCHeiLaEJsb3nxmiB3O5PO9BSEFhHa8gPfsVLT+3eUlLZaKDDJv0F0ELYYddApBYJg2BSSYH01mlp1IIFDTF8KkVYD4/8XBfPcln+jYUXaZaaKg0r188x7AdxXMotHa7Be/21BPIljSa3pcBZsEVE9Kxcmarr22tVrFuwWr4hCW5D+FCU/ex9bkyuawOX0uxFCYUN4mS1R1ayRYKhV2vOe4deTZDbvyGOsDQs953EMs9OW5cW09WvzdJvXL2kgX2+TWaQAScXqCr1n+FyU6zfzzqLM+3rf37+7CP2f1DIQQXmiNMgtFKctuSWp6Gg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=math.wisc.edu; dmarc=pass action=none
 header.from=math.wisc.edu; dkim=pass header.d=math.wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=math.wisc.edu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Mw3wtSN+EZh5xDR/fSWYH1URHvUQ0byOhqQ+N0Wi3KA=;
 b=lINjdjxKodxVZmCR9flellx/WyNxi8EiqgEeMQJzRhMxMvxmvcuKvB32iiPQu5bRpkpcX1gPDNgeOa4B9tIiYPRxKvXIBywWZE3z/bt1RwY3rWTzRIsTaSHGJy2rU27oARgcV8j7IloC3tX8jUVxzgMbqLeBEDxPJRuqquvQpms=
Received: from SJ0PR06MB8325.namprd06.prod.outlook.com (2603:10b6:a03:393::17)
 by LV8PR06MB9446.namprd06.prod.outlook.com (2603:10b6:408:190::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6954.19; Wed, 1 Nov
 2023 15:35:25 +0000
Received: from SJ0PR06MB8325.namprd06.prod.outlook.com
 ([fe80::8585:4bf3:41cb:d7aa]) by SJ0PR06MB8325.namprd06.prod.outlook.com
 ([fe80::8585:4bf3:41cb:d7aa%4]) with mapi id 15.20.6954.019; Wed, 1 Nov 2023
 15:35:24 +0000
Message-ID: <fceec413-57eb-44c4-b5ca-10fcb1bedb02@math.wisc.edu>
Date: Wed, 1 Nov 2023 10:35:21 -0500
User-Agent: Mozilla Thunderbird
Subject: Re: slightly different dectalk question.
Content-Language: en-US
To: Karen Lewellen <klewellen@shellworld.net>,
        Butch Bussen <butchb@shellworld.net>
Cc: "Jason J.G. White" <jason@jasonjgw.net>, speakup@linux-speakup.org
References: <Pine.LNX.4.64.2310311538430.3146024@users.shellworld.net>
 <aafd9e68-028e-4122-8479-f966f6eecbe4@jasonjgw.net>
 <Pine.LNX.4.64.2310311656410.3149588@users.shellworld.net>
 <Pine.LNX.4.64.2311010950140.3172797@users.shellworld.net>
From: "John G. Heim" <jheim@math.wisc.edu>
In-Reply-To: <Pine.LNX.4.64.2311010950140.3172797@users.shellworld.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: CH2PR11CA0007.namprd11.prod.outlook.com
 (2603:10b6:610:54::17) To SJ0PR06MB8325.namprd06.prod.outlook.com
 (2603:10b6:a03:393::17)
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
X-MS-TrafficTypeDiagnostic: SJ0PR06MB8325:EE_|LV8PR06MB9446:EE_
X-MS-Office365-Filtering-Correlation-Id: 7489d5f4-43a1-4698-fe14-08dbdaf02a9e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	8RNoRHcqiFK9zxxI8JFDGNT0tD9iyCCv5R9lOn1kz1FEiby8nz2/94cRAAwOJihiQbDr3Rm9EhtELki2elu2fp26/ivoPsdTCa35G8oRzQgdgfaP+eLasniOTkoxTgO+9BzoQVQesH7sMRIzCpnhwRCzaiT1H13fujCpmFaMPt0y8rVjxBpbnyc/sRjuGlrF2RKOrDRquwamAsGQsyExOI154xaj5sHbOImKKLDXZMUVToCacHTSzJ7JYhxolWOAWXDXuMMifCYL06rX2BP5yULOmSqJJ61E/qxUc3MqwxjhUpcmV/nwujaZ12wPl0OxegwsW9W4TtFqoTuAtpzp5xvM6dnuFvEisjhB9NbmeybG1myT8biBikUTlotEe/FlaJOIpMrY4KOmhvaMlouzAQ5KTPvW3bkMGPhN+r5zcco7rYF7QO2AUy3wfRpzrRAErfKoTbeuRCQR657shV/D+4b4iLIemlrbJKaaIeJF/M5jz3N5bEBN5dUO2vXzqRP8l5pRwR8UcAKsVNkgRWEqaTqOo7W7BbesqueDGkvRH1/u4OOSdZz15yngk+eOYIPmsdzxeK+OPZpozjDHcmyJqc702PPXOz958JxQHNh4AtoHN/jj9QOInJG/US6OODd88ag+5ZsKfYRG7K3sZ1oe+Q==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR06MB8325.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(136003)(39860400002)(346002)(396003)(376002)(366004)(230922051799003)(186009)(64100799003)(1800799009)(451199024)(26005)(6512007)(2616005)(478600001)(6666004)(53546011)(5660300002)(6506007)(2906002)(110136005)(41300700001)(41320700001)(786003)(4326008)(8676002)(8936002)(66476007)(66946007)(316002)(66556008)(6486002)(75432002)(38100700002)(3480700007)(31696002)(86362001)(31686004)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?SmVFNFdRV3VybktQWUhqdERFZUR0aWVzbG1uRmtOT2ZmR3I3RnlNUWJ1bFJG?=
 =?utf-8?B?d0VQa1JDUHZpOHI0WmsyRnYxTFlXYW01MUMrUHVVNnFRQzllSmN4bXl6VnBr?=
 =?utf-8?B?RzZpVnNxV0xuWDVPSGZtRjJYOVpQVkZmbFREN3JWQlRWV05XenZpMjZHV3pL?=
 =?utf-8?B?Tk1JV3ZNZHZaYTI3UEk1NkY1b1N3M2xaVm05eU5Jc0c1UU9LRW9LMTArS015?=
 =?utf-8?B?WExuaVg5a1hIMEVQMGdnSGRsTnFpeFFSTUxobWhOTWRDRjJuUzV3LzFDR3M5?=
 =?utf-8?B?eFlMWEhYZlk4Q1oxamlXYXN4NGoxdTBaT2Z6dFpqSHEyQy84MEttSEJicUpa?=
 =?utf-8?B?Y3k4T0orOXduU0k4WVZZdUVNSndwakdZamZ0MEhKcDVIWHVkdkE0bk1Zd0dt?=
 =?utf-8?B?aVYrK2VwWUY0TjhRNnhtOWhwM3JYbGhIL3BIV1lyMlBJTDRod1lGUkVwckt1?=
 =?utf-8?B?L0xkNEVvNWozVjZtckdrZWRLZmRCOUM1QVhvY0hUYnZpY0ZzYUh1TDM4dyti?=
 =?utf-8?B?Yk5iVHJjb1hiSnVMd2tqdmhqekNBc3UySDhKcDM1WWlkSkFnbzRWMjR2TVlI?=
 =?utf-8?B?YnNjZFhhd01EVWQzNkdmcXBVTWQvQXlLRVozMFpPck5wZW5tUEpmVFVXUW1P?=
 =?utf-8?B?Q2I0UnpOTkVrQTJrTS9TNlRqeTFxUE0rZU5nQU05VDl1clhzSktmcmljaWpo?=
 =?utf-8?B?TWFOSVo4M0oybzQ5TkZnM3FscnVsOStvSTk5amVxS2haQ0tJZzdoU252U1A4?=
 =?utf-8?B?RHpraXI1SS9XOTNMWTdDMHhVK3dNdXBvTzU4OFFmMXdsWXpVbFArL1AxM1VJ?=
 =?utf-8?B?L21KdjJpT3A0VjV6Z21lOEhtYmRiVXdGK3lMbmlhUWFTSndFSWlXVnRwcFBH?=
 =?utf-8?B?VmllWWQwa2hNa2toZC84RkI2ME1MclFtSnVjVjE5OXdMNFZiNkdRaExFTDhy?=
 =?utf-8?B?ekQ5c2JCRG1PRllUcHVHTkVYU2tnanRrbVZTeEdjMjJHa2hoUHlQOVhTN0lq?=
 =?utf-8?B?VTlxR0c1VkY0d2gvcDJ6N3g4ci9xblFLelpIWHk2L3JKK0xBZ3l1dTNsSVZs?=
 =?utf-8?B?YzVHMVQxMVdIak43d0Npc3g3cGtkOVdpdXFvYkFoOEFqWEluVkdkWFpHWVNo?=
 =?utf-8?B?d3hJTG1qVHJkWDR2NWxZck1LS1BlL24wazV5ODFZelQreC9HeGZQYXRKUGRY?=
 =?utf-8?B?dWJ4ZVc0K0pnYVViN1lTK1BZaVhsWDNjRHJQa1NkOGlmbXNpajlFbG5WUlBo?=
 =?utf-8?B?SDFCcUFzQWdZS2hQZGdOVXhiUFFKWHZlQWQwYXBWbHlYYUJmOGxhOXdkNWl5?=
 =?utf-8?B?NG1TWnVha0IvQzd3TTVYc3VBc2MxV29weHp6aks0KzBGTDROR0pzWnRPNjZC?=
 =?utf-8?B?SHdDVUo4cWhoaEx5K3NZNEpvcHhmVFZvS0l6T2Z5dDV2Mm5PN1BBdk9GZFpI?=
 =?utf-8?B?VFlESnBNQkpycm1oZlgwUGZySytaT3RJUjRjVGJyTEV4eGhBdnhwb0lSNXZR?=
 =?utf-8?B?bEQvNVZHdEZtVHBFVjdONmJFWG8xVFV5c0YyTmcxOXoxN3dkVWJSbUZCNFgw?=
 =?utf-8?B?ZEtxTVU1Q1BnR0ZBbzdFR1FJTjFqanJGY1Q0dkhKRG82VkhNTWZnaUprblAy?=
 =?utf-8?B?YU1wbS93S2FkZmRRODUrc0Iwd0pabGUyVy9UMXNVeXdoWlhCMlp3SHRQUmVD?=
 =?utf-8?B?d0Y4UGovZWxqZEl2OVR5NFpWblZ1YktKN1BGZiswZDdBSmVTODZ0Qjd5V3pE?=
 =?utf-8?B?Z1p5Z2poUGJvYTdxOTFtZzNQKzhmR0VYQ1BiSGNnOWRoSU45djlkZTVMV2Ix?=
 =?utf-8?B?cHA4dGZha0c5cEZleFJIMWw2c05JQ251dnA0RXQvZWk5cTZ4TmliWnZ1MlVn?=
 =?utf-8?B?cm1kdWhpRldwejkrMXRJdVR0a2VDY3dzbXZsK05ZZ1l3eVJYVldwd1ZhZHFV?=
 =?utf-8?B?a2pBYmp3bm5kUWRYK2dJR0prYUVuMVpRckRhTE1uQTRVUzh5MFp4aGVYRlk1?=
 =?utf-8?B?MGFUaWNNcE52eTZNbFdQZUpGZFY1ZVluTW9KL25iK2p6VU5lUXhvK0tUeDJW?=
 =?utf-8?B?Z21KdlhsREtXQ3hHS1VCVWdHU0dhQXcycTFYTzVCZ0krQjlnbkYzRE5tbEtl?=
 =?utf-8?Q?Wmr0=3D?=
X-OriginatorOrg: math.wisc.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: 7489d5f4-43a1-4698-fe14-08dbdaf02a9e
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR06MB8325.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Nov 2023 15:35:24.8978
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: E4xbr6p0vJiZUXthDZt9RPCbo779T/fDal7vkvtEPAyzTA7QmveCzz/n43RL7JUf
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR06MB9446
X-Proofpoint-ORIG-GUID: OyakBPmbK_ujc1fC02bbuQMUIsi1kqKR
X-Proofpoint-GUID: OyakBPmbK_ujc1fC02bbuQMUIsi1kqKR
X-Wisc_ValidFrom: true
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-11-01_12,2023-11-01_02,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 mlxlogscore=550
 priorityscore=1501 adultscore=0 suspectscore=0 impostorscore=0
 malwarescore=0 spamscore=0 clxscore=1011 lowpriorityscore=0 bulkscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2310240000 definitions=main-2311010128
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

You can't really justify this in terms of keeping a machine out of a 
landfill. That machine of yours is going to end up in a landfill one way 
or another. There are thousands of newer, better machines going into 
landfills every day. You could just keep a different machine out of a 
landfill.

If you really care about keeping machines out of landfills, you could 
learn about Linux and start salvaging machines for other people. When 
the pandemic hit, I got my hands on 2 older laptops, put Linux on them, 
and gave them away for people to use for Zoom meetings.

But this isn't really about keeping a machine out of a landfill, right?


On 11/1/23 08:52, Karen Lewellen wrote:
> Speaking personally, it depends on your part of the world.
>
> my new one came from a group here called back lab that in an effort to 
> keep items out of the landfill  insures surplus motherboards and the 
> like get  kept, for projects like my own.
> But that is me.
>
>
>
> On Tue, 31 Oct 2023, Butch Bussen wrote:
>
>> Where does one get a computer with isa slots?
>> On Tue, 31 Oct 2023, Jason J.G. White wrote:
>>
>>>
>>>  On 31/10/23 15:41, Karen Lewellen wrote:
>>> >   Given dt.bat can be edited it seems,
>>> >   any tool that will locate the dectalk internal card?
>>> >
>>>  I am not aware of any such tool. There may be a conflict with the
>>>  addresses and interrupts used by other hardware in the machine, in 
>>> hich
>>>  case you'll have to change the settings on the DECtalk card.
>>>
>>>  I've long since forgotten the details. The manual should be 
>>> included with
>>>  the software, though, and it should document the switches. If I 
>>> remember
>>>  rightly, eliminating these issues was among the reasons why there 
>>> was a
>>>  move in the 1990s to the PCI bus.
>>>
>>>  I would suggest putting together a good plan for what you're going 
>>> to do
>>>  if you can't get this working, especially if you expect to rely on 
>>> it. If
>>>  it's just a hobby at this point to experiment with old technology, 
>>> that's
>>>  fine, but if you plan to use it for serious work than make sure you 
>>> have
>>>  alternative options in place.
>>>
>>>
>>>
>>
>>
>

