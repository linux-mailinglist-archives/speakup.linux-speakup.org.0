Return-Path: <speakup+bounces-1258-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 9D28DA9FF4A
	for <lists+speakup@lfdr.de>; Tue, 29 Apr 2025 03:57:46 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=vHvrZif5;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 6003F38293A; Mon, 28 Apr 2025 21:57:34 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 40093381972
	for <lists+speakup@lfdr.de>; Mon, 28 Apr 2025 21:57:34 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 58347381986; Mon, 28 Apr 2025 21:57:27 -0400 (EDT)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 7FC99381951
	for <speakup@linux-speakup.org>; Mon, 28 Apr 2025 21:57:26 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gregn.net; s=default;
	t=1745891827; bh=qRv6BkzzqRnNebryk3fHlmOwzXvk8AO7GgUPK9kUEEQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=vHvrZif5H1fpJQHfFfjvHuiUZtq4USJAyKzTpUblDXHoUPtdKHNnoAdalsvkvWbrH
	 UTnKdVY9LhV2NcQkUdNKzvYMlVkCsDWonDcobmOouo0DKgEfIU2CluH15HfWYowlGq
	 vm/mUmyGNCU5nBNGVDumLVuvJzFcyidZopqpgauWm1lrl+ZWQXD7wUg4BtAxMzt4LL
	 DR4Pzzrq0C6VyAPbe7IusaWlw7WG5KlGvxqqti7tLwMuwkbRoZsqF3sMZguirvtWww
	 3nR4HFBBWA0GQ8qhb6BJLe6ic7xmgtExgjKGSqp17LzMY134pjqjIkiLUbdjE5eGVz
	 Wz2BVBn2zlwbw==
Received: from vbox.gregn.net (unknown [IPv6:2607:fb91:8ea2:51b0:ef17:7bed:389b:8bcb])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (secp384r1) server-digest SHA384)
	(No client certificate requested)
	by vserver.gregn.net (Postfix) with ESMTPSA id C9E5D14A8;
	Mon, 28 Apr 2025 18:57:07 -0700 (PDT)
Received: by vbox.gregn.net (Postfix, from userid 1000)
	id 29E4AC12C; Mon, 28 Apr 2025 18:57:07 -0700 (MST)
Date: Mon, 28 Apr 2025 18:57:07 -0700
From: Gregory Nowak <greg@gregn.net>
To: fsmithred <fsmithred@gmail.com>
Cc: speakup@linux-speakup.org
Subject: Re: announcing experimental Devuan Daedalus mate desktop iso
Message-ID: <aBAx86aYIEKxCw5F@gregn.net>
References: <aA1-fneTSXgUZa5y@gregn.net>
 <af828d8a-1e48-40ca-bb3c-94417281967d@gmail.com>
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
In-Reply-To: <af828d8a-1e48-40ca-bb3c-94417281967d@gmail.com>
X-PGP-Key: http://www.gregn.net/pubkey.asc
X-Virus-Scanned: clamav-milter 1.0.7 at vserver
X-Virus-Status: Clean
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

On Mon, Apr 28, 2025 at 06:36:44PM -0400, fsmithred wrote:
> On 4/26/25 20:46, Gregory Nowak wrote:
> > Hello everyone.
> > 
> > An experimental mate desktop live iso based on Devuan Daedalus has
> > been created by fsmithred <fsmithred@gmail.com>.
> 
> 
> > no brltty is installed.
> 
> Is there any reason that I should not add that in the next build?

Some sighted users seem to report that brltty hangs the x server. We
had someone claiming that last week on the dng list. There were way
more complaints about it when console-productivity was installed by
default with I think Ascii.

> 
> 
> > For those who are comfortable using su in TTY 1-6, and logging out of
> > mate by feel, you may use set-card when you boot into the first boot
> > option. Note that ctrl+alt+esc doesn't kill the x server, so to log
> > out of mate, you will need to use alt+f1, left-arrow once, up-arrow
> > twice, and enter.
> 
> Another way to get out of the desktop and get to a graphical login is to
> press alt+prtscn/sysrq+k
> 
> > 
> > I think I covered everything. All comments and feedback should be
> > directed to fsmithred. Happy exploring.
> > 
> > Greg
> > 
> 
> Thanks for all your testing and for the clear instructions.
> 
> Oh yeah, there are actually more than two boot options, but only the first
> two are relevant now. Option three is for booting a different language, but
> I need to arrange for the chosen language to be set in /etc/default/espeakup
> to get it to speak in that language. I've tested it manually, and I think it
> works. i.e. I've made it sound like Italian and French, but I can't tell if
> it's accurate.
> 
> fsmithred
> 
>  	
> 

-- 
web site: http://www.gregn.net
gpg public key: http://www.gregn.net/pubkey.asc

--
Free domains: http://www.eu.org/ or mail dns-manager@EU.org

