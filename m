Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 1104D2E2288
	for <lists+speakup@lfdr.de>; Wed, 23 Dec 2020 23:44:17 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 64F1D380F9F; Wed, 23 Dec 2020 17:44:16 -0500 (EST)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=zGGt2l68;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id D8657380F38;
	Wed, 23 Dec 2020 17:44:14 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id C4ADE380BB0; Wed, 23 Dec 2020 17:44:13 -0500 (EST)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
 by befuddled.reisers.ca (Postfix) with ESMTPS id A91DA380969
 for <speakup@linux-speakup.org>; Wed, 23 Dec 2020 17:44:13 -0500 (EST)
Received: from vbox.gregn.net (unknown
 [IPv6:2607:fb90:4a37:aca3:6c3e:ee27:88b5:29a0])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by vserver.gregn.net (Postfix) with ESMTPSA id 524C41B44
 for <speakup@linux-speakup.org>; Wed, 23 Dec 2020 14:43:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gregn.net; s=default;
 t=1608763425; bh=hll+Kne8kNBigmZQ70UwFafN+1xr2vSv2jje2oGemm4=;
 h=Date:From:To:Subject:References:In-Reply-To:From;
 b=zGGt2l68iZTMjpLSD7Ijci5sC7176XXNM3ZV/yPoDVIvBnD1hrl5Uy0h7maAoLvPX
 bxZWyyfGtK15NM3NhDyk+NPFP4PHYVFi3GGWRneUThsrGeVcfXzXv56vhflYWBVbhx
 NFBME1L7HEwOYEVKxbWqu+GnX1nypU+PixHoChIx53q4NfrK9t2K3GiUwwVyi/3rY1
 U5PFPd8EypHm6wFJXrvFY+IKpt6/OZhES7JdnV21ArSedzkqZPDHc1LUW6w2x3QmDW
 ABwS/VbQnJIgABBbv2WWYa3AFjhjva8k2YnboXq02voUaIHniA0+onDwdE80H7dkGx
 xRV5/8J4+JEew==
Received: from greg by vbox.gregn.net with local (Exim 4.84_2)
 (envelope-from <greg@gregn.net>) id 1ksCr5-0001uE-Na
 for speakup@linux-speakup.org; Wed, 23 Dec 2020 15:43:39 -0700
Date: Wed, 23 Dec 2020 15:43:39 -0700
From: Gregory Nowak <greg@gregn.net>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Dual Boot Questions / VirtualBox
Message-ID: <20201223224339.GA4720@gregn.net>
References: <CA5BEE26-38AC-4030-A0AA-706B0AAE6378@icloud.com>
 <20201223045644.GA11497@gregn.net>
 <77D25D50-B4EA-4B47-BC95-17E17F6CEABC@icloud.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <77D25D50-B4EA-4B47-BC95-17E17F6CEABC@icloud.com>
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

On Wed, Dec 23, 2020 at 07:40:07AM -0500, Reece O'Bryan wrote:
> Can you describe more about your set up that you are explaining. Pretty positive you are talking about it being a MacBook for the host operating system. Are you then talking about running virtual machines or dual booting?

I'm deliberately starting my comment here, because it is at the end of
a line. Your e-mail client/editor is still not line wrapping
unfortunately. I never said I'm using a macbook. I've never used one,
and don't plan to get one. I'm both dual booting, and using
virtualbox. My laptop dual boots GNU/Linux and windows 10, and my
desktop runs GNU/linux as host, and a windows 10 guest among others.

> 
> Why would you run both NVDA and Orca at the same time?

I don't, and it isn't possible anyway. I run orca under GNU/Linux, and
NVDA under windows. What's obvious to one person may not be obvious to
someone else, apologies for the confusion.

> 
> So for server purposes, a lightweight and yet accessible box on command line only needs speakup, espeak-ng,
> and espeakup?

For server purposes, speech isn't required. My VPS for example only
has ssh and serial access. Perhaps you should explain what it is you
want (server or work station), and what you want to do with it if work
station, and we can offer suggestions on possible options.

> 
> I tried fixing the syntax to be more readable. Is this what you are referring to? Please let me know if it is not so that I can adjust. 

What you're saying has always been readable to me. If you can't get
your e-mail client/editor to line wrap, try hitting your enter key
every sentence or two. Don't worry about it otherwise, it's just an
inconvenience when replying inline, not a show stopper.

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
