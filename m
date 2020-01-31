Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 8BE4A14F3C1
	for <lists+speakup@lfdr.de>; Fri, 31 Jan 2020 22:29:51 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 5BED71C2E85; Fri, 31 Jan 2020 16:29:49 -0500 (EST)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=geekonskates.com header.i=@geekonskates.com header.a=rsa-sha256 header.s=default header.b=ikTM7FXP;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 4B5051C2C64;
	Fri, 31 Jan 2020 16:29:43 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id A581B1C0E16; Fri, 31 Jan 2020 16:29:39 -0500 (EST)
Received: from gateway30.websitewelcome.com (gateway30.websitewelcome.com
 [192.185.160.12])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 10C2E1C0D76
 for <speakup@linux-speakup.org>; Fri, 31 Jan 2020 16:29:37 -0500 (EST)
Received: from cm12.websitewelcome.com (cm12.websitewelcome.com [100.42.49.8])
 by gateway30.websitewelcome.com (Postfix) with ESMTP id 67FD37807
 for <speakup@linux-speakup.org>; Fri, 31 Jan 2020 15:29:36 -0600 (CST)
Received: from box2045.bluehost.com ([67.222.38.79]) by cmsmtp with SMTP
 id xdr5iFFEQFYZhxdr6ipd5L; Fri, 31 Jan 2020 15:29:36 -0600
X-Authority-Reason: nr=8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=geekonskates.com; s=default; h=Message-ID:Subject:To:From:Date:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rH2BAaDV4LJXNPI5a7M79BhJoF97l66VrzDRGqJ8aYM=; b=ikTM7FXPZsGbVSsx+4ePlcGDi
 FP2dnuAIE3GIOU4ksvLSp4PzZLWOdksiPknZJX2+BRpO7g2tXcFBQoMoD+8NYt6YSaU7ALHXhthlO
 dAXpm6Se7Aj3Xb+VH4lpsN9+YUYfzwABexJKI7pUncOkRm11d8WWanWtXRnUcuw8HH4iIx/4ygfnL
 ofgcA3/MfrFt5wtHTz+6AL970rpCDYG8cFk+EgrSlY213DmagysB02QKh5OfOm2/H1oDTE9/P4NGu
 Wk44fNozTEWAqvv857Nhp7HTlqxUfcpZwKINP6XOPQGGHofGMd+9QMmss5HMCUYZex/HuxNqxpLEH
 H8DKpADmw==;
Received: from box2045.bluehost.com ([67.222.38.79]:50484)
 by box2045.bluehost.com with esmtpa (Exim 4.92)
 (envelope-from <geek@geekonskates.com>) id 1ixdr5-004Nhf-Px
 for speakup@linux-speakup.org; Fri, 31 Jan 2020 14:29:35 -0700
MIME-Version: 1.0
Date: Fri, 31 Jan 2020 14:29:35 -0700
From: geek@geekonskates.com
To: speakup@linux-speakup.org
Subject: Intro and a couple questions
Message-ID: <a07a7cb0d379a6b265b82e4fa7326eb1@geekonskates.com>
X-Sender: geek@geekonskates.com
User-Agent: Roundcube Webmail/1.3.7
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - box2045.bluehost.com
X-AntiAbuse: Original Domain - linux-speakup.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - geekonskates.com
X-BWhitelist: no
X-Source-IP: 67.222.38.79
X-Source-L: Yes
X-Exim-ID: 1ixdr5-004Nhf-Px
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: box2045.bluehost.com [67.222.38.79]:50484
X-Source-Auth: geek@geekonskates.com
X-Email-Count: 1
X-Source-Cap: ZG9qb21pa2U7ZG9qb21pa2U7Ym94MjA0NS5ibHVlaG9zdC5jb20=
X-Local-Domain: yes
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

Hey there!  Happy Friday! *smile*

I'm new to this list, and first off I wanted to thank you guys.  Speakup 
is absolutely awesome!  I tried that TalkingArch a long time ago, and it 
was okay, but I wished it were TalkingBuntu or Talkian or something 
else. *lol*  It's also no longer maintained from what I've heard.  But 
anyway, today I was updating Ubuntu from 18.04 to 19.whatever, and that 
broke the GUI.  And of course, the default terminal screen has extremely 
tiny text, and I need zoom to read it; so, after about an hour of 
searching the web for solutions, and using my phone's magnifier app to 
see what I was doing, I remembered someone on another list mention 
speakup.  Now I have a fully functional screen reader for the Linux 
terminal, and I'm absolutely loving it!  Way to go, Speakup team! 
*smile*

Anyway, I had a couple questions, if you don't mind:

1. Is Speakup the same thing as Espeakup?  I tried "sudo apt-get install 
speakup" and it suggested replacing it with "espeakup".  I know what 
eSpeak is, and I've used it many times in my own projects, but are they 
the same thing?

2. I'm also a developer, and I'm a big fan of building terminal apps.  
But my terminal apps have use eSpeak to talk, and also use a code 
library called ncurses to create a decent interface for users with some 
vision.  I know ASCII art in general should always be either avoided or 
optional, but I'd like what I build to be accessible to everyone, 
including people with some vision.  Anyway, in my troubleshooting 
earlier, I ran dpkg-config something-or-other and got what looked like a 
colorful screen with a message box.  Speakup/Espeakup was still rambling 
on about something previously printed to the screen, but when I pressed 
the down arrow, it spoke the currently selected option.  This is 
awesome!  But I'm interested in learning how to make my projects 
compatible with Speakup.  I'm sure it's more than just not linking to 
eSpeak (lol).  How did it know which bit of text on the screen was 
selected?

3. I'd like to get involved.  I know C and Git well, currently learning 
GDB and Makefiles (I got the basics though), but definitely capable of 
contributing.  I don't know much about the kernel, but I'd like to 
learn.  I'm also fluent in Spanish, so I'd like to translate the user's 
guide (which I'm still reading) into Spanish.  How would I get started?  
Apart from reading the user guide I mean - still working on that.

Thanks and have a great weekend! *smile*
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
