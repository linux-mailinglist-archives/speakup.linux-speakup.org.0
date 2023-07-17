Return-Path: <speakup+bounces-1012-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 73BAD755A97
	for <lists+speakup@lfdr.de>; Mon, 17 Jul 2023 06:14:01 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=yNMir8u6;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 8DE6E38256F; Mon, 17 Jul 2023 00:14:00 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 6BF4D382462
	for <lists+speakup@lfdr.de>; Mon, 17 Jul 2023 00:14:00 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id C6900382462; Mon, 17 Jul 2023 00:13:52 -0400 (EDT)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 91797382394
	for <speakup@linux-speakup.org>; Mon, 17 Jul 2023 00:13:52 -0400 (EDT)
Received: from vbox.gregn.net (unknown [172.56.80.64])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by vserver.gregn.net (Postfix) with ESMTPSA id 6FAEE4422;
	Sun, 16 Jul 2023 21:13:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gregn.net; s=default;
	t=1689567201; bh=Hml6kH+0Zy/dO7+908/ZEgrucRBHQH/PUS8OtnZEnC4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=yNMir8u6PsTywfL+IKYFZK4Wjy1zuLbXNrY4SjfKXhJuVRAXb+vYsKZZeWJX1Ge5o
	 LT6mfp3aohpCPywuvkp2f3+bZoCruyvplI1bSK63v5Pwbg9U0cZR+uQ8EigM/uG37Z
	 KXrx0Rbrsqsvk0xwT0+ZD5nbRVyZaHPZzMfxPdDYR3Qws4L3vzTNCAAeFMX0sKF7jj
	 0Zj05T4MZmVc5rTjtU4S8H+bPMyrzOrd1on0AOMQbrEPniM3g6VizPkMYDvUFsDH20
	 eynnFm6RkrYoKUMPgJKS7OSJ2LP6Kib3jmEiKl5yYETaewltgo9ljKYUQ9S1CXgGgI
	 26pYfDknMRK0Q==
Received: by vbox.gregn.net (Postfix, from userid 1000)
	id A1C33C3AA; Sun, 16 Jul 2023 21:13:19 -0700 (MST)
Date: Sun, 16 Jul 2023 21:13:19 -0700
From: Gregory Nowak <greg@gregn.net>
To: pawel@lobap.ca
Cc: speakup@linux-speakup.org
Subject: Re: Serial-to-USB adapter
Message-ID: <ZLS/3y/8jgyOqOOa@gregn.net>
References: <000a01d9b823$3acb7a00$b0626e00$@lobap.ca>
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
In-Reply-To: <000a01d9b823$3acb7a00$b0626e00$@lobap.ca>
X-PGP-Key: http://www.gregn.net/pubkey.asc
X-Virus-Scanned: clamav-milter 0.103.8 at vserver
X-Virus-Status: Clean
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

I got this one in late 2018 for under $20 USD from their U.S. site:

<https://www.newegg.ca/black-startech-6-ft-cable-connectors/p/N82E16812200964?Item=N82E16812200964&Tpk=12-200-964>

I don't know if you can find it cheaper elsewhere. It works well
enough with speakup. The only issue I have with it is that if speakup
outputs more than about 30 lines at a time, it seems to overflow a
buffer, and speakup refuses to acknowledge numpad+enter for a while. I
don't have this issue with the same synthesizer on a standard serial
port, so the converter must be the problem. I've also used this
converter to successfully do a y-modem file transfer using minicom.

Greg


On Sun, Jul 16, 2023 at 04:22:21PM -0400, pawel@lobap.ca wrote:
> Hi,
> 
> Could you recommend any serial-to-USB adapter to connect my Apollo synth to
> my Linux box, please?
> 
> Thanks,
> 
> Pawel
> 

-- 
web site: http://www.gregn.net
gpg public key: http://www.gregn.net/pubkey.asc
skype: gregn1
(authorization required, add me to your contacts list first)
If we haven't been in touch before, e-mail me before adding me to your contacts.

--
Free domains: http://www.eu.org/ or mail dns-manager@EU.org

