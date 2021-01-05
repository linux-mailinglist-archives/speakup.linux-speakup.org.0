Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 880DB2EB19F
	for <lists+speakup@lfdr.de>; Tue,  5 Jan 2021 18:42:30 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 72013380FB6; Tue,  5 Jan 2021 12:42:29 -0500 (EST)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=cableone.net header.i=@cableone.net header.a=rsa-sha1 header.s=20180516 header.b=PBEVAoht;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id CF413380FB9;
	Tue,  5 Jan 2021 12:42:28 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 656E6380ED3; Tue,  5 Jan 2021 12:42:27 -0500 (EST)
Received: from mail.cableone.net (mail2.cableone.syn-alias.com [69.168.106.66])
 by befuddled.reisers.ca (Postfix) with ESMTPS id E2CEC380EC6
 for <speakup@linux-speakup.org>; Tue,  5 Jan 2021 12:42:26 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha1; d=cableone.net; s=20180516; c=relaxed/simple; 
 q=dns/txt; i=@cableone.net; t=1609868545;
 h=From:Subject:Date:To:MIME-Version:Content-Type;
 bh=XqB8ToGMJAEUzeQM03/ZWnrQNdY=;
 b=PBEVAohtUrv6Z+fUiwAYvio2Sjrwzb4rWT5KFImnHpqSa0MFRt+Zh1tQZwJ0ScE0
 VirNznOnqdGfAdEQImlVidWfcUxuhwVQKQwN+EFVhZR8aZ5GZyEWzD80myhNub3O
 TxVlEwXmPhYYDSrx0jDpvIuWlH2r8ddjwt340JUuFFzyThBE89Paa0PkoZI00DB5
 QwqEZdGS/cuExdMAx3cKYBCfASKqm5iWCdaIeYCufRhI93CJL/dNLsvWD6nOYnsY
 pqG+1tS5SEmK55mpPH6CdPXYb1LKCrXek8qg0g1IWOETGIMrAavit121EJdPpbBT
 whe98X2Hz+hmIIRnDG5Egg==;
X_CMAE_Category: , ,
X-CNFS-Analysis: v=2.3 cv=aOOOVo1m c=1 sm=1 tr=0 cx=a_idp_x
 a=FAD7pjsVrG12rOFlsKXSTg==:117 a=FAD7pjsVrG12rOFlsKXSTg==:17
 a=KGjhK52YXX0A:10 a=8nJEP1OIZ-IA:10 a=EmqxpYm9HcoA:10 a=P7xTaY_ng_sA:10
 a=VUfPOBp7AAAA:8 a=qPKtzgQbAAAA:8 a=0YVu8vZ6AAAA:8 a=JqEG_dyiAAAA:8
 a=SjLH3k100XhA9wH0EtQA:9 a=wPNLvfGTeEIA:10 a=Rmk-ijrnzYgA:10
 a=h9p_k6br8ecoN9AbG9pA:22 a=OTAqJWGB1laLS8RTg9aS:22 a=Tdz0OL8ML7qDmmUgjKNf:22
X-CM-Score: 0
X-Scanned-by: Cloudmark Authority Engine
X-Authed-Username: Z2xlbm5lcnZpbkBjYWJsZW9uZS5uZXQ=
Authentication-Results: smtp03.lapis.bos.sync.lan
 smtp.user=glennervin@cableone.net; auth=pass (LOGIN)
Received: from [24.119.24.147] ([24.119.24.147:8536] helo=NUCPPYH)
 by mail.cableone.net (envelope-from <glennervin@cableone.net>)
 (ecelerity 3.6.25.56547 r(Core:3.6.25.0)) with ESMTPSA
 (cipher=DHE-RSA-AES256-SHA) 
 id 5D/BC-26814-005A4FF5; Tue, 05 Jan 2021 12:42:25 -0500
Message-ID: <0a7701d6e38a$20ce20a0$7001a8c0@NUCPPYH>
From: "Glenn K0LNY" <glennervin@cableone.net>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <20210105173502.GA17449@panix.com>
Subject: Re: spelling words with military letter pronunciation
Date: Tue, 5 Jan 2021 11:41:22 -0600
Organization: Home
MIME-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.3790.1830
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.2180
X-Vade-Verditct: clean
X-Vade-Analysis: gggruggvucftvghtrhhoucdtuddrgedujedrvdefjedgieejucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuufgjpfetvefqtffnvggrrhhnihhnghdpuffrmfdpqfgfvfenuceurghilhhouhhtmecufedtudenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepkfhrhffvfhfuffhogggtgffrigfoqfesthejpedtuddtudenucfhrhhomhepfdfilhgvnhhnucfmtdfnpfgjfdcuoehglhgvnhhnvghrvhhinhestggrsghlvghonhgvrdhnvghtqeenucggtffrrghtthgvrhhnpeekfeffgfejieevieethfelgfffgeevieeuudehvdekuefgteegheelvedtkedukeenucffohhmrghinheprhhuugihvhgvnhgvrhdrtghomhdpthifihhtthgvrhdrtghomhdplhhinhhugidqshhpvggrkhhuphdrohhrghenucfkphepvdegrdduudelrddvgedrudegjeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepihhnvghtpedvgedrudduledrvdegrddugeejnedpmhgrihhlfhhrohhmpehglhgvnhhnvghrvhhinhestggrsghlvghonhgvrdhnvghtnedprhgtphhtthhopehsphgvrghkuhhpsehlihhnuhigqdhsphgvrghkuhhprdhorhhgne
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
Reply-To: Glenn K0LNY <GlennErvin@cableone.net>,
 "Speakup is a screen review system for Linux."
 <speakup@linux-speakup.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

I would also recommend that SpeakUP and other screenreaders do like JFW is 
now doing it, when you arrow letter by letter, after a second or two, if you 
stop arrowing, it gives the Ham call name of the letter.
Glenn

----- Original Message ----- 
From: "Rudy Vener" <salt@panix.com>
To: <speakup@linux-speakup.org>
Sent: Tuesday, January 05, 2021 11:35 AM
Subject: spelling words with military letter pronunciation



I recall a Vocal Eyes feature I used very often. When I hit the speak word 
key once, it would
speak the word, hit it twice it would spell the word, hit it thrice
it would spell the word with military alphabet pronunciation (alpha, bravo, 
charlie, etc).

Speakup only allows me military letter pronunciation when I hit the
speak letter key twice, and only speaks the letter where the cursor
rests. This makes it a kluge to hear the entire word spelled in military 
pronunciation.

A feature to tap the speak word key thrice to get military spelling
would be a great boon to those of us who are deaf as well as blind.

Thanks.

-- 
Rudy Vener
Website: http://www.rudyvener.com
Twitter: https://twitter.com/RudySalt
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup 

_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
