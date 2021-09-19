Return-Path: <speakup+bounces-308-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id BC257410DC1
	for <lists+speakup@lfdr.de>; Mon, 20 Sep 2021 01:13:11 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=heomlAqk;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 5BD013811DB; Sun, 19 Sep 2021 19:13:11 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 48C6138097F
	for <lists+speakup@lfdr.de>; Sun, 19 Sep 2021 19:13:11 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 53711380CF1; Sun, 19 Sep 2021 19:13:05 -0400 (EDT)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 341C938097F
	for <speakup@linux-speakup.org>; Sun, 19 Sep 2021 19:13:05 -0400 (EDT)
Received: from vbox.gregn.net (unknown [IPv6:2607:fb90:e545:3e1:90b3:7305:417f:4260])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by vserver.gregn.net (Postfix) with ESMTPSA id C92772617
	for <speakup@linux-speakup.org>; Sun, 19 Sep 2021 16:13:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gregn.net; s=default;
	t=1632093196; bh=W01A6bW4A0hFvxULwkRgnQpAJ1gIQ+E1FGi5X7WAhIM=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=heomlAqk28sg+OblswO0MY3gXfhE4bKGRZrQ0BgULUbyRqgFqcMCDsCmZt/bUAVvR
	 7+y5mMwKYycqZLIf6K9VUtk10yPjCSahNJsZy2MSKtqOY4lhcBUw0UuaXpi2JoChVY
	 RPS25zo4/UabSvUabyzLjjBFfMsN/bXBR6LbwH3gkbj3S7tlcgrNvndlkLSJQNAQbJ
	 U5qtXUUhgtO5BSNFJ8P/o7uBAk5hbcBq60En0300o9uNotRpq7BRnITZJYVWufmKUj
	 PjajG2kTqDQ4BIvXoHzDQrXALH5o5YVrBN5hDZk1Taf8p+wJLIO4ygkmOug72sjl9F
	 GlUpEEZfbB2zw==
Received: from greg by vbox.gregn.net with local (Exim 4.84_2)
	(envelope-from <greg@gregn.net>)
	id 1mS5zT-0001kp-QP
	for speakup@linux-speakup.org; Sun, 19 Sep 2021 16:12:55 -0700
Date: Sun, 19 Sep 2021 16:12:55 -0700
From: Gregory Nowak <greg@gregn.net>
To: speakup@linux-speakup.org
Subject: Re: Broken espeakup on debian sid
Message-ID: <20210919231255.GB5961@gregn.net>
References: <74614290-2cb8-c5a7-91e9-e639a673464a@reisers.ca>
 <YUXlLephhiYuV4UA@rednote.net>
 <50b02165-17e9-2561-ec8-6c35cba66944@reisers.ca>
 <YUYXLHoSvcMnUYzW@rednote.net>
 <dd651c4c-1178-8d83-125d-23ad3d2cef88@reisers.ca>
 <14c0aaef-dea9-7b7c-77e3-a1a4edba4c31@slint.fr>
 <6b1e6e66-d12a-3d9e-a3e5-e8d0499177d9@reisers.ca>
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
In-Reply-To: <6b1e6e66-d12a-3d9e-a3e5-e8d0499177d9@reisers.ca>
X-PGP-Key: http://www.gregn.net/pubkey.asc
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Virus-Scanned: clamav-milter 0.102.4 at vserver
X-Virus-Status: Clean
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

On Sun, Sep 19, 2021 at 10:09:31AM -0400, Kirk Reiser wrote:
> It also seems to me that we have two different situations wrt distros,
> general communities like debian, ubuntu, arch etc and those that are
> specially put together for the blind community like debuan, slint and
> others I don't remember there names of anymore.

I assume you meant devuan instead of debuan. While accessibility is
one of devuan's goals, devuan isn't especially put together for the
blind community. The majority of devuan's user base seem to be
sighted.

Greg


-- 
web site: http://www.gregn.net
gpg public key: http://www.gregn.net/pubkey.asc
skype: gregn1
(authorization required, add me to your contacts list first)
If we haven't been in touch before, e-mail me before adding me to your contacts.

--
Free domains: http://www.eu.org/ or mail dns-manager@EU.org

