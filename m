Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 93414155189
	for <lists+speakup@lfdr.de>; Fri,  7 Feb 2020 05:30:08 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 26E281C0DDF; Thu,  6 Feb 2020 23:30:08 -0500 (EST)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=AXH4TEiS;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 170BE1C2E06;
	Thu,  6 Feb 2020 23:29:50 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id A121C1C0DDF; Thu,  6 Feb 2020 23:29:47 -0500 (EST)
Received: from vserver.gregn.net (vserver.gregn.net [IPv6:2607:f2f8:a260::2])
 by befuddled.reisers.ca (Postfix) with ESMTPS id E4D811C0DBA
 for <speakup@linux-speakup.org>; Thu,  6 Feb 2020 23:29:45 -0500 (EST)
Received: from vbox.gregn.net (unknown
 [IPv6:2607:fb90:a690:641:a00:27ff:fe01:8e92])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by vserver.gregn.net (Postfix) with ESMTPSA id 4BF2C1D24
 for <speakup@linux-speakup.org>; Thu,  6 Feb 2020 20:29:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gregn.net; s=default;
 t=1581049788; bh=Fco+xnqfzNRSlPnySgpKzj+0a0bqNhW6ag6sZQoltvc=;
 h=Date:From:To:Subject:References:In-Reply-To:From;
 b=AXH4TEiSJzt5YQsGX4FdpGim/i2pa81AdCsAmQ1Bxs5J9S9uOzuV3lcWm/YWmhpTH
 lMCM4cqV7niyzGibTck85BWvgUjWn9wMiGikw0Qw8jG2QXEUp/qgxvvobC9UMGseZY
 kDLDjGa5ILfgwrKJU0kSebEGv+g2MsGE4g73C74Rv6Ixh44BCWDZuUu93vE3xt4NYa
 IEgxfLzHoA+FWB+ZSK01nGyXMtBBE0M/sDLQTPvb8fOEUN3YzWSlIKRdeEpY9noQgp
 1uKZebbI9HUsMLDPQZujf/zK/JbyVIvcvQCHvDCxdBgNA2Y2uYDGkokJhBEAcZLxXq
 adN+03ADr9i6Q==
Received: from greg by vbox.gregn.net with local (Exim 4.84_2)
 (envelope-from <greg@gregn.net>) id 1izvGx-0003Pq-E7
 for speakup@linux-speakup.org; Thu, 06 Feb 2020 21:29:43 -0700
Date: Thu, 6 Feb 2020 21:29:43 -0700
From: Gregory Nowak <greg@gregn.net>
To: speakup@linux-speakup.org
Subject: Re: driving a serial synthesizer through speech-dispatcher
Message-ID: <20200207042943.GA12133@gregn.net>
References: <20200207000127.GA6319@gregn.net>
 <m3v9ojhwb3.wl-covici@ccs.covici.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <m3v9ojhwb3.wl-covici@ccs.covici.com>
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

Right, this would require a speech-dispatcher module file. The thing
I'm not sure about is how to do the serial port I/O from
speech-dispatcher. The speech-dispatcher modules are .conf files, so
maybe the answer would be a separate program to expose the serial port
to speech-dispatcher modules, or a modification to the actual
speech-dispatcher code to do that.

What I like about the synth_direct approach is that speakup already
does the heavy lifting, and speakup and gnome-speech would use
speakup's interface to talk to the synth, which would mean they both
wouldn't be setting parameters and causing a mess. The disadvantage is
it requires speakup to be loaded, which I already use anyway, so it
doesn't bother me personally.

Greg


On Thu, Feb 06, 2020 at 11:10:24PM -0500, John Covici wrote:
> You might need to write a driver in speech-dispatcher, that would do
> exactly what you want.  I have been thinking about this for years, but
> never had the time to do it.


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
