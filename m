Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (tunnel25281-pt.tunnel.tserv21.tor1.ipv6.he.net [IPv6:2001:470:1c:288::2])
	by mail.lfdr.de (Postfix) with ESMTP id 49D9714F652
	for <lists+speakup@lfdr.de>; Sat,  1 Feb 2020 04:47:14 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 84D6E1C2C71; Fri, 31 Jan 2020 22:47:13 -0500 (EST)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=jk/kImvM;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id AEBC31C2B56;
	Fri, 31 Jan 2020 22:46:43 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id F307D1C0E16; Fri, 31 Jan 2020 22:46:32 -0500 (EST)
Received: from vserver.gregn.net (vserver.gregn.net [IPv6:2607:f2f8:a260::2])
 by befuddled.reisers.ca (Postfix) with ESMTPS id AB7BC1C0D76
 for <speakup@linux-speakup.org>; Fri, 31 Jan 2020 22:46:27 -0500 (EST)
Received: from vbox.gregn.net (unknown
 [IPv6:2607:fb90:9c3d:4af:a00:27ff:fe01:8e92])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by vserver.gregn.net (Postfix) with ESMTPSA id 2D3322BC
 for <speakup@linux-speakup.org>; Fri, 31 Jan 2020 19:50:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gregn.net; s=default;
 t=1580529021; bh=rcE5AWfixDfPKUNTJofGPL4WWCC9jWU/eDnAEp4tEOc=;
 h=Date:From:To:Subject:References:In-Reply-To:From;
 b=jk/kImvMtommV2/tyspp4dunkxq9TvKB1NAku4803yNJkBKLRbiKQpCGr8pPq9CQl
 UrCahKW2jyeirRhNefl/chfeKpjGTSWkrkBB4TmxL7Pq3ADT//24UgUymRwUdnKNUV
 gwmUJoRzo6azc+QxOL3GbYnQkrZcTq2vJqkDzAaauR+G0MqOVDCkp4nKLjiuOPBo+1
 D+CGKy5G7eVaXoubPatS3zxO4m3Sl/E9qQd+KMJ31lMVkB7ZBIV56okDGMWrHKxc+i
 le/JSZ/tkbKfQODxT2yOKKNrA+cslhzABY7oCW6mBeYW1kInIr8dix8n0fOv5+0yB9
 4SvhKhSgljkfg==
Received: from greg by vbox.gregn.net with local (Exim 4.84_2)
 (envelope-from <greg@gregn.net>) id 1ixjjk-0002Py-Qz
 for speakup@linux-speakup.org; Fri, 31 Jan 2020 20:46:24 -0700
Date: Fri, 31 Jan 2020 20:46:24 -0700
From: Gregory Nowak <greg@gregn.net>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Intro and a couple questions
Message-ID: <20200201034624.GA7180@gregn.net>
References: <a07a7cb0d379a6b265b82e4fa7326eb1@geekonskates.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a07a7cb0d379a6b265b82e4fa7326eb1@geekonskates.com>
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

Welcome to the speakup community.


On Fri, Jan 31, 2020 at 02:29:35PM -0700, geek@geekonskates.com wrote:
> 1. Is Speakup the same thing as Espeakup?  I tried "sudo apt-get install
> speakup" and it suggested replacing it with "espeakup".  I know what eSpeak
> is, and I've used it many times in my own projects, but are they the same
> thing?

They both need each other to work, but they're not the same
thing. Speakup is the screen reader in the linux kernel, while
espeakup is a connector between the speakup screen reader, and the
espeak text to speech engine.

> 
> 2. I'm also a developer, and I'm a big fan of building terminal apps.  But
> my terminal apps have use eSpeak to talk, and also use a code library called
> ncurses to create a decent interface for users with some vision.  I know
> ASCII art in general should always be either avoided or optional, but I'd
> like what I build to be accessible to everyone, including people with some
> vision.  Anyway, in my troubleshooting earlier, I ran dpkg-config
> something-or-other and got what looked like a colorful screen with a message
> box.  Speakup/Espeakup was still rambling on about something previously
> printed to the screen, but when I pressed the down arrow, it spoke the
> currently selected option.  This is awesome!  But I'm interested in learning
> how to make my projects compatible with Speakup.  I'm sure it's more than
> just not linking to eSpeak (lol).  How did it know which bit of text on the
> screen was selected?
> 

As far as I understand it, when you press down arrow, a different
option is highlighted. So, speakup spoke or more precisely sent the
newly highlighted text to /dev/softsynth, which got picked up by
espeakup, which sent it to espeak for speech output. Speakup is part
of the linux kernel, so is able to intercept what is sent to the video
card for output. If you want a more technical answer, then someone
else will have to jump in, or just try reading through the speakup
code I suppose. As far as making programs accessible for speakup
users, I'd say a simple command line interface is probably best,
that's just my view, and it probably isn't shared by everyone here.

> 3. I'd like to get involved.  I know C and Git well, currently learning GDB
> and Makefiles (I got the basics though), but definitely capable of
> contributing.  I don't know much about the kernel, but I'd like to learn.
> I'm also fluent in Spanish, so I'd like to translate the user's guide (which
> I'm still reading) into Spanish.  How would I get started?  Apart from
> reading the user guide I mean - still working on that.

Speakup is in the staging part of the linux kernel. So, you probably
want to follow the guidelines  for submitting a patch found at:

<https://www.kernel.org/doc/html/latest/process/submitting-patches.html#submittingpatches>

If that's a bit much to follow, then you could probably post your
translation here for others to review, and one of the speakup
developers could probably generate and submit the patch on your
behalf. If I'm wrong on any of the above, someone will likely step in
and correct me.

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
