Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (tunnel25281-pt.tunnel.tserv21.tor1.ipv6.he.net [IPv6:2001:470:1c:288::2])
	by mail.lfdr.de (Postfix) with ESMTP id C76C2126729
	for <lists+speakup@lfdr.de>; Thu, 19 Dec 2019 17:33:24 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 19E191C4664; Thu, 19 Dec 2019 11:33:24 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 6AA781C469C;
	Thu, 19 Dec 2019 11:32:31 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id A452B1C3369; Thu, 19 Dec 2019 11:32:27 -0500 (EST)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by befuddled.reisers.ca (Postfix) with ESMTPS id DCBBD1C0136
 for <speakup@linux-speakup.org>; Thu, 19 Dec 2019 11:32:25 -0500 (EST)
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
 by mailbackend.panix.com (Postfix) with ESMTP id 47dy8T42Szzmnt
 for <speakup@linux-speakup.org>; Thu, 19 Dec 2019 11:32:25 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
 id 47dy8T2pLRzcbc; Thu, 19 Dec 2019 11:32:25 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
 by panix1.panix.com (Postfix) with ESMTP id 47dy8T2MW3zcbV
 for <speakup@linux-speakup.org>; Thu, 19 Dec 2019 11:32:25 -0500 (EST)
Date: Thu, 19 Dec 2019 11:32:25 -0500
From: Jude DaShiell <jdashiel@panix.com>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: audionoir.sh
In-Reply-To: <cae926b2-99c7-d1e1-ebfc-d2fb2bb8932d@slint.fr>
Message-ID: <alpine.NEB.2.21.1912191130270.5097@panix1.panix.com>
References: <alpine.NEB.2.21.1912191043150.10818@panix1.panix.com>
 <cae926b2-99c7-d1e1-ebfc-d2fb2bb8932d@slint.fr>
MIME-Version: 1.0
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

In the past other projects not related to speakup had been made
available some of which on the speakup web page itself so that was my
reason for posting this script here.

On Thu, 19 Dec 2019, Didier Spaier wrote:

> Date: Thu, 19 Dec 2019 11:19:50
> From: Didier Spaier <didier@slint.fr>
> Reply-To: Speakup is a screen review system for Linux.
>     <speakup@linux-speakup.org>
> To: speakup@linux-speakup.org
> Subject: Re: audionoir.sh
>
> Hi Jude,
>
> Maybe you intended to post in another list, like the Slint mailing list?
>
> I ask, as this works but does not seem to be involve speakup.
>
> Best,
>
> Didier
>
> Le 19/12/19 ? 16:45, Jude DaShiell a ?crit?:
> > Here's a script that plays audionoir.sh now.  Modify the station variable
> > though to another working radio stream and you can get it playing that
> > stream too.
> >
> > #!/usr/bin/env bash
> > # file: audionoir.sh - listen to audionoir radio script
> > # from: radio.sh - template for new stations
> > station="http://198.245.61.123:8000/noir/"
> > rvlc --quiet --novideo --key-vol-up 123 --no-skinned-playlist $station
> >
> _______________________________________________
> Speakup mailing list
> Speakup@linux-speakup.org
> http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
>

-- 

_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
