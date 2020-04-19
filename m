Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id E25E81AF66E
	for <lists+speakup@lfdr.de>; Sun, 19 Apr 2020 05:27:19 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 9FF3B1C57FF; Sat, 18 Apr 2020 23:27:18 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=verizon.net header.i=@verizon.net header.a=rsa-sha256 header.s=a2048 header.b=JaxRxKgc;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id CA2801C73C5;
	Sat, 18 Apr 2020 23:26:21 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 937DE1C57B4; Sat, 18 Apr 2020 23:26:17 -0400 (EDT)
Received: from sonic305-3.consmr.mail.bf2.yahoo.com
 (sonic305-3.consmr.mail.bf2.yahoo.com [74.6.133.42])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 831AC1C0B50
 for <speakup@linux-speakup.org>; Sat, 18 Apr 2020 23:26:15 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=verizon.net; s=a2048;
 t=1587266774; bh=i84T6404CG2Lz3vW07JxfXec2iByDnQ+iS2TUrKSpYg=;
 h=Subject:To:References:From:Date:In-Reply-To:From:Subject;
 b=JaxRxKgchJvgdUin6mC6TlyZV85HPu/ebhSfqrfLMOWfpZBsyOOAoUZhaRs7KX4Nu9Jcc4d/gRNkWXoZ8NtZNKZZ8iRN6ZkQ0HRwo7fl+WTV14HoCfIXeMBFKE3xZtir7/Xey0RbzOGqVtESUN4A0QiF2mHFeTr1Y6l04lH6QUlCmpOpHyWIkziVJs0eGGUUtGZFA9sa1Ha3QQZgIGRJ07ybYl77kHlVGklcdMjzgzyPdPL2dRUxKAovHUZ24vj5NgBL+NCd5LBtPM4Au7AIHm6+iMhBGSkTlwjpDM3K3YMnswIXuswm92t6W08+c8aaedlqNSd+KzUO1soXsBg10w==
X-YMail-OSG: llMFlFEVM1kiCi1H6KGV7A8kG7xWBkBVKdgkLvmem6vIe_Mj0bhcivGH.2NCT3S
 UzN3tAmo67eyrTTr6UHdf6R8nrSZQ3kxgQ2v0kiEhjKNN0l4PAlS.Ijtv_fYD3cCY_lbcuITCjqD
 1i_PClvomEXlOld0zMubHnfQQdot_dcW5z6tAfbsR7IMeTPLKgxvwDbBdBAP1vHGlArShw5no3Dz
 8OSalaVzGSIbc_iH8CVGxOp7IajFanvqqFfrm5K7yDggoF12Yn7ywpEHQ0TeQLTizeVVgYDbH9L4
 preHThtCuu__wp1oeLgIViMwDAaLrF21ay4H_ewoKmSSQoPZQjxFq4IHYhyj6sHcGm3CFDyEfwzJ
 .I7PDh2s1tWGmsHA96qp8uElPcrELzJ4S1bPw4ktuPh_3EKF7cf0W5BZh.tGAunsvqtWiDCqf9GK
 UaeNMXf6yLvnQ0BMvUJ0vvSMAXviO3rpjawMnzBltV.FdUg61QtWzefKJNS2N1C4bxC9wvMNijAN
 omYwfSWoO3s2E.1gyo3NV19NtceWf6FK9vmsfLR795v8dJQagqoXgyX0fYkxltcwDEHA16ALEP4y
 4NseW5Il8Hq8HfkVsvrKAb42XCO0Vvg4fT0crfoamwkqeKBfwf.EiV_YzZAoOv1TLBdWiFPKOxha
 4noUpSQam.OLdyHWjzZ2b6am1RAlZPeIj5D4qghAmRnK4UvNViZliBjCvz4cOxPyhlanQhqzU3Lb
 c1pDVkOzfLGyPaGClRuJV_ZNhbVW9EUTuziini5VLibtvK8sFk.TwJoB4ALAVdryieq2Skdal8OJ
 XrRwY2iebRL.qcbZQ7pj5OQEb6llfad_3f6j3XLMZ9avJXq0Yx8DW3AsRDw5ecgVKRTqyEQciewF
 p_jp3Rbzx9LzrkwSU5SmfQHCiGwj12r.qF1GLxO7Mj5vo3pCP.8EYiw.QekHQH6ikpRo5ETlI4oL
 wWcmoWndpgCTLR.EYl2b_higSg3EiL99.DksvzqhucXsHg_w90geuGBb92Z6iObG61IHN3Rz3.kL
 Fw0BVbsSxBuAuXw2LrsqujdYW8pXpAKxpfNyZrjMDG_pShiJe_JgunLtsYAWACOM280NPCykvtnB
 YMmN5vlILo_xo4NPTb89rO9gS79tkH6MQZGDj_dRAyMMvQIvamrC2rbaIf0oi2sic2P5VRO4Sa6Y
 GNBkMLpZln5HhOHle8fkjFpzsgCiMrJx9s1AQeycX72t.4A7r00IewIS8X3VonOachthWtD7RFV8
 5fhvv5EgiNHQmZcGQImS5JNoG6y2fceeZcFl2nEubOyxPeIxhfLH4cSGVN1qvabptWS8JhefjBzk
 FEVPZzbERCwG51uKcPGkW1EveKHTlqJ9fUU7WL7EXEFXAewTCVcio10cwuGOTWx6V_xp01320X7_
 avBJgl464DIGI6Yfeuwe1O9higcgu_KNilpSsJfAH5bhKEraUQS7Q3A--
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic305.consmr.mail.bf2.yahoo.com with HTTP; Sun, 19 Apr 2020 03:26:14 +0000
Received: by smtp429.mail.bf1.yahoo.com (VZM Hermes SMTP Server) with ESMTPA
 ID 700b1f617e820d90b57863ba5db44f79; 
 Sun, 19 Apr 2020 03:26:11 +0000 (UTC)
