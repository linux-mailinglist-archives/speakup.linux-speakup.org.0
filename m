Return-Path: <speakup+bounces-436-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 7B02C52C857
	for <lists+speakup@lfdr.de>; Thu, 19 May 2022 02:06:58 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=ha7Bbke6;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 1000D380D0B; Wed, 18 May 2022 20:06:58 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id E370B380C70
	for <lists+speakup@lfdr.de>; Wed, 18 May 2022 20:06:57 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 3B506380C70; Wed, 18 May 2022 20:06:51 -0400 (EDT)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 1D03B38092D
	for <speakup@linux-speakup.org>; Wed, 18 May 2022 20:06:51 -0400 (EDT)
Received: from vbox.gregn.net (unknown [172.58.23.245])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by vserver.gregn.net (Postfix) with ESMTPSA id 19A75DE0;
	Wed, 18 May 2022 17:06:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gregn.net; s=default;
	t=1652918798; bh=nmDfCjz/gBJ/75GtbcrTD5SwDbhbXY8SKG3uX7Ig0O4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ha7Bbke64I+lpxJH6Z3oavdqlc55PHpN5WNYi5rWqzDCalDIXcg0DhWi0HWec0tbn
	 h2UogxrVMylyrqvTQx8cXlN1iwnD6WZnXNNu5o0Cbccl/5jRdOzOtanWLXCEo1bVrq
	 PmcLgX4tMLYlKsbStRxi5zlnCJAd4WHKFQA5RbrVAzm39znQfMW7LVyXda3dGcKCPa
	 GKVommXoo30HILKuUVhDe9O7KLOMeWAJqc85K0eoOY8GsGa8a9mJp2CmP4UCDOJbwS
	 QeLvRnXv1tmVQBS/2McqWZL+UGPs3nxN7DHjZXt91gEYXlkhweK6U7zpelWZB0QWiw
	 Q6dTUyGR1Hmlg==
Received: by vbox.gregn.net (Postfix, from userid 1000)
	id 76C86C1CF; Wed, 18 May 2022 17:01:16 -0700 (MST)
Date: Wed, 18 May 2022 17:01:16 -0700
From: Gregory Nowak <greg@gregn.net>
To: K0LNY_Glenn <glenn@ervin.email>
Cc: jdashiel@panix.com,
	"Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Getting Speech-Dispatcher To Work
Message-ID: <YoWIzG7UOUffMgLz@gregn.net>
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

Oops, I noticed you installed armbian, not ubuntu. I should read more
carefully. While replacing ubuntu with armbian in the search phrase I
used doesn't give the page I posted right away, the advice given there
still applies to armbian systems as far as I know. This is a change in
adduser(8), and in login.defs(5) as far as I know.

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

