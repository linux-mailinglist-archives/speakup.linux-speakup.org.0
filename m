Return-Path: <speakup+bounces-385-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id A505B4F0E53
	for <lists+speakup@lfdr.de>; Mon,  4 Apr 2022 06:49:46 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=Nt6fmGSi;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 2B5BE380D3D; Mon,  4 Apr 2022 00:49:46 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 169C338092A
	for <lists+speakup@lfdr.de>; Mon,  4 Apr 2022 00:49:46 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id ED41138094F; Mon,  4 Apr 2022 00:49:39 -0400 (EDT)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
	by befuddled.reisers.ca (Postfix) with ESMTPS id CE2FC38092A
	for <speakup@linux-speakup.org>; Mon,  4 Apr 2022 00:49:39 -0400 (EDT)
Received: from vbox.gregn.net (unknown [172.58.195.26])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by vserver.gregn.net (Postfix) with ESMTPSA id D835819FB
	for <speakup@linux-speakup.org>; Sun,  3 Apr 2022 21:49:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gregn.net; s=default;
	t=1649047781; bh=mTY4NdviMCofV7g6FVfNbq0v5hFniZkBls8+TGWUKLw=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=Nt6fmGSiyhm5QadA3avy4SETWGh0CQA/QpwygcOhw5ZwFNNqB5k9CiVQfUjvv/lZe
	 4Y76PWZoY3ZqGOoanK9m8OqP62gfwzYZlaPkEj8oPU3c3eFHJkNFS8ePQb5qeppSyJ
	 VDbVfVW8icH75t1VMXBRyLevLOmO8XFDbp0RHmNJ4S6EMywitwiXRRQ3O925txQ8Bp
	 O3X+puYpXXu4tt6TbAzSzxPlcU9rJXkf/AtSuogrWHnSQbNePYbHCeIk6tIWnKN0Qy
	 jY7igzvyQZWL6/hy0Phl5w25l/Lv/Gp159qGi5zRw9C4c3yo2DQG2JBpvIRnl65Pno
	 NX+Ucs3RzlcFA==
Received: by vbox.gregn.net (Postfix, from userid 1000)
	id 79BFAC16A; Sun,  3 Apr 2022 21:49:37 -0700 (MST)
Date: Sun, 3 Apr 2022 21:49:37 -0700
From: Gregory Nowak <greg@gregn.net>
To: speakup@linux-speakup.org
Subject: Re: How Can I Switch Synthesizers on the Fly?
Message-ID: <Ykp44UQ6vUlnyXEY@gregn.net>
References: <1dc619bf-ba8a-47b3-2c85-7dff6e27086@hubert-humphrey.com>
 <Yko9zLikCNY1qcDX@gregn.net>
 <4ce83a8d-a0a1-3ef8-e8df-c9881198622@hubert-humphrey.com>
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
In-Reply-To: <4ce83a8d-a0a1-3ef8-e8df-c9881198622@hubert-humphrey.com>
X-PGP-Key: http://www.gregn.net/pubkey.asc
X-Virus-Scanned: clamav-milter 0.103.4 at vserver
X-Virus-Status: Clean
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

On Sun, Apr 03, 2022 at 05:51:44PM -0700, Chime Hart wrote:
> sudo echo soft >/sys/accessibility/speakup/synth
> I get a permission error.

I don't know how the echo in bash differs from the echo in tcsh if at
all. Did you modprobe the speakup_soft module?

>As far as speechd-up  if I run an apt install in
> Debian, it tries installing a 0.5 version from 2011, but errors out. Here is
> an output

You mentioned you had trouble installing speech-dispatcher. To work,
speechd-up requires an installed and configured speech-dispatcher. Do
you have speech-dispatcher installed and working with espeak-ng? If
you do, do you have a /var/log/speechd-up.log file? If yes, what does
it say?

Greg


-- 
web site: http://www.gregn.net
gpg public key: http://www.gregn.net/pubkey.asc
skype: gregn1
(authorization required, add me to your contacts list first)
If we haven't been in touch before, e-mail me before adding me to your contacts.

--
Free domains: http://www.eu.org/ or mail dns-manager@EU.org

