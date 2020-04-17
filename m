Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 1DAAC1AD3B8
	for <lists+speakup@lfdr.de>; Fri, 17 Apr 2020 02:44:10 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 4D6B61C5801; Thu, 16 Apr 2020 20:44:09 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=lI6u2chN;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 976BD1C73CE;
	Thu, 16 Apr 2020 20:40:52 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 282001C57AB; Thu, 16 Apr 2020 20:40:48 -0400 (EDT)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
 by befuddled.reisers.ca (Postfix) with ESMTPS id B55151C2DA4
 for <speakup@linux-speakup.org>; Thu, 16 Apr 2020 20:40:36 -0400 (EDT)
Received: from vbox.gregn.net (unknown
 [IPv6:2607:fb90:f23:1d1c:a00:27ff:fe01:8e92])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by vserver.gregn.net (Postfix) with ESMTPSA id 60E602510
 for <speakup@linux-speakup.org>; Thu, 16 Apr 2020 17:42:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gregn.net; s=default;
 t=1587084138; bh=sm3ifDv+fG8hP0Yxqp2cETgf+kxRn7ngZG0JM6E1g2Q=;
 h=Date:From:To:Subject:References:In-Reply-To:From;
 b=lI6u2chNjvBWtDgN+7kl5RREreHc3mokrBUA2bngr8pqU+Ly/ri/7rlbwPIOpwyeY
 adcVhXZCZGO9Kp27b+sBEOWCIGXx7X4rYC6M1c57YDTiIYvX6rvoQjZsUenNJ0zvdo
 ElaV6T4EfAAlzUZAcL5XnAkIyKQIlIzLPqSORqHIomW62iLke8LAf/cI/EjZHqceQw
 RwSZTr5d8SPhwevVbemdc7eQe+Csghj+ra3gZAGLSyuR+QwgJYdTAj53buCfHWtZIh
 Sxj/UB9TYsRSdIm2JyI3pKr8VxJ49NMOCBfc5BzZKChREqooTmOPvuQ8uZBAAKhHlT
 h8cIbBRvPPUNg==
Received: from greg by vbox.gregn.net with local (Exim 4.84_2)
 (envelope-from <greg@gregn.net>) id 1jPF3Z-0001aE-4B
 for speakup@linux-speakup.org; Thu, 16 Apr 2020 17:40:33 -0700
Date: Thu, 16 Apr 2020 17:40:33 -0700
From: Gregory Nowak <greg@gregn.net>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: DecTalk Settings from Within Speakup?
Message-ID: <20200417004033.GA5829@gregn.net>
References: <Pine.LNX.4.64.2004141805070.1871@server2.shellworld.net>
 <20200415034841.GA5932@gregn.net>
 <Pine.LNX.4.64.2004142055040.3919@server2.shellworld.net>
 <20200415044239.GA6357@gregn.net>
 <Pine.LNX.4.64.2004150141390.8315@server2.shellworld.net>
 <20200416232813.t2zszb42qd2icfks@function>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200416232813.t2zszb42qd2icfks@function>
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

On Fri, Apr 17, 2020 at 01:28:13AM +0200, Samuel Thibault wrote:
> Well, yes, but that'll work only until speakup wants to change the pitch
> for whatever screen-reader-related reason such as expressing caps etc.

I don't understand what Chime means by inflection, but from the thread
so far, I'm 90% sure he doesn't mean pitch. That would leave either
freq or tone, but I'm not sure which of those that would be.

> I thought this was documented and well-known, but apparently not. Can
> somebody work on getting this properly known, to make sure people don't
> fall in that trap?

As far as I know, it is properly documented and explained in the
speakup user guide. If someone wants to use advanced methods like
synth_direct, that's fine, but that person should be prepared to deal
with the consequences of doing so.

On Fri, Apr 17, 2020 at 01:36:36AM +0200, Samuel Thibault wrote:
> Speakup takes values as much as the hardware takes it. At least, as much
> as is documented in the specific driver. For the pitch in the dectlk
> driver, one can read in the driver
> 
> { PITCH, .u.n = {"[:dv ap %d] ", 122, 50, 350, 0, 0, NULL } },
> 
> So it's indeed 122 by default, and values ranging from 50 to 350. I just
> tried it, and I did indeed saw [:dv ap 350] get output on the serial
> port, so it is definitely behaving as expected.

So Chime should be able to set pitch to 113 like he wants, and be able
to save and load it with speakupconf without issues. However, Chime
said in a previous post to this thread that he set the pitch to 113,
and saved it with speakupconf. When he used speakupconf load though,
Chime said his pitch was restored to 122. My guess is there could be a
miscommunication here some where, maybe saving in /etc/speakup and
loading from $HOME/.speakup? Without seeing an exact script of a load
and restore session, and a cat of values in
/sys/accessibility/speakup/, it's difficult, if not impossible to
determine exactly what is going on.

On Thu, Apr 16, 2020 at 05:02:45PM -0700, Chime Hart wrote:
> Thanks Sam, I tried your exact echo suggestion but even with sudo  I get a
> permission denied. I tried
> sudo echo 250 > /sys/accessibility/speakup/dectlk/pitch=113

No, do it like:

sudo echo 113 >/sys/accessibility/speakup/pitch

This will set your pitch to 113. Like I said, I think we're talking
about two different things here, pitch and inflection, whatever that means.

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
