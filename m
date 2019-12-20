Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 2AC6A12720F
	for <lists+speakup@lfdr.de>; Fri, 20 Dec 2019 01:12:50 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 2C37C1C46A6; Thu, 19 Dec 2019 19:12:49 -0500 (EST)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.b="XrmUCmS3";
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 651FC1C4691;
	Thu, 19 Dec 2019 19:12:36 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 090E71C3386; Thu, 19 Dec 2019 19:12:23 -0500 (EST)
Received: from vserver.gregn.net (vserver.gregn.net [IPv6:2607:f2f8:a260::2])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 659531C0136
 for <speakup@linux-speakup.org>; Thu, 19 Dec 2019 19:12:20 -0500 (EST)
Received: from vbox.gregn.net (unknown
 [IPv6:2001:470:d:6c5:8896:7dab:dd82:21ac])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by vserver.gregn.net (Postfix) with ESMTPSA id A857938ED
 for <speakup@linux-speakup.org>; Thu, 19 Dec 2019 16:15:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gregn.net; s=default;
 t=1576800912; bh=hZrvjbWv+JA3LIlEDK4SlXzpuDcWOBdaxP8Izw9L+rM=;
 h=Date:From:To:Subject:References:In-Reply-To:From;
 b=XrmUCmS3zdgCVJ89N+6I3Q+RybeXwMH+oBowchfeK9pimUxSNqFbbwy2qB0edaSF+
 QS9Jezbha+nnwls5OIVjuAElY54AK/eK5+gswnVZqmw/8W02SALPUksly7TDwM4d4k
 mc7Klw/THyM+nqetsCGZO70fWpyQ6jJCsQRrRD7eF1HfevIjmd0mda0ZO9H2VwRy1K
 g5491nZU6eRHk9kjVFxp1l8gpEDqg5klr2iU9RvSNQR2pR7dXkHbjXZSVDlXZM9P1J
 dpzDUALYPOVjepnX4DzzbU3nFusYcjK3Wy0v0tzlQlhOebDEg/Emfe7lPQAM6Sq8JW
 XPJhBxdJ5kcMA==
Received: from greg by vbox.gregn.net with local (Exim 4.84_2)
 (envelope-from <greg@gregn.net>) id 1ii5ty-0001eW-HM
 for speakup@linux-speakup.org; Thu, 19 Dec 2019 17:12:18 -0700
Date: Thu, 19 Dec 2019 17:12:18 -0700
From: Gregory Nowak <greg@gregn.net>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: audionoir.sh
Message-ID: <20191220001218.GA5531@gregn.net>
References: <alpine.NEB.2.21.1912191043150.10818@panix1.panix.com>
 <cae926b2-99c7-d1e1-ebfc-d2fb2bb8932d@slint.fr>
 <alpine.NEB.2.21.1912191130270.5097@panix1.panix.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.NEB.2.21.1912191130270.5097@panix1.panix.com>
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

Here's a refresher from the list archives:

<http://linux-speakup.org/pipermail/speakup/2007-April/046531.html>

Greg


On Thu, Dec 19, 2019 at 11:32:25AM -0500, Jude DaShiell wrote:
> In the past other projects not related to speakup had been made
> available some of which on the speakup web page itself so that was my
> reason for posting this script here.


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
