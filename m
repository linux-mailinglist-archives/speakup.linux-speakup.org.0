Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (tunnel25281-pt.tunnel.tserv21.tor1.ipv6.he.net [IPv6:2001:470:1c:288::2])
	by mail.lfdr.de (Postfix) with ESMTP id 9DB4328A525
	for <lists+speakup@lfdr.de>; Sun, 11 Oct 2020 05:24:57 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 21CB7380B3B; Sat, 10 Oct 2020 23:24:57 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=xhl9nsnC;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 0B716380B34;
	Sat, 10 Oct 2020 23:24:55 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id B6172380B26; Sat, 10 Oct 2020 23:24:54 -0400 (EDT)
Received: from vserver.gregn.net (vserver.gregn.net [IPv6:2607:f2f8:a260::2])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 86F0D38096B
 for <speakup@linux-speakup.org>; Sat, 10 Oct 2020 23:24:54 -0400 (EDT)
Received: from vbox.gregn.net (unknown
 [IPv6:2607:fb90:4a3f:1b72:a00:27ff:fe01:8e92])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by vserver.gregn.net (Postfix) with ESMTPSA id 4A33914F
 for <speakup@linux-speakup.org>; Sat, 10 Oct 2020 20:24:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gregn.net; s=default;
 t=1602386694; bh=/sk94ckKp/CpWKeBRURpxlgin3dP21bGpED3vKv6rWE=;
 h=Date:From:To:Subject:References:In-Reply-To:From;
 b=xhl9nsnCDFkNwoprS1//fyD4ldyjq6F5UiQ3/+lki7jayTekEiYPYeVqWa76fRGnU
 OysyZATblxLLgV+Nd1iPbNfpIr90LzauLqdIIlD5KY6ZTQ+KTq3dt9EeIQxE1bFMZY
 9PKFgS+qNbT8dQi7brEda6Yyo1Jhm/PtOXDX+0XmaDK7NOlVGbMMZ1OWy+gK5ctQ27
 oi/I6rmADf7VMhIjAnT2ecRjxh+6sl3sSmPA3onvSC/N2iZf3Rr2jUx00FaoKpffi9
 CTtwaVxMUXDHKn4SsLPDbRPRj9g+Us3f/RGx6ojKeFnIs6mpFzxv7HEfyp0FbfC9wT
 cfNJFPUvSBE9Q==
Received: from greg by vbox.gregn.net with local (Exim 4.84_2)
 (envelope-from <greg@gregn.net>) id 1kRRyW-0001H3-IB
 for speakup@linux-speakup.org; Sat, 10 Oct 2020 20:24:44 -0700
Date: Sat, 10 Oct 2020 20:24:44 -0700
From: Gregory Nowak <greg@gregn.net>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: So, where'd the volume controls get to?
Message-ID: <20201011032444.GB4584@gregn.net>
References: <alpine.DEB.2.23.453.2010091111480.51713@befuddled.reisers.ca>
 <20201010151312.fbz27eyoua2574tw@function>
 <alpine.DEB.2.23.453.2010101446340.31356@befuddled.reisers.ca>
 <20201010193636.35lws35s7dyliyto@function>
 <alpine.DEB.2.23.453.2010101857170.36490@befuddled.reisers.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.23.453.2010101857170.36490@befuddled.reisers.ca>
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

I'll try it either Sunday, or Monday evening MST. I'm running kernel
5.8.7, and am not seeing this issue. What kernel does this happen on,
so I can be sure I'm testing with a kernel version where this is an
issue?

Greg


On Sat, Oct 10, 2020 at 07:00:52PM -0400, Kirk Reiser wrote:
> Hi Samuel: I am embarrassed to admit that it's been so many years
> since I compiled a kernel and speakup I don't even remember how to do
> it. If someone would tell me the commands for building the modules
> I'll git pull a kernel and try it. It might be faster for one of the
> folks that still do it regularly to try it also. They can probably do
> it in no time.
> 
>   Kirk


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
