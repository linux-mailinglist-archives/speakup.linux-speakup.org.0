Return-Path: <speakup+bounces-393-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 7FC7A4F200E
	for <lists+speakup@lfdr.de>; Tue,  5 Apr 2022 01:12:58 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=K1l6nj3k;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 09C92380D2E; Mon,  4 Apr 2022 19:12:58 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id DF5FA380D28
	for <lists+speakup@lfdr.de>; Mon,  4 Apr 2022 19:12:57 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id BE5A7380D2A; Mon,  4 Apr 2022 19:12:51 -0400 (EDT)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
	by befuddled.reisers.ca (Postfix) with ESMTPS id A083D3809A3
	for <speakup@linux-speakup.org>; Mon,  4 Apr 2022 19:12:51 -0400 (EDT)
Received: from vbox.gregn.net (unknown [IPv6:2607:fb90:e555:3771:68f6:faae:2fcb:ca2a])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by vserver.gregn.net (Postfix) with ESMTPSA id BE3FD1A96;
	Mon,  4 Apr 2022 16:12:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gregn.net; s=default;
	t=1649113974; bh=DkbTHs2qh7lzRoZmbZ/Nmt2MdieO+kLlV3eWNu0nw+Y=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=K1l6nj3k1fLoWxERCr6RhMaS+V5ZhyzfUYcco/Pvo6LNWs/9vTP39uJadVkt4pVZx
	 2jQMba0zUEt01JvfFLt2UQq0pVvpgP+LcxqeIruG5xFk1V2oUWDcFiPr7wlj9Qe74k
	 k3wNhh6BoGmFL8s3DUT1NZ2FzHYHwjQCTNjn6QJoQ0NQ9BOOKQmXPqROXj7fa2qUAe
	 7phufq1ryrFWlZOy7i3vEr2XBSQvz3wbiPkUwqVY3pcvkSglBOL9Ak77/muLTdLifa
	 PgJGdt8UwPPGqBUGGuaZYqDf+Zdr7EAkJ6y1q1djT5r0fQJmWN0wK0gsNFM/WWg3Dj
	 dJ7HfUsGB4waA==
Received: by vbox.gregn.net (Postfix, from userid 1000)
	id C0D31C075; Mon,  4 Apr 2022 16:12:49 -0700 (MST)
Date: Mon, 4 Apr 2022 16:12:49 -0700
From: Gregory Nowak <greg@gregn.net>
To: Chime Hart <chime@hubert-humphrey.com>
Cc: speakup@linux-speakup.org
Subject: Re: How Can I Switch Synthesizers on the Fly?
Message-ID: <Ykt7cW+kWH/pILc4@gregn.net>
References: <1dc619bf-ba8a-47b3-2c85-7dff6e27086@hubert-humphrey.com>
 <Yko9zLikCNY1qcDX@gregn.net>
 <4ce83a8d-a0a1-3ef8-e8df-c9881198622@hubert-humphrey.com>
 <Ykp44UQ6vUlnyXEY@gregn.net>
 <362f5e7-4cd6-9d6b-36e2-5485e066bb53@hubert-humphrey.com>
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
In-Reply-To: <362f5e7-4cd6-9d6b-36e2-5485e066bb53@hubert-humphrey.com>
X-PGP-Key: http://www.gregn.net/pubkey.asc
X-Virus-Scanned: clamav-milter 0.103.4 at vserver
X-Virus-Status: Clean
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

On Sun, Apr 03, 2022 at 09:57:45PM -0700, Chime Hart wrote:
> [Sun Apr  3 17:46:06 2022] speechd: Error while openning the device in
> read/write mode 2,No such file or directory
> [Sun Apr  3 17:46:06 2022] speechd: Trying to open the device in the old way.
> [Sun Apr  3 17:46:06 2022] speechd: Error while openning the device in read
> mode 2,No such file or directory
> [Sun Apr  3 17:46:06 2022] speechd: ERROR! Unable to open soft synth device
> (/dev/softsynth)

It looks like modprobe speakup_soft would solve this.

Greg


-- 
web site: http://www.gregn.net
gpg public key: http://www.gregn.net/pubkey.asc
skype: gregn1
(authorization required, add me to your contacts list first)
If we haven't been in touch before, e-mail me before adding me to your contacts.

--
Free domains: http://www.eu.org/ or mail dns-manager@EU.org

