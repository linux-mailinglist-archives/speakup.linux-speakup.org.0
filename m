Return-Path: <speakup+bounces-822-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 4772561270C
	for <lists+speakup@lfdr.de>; Sun, 30 Oct 2022 04:12:12 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=zmH/SyfO;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 0585338404A; Sat, 29 Oct 2022 23:12:11 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id D960E384003
	for <lists+speakup@lfdr.de>; Sat, 29 Oct 2022 23:12:10 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 850CF384003; Sat, 29 Oct 2022 23:12:01 -0400 (EDT)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 4D1E0383FE0
	for <speakup@linux-speakup.org>; Sat, 29 Oct 2022 23:12:01 -0400 (EDT)
Received: from vbox.gregn.net (unknown [172.56.80.138])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by vserver.gregn.net (Postfix) with ESMTPSA id 5B9504DF;
	Sat, 29 Oct 2022 20:11:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gregn.net; s=default;
	t=1667099490; bh=SDA++kUMszBMzzmkqnH9ln2FNXoS4DbYnitve9bE/sM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=zmH/SyfO6/fXcP+pmeSCTOB2SNAzKHZ8KX9GweVdr5vLzhqu7xLL7KBzVwNTx+1ul
	 pxXlV3vHccEE9liHuZHm7W2P5niUxdINvCIIxaUoqFszp4AoqCv7nA5ffmDKfyD8nc
	 Ainr6m2wvbBrw83iLqhWmGsNh4TpvU7PHWZyuhV7E+9wFZ78e5joMqv7QbbHOwioSI
	 59A5Y6ERqfa+O72r/utqs1TEpz2UmV0wq97B9NoPyJlBHO9vlR0RitSuFxQDPFRnn6
	 Dn3GNybEwEL1wHbxUkoqCSVVjCgyYP3Di5J9HUHs3ZyTbKIJvdp10ulhKqIMhkCLi/
	 8S4dwL4r+wE4Q==
Received: by vbox.gregn.net (Postfix, from userid 1000)
	id 1DAC7C1CB; Sat, 29 Oct 2022 20:11:28 -0700 (MST)
Date: Sat, 29 Oct 2022 20:11:28 -0700
From: Gregory Nowak <greg@gregn.net>
To: K0LNY_Glenn <glenn@ervin.email>
Cc: Chime Hart <chime@hubert-humphrey.com>, speakup@linux-speakup.org,
	Didier Spaier <didier@slint.fr>
Subject: Re: Installing Voxin
Message-ID: <Y13rYJp00xrTZBXR@gregn.net>
References: <090701d8eaef$9a45f930$87ffa8c0@Win7VM>
 <082beb13-bca6-f001-6b28-8a2e14ad7b25@slint.fr>
 <096901d8eb12$060be090$87ffa8c0@Win7VM>
 <098901d8eb16$fcddc5b0$87ffa8c0@Win7VM>
 <Y1xm3HAleBaLGGnk@gregn.net>
 <002b01d8eb29$c48a8af0$84ffa8c0@Win7VM>
 <6178c7b1-35b5-c47e-65c6-4a6dcddbeb25@hubert-humphrey.com>
 <007301d8ebb1$1e99bc00$84ffa8c0@Win7VM>
 <Y13jtw4aw29Oy7p4@gregn.net>
 <018c01d8ec0a$d8073a10$84ffa8c0@Win7VM>
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
In-Reply-To: <018c01d8ec0a$d8073a10$84ffa8c0@Win7VM>
X-PGP-Key: http://www.gregn.net/pubkey.asc
X-Virus-Scanned: clamav-milter 0.103.6 at vserver
X-Virus-Status: Clean
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

On Sat, Oct 29, 2022 at 09:53:51PM -0500, K0LNY_Glenn wrote:
> Can you tell me where to set the speakup settings?
> Like rate and pitch, so I don't have to reset them every time I boot up?
> Thanks

as root:

apt install speakup-tools

Set whatever parameters you want to save, then:

speakupconf save

In /etc/rc.local before the last exit line, put:

/usr/bin/speakupconf load

Note that if you're using speechd-up, you will not be able to set all
the parameters you could set if using espeakup. If you're not going to
use voxin, and will stay with espeak, I would suggest uninstalling
speechd-up, and installing espeakup.

Greg


-- 
web site: http://www.gregn.net
gpg public key: http://www.gregn.net/pubkey.asc
skype: gregn1
(authorization required, add me to your contacts list first)
If we haven't been in touch before, e-mail me before adding me to your contacts.

--
Free domains: http://www.eu.org/ or mail dns-manager@EU.org

