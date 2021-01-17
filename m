Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 9CC832F962E
	for <lists+speakup@lfdr.de>; Mon, 18 Jan 2021 00:17:22 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 1BC2C380F11; Sun, 17 Jan 2021 18:17:22 -0500 (EST)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=cableone.net header.i=@cableone.net header.a=rsa-sha1 header.s=20180516 header.b=BSMJahb6;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 31A7A380F3C;
	Sun, 17 Jan 2021 18:17:20 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 8B977380C00; Sun, 17 Jan 2021 18:17:18 -0500 (EST)
Received: from mail.cableone.net (mail2.cableone.syn-alias.com [69.168.106.66])
 by befuddled.reisers.ca (Postfix) with ESMTPS id CD2DD380BC0
 for <speakup@linux-speakup.org>; Sun, 17 Jan 2021 18:17:17 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha1; d=cableone.net; s=20180516; c=relaxed/simple; 
 q=dns/txt; i=@cableone.net; t=1610925436;
 h=From:Subject:Date:To:MIME-Version:Content-Type;
 bh=qysgvx+K4ob2ATiUwjVZ9OTvDAg=;
 b=BSMJahb6cnyukp/ZZYdaoYIW081Uu7cnDD2CYJgU6AgnDv+GYPb5lsXClfkE4cKG
 PtBccuLxRo674hdJDxIBGtF1Y3M8oQdnVAUcnkazvkZvos6H6zoxK4Q8gE4sg2Xn
 d8I2XTfPaN3B7rMFEln+YUKV+7WMOF/4i7vX2l35iDqQpvi6hfcLthCkYdbJ6pRv
 r2f6UDlQPMx10A/HlYgqcMRr1T7ytVovDpiYoOC0IdM/TFqHjO6Eghp7rjxWVlIz
 fF+dHyP+wP5vlSTJfSdkvdNvL/q8YCHNgqwwNK0sz31qd80+eVuLnx3Pg1Zz8EH9
 TXQvmesXg74iDMiAawQueg==;
X_CMAE_Category: , ,
X-CNFS-Analysis: v=2.3 cv=AL51m+f7 c=1 sm=1 tr=0 cx=a_idp_x
 a=FAD7pjsVrG12rOFlsKXSTg==:117 a=FAD7pjsVrG12rOFlsKXSTg==:17
 a=KGjhK52YXX0A:10 a=8nJEP1OIZ-IA:10 a=EmqxpYm9HcoA:10 a=P7xTaY_ng_sA:10
 a=tqsjwdiwAAAA:8 a=qPKtzgQbAAAA:8 a=DQOLBC3v2A__O0pn4woA:9 a=wPNLvfGTeEIA:10
 a=lQnGwxWodiTalr3WyRk7:22 a=OTAqJWGB1laLS8RTg9aS:22
X-CM-Score: 0
X-Scanned-by: Cloudmark Authority Engine
X-Authed-Username: Z2xlbm5lcnZpbkBjYWJsZW9uZS5uZXQ=
Authentication-Results: smtp01.lapis.bos.sync.lan
 smtp.user=glennervin@cableone.net; auth=pass (LOGIN)
Received: from [24.119.24.147] ([24.119.24.147:62046] helo=NUCPPYH)
 by mail.cableone.net (envelope-from <glennervin@cableone.net>)
 (ecelerity 3.6.25.56547 r(Core:3.6.25.0)) with ESMTPSA
 (cipher=DHE-RSA-AES256-SHA) 
 id 27/B6-19147-C75C4006; Sun, 17 Jan 2021 18:17:16 -0500
Message-ID: <17a401d6ed26$e55f0c40$7001a8c0@NUCPPYH>
From: "Glenn K0LNY" <glennervin@cableone.net>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <007401d6ed1c$bbc0cbd0$33426370$@blinksoft.com>
Subject: Re: Raspberry question
Date: Sun, 17 Jan 2021 17:17:15 -0600
Organization: Home
MIME-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.3790.1830
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.2180
X-Vade-Verditct: clean
X-Vade-Analysis: gggruggvucftvghtrhhoucdtuddrgeduledrtdejgddtkecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfujgfpteevqfftnfgvrghrnhhinhhgpdfurffmpdfqfgfvnecuuegrihhlohhuthemuceftddunecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpefkrhfhvfhfufffohggtgfgrfgioffqsehtjeeptddutddunecuhfhrohhmpedfifhlvghnnhcumfdtnffpjgdfuceoghhlvghnnhgvrhhvihhnsegtrggslhgvohhnvgdrnhgvtheqnecuggftrfgrthhtvghrnhepheejveeileeggfeliedutefgfedvhfeljeektedvuefhuddugfeuvdeutdfhteejnecuffhomhgrihhnpehlihhnuhigqdhsphgvrghkuhhprdhorhhgnecukfhppedvgedrudduledrvdegrddugeejnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehinhgvthepvdegrdduudelrddvgedrudegjeenpdhmrghilhhfrhhomhepghhlvghnnhgvrhhvihhnsegtrggslhgvohhnvgdrnhgvthenpdhrtghpthhtohepshhpvggrkhhupheslhhinhhugidqshhpvggrkhhuphdrohhrghen
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

Hey Ken,
Is speech dispatcher running?
Can you get something from:
spd-say hello

HTH
Glenn
----- Original Message ----- 
From: <kperry@blinksoft.com>
To: <speakup@linux-speakup.org>
Sent: Sunday, January 17, 2021 4:04 PM
Subject: Raspberry question




Well, it has been a long time since I have been on this list.   Over the
years I have been using Orca, but I have been missing speakup.  I have used
my raspberry PI's up to this time on ssh.  I was hoping that the new release
in December of the rasbion which has access built in would just work out of
the box.   I am able to get Orca going and Emacspeak, and even espeak at the
command line.



The problem is speakup seems to be working but does not work.    When I am
at the tty terminal using the keyboard and with Xwin shut down.   I can make
espeak say thins but I am not able to get speakup to work.  When I do PS I
can see that both speak up and espeakup -V are running.  I have tried doing



Sudo Systemctl enable espeakup.service

Sudo Systemctl start espeakup.service



I have even tried without the .service on the previous lines.  So far
nothing I have tried has got speakup talking.



Does anyone know how to get speakup to talk on the new Rasbion build?  I
would much rather be using speakup than Ora or emacspeak.



I have asked this on the Raspberry PI list already and no one has answered.

Ken



_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup 

_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
