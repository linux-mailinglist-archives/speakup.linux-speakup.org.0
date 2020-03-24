Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from grumpy.reisers.ca (grumpy.reisers.ca [206.248.184.126])
	by mail.lfdr.de (Postfix) with ESMTP id DE9DB1916BF
	for <lists+speakup@lfdr.de>; Tue, 24 Mar 2020 17:45:09 +0100 (CET)
Received: by grumpy.reisers.ca (Postfix, from userid 65534)
	id 0C0F44280463; Tue, 24 Mar 2020 12:45:08 -0400 (EDT)
Authentication-Results: grumpy.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=cableone.net header.i=@cableone.net header.b="k4z/DPU/";
	dkim-atps=neutral
Received: from befuddled.reisers.ca (unknown [10.10.10.10])
	by grumpy.reisers.ca (Postfix) with ESMTP id 1BD6842804F1
	for <lists+speakup@lfdr.de>; Tue, 24 Mar 2020 12:44:34 -0400 (EDT)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id DF7141C436A; Tue, 24 Mar 2020 12:44:33 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=cableone.net header.i=@cableone.net header.a=rsa-sha1 header.s=20180516 header.b=k4z/DPU/;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 3523C1C73C3;
	Tue, 24 Mar 2020 12:43:05 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id EA03B1C57BD; Tue, 24 Mar 2020 12:43:01 -0400 (EDT)
Received: from mail.cableone.net (mail2.cableone.syn-alias.com [69.168.106.66])
 by befuddled.reisers.ca (Postfix) with ESMTPS id F0A2F1C0D87
 for <speakup@linux-speakup.org>; Tue, 24 Mar 2020 12:42:58 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha1; d=cableone.net; s=20180516; c=relaxed/simple; 
 q=dns/txt; i=@cableone.net; t=1585068178;
 h=From:Subject:Date:To:MIME-Version:Content-Type;
 bh=Nod7w+7jrOOHm2yG9JOh76ZKLXs=;
 b=k4z/DPU/FTVq9kZq758AKobX0/QEALtJs6oTAglN48E5kLsdsvxRYwQLO32bDD/D
 WtqIVSqru0iwVxzBRWIU8jYY3h7JuvxC7ZDg7PDxCQtlwlphcg5QLEklcwSJP7B3
 tGVzibGOmcXx0lm1rYD0nwfQfpt9rMZMSXjE9IVfYLdqqXFPTmfEJpjoEeqrSQxu
 JaX1Ti3ZNpdIhs9QT2fiZim3JWbSC3kDFXupw7RHE22gc1tWipGbVQyHyd4Z2lqW
 U/9UiN+g6p5IMVk3MkdHdhqT0UIfbi6Z3JT9gTdubjiFU6pYDIzsGCY/GJ5qTxS2
 MHLWPzCnhEHc7y+DNd2Wwg==;
X_CMAE_Category: , ,
X-CNFS-Analysis: v=2.3 cv=UNaj4xXy c=1 sm=1 tr=0
 a=83sKN6Zl7IuxNZWA8nrnjA==:117 a=83sKN6Zl7IuxNZWA8nrnjA==:17
 a=KGjhK52YXX0A:10 a=8nJEP1OIZ-IA:10 a=SS2py6AdgQ4A:10 a=P7xTaY_ng_sA:10
 a=m8YGQp87AAAA:8 a=9_GH9xibAAAA:8 a=pGLkceISAAAA:8 a=qPKtzgQbAAAA:8
 a=wXLH96sks8ThCeFt3pcA:9 a=wPNLvfGTeEIA:10 a=sQmdjVoOy41DRvcrsFdt:22
 a=dO7qa_Xy17WzffDKgyPM:22 a=OTAqJWGB1laLS8RTg9aS:22
X-CM-Score: 0
X-Scanned-by: Cloudmark Authority Engine
X-Authed-Username: Z2xlbm5lcnZpbkBjYWJsZW9uZS5uZXQ=
Authentication-Results: smtp01.lapis.bos.sync.lan
 smtp.user=glennervin@cableone.net; auth=pass (LOGIN)
Received: from [160.3.126.27] ([160.3.126.27:60517] helo=NUCPPYH)
 by mail.cableone.net (envelope-from <glennervin@cableone.net>)
 (ecelerity 3.6.25.56547 r(Core:3.6.25.0)) with ESMTPSA
 (cipher=DHE-RSA-AES256-SHA) 
 id 4E/56-00904-1983A7E5; Tue, 24 Mar 2020 12:42:58 -0400
Message-ID: <030f01d601fb$4cb137f0$7001a8c0@NUCPPYH>
From: "Glenn K0LNY" <glennervin@cableone.net>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <Pine.LNX.4.64.2003211738470.31197@server2.shellworld.net>
 <20200322210257.zqxh5jp7fo64hp36@function>
Subject: Re: [raspberry-vi] A bit off topic,
 Speakup and Debian Stretch-Buster (fwd)
Date: Tue, 24 Mar 2020 11:40:56 -0500
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
Reply-To: Glenn K0LNY <GlennErvin@cableone.net>,
 "Speakup is a screen review system for Linux."
 <speakup@linux-speakup.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

I have a Raspberry PI Model B, version 2, and I'm trying to get eSpeak and 
speakup going.
I installed the version:
2020-02-13-raspbian-buster.img
and I can SSH into it, and I was getting audio out with:
speaker-test -c 2
but if I tried espeak "hello"
I didn't get anything until I installed pulseaudio.
Now the espeak works, but still no speakup on boot-up.
I installed speakup and that did not work, although it seemed to install 
okay.
I installed Orca with:
apt-get install gnome-orca
and that seemed to install okay, but it did not help speakup.
I had done a general Debian update before doing all the above.
The only way eSpeak works with strings of text is via SSH, not the plugged 
in keyboard.
I would like to get a desktop going, but this RPI may not have the RAM for 
it.
Glenn

----- Original Message ----- 
From: "Samuel Thibault" <samuel.thibault@ens-lyon.org>
To: "Karen Lewellen" <klewellen@shellworld.net>; <old78rpm@gmail.com>
Cc: "Speakup is a screen review system for Linux." 
<speakup@linux-speakup.org>
Sent: Sunday, March 22, 2020 4:02 PM
Subject: Re: [raspberry-vi] A bit off topic, Speakup and Debian 
Stretch-Buster (fwd)


> Hello,
>
> Karen Lewellen, le sam. 21 mars 2020 17:39:53 -0400, a ecrit:
>> It appears the old Speakup list is long dead.
>
> ? it is up and running, there were messages on each of the past months.
>
>> After several attempts to get somebody at the Debian accessibility email
>> address to respond
>
> Neither the speakup nor the debian-accessibility mailing lists have
> however received any of your emails, there must be some smtp issue
> between your ISP and them.
>
>> Speech just goes dead.
> [...]
>> It seems to be related to how frequently I cause speech interupts by 
>> typing
>> or stopping speech during long output.
>
> Did anybody notice something like this?
>
> Samuel
> _______________________________________________
> Speakup mailing list
> Speakup@linux-speakup.org
> http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup 

_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
