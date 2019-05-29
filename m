Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 2164A2E3D4
	for <lists+speakup@lfdr.de>; Wed, 29 May 2019 19:46:05 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 73E411C6B45; Wed, 29 May 2019 13:46:03 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=slint.fr header.i=@slint.fr header.b="B4mgWrig";
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 0A4971C5A80;
	Wed, 29 May 2019 13:45:33 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id E0B1D1C438C; Wed, 29 May 2019 13:45:25 -0400 (EDT)
Received: from angel.o2switch.cloud (angel.o2switch.cloud [109.234.163.93])
 by befuddled.reisers.ca (Postfix) with ESMTPS id A11F61C3815
 for <speakup@linux-speakup.org>; Wed, 29 May 2019 13:45:23 -0400 (EDT)
X-Spam-Status: No
X-MailPropre-MailScanner-From: didier@slint.fr
X-MailPropre-MailScanner-SpamCheck: not spam, SpamAssassin (not cached,
 score=0.202, required 5, autolearn=disabled, DKIM_INVALID 0.10,
 DKIM_SIGNED 0.10, SPF_HELO_NONE 0.00, SPF_NONE 0.00)
X-MailPropre-MailScanner: Not scanned: please contact your Internet E-Mail
 Service Provider for details
X-MailPropre-MailScanner-ID: D481B1007E3.A38E3
X-MailPropre-MailScanner-Information: Please contact the ISP for more
 information
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=slint.fr;
 s=default; h=Content-Transfer-Encoding:Content-Type:MIME-Version:Date:
 Message-ID:Subject:From:Cc:To:Sender:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=v2MZCEEpWrAGOXa4GT0ho4dr6SfZ68da++sCw450ez8=; b=B4mgWrigNGm1Cl5h0/ydyrhzV1
 iGvKWuPPYYECilS7C4MyD+kOVw4d5BTWq9CCc2LC8SH61urrp5zF/9CPgpLA6Q9W2XjExHeBR9nWQ
 mBSUjQs23iQAf8lrS7k7jPmdRzm82/u4bfti1w7BkWYNexRp8NintAJioNXkt2T2H044=;
To: slint <slint@slint.fr>,
 "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
From: Didier Spaier <didier@slint.fr>
Subject: Settings of synthesizers
Openpgp: preference=signencrypt
Message-ID: <92945f81-ca91-c080-9ea5-46abd011f586@slint.fr>
Date: Wed, 29 May 2019 19:45:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
Content-Language: en-US
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - fox.o2switch.net
X-AntiAbuse: Original Domain - linux-speakup.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - slint.fr
X-Get-Message-Sender-Via: fox.o2switch.net: authenticated_id: didier@slint.fr
X-Authenticated-Sender: fox.o2switch.net: didier@slint.fr
X-Source: 
X-Source-Args: 
X-Source-Dir: 
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
Cc: Pawel Loba <ploba60@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

Hello,

The code of the Apollo synthesizer provides attributes for lang and
voices which are exposed in /sys/accessibity/speakup/apollo.

This reminds me that Pawel uses his Apollo 2 in Polish and English.

How do users set the corresponding values? Only echoing them in
/sys/accessibity/speakup/apollo/voice and
/sys/accessibity/speakup/apollo/lang?

Or does anyone use a script or a configuration file?

More generally this question applies to settings available for some but
not all hard synthesizers, like the tune and the voice.

And, do these devices tell the user to which lang or voice correspond
each numerical value, or does the user have to read the documentation
for their devices to find this information?

Just curious.

Best,

Didier 

_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
