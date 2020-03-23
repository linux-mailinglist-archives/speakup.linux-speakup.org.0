Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from grumpy.reisers.ca (grumpy.reisers.ca [206.248.184.126])
	by mail.lfdr.de (Postfix) with ESMTP id E555519026C
	for <lists+speakup@lfdr.de>; Tue, 24 Mar 2020 01:04:02 +0100 (CET)
Received: by grumpy.reisers.ca (Postfix, from userid 65534)
	id 020EF4280512; Mon, 23 Mar 2020 19:47:44 -0400 (EDT)
Authentication-Results: grumpy.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.b="STcVgUTF";
	dkim-atps=neutral
Received: from befuddled.reisers.ca (unknown [10.10.10.10])
	by grumpy.reisers.ca (Postfix) with ESMTP id 7BEAC4280469
	for <lists+speakup@lfdr.de>; Mon, 23 Mar 2020 19:45:42 -0400 (EDT)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 641121C73D8; Mon, 23 Mar 2020 19:45:25 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=STcVgUTF;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 6099B1C57BF;
	Mon, 23 Mar 2020 19:45:13 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 6F4DB1C57BE; Mon, 23 Mar 2020 19:45:05 -0400 (EDT)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 481741C0135
 for <speakup@linux-speakup.org>; Mon, 23 Mar 2020 19:45:03 -0400 (EDT)
Received: from vbox.gregn.net (unknown
 [IPv6:2607:fb90:a686:c07f:a00:27ff:fe01:8e92])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by vserver.gregn.net (Postfix) with ESMTPSA id 2DB79239A;
 Mon, 23 Mar 2020 16:46:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gregn.net; s=default;
 t=1585007171; bh=I/Q2T0DGtIrvRO9qq5E3D7oS1sdchqCRpEsO4bj4dZc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=STcVgUTFzh0dUdalA3bgP8S2ifbYhyF/5FFmFUJbFWY22l4toQqBid4zo9vYeb7oj
 ok+ODmj/NPuxkJhwoxsOZxw7F5YTMdVR07NS1n4l4jzlIRkuSY/npVNdH33L9QV52B
 V6tah4sMUPGOWIc8PchxEDroyrs685ZSh+blIsX14FjMwryWYgpXzeVd7qim0P9FTN
 /uBbosDzqxEwVuCDULBr94hm5plazekkLBcqK/o9WF62BY/GPvGAGptKdJMm4PPyYo
 /bQ3l0kiRQKWyGlWRoNeXZSyUgifq4ciMteJYMdPJ7m7u0JUfuPioX8BXDGyNKyyHO
 W1RWotvYH+jRA==
Received: from greg by vbox.gregn.net with local (Exim 4.84_2)
 (envelope-from <greg@gregn.net>)
 id 1jGWke-0001Bw-Vh; Mon, 23 Mar 2020 16:45:00 -0700
Date: Mon, 23 Mar 2020 16:45:00 -0700
From: Gregory Nowak <greg@gregn.net>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: [raspberry-vi] A bit off topic, Speakup and Debian
 Stretch-Buster (fwd)
Message-ID: <20200323234500.GB4024@gregn.net>
References: <Pine.LNX.4.64.2003211738470.31197@server2.shellworld.net>
 <20200322210257.zqxh5jp7fo64hp36@function>
 <20200323060039.GB4138@gregn.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200323060039.GB4138@gregn.net>
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

On Sun, Mar 22, 2020 at 11:00:40PM -0700, Gregory Nowak wrote:
> Yes, I've been testing devuan 3 beta install isos this past week,
> which is based on debian 11.

Oops, I meant debian 10.

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
