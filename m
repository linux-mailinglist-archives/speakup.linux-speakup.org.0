Return-Path: <speakup+bounces-1333-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 904CAB53F92
	for <lists+speakup@lfdr.de>; Fri, 12 Sep 2025 02:59:43 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=aol.com header.i=@aol.com header.a=rsa-sha256 header.s=a2048 header.b=TJv0JvaW;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 022E2382B99; Thu, 11 Sep 2025 20:59:43 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id D8768382AD6
	for <lists+speakup@lfdr.de>; Thu, 11 Sep 2025 20:59:42 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 9039B382AD7; Thu, 11 Sep 2025 20:59:35 -0400 (EDT)
Received: from sonic303-22.consmr.mail.ne1.yahoo.com (sonic303-22.consmr.mail.ne1.yahoo.com [66.163.188.148])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 81411382ABC
	for <speakup@linux-speakup.org>; Thu, 11 Sep 2025 20:59:34 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aol.com; s=a2048; t=1757638772; bh=Uz4qmTn3dbgv9WkO+SUTDKLJ/VaeQ9vmBaXn9g1Vhng=; h=Date:To:From:Subject:References:From:Subject:Reply-To; b=TJv0JvaWs4rSJpugrjXVjztDWcrEWgSVBhhk7JhkYLtqgpLByiOQ8S5i1Mq93JazbVIF3bKZhXayw43u/g4AjWyDHHUnSL2po4RS1Y5Brw50I/bdqNt6FV8INCbDXlWHiw5c9314FyUSmC4REclMTUiDc9vbX+mgmzcFlukg71h1cCDnS60KoQY2wNlOqTijDe8hQl09HE7Ao8pq6kWDabluZmNT5TkjJS31Ddb5gU6PgzaM0WJ6P26RQhNsB3LbQFUYNJpH4DBugc9Mod9LqvB8/jNcCK+ET64QDQq/9+KYoRKGmmZcNvaIJ25wbBBfe6qp+/OG9OfrB8t2o5s9+A==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1757638772; bh=EBr1rZjP2cPxJD9Ynh1bxn3NO89mH3daAk7bftLv+mQ=; h=X-Sonic-MF:Date:To:From:Subject:From:Subject; b=Uyb1Cj3w9UzL8NVRTqZNrl8F+1nESBJSDxbfi8jPzs+R2T+6cZTCJF38QpDPm8odvEdGDyQMKHfDs2nn+plEzh8sTYS/NdPLACXBAsqXjr+Pda05u3xftxsR1EC0c5m/gYccqIFVD/mPDJcyJDSuObdUtEBVC5nOf4V11z4kaKbGUx7zBY0NPeHAeSKqlHJZvLt/l7Zw83ilvF8j9QsMXKJlhTb3YkBBvyI19SopH79vUgFFCj9B7FyL0UPaSW9U/tZQH3HxLLvhoSXB9Kw6vP3ks7C2yrd7JbkRx5Mshjetyy0eqV0hTKKK/r5K6KA5NDFZ5pujSh1QgWEYa06ZKw==
