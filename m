Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from grumpy.reisers.ca (unknown [IPv6:2001:470:1d:288:8e89:a5ff:fe59:6a4d])
	by mail.lfdr.de (Postfix) with ESMTP id 10BF919A00C
	for <lists+speakup@lfdr.de>; Tue, 31 Mar 2020 22:45:59 +0200 (CEST)
Received: by grumpy.reisers.ca (Postfix, from userid 65534)
	id 58D6342804D6; Tue, 31 Mar 2020 16:45:34 -0400 (EDT)
Received: from befuddled.reisers.ca (unknown [10.10.10.10])
	by grumpy.reisers.ca (Postfix) with ESMTP id 7CBB7428049C
	for <lists+speakup@lfdr.de>; Tue, 31 Mar 2020 16:45:01 -0400 (EDT)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 2DD8A1C73C4; Tue, 31 Mar 2020 16:44:58 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 336F61C73C9;
	Tue, 31 Mar 2020 16:44:13 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id B1E7D1C57AE; Tue, 31 Mar 2020 16:43:59 -0400 (EDT)
Received: from mx01.forethought.net (mx01.forethought.net [216.98.197.2])
 by befuddled.reisers.ca (Postfix) with ESMTPS id CB0BF1C0129
 for <speakup@linux-speakup.org>; Tue, 31 Mar 2020 16:43:55 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
 by mx01.forethought.net (Postfix) with ESMTP id 70EFB61A18;
 Tue, 31 Mar 2020 14:43:51 -0600 (MDT)
X-Spam-Flag: NO
X-Spam-Score: -2.899
X-Spam-Level: 
X-Spam-Status: No, score=-2.899 tagged_above=-999 required=10
 tests=[ALL_TRUSTED=-1, BAYES_00=-1.9, SPF_HELO_NONE=0.001]
 autolearn=no autolearn_force=no
Received: from mx01.forethought.net ([127.0.0.1])
 by localhost (mx01.forethought.net [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JoLlMs9VwOYD; Tue, 31 Mar 2020 14:43:50 -0600 (MDT)
Received: from msa.forethought.net (msa.forethought.net [216.241.36.1])
 (using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx01.forethought.net (Postfix) with ESMTPS id 155D461055;
 Tue, 31 Mar 2020 14:43:50 -0600 (MDT)
Received: from 75-166-73-46.hlrn.qwest.net ([75.166.73.46]
 helo=rings.ka0vba.ampr.org)
 by msa02.forethought.net with esmtpsa (TLSv1:AES256-SHA:256)
 (Exim 4.80.1) (envelope-from <ka0vba@dimcom.net>)
 id 1jJNlZ-00069d-Lu; Tue, 31 Mar 2020 14:45:45 -0600
Received: from curtis by rings.ka0vba.ampr.org with local (Exim 4.69)
 (envelope-from <ka0vba@dimcom.net>)
 id 1jJNjh-0001Je-B6; Tue, 31 Mar 2020 14:43:49 -0600
To: ka0vba@dicom.net, speakup@linux-speakup.org
Subject: trouble booting debian10.3 with speakup
Message-Id: <E1jJNjh-0001Je-B6@rings.ka0vba.ampr.org>
From: "D. Curtis Willoughby" <ka0vba@dimcom.net>
Date: Tue, 31 Mar 2020 14:43:49 -0600
X-Authenticated-Sender: ka0vba@dimcom.net
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

Thank you, Samual for taking this problem seriously rather than
ignoring the problem and then attempting to put down the
complainer, as the other reply did.

It has been a long time, and a lot of water has gone over the
dam, but I'll do the best I can.

I downloaded the iso from:

https://cdimage.debian.org/debian-cd/current/i386/iso-cd/debian-10.3.0-i386-netinst.iso

If it has not been changed, it should still be bad.

Unfortunately, I have deleted both of my copys, so I cannot
provide check-sums.

I'll skip the gory details of how I had to boot the usb stick.
If you really want them, I can provide.

At the boot screen, I entered "s" and tab and removed the "quiet".
Then I put in some boot parameters, which varied a little between
attenpts.   They included "fb=false", "graphics=no", or "graphics=none",
and always ending up with "debconf/priority=medium".
Then I pressed enter .  The result
was always the same, andwas on the original e-mail as closely as I
could reproduce it by hand.

> > This may be related:
> > (to other failures to speak.)
> > I am trying to install debian10.3 from the installation iso (I think it was dated
> > February 8th.
> > The Kernel hangs issueing the following message repeatedly
> > until I shut down the system:
> > 
> > "/var/run/brltty-xorg no such file or directory."
> > 
> > Of course I am not attempting to use brltty.

D. Curtis Willoughby

p.s.  Watch for a coming proposal which I think I will call
"the borg solution to brltty"

On Thu, 26 Mar 2020 09:46:33 +0100
Samuel Thibault <samuel.thibault@ens-lyon.org>wrote:
Old Subject: Re: [raspberry-vi] A bit off topic, Speakup and ...
> On Wed, Mar 25, 2020 at 07:59:11PM -0600, ka0vba@dimcom.net wrote:
> > Even if this is not related, can someone figure out how to
> > get it fixed.
> 
> You'll need to provide enough details to reproduce the problem. What
> did you do to make it happen exactly.

Also, please provide the exact URL from which you download the ISO
image. There are various images in several places, and while normally
they all support accessibility, some of them might be borked, so we need
to know *which* one is to be able to fix it.

Samuel


_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
