Return-Path: <speakup+bounces-318-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 535F242FBF2
	for <lists+speakup@lfdr.de>; Fri, 15 Oct 2021 21:23:53 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=SeVjm6wG;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 1AFAC38104B; Fri, 15 Oct 2021 15:23:52 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 3133E381D4D
	for <lists+speakup@lfdr.de>; Fri, 15 Oct 2021 15:23:48 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 78F22380F18; Fri, 15 Oct 2021 15:23:45 -0400 (EDT)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 2CC22380943
	for <speakup@linux-speakup.org>; Fri, 15 Oct 2021 15:23:45 -0400 (EDT)
Received: from vbox.gregn.net (unknown [IPv6:2607:fb90:729a:b15e:f4e8:1dae:a5c5:1bf])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by vserver.gregn.net (Postfix) with ESMTPSA id 762632555
	for <speakup@linux-speakup.org>; Fri, 15 Oct 2021 12:23:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gregn.net; s=default;
	t=1634325824; bh=aaZtZMvAZwbELvkIru6VhnDg4I9oGeOf1Rt9JFWjrG8=;
	h=Date:From:To:Subject:From;
	b=SeVjm6wGqCEkUKvikwVaxBK/AHyEAcK74foO6FUarZRH/IoDarhTk0flsZ/VUMl2R
	 cYQDc5iE7vyePpuERhIWU8gv+Oxjr2w8RWDpSImKoozo8fW3rDDRicZLF9xDyYd/Be
	 pRueefYPb/JO9Q9I2aFpMcT3isGV44CDk7fWpe80I6jsQ+F/+SlBLAjY6N3Zs6l9i1
	 mqG4L+loK8EXGDERVqXeGAI8YImPA1VC107ZxCt+9ullkBYfTs+zhNnHpVXqAZ/YmO
	 qKyW1aW4/+HTctCIVzowAEfe483LX6Pr3mmk1gP0ZdJuNEvOY+3kMUi7yOxWzNHyvE
	 5PgRd3E8YRXEA==
Received: from greg by vbox.gregn.net with local (Exim 4.84_2)
	(envelope-from <greg@gregn.net>)
	id 1mbSns-0000zD-It
	for speakup@linux-speakup.org; Fri, 15 Oct 2021 12:23:40 -0700
Date: Fri, 15 Oct 2021 12:23:40 -0700
From: Gregory Nowak <greg@gregn.net>
To: speakup@linux-speakup.org
Subject: fwd: [DNG] Announcing Devuan 4.0: Chimaera!
Message-ID: <20211015192340.GA3715@gregn.net>
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
X-PGP-Key: http://www.gregn.net/pubkey.asc
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Virus-Scanned: clamav-milter 0.102.4 at vserver
X-Virus-Status: Clean
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi all.

I thought I'd pass this along for anyone interested.

Greg


----- Forwarded message from Mason Loring Bliss <mason@blisses.org> -----

Date: Thu, 14 Oct 2021 11:00:33 -0400
From: Mason Loring Bliss <mason@blisses.org>
To: dng@lists.dyne.org
Subject: [DNG] Announcing Devuan 4.0: Chimaera!

Dear Friends and Software Freedom Lovers,

Devuan Developers are pleased to announce the release of Devuan Chimaera
4.0 as the project's newest stable release. This is the result of lots of
painstaking work by the team and extensive testing by the wider Devuan
community.

---------------------------------------------------------------------------
What's new in Chimaera 4.0?

    * Based on Debian Bullseye (11.1) with Linux kernel 5.10.
    * Your choice of init: sysvinit, runit, and OpenRC.
    * Improved desktop support - virtually all desktop environments available
      in Debian are now part of Devuan, systemd-free.
    * New boot, display manager and desktop theming.
    * Enhanced accessibility: installation via GUI or console can now be
      accomplished via software or hardware speech synthesis, or using a
      refreshable braille display, and Devuan Chimaera has the ability to
      install desktop environments without PulseAudio, allowing speech
      synthesis in both console and GUI sessions at the same time.

---------------------------------------------------------------------------
Installation and Documentation

Whether you are upgrading an existing Devuan install, migrating from Debian
or installing from scratch, instructions and guidance can be found online:

    https://devuan.org/os/install
    https://devuan.org/get-devuan.

Packages, netboot images and installation media are available through a
resilient network of http package mirrors, http, https, ftp and rsync iso
mirrors, torrent and magnet.

Please take time to read the Release Notes. They include important
configuration information and tips to help your install or upgrade go as
smoothly as possible.

    https://files.devuan.org/devuan_chimaera/Release_notes.txt

For the impatient, you can go straight to the package and sources.list
information or the installation media downloads:

    https://devuan.org/os/packages
    http://files.devuan.org/devuan_chimaera/

---------------------------------------------------------------------------
Resources and Support

* Mailing list: https://mailinglists.dyne.org/cgi-bin/mailman/listinfo/dng
* IRC: #devuan #devuan-dev (Libera)
* Forum: https://dev1galaxy.org
* Press contact: freedom@devuan.org
* Source code: https://git.devuan.org
* Bug tracker: https://bugs.devuan.org
* Package information: https://pkginfo.devuan.org
* Popularity contest: https://popcon.devuan.org

---------------------------------------------------------------------------
After Chimaera

The next Devuan release, 5.0, is codenamed Daedalus. Repositories are
already available for the adventurous to test.

---------------------------------------------------------------------------
Appreciation

We wish to thank all of you for the incredible support given to Devuan.
Without your help and feedback, Devuan could not be the reliable and
versatile distribution that it is.

To support the Devuan project you can examine our financial reports and
donate at:

    https://devuan.org/donate

---------------------------------------------------------------------------
                           Live long and prosper!
                        The Devuan Development Team 
---------------------------------------------------------------------------



_______________________________________________
Dng mailing list
Dng@lists.dyne.org
https://mailinglists.dyne.org/cgi-bin/mailman/listinfo/dng


----- End forwarded message -----

-- 
web site: http://www.gregn.net
gpg public key: http://www.gregn.net/pubkey.asc
skype: gregn1
(authorization required, add me to your contacts list first)
If we haven't been in touch before, e-mail me before adding me to your contacts.

--
Free domains: http://www.eu.org/ or mail dns-manager@EU.org

