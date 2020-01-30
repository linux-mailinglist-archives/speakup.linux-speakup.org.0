Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (tunnel25281-pt.tunnel.tserv21.tor1.ipv6.he.net [IPv6:2001:470:1c:288::2])
	by mail.lfdr.de (Postfix) with ESMTP id E0D4114D631
	for <lists+speakup@lfdr.de>; Thu, 30 Jan 2020 06:33:40 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 25CA31C2C76; Thu, 30 Jan 2020 00:33:39 -0500 (EST)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=utG2YIhF;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id C0F521C2B62;
	Thu, 30 Jan 2020 00:33:19 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id EA04F1C0D8D; Thu, 30 Jan 2020 00:33:08 -0500 (EST)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
 by befuddled.reisers.ca (Postfix) with ESMTPS id D8D081C0126
 for <speakup@linux-speakup.org>; Thu, 30 Jan 2020 00:33:05 -0500 (EST)
Received: from vbox.gregn.net (unknown
 [IPv6:2001:470:d:6c5:152c:831a:1534:95d0])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by vserver.gregn.net (Postfix) with ESMTPSA id D51722210
 for <speakup@linux-speakup.org>; Wed, 29 Jan 2020 21:36:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gregn.net; s=default;
 t=1580362616; bh=jr7rLnkUQpXOK4wH5EnYmkUZvEF7tF5LNIAfQsC/eM4=;
 h=Date:From:To:Subject:References:In-Reply-To:From;
 b=utG2YIhFL1IjEqFksSFwa7yvaSn2Xmy2JlV7f5Sem/PdLwmiEwXYTmN7b9DH9cOC8
 5uCBpKj2GUQpnlbTJ1NrRY0i2W1GE4sJ/9qfDYaTnq3dDpv4F1zxQhNuZcCSfaHsL0
 ncqPAXt2/2wimv4nXiz8WAWHPnLbOpShImHbuNNl2QTaummr++AKUGgl5OrRxUKBBC
 UG+47NU9n2cSbhf+v9bY2QQ88rQ6U5QQ2XX8udSlsvXhpdxZ6lMesi61iWGf1eCC8m
 LnXbBs8VQ8PvIeqNosD0/yX0tWuE9kgndZmgDecj8Y6QHEZe2kT2x6FYJtSdTjg5Vh
 FtlUx/PDwstuQ==
Received: from greg by vbox.gregn.net with local (Exim 4.84_2)
 (envelope-from <greg@gregn.net>) id 1ix2Rr-0001eM-9o
 for speakup@linux-speakup.org; Wed, 29 Jan 2020 22:33:03 -0700
Date: Wed, 29 Jan 2020 22:33:03 -0700
From: Gregory Nowak <greg@gregn.net>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: speakup on latest kernels
Message-ID: <20200130053303.GA4319@gregn.net>
References: <77f47396-554f-3d0a-fd9d-fc760ecb2dfe@the-brannons.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <77f47396-554f-3d0a-fd9d-fc760ecb2dfe@the-brannons.com>
X-PGP-Key: http://www.gregn.net/pubkey.asc
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Virus-Scanned: clamav-milter 0.101.4 at vserver
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

I've seen it crashing when jumping from x-window to console
for a while now. It only happens if I attempt to use speakup review
commands right after the jump before any other key strokes. I first
noticed it in late June when I built my new ryzen 1800x system
running devuan Beowulf with
I believe a 5.2.x kernel compiled by me. I tested at that time with a
5.2.x kernel on my older early core i5 laptop running devuan Ascii, but
couldn't reproduce it. I thought it may be another ryzen on linux
quirk, so didn't report it.

I tested repeatedly hitting numpad 4 and 6 keys on devuan Beowulf with
a 5.4.14 kernel compiled by me, and couldn't get it to crash. So, it
looks like that particular crash is fixed. What processor is your
friend running on?

Greg


On Wed, Jan 29, 2020 at 08:46:46AM -0800, deedra waters wrote:
> it still looks to be broken my roommate tested it with latest kernels and it
> crashed last night when he jumped from x to console.
> _______________________________________________
> Speakup mailing list
> Speakup@linux-speakup.org
> http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
> 

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
