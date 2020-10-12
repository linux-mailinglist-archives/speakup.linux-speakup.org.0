Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id B376C28AB33
	for <lists+speakup@lfdr.de>; Mon, 12 Oct 2020 02:19:00 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 105FA380BFD; Sun, 11 Oct 2020 20:19:00 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=qbwqf5zA;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 77B5C380BB4;
	Sun, 11 Oct 2020 20:18:59 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 21A99380B27; Sun, 11 Oct 2020 20:18:58 -0400 (EDT)
Received: from vserver.gregn.net (vserver.gregn.net [IPv6:2607:f2f8:a260::2])
 by befuddled.reisers.ca (Postfix) with ESMTPS id CCF01380919
 for <speakup@linux-speakup.org>; Sun, 11 Oct 2020 20:18:57 -0400 (EDT)
Received: from vbox.gregn.net (unknown
 [IPv6:2607:fb90:4a3f:1b72:a00:27ff:fe01:8e92])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by vserver.gregn.net (Postfix) with ESMTPSA id 789803A
 for <speakup@linux-speakup.org>; Sun, 11 Oct 2020 17:18:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gregn.net; s=default;
 t=1602461938; bh=GYYYNNF4PXTLBpQvsk09+MOhorfLPzBXLyOTkx4NE6I=;
 h=Date:From:To:Subject:References:In-Reply-To:From;
 b=qbwqf5zAzVKvgvH9U+h9Pbp9qItTOK2Hq3Qi4VBxn2bSrv8RgnPJRwgCpXLCNLDcL
 3R0/LulzuxaSCPRBKV6NZ8RKI7AqT+Vu++wTDpy8F1yweuS/3ZDGCCpPDCVMKt7l79
 99WsPO8Wm2la0QQm4DYqO4ZUWsm0llCH23u7lgO33iI0p7BgH5vYDOGLrswIdIEWgQ
 wYehVL1ewjBfudp7QAcHOjvCDhLBlhGol07A/GIMUwv7TyZN8K60YrRxBKYugCCfD4
 hnDaSjhtV9e2NslN9tq6lEc/tzG6e5M7YEzYlkwy1OFWIXpclsDTQYmy9RqiA9XAS2
 Te/3y0QcYH3dA==
Received: from greg by vbox.gregn.net with local (Exim 4.84_2)
 (envelope-from <greg@gregn.net>) id 1kRlY3-0001GR-9d
 for speakup@linux-speakup.org; Sun, 11 Oct 2020 17:18:43 -0700
Date: Sun, 11 Oct 2020 17:18:43 -0700
From: Gregory Nowak <greg@gregn.net>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Flushing issue (was: So, where'd the volume controls get to?)
Message-ID: <20201012001843.GB4260@gregn.net>
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
> Could you
> try the attached patch on pcaudiolib? (which is the one that configures
> the buffering)

Yes, I'll grab the source for libpcaudio0, will patch, compile, and
test. I'll report back when I do assuming someone else doesn't beat me
to it first. That won't be until I test the kernel patch first from
the previous discussion. Stay tuned to both threads.

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
