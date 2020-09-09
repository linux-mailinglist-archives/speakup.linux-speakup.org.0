Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 1162C2626CE
	for <lists+speakup@lfdr.de>; Wed,  9 Sep 2020 07:39:23 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 5014E1C0853; Wed,  9 Sep 2020 01:39:22 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=kxG4ji1H;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 3415A1C0748;
	Wed,  9 Sep 2020 01:39:06 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 35DFD1C06B0; Wed,  9 Sep 2020 01:38:59 -0400 (EDT)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 14C481C0129
 for <speakup@linux-speakup.org>; Wed,  9 Sep 2020 01:38:55 -0400 (EDT)
Received: from vbox.gregn.net (unknown
 [IPv6:2001:470:d:6c5:a081:8e84:358c:f763])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by vserver.gregn.net (Postfix) with ESMTPSA id AEFEA39
 for <speakup@linux-speakup.org>; Tue,  8 Sep 2020 22:38:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gregn.net; s=default;
 t=1599629935; bh=/mcREVOZpcteiQ7oMyoqtQAqoDsKdBRUTygNzUODVpo=;
 h=Date:From:To:Subject:References:In-Reply-To:From;
 b=kxG4ji1Hd5w2wIY6EfkJZFM9nIWwxD7+D5dyxuT3JlrpjSkZN2s4fwl7uOgVhuvYU
 Cci3qtvUuNivOMossyCiyw0qyc6bN8kQjRRPn2lQq2YIuF8THSJucX1HDTDN99XY6j
 Rhzq5tcHeDzhH/f5jlQaOxKOW45/vt73TnLcsYe/MQjHTzD0OQXrYT61ogsPK7a/9j
 U1Bg5UcZx7xpI8GkeiNuLcsTIu/9N6no9qkZT2zJRfBBRSpEMUtWeI5pFzlCVxzyqa
 sEZq0T2og1+PTrSdYwwT2ShL0lu5bdP48P8UZhqjRx27JOgKtaLybYjCiTWYmchzn0
 gMsw66e7vvp8w==
Received: from greg by vbox.gregn.net with local (Exim 4.84_2)
 (envelope-from <greg@gregn.net>) id 1kFszn-0000uB-W5
 for speakup@linux-speakup.org; Tue, 08 Sep 2020 22:50:16 -0700
Date: Tue, 8 Sep 2020 22:50:15 -0700
From: Gregory Nowak <greg@gregn.net>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: [slint] Re: Fwd: New kernel, automatic handling of kernel
 upgradess.
Message-ID: <20200909055015.GA3434@gregn.net>
References: <f0c4a735.76bc.4cdd.aabc.76c4d1d3aab8@samobile.net>
 <68157db2-1b90-f216-47ea-e2239649f737@slint.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <68157db2-1b90-f216-47ea-e2239649f737@slint.fr>
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

For what it's worth, I'm running a self compiled 5.4.63 kernel on a
devuan 2.1 system. I added the line:

echo 0 > /sys/accessibility/speakup/key_echo

to my /etc/rc.local above the last "exit 0" line, and rebooted. After
reboot, I wasn't able to hear characters I typed from speakup, which
was expected.

Greg


On Tue, Sep 08, 2020 at 10:54:33AM +0200, Didier Spaier wrote:
> Hi Tony,
> =

> CCing this answer to the speakup mailing list.
> =

> @speakup list: the report is after upgrading a kernel from 4.19.67 to 5.4=
.62.
> Did anyone observed a similar behavior?
> =

> The issue with the line in rc.local ineffective at boot time is indeed we=
ird.
> 	=

> This file is executed at the very end of the booting sequence, so I pretty
> much doubt that sysfs be not yet available.
> =

> To check I did this (an you can do it too):
> I inserted the following line in /etc/rc.d/rc.local:
> echo "the command run by rc.local should be executed now." > /dev/kmsg
> then made executable rc.local typing "chmod 755 /etc/rc.d/rc.local"
> =

> Then after a reboot I typed as root:
> dmesg|grep rc.local
> The output was:
> [   17.128784] the command run by rc.local should be executed now.
> =

> So your command would have been executed 17 seconds after booting.
> =

> Incidentally, instead of including the echo command in rc.local you could=
, once
> your speakup settings are done to your liking, just type as root:
> speakup-save
> =

> Then these settings should be restored after next boot.
> =

> They are stored independently for each hard synthesizer and the soft one.
> =

> Does this work for you?
> =

> Cheers,
> Didier
> =

> Le 08/09/2020 =E0 02:08, tony seth a =E9crit=A0:
> > Heya there and good evening!
> > Well, ya told me to install the kernel and see what breaks, and I did.
> > The kernel upgrade went fine, and all seems fine, except for a tiny but=
 important thing.
> > I have an /etc/rc.d/rc.local file which turns off echoing of characters=
 typed in the console when I use Speakup.
> > The line in the file is this:
> > echo 0 > /sys/accessibility/speakup/key_echo
> > =

> > Up until the upgrade this worked just fine, but afterward, it doesn't. =
Characters are echoed again, unless I run as root:
> > /etc/rc.d/rc.local
> > This fixes the problem until next reboot.
> > Just curious how I could fix this, or is it that the sysfs isn't being =
created early enough for the rc.local file to work on the key_echo entry?
> > Thanks much as always though, other then that I've not had any problems=
, and the braille display works fine as well.
> > I bring that up because you mentioned Phillip having the braille displa=
y problem.
> > I'm using an Inceptor Braille Me in usb mode.
> > Thanks again...
> > Take care... Cheereo!
> > =

> =

> _______________________________________________
> Speakup mailing list
> Speakup@linux-speakup.org
> http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup

-- =

web site: http://www.gregn.net
gpg public key: http://www.gregn.net/pubkey.asc
skype: gregn1
(authorization required, add me to your contacts list first)
If we haven't been in touch before, e-mail me before adding me to your cont=
acts.

--
Free domains: http://www.eu.org/ or mail dns-manager@EU.org
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
