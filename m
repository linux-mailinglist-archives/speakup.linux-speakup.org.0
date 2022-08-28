Return-Path: <speakup+bounces-720-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id CC4C05A3B2E
	for <lists+speakup@lfdr.de>; Sun, 28 Aug 2022 05:31:56 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=zpdSiwxs;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id F198E381612; Sat, 27 Aug 2022 23:31:55 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id D01CF380F55
	for <lists+speakup@lfdr.de>; Sat, 27 Aug 2022 23:31:55 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id E1C4D3810D8; Sat, 27 Aug 2022 23:31:46 -0400 (EDT)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 11B5F38063C
	for <speakup@linux-speakup.org>; Sat, 27 Aug 2022 23:31:46 -0400 (EDT)
Received: from vbox.gregn.net (unknown [IPv6:2607:fb90:728b:c08b:143:5873:7d74:69c6])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by vserver.gregn.net (Postfix) with ESMTPSA id 1B5337C5
	for <speakup@linux-speakup.org>; Sat, 27 Aug 2022 20:31:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gregn.net; s=default;
	t=1661657503; bh=FLE3ch+v3MqNmg/2JLy2+8o0TibSuiNkHpGo/D8XMKg=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=zpdSiwxsXMBwjRhuzZB72azrzisgoMVu1Cv0rE6cOzIsoDSY+K0D+s9ZAIX+XvJSO
	 J4FQkKuVESEYPaQ/1hozkRaoXf5sQtEQ5Tjs+Fv84kf8U2Imei3JJP445SnY0f+JbF
	 ks30aeaBABhrPXjE/C40/CAb8Y0KKZtaT5G/A1BjFIn6AkEe49G3pPddvaKYHE/PUR
	 dyDk1+qsgMVfqBnU4hcF/Hm5r49q8QF6CpojpdJxtmoqO0STnxu29kQdzT54kKETfL
	 qsXMpNxaNuFtlxjawEXI3BFHZO4lyaSN/+5xFnKKbkaiD+1Q289RDdqQF2B3y3PqV2
	 IQYYQ9/z7eKOg==
Received: by vbox.gregn.net (Postfix, from userid 1000)
	id 203BCC1F0; Sat, 27 Aug 2022 20:31:42 -0700 (MST)
Date: Sat, 27 Aug 2022 20:31:42 -0700
From: Gregory Nowak <greg@gregn.net>
To: speakup@linux-speakup.org
Subject: Re: hopefully some help with AntiX
Message-ID: <YwrhnleAhItrPKVI@gregn.net>
References: <202208261512.27QFCDux008176@nfbcal.org>
 <02b101d8b963$7d039fc0$80ffa8c0@Win7VM>
 <alpine.DEB.2.21.1.2208262017280.8190@willempc.meraka.csir.co.za>
 <006201d8b97a$ff989cd0$80ffa8c0@Win7VM>
 <alpine.DEB.2.21.1.2208271055420.15485@willempc.meraka.csir.co.za>
 <alpine.DEB.2.21.1.2208271124110.15985@willempc.meraka.csir.co.za>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1.2208271124110.15985@willempc.meraka.csir.co.za>
X-PGP-Key: http://www.gregn.net/pubkey.asc
X-Virus-Scanned: clamav-milter 0.103.6 at vserver
X-Virus-Status: Clean
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

On Sat, Aug 27, 2022 at 11:27:43AM +0200, Willem van der Walt wrote:
> Hi,
> I see that you will have to get the antiX deb as it is specially built for
> it.
> Many upstream core Debian packages have been rebuilt to remove a hard
> dependency on libsystemd0/libelogind0
>    These include apt, cups, dbus, gvfs, openssh, policykit-1, procps,
> pulseaudio, rpcbind, rsyslog, samba, sane-backends,
>    udisks2, util-linux, webkit2gtk and xorg-server

I've had a look at the antiX about page, and they say they're systemd
free. This means they're either a derivative of devuan, or are rolling
their own distro deriving from debian directly.


On Sat, Aug 27, 2022 at 10:06:00AM -0500, K0LNY_Glenn wrote:
> The file I downloaded was:
> espeak-ng_1.49.2+dfsg-8+deb10u1.debian.tar.xz
> Looking in the archive, there are some .install files, but I didn't find any 
> .sh files, so I don't know which file to use to get espeak installed on this 
> system.
> Or if there is a .deb for RhVoice, that would work too, but did I download 
> the wrong espeak-ng file for installing it?

You downloaded the source package, not the binary package. The binary
package ends with a .deb extension. The easiest way to download what
you need is with

aptitude download package_name

from a debian buster box. However, see Willem's comments to which I
replied above.


On Sat, Aug 27, 2022 at 12:42:05PM -0500, K0LNY_Glenn wrote:
> I want to get my old Asus Epc 701 with 2 GB of RAM going, hopefully to put 
> some Ham software on it.
> It used to use XP.
> I wanted to try the talking Arch I downloaded, but it cannot boot that 
> kernel, and I didn't know where an older one is.

Is there a specific reason why that machine needs an older kernel? The
new kernels should still support most older hardware.

If you want a light weight distribution without systemd, try devuan:

<http://www.devuan.org>

If you want to first see if it will run on your older hardware, grab a
minimal live iso for i386 or amd64 from:

<https://mirror.math.princeton.edu/pub/devuan/devuan_chimaera/minimal-live/>

and dd it to a usb stick, or burn cd media. I just ran it on a pentium
II box with 700MB of RAM to make sure I'm giving you correct
instructions, and it came up fine for me without problems.

1. Boot from your media. If you have a PC speaker, you'll hear a long
beep. When you do, press <enter> or just wait. If you're booting from
CD, you'll hear your drive spin. It took about five minutes on my i686
box with 700MB of RAM, so be patient.

2. Once it finishes booting, you'll hear a melody if you have a PC
speaker. Wait about 30 seconds from that point. If you're booting from
a CD, wait for your drive to stop spinning, and give it about ten
seconds. If you're booting from USB media, just give it plenty of
time, maybe ten minutes from booting.

3. You should be at a login prompt, so type root <enter> toor
<enter>. If the login was successful, you'll hear a short beep if you
have a PC speaker.

4. Type the following:

modprobe speakup_soft
<enter>
service espeakup start
<enter>

If all went well, you should hear "root@devuan."

Test it out, make sure it works fine with your hardware. If it does,
download the netinstall iso from:

<https://mirror.math.princeton.edu/pub/devuan/devuan_chimaera/installer-iso/>

for i386 or amd64. Devuan is based on debian's installer, so the
install procedure for debian is the same for devuan. Boot, press s
<enter>, and you should get software speech asking you to select a
language for the installation.

I'm running a text only devuan 4.0 install right now on a 32-bit
virtual machine with 512MB of RAM. With 2GB, you should also be able to run
the mate desktop, though I don't know how snappy it will be. Good luck.

Greg


-- 
web site: http://www.gregn.net
gpg public key: http://www.gregn.net/pubkey.asc
skype: gregn1
(authorization required, add me to your contacts list first)
If we haven't been in touch before, e-mail me before adding me to your contacts.

--
Free domains: http://www.eu.org/ or mail dns-manager@EU.org

