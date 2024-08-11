Return-Path: <speakup+bounces-1174-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 3CA5894DFA5
	for <lists+speakup@lfdr.de>; Sun, 11 Aug 2024 04:26:17 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=SZzccLcR;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id C7796382700; Sat, 10 Aug 2024 22:26:15 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id A9A723820E6
	for <lists+speakup@lfdr.de>; Sat, 10 Aug 2024 22:26:15 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id B14AA3820E6; Sat, 10 Aug 2024 22:26:08 -0400 (EDT)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 49F913820B5
	for <speakup@linux-speakup.org>; Sat, 10 Aug 2024 22:26:08 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gregn.net; s=default;
	t=1723343166; bh=BagwdCdQOIGGMpm/8cFGd9wx4a/B+s9AKyv0hDMtAb4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SZzccLcRiq9n8L5elkpl3nhwiauKbwCUIivPfgstLOZnQKiy8oKz1hMGlmRmwbcf9
	 Fm3zIqIimmUclHzCOygyAroVb9H79Sb5CZJG+H8SatWTnA2jF3kAnpyBMMt4HEWOzK
	 xqC6mOWxmmhSJC0mAiN0ENCsTJxL51IVumK3mS+uqU1wAqMpZHnQ9X37dA3pjK49YH
	 QOpa/Cq8dmjnyby+PvWAogvmZhtakOiMHNummikTUVgGdOFkXdMpN1IeosYE3b9NIz
	 GAH9W/pIfZRNvIwye17XNN/UaXLLI3aTmvzxtyTmvXD0qDDMNgpneMFEI4GApxcoxN
	 w9QWj3NRkJ+zw==
Received: from vbox.gregn.net (unknown [172.56.87.90])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (secp384r1) server-digest SHA384)
	(No client certificate requested)
	by vserver.gregn.net (Postfix) with ESMTPSA id 21C841063;
	Sat, 10 Aug 2024 19:26:06 -0700 (PDT)
Received: by vbox.gregn.net (Postfix, from userid 1000)
	id 17807C075; Sat, 10 Aug 2024 19:26:05 -0700 (MST)
Date: Sat, 10 Aug 2024 19:26:05 -0700
From: Gregory Nowak <greg@gregn.net>
To: Samuel Thibault <samuel.thibault@aquilenet.fr>
Cc: speakup@linux-speakup.org
Subject: Re: devuan daedelus and speakup
Message-ID: <ZrghPTY86LSyb4Ze@gregn.net>
References: <14439926-6631-5be8-ae20-5349f21b480b@panix.com>
 <Zoc405+OrKfT1Qkk@gregn.net>
 <20240707172043.sx6ahp5brdqv5rvp@begin>
 <ZotFw1UFZFuWCOOh@gregn.net>
 <20240725004121.awn7ze3b2zztkurw@begin>
 <ZqHm8p4kFkJMxIWH@gregn.net>
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
In-Reply-To: <ZqHm8p4kFkJMxIWH@gregn.net>
X-PGP-Key: http://www.gregn.net/pubkey.asc
X-Virus-Scanned: clamav-milter 1.0.5 at vserver
X-Virus-Status: Clean
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

On Wed, Jul 24, 2024 at 10:47:30PM -0700, Gregory Nowak wrote:
> OK. I'll post the URL once I open the bug report so that others can
> submit their comments.

https://bugs.devuan.org/cgi/bugreport.cgi?bug=854

Greg


> On Thu, Jul 25, 2024 at 02:41:21AM +0200, Samuel Thibault wrote:
> > Gregory Nowak, le dim. 07 juil. 2024 18:49:55 -0700, a ecrit:
> > > This was suggested by myself and a couple of other folks:
> > > 
> > > <https://lists.dyne.org/lurker/message/20230710.215627.4cc9d05e.en.html>
> > > 
> > > <https://lists.dyne.org/lurker/message/20230710.221222.556dffc2.en.html>
> > > 
> > > 
> > > For context, the full thread is at:
> > > 
> > > <https://lists.dyne.org/lurker/thread/20230710.211656.46c6a550.en.html>
> > > 
> > > I can open a bug report on devuan's BTS to bring s <enter> back, but
> > > it will take more voices than just mine to make that happen since it
> > > didn't happen when suggested in the thread I referenced.
> > 
> > Ok, but not opening the bug report makes it less probable that voices
> > will speak up. Also, while a mail in a thread can get lost in the times,
> > a bug report will not.
> > 
> > > Is a severity of grave justified for such a bug report?
> > 
> > Not really, because there is a workaround that can be documented. But
> > severity important is probably appropriate, since it makes the CD way
> > less usable for some people.
> > 
> > Samuel
> > 
> 
> -- 
> web site: http://www.gregn.net
> gpg public key: http://www.gregn.net/pubkey.asc
> 
> --
> Free domains: http://www.eu.org/ or mail dns-manager@EU.org
> 

-- 
web site: http://www.gregn.net
gpg public key: http://www.gregn.net/pubkey.asc

--
Free domains: http://www.eu.org/ or mail dns-manager@EU.org

