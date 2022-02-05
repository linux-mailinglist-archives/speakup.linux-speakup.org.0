Return-Path: <speakup+bounces-356-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id B14064AA502
	for <lists+speakup@lfdr.de>; Sat,  5 Feb 2022 01:24:37 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=m+UArqUL;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 84FA63813FE; Fri,  4 Feb 2022 19:24:36 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 64979380B59
	for <lists+speakup@lfdr.de>; Fri,  4 Feb 2022 19:24:36 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 624E8380A8C; Fri,  4 Feb 2022 19:24:30 -0500 (EST)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 426CB380943
	for <speakup@linux-speakup.org>; Fri,  4 Feb 2022 19:24:30 -0500 (EST)
Received: from vbox.gregn.net (unknown [172.58.17.242])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by vserver.gregn.net (Postfix) with ESMTPSA id A89D66D6
	for <speakup@linux-speakup.org>; Fri,  4 Feb 2022 16:24:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gregn.net; s=default;
	t=1644020669; bh=THlx7OfLgiCKDg4e8xOzMVbOdB7jWVxTzLoD7kT9NKg=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=m+UArqULpVvBsG0EXNmhq5qLrKMhyCnlRfePaedw7vr7i8bwv7NTfNlBespR4pYg/
	 DU1Av1rrcC/YIiFb33ufPHmDQ29UqcvyJ2hjlW2WUAFyvJjbA23XUDyrhLfcie0Je7
	 R8PsPgoz1vZLn1IqT3VcX+ik7fblrLBypKkDfxgB4tVTsOrsOT0n3XUyE69cpL92R2
	 B0UE5uj3co3PjFaaJUE498PvsW46KUaXyc+1bMkvZs3LGpDpZCAUUjJTOtw2BZM2/0
	 suxp05REThR8pSFKsCTOO6bQgpVFANV89Ui9UPD98qHyVXzDtSVb4MgXszoNW6NZ7F
	 K+rwsZLdgi10w==
Received: by vbox.gregn.net (Postfix, from userid 1000)
	id EEFB9C25C; Fri,  4 Feb 2022 17:24:26 -0700 (MST)
Date: Fri, 4 Feb 2022 17:24:26 -0700
From: Gregory Nowak <greg@gregn.net>
To: speakup@linux-speakup.org
Subject: Re: Raspberry Pi Upgrade from Stretch to Buster killed speakup.
Message-ID: <Yf3Dui+P69Jg19kQ@gregn.net>
References: <E1nFhuz-0001NG-AS@wb5agz.lan>
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
In-Reply-To: <E1nFhuz-0001NG-AS@wb5agz.lan>
X-PGP-Key: http://www.gregn.net/pubkey.asc
X-Virus-Scanned: clamav-milter 0.103.4 at vserver
X-Virus-Status: Clean
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

On Thu, Feb 03, 2022 at 01:37:21PM -0600, Martin McCormick wrote:
> I have two Raspberry Pi's that I upgraded from Debian 9 (stretch)
> to 10 which is Buster.  Both seem to have survived the upgrade
> except for speakup which is now mute.

You don't mention the model of the rpi you have. Do you have audio in
general? if not, this might help you, specifically the sound section:

<https://wiki.debian.org/RaspberryPi3>

I don't have speakup setup right now on either of my rpi units, so
can't test this for you.

> 	It's been 2 or 3 years since I installed speakup on a
> Raspberry Pi and I seem to remember a certain download of speakup
> that works especially well but I don't remember exactly how I got
> it which is why I am asking the list.

The only thing that comes to mind is a tutorial written way back by
Mike Ray which describes on how to get speech from the rpi sound
hardware in both the text console and the GUI. My understanding is
that this isn't an issue anymore, but I could be wrong. I did a quick
search to see if I could find that, but had no luck.

> 
> 	When I was running stretch on these Pi's, I got pretty
> much the same performance one gets from a full-sized desktop
> system so I want to not lose that capability now.  Thanks.

Again, you don't mention the model of rpi you're using. However, I'm
curious what you do for web browsing on the rpi? I wanted to find out
when I first got my rpi3b unit a few years ago now if it could replace
my laptop. I found that it mostly could, but that firefox was laggy
enough and the software speech unresponsive enough when loading a
particularly resource heavy page that serious web browsing couldn't be
done. The rpi4 units with 8G of ram could probably handle it now
though. I also recall Chris Brannon mentioned using an rpi on this
list as a thin client. However, what you said above seems to imply use
as a stand alone unit.

Greg


-- 
web site: http://www.gregn.net
gpg public key: http://www.gregn.net/pubkey.asc
skype: gregn1
(authorization required, add me to your contacts list first)
If we haven't been in touch before, e-mail me before adding me to your contacts.

--
Free domains: http://www.eu.org/ or mail dns-manager@EU.org

