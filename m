Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from grumpy.reisers.ca (grumpy.reisers.ca [206.248.184.126])
	by mail.lfdr.de (Postfix) with ESMTP id 1CDA5191D61
	for <lists+speakup@lfdr.de>; Wed, 25 Mar 2020 00:17:41 +0100 (CET)
Received: by grumpy.reisers.ca (Postfix, from userid 65534)
	id 1E9964280474; Tue, 24 Mar 2020 19:17:39 -0400 (EDT)
Authentication-Results: grumpy.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.b="AuWbRNSJ";
	dkim-atps=neutral
Received: from befuddled.reisers.ca (unknown [10.10.10.10])
	by grumpy.reisers.ca (Postfix) with ESMTP id 9222742804E7
	for <lists+speakup@lfdr.de>; Tue, 24 Mar 2020 19:16:41 -0400 (EDT)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 617811C57BE; Tue, 24 Mar 2020 19:16:41 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=AuWbRNSJ;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id A469D1C57DA;
	Tue, 24 Mar 2020 19:14:36 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 424041C57BD; Tue, 24 Mar 2020 19:14:34 -0400 (EDT)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 694111C0D87
 for <speakup@linux-speakup.org>; Tue, 24 Mar 2020 19:14:30 -0400 (EDT)
Received: from vbox.gregn.net (unknown
 [IPv6:2607:fb90:a686:c07f:a00:27ff:fe01:8e92])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by vserver.gregn.net (Postfix) with ESMTPSA id EFE32375F;
 Tue, 24 Mar 2020 16:15:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gregn.net; s=default;
 t=1585091710; bh=89t72FhgYS/XKTBUKv4oqkrPlxwgAbo7FQGjh6ruGvM=;
 h=Date:From:To:Subject:References:In-Reply-To:From;
 b=AuWbRNSJGxcruL0a1BhD+sa11VgMt70FiOBskHgrv07Yq6BXMJtKUyubhXV1gCO2w
 yORNdfkCKrXblgV9i45pLKr151h1uOjo579QxaiQIIIhpntq7xyX5JHXT+cULIdKCI
 A1zW9uSzPQeeQSFlciVmz8AaxAz4fWjEHQOuDtWr4pqZ6bsl0TvbNOOI17NE8q/P+G
 TgW2ABp4Tfdc6aM/CK4hZ34JQaivwp7UnGd0X3W0PZd75m85rh1PjF/oGlLUkCKnl7
 XVeohDrSX9tRo8SPlRqrNIulbuijO599hQJnOYUsQcg8Nruuv0ot5R2chLW/9D6q6x
 lW/sPPaQQeJlg==
Received: from greg by vbox.gregn.net with local (Exim 4.84_2)
 (envelope-from <greg@gregn.net>)
 id 1jGskD-0001Hp-Aq; Tue, 24 Mar 2020 16:14:01 -0700
Date: Tue, 24 Mar 2020 16:14:01 -0700
From: Gregory Nowak <greg@gregn.net>
To: Glenn K0LNY <GlennErvin@cableone.net>,
 "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: [raspberry-vi] A bit off topic, Speakup and Debian
 Stretch-Buster (fwd)
Message-ID: <20200324231401.GA4098@gregn.net>
References: <Pine.LNX.4.64.2003211738470.31197@server2.shellworld.net>
 <20200322210257.zqxh5jp7fo64hp36@function>
 <030f01d601fb$4cb137f0$7001a8c0@NUCPPYH>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <030f01d601fb$4cb137f0$7001a8c0@NUCPPYH>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

On Tue, Mar 24, 2020 at 11:40:56AM -0500, Glenn K0LNY wrote:
> I have a Raspberry PI Model B, version 2, and I'm trying to get eSpeak and
> speakup going.
> I installed the version:
> 2020-02-13-raspbian-buster.img
> and I can SSH into it, and I was getting audio out with:
> speaker-test -c 2
> but if I tried espeak "hello"
> I didn't get anything until I installed pulseaudio.
> Now the espeak works, but still no speakup on boot-up.
> I installed speakup and that did not work, although it seemed to install
> okay.

I assume you mean espeakup, not speakup. I haven't used speakup on a
rpi since raspbian/devuan jessie. However, I do recall back then that
espeakup didn't work properly through the on board sound chip, and
Michael Ray I believe posted work arounds for that. I don't know if
the situation has changed since. I don't think espeakup and pulseaudio
will play any nicer on the rpi than they do on the PC. My solution
back then was to install speechd-up, and get output from speakup that way.

> I installed Orca with:
> apt-get install gnome-orca
> and that seemed to install okay, but it did not help speakup.

First, I don't see how installing orca is supposed to help speakup,
since they're separate screen readers using different interfaces to
provide speech output. Second, last time I checked, raspbian was using
their own slimed down desktop environment not using gtk, so that
wouldn't work with orca. I don't know if that has changed since
either. If it hasn't, your best bet is probably to install raspbian
light, and then manually install mate or xfce. It will be slow almost
to the point of not being very useful in my opinion, but it should
work. I think gnome is too bloated for the rpi, but I could be wrong there.

> I had done a general Debian update before doing all the above.
> The only way eSpeak works with strings of text is via SSH, not the plugged
> in keyboard.

Is the rpi recognizing the keyboard when you plug it in? Are you sure
you successfully logged in on a text console before attempting to run
espeak from the keyboard?

> I would like to get a desktop going, but this RPI may not have the RAM for
> it.

I tried mate on a rpi 3 back when I was using devuan jessie. It worked
as proof of concept, but browsing with firefox brought the unit to its
knees on most sites. A rpi2 might not have the RAM for a full GUI like
mate, but I could be wrong there too.

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
