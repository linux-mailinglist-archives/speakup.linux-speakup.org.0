Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from grumpy.reisers.ca (grumpy.reisers.ca [206.248.184.126])
	by mail.lfdr.de (Postfix) with ESMTP id C7CC0183EBD
	for <lists+speakup@lfdr.de>; Fri, 13 Mar 2020 02:42:44 +0100 (CET)
Received: by grumpy.reisers.ca (Postfix, from userid 65534)
	id 54F3542804F4; Thu, 12 Mar 2020 21:42:44 -0400 (EDT)
Authentication-Results: grumpy.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.b="BXKtCAIj";
	dkim-atps=neutral
Received: from befuddled.reisers.ca (unknown [10.10.10.10])
	by grumpy.reisers.ca (Postfix) with ESMTP id 22FE242804DF
	for <lists+speakup@lfdr.de>; Thu, 12 Mar 2020 21:42:43 -0400 (EDT)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id DA3911C7226; Thu, 12 Mar 2020 21:42:42 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=BXKtCAIj;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 740F21C7304;
	Thu, 12 Mar 2020 21:30:43 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 878B61C2B5A; Wed,  4 Mar 2020 19:57:58 -0500 (EST)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
 by befuddled.reisers.ca (Postfix) with ESMTPS id C2ADA1C0DBA
 for <speakup@linux-speakup.org>; Wed,  4 Mar 2020 19:57:54 -0500 (EST)
Received: from vbox.gregn.net (unknown
 [IPv6:2607:fb90:9c36:b32a:a00:27ff:fe01:8e92])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by vserver.gregn.net (Postfix) with ESMTPSA id 961E2FD1;
 Wed,  4 Mar 2020 16:58:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gregn.net; s=default;
 t=1583369884; bh=ox1ibCHlwXUeW6WJ5JozKvYfanGG5lDdccbaTVJR3sk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=BXKtCAIjzF8MolYi1xElO0phQGfCsMRlsrIxpAbhDKn+VHrlA9Gti9oVzZkaE+OYh
 v2/opHwc5UBBXp63zpszL/BcyYkJC1DixVbQg67V/u5SBtZnsH4bPg079OfUONe+E1
 lO4DSzhpzTLS6ZvwQHFK/pe2h3jMTeqD1mQx8HaYPUuMQkUon8Gl/YUBngt2j3mCxl
 pyHVIRK3Py0UGDl3p2NCvlFR4vfbe+s4Q/k1DNmFNGA9316dPubQbPH2Y+RxSS9kmH
 0b+L2D/T9ZHqdwq2iQp2b9Ac71Y88ACrLGbqmzbXzyhbGazKEZJFpZfjqCuXZogN7q
 wgFRDdp0DMwmA==
Received: from greg by vbox.gregn.net with local (Exim 4.84_2)
 (envelope-from <greg@gregn.net>)
 id 1j9epF-00011j-3E; Wed, 04 Mar 2020 17:57:21 -0700
Date: Wed, 4 Mar 2020 17:57:21 -0700
From: Gregory Nowak <greg@gregn.net>
To: Samuel Thibault <samuel.thibault@ens-lyon.org>
Subject: Re: speakup on latest kernels
Message-ID: <20200305005720.GA3912@gregn.net>
References: <77f47396-554f-3d0a-fd9d-fc760ecb2dfe@the-brannons.com>
 <20200130053303.GA4319@gregn.net>
 <9ca2e37d-f293-9b7b-80a2-177cbccfb08e@gmail.com>
 <alpine.NEB.2.21.2001301518500.16863@panix1.panix.com>
 <20200303131128.7d4uitw7feevimoj@function>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200303131128.7d4uitw7feevimoj@function>
X-PGP-Key: http://www.gregn.net/pubkey.asc
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Virus-Scanned: clamav-milter 0.102.2 at vserver
X-Virus-Status: Clean
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
Cc: Janina Sajka <janina@rednote.net>,
 "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

I used to be able to reproduce this consistently on kernels before the
5.4.x series by pressing numpad 5, and then numpad 4 on an empty
line. I just tried using numpad 1 and numpad 3 to position over a
space, and then pressing numpad 5, on 5.4.21. I also tried numpad 5,
4, and numpad 6 followed by numpad 5 on a blank line. I was able to
crash my system once. After rebooting, I kept playing with numpad 5
while on a space or blank line for the last five minutes with no
crashes. Is there a more consistent way to produce a crash? I can apply
the patch and test, but unless I can consistently make the system
crash, I don't know for sure if the patch fixes this or not.

I've been able to repeatedly jump from a GUI console to a text
console and use speakup navigation right away on my ryzen system since
the 5.4.x kernel series also with no crashes so far without the patch.

Greg


-- 
web site: http://www.gregn.net
gpg public key: http://www.gregn.net/pubkey.asc
skype: gregn1
(authorization required, add me to your contacts list first)
If we haven't been in touch before, e-mail me before adding me to your contacts.

--
Free domains: http://www.eu.org/ or mail dns-manager@EU.org
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
