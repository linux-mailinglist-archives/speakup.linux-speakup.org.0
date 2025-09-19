Return-Path: <speakup+bounces-1387-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 52E78B87CA2
	for <lists+speakup@lfdr.de>; Fri, 19 Sep 2025 05:20:01 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=HIzmbO7S;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id B9A04382BDC; Thu, 18 Sep 2025 23:19:57 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 98E92382BAE
	for <lists+speakup@lfdr.de>; Thu, 18 Sep 2025 23:19:57 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 58FF8382BB2; Thu, 18 Sep 2025 23:19:50 -0400 (EDT)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
	by befuddled.reisers.ca (Postfix) with ESMTPS id F0478382BA5
	for <speakup@linux-speakup.org>; Thu, 18 Sep 2025 23:19:49 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gregn.net; s=default;
	t=1758251984; bh=mUdlw2Gtrpri3CtXwcgL5UIjy1vbwj2rKWja3w6jbjc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=HIzmbO7SnIfIM9kI/n+Atgybi393TOSBGJ9sV9J0sFlhUCO+RTGuw0me6cUbQLuK0
	 tjNhbpj4yIKmhShcA19TWTMYqpcKNkYQz1QZshQiiEn6qV6pqD87LpGVsnBxxjLyPs
	 9I/9b3aze95FEkRD3aJaezVetK7AhiKwKK+aY60VKOyIaK9n3k22jhD11xUjeJBjOi
	 B8aPBQFIds77tlTE4I8p0SiCcI8TPIs7As3j474YZYTZpse398WfWlWrj1mvIfGLfP
	 FbUyyI0P/vzR/UXnf1JCcWpiJdRzXYTuKjphwoOdbfc99sJyUxQhKUSyvey6jBiUyY
	 8YU5LtV/hRB0w==
Received: from vbox.gregn.net (unknown [IPv6:2607:fb90:2d83:ca53:8773:8203:2b22:12fe])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (secp384r1) server-digest SHA384)
	(No client certificate requested)
	by vserver.gregn.net (Postfix) with ESMTPSA id A75D16E0;
	Thu, 18 Sep 2025 20:19:44 -0700 (PDT)
Received: by vbox.gregn.net (Postfix, from userid 1000)
	id 1CACED02D; Thu, 18 Sep 2025 20:19:44 -0700 (MST)
Date: Thu, 18 Sep 2025 20:19:44 -0700
From: Gregory Nowak <greg@gregn.net>
To: Karen Lewellen <klewellen@shellworld.net>
Cc: Butch Bussen <butchb@shellworld.net>, Rudy Vener <salt@panix.com>,
	speakup@linux-speakup.org
Subject: Re: accessible phones database? is  Question about blind CLI use
 (was Re: "your browser is not supported anymore" ...)
Message-ID: <aMzL0NHxxCkf2j1M@gregn.net>
References: <aMsF4T_1FAbaFEHz@titan>
 <aMsboMhBL4klsYZD@panix.com>
 <Pine.LNX.4.64.2509171823280.3962820@users.shellworld.net>
 <aMs6TdEMXhkXkkJP@titan>
 <Pine.LNX.4.64.2509171937230.3963832@users.shellworld.net>
 <17e1af06-81a0-40c3-a0df-19bab0242cfe@crosslink.net>
 <aMt2KmWOCT_waaDM@panix.com>
 <Pine.LNX.4.64.2509180709190.3974788@users.shellworld.net>
 <aMyPeEnybDhoh9rD@gregn.net>
 <Pine.LNX.4.64.2509182026130.3981456@users.shellworld.net>
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
In-Reply-To: <Pine.LNX.4.64.2509182026130.3981456@users.shellworld.net>
X-PGP-Key: http://www.gregn.net/pubkey.asc
X-Virus-Scanned: clamav-milter 1.0.9 at vserver
X-Virus-Status: Clean
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

It sounds like you're looking for:

<https://www.gsmarena.com/search.php3?>

Going there with lynx the cat takes me to their mobile site, but I
don't see a way to submit that form in lynx. Good luck.

Greg


On Thu, Sep 18, 2025 at 08:34:29PM -0400, Karen Lewellen wrote:
> Hi folks,
> Asking about this within the thread, because it is possible someone recalls
> what I am seeking.
> I am profoundly and desperately trying to find a replacement for the LG
> phone I have used for years.
> Canada is retiring its 3g phone network, so I must find a phone with the
> features my body requires.
> Things like speech at the ear, think lg exalt..which I would buy three weeks
> ago last Tuesday if I could find it unlocked.
> Presently I have an lg f4nr, which is not a 4g item.
> Anyway, there is? or was a database that allowed you to search wireless
> pones by feature, buttons, 3.5 headphone jacks, tts those sorts of things.
> The list of options was huge, you checked off your requirements and it
> presented the phones with the items on your list, even if a lesser known
> brand.
> Anyone recall the location of this tool?
> 
> With appreciation,
> Karen
> 
> 
> 
> 

-- 
web site: http://www.gregn.net
gpg public key: http://www.gregn.net/pubkey.asc

--
Free domains: http://www.eu.org/ or mail dns-manager@EU.org

