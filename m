Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 944BA2F95BD
	for <lists+speakup@lfdr.de>; Sun, 17 Jan 2021 23:05:40 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 8F56F380FB6; Sun, 17 Jan 2021 17:05:39 -0500 (EST)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=blinksoft-com.20150623.gappssmtp.com header.i=@blinksoft-com.20150623.gappssmtp.com header.a=rsa-sha256 header.s=20150623 header.b=xCWrZl0B;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 5E71F380F14;
	Sun, 17 Jan 2021 17:05:39 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 50017380C00; Sun, 17 Jan 2021 17:05:38 -0500 (EST)
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com
 [209.85.222.171])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 8B84B380BC0
 for <speakup@linux-speakup.org>; Sun, 17 Jan 2021 17:05:37 -0500 (EST)
Received: by mail-qk1-f171.google.com with SMTP id w79so17135404qkb.5
 for <speakup@linux-speakup.org>; Sun, 17 Jan 2021 14:05:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blinksoft-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:subject:date:message-id:mime-version:thread-index
 :content-language;
 bh=tY4Wbk4+mdvcpVarzOXT63jISbZVWCcRTianepHqjHA=;
 b=xCWrZl0BtDCuEpjnKSi9QQGzJ5aniyd7N7F/xSHplHHFwq6ynpufJHbiYYuergcbX5
 CDw2O3pdKFmWlfITzkQ0Hy0yirD1lht9xz2NT5Gkf1javdq+We33YFTXO0J5HCGVydGV
 k8YScauk2UseMmG8okIA6FcQesv1Pbkr2yBVU5LqZUpfms9HgJD9EHUl6mD4m/9k5t+h
 yDS/IsnHguU5G+Yz5SxRiqM1ynCgqYMoPnXEKaAgqqkOzxXwzrOC+TBErWhxFw72jgfz
 HnM92KxfZavKjRVSVIPcY8fu5XbSEeY8zmWtiPiKn2+VyhCuCohjxJuZ7ryUDDWqGXPm
 uCxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :thread-index:content-language;
 bh=tY4Wbk4+mdvcpVarzOXT63jISbZVWCcRTianepHqjHA=;
 b=r/r6DeL5IN0k+cho8Xc6/fAv6V+s/PbCtFmt+TPHreiXSCVmlpJaa+HuwfwzwzPuKY
 hlaQ606+2mJh+JKXrNPokzbXfcYkTCXCV+F69pGwkY5UYK42muU8f6XM/58mscda2pzm
 wiPemBS+W5vXIwu4EbRrgQ+voeIjnJ16k4qBgY5guGg65L2MzTNpbBazEGazbtCTXXSG
 FeYq0dhqLhPxsQLBBFW05WenuUUpXFVaoXMnjuAVifh069KuV35LBTNfcyVXuOGvg5wk
 648gHGQYCan2RHYrkMQxm+OIGl7rwYlaORH/Zz7vkaKFyuMIBZFq/XUVK3VqIFt/NaHj
 blqA==
X-Gm-Message-State: AOAM533c8Gy98fBSf4tkBcJ7mQEptUufrpRBinCY1+sL8MaaPxNydxNX
 uLOMkG5tyQJ9yuyMd2RRRQ2sIRveu0v3+6egyeI=
X-Google-Smtp-Source: ABdhPJyIDtNGNVdjfVhZiuQcRNO7fS0kH2Df+HraKxuMuyd0XIjCKeXdCqWbJLgHQEc8DgIXbyQCDA==
X-Received: by 2002:a37:b92:: with SMTP id 140mr22217803qkl.378.1610921073283; 
 Sun, 17 Jan 2021 14:04:33 -0800 (PST)
Received: from Omega (cpe-96-29-128-102.kya.res.rr.com. [96.29.128.102])
 by smtp.gmail.com with ESMTPSA id o29sm9110648qtl.7.2021.01.17.14.04.32
 for <speakup@linux-speakup.org>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 17 Jan 2021 14:04:32 -0800 (PST)
From: <kperry@blinksoft.com>
To: <speakup@linux-speakup.org>
Subject: Raspberry question
Date: Sun, 17 Jan 2021 17:04:31 -0500
Message-ID: <007401d6ed1c$bbc0cbd0$33426370$@blinksoft.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AdbtGyc0XRikdGhBS5Ot2O+f0mvtZA==
Content-Language: en-us
X-Content-Filtered-By: Mailman/MimeDel 2.1.29
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

 

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
