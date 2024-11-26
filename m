Return-Path: <speakup+bounces-1220-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 6A8489D9BD8
	for <lists+speakup@lfdr.de>; Tue, 26 Nov 2024 17:52:01 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=aol.com header.i=@aol.com header.a=rsa-sha256 header.s=a2048 header.b=oa2GxG1+;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 6478D3825AF; Tue, 26 Nov 2024 11:51:49 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 4489E38257D
	for <lists+speakup@lfdr.de>; Tue, 26 Nov 2024 11:51:49 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 6B1AF38257E; Tue, 26 Nov 2024 11:51:42 -0500 (EST)
Received: from sonic311-24.consmr.mail.ne1.yahoo.com (sonic311-24.consmr.mail.ne1.yahoo.com [66.163.188.205])
	by befuddled.reisers.ca (Postfix) with ESMTPS id C3D39381952
	for <speakup@linux-speakup.org>; Tue, 26 Nov 2024 11:51:41 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aol.com; s=a2048; t=1732639899; bh=FFwLCQoKpUQGSap5CG5IankhlmrRNde0im+9P8ZZbNg=; h=Date:To:From:Subject:References:From:Subject:Reply-To; b=oa2GxG1+ekkEGzSO+/KMx9nNO1mITt2jj/xnLc1ILmH4AvHsEHMEiadNiPaO9ONWiT7QCIWhP5/Qg5FngxgE/sL12NP8mkdCgRzC/+bX2+X7o/+IhTddg4x7Ih+sPl99wzKV5Lz9WSapQFavc0+0wpqLCGLpcmgNRcmrnSAX0Joo3eRAZspDyF2OJ1xacSleY4VYS0fFq2vn11MkR4L51FsE0rPkBKz7OYEJy4mDLUhj4rTkXa7OkeRpdIhcQd6KFJlF7LOohhIaqA6Yw9E7m/kD5TZkV7QGMz5rmZ618e/4aIVdLp/JtCAuN/ZCYuFt4R9bNLHVEdFEum4kuTyj8A==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1732639899; bh=Jd1xj534JZksjtMbNY1I1OnEc97FExHAFgWd4bzQLOn=; h=X-Sonic-MF:Date:To:From:Subject:From:Subject; b=ZxFRu0hMXVmYjXO4q+dfMMTbgU3Y1Fc/P8OAwXoxvIKxmEJlIaYi/wVj0M02KuY3nNiI6ShX6e3cRHbbCHgMtbRkJjAHjBZ6hf18ihYeeOmzSRbrWe7SrUPNE/MFNHDmCzd7hdeiLTxmMyR0vzYJuXDA7pP9RWFStwhBNX6lsWiuCCO+r3PrizgH4wkdo75QvmLit8OWyL6uM7VZb/OONrXrN/sukqUEweEDAZJCr28g700Qy6XyQ8n97aRKdUe18y9SfgGiBLlh3lLaTOTPmJsQDrTNw1ZnnF0LSMXFWNsqY9RXlsowTJEZuCvP3ZuVZcqzlfb4rw8pnCkpEHbfHQ==
