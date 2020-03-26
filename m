Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from grumpy.reisers.ca (grumpy.reisers.ca [206.248.184.126])
	by mail.lfdr.de (Postfix) with ESMTP id 58A35193758
	for <lists+speakup@lfdr.de>; Thu, 26 Mar 2020 05:41:04 +0100 (CET)
Received: by grumpy.reisers.ca (Postfix, from userid 65534)
	id 1EA9A428047C; Thu, 26 Mar 2020 00:41:03 -0400 (EDT)
Authentication-Results: grumpy.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.b="T3aZ4RPv";
	dkim-atps=neutral
Received: from befuddled.reisers.ca (unknown [10.10.10.10])
	by grumpy.reisers.ca (Postfix) with ESMTP id E5F9142804FA
	for <lists+speakup@lfdr.de>; Thu, 26 Mar 2020 00:40:34 -0400 (EDT)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id C95871C2DE7; Thu, 26 Mar 2020 00:40:34 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=T3aZ4RPv;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id AF33E1C73B2;
	Thu, 26 Mar 2020 00:39:14 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id A60F01C2DE7; Thu, 26 Mar 2020 00:39:06 -0400 (EDT)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 2658B1C2C76
 for <speakup@linux-speakup.org>; Thu, 26 Mar 2020 00:39:02 -0400 (EDT)
Received: from vbox.gregn.net (unknown [172.58.38.172])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by vserver.gregn.net (Postfix) with ESMTPSA id 45A34239A
 for <speakup@linux-speakup.org>; Wed, 25 Mar 2020 21:40:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gregn.net; s=default;
 t=1585197613; bh=hLl0/zp8GeFzJ8GoqU29u3MMx0QdAQXGD3qozDnOiC4=;
 h=Date:From:To:Subject:References:In-Reply-To:From;
 b=T3aZ4RPvroTt8sZqxvqPfq3Rz/++bfxajk4a+ZA9Dg24XfeIm/QFwukWqV3mAPbwL
 //odhUUZRnI/vCJa4M2tNNw4qHnErm1hR9noIpvKNKSP4k4D0AAXgLFimIx1PoAgy1
 ekIz04kycq7BdAAnmLCoQsG6nOJsbvdJ9QXCx/Cfb4rytvtcNC82bdCaOofAghYGXp
 WMSe9c3xRIZ/ZJALxSXmh9Q080EojT5m0F6Lf195tmIVujPGktDnXdoMgvPoKaEnU3
 FDhCEbPhn0DU9grNmUBDUhIgHxgBXlVRt4tsMvCgVya4/NY8Jx4aCu0C69Q4Zm64+y
 R4qTxqJJ08vHg==
Received: from greg by vbox.gregn.net with local (Exim 4.84_2)
 (envelope-from <greg@gregn.net>) id 1jHKI9-0001gl-Vv
 for speakup@linux-speakup.org; Wed, 25 Mar 2020 21:38:53 -0700
Date: Wed, 25 Mar 2020 21:38:53 -0700
From: Gregory Nowak <greg@gregn.net>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: [raspberry-vi] A bit off topic, Speakup and Debian
 Stretch-Buster (fwd)
Message-ID: <20200326043853.GA6417@gregn.net>
References: <20200322210257.zqxh5jp7fo64hp36@function>
 <E1jHHnb-0000mu-AZ@rings.ka0vba.ampr.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <E1jHHnb-0000mu-AZ@rings.ka0vba.ampr.org>
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

On Wed, Mar 25, 2020 at 07:59:11PM -0600, mail wrote:
> I also noticed that there is not aninstallation option for brltty.
> There is not even an option for a hardware synthizer with speakup.

Sounds like you didn't read the debian installation manual, or didn't
look at wiki.debian.org/accessibility. In the case of a USB braille
display, brltty detects it automatically. In the case of serial
displays, the debian installation manual describes how to pass the
appropriate options to brltty when starting the installer.

As far as speakup hardware synthesizers, they're also supported. You
need to press tab, space, and type speakup.synth=xxx at the boot
prompt, where xxx is speakup's designation for your synthesizer.

> 
> Can it be that some installer person has decided to combine all
> accessibility drivers into one  installation option and one
> kernel, whether they work together or not?

Yes, everything is together in one kernel, and I can assure you they
do all work together, brltty, hardware synthesizers, and all.

> 
> It occurs to me that a hung kernel stuck issuing an error message
> like that might stop the whole system from talking,
> Since brltty is not a module, I cannot even use
> brltty.blacklist=yes.

You'll need to be more specific.

> 
> Even if this is not related, can someone figure out how to
> get it fixed.

You'll need to provide enough details to reproduce the problem. What
did you do to make it happen exactly.

> 
> How about taking brltty completely out of the kernel and make the
> brltty users make their own kernels, like the speakup users had to do before we learned to work with the kernel, and play nice.

Brltty isn't in the kernel, it is entirely in user space as far as I know.

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
