Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 22D1F28A5D3
	for <lists+speakup@lfdr.de>; Sun, 11 Oct 2020 07:32:49 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 8CF2A380BF3; Sun, 11 Oct 2020 01:32:48 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=mHBSCvly;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id AADCC380BB5;
	Sun, 11 Oct 2020 01:32:47 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 788A1380B26; Sun, 11 Oct 2020 01:32:46 -0400 (EDT)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 5DF8B38096B
 for <speakup@linux-speakup.org>; Sun, 11 Oct 2020 01:32:46 -0400 (EDT)
Received: from vbox.gregn.net (unknown
 [IPv6:2607:fb90:4a3f:1b72:a00:27ff:fe01:8e92])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by vserver.gregn.net (Postfix) with ESMTPSA id 5356F13A
 for <speakup@linux-speakup.org>; Sat, 10 Oct 2020 22:32:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gregn.net; s=default;
 t=1602394367; bh=AhuVXqUxruAuMxt/5b4HjWMteAN8hBOrUEAAJNQdPuU=;
 h=Date:From:To:Subject:References:In-Reply-To:From;
 b=mHBSCvlykAy/BKFA04SrkbqLLhQvmUX1acW+ViL1VvCJEWiZ2l4Ys0QPiVXNNHwrI
 DPmCN9N5TEV9dFeTddlzen7wVxDC85zKT6OVohkajf9HychEZtdFk13GVLbXzfSvIw
 UHt0jPv0cKj0wrC37NwvfGVqSryullTlzYM8tSj5c0ZVbqX1wfGag62Ran01/u9Qy0
 lFozMywNXunNWvzk3KxiDEKqY5Il451BrGhkFN2ZlXxqvJ9lDTtiAm8bd8Og+8m2Ne
 3edp2sBqWi06nEz+I0potUVITwgqS9x1GvJ1mrorxBV39Ob8Chg7Pet8s6hi+U4Ij+
 6bjux/cSwrwLQ==
Received: from greg by vbox.gregn.net with local (Exim 4.84_2)
 (envelope-from <greg@gregn.net>) id 1kRTyD-0001jc-KW
 for speakup@linux-speakup.org; Sat, 10 Oct 2020 22:32:33 -0700
Date: Sat, 10 Oct 2020 22:32:33 -0700
From: Gregory Nowak <greg@gregn.net>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: So, where'd the volume controls get to?
Message-ID: <20201011053233.GA6563@gregn.net>
References: <alpine.DEB.2.23.453.2010091111480.51713@befuddled.reisers.ca>
 <20201010151312.fbz27eyoua2574tw@function>
 <alpine.DEB.2.23.453.2010101446340.31356@befuddled.reisers.ca>
 <20201010193636.35lws35s7dyliyto@function>
 <alpine.DEB.2.23.453.2010101857170.36490@befuddled.reisers.ca>
 <20201011032444.GB4584@gregn.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201011032444.GB4584@gregn.net>
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

On Sat, Oct 10, 2020 at 08:24:44PM -0700, Gregory Nowak wrote:
> I'm running kernel
> 5.8.7, and am not seeing this issue. What kernel does this happen on,
> so I can be sure I'm testing with a kernel version where this is an
> issue?

Goes to show how much I use speakup's volume controls. Yes, I see the issue on 5.8.7, and will report if Samuel's
patch fixes it soon.

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
