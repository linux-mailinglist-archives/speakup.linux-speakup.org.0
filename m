Return-Path: <speakup+bounces-435-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id CA17052C7F5
	for <lists+speakup@lfdr.de>; Thu, 19 May 2022 01:53:24 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=YZzLhU4X;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 41E8D380D0B; Wed, 18 May 2022 19:53:24 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 2CAB5380B0C
	for <lists+speakup@lfdr.de>; Wed, 18 May 2022 19:53:24 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 7976F380C66; Wed, 18 May 2022 19:53:17 -0400 (EDT)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 2434A38092D
	for <speakup@linux-speakup.org>; Wed, 18 May 2022 19:53:17 -0400 (EDT)
Received: from vbox.gregn.net (unknown [IPv6:2607:fb90:2d9f:c030:1614:ab0f:ea5b:f799])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by vserver.gregn.net (Postfix) with ESMTPSA id AD427DE0;
	Wed, 18 May 2022 16:53:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gregn.net; s=default;
	t=1652917983; bh=FgwmW9Rr91MlcWaFNriTo34gq6CVRayU7wxB3W6M/ds=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YZzLhU4XiMH2ybkKku1p9M6Q8E40XwmpZXtL+ykOvwPeV/6yJZPEQ9VzGlX7ZEMA6
	 xPPhd1l3yGBpIEWvgc0R3th8euFf//LDhN4dWiv/Bf7uT7BHQd0HFEsd+sRU+/MO+G
	 49FgWR7gm1bqOqYe6oTq/dHTu9jwyBPWeeTZ8o2DnW4IiCxgARlieVx/CagPY/2Pxx
	 Jh/gK44vo1EroC2f5LtxF4ztDgHtsDwwAIRJFEr65IEYSNkGkQbvz1plFdJGFo1pGB
	 qarGaREX+pLd5NEw3z0EqwF2TAehYnoM4OVGOnD9NgX6W0/YsajULDBt0zABCkl2Fl
	 Tw7FLa9MEzJFw==
Received: by vbox.gregn.net (Postfix, from userid 1000)
	id 79CB6C1CF; Wed, 18 May 2022 16:47:42 -0700 (MST)
Date: Wed, 18 May 2022 16:47:42 -0700
From: Gregory Nowak <greg@gregn.net>
To: K0LNY_Glenn <glenn@ervin.email>
Cc: jdashiel@panix.com,
	"Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Getting Speech-Dispatcher To Work
Message-ID: <YoWFnkPR+veXpoo/@gregn.net>
References: <061e01d86acb$37cbd440$82ffa8c0@WIN40RPKAT965G>
 <180d7d62bb8.2923.7f5f0e00eb39c74e480406aa7dcc21f8@panix.com>
 <064e01d86ad4$bc7efec0$82ffa8c0@WIN40RPKAT965G>
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
In-Reply-To: <064e01d86ad4$bc7efec0$82ffa8c0@WIN40RPKAT965G>
X-PGP-Key: http://www.gregn.net/pubkey.asc
X-Virus-Scanned: clamav-milter 0.103.4 at vserver
X-Virus-Status: Clean
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

When I did a search for
ubuntu system wide home permissions

I got this as the first result:

<https://ubuntu.com/blog/private-home-directories-for-ubuntu-21-04>

Did you find this as well, and if yes, did you read it?

As far as your speech-dispatcher error, when you run spd-conf, one of
the questions it asks you is do you want clients to communicate
through a tcp port or unix socket. You need to pick the unix socket
choice. Alternatively edit /etc/speech-dispatcher/speechd.conf to set
that option. You need to do a

killall speech-dispatcher;speech-dispatcher

or reboot for it to take effect.

Greg


On Wed, May 18, 2022 at 11:31:32AM -0500, K0LNY_Glenn wrote:
> One of the errors I get when running sudo spd-conf is 
> error, home directory inaccessible, permission denied.
> Why would I get this error when running this?
> Yesterday I tried to look into the .cache/speech-dispatcher directory and it stated that I did not have permission.
> Should I try to use chmod or chown to change the home directory to something like 755?
> Glenn

-- 
web site: http://www.gregn.net
gpg public key: http://www.gregn.net/pubkey.asc
skype: gregn1
(authorization required, add me to your contacts list first)
If we haven't been in touch before, e-mail me before adding me to your contacts.

--
Free domains: http://www.eu.org/ or mail dns-manager@EU.org

