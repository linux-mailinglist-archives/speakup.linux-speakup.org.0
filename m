Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id BD2B36774F
	for <lists+speakup@lfdr.de>; Sat, 13 Jul 2019 02:47:46 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id C28CC1C3742; Fri, 12 Jul 2019 20:47:45 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.b="VgxNgp8T";
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 005481C42FA;
	Fri, 12 Jul 2019 20:47:02 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 7B51D1C3742; Fri, 12 Jul 2019 20:46:56 -0400 (EDT)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
 by befuddled.reisers.ca (Postfix) with ESMTPS id A79331C3208
 for <speakup@linux-speakup.org>; Fri, 12 Jul 2019 20:46:55 -0400 (EDT)
Received: from vbox.gregn.net (unknown
 [IPv6:2001:470:d:6c5:1c66:a9af:c229:a6c8])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by vserver.gregn.net (Postfix) with ESMTPSA id 4CF4A29AF;
 Fri, 12 Jul 2019 17:48:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gregn.net; s=default;
 t=1562978903; bh=W1cDxqPtwaYUSqAPJJNEkGyGvwtv7TWpa9b1CyQ5Qfo=;
 h=Date:From:To:Subject:References:In-Reply-To:From;
 b=VgxNgp8TpKiCwy+Rt52B2M5V5Ze5WsvyewxpEBKeMWWH5AstiAXDgsfwHG9Ey+HyV
 gJvLwz3Nr4SHm4iLaUhsvHaIUP5dtWPcERiKA87dapqVX8AunH2Yr9jvo2FFj2rNz/
 JTqbJAeSW1OrUNMLRw/xJCWTmscpegDuCQviArk8ka26qYmPXICtA/G38TQ3NzgNXj
 iEY+b1itQ3ztZ0WT5gP0ZwfH9s/IzI1fDqd02KjjWFxS6QyecBHkCWe8qPqKmxQp9p
 c0Oh8w+iRnpMah3PKuS/DH6ubSs9bcT6UnzbuDub8Sdbyalqeik0ZlMy19yE4zm4nc
 UfOTw2hZt6fqA==
Received: from greg by vbox.gregn.net with local (Exim 4.84_2)
 (envelope-from <greg@gregn.net>)
 id 1hm6BD-0002cY-QK; Fri, 12 Jul 2019 17:46:23 -0700
Date: Fri, 12 Jul 2019 17:46:23 -0700
From: Gregory Nowak <greg@gregn.net>
To: Samuel Thibault <samuel.thibault@ens-lyon.org>, speakup@linux-speakup.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Okash Khawaja <okash.khawaja@gmail.com>, devel@driverdev.osuosl.org,
 Kirk Reiser <kirk@reisers.ca>, Simon Dickson <simonhdickson@gmail.com>,
 linux-kernel@vger.kernel.org, Christopher Brannon <chris@the-brannons.com>
Subject: Re: [HELP REQUESTED from the community] Was: Staging status of speakup
Message-ID: <20190713004623.GA9159@gregn.net>
References: <20190315130035.6a8f16e9@narunkot>
 <20190316031831.GA2499@kroah.com>
 <20190706200857.22918345@narunkot>
 <20190707065710.GA5560@kroah.com> <20190712083819.GA8862@kroah.com>
 <20190712092319.wmke4i7zqzr26tly@function>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190712092319.wmke4i7zqzr26tly@function>
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

On Fri, Jul 12, 2019 at 11:23:19AM +0200, Samuel Thibault wrote:
> Hello,
> 
> To readers of the linux-speakup: could you help on this so we can get
> Speakup in mainline?  Neither Okash or I completely know what user
> consequences the files in /sys/accessibility/speakup/ have, so could
> people give brief explanations for each file (something like 3-6 lines
> of explanation)?

I have a recollection of documenting most of this on the speakup list
in response to a similar query a number of years ago. Unfortunately,
the speakup mailing list archives aren't easily searchable, and I
don't have a local copy of that mail.

Kirk, doing grep with a few of the file names in
/sys/accessibility/speakup against the list's mbox file archive should
find that message if it's in fact there. If you can please find it,
and post the date when it was sent, we can provide a URL to that
thread as a starting point. If my recollection is wrong, and such a
message isn't in the archives, I'll write up what I know about.

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