X-YMail-OSG: TRC1jz4VM1mHOi1FLXP.MHB4.bE0hl1oafhMKbdbrY5lJhwRxMOj9kE2Q3MR2V5
 N5BfaRvvaIGktOVj1EsrW.vqEa2RYob9I1SskiqUqsG9G04d9ld8G7xCwP1A.gbPqDSbh69tqjJb
 h9k9kmd6quEHdlxHexrwDF2Uedh_IECsutrwxFJ5Kq8v_pcuvpFrgCVMPxy6wuokq59JrDmLqP.a
 lQ9WOGnUZ9rCIl144xC.RNsdjW89wE_2LGdtzmE_ooce55UaNdSsfE19cHf6vp54iUP4ls9MaZsV
 oWS99h9K90YA3sC.w5_QtAzkbJaGlZZGaP_bUVsi7KgqsQAb2F_cxCb3s.mSuG8ViyxwregD.jPH
 yKDJvatf9L._H5O5RRnhWmm2b.vfqwV661K_nDmZ2Hc2o6CGq8vctNSiNH6x8O0dgU9prnabIiy0
 RZuUYMoQuClbtUhc2fa3x9MfAsIT7nASm6Jgf.OWzFht0W068KpxCm0Gz3TzxaMi6Ma7LsT6EglJ
 h84AVzPApHIk7HNsUTvhweunGdkfq2wIPZ0jrZqnEX1bcPL37SNZuEd6nHAKLuqj3KkPuwjRh8dL
 txKmBgoS1TGta5sjcIbLYaUIlSwG9goSoRABk6FBG6H77fS4E40ysTzAmPxH1fPRXLGavpNfsZY6
 N.AhDfaa73UVWL7DHWU17mfC2snOQeBS9473D7foDv_U7_ArEVz_Xo9C27l0NLHRXm7bCwlEW2qI
 DO9P8an_NYsrml.7CnF4nXuKIHsT6OctO0RFXwo419G6bjmn4OhydI_sIWA8vmN7besAJhZ5ce6H
 j6y7C4wtUe0LKoboapqDuLYCpSgJvWUGOZSDtt6SH.EIjbITfJqtpdb3rIptmC0Wsr5atwQOhtbC
 8.398i.phrEewNPLOB0bumFp_eC7yoRH3yqLvGIJItdo5wBnANHYLOWiwMX6rnh20VTyw1obd8vP
 t4dD40cB.Zlqp3Gt1Q..b_C46uhzmJJLEAu7.aw3wR9wAx5NxBnEgDivYHAG9QsZAtyxw5v3imPh
 .uY4r.n9OlVEXpkxGsI6zeIIRn4Q3TmIBVVZHBySdGzdamRovDD.0qX0B0IoC7YVMPdDvBg7ZwuQ
 ZXzKV8vsC4pAuaKq6BnOZP6Sj1ARGjlqSZdoDt5N4tLA0_VviOd9tXJmH9Qr0y7JeKpsZe3.SBS9
 5jZpFx7efYNlWh5NvU8zKIpVJTwwj2czV.zsXSAmF8R_cM6Egz9J_G5EV7dtv1LAWa3hylaFmeyZ
 j9r9BgB0KL1FbyO23MKJge028tKAk7yhO8GVnLXxp8rBT8Hv6J.Sg7Gc3JWs9LbDCwiJ2fHSBUOS
 F9XvdCZgOAIhdjQhdnuO5l290mlwxj_msecI0_40Ny8K4C1ItWiUXftkgm7gvuneo9Dg1YUtU7ol
 Rd6PHRAoFLKQK.rfbj9IXqFsROGpjvX2Ow4oJm8z9WB6v4DFEEbovD6EYlYOj67wUmXX4Vp5VUA2
 2ECFZsDFThDU3JA.mnkiR_fLEs3QC80ZlW8oI40bmJuUS4MnJ8IQTNtwJuU1BUhsZZ5bISSOk8K9
 mp0s1.sjcfWwEN9ddBiyN71YaMgVqkYEsyZXbRuvNi3vIKmdgOU9UbJJGeQVzVkAlWS5jdCVFtKQ
 Cmawo8xK89s2g3SuJjQSHEouOG2BzS2V_OBrQsvaCKxBDdfLmBL0xftDBALP1VQecPLGHimrx1jd
 JgZcplF1i_X8PBOjbOVw9upkJtI_FbASl.X0Adj6JPmmVauXL8sZqAoNuDEwAeMBNv.MdsBucDGo
 2IoR3ehC9nhzW1VKY1acsygph1Ko5z5Iauehga9Uo.XdknCU3d.UaZI_VIpcRi08DmyQrqdH1UcB
 .LHhGcFvxOxHen9bORw0z_bOosQZ0BwzINhDx5gjXma3onI6BfP5.yKXrrAOS_eO1l5vKAU4IqAM
 vmhSR6H_94YHqAATk10NEzCcwXd4j3NBBaWpYNL_xC7Ly6XgnK95.TtwSY.ZV9CBwb3GxymbbR4G
 Xo.atIu60PGprrz4m.P7oMB6d6Lc_8vFu88LT91g3EJiQQFpUfDuUnCIEDo6CAwYaf9.3J90LEuf
 42KtrT.DETDStzJYRZt3DwacO7k7L7kMhD1Lugf2YSQ3Y0NZyObmmOtDmGjgdwmQzYLzzvuja8Pg
 R4wXW5DJav6EP69qH9MHxhhxpFP6BkA7EQr22_fEKC2oAxngzm0vDu5O30CGE
X-Sonic-MF: <kb8aey0@aol.com>
X-Sonic-ID: b4b723a9-d16e-4621-9287-a5265dd02bae
Received: from sonic.gate.mail.ne1.yahoo.com by sonic303.consmr.mail.ne1.yahoo.com with HTTP; Fri, 12 Sep 2025 00:59:32 +0000
Received: by hermes--production-gq1-7bfc77444d-x4kjd (Yahoo Inc. Hermes SMTP Server) with ESMTPA ID f4654dbf68cc63b456efc571e58079b1;
          Fri, 12 Sep 2025 00:59:30 +0000 (UTC)
Message-ID: <ff1bea79-52c6-45f5-bc66-8245fc99f024@aol.com>
Date: Thu, 11 Sep 2025 17:59:28 -0700
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: speakup@linux-speakup.org
Content-Language: en-US
From: Michael Coulombe <kb8aey0@aol.com>
Subject: regarding booting into memory.
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
References: <ff1bea79-52c6-45f5-bc66-8245fc99f024.ref@aol.com>
X-Mailer: WebService/1.1.24425 mail.backend.jedi.jws.acl:role.jedi.acl.token.atz.jws.hermes.aol
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

  Hi, I use speak-up on Debian. Does anyone know the correct way to edit 
the grub.cfg file on the live CD to get it to boot entirely into ram? I 
tried adding the toram option in a couple places, but it must not be 
right because it doesn't load into ram. I'm using Debian 13. If this 
isn't easily possible, is there any distro out there that includes 
speak-up and the mate desktop that can be easily set to load into ram? 
Thanks in advance for any help.


