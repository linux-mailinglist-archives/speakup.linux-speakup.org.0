Return-Path: <speakup+bounces-686-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id C70025A333D
	for <lists+speakup@lfdr.de>; Sat, 27 Aug 2022 02:50:42 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=tH0h9s2j;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 4B81A380E63; Fri, 26 Aug 2022 20:50:42 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 2BB15380C1B
	for <lists+speakup@lfdr.de>; Fri, 26 Aug 2022 20:50:42 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 5EC3C380C5D; Fri, 26 Aug 2022 20:50:33 -0400 (EDT)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 323D0380C1B
	for <speakup@linux-speakup.org>; Fri, 26 Aug 2022 20:50:33 -0400 (EDT)
Received: from vbox.gregn.net (unknown [IPv6:2607:fb90:728b:c08b:329e:7b67:4134:3c8c])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	by vserver.gregn.net (Postfix) with ESMTPSA id 301BE36B;
	Fri, 26 Aug 2022 17:50:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gregn.net; s=default;
	t=1661561432; bh=+UuBvTR1qhix567a3ok/x+IOUj+eR8csmaIUTCABd/U=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tH0h9s2jGsiLlgtcEizZmygUhc5U/ocBxZdyAtLCmIRq5sUm6OWY5sh3FJhutXnMX
	 i3ZhSh9ddXIeqWiI5W+zU4P+irtc+1JfXEDSO6tT8hH3K90khhJmQFkyB9l/rTw773
	 rlKBBj0fOW8rYQKpYHfNYnLZdujGN30aRmz5odHO0VXdDBI9tYrYp18R/vdI49/ml5
	 p+ZM1dl4/0rP/i1lBwaw9kRTwvXp4y6np8qQQxxtMcDAKkAlewJYSINuZ8Qg0H3dHw
	 7uC5etgLu2oL0ykTNEOTSKP4u2FO01XHWp7kVjUPK3Y6/62MAqeFWwiHVciQBr7gS0
	 Xna+hRmS2ex3A==
Received: by vbox.gregn.net (Postfix, from userid 1000)
	id 55E0AC1B5; Fri, 26 Aug 2022 17:50:31 -0700 (MST)
Date: Fri, 26 Aug 2022 17:50:31 -0700
From: Gregory Nowak <greg@gregn.net>
To: K0LNY_Glenn <glenn@ervin.email>
Cc: Jude DaShiell <jdashiel@panix.com>, speakup@linux-speakup.org
Subject: Re: hopefully some help with AntiX
Message-ID: <YwlqV+wBkx1HzRtX@gregn.net>
References: <02b101d8b963$7d039fc0$80ffa8c0@Win7VM>
 <alpine.DEB.2.21.1.2208262017280.8190@willempc.meraka.csir.co.za>
 <006201d8b97a$ff989cd0$80ffa8c0@Win7VM>
 <006601d8b97e$e9f9a6e0$80ffa8c0@Win7VM>
 <Ywle3kA6oGDCREfZ@gregn.net>
 <00b601d8b9a9$5c664f10$80ffa8c0@Win7VM>
 <acd2012-2ab5-5ff2-4fa6-4e518867727a@panix.com>
 <00bc01d8b9aa$824f8ce0$80ffa8c0@Win7VM>
 <YwlmdgNYEEgvwGSZ@gregn.net>
 <00ca01d8b9ad$a9f42460$80ffa8c0@Win7VM>
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
In-Reply-To: <00ca01d8b9ad$a9f42460$80ffa8c0@Win7VM>
X-PGP-Key: http://www.gregn.net/pubkey.asc
X-Virus-Scanned: clamav-milter 0.103.6 at vserver
X-Virus-Status: Clean
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

I don't remember if you mentioned this earlier, but you did run

apt update

right? If you have, then antiX really seems to have a limited
repository.

Greg


On Fri, Aug 26, 2022 at 07:40:52PM -0500, K0LNY_Glenn wrote:
> Man, I thought that would work, but it said it cannot locate a package named 
> telnetd
> Glenn
> ----- Original Message ----- 
> From: "Gregory Nowak" <greg@gregn.net>
> To: "K0LNY_Glenn" <glenn@ervin.email>
> Cc: "Jude DaShiell" <jdashiel@panix.com>; <speakup@linux-speakup.org>
> Sent: Friday, August 26, 2022 7:33 PM
> Subject: Re: hopefully some help with AntiX
> 
> 
> On Fri, Aug 26, 2022 at 07:18:17PM -0500, K0LNY_Glenn wrote:
> > Then all 1000 ports show up in nmap as closed.
> > So it seems if I allow a port in ufw, it shows up as closed, but not
> > filtered.
> > So filtered means ufw is running, and if 22 gets allowed, it is not
> > filtered, but still closed.
> 
> If a port is filtered, ufw is running. If a port is closed, ufw isn't
> running, or is allowing that port through, but there is no service
> listening on that port.
> 
> It seems you have figured out how to disable ufw, and how to get it to
> open ports. If
> 
> apt install openssh-server
> 
> doesn't work, see if
> 
> apt install telnetd
> 
> does.
> 
> Greg
> 
> 
> -- 
> web site: http://www.gregn.net
> gpg public key: http://www.gregn.net/pubkey.asc
> skype: gregn1
> (authorization required, add me to your contacts list first)
> If we haven't been in touch before, e-mail me before adding me to your 
> contacts.
> 
> --
> Free domains: http://www.eu.org/ or mail dns-manager@EU.org
> 
> 

-- 
web site: http://www.gregn.net
gpg public key: http://www.gregn.net/pubkey.asc
skype: gregn1
(authorization required, add me to your contacts list first)
If we haven't been in touch before, e-mail me before adding me to your contacts.

--
Free domains: http://www.eu.org/ or mail dns-manager@EU.org

