Return-Path: <speakup+bounces-654-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 4B3B95A1D69
	for <lists+speakup@lfdr.de>; Fri, 26 Aug 2022 01:58:56 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=jmRDODhK;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 662DE380F67; Thu, 25 Aug 2022 19:58:54 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 501E0380E64
	for <lists+speakup@lfdr.de>; Thu, 25 Aug 2022 19:58:54 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 4E1FE380E68; Thu, 25 Aug 2022 19:58:48 -0400 (EDT)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 08587380E5C
	for <speakup@linux-speakup.org>; Thu, 25 Aug 2022 19:58:48 -0400 (EDT)
Received: from vbox.gregn.net (unknown [172.56.80.126])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by vserver.gregn.net (Postfix) with ESMTPSA id AF4CE7C5
	for <speakup@linux-speakup.org>; Thu, 25 Aug 2022 16:58:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gregn.net; s=default;
	t=1661471896; bh=+5RgOve4xtAmz+xJ6CqTGHoMLQPCKTv/M8+Ynfy1viE=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=jmRDODhK7sjframz1wMCmMPs4nIYqV1vMKX4UWNS81teGt8ZpLpRvlUhIW9sInd9D
	 QQksGqP2SWQNqs4UEBNdJcJbATMAvaG+yzrhOqdINS2L++Obb3BY3j1eydd+lD6xnN
	 Q9062A5wvYPnCNUNLQjAOWW6mxtqukXKAN6Mj7A3DsUOGWoqCX23O839jTSuOUPQx/
	 gGYta/FXpahw87/fWedOA6w/e4YKOW8xYVJ2KyY+P0EuoKdZkQMC5n1X2lQOFn89K6
	 rcNKQ8HsmEewGx7mUydIQsgSvgBJjn71PelfFJYQ5NhOKrxkifiDV7UVg45kZDcYWT
	 u9rcBEfCg9J1w==
Received: by vbox.gregn.net (Postfix, from userid 1000)
	id 36859D3FF; Thu, 25 Aug 2022 16:58:15 -0700 (MST)
Date: Thu, 25 Aug 2022 16:58:15 -0700
From: Gregory Nowak <greg@gregn.net>
To: speakup@linux-speakup.org
Subject: Re: hopefully some help with AntiX
Message-ID: <YwgMl3QDVvPQ7HpZ@gregn.net>
References: <005b01d8b764$65f690e0$80ffa8c0@Win7VM>
 <f1e0bff4-cbdc-1766-293-dc2558869c6b@panix.com>
 <007001d8b776$2a7193a0$80ffa8c0@Win7VM>
 <alpine.DEB.2.21.1.2208241123100.3538@willempc.meraka.csir.co.za>
 <011d01d8b7dc$1fbf79c0$80ffa8c0@Win7VM>
 <alpine.DEB.2.21.1.2208251022200.17853@willempc.meraka.csir.co.za>
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
In-Reply-To: <alpine.DEB.2.21.1.2208251022200.17853@willempc.meraka.csir.co.za>
X-PGP-Key: http://www.gregn.net/pubkey.asc
X-Virus-Scanned: clamav-milter 0.103.6 at vserver
X-Virus-Status: Clean
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

On Thu, Aug 25, 2022 at 10:30:13AM +0200, Willem van der Walt wrote:
> #Allow ssh from your network
> iptables -A INPUT -p tcp -s 10.248.1.0/24 --dport 22 -m state --state NEW,ESTABLISHED -j ACCEPT
> #Allow outgoing ssh
> iptables -A INPUT -p tcp --sport 22 -j ACCEPT
> The iptables command should work as it is the basic command used by all
> firewall tools.

Not exactly, I would expect any new install these days done with
something based on debian buster to use the newer nftables:

<https://wiki.debian.org/iptables>

So replace iptables in the above with iptables-legacy. Also, you'll
want to replace 10.248.1.0/24 with whatever address range your network uses.


On Thu, Aug 25, 2022 at 05:08:06PM -0500, K0LNY_Glenn wrote:
> If pip will install speakup, what is the best order to install needed 
> things, like espeak-ng, speech-dispatcher, and I don't know if alsa is 
> installed either.
> audio works through pulseaudio from what I have read.
> There is audio with speaker-test.
> But neither espeak or espeak-ng and a word work.

If you have pulseaudio installed, I think your best bet is to install
speech-dispatcher-espeak-ng, espeak-ng, and speechd-up. Those should
pull in everything else you need. If you have pulseaudio installed,
you will likely have problems if you try to install espeakup (I.E. no
speech). If you can manage to get speechd-up going, you can then
resolve your ssh issues, and with ssh access transition to espeakup,
either dumping pulseaudio, or getting it to work nicely with espeakup.


On Thu, Aug 25, 2022 at 05:19:22PM -0500, K0LNY_Glenn wrote:
> well I just went ahead and tried
> sudo pip install speakup
> and got the same error as with fenrir, an environment problem.

Judging from the other messages in this thread, sounds like you will
need to first resolve that problem before you can install
anything. Getting ssh access should help with that. See if what I
posted at the beginning about iptables helps you. 

As far as adding repositories, I would advise against adding the repo
for debian sid as someone else suggested. Adding the repos for buster
should be OK, but I don't know anything about the distribution you're
running, so won't fully endorse that.

Greg


-- 
web site: http://www.gregn.net
gpg public key: http://www.gregn.net/pubkey.asc
skype: gregn1
(authorization required, add me to your contacts list first)
If we haven't been in touch before, e-mail me before adding me to your contacts.

--
Free domains: http://www.eu.org/ or mail dns-manager@EU.org

