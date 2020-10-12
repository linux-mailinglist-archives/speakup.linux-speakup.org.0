Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id C853828AD63
	for <lists+speakup@lfdr.de>; Mon, 12 Oct 2020 06:54:11 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id DA2D1380BC7; Mon, 12 Oct 2020 00:54:10 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=iWBkH3x4;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id A5171380BBD;
	Mon, 12 Oct 2020 00:54:09 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 981EB380BB1; Mon, 12 Oct 2020 00:54:07 -0400 (EDT)
Received: from vserver.gregn.net (vserver.gregn.net [IPv6:2607:f2f8:a260::2])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 31B1A380917
 for <speakup@linux-speakup.org>; Mon, 12 Oct 2020 00:54:07 -0400 (EDT)
Received: from vbox.gregn.net (unknown
 [IPv6:2607:fb90:4a3f:1b72:a00:27ff:fe01:8e92])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by vserver.gregn.net (Postfix) with ESMTPSA id 04807203
 for <speakup@linux-speakup.org>; Sun, 11 Oct 2020 21:54:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gregn.net; s=default;
 t=1602478448; bh=+xVDpGMf3RuPGuGtmMKuouZo+VsQSdVS92s9RiVX/ME=;
 h=Date:From:To:Subject:References:In-Reply-To:From;
 b=iWBkH3x4n4y37THdKnL+G/jqh7MMEiR19mPYQXc5OwmAkN5O6mBIugJwqQgE9JGWe
 uo7/ktFZJPdSyKELiAwRub33fGbNuF3olv/lOhLUTnDFaeNzFleCtYa0MjKMD1kxux
 8oxDRXyZAWPbfaZli1FtfhasWn5ouFCHHcaUBmdPy6Mc7m3GrbrN7E1L28SPWpYMpi
 E/P970HySdrrNFEZ5vaTqet4013G3XtZAThEZ1xebZdT91T6kWquPQASg1WILllVgM
 +scnWGvp8RL339S5GE/6XOjeL4DqyHirv0jf2GX5RFnxrxZbs1kcyjJiqu7YSDEu9y
 grdFdQKdPwLww==
Received: from greg by vbox.gregn.net with local (Exim 4.84_2)
 (envelope-from <greg@gregn.net>) id 1kRpqK-0000tO-22
 for speakup@linux-speakup.org; Sun, 11 Oct 2020 21:53:52 -0700
Date: Sun, 11 Oct 2020 21:53:52 -0700
From: Gregory Nowak <greg@gregn.net>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: So, where'd the volume controls get to?
Message-ID: <20201012045350.GA3377@gregn.net>
References: <alpine.DEB.2.23.453.2010091111480.51713@befuddled.reisers.ca>
 <20201010151312.fbz27eyoua2574tw@function>
 <alpine.DEB.2.23.453.2010101446340.31356@befuddled.reisers.ca>
 <20201010193636.35lws35s7dyliyto@function>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201010193636.35lws35s7dyliyto@function>
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

On Sat, Oct 10, 2020 at 09:36:36PM +0200, Samuel Thibault wrote:
> Would you be able to try the attached patch?

I can confirm that Samuel's patch fixes the issue so that speakup+1
and speakup+2 controls volume again.

Since I feel that volume control on the fly is fairly critical, I've
decided to release my kernel build. The debian packages were built for
a devuan Beowulf system, and should work on debian buster. This kernel
should boot on most if not all x86_64 systems. There are modules for a
variety of SATA controllers, and file systems. The debian packages
aren't signed, and the kernel isn't signed either which your UEFI
and/or boot loader might not like. If any of this makes you
uncomfortable, wait for the fix to make it to where ever you get your
kernel updates from, or build your own kernel with the patch (the www
is your friend).

For those who don't want to or can't install debian packages, the
amd64_binaries directory has binaries for the kernel, modules, and
headers. If installing this kernel breaks your system in any way, you
get to keep all the pieces.

You can find all of this at:

<https://www.gregn.net/linux-5.8.14/>

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
