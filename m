Return-Path: <speakup+bounces-307-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 84E3F410DBB
	for <lists+speakup@lfdr.de>; Mon, 20 Sep 2021 01:07:40 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=mHCKqOfp;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 001173811DA; Sun, 19 Sep 2021 19:07:39 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id D532C380996
	for <lists+speakup@lfdr.de>; Sun, 19 Sep 2021 19:07:39 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id C669C380C5A; Sun, 19 Sep 2021 19:07:33 -0400 (EDT)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
	by befuddled.reisers.ca (Postfix) with ESMTPS id A778438097F
	for <speakup@linux-speakup.org>; Sun, 19 Sep 2021 19:07:33 -0400 (EDT)
Received: from vbox.gregn.net (unknown [IPv6:2607:fb90:e545:3e1:90b3:7305:417f:4260])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by vserver.gregn.net (Postfix) with ESMTPSA id 767082617;
	Sun, 19 Sep 2021 16:07:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gregn.net; s=default;
	t=1632092865; bh=UaZGrlTSU0LLhrxD4vUCvTs/rb9OO+08U6fGc9qaCF0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mHCKqOfp4BKZdv50wGj/IGuxJgj1OkmybJSaFKR/o+oR1RNQ7y8lNZEPd+JzD9PY+
	 8cf4QCpWAzh185a8YPeCpG9U76lgSbo9824Zn74qN1DGf4exc+AuaDjUO5fTr5DL+Y
	 HuPoTvT2Ix20m4OyUFUI4hf6q7rYSjE2FcH+Vj7/WeYoo7pgu9tZXGm9GbkBI7YEdg
	 eoo4LM9LFRZ1CcQAYbFc/G8Wwy7X0m4zhtiMkLgybhO+S/RPPz2Y3VeVs7VumpeAqW
	 Q8AKkeMquZCmIx7OPwSuctvaZrbOc0hgVujqj5f8EOWTCsrDfxtFdQIMTqGP1qozvv
	 6a1jzI/FBMd6Q==
Received: from greg by vbox.gregn.net with local (Exim 4.84_2)
	(envelope-from <greg@gregn.net>)
	id 1mS5u6-0001iT-Qs; Sun, 19 Sep 2021 16:07:22 -0700
Date: Sun, 19 Sep 2021 16:07:22 -0700
From: Gregory Nowak <greg@gregn.net>
To: speakup@linux-speakup.org
Cc: aarnaarn2@gmail.com, samuel.thibault@aquilenet.fr
Subject: Re: loading speakup_soft, was: Re: Broken espeakup on debian sid
Message-ID: <20210919230722.GA5961@gregn.net>
References: <dd651c4c-1178-8d83-125d-23ad3d2cef88@reisers.ca>
 <20210919035755.GA11947@gregn.net>
 <20210919170150.pp3u54hbqfjidy7y@alex-pc>
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
In-Reply-To: <20210919170150.pp3u54hbqfjidy7y@alex-pc>
X-PGP-Key: http://www.gregn.net/pubkey.asc
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Virus-Scanned: clamav-milter 0.102.4 at vserver
X-Virus-Status: Clean
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

On Sun, Sep 19, 2021 at 10:23:22AM +0200, Samuel Thibault wrote:
> ?? No. espeakup provides a systemd unit, but can work completely fine
> with a sysvinit initialization script, Debian provides one for instance.

Thank you. That is much appreciated, please try to keep it that way. There are
plans to move devuan away from sysvinit eventually, possibly to
openrc, but for now sysvinit is PID1.


On Sun, Sep 19, 2021 at 08:01:50PM +0300, Alexander Epaneshnikov wrote:
> I have plans to integrate more closely with systemd, but I will do my best
> to maintain compatibility with other init systems.

Thank you, much appreciated.

Greg


-- 
web site: http://www.gregn.net
gpg public key: http://www.gregn.net/pubkey.asc
skype: gregn1
(authorization required, add me to your contacts list first)
If we haven't been in touch before, e-mail me before adding me to your contacts.

--
Free domains: http://www.eu.org/ or mail dns-manager@EU.org

