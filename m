Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 30E6428A52E
	for <lists+speakup@lfdr.de>; Sun, 11 Oct 2020 05:55:44 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id A783A380B9E; Sat, 10 Oct 2020 23:55:43 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=tSpf7ziL;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 3E28C380B33;
	Sat, 10 Oct 2020 23:55:43 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 418DC380B27; Sat, 10 Oct 2020 23:55:42 -0400 (EDT)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 23793380AC7
 for <speakup@linux-speakup.org>; Sat, 10 Oct 2020 23:55:42 -0400 (EDT)
Received: from vbox.gregn.net (unknown
 [IPv6:2607:fb90:4a3f:1b72:a00:27ff:fe01:8e92])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by vserver.gregn.net (Postfix) with ESMTPSA id 0C1DA14F
 for <speakup@linux-speakup.org>; Sat, 10 Oct 2020 20:55:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gregn.net; s=default;
 t=1602388543; bh=zBrcSV/Jegfn08wREwkkXrBD5JxJoIYW45QT4ajDYoE=;
 h=Date:From:To:Subject:References:In-Reply-To:From;
 b=tSpf7ziLXHZbhiPqikoD5rgxq6UkHaLPJqaUfuUE5z1S6JiGtDjfVz+Vx5v96shvx
 9QLVUJQftpdZPqcm+llCsmRVGkYQnAXPWWJ0zP9ZTGCypTZ2IWQRWks83qm42OMYc/
 xGTzGcX66FeUpCLmYVeydufzzEr9/0GPkZRewF7T99eDe9AouWLGMfK3SzSkWRx/Mj
 u6BJXSSqKVPi1ryqkOU0t+Lt5kgvKrxUPHchQMO70L6O2UaiPiuM2Oij+rDKRdSqHD
 98V9HC9L24lW5ql4lPVRG27hJUy4NRAh6PmnoSb+LuQEb1yBxQnVUZmjb/AZ86Rjy5
 VpGHcbg+zAsJg==
Received: from greg by vbox.gregn.net with local (Exim 4.84_2)
 (envelope-from <greg@gregn.net>) id 1kRSSK-0001MR-Am
 for speakup@linux-speakup.org; Sat, 10 Oct 2020 20:55:32 -0700
Date: Sat, 10 Oct 2020 20:55:32 -0700
From: Gregory Nowak <greg@gregn.net>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Flushing issue (was: So, where'd the volume controls get to?)
Message-ID: <20201011035532.GC4584@gregn.net>
References: <alpine.DEB.2.23.453.2010091111480.51713@befuddled.reisers.ca>
 <20201010151312.fbz27eyoua2574tw@function>
 <alpine.DEB.2.23.453.2010101446340.31356@befuddled.reisers.ca>
 <20201010194612.ut6md7liw4e47ky7@function>
 <alpine.DEB.2.23.453.2010101905240.36490@befuddled.reisers.ca>
 <20201010235355.uqqvyyjqxupfw5qw@function>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201010235355.uqqvyyjqxupfw5qw@function>
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

On Sun, Oct 11, 2020 at 01:53:55AM +0200, Samuel Thibault wrote:
> Ok but isn't it getting interrupted by the next key press also very
> fast?
> 
> Making the rate to 9 and running less on a long text, then keeping the
> down key pressed, I do get gibberish speech indeed, since it basically
> tries to speak the first words of each line very fast before the next
> key press switches to the next line. But what else would be expected?

Ok. I've just put up with this for the last two or three years, and
assumed that others either weren't experiencing this, or were just
putting up with it like me. If this can actually be gotten rid of
though, that would make software speech nice to use again. Here's how
to reproduce. I'm testing on a devuan Beowulf system, which is based
on debian buster. I have no pulseaudio installed, though as far as I
can tell, this is still the same with or without pulseaudio
running. This is specific to espeakup for me, it doesn't happen with
speechd-up, or with a hardware synthesizer. The espeakup version is
1:0.80-15, the espeak-ng version is 1.49.2+dfsg-8. 

1. modprobe speakup_soft

2. Start espeakup. I do this with

service espeakup start

3. Set speakup rate to 7 or 8, I have it set to 7.

4. Open the sound card with another application. This can be orca,
   aplay, mplayer, and probably something else too. The other sound
   source doesn't need to actually be playing something. It could be
   simply orca loaded in the GUI and ready to speak, or a file paused
   in mplayer. The sound device just needs to be opened and held ready
   for use by something else.

5. Load a screen full of content, man espeakup should be as good as
   anything.

6. Move to top of screen with speakup+9. Move down the screen with
   numpad 9, the speakup say next line command. Let the line read for
   the first few words, and press numpad 9 again to move to next
   line. What you should hear is that espeak doesn't finish reading
   the current line before the next line starts to speak. This causes
   the two speech chunks to overlap, making it difficult to hear the start
   of the next line of text.

I hope this demonstrates the issue. If there are other questions,
please ask.

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
