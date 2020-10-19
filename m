Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (tunnel25281-pt.tunnel.tserv21.tor1.ipv6.he.net [IPv6:2001:470:1c:288::2])
	by mail.lfdr.de (Postfix) with ESMTP id 30D662961AB
	for <lists+speakup@lfdr.de>; Thu, 22 Oct 2020 17:27:38 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 49426380EAA; Thu, 22 Oct 2020 11:27:37 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=r8k4PT0k;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 77ACE380F4A;
	Thu, 22 Oct 2020 11:27:28 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id EC702380C18; Sun, 18 Oct 2020 22:41:03 -0400 (EDT)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
 by befuddled.reisers.ca (Postfix) with ESMTPS id AE95E380982
 for <speakup@linux-speakup.org>; Sun, 18 Oct 2020 22:41:03 -0400 (EDT)
Received: from vbox.gregn.net (unknown
 [IPv6:2607:fb90:a697:e510:a00:27ff:fe01:8e92])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by vserver.gregn.net (Postfix) with ESMTPSA id A66981CA
 for <speakup@linux-speakup.org>; Sun, 18 Oct 2020 19:41:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gregn.net; s=default;
 t=1603075264; bh=1JGSnVwQSQBmC2I5Mx7wm9kTjYfBE7XhGXDVmjuLAic=;
 h=Date:From:To:Subject:References:In-Reply-To:From;
 b=r8k4PT0kMIuY4icfFvLYR+mtMmcWWaGtjdoX2lwY4USIoI6oHJwuk8jJYhTwMjubF
 MBDotcH889KCuUIlVYWiBP2K1WFvuz8Y9btcFL8FsYYiX3V0A/4EVBrskDSt7fELv0
 BZztr5q7i9bveCFn4NfXBfVSnEsetMGILtjVbAgeR8zG1T/QKLI65yjURbqxJuOH+U
 rS8FoJp3Q5+8gITcwxhkWCJ6aWimTfwIMn3GhYnuHgfnA9OuzMnjiRogIhZqjgIivW
 EWior/1nJHMqmriuqjFB5M7vd8s+9U5LEFIWCoj7uCVdIcoh0IzgGvuos9+TLKJbhz
 Xb33/N+9g6y9A==
Received: from greg by vbox.gregn.net with local (Exim 4.84_2)
 (envelope-from <greg@gregn.net>) id 1kUL68-0001FO-Gw
 for speakup@linux-speakup.org; Sun, 18 Oct 2020 19:40:32 -0700
Date: Sun, 18 Oct 2020 19:40:32 -0700
From: Gregory Nowak <greg@gregn.net>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Flushing issue (was: So, where'd the volume controls get to?)
Message-ID: <20201019024032.GA4659@gregn.net>
References: <alpine.DEB.2.23.453.2010091111480.51713@befuddled.reisers.ca>
 <20201010151312.fbz27eyoua2574tw@function>
 <alpine.DEB.2.23.453.2010101446340.31356@befuddled.reisers.ca>
 <20201010194612.ut6md7liw4e47ky7@function>
 <alpine.DEB.2.23.453.2010101905240.36490@befuddled.reisers.ca>
 <20201010235355.uqqvyyjqxupfw5qw@function>
 <20201011035532.GC4584@gregn.net>
 <20201011143516.dq6ldzdt4j6aqvus@function>
 <20201011151640.2zj4itd6etcbthab@function>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201011151640.2zj4itd6etcbthab@function>
X-PGP-Key: http://www.gregn.net/pubkey.asc
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Virus-Scanned: clamav-milter 0.102.4 at vserver
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

On Sun, Oct 11, 2020 at 05:16:40PM +0200, Samuel Thibault wrote:
> It seems the buffering is happening inside alsa's dmix then. Could you
> try the attached patch on pcaudiolib? (which is the one that configures
> the buffering)

I just got around to trying this patch, and it seems to be working for
me under ALSA. If necessary, I can install debian configured for
pulseaudio in a virtual machine, and try it under pulseaudio as
well. I don't want to reconfigure my sound setup on my production
machines for pulseaudio. Thanks Samuel for your fixes.

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
