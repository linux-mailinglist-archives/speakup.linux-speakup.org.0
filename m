Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (tunnel25281-pt.tunnel.tserv21.tor1.ipv6.he.net [IPv6:2001:470:1c:288::2])
	by mail.lfdr.de (Postfix) with ESMTP id 96A8F3A357
	for <lists+speakup@lfdr.de>; Sun,  9 Jun 2019 04:33:29 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id CDFED1C5A7D; Sat,  8 Jun 2019 22:33:28 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.b="MaBhElkg";
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 360231C6B39;
	Sat,  8 Jun 2019 22:33:23 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id CE0D11C43D0; Sat,  8 Jun 2019 22:33:20 -0400 (EDT)
Received: from vserver.gregn.net (vserver.gregn.net [IPv6:2607:f2f8:a260::2])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 61BCC1C42CB
 for <speakup@linux-speakup.org>; Sat,  8 Jun 2019 22:33:19 -0400 (EDT)
Received: from vbox.gregn.net (unknown
 [IPv6:2001:470:d:6c5:607d:89e1:5807:d28b])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by vserver.gregn.net (Postfix) with ESMTPSA id CD74F8385
 for <speakup@linux-speakup.org>; Sat,  8 Jun 2019 19:34:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gregn.net; s=default;
 t=1560047667; bh=1oZqX6ae0aklcrE9ElIRUN4BBDU/BYN73SJ5VSNsY7E=;
 h=Date:From:To:Subject:References:In-Reply-To:From;
 b=MaBhElkg4TjqBayDBb+AAf95iPmPb24iixFC0mS0rwldPGn3uS3PUso0go0tujcPd
 M5OFd0cjgZNh3SmZ8TTIqA/iiEIanSFPcsCoqsiNPg3KfdOj5YfTdThuQYbAl00c0X
 F41VMkM2go116yH6bbpGXUM1S9WHv/mKSir03uV+lmm01HLYnrMuF/P/FQVinoK/az
 023cd7One58JQEVbmhPzWRx3obCHwPNVnSFfvFsrtZRjie9SCWCAXejNFnAAMp3my7
 GKcb3fR6f6dqpmWc2zKZQp8o6EbZv4PFmc9oyfXgMrnVH0h9a+j1hvx4T/mh8MSGAF
 iupHMiB5v+rTA==
Received: from greg by vbox.gregn.net with local (Exim 4.84_2)
 (envelope-from <greg@gregn.net>) id 1hZndx-0001yx-Vc
 for speakup@linux-speakup.org; Sat, 08 Jun 2019 19:33:14 -0700
Date: Sat, 8 Jun 2019 19:33:13 -0700
From: Gregory Nowak <greg@gregn.net>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: no sound except speakup
Message-ID: <20190609023313.GB4305@gregn.net>
References: <bb706092-7289-2093-e7d0-e1788722cc37@math.wisc.edu>
 <alpine.DEB.2.21.1906051019050.12923@befuddled.reisers.ca>
 <f072f5e3-caf0-aab8-4224-c1fc9f142ace@math.wisc.edu>
 <2036fe0f-e249-6902-3c7c-4001c9d3b690@slint.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2036fe0f-e249-6902-3c7c-4001c9d3b690@slint.fr>
X-PGP-Key: http://www.gregn.net/pubkey.asc
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Virus-Scanned: clamav-milter 0.100.3 at vserver
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

Another solution is apulse, which provides partial pulseaudio
emulation for applications which expect pulseaudio to be installed
without pulseaudio being installed:

<https://github.com/i-rinat/apulse.git>

There's also a debian package in the devuan Ascii repository.

Greg


On Sat, Jun 08, 2019 at 07:03:29PM +0200, Didier Spaier wrote:
> Hello,
> 
> To elaborate on what Kirk said and for the records, is is possible to
> make pulse peacefully coexist with apps relying on ALSA without running
> PulseAudio system wide.
> 
> Just tell PulseAudio to use dmix. For instance in /etc/pulse/default.pa:
> load-module module-alsa-sink device=dmix
> load-module module-alsa-source device=dsnoop
> 
> And make sure that no ALSA configuration file tells it to direct the
> streams to PulseAudio, of course <smile>
> 
> Also, I start PulseAudio on demand (when an application requests it),
> not when starting a console or desktop session.
> 
> Best, Didier
> 


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
