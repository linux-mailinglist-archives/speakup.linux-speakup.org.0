Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from grumpy.reisers.ca (grumpy.reisers.ca [206.248.184.126])
	by mail.lfdr.de (Postfix) with ESMTP id E9E9B19358A
	for <lists+speakup@lfdr.de>; Thu, 26 Mar 2020 03:02:59 +0100 (CET)
Received: by grumpy.reisers.ca (Postfix, from userid 65534)
	id 97DEB428045E; Wed, 25 Mar 2020 22:02:58 -0400 (EDT)
Received: from befuddled.reisers.ca (unknown [10.10.10.10])
	by grumpy.reisers.ca (Postfix) with ESMTP id 55D88428047C
	for <lists+speakup@lfdr.de>; Wed, 25 Mar 2020 21:59:47 -0400 (EDT)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 2DEE31C73BB; Wed, 25 Mar 2020 21:59:45 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 37CB61C73B2;
	Wed, 25 Mar 2020 21:59:33 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id E49CC1C57BA; Wed, 25 Mar 2020 21:59:18 -0400 (EDT)
Received: from mx01.forethought.net (mx01.forethought.net [216.98.197.2])
 by befuddled.reisers.ca (Postfix) with ESMTPS id D1A3E1C0DB1
 for <speakup@linux-speakup.org>; Wed, 25 Mar 2020 21:59:16 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
 by mx01.forethought.net (Postfix) with ESMTP id D197961182
 for <speakup@linux-speakup.org>; Wed, 25 Mar 2020 19:59:13 -0600 (MDT)
X-Spam-Flag: NO
X-Spam-Score: -0.199
X-Spam-Level: 
X-Spam-Status: No, score=-0.199 tagged_above=-999 required=10
 tests=[ALL_TRUSTED=-1, BAYES_50=0.8, SPF_HELO_NONE=0.001]
 autolearn=no autolearn_force=no
Received: from mx01.forethought.net ([127.0.0.1])
 by localhost (mx01.forethought.net [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gzchtjo-hJMr for <speakup@linux-speakup.org>;
 Wed, 25 Mar 2020 19:59:12 -0600 (MDT)
Received: from msa.forethought.net (msa.forethought.net [216.241.36.1])
 (using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx01.forethought.net (Postfix) with ESMTPS id 58C5560D18
 for <speakup@linux-speakup.org>; Wed, 25 Mar 2020 19:59:12 -0600 (MDT)
Received: from 75-166-70-176.hlrn.qwest.net ([75.166.70.176]
 helo=rings.ka0vba.ampr.org)
 by msa02.forethought.net with esmtpsa (TLSv1:AES256-SHA:256)
 (Exim 4.80.1) (envelope-from <ka0vba@dimcom.net>) id 1jHHpZ-0005tJ-DE
 for speakup@linux-speakup.org; Wed, 25 Mar 2020 20:01:13 -0600
Received: from mail by rings.ka0vba.ampr.org with local (Exim 4.69)
 (envelope-from <ka0vba@dimcom.net>) id 1jHHnb-0000mu-AZ
 for speakup@linux-speakup.org; Wed, 25 Mar 2020 19:59:11 -0600
To: speakup@linux-speakup.org
Subject: Re: [raspberry-vi] A bit off topic,
 Speakup and Debian Stretch-Buster (fwd)
In-Reply-To: <20200322210257.zqxh5jp7fo64hp36@function>
Message-Id: <E1jHHnb-0000mu-AZ@rings.ka0vba.ampr.org>
From: mail <ka0vba@dimcom.net>
Date: Wed, 25 Mar 2020 19:59:11 -0600
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

This may be related:
I am trying to install debian10.3 from the installation iso (I think it was dated
February 8th.
The Kernel hangs issueing the following message repeatedly
until I shut down the system:

"/var/run/brltty-xorg no such fileor directory."

Of course I am not attempting to use brltty.

I also noticed that there is not aninstallation option for brltty.
There is not even an option for a hardware synthizer with speakup.

Can it be that some installer person has decided to combine all
accessibility drivers into one  installation option and one
kernel, whether they work together or not?

It occurs to me that a hung kernel stuck issuing an error message
like that might stop the whole system from talking,
Since brltty is not a module, I cannot even use
brltty.blacklist=yes.

Even if this is not related, can someone figure out how to
get it fixed.

How about taking brltty completely out of the kernel and make the
brltty users make their own kernels, like the speakup users had to do before we learned to work with the kernel, and play nice.

D. Curtis Willoughby  ka0vba@dimcom.net

p.s. We really need an installer option to install with a hardware synthizer, too!


_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