Subject: Re: DecTalk Settings from Within Speakup?
To: "Speakup is a screen review system for Linux."
 <speakup@linux-speakup.org>, Gregory Nowak <greg@gregn.net>
References: <Pine.LNX.4.64.2004142055040.3919@server2.shellworld.net>
 <20200415044239.GA6357@gregn.net>
 <Pine.LNX.4.64.2004150141390.8315@server2.shellworld.net>
 <20200416232813.t2zszb42qd2icfks@function> <20200417004033.GA5829@gregn.net>
 <20200417011211.yz4a7gch76ewp6j5@function>
 <Pine.LNX.4.64.2004171438170.15807@server2.shellworld.net>
 <20200417193714.enlesc2vad3phjls@function>
 <Pine.LNX.4.64.2004172029030.20019@server2.shellworld.net>
 <20200418011411.3z37lu4w54yszjt6@function> <20200419022742.GA4101@gregn.net>
From: Al Sten-Clanton <albert.e.sten_clanton@verizon.net>
Message-ID: <9a9d7074-7d2a-d312-9057-7a256c5ceff6@verizon.net>
Date: Sat, 18 Apr 2020 23:26:11 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200419022742.GA4101@gregn.net>
Content-Language: en-US
X-Mailer: WebService/1.1.15651 hermes Apache-HttpAsyncClient/4.1.4
 (Java/11.0.6)
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

I second Greg's sentiment.


Al


On 4/18/20 10:27 PM, Gregory Nowak wrote:
> On Sat, Apr 18, 2020 at 03:14:11AM +0200, Samuel Thibault wrote:
>> Why am I working on speakup
>> then? Frankly, when I read messages like yours, I do wonder. I just
>> happened to go by and see that speakup needed help. If it's not welcome
>> I can just merely leave out speakup as it is. But I don't think that's
>> what you hoped for? Then like I said, avoid sending the kind of harsh
>> message you did, I don't see how they can help in any way.
> Thank you Samuel very much for what you've done for the speakup
> project over the years. It is do to your help and Oakash's that
> speakup is about to be moved from staging into mainline, and I believe
> it is in big part due to Samuel that speakup got into staging to start
> with. What you've done for the speakup project and debian accessibility
> so far is greatly
> appreciated by myself, and I hope by others too.
>
> Greg
>
>
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
