Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id AEB1028A0B8
	for <lists+speakup@lfdr.de>; Sat, 10 Oct 2020 17:01:40 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 0B841380B2C; Sat, 10 Oct 2020 11:01:40 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (1024-bit key; secure) header.d=yandex.com header.i=@yandex.com header.a=rsa-sha256 header.s=mail header.b=S6doa5YL;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 9313B380B37;
	Sat, 10 Oct 2020 11:01:37 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 97884380B2A; Sat, 10 Oct 2020 11:01:36 -0400 (EDT)
Received: from forward101p.mail.yandex.net (forward101p.mail.yandex.net
 [77.88.28.101])
 by befuddled.reisers.ca (Postfix) with ESMTPS id AD470380B27
 for <speakup@linux-speakup.org>; Sat, 10 Oct 2020 11:01:35 -0400 (EDT)
Received: from forward102q.mail.yandex.net (forward102q.mail.yandex.net
 [IPv6:2a02:6b8:c0e:1ba:0:640:516:4e7d])
 by forward101p.mail.yandex.net (Yandex) with ESMTP id 6F7832643C06;
 Sat, 10 Oct 2020 18:01:07 +0300 (MSK)
Received: from mxback2q.mail.yandex.net (mxback2q.mail.yandex.net
 [IPv6:2a02:6b8:c0e:40:0:640:9c8c:4946])
 by forward102q.mail.yandex.net (Yandex) with ESMTP id 6AFC37F20002;
 Sat, 10 Oct 2020 18:01:07 +0300 (MSK)
Received: from vla5-445dc1c4c112.qloud-c.yandex.net
 (vla5-445dc1c4c112.qloud-c.yandex.net [2a02:6b8:c18:3609:0:640:445d:c1c4])
 by mxback2q.mail.yandex.net (mxback/Yandex) with ESMTP id ddlvHLxHh6-16jChF9a; 
 Sat, 10 Oct 2020 18:01:07 +0300
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yandex.com; s=mail;
 t=1602342067; bh=wbliBLNEQQEAjnPAhAVt7kDLT1Z+rJL+T+gAyuMi3z8=;
 h=Subject:In-Reply-To:To:From:Cc:Date:References:Message-ID;
 b=S6doa5YLFZNXhh2x22veLFa6ZjgHVgkk1nUV25S7X6LClu3v5s6TCVuUeqmpAmUcu
 iu0d9gDg5k4dKYpPiHo/y8TkivyDttBrvGiO8NFXk7kPzO2Gpj7cVFUVeMqqI19gcY
 BKerSJsVZX3uvB6Kba9q92KfDjUjPLT1k21V963A=
Authentication-Results: mxback2q.mail.yandex.net;
 dkim=pass header.i=@yandex.com
Received: by vla5-445dc1c4c112.qloud-c.yandex.net (smtp/Yandex) with ESMTPSA
 id 56s1rf8FMg-16nmt9nt; Sat, 10 Oct 2020 18:01:06 +0300
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (Client certificate not present)
From: "Nikita" <nikitamailings@yandex.com>
To: "'Speakup is a screen review system for Linux.'"
 <speakup@linux-speakup.org>
References: <E1kQ0tf-0003mJ-Ng@curtis3.ka0vba.org>
In-Reply-To: <E1kQ0tf-0003mJ-Ng@curtis3.ka0vba.org>
Subject: RE: settings for blind people using android
Date: Sat, 10 Oct 2020 18:01:06 +0300
Message-ID: <00df01d69f16$2e5297f0$8af7c7d0$@yandex.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Content-Language: ru
Thread-Index: AQEVT6F6GTLuhEseHAh1gB0NY+f20qsTjMsQ
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
Cc: -@curtis3.ka0vba.ampr.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

Hi Curtis,
In my opinion you need to subscribe to the androidaccessibility mailing
list.
Here is the subscription address - androidaccessibility+subscribe@groups.io
This is the Android blind users mailing list.
Also see
https://support.google.com/accessibility/android/answer/6283677?hl=en
Best regards, Nikita.

-----Original Message-----
From: Speakup <speakup-bounces@linux-speakup.org> On Behalf Of D. Curtis
Willoughby
Sent: Wednesday, October 07, 2020 7:18 AM
To: ka0vba@dimcom.net; speakup@linux-speakup.org
Cc: -@curtis3.ka0vba.ampr.org
Subject: settings for blind people using android

dear speakup users.

I have just completed the following rules for setting up an iphone
It is not really my work, but that of Curtis Chong.

I am in a facility that has lots of android users  as well as
 iphone users.   Many of them know nothing of blindness, save that
they have it.  I know nothing of android, save that it exists.
I have a friend who knoes a lot about android, and a little

_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup

_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