X-YMail-OSG: 778YM0wVM1kQ8lcbMRJ2jdH9edU.ElFtTHSiCzWWsTlHR2MycefY40msGQKf4TT
 u2gJuZMHNioFAT8wgaZhlavwAe9pbOBFBWrlEfW0lWFj_3S1q6I7EmH4VwfoR6y2Dds5cUAYbARz
 3AJr7FYyr0QbogLygJ1AQFj7R7MtfrAAnh0B8c1ZJYOdwWuXhB071VG6AlpDaT2mDN.sExNnnBro
 bjNpwJIVb2OIWp6VgFj13MNxGWiWEeMojHJYn6c0iaRuJM36GF9q.51AYGbv5OAvNe9K69B9aTx0
 ZIBd2K0lQAy1QMk2q8q5jt6yS3pMSzpY4NfPpO.gPKn3qoEP1CYRLZDtfMl5RUMy04t0HnC5Ry8d
 _0zwIraR18OlWmA1kXb3jvYkCTAe7fJ40iiR9oEC14xfMvwYeQbkHiPi98v0ZGTeqoImMjCgpPfY
 95mlAVSm_YpMzRE5Db8v23WAkTeVXBojzWijvIaVfzOE2kxWr6sOGF7uGfzkuDHYUXJEQ2WhgOqi
 zruP7zu8_XfTnvZiuoKnekVAFep2_fSxnc6oCmzDt7KPTVva0IMItCFm0a0IO2L6g6mS_ZDNFxak
 nK2iG5GMQNkQHKrLHdlc5fNqL1G4Gbr_2oDv0KYYc3jGZkerY3zdpfKrIlAoY.Mg4oc7rP2Il9Dm
 fNlupP6QLfX1G8Uig9uZlxMJ9b4XRkREzjqPGs59Hftwkk926hRlsNNCakmnu0XZ7aFSLcjXl9Ly
 VWymUSMYio5yVVUU8Q2nQhOgXcLc8te.bYzumZYxiFcoSJCEkRnK5lg3fen4sLrVMyyWSlTZ3Rsb
 kCYrBZxfHw5VV0WisgpzOYy.OHoL4fsHcFf2OHFzRmLwoP6g9Bt.bXD7WsTgTEudQPMGC.uVZCFG
 4M_hv_Fp3Ff1gSYLWDaN4ahZn9eL1OVJP0VAREK7z2BfZSsWzSfMWsrPLklP3fgov5CizguNVRZM
 Cpm9O_xu4z7yszlpM4.hxBN0TQYhFx9Z7E72GqTaPUYCCOopaf98T_eKVsO0hVmh.V7zp.pQfCiT
 OynAMnu6WynIokibueox82IMbBbxg2mLwX4iSa_QNNi6c0SgjN.zb87j3U0Dtj8oYk0PoH5IvZ6c
 tcPiN0..AX_8PA5BgivQbZSuYVBMtW9xcTjZRA_D6ohSAa_t.w7Q_xNddttS4RWglvCVxDaDX4n8
 krdF7qIqlVBn5B1SGJtpO0.XXpJ9MIo7rLl6FD9ffxgAkDqLg3PCtz7sS.G3hJMG8MFPr6bcol9c
 AXMgpMm8XM7j_qjEV1mbiVXh1e.NavXE9q_RU48qUGbXcpEIJ8TShZZ9fniG52rQ43AvOPLbX.sj
 1tRuQgvOG4x3Z6QKO584WvzoDqH3.WghbCJHxlPqyauJUFNtuSZI3JY7zscf9nJYrWb.PDEjq3Xf
 JLtATqWjX.SiLXAXwfR_vyHsaZqwMy6l7ypRvs2r_HAGlt3il4CnQUHsDPx1xEWWmtg7r5frc5Vr
 JYhVHsKkc1MfIK0nGEHvFDuXYZzXAGGUuqdENmhMl6qzKZoifUqnX6bBQt5szDqTZsXlQPlFWegJ
 d7burw0bDhS56J4RwG4m4oZihl5rtWbV8jgDbQTxcVT8vFod1bCpxRf.fAj4ifmrMuM0IJOn1Q7v
 egK1aNdoZZA.O9HuFYqyKCwZ5FIdl5_4oG9.L3rXrNfEUpNJLMiHh3kL.adYl8XYBJS20frl5s25
 Wbd5aVGc8IAaM_0Uf8zH25jzmWl2XuhdB0aROOyz4E.f.f1gxrztE4FKe63kmSUvVCBssEYAjsDU
 HL4byrCRBd09LEmoITdQWcR9FKn_HTCAtSawbzoN7_J2gg4Plc5bxupxQ5VZn7dcasMzGI_Q6dHD
 ym.fV7yxs144_CLr_yiXc_Oh0aPA8fj_cCWaFCQg.rH9Nt2dNVcGlETXnSPxrHBAa1Oi4_0WO.j3
 55uKrAX79nmp2UpvtKj8s2q_0TxGLuEn7c..Wi6mA6ctaiMm5jDITr3MOPmw.whBdXAabPDd57EW
 LYXj7LHlsPfXmqQss8E2hWLP4GJiT3PbSRVJ00ANApQrCAxSONLxG.AwVQAc3stlCcWdX059s0hw
 aDvBWiDPy2w1YRoRQFBQvKKnW04h16Mmz4G.joR3c5qdML0kGbqJqX1unwNbG8bEp5pmruzohvut
 JIJXr8yMSdzbdNfhAxPuTUgmzrWGey30OX15N5lTeMnypl4e_dLYExmFSpeYpgdhQsgo-
X-Sonic-MF: <kb8aey0@aol.com>
X-Sonic-ID: 442f26cf-1e36-41a4-8546-0f278c03ea1f
Received: from sonic.gate.mail.ne1.yahoo.com by sonic311.consmr.mail.ne1.yahoo.com with HTTP; Tue, 26 Nov 2024 16:51:39 +0000
Received: by hermes--production-gq1-5dd4b47f46-5kxd4 (Yahoo Inc. Hermes SMTP Server) with ESMTPA ID d288bea968a46ea6d3784e51add35fa1;
          Tue, 26 Nov 2024 16:51:34 +0000 (UTC)
Message-ID: <f283de6f-885c-434e-ae2c-9e35699b849b@aol.com>
Date: Tue, 26 Nov 2024 08:51:32 -0800
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
Content-Language: en-US
To: speakup@linux-speakup.org
From: Mike Coulombe <kb8aey0@aol.com>
Subject: dosemu
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
References: <f283de6f-885c-434e-ae2c-9e35699b849b.ref@aol.com>
X-Mailer: WebService/1.1.22941 mail.backend.jedi.jws.acl:role.jedi.acl.token.atz.jws.hermes.aol
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi, I'm trying to use dosemu under linux to play some of the old text 
based games. It works fine other than one issue, after a few moves lines 
are repeated. Has anyone else had this issue? if so, have you found a 
solution?

Regards.


