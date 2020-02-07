Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (tunnel25281-pt.tunnel.tserv21.tor1.ipv6.he.net [IPv6:2001:470:1c:288::2])
	by mail.lfdr.de (Postfix) with ESMTP id D6AE315618E
	for <lists+speakup@lfdr.de>; Sat,  8 Feb 2020 00:22:19 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 580A71C2C6E; Fri,  7 Feb 2020 18:22:19 -0500 (EST)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=iomlKkli;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 2DA791C2CD8;
	Fri,  7 Feb 2020 18:22:11 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 8A5411C2C6C; Fri,  7 Feb 2020 18:22:08 -0500 (EST)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 0CDAF1C00DC
 for <speakup@linux-speakup.org>; Fri,  7 Feb 2020 18:22:05 -0500 (EST)
Received: from vbox.gregn.net (unknown
 [IPv6:2607:fb90:a690:641:a00:27ff:fe01:8e92])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by vserver.gregn.net (Postfix) with ESMTPSA id C33662020
 for <speakup@linux-speakup.org>; Fri,  7 Feb 2020 15:17:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gregn.net; s=default;
 t=1581117426; bh=R6jRayhBKr3uiT0dsVr9G6ee+FhGDHprhz9CDIemfv0=;
 h=Date:From:To:Subject:References:In-Reply-To:From;
 b=iomlKklibEQXke9RbVvP6NMfw17M8d7BtXT8oQwIHipzWZ+HOV/ooM0ARc5l/aXUx
 teNqcOf32b7XTlNOfyeM2MHrafXFibwf8kDE8r+GMxB0yp2Wpu833BSK49f/iRPWXW
 NRS9CXKv/+lw1j+aoiCSRK3h0TbCcLZKoZ6+kxWJiW2qQQyhuAeanSqg6QHaRv0iKa
 erJuUR3hk8D8d7iLJSa+pmTholQ6LH21yWkyQi+q3S3IY2ozWSKQMZ5PtmvdccwUNp
 sSB6OYCopuyy0x/GrI/ZUDcYDYW6W9Cn1KkhmOqnWtQYtU4fJhhlrtxu6SZZfKoKs2
 mACMwO1Y2A1sw==
Received: from greg by vbox.gregn.net with local (Exim 4.84_2)
 (envelope-from <greg@gregn.net>) id 1j0Crt-0002BA-A3
 for speakup@linux-speakup.org; Fri, 07 Feb 2020 16:17:01 -0700
Date: Fri, 7 Feb 2020 16:17:01 -0700
From: Gregory Nowak <greg@gregn.net>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Debian with Speakup and software speech under VirtualBox
Message-ID: <20200207231701.GC5375@gregn.net>
References: <20200207142925.2D07.BD179882@mailbox.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200207142925.2D07.BD179882@mailbox.org>
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

My solution for this is to keep the sound device open. I do it by starting a
file playing with mplayer in a screen session, pausing playback, and
detaching from the screen session. This keeps the sound device open,
and espeakup is useable for me at that point.

Greg


On Fri, Feb 07, 2020 at 02:29:28PM +0100, Lukasz Golonka wrote:
> Hello,
> 
> Is anyone able to successfully use versions of Debian more recent than Debian 7 under any version of VirtualBox with a Speakup and eSpeakup? For me it works as long as speech is not stopped, so it is not possible to use screen navigation for example effectively making it unusable. My main host is running VB 5.1.14 but I've also tried with more recent versions up to the latest one 6.1. Any help welcome.
> 
> 
> -- 
> Regards
> Lukasz
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
