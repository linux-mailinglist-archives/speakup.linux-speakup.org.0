Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from grumpy.reisers.ca (grumpy.reisers.ca [206.248.184.126])
	by mail.lfdr.de (Postfix) with ESMTP id C0B1518F7D2
	for <lists+speakup@lfdr.de>; Mon, 23 Mar 2020 15:57:49 +0100 (CET)
Received: by grumpy.reisers.ca (Postfix, from userid 65534)
	id 409244280493; Mon, 23 Mar 2020 10:57:47 -0400 (EDT)
Authentication-Results: grumpy.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ZiaK4/dR";
	dkim-atps=neutral
Received: from befuddled.reisers.ca (unknown [10.10.10.10])
	by grumpy.reisers.ca (Postfix) with ESMTP id DE4AE428049C
	for <lists+speakup@lfdr.de>; Mon, 23 Mar 2020 10:53:47 -0400 (EDT)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 27BE41C73BB; Mon, 23 Mar 2020 10:53:47 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20161025 header.b=ZiaK4/dR;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id EF3081C73AF;
	Mon, 23 Mar 2020 10:53:06 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 9B5661C436A; Mon, 23 Mar 2020 10:53:02 -0400 (EDT)
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com
 [209.85.222.171])
 by befuddled.reisers.ca (Postfix) with ESMTPS id D0A821C0135
 for <speakup@linux-speakup.org>; Mon, 23 Mar 2020 10:53:00 -0400 (EDT)
Received: by mail-qk1-f171.google.com with SMTP id q188so10163908qke.8
 for <speakup@linux-speakup.org>; Mon, 23 Mar 2020 07:53:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version:thread-index
 :content-language;
 bh=NO0PMrRCTOtAbveEb1nrmrgfHvi1pIGENPKLIL9qb+Q=;
 b=ZiaK4/dRItO/WL/txNzhMSQchSgp9L0gaD/37IunRZmEQnm2pL+3xpCoK1rPq3emvU
 +tj5lp0tN0/kIGEr0TiX/8h8pWYPz1suIS+bosTMP+kQK9vFWxlXePdi+Z+UnmNvPBds
 U0Fm256qi5TziR0wQASYcmOZNzgmzxqtuLiUP/7qfH+pSFOpNHkeXOKVHabklrQFPukZ
 K9n4Pv87i74S/Lpw15QDYrzrLPd/IJ+6hEqscORRhqu9KWiG3wP5jVkSjLy29TBqa4Aj
 muiciZlAt8WOocKqBGDo71E+sh3JU3AKmNeKrMhjlQy4seMqh82jK9LyRpXZn0KOpQ4e
 uaBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :thread-index:content-language;
 bh=NO0PMrRCTOtAbveEb1nrmrgfHvi1pIGENPKLIL9qb+Q=;
 b=mextudWvcy2unWC8vejc/RpKW0eK5O6S5AcKQpC1iss7l8yQRV9EbssNy6EzKLPEKA
 rJyHfMeY2e+f7pQNKl4j+unRxIZIWDiiKWMgL1uZLNk4/w0gAbZ9AXqd4rGLaqwmF9P+
 +zTtOOywiRWVM4eaBn2dUR0iQqpgTW7GAy9AIMx1VxRMODlCN8OyQjpUu1APt98pHCPF
 71jqdpLPQZbeOOxQ6Xh96KBhxrsbSh4/w/Icg23XkDftvaCFaJWUrCZHnhS5y4NColTb
 NftZ7+WI9Xl0fwT6ekG5DqOYlSbUXswZI9K22DIjCg7Ghi4WHkiE5VCAeFZc5jLQylJz
 ucKA==
X-Gm-Message-State: ANhLgQ0YlKmlZV7xNPgRrU7G1ru69JDuAo7jZw2ZY4zMWYjOzYkvMM/f
 YZjXScC7vsOLw/7AxoLdyB98uNNMnMk=
X-Google-Smtp-Source: ADFU+vtR9WX3yVrS6VcmhtUPuvFDmjWaSvtVBoFJnxGn0ImGTtdfMU1lIfHPXXHyCyvyqbC/BTLDcw==
X-Received: by 2002:a37:8101:: with SMTP id c1mr21478401qkd.60.1584975119984; 
 Mon, 23 Mar 2020 07:51:59 -0700 (PDT)
Received: from X230 (99-72-244-221.lightspeed.mdsnwi.sbcglobal.net.
 [99.72.244.221])
 by smtp.gmail.com with ESMTPSA id f19sm7642538qtq.78.2020.03.23.07.51.59
 for <speakup@linux-speakup.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 23 Mar 2020 07:51:59 -0700 (PDT)
From: "Chris Zenchenko" <old78rpm@gmail.com>
To: <speakup@linux-speakup.org>
Subject: Back on the list, test
Date: Mon, 23 Mar 2020 09:51:57 -0500
Message-ID: <011b01d60122$9a808c80$cf81a580$@gmail.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AdYBIhHH+fa6O4WrSBeHgv03L7wkSA==
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

Well after all the fun I had over on the Raspberry-vi list I went digging
back through about 7 years of email.
I can't quite figure out when I dropped off this list but I must have missed
one of those are you still alive yearly confirmation messages.
I still had my original thanks/welcome messages from a long time ago.
Anyway testing seems like a good idea to make sure I made it back on.

_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
