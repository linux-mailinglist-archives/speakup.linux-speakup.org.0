Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from grumpy.reisers.ca (grumpy.reisers.ca [206.248.184.126])
	by mail.lfdr.de (Postfix) with ESMTP id B423618EF9E
	for <lists+speakup@lfdr.de>; Mon, 23 Mar 2020 07:06:28 +0100 (CET)
Received: by grumpy.reisers.ca (Postfix, from userid 65534)
	id A86414280475; Mon, 23 Mar 2020 02:06:27 -0400 (EDT)
Authentication-Results: grumpy.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.b="di0nALzz";
	dkim-atps=neutral
Received: from befuddled.reisers.ca (unknown [10.10.10.10])
	by grumpy.reisers.ca (Postfix) with ESMTP id BC3534280492
	for <lists+speakup@lfdr.de>; Mon, 23 Mar 2020 02:02:12 -0400 (EDT)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 7BB571C73BB; Mon, 23 Mar 2020 02:02:12 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=di0nALzz;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 8A73D1C73AF;
	Mon, 23 Mar 2020 02:01:32 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id D1DC71C436A; Mon, 23 Mar 2020 02:01:22 -0400 (EDT)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
 by befuddled.reisers.ca (Postfix) with ESMTPS id C7F991C0148
 for <speakup@linux-speakup.org>; Mon, 23 Mar 2020 02:01:15 -0400 (EDT)
Received: from vbox.gregn.net (unknown
 [IPv6:2001:470:d:6c5:14f3:2890:4ef5:7b22])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by vserver.gregn.net (Postfix) with ESMTPSA id D47F248F6;
 Sun, 22 Mar 2020 23:02:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gregn.net; s=default;
 t=1584943340; bh=aqaX5pFgmoTC8P7H45OXaSHiNQ8pD3sXdeInfjS2q58=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=di0nALzzPz0sfIekg/kG829XS+WqBtlJzusVm6BpA9vBmhYfVlMo4FXyX0tRQsti/
 G1p+zGGbaW2dJ9tX02vQyioO4wWckU2Xbt5r35eRiNl5/kUXV9rJz0Wy+vBpvZbH2x
 VHZx8WdNe0OeP2MCx4lvSNmQt3FG7w8DILkWtUYVIvDAO5sk3LSjay+PLlsxB1hZa3
 +XjGaqcAp8IEzbIjAMtPEn77aIc+e7cAcxEUxzluTeXHfVEJYwBiFQqQPkBNqXYIQX
 8UIGu7tBMB08VC5TJe6StRdGM1V8DX1Avco2wandbpjOJYjLIVqux2ihm3ZsbAlnUk
 wy+fgGpjE0t2Q==
Received: from greg by vbox.gregn.net with local (Exim 4.84_2)
 (envelope-from <greg@gregn.net>)
 id 1jGG8e-0001jI-BN; Sun, 22 Mar 2020 23:00:40 -0700
Date: Sun, 22 Mar 2020 23:00:40 -0700
From: Gregory Nowak <greg@gregn.net>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: [raspberry-vi] A bit off topic, Speakup and Debian
 Stretch-Buster (fwd)
Message-ID: <20200323060039.GB4138@gregn.net>
References: <Pine.LNX.4.64.2003211738470.31197@server2.shellworld.net>
 <20200322210257.zqxh5jp7fo64hp36@function>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200322210257.zqxh5jp7fo64hp36@function>
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
Cc: old78rpm@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

On Sun, Mar 22, 2020 at 10:02:57PM +0100, Samuel Thibault wrote:
Chris wrote:
> > Speech just goes dead.
> [...]
> > It seems to be related to how frequently I cause speech interupts by typing
> > or stopping speech during long output.
> 

Samuel wrote:

> Did anybody notice something like this?

Yes, I've been testing devuan 3 beta install isos this past week,
which is based on debian 11. If I
attempt to do the install in a VirtualBox 5.2.38 guest using software
speech, speech goes away right after I get the screen to select the
language, and I try to adjust volume/rate. On my intel core i5 laptop,
the guest just crashes every time, regardless of if I use software or
hardware speech. On a guest running on my ryzen system, the same thing
happens. The difference is I can switch to the second console, press
enter, and modprobing a hardware synth module still works. I suspect
this is possibly related to the 4.19 kernel, and possibly speakup in
that kernel. This is as far as I've been able to investigate so far. I don't
yet know what happens on my ryzen system guest; if espeakup just crashes
and needs to be restarted, or something more serious.

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
