Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (tunnel25281-pt.tunnel.tserv21.tor1.ipv6.he.net [IPv6:2001:470:1c:288::2])
	by mail.lfdr.de (Postfix) with ESMTP id AB2C9FE599
	for <lists+speakup@lfdr.de>; Fri, 15 Nov 2019 20:29:24 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 28E771C4384; Fri, 15 Nov 2019 14:29:24 -0500 (EST)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=cableone.net header.i=@cableone.net header.b="ehOFMle7";
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id C20FC1C46E7;
	Fri, 15 Nov 2019 14:28:20 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 7D35C1C4480; Fri, 15 Nov 2019 14:28:18 -0500 (EST)
Received: from mail.cableone.net (mail2.cableone.syn-alias.com [69.168.106.66])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 788A71C31E1
 for <speakup@linux-speakup.org>; Fri, 15 Nov 2019 14:28:16 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha1; d=cableone.net; s=20180516; c=relaxed/simple; 
 q=dns/txt; i=@cableone.net; t=1573846095;
 h=From:Subject:Date:To:MIME-Version:Content-Type;
 bh=V+wQ0EBOtmJJxQ+71wr4uRbC62g=;
 b=ehOFMle7TYrEBBX5zfYM0AwCq+Gnligc1tLpHuyHfCoivmwseAGZLo/KxG9+I7XC
 xMuZPV/68p3VDzo3RKpaKY2ojTFO4Ov73OwxF1v1jgXhXRfcG2n0Gh6vTLHTwWP/
 5A6Eco2OivB7b7jmu6vUYrs9AfqiSRG0gedtgV9cYuBahsbjdgs22da9pEz/gqNM
 YE/tcSeBAIH0kn1VrzenvCOw4Ebm4S3FTVwjRD0z4dUbtk5LrNWWYMqptxcQj8MS
 hIuYbxH4k1C3EyZIOMsdCwm2jLPyj5Am52Cjh4uGziSsgYWU9v6Q7TMSkIupThoy
 hCptNVJksseWMZSxDD9R5Q==;
X_CMAE_Category: , ,
X-CNFS-Analysis: v=2.3 cv=OMNZIhSB c=1 sm=1 tr=0
 a=83sKN6Zl7IuxNZWA8nrnjA==:117 a=83sKN6Zl7IuxNZWA8nrnjA==:17
 a=KGjhK52YXX0A:10 a=8nJEP1OIZ-IA:10 a=MeAgGD-zjQ4A:10 a=P7xTaY_ng_sA:10
 a=C---hqewAAAA:8 a=pGLkceISAAAA:8 a=qPKtzgQbAAAA:8 a=t1CrFGQuAAAA:8
 a=pIR8-J7uE_fBowOAEBAA:9 a=wPNLvfGTeEIA:10 a=OTAqJWGB1laLS8RTg9aS:22
X-CM-Score: 0
X-Scanned-by: Cloudmark Authority Engine
X-Authed-Username: Z2xlbm5lcnZpbkBjYWJsZW9uZS5uZXQ=
Authentication-Results: smtp02.lapis.bos.sync.lan smtp.user=glennervin;
 auth=pass (LOGIN)
Received: from [160.3.126.27] ([160.3.126.27:65262] helo=NUCPPYH)
 by mail.cableone.net (envelope-from <glennervin@cableone.net>)
 (ecelerity 3.6.25.56547 r(Core:3.6.25.0)) with ESMTPSA
 (cipher=DHE-RSA-AES256-SHA) 
 id C9/C3-25079-F4CFECD5; Fri, 15 Nov 2019 14:28:15 -0500
Message-ID: <025701d59bea$f0f83ab0$0300a8c0@NUCPPYH>
From: "Glenn N0YJV  :\)" <glennervin@cableone.net>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <mailman.1.1573837202.13038.speakup@linux-speakup.org>
 <20191115192337.GA31439@my-p4>
Subject: Re: google doesn't like us
Date: Fri, 15 Nov 2019 13:29:03 -0600
Organization: Home
MIME-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.3790.1830
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.2180
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
Reply-To: "Glenn N0YJV  :\)" <glennervin@cableone.net>,
 "Speakup is a screen review system for Linux."
 <speakup@linux-speakup.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

I use Google, but through a third-party site that uses Google but hides the 
user so Google can't profit from selling us ads.
https://www.startpage.com/
Glenn

----- Original Message ----- 
From: "David" <david.a.borowski@gmail.com>
To: <speakup@linux-speakup.org>
Sent: Friday, November 15, 2019 1:23 PM
Subject: google doesn't like us


> My wife Darlene says lose google and switch to duckduckgo.com
> No clutter and still a decent search.
> _______________________________________________
> Speakup mailing list
> Speakup@linux-speakup.org
> http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup 

_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
