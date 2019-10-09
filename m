Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (tunnel25281-pt.tunnel.tserv21.tor1.ipv6.he.net [IPv6:2001:470:1c:288::2])
	by mail.lfdr.de (Postfix) with ESMTP id B4FBDD1B90
	for <lists+speakup@lfdr.de>; Thu, 10 Oct 2019 00:20:09 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id EAACA1C46BC; Wed,  9 Oct 2019 18:20:08 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.b="KdBJoU0a";
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id CD6351C4693;
	Wed,  9 Oct 2019 18:20:03 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 6875B1C444D; Wed,  9 Oct 2019 18:20:01 -0400 (EDT)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 84C091C43BD
 for <speakup@linux-speakup.org>; Wed,  9 Oct 2019 18:19:59 -0400 (EDT)
Received: from vbox.gregn.net (unknown
 [IPv6:2001:470:d:6c5:b07e:6dbd:6ee8:c560])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by vserver.gregn.net (Postfix) with ESMTPSA id 30A3CC4A
 for <speakup@linux-speakup.org>; Wed,  9 Oct 2019 15:21:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gregn.net; s=default;
 t=1570659669; bh=bMQUg9lmk9k4EHOZPTKauPg1sRvX8XCmbA2yk3eUYV8=;
 h=Date:From:To:Subject:References:In-Reply-To:From;
 b=KdBJoU0awBBvJmapp2VlyjhGw1xpMTOglBNJSojE/rEhr8iruV5eOz77dIO3K6VN/
 uTKg7wTma/eJhF0zVZnz1cDG9zTDLcjL59uSUwopZe1bfZf3E/2z/NdxVhW+P7+eg1
 RB0cUSJTqi+gIcF1jd0Ej9+30jJ4EZDSAmCcumOnKqHNY5maORFTPkCUPvlgWs7icQ
 dIVmjrsDjCt7Hff2GYY+m1TY/YfGSVlbo52ImuZiVwIH77lGEFIEKqYYMU2WF+R3yo
 yFJFIucuAJC7f2J/T5wenQoHnjq4UJNxquT8uXhvnvkbl8RQ/f2xrRBqkqIFBNjx/t
 6/Ys5AqB6xxiQ==
Received: from greg by vbox.gregn.net with local (Exim 4.84_2)
 (envelope-from <greg@gregn.net>) id 1iIKJI-0001al-W9
 for speakup@linux-speakup.org; Wed, 09 Oct 2019 15:19:57 -0700
Date: Wed, 9 Oct 2019 15:19:56 -0700
From: Gregory Nowak <greg@gregn.net>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Okash's talk
Message-ID: <20191009221956.GA5196@gregn.net>
References: <alpine.DEB.2.21.1910061248420.25696@befuddled.reisers.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1910061248420.25696@befuddled.reisers.ca>
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

I'll second what Kirk said. I just listened to the talk yesterday, and
think Okash gave a great overview of what speakup is, what it does,
how its development progressed, and where it is now. I also found the
overview of how the speakup code is put together and what each
part does to be informative. I also noticed in the Q and A
there was only one question asked. I'd like to think that's due to how
well Okash covered things rather than due to disinterest from the
attendees.

Greg


On Sun, Oct 06, 2019 at 12:56:16PM -0400, Kirk Reiser wrote:
> Hi Okash er al: I want to thank you for that very interesting talk. I
> stupidly deleted your original message and link before listening to
> the talk so I couldn't reply to that message because it hasn't shown
> up in the archives yet.
> 
> Could you please give us some info on how the talk was received? How
> many folks attended? Were there any blinks/users in attendence?
> 
> I believe you gave a very good overview of speakup. I certainly enjoyed
> the talk and am glad to have heard your voice. That's one of those
> blink things you know! 'grin'
> 
> Once again thank you very much.
>   Kirk
> 
> _______________________________________________
> Speakup mailing list
> Speakup@linux-speakup.org
> http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
> 

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
